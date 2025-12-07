uint64_t sub_1C7017BB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v2, v3);
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v4, v5);

  return 0;
}

void sub_1C7017CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v31 = *v26;
  v32 = v26[1];
  v34 = v26[2];
  v33 = v26[3];
  v36 = v26[4];
  v35 = v26[5];
  v38 = v26[6];
  v37 = v26[7];
  v39 = v26[8];
  v40 = v26[9];
  v67 = v39;
  a14 = v31;
  sub_1C75504FC();
  OUTLINED_FUNCTION_209();
  sub_1C7018150(&a14, v41, v42, sub_1C7021994, sub_1C701A7BC);
  v68 = a14;
  a14 = v32;
  sub_1C75504FC();
  OUTLINED_FUNCTION_208();
  sub_1C7018150(&a14, v43, v44, sub_1C7020B60, sub_1C701A4EC);
  v45 = a14;
  a14 = v34;
  sub_1C75504FC();
  sub_1C7018104(&a14);
  v46 = a14;
  a14 = v33;
  sub_1C75504FC();
  OUTLINED_FUNCTION_207_0();
  sub_1C7018150(&a14, v47, v48, sub_1C701F010, sub_1C7019F70);
  v49 = a14;
  a14 = v36;
  sub_1C75504FC();
  sub_1C7018104(&a14);
  v66 = a14;
  a14 = v35;
  sub_1C75504FC();
  OUTLINED_FUNCTION_206_0();
  sub_1C7017FF8(&a14, v50, sub_1C7422B34, sub_1C70188E8);
  v51 = v49;
  v52 = a14;
  a14 = v38;
  sub_1C75504FC();
  OUTLINED_FUNCTION_205();
  sub_1C7018150(&a14, v53, v54, sub_1C701CE48, sub_1C7019714);
  v55 = v46;
  v56 = a14;
  a14 = v37;
  sub_1C75504FC();
  OUTLINED_FUNCTION_204_0();
  sub_1C7017FF8(&a14, v57, sub_1C7422B04, sub_1C7018584);
  v58 = v45;
  v59 = a14;
  a14 = v67;
  sub_1C75504FC();
  OUTLINED_FUNCTION_203();
  sub_1C7018150(&a14, v60, v61, sub_1C701BF68, sub_1C70190D8);
  v62 = a14;
  a14 = v40;
  sub_1C75504FC();
  OUTLINED_FUNCTION_202();
  sub_1C7018150(&a14, v63, v64, sub_1C701B1A0, sub_1C7018E30);
  v65 = a14;
  *v30 = v68;
  v30[1] = v58;
  v30[2] = v55;
  v30[3] = v51;
  v30[4] = v66;
  v30[5] = v52;
  v30[6] = v56;
  v30[7] = v59;
  v30[8] = v62;
  v30[9] = v65;
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C7017FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void *))
{
  v7 = OUTLINED_FUNCTION_300();
  v9 = *(v8(v7) - 8);
  v10 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a3(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v13[1] = v11;
  result = a4(v13);
  *v4 = v10;
  return result;
}

uint64_t sub_1C70180B8(uint64_t *a1)
{
  if ((OUTLINED_FUNCTION_592(a1) & 1) == 0)
  {
    sub_1C7422B64();
    v2 = v3;
  }

  OUTLINED_FUNCTION_438();
  result = sub_1C7018ABC(v4);
  *v1 = v2;
  return result;
}

uint64_t sub_1C7018104(uint64_t *a1)
{
  if ((OUTLINED_FUNCTION_592(a1) & 1) == 0)
  {
    sub_1C7422B64();
    v2 = v3;
  }

  OUTLINED_FUNCTION_438();
  result = sub_1C7018B74(v4);
  *v1 = v2;
  return result;
}

uint64_t sub_1C7018150(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C70182E8(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

unint64_t sub_1C70181EC()
{
  result = qword_1EDD0E940;
  if (!qword_1EDD0E940)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for ExtendedTokenSource.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E940);
  }

  return result;
}

unint64_t sub_1C7018240()
{
  result = qword_1EDD0E910;
  if (!qword_1EDD0E910)
  {
    result = swift_getWitnessTable(aYu, &type metadata for ExtendedTokenSource.CollectionCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E910);
  }

  return result;
}

unint64_t sub_1C7018294()
{
  result = qword_1EDD0E928;
  if (!qword_1EDD0E928)
  {
    result = swift_getWitnessTable(byte_1C7562BF0, &type metadata for ExtendedTokenSource.QueryCodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0E928);
  }

  return result;
}

uint64_t sub_1C70182E8(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        OUTLINED_FUNCTION_98_1();
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    OUTLINED_FUNCTION_417();
    return a4();
  }

  return result;
}

uint64_t sub_1C7018ABC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_589(a1);
  if (result < v1)
  {
    if (v1 >= -1)
    {
      OUTLINED_FUNCTION_506();
      if (v5 ^ v6 | v4)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1C7550BBC();
        *(v7 + 16) = v2;
      }

      OUTLINED_FUNCTION_334();
      sub_1C701F574(v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    OUTLINED_FUNCTION_417();
    return sub_1C701A064(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1C7018B74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_589(a1);
  if (result < v1)
  {
    if (v1 >= -1)
    {
      OUTLINED_FUNCTION_506();
      if (v5 ^ v6 | v4)
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v7 = sub_1C7550BBC();
        *(v7 + 16) = v2;
      }

      OUTLINED_FUNCTION_334();
      sub_1C701FD8C(v12, v13, v14, v15);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    OUTLINED_FUNCTION_417();
    return sub_1C701A224(v8, v9, v10, v11);
  }

  return result;
}

uint64_t sub_1C7018C2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v12 = *a4;
    v4 = (*a4 + 40 * a3 - 40);
    v5 = result - a3;
    do
    {
      v11 = a3;
      v6 = (v12 + 40 * a3);
      v7 = *v6;
      v8 = v6[1];
      v9 = v4[1];
      v13 = *v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v7, v8);
      MEMORY[0x1CCA5CD70](v13, v9);

      a3 = v11 + 1;
      v4 += 5;
      --v5;
    }

    while (v11 + 1 != a2);
  }

  return result;
}

uint64_t sub_1C7018E30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 40 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v12 + 48);
        v14 = *(v12 + 56);
        v15 = *(v12 + 16);
        v16 = *(v12 + 32);
        result = *(v12 + 40);
        *(v12 + 40) = *v12;
        v17 = *(v12 + 64);
        v18 = *(v12 + 65);
        v19 = *(v12 + 72);
        *(v12 + 56) = v15;
        *(v12 + 72) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v17;
        *(v12 + 25) = v18;
        *(v12 + 32) = v19;
        v12 -= 40;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C7018F24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v39 = *a4;
    v4 = (v39 + (a3 << 6));
    v5 = result - a3 + 1;
    while (2)
    {
      v27 = v4;
      v28 = a3;
      v26 = v5;
      while (1)
      {
        v6 = *v4;
        v7 = v4[1];
        v8 = v4[3];
        v34 = v4[2];
        v35 = v8;
        v33[0] = v6;
        v33[1] = v7;
        v9 = *(v4 - 4);
        v10 = *(v4 - 3);
        v11 = *(v4 - 1);
        v37 = *(v4 - 2);
        v38 = v11;
        v36[0] = v9;
        v36[1] = v10;
        v12 = v34;
        v13 = v37;
        v31 = 0x3A70697254;
        v32 = 0xE500000000000000;
        sub_1C7026698(v33, &v29);
        sub_1C7026698(v36, &v29);
        MEMORY[0x1CCA5CD70](v12, *(&v12 + 1));
        v15 = v31;
        v14 = v32;
        v29 = 0x3A70697254;
        v30 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](v13, *(&v13 + 1));
        if (v15 == v29 && v14 == v30)
        {
          break;
        }

        v17 = sub_1C7551DBC();

        sub_1C70266D0(v36);
        result = sub_1C70266D0(v33);
        if ((v17 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v39)
        {
          __break(1u);
          return result;
        }

        v18 = v4 - 4;
        v20 = v4[2];
        v19 = v4[3];
        v22 = *v4;
        v21 = v4[1];
        v23 = *(v4 - 3);
        *v4 = *(v4 - 4);
        v4[1] = v23;
        v24 = *(v4 - 1);
        v4[2] = *(v4 - 2);
        v4[3] = v24;
        *v18 = v22;
        v18[1] = v21;
        v18[2] = v20;
        v18[3] = v19;
        if (!v5)
        {
          goto LABEL_13;
        }

        ++v5;
        v4 -= 4;
      }

      sub_1C70266D0(v36);
      result = sub_1C70266D0(v33);
LABEL_13:
      a3 = v28 + 1;
      v4 = v27 + 4;
      v5 = v26 - 1;
      if (v28 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C70190D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + (a3 << 6);
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        v11 = (v10 - 64);
        if (*v10 == *(v10 - 64) && *(v10 + 8) == *(v10 - 56))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v10 + 32);
        v13 = *(v10 + 48);
        v16 = *v10;
        v15 = *(v10 + 16);
        v17 = *(v10 - 48);
        *v10 = *v11;
        *(v10 + 16) = v17;
        v18 = *(v10 - 16);
        *(v10 + 32) = *(v10 - 32);
        *(v10 + 48) = v18;
        *v11 = v16;
        *(v10 - 48) = v15;
        v10 -= 64;
        v11[2] = v14;
        v11[3] = v13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 64;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C70191B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for PartOfWeekExtendedToken(0);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  v29 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v34 = -v17;
    v35 = v16;
    v19 = a1 - a3;
    v28 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v32 = v18;
      v33 = a3;
      v30 = v20;
      v31 = v19;
      v21 = v18;
      while (1)
      {
        sub_1C702659C();
        sub_1C702659C();
        v37 = 0x6557664F74726150;
        v38 = 0xEB000000003A6B65;
        MEMORY[0x1CCA5CD70](*v15, v15[1]);
        v22 = v37;
        v23 = v38;
        v37 = 0x6557664F74726150;
        v38 = 0xEB000000003A6B65;
        MEMORY[0x1CCA5CD70](*v11, v11[1]);
        if (v22 == v37 && v23 == v38)
        {
          break;
        }

        v25 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return;
          }

          sub_1C70267FC();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C70267FC();
          v21 += v34;
          v20 += v34;
          if (!__CFADD__(v19++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C70265F0();
      sub_1C70265F0();
LABEL_14:
      a3 = v33 + 1;
      v18 = v32 + v28;
      v19 = v31 - 1;
      v20 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C70194C4(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3 != a2)
  {
    v4 = (*a4 + 56 * a3 - 56);
    v5 = result - a3;
    do
    {
      v11 = a3;
      v10 = v5;
      v6 = v4[7];
      v7 = v4[8];
      v8 = v4[1];
      v12 = *v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v6, v7);
      MEMORY[0x1CCA5CD70](v12, v8);

      a3 = v11 + 1;
      v4 += 7;
      v5 = v10 - 1;
    }

    while (v11 + 1 != a2);
  }

  return result;
}

uint64_t sub_1C7019714(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3 - 56;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        v11 = v10 + 56;
        result = *(v10 + 56);
        if (result == *v10 && *(v10 + 64) == *(v10 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 56);
        v14 = *(v10 + 72);
        v15 = *(v10 + 80);
        v16 = *(v10 + 88);
        v17 = *(v10 + 96);
        v18 = *(v10 + 104);
        v19 = *(v10 + 16);
        *v11 = *v10;
        *(v10 + 72) = v19;
        *(v10 + 88) = *(v10 + 32);
        v20 = *(v10 + 48);
        *v10 = v13;
        *(v10 + 16) = v14;
        *(v10 + 24) = v15;
        *(v10 + 32) = v16;
        *(v10 + 40) = v17;
        *(v10 + 48) = v18;
        v10 -= 56;
        *(v11 + 48) = v20;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C7019814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for TimeExtendedToken(0);
  MEMORY[0x1EEE9AC00](v39);
  v36 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  v29 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v34 = -v17;
    v35 = v16;
    v19 = a1 - a3;
    v28 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v32 = v18;
      v33 = a3;
      v30 = v20;
      v31 = v19;
      v21 = v18;
      while (1)
      {
        sub_1C702659C();
        sub_1C702659C();
        v37 = 0x3A656D6954;
        v38 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](*v15, v15[1]);
        v22 = v37;
        v23 = v38;
        v37 = 0x3A656D6954;
        v38 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](*v11, v11[1]);
        if (v22 == v37 && v23 == v38)
        {
          break;
        }

        v25 = sub_1C7551DBC();

        sub_1C70265F0();
        sub_1C70265F0();
        if (v25)
        {
          if (!v35)
          {
            __break(1u);
            return;
          }

          sub_1C70267FC();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C70267FC();
          v21 += v34;
          v20 += v34;
          if (!__CFADD__(v19++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C70265F0();
      sub_1C70265F0();
LABEL_14:
      a3 = v33 + 1;
      v18 = v32 + v28;
      v19 = v31 - 1;
      v20 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7019B08()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = v8(0);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_392();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26[-v14];
  v28 = v5;
  if (v3 != v5)
  {
    v16 = *v1;
    v17 = *(v13 + 72);
    v18 = *v1 + v17 * (v3 - 1);
    v19 = -v17;
    v20 = v7 - v3;
    v33 = v16;
    v27 = v17;
    v21 = v16 + v17 * v3;
    while (2)
    {
      v31 = v18;
      v32 = v3;
      v29 = v21;
      v30 = v20;
      v22 = v20;
      while (1)
      {
        sub_1C702659C();
        OUTLINED_FUNCTION_249();
        sub_1C702659C();
        if (*v15 == *v11 && v15[1] == v11[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        OUTLINED_FUNCTION_423();
        sub_1C70265F0();
        sub_1C70265F0();
        if (v24)
        {
          if (!v33)
          {
            __break(1u);
            return;
          }

          sub_1C70267FC();
          swift_arrayInitWithTakeFrontToBack();
          OUTLINED_FUNCTION_180();
          sub_1C70267FC();
          v18 += v19;
          v21 += v19;
          if (!__CFADD__(v22++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_423();
      sub_1C70265F0();
      sub_1C70265F0();
LABEL_14:
      v3 = v32 + 1;
      v18 = v31 + v27;
      v20 = v30 - 1;
      v21 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7019D2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v13 = *a4;
    v4 = (*a4 + 40 * a3 - 40);
    v5 = result - a3;
    do
    {
      v12 = a3;
      v6 = (v13 + 40 * a3);
      v8 = *v6;
      v7 = v6[1];
      v11 = v5;
      v9 = v4[1];
      v14 = *v4;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v8, v7);
      sub_1C755180C();

      MEMORY[0x1CCA5CD70](v14, v9);

      a3 = v12 + 1;
      v4 += 5;
      v5 = v11 - 1;
    }

    while (v12 + 1 != a2);
  }

  return result;
}

uint64_t sub_1C7019F70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 40 * a3 - 40;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 40 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == *(v12 + 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *(v12 + 48);
        v14 = *(v12 + 56);
        v15 = *(v12 + 16);
        v16 = *(v12 + 32);
        result = *(v12 + 40);
        *(v12 + 40) = *v12;
        v17 = *(v12 + 64);
        v18 = *(v12 + 65);
        v19 = *(v12 + 72);
        *(v12 + 56) = v15;
        *(v12 + 72) = v16;
        *v12 = result;
        *(v12 + 8) = v10;
        *(v12 + 16) = v14;
        *(v12 + 24) = v17;
        *(v12 + 25) = v18;
        *(v12 + 32) = v19;
        v12 -= 40;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 40;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A064(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v38 = *a4;
    v4 = (v38 + 56 * a3);
    v5 = result - a3 + 1;
    while (2)
    {
      v28 = v4;
      v29 = a3;
      v27 = v5;
      while (1)
      {
        v6 = OUTLINED_FUNCTION_272();
        v35 = v7;
        v34[1] = v8;
        v34[2] = v9;
        v34[0] = v6;
        v10 = OUTLINED_FUNCTION_574();
        v37 = v11;
        v36[1] = v12;
        v36[2] = v13;
        v36[0] = v10;
        v32 = 0x6E6F697461636F4CLL;
        v33 = 0xE90000000000003ALL;
        sub_1C70260B4(v34, &v30);
        sub_1C70260B4(v36, &v30);
        v14 = OUTLINED_FUNCTION_55();
        MEMORY[0x1CCA5CD70](v14);
        v16 = v32;
        v15 = v33;
        v30 = 0x6E6F697461636F4CLL;
        v31 = 0xE90000000000003ALL;
        v17 = OUTLINED_FUNCTION_323();
        MEMORY[0x1CCA5CD70](v17);
        if (v16 == v30 && v15 == v31)
        {
          break;
        }

        v19 = OUTLINED_FUNCTION_385(v16, v15, v30);

        sub_1C70260EC(v36);
        result = sub_1C70260EC(v34);
        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v38)
        {
          __break(1u);
          return result;
        }

        v20 = v4 - 56;
        v21 = *(v4 + 6);
        v23 = v4[1];
        v22 = v4[2];
        v24 = *v4;
        v25 = *(v4 - 40);
        *v4 = *(v4 - 56);
        v4[1] = v25;
        v4[2] = *(v4 - 24);
        *(v4 + 6) = *(v4 - 1);
        *v20 = v24;
        *(v20 + 16) = v23;
        *(v20 + 32) = v22;
        *(v20 + 48) = v21;
        if (!v5)
        {
          goto LABEL_13;
        }

        ++v5;
        v4 = (v4 - 56);
      }

      sub_1C70260EC(v36);
      result = sub_1C70260EC(v34);
LABEL_13:
      a3 = v29 + 1;
      v4 = (v28 + 56);
      v5 = v27 - 1;
      if (v29 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A224(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        v11 = v10 - 56;
        if (*v10 == *(v10 - 56) && *(v10 + 8) == *(v10 - 48))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 48);
        v15 = *(v10 + 16);
        v14 = *(v10 + 32);
        v16 = *v10;
        v17 = *(v10 - 40);
        *v10 = *v11;
        *(v10 + 16) = v17;
        *(v10 + 32) = *(v10 - 24);
        *(v10 + 48) = *(v10 - 8);
        *v11 = v16;
        *(v10 - 40) = v15;
        *(v10 - 24) = v14;
        v10 -= 56;
        *(v11 + 48) = v13;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_1C701A318(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = (*a4 + 72 * a3);
    v5 = &result[-a3 + 1];
    while (2)
    {
      v17 = a3;
      v24 = v5;
      v16 = v4;
      while (1)
      {
        memcpy(__dst, v4, 0x42uLL);
        memcpy(v23, v4 - 72, 0x42uLL);
        v6 = __dst[4];
        v7 = __dst[5];
        v9 = v23[4];
        v8 = v23[5];
        v20 = 980706640;
        v21 = 0xE400000000000000;
        sub_1C7025FF8(__dst, __src);
        sub_1C7025FF8(v23, __src);
        MEMORY[0x1CCA5CD70](v6, v7);
        v11 = v20;
        v10 = v21;
        __src[0] = 980706640;
        __src[1] = 0xE400000000000000;
        MEMORY[0x1CCA5CD70](v9, v8);
        if (v11 == __src[0] && v10 == __src[1])
        {
          break;
        }

        v13 = sub_1C7551DBC();

        sub_1C7026030(v23);
        result = sub_1C7026030(__dst);
        v14 = v24;
        if ((v13 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v18)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v4, 0x42uLL);
        memcpy(v4, v4 - 72, 0x48uLL);
        result = memcpy(v4 - 72, __src, 0x42uLL);
        if (!v14)
        {
          goto LABEL_13;
        }

        v24 = v14 + 1;
        v4 -= 72;
      }

      sub_1C7026030(v23);
      result = sub_1C7026030(__dst);
LABEL_13:
      a3 = v17 + 1;
      v4 = v16 + 72;
      --v5;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A4EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 9) && v10[1] == *(v10 - 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 9, 0x48uLL);
        result = memcpy(v10 - 9, __dst, 0x42uLL);
        v10 -= 9;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 72;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

char *sub_1C701A5E0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = (*a4 + 72 * a3);
    v5 = &result[-a3 + 1];
    while (2)
    {
      v17 = a3;
      v24 = v5;
      v16 = v4;
      while (1)
      {
        memcpy(__dst, v4, 0x41uLL);
        memcpy(v23, v4 - 72, 0x41uLL);
        v6 = __dst[4];
        v7 = __dst[5];
        v9 = v23[4];
        v8 = v23[5];
        v20 = 0x3A6E6F73726550;
        v21 = 0xE700000000000000;
        sub_1C7025F3C(__dst, __src);
        sub_1C7025F3C(v23, __src);
        MEMORY[0x1CCA5CD70](v6, v7);
        v11 = v20;
        v10 = v21;
        __src[0] = 0x3A6E6F73726550;
        __src[1] = 0xE700000000000000;
        MEMORY[0x1CCA5CD70](v9, v8);
        if (v11 == __src[0] && v10 == __src[1])
        {
          break;
        }

        v13 = sub_1C7551DBC();

        sub_1C7025F74(v23);
        result = sub_1C7025F74(__dst);
        v14 = v24;
        if ((v13 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (!v18)
        {
          __break(1u);
          return result;
        }

        memcpy(__src, v4, 0x41uLL);
        memcpy(v4, v4 - 72, 0x48uLL);
        result = memcpy(v4 - 72, __src, 0x41uLL);
        if (!v14)
        {
          goto LABEL_13;
        }

        v24 = v14 + 1;
        v4 -= 72;
      }

      sub_1C7025F74(v23);
      result = sub_1C7025F74(__dst);
LABEL_13:
      a3 = v17 + 1;
      v4 = v16 + 72;
      --v5;
      if (v17 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C701A7BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 72 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        if (*v10 == *(v10 - 9) && v10[1] == *(v10 - 8))
        {
          break;
        }

        result = sub_1C7551DBC();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 9, 0x48uLL);
        result = memcpy(v10 - 9, __dst, 0x41uLL);
        v10 -= 9;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 72;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C701A8B0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v98 = *result;
    if (!*result)
    {
      goto LABEL_110;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_73:
      v79 = v6 + 16;
      v80 = *(v6 + 2);
      while (v80 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_108;
        }

        v81 = v6;
        v82 = &v6[16 * v80];
        v83 = *v82;
        v84 = &v79[2 * v80];
        v85 = *(v84 + 1);
        sub_1C702250C((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v85, v98);
        if (v96)
        {
          break;
        }

        if (v85 < v83)
        {
          goto LABEL_98;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_99;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        v86 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_100;
        }

        v96 = 0;
        v80 = *v79 - 1;
        sub_1C7423CF4(v84 + 16, v86, v84);
        *v79 = v80;
        v6 = v81;
      }

LABEL_81:

      return;
    }

LABEL_106:
    v6 = sub_1C7420830();
    goto LABEL_73;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v91 = v6;
    if (v5 + 1 < v4)
    {
      v90 = v4;
      v9 = *a3;
      v93 = v5 + 1;
      v10 = (*a3 + 40 * v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = (*a3 + 40 * v7);
      v14 = *v13;
      v15 = v13[1];
      v98 = v13[4];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);
      MEMORY[0x1CCA5CD70](v14, v15);

      v16 = 0;
      v17 = (v7 + 2);
      v18 = v9 + 40 * v7 + 72;
      v6 = v91;
      v19 = v93;
      while (1)
      {
        v8 = v17;
        v20 = v19;
        v21 = v16;
        if (v17 >= v90)
        {
          break;
        }

        v98 = v17;
        v22 = *(v18 + 8);
        v23 = *(v18 + 16);
        v24 = *(v18 - 32);
        v25 = *(v18 - 24);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v22, v23);
        MEMORY[0x1CCA5CD70](v24, v25);

        v17 = v98 + 1;
        v18 += 40;
        v19 = v20 + 1;
        v16 = v21 + 40;
        v6 = v91;
      }
    }

    v26 = a3[1];
    if (v8 < v26)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_103;
      }

      if (v8 - v7 < a4)
      {
        v27 = v7 + a4;
        if (__OFADD__(v7, a4))
        {
          goto LABEL_104;
        }

        if (v27 >= v26)
        {
          v27 = a3[1];
        }

        if (v27 < v7)
        {
          goto LABEL_105;
        }

        if (v8 != v27)
        {
          v97 = *a3;
          v28 = *a3 + 40 * v8 - 40;
          v89 = v27;
          v29 = v7 - v8;
          do
          {
            v94 = v8;
            v30 = (v97 + 40 * v8);
            v31 = *v30;
            v32 = v30[1];
            v33 = *(v28 + 8);
            v98 = *v28;
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](v31, v32);
            MEMORY[0x1CCA5CD70](v98, v33);

            ++v8;
            v28 += 40;
            --v29;
          }

          while (v94 + 1 != v89);
          v8 = v89;
          v6 = v91;
        }
      }
    }

    if (v8 < v7)
    {
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v77;
    }

    v35 = *(v6 + 2);
    v34 = *(v6 + 3);
    v36 = v35 + 1;
    v95 = v8;
    if (v35 >= v34 >> 1)
    {
      sub_1C6FB17EC(v34 > 1, v35 + 1, 1, v6);
      v6 = v78;
    }

    *(v6 + 2) = v36;
    v37 = v6 + 32;
    v38 = &v6[16 * v35 + 32];
    *v38 = v7;
    *(v38 + 1) = v8;
    v39 = *result;
    if (!*result)
    {
      goto LABEL_109;
    }

    if (v35)
    {
      break;
    }

LABEL_67:
    v5 = v95;
    v4 = a3[1];
    if (v95 >= v4)
    {
      goto LABEL_71;
    }
  }

  while (1)
  {
    v40 = v36 - 1;
    v41 = &v37[16 * v36 - 16];
    v42 = &v6[16 * v36];
    if (v36 >= 4)
    {
      v47 = &v37[16 * v36];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_87;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_88;
      }

      v54 = *(v42 + 1);
      v55 = v54 - *v42;
      if (__OFSUB__(v54, *v42))
      {
        goto LABEL_90;
      }

      v53 = __OFADD__(v45, v55);
      v56 = v45 + v55;
      if (v53)
      {
        goto LABEL_93;
      }

      if (v56 >= v50)
      {
        v70 = *v41;
        v69 = *(v41 + 1);
        v53 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v53)
        {
          goto LABEL_101;
        }

        if (v45 < v71)
        {
          v40 = v36 - 2;
        }

        goto LABEL_60;
      }

      goto LABEL_38;
    }

    if (v36 == 3)
    {
      v43 = *(v6 + 4);
      v44 = *(v6 + 5);
      v53 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      v46 = v53;
LABEL_38:
      if (v46)
      {
        goto LABEL_89;
      }

      v58 = *v42;
      v57 = *(v42 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_92;
      }

      v62 = *(v41 + 1);
      v63 = v62 - *v41;
      if (__OFSUB__(v62, *v41))
      {
        goto LABEL_95;
      }

      if (__OFADD__(v60, v63))
      {
        goto LABEL_97;
      }

      if (v60 + v63 >= v45)
      {
        if (v45 < v63)
        {
          v40 = v36 - 2;
        }

        goto LABEL_60;
      }

      goto LABEL_53;
    }

    if (v36 < 2)
    {
      goto LABEL_91;
    }

    v65 = *v42;
    v64 = *(v42 + 1);
    v53 = __OFSUB__(v64, v65);
    v60 = v64 - v65;
    v61 = v53;
LABEL_53:
    if (v61)
    {
      goto LABEL_94;
    }

    v67 = *v41;
    v66 = *(v41 + 1);
    v53 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v53)
    {
      goto LABEL_96;
    }

    if (v68 < v60)
    {
      goto LABEL_67;
    }

LABEL_60:
    if (v40 - 1 >= v36)
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
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

    if (!*a3)
    {
      break;
    }

    v72 = &v37[16 * v40 - 16];
    v73 = *v72;
    v74 = &v37[16 * v40];
    v75 = *(v74 + 1);
    sub_1C702250C((*a3 + 40 * *v72), (*a3 + 40 * *v74), *a3 + 40 * v75, v39);
    if (v96)
    {
      goto LABEL_81;
    }

    if (v75 < v73)
    {
      goto LABEL_84;
    }

    v76 = *(v6 + 2);
    if (v40 > v76)
    {
      goto LABEL_85;
    }

    *v72 = v73;
    *(v72 + 1) = v75;
    if (v40 >= v76)
    {
      goto LABEL_86;
    }

    v96 = 0;
    v36 = v76 - 1;
    sub_1C7423CF4(v74 + 16, v76 - 1 - v40, &v37[16 * v40]);
    *(v6 + 2) = v76 - 1;
    if (v76 <= 2)
    {
      goto LABEL_67;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
}

void sub_1C701B1A0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v99 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 40 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 40 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = (v9 + 40 * v8 + 88);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v16 += 5;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 40 * v6 - 16;
          v19 = 40 * v8 + 32;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 32);
              v25 = v22 + v18;
              v26 = *(v23 - 2);
              v27 = *(v23 - 8);
              v28 = *(v23 - 7);
              v29 = *v23;
              v30 = *(v25 + 8);
              v31 = *(v25 - 8);
              *(v23 - 2) = *(v25 - 24);
              *(v23 - 1) = v31;
              *v23 = v30;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 1) = v28;
              *(v25 + 8) = v29;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v6 < v32)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v8 + a4;
          }

          if (v33 < v8)
          {
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
            return;
          }

          if (v6 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 40 * v6 - 40;
            v36 = v8 - v6;
            do
            {
              v37 = (v34 + 40 * v6);
              v38 = *v37;
              v39 = v37[1];
              v40 = v36;
              v41 = v35;
              do
              {
                v42 = v38 == *v41 && v39 == *(v41 + 8);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v39 = *(v41 + 48);
                v43 = *(v41 + 56);
                v44 = *(v41 + 16);
                v45 = *(v41 + 32);
                v38 = *(v41 + 40);
                *(v41 + 40) = *v41;
                v46 = *(v41 + 64);
                v47 = *(v41 + 65);
                v48 = *(v41 + 72);
                *(v41 + 56) = v44;
                *(v41 + 72) = v45;
                *v41 = v38;
                *(v41 + 8) = v39;
                *(v41 + 16) = v43;
                *(v41 + 24) = v46;
                *(v41 + 25) = v47;
                *(v41 + 32) = v48;
                v41 -= 40;
              }

              while (!__CFADD__(v40++, 1));
              ++v6;
              v35 += 40;
              --v36;
            }

            while (v6 != v33);
            v6 = v33;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v93;
      }

      v51 = v7[2];
      v50 = v7[3];
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        sub_1C6FB17EC(v50 > 1, v51 + 1, 1, v7);
        v7 = v94;
      }

      v7[2] = v52;
      v53 = v7 + 4;
      v54 = &v7[2 * v51 + 4];
      *v54 = v8;
      v54[1] = v6;
      v97 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v51)
      {
        while (1)
        {
          v55 = v52 - 1;
          v56 = &v53[2 * v52 - 2];
          v57 = &v7[2 * v52];
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v58 = v7[4];
            v59 = v7[5];
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_69:
            if (v61)
            {
              goto LABEL_110;
            }

            v73 = *v57;
            v72 = v57[1];
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_113;
            }

            v77 = v56[1];
            v78 = v77 - *v56;
            if (__OFSUB__(v77, *v56))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v75, v78))
            {
              goto LABEL_118;
            }

            if (v75 + v78 >= v60)
            {
              if (v60 < v78)
              {
                v55 = v52 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v52 < 2)
          {
            goto LABEL_112;
          }

          v80 = *v57;
          v79 = v57[1];
          v68 = __OFSUB__(v79, v80);
          v75 = v79 - v80;
          v76 = v68;
LABEL_84:
          if (v76)
          {
            goto LABEL_115;
          }

          v82 = *v56;
          v81 = v56[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_117;
          }

          if (v83 < v75)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v55 - 1 >= v52)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v87 = v7;
          v88 = &v53[2 * v55 - 2];
          v89 = *v88;
          v90 = &v53[2 * v55];
          v91 = v90[1];
          sub_1C70228EC((*a3 + 40 * *v88), (*a3 + 40 * *v90), *a3 + 40 * v91, v97);
          if (v99)
          {
            goto LABEL_103;
          }

          if (v91 < v89)
          {
            goto LABEL_105;
          }

          v92 = v87[2];
          if (v55 > v92)
          {
            goto LABEL_106;
          }

          *v88 = v89;
          v88[1] = v91;
          if (v55 >= v92)
          {
            goto LABEL_107;
          }

          v52 = v92 - 1;
          memmove(&v53[2 * v55], v90 + 2, 16 * (v92 - 1 - v55));
          v7 = v87;
          v87[2] = v92 - 1;
          if (v92 <= 2)
          {
            goto LABEL_98;
          }
        }

        v62 = &v53[2 * v52];
        v63 = *(v62 - 8);
        v64 = *(v62 - 7);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_108;
        }

        v67 = *(v62 - 6);
        v66 = *(v62 - 5);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_109;
        }

        v69 = v57[1];
        v70 = v69 - *v57;
        if (__OFSUB__(v69, *v57))
        {
          goto LABEL_111;
        }

        v68 = __OFADD__(v60, v70);
        v71 = v60 + v70;
        if (v68)
        {
          goto LABEL_114;
        }

        if (v71 >= v65)
        {
          v85 = *v56;
          v84 = v56[1];
          v68 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v68)
          {
            goto LABEL_119;
          }

          if (v60 < v86)
          {
            v55 = v52 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v100 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C7021F04(&v100, *result, a3);
LABEL_103:
}

void sub_1C701B704(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v4 = *result;
    if (!*result)
    {
      goto LABEL_145;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v118 = (v7 + 16);
      for (i = *(v7 + 2); i >= 2; *v118 = i)
      {
        if (!*a3)
        {
          goto LABEL_142;
        }

        v120 = &v7[16 * i];
        v121 = *v120;
        v122 = &v118[2 * i];
        v123 = *(v122 + 1);
        sub_1C7022AB4((*a3 + (*v120 << 6)), (*a3 + (*v122 << 6)), (*a3 + (v123 << 6)), v4);
        if (v136)
        {
          break;
        }

        if (v123 < v121)
        {
          goto LABEL_130;
        }

        if (i - 2 >= *v118)
        {
          goto LABEL_131;
        }

        *v120 = v121;
        *(v120 + 1) = v123;
        v124 = *v118 - i;
        if (*v118 < i)
        {
          goto LABEL_132;
        }

        i = *v118 - 1;
        sub_1C7423CF4(v122 + 16, v124, v122);
      }

LABEL_114:

      return;
    }

LABEL_139:
    v7 = sub_1C7420830();
    goto LABEL_106;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v128 = v6;
    if (v6 + 1 < v5)
    {
      v137 = v5;
      v10 = *a3;
      v11 = (*a3 + (v9 << 6));
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[3];
      v151 = v11[2];
      v152 = v14;
      v149 = v12;
      v150 = v13;
      v15 = (v10 + (v8 << 6));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[3];
      v155 = v15[2];
      v156 = v18;
      v153 = v16;
      v154 = v17;
      v19 = v151;
      v20 = *(&v155 + 1);
      v4 = v155;
      *&v143[0] = 0x3A70697254;
      *(&v143[0] + 1) = 0xE500000000000000;
      sub_1C7026698(&v149, v146);
      sub_1C7026698(&v153, v146);
      MEMORY[0x1CCA5CD70](v19, *(&v19 + 1));
      v21 = v143[0];
      *&v146[0] = 0x3A70697254;
      *(&v146[0] + 1) = 0xE500000000000000;
      MEMORY[0x1CCA5CD70](v4, v20);
      if (v21 == *&v146[0] && *(&v21 + 1) == *(&v146[0] + 1))
      {
        LODWORD(v157) = 0;
      }

      else
      {
        LODWORD(v157) = sub_1C7551DBC();
      }

      v126 = v7;

      sub_1C70266D0(&v153);
      sub_1C70266D0(&v149);
      v23 = v15 + 8;
      v24 = (v128 << 6) + 64;
      do
      {
        v25 = v9;
        v26 = v24;
        v133 = v9 + 1;
        if (v9 + 1 >= v137)
        {
          break;
        }

        v27 = *v23;
        v28 = v23[1];
        v29 = v23[3];
        v144 = v23[2];
        v145 = v29;
        v143[0] = v27;
        v143[1] = v28;
        v30 = *(v23 - 4);
        v31 = *(v23 - 3);
        v32 = *(v23 - 1);
        v147 = *(v23 - 2);
        v148 = v32;
        v146[0] = v30;
        v146[1] = v31;
        v33 = v144;
        v34 = v147;
        v141 = 0x3A70697254;
        v142 = 0xE500000000000000;
        sub_1C7026698(v143, &v139);
        sub_1C7026698(v146, &v139);
        MEMORY[0x1CCA5CD70](v33, *(&v33 + 1));
        v36 = v141;
        v35 = v142;
        v139 = 0x3A70697254;
        v140 = 0xE500000000000000;
        MEMORY[0x1CCA5CD70](v34, *(&v34 + 1));
        v37 = v36 == v139 && v35 == v140;
        v4 = v37 ? 0 : sub_1C7551DBC();

        sub_1C70266D0(v146);
        sub_1C70266D0(v143);
        v23 += 4;
        ++v9;
        v24 = v26 + 64;
      }

      while (((v157 ^ v4) & 1) == 0);
      if ((v157 & 1) == 0)
      {
        v7 = v126;
        v9 = v133;
LABEL_30:
        v8 = v128;
        goto LABEL_31;
      }

      v9 = v133;
      v38 = v128;
      if (v133 < v128)
      {
        goto LABEL_136;
      }

      if (v128 <= v25)
      {
        v39 = v128 << 6;
        do
        {
          if (v38 != v25)
          {
            v40 = *a3;
            if (!*a3)
            {
              goto LABEL_143;
            }

            v41 = (v40 + v39);
            v42 = (v40 + v26);
            v44 = v41[2];
            v43 = v41[3];
            v46 = *v41;
            v45 = v41[1];
            v47 = v42[3];
            v49 = *v42;
            v48 = v42[1];
            v41[2] = v42[2];
            v41[3] = v47;
            *v41 = v49;
            v41[1] = v48;
            *v42 = v46;
            v42[1] = v45;
            v42[2] = v44;
            v42[3] = v43;
          }

          ++v38;
          v26 -= 64;
          v39 += 64;
        }

        while (v38 < v25--);
        v7 = v126;
        goto LABEL_30;
      }

      v7 = v126;
      v8 = v128;
    }

LABEL_31:
    v51 = a3[1];
    if (v9 < v51)
    {
      if (__OFSUB__(v9, v8))
      {
        goto LABEL_135;
      }

      if (v9 - v8 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v9 < v8)
    {
      goto LABEL_134;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v7 + 2) + 1, 1, v7);
      v7 = v116;
    }

    v75 = *(v7 + 2);
    v74 = *(v7 + 3);
    v76 = v75 + 1;
    v135 = v9;
    if (v75 >= v74 >> 1)
    {
      sub_1C6FB17EC(v74 > 1, v75 + 1, 1, v7);
      v7 = v117;
    }

    *(v7 + 2) = v76;
    v77 = v7 + 32;
    v78 = &v7[16 * v75 + 32];
    *v78 = v128;
    *(v78 + 1) = v135;
    v157 = *result;
    if (!v157)
    {
      goto LABEL_144;
    }

    if (v75)
    {
      while (1)
      {
        v79 = v76 - 1;
        v80 = &v77[16 * v76 - 16];
        v81 = &v7[16 * v76];
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v82 = *(v7 + 4);
          v83 = *(v7 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_72:
          if (v85)
          {
            goto LABEL_121;
          }

          v97 = *v81;
          v96 = *(v81 + 1);
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_124;
          }

          v101 = *(v80 + 1);
          v102 = v101 - *v80;
          if (__OFSUB__(v101, *v80))
          {
            goto LABEL_127;
          }

          if (__OFADD__(v99, v102))
          {
            goto LABEL_129;
          }

          if (v99 + v102 >= v84)
          {
            if (v84 < v102)
            {
              v79 = v76 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v76 < 2)
        {
          goto LABEL_123;
        }

        v104 = *v81;
        v103 = *(v81 + 1);
        v92 = __OFSUB__(v103, v104);
        v99 = v103 - v104;
        v100 = v92;
LABEL_87:
        if (v100)
        {
          goto LABEL_126;
        }

        v106 = *v80;
        v105 = *(v80 + 1);
        v92 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v107 < v99)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v79 - 1 >= v76)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v111 = v7;
        v112 = &v77[16 * v79 - 16];
        v113 = *v112;
        v114 = &v77[16 * v79];
        v115 = *(v114 + 1);
        sub_1C7022AB4((*a3 + (*v112 << 6)), (*a3 + (*v114 << 6)), (*a3 + (v115 << 6)), v157);
        if (v136)
        {
          goto LABEL_114;
        }

        if (v115 < v113)
        {
          goto LABEL_116;
        }

        v4 = *(v111 + 2);
        if (v79 > v4)
        {
          goto LABEL_117;
        }

        *v112 = v113;
        *(v112 + 1) = v115;
        if (v79 >= v4)
        {
          goto LABEL_118;
        }

        v76 = (v4 - 1);
        sub_1C7423CF4(v114 + 16, &v4[-v79 - 1], &v77[16 * v79]);
        v7 = v111;
        *(v111 + 2) = v4 - 1;
        if (v4 <= 2)
        {
          goto LABEL_101;
        }
      }

      v86 = &v77[16 * v76];
      v87 = *(v86 - 8);
      v88 = *(v86 - 7);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_119;
      }

      v91 = *(v86 - 6);
      v90 = *(v86 - 5);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_120;
      }

      v93 = *(v81 + 1);
      v94 = v93 - *v81;
      if (__OFSUB__(v93, *v81))
      {
        goto LABEL_122;
      }

      v92 = __OFADD__(v84, v94);
      v95 = v84 + v94;
      if (v92)
      {
        goto LABEL_125;
      }

      if (v95 >= v89)
      {
        v109 = *v80;
        v108 = *(v80 + 1);
        v92 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v92)
        {
          goto LABEL_133;
        }

        if (v84 < v110)
        {
          v79 = v76 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v6 = v135;
    v5 = a3[1];
    if (v135 >= v5)
    {
      goto LABEL_104;
    }
  }

  v52 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v52 >= v51)
  {
    v52 = a3[1];
  }

  if (v52 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v9 == v52)
  {
    goto LABEL_52;
  }

  v138 = *a3;
  v53 = (*a3 + (v9 << 6));
  v54 = (v8 - v9 + 1);
  v129 = v52;
LABEL_40:
  v134 = v9;
  v130 = v54;
  v157 = v54;
  v131 = v53;
  while (1)
  {
    v55 = *v53;
    v56 = v53[1];
    v57 = v53[3];
    v151 = v53[2];
    v152 = v57;
    v149 = v55;
    v150 = v56;
    v58 = *(v53 - 4);
    v59 = *(v53 - 3);
    v60 = *(v53 - 1);
    v155 = *(v53 - 2);
    v156 = v60;
    v153 = v58;
    v154 = v59;
    v61 = v151;
    v4 = *(&v155 + 1);
    v62 = v155;
    *&v143[0] = 0x3A70697254;
    *(&v143[0] + 1) = 0xE500000000000000;
    sub_1C7026698(&v149, v146);
    sub_1C7026698(&v153, v146);
    MEMORY[0x1CCA5CD70](v61, *(&v61 + 1));
    v63 = v143[0];
    *&v146[0] = 0x3A70697254;
    *(&v146[0] + 1) = 0xE500000000000000;
    MEMORY[0x1CCA5CD70](v62, v4);
    if (v63 == *&v146[0] && *(&v63 + 1) == *(&v146[0] + 1))
    {

      sub_1C70266D0(&v153);
      sub_1C70266D0(&v149);
LABEL_50:
      v9 = v134 + 1;
      v53 = v131 + 4;
      v54 = v130 - 1;
      if (v134 + 1 == v129)
      {
        v9 = v129;
        v8 = v128;
        goto LABEL_52;
      }

      goto LABEL_40;
    }

    v65 = sub_1C7551DBC();

    sub_1C70266D0(&v153);
    sub_1C70266D0(&v149);
    v66 = v157;
    if ((v65 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v138)
    {
      break;
    }

    v67 = v53 - 4;
    v69 = v53[2];
    v68 = v53[3];
    v71 = *v53;
    v70 = v53[1];
    v72 = *(v53 - 3);
    *v53 = *(v53 - 4);
    v53[1] = v72;
    v73 = *(v53 - 1);
    v53[2] = *(v53 - 2);
    v53[3] = v73;
    *v67 = v71;
    v67[1] = v70;
    v67[2] = v69;
    v67[3] = v68;
    if (!v66)
    {
      goto LABEL_50;
    }

    v157 = v66 + 1;
    v53 -= 4;
  }

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
}

void sub_1C701BF68(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + (v10 << 6));
        v12 = (*a3 + (v7 << 6));
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1C7551DBC();
        }

        v10 = v9 + 2;
        v15 = v9 << 6;
        v16 = v12 + 17;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 9) && *v16 == *(v16 - 8))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v10;
          v16 += 8;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = (v10 << 6) - 64;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = (v21 + v18);
              v25 = v22[2];
              v24 = v22[3];
              v27 = *v22;
              v26 = v22[1];
              v28 = v23[3];
              v30 = *v23;
              v29 = v23[1];
              v22[2] = v23[2];
              v22[3] = v28;
              *v22 = v30;
              v22[1] = v29;
              *v23 = v27;
              v23[1] = v26;
              v23[2] = v25;
              v23[3] = v24;
            }

            ++v20;
            v18 -= 64;
            v15 += 64;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v31 = a3[1];
      if (v10 < v31)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v31)
          {
            v32 = a3[1];
          }

          else
          {
            v32 = v9 + a4;
          }

          if (v32 < v9)
          {
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
            return;
          }

          if (v10 != v32)
          {
            v96 = v5;
            v98 = v9;
            v33 = *a3;
            v34 = *a3 + (v10 << 6);
            v35 = v9 - v10;
            do
            {
              v36 = v10;
              v37 = v35;
              v38 = v34;
              do
              {
                v39 = (v38 - 64);
                v40 = *v38 == *(v38 - 64) && *(v38 + 8) == *(v38 - 56);
                if (v40 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_124;
                }

                v42 = *(v38 + 32);
                v41 = *(v38 + 48);
                v44 = *v38;
                v43 = *(v38 + 16);
                v45 = *(v38 - 48);
                *v38 = *v39;
                *(v38 + 16) = v45;
                v46 = *(v38 - 16);
                *(v38 + 32) = *(v38 - 32);
                *(v38 + 48) = v46;
                *v39 = v44;
                *(v38 - 48) = v43;
                v38 -= 64;
                v39[2] = v42;
                v39[3] = v41;
              }

              while (!__CFADD__(v37++, 1));
              v10 = v36 + 1;
              v34 += 64;
              --v35;
            }

            while (v36 + 1 != v32);
            v10 = v32;
            v5 = v96;
            v9 = v98;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v97 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v8[2] + 1, 1, v8);
        v8 = v92;
      }

      v49 = v8[2];
      v48 = v8[3];
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        sub_1C6FB17EC(v48 > 1, v49 + 1, 1, v8);
        v8 = v93;
      }

      v8[2] = v50;
      v51 = v8 + 4;
      v52 = &v8[2 * v49 + 4];
      *v52 = v9;
      v52[1] = v97;
      v99 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          v54 = &v51[2 * v50 - 2];
          v55 = &v8[2 * v50];
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v56 = v8[4];
            v57 = v8[5];
            v66 = __OFSUB__(v57, v56);
            v58 = v57 - v56;
            v59 = v66;
LABEL_69:
            if (v59)
            {
              goto LABEL_109;
            }

            v71 = *v55;
            v70 = v55[1];
            v72 = __OFSUB__(v70, v71);
            v73 = v70 - v71;
            v74 = v72;
            if (v72)
            {
              goto LABEL_112;
            }

            v75 = v54[1];
            v76 = v75 - *v54;
            if (__OFSUB__(v75, *v54))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v73, v76))
            {
              goto LABEL_117;
            }

            if (v73 + v76 >= v58)
            {
              if (v58 < v76)
              {
                v53 = v50 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v50 < 2)
          {
            goto LABEL_111;
          }

          v78 = *v55;
          v77 = v55[1];
          v66 = __OFSUB__(v77, v78);
          v73 = v77 - v78;
          v74 = v66;
LABEL_84:
          if (v74)
          {
            goto LABEL_114;
          }

          v80 = *v54;
          v79 = v54[1];
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_116;
          }

          if (v81 < v73)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v53 - 1 >= v50)
          {
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v85 = &v51[2 * v53 - 2];
          v86 = *v85;
          v87 = &v51[2 * v53];
          v88 = v87[1];
          sub_1C7022E5C((*a3 + (*v85 << 6)), (*a3 + (*v87 << 6)), (*a3 + (v88 << 6)), v99);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v88 < v86)
          {
            goto LABEL_104;
          }

          v89 = v8;
          v90 = v8[2];
          if (v53 > v90)
          {
            goto LABEL_105;
          }

          *v85 = v86;
          v85[1] = v88;
          if (v53 >= v90)
          {
            goto LABEL_106;
          }

          v50 = v90 - 1;
          memmove(&v51[2 * v53], v87 + 2, 16 * (v90 - 1 - v53));
          v89[2] = v90 - 1;
          v91 = v90 > 2;
          v8 = v89;
          if (!v91)
          {
            goto LABEL_98;
          }
        }

        v60 = &v51[2 * v50];
        v61 = *(v60 - 8);
        v62 = *(v60 - 7);
        v66 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        if (v66)
        {
          goto LABEL_107;
        }

        v65 = *(v60 - 6);
        v64 = *(v60 - 5);
        v66 = __OFSUB__(v64, v65);
        v58 = v64 - v65;
        v59 = v66;
        if (v66)
        {
          goto LABEL_108;
        }

        v67 = v55[1];
        v68 = v67 - *v55;
        if (__OFSUB__(v67, *v55))
        {
          goto LABEL_110;
        }

        v66 = __OFADD__(v58, v68);
        v69 = v58 + v68;
        if (v66)
        {
          goto LABEL_113;
        }

        if (v69 >= v63)
        {
          v83 = *v54;
          v82 = v54[1];
          v66 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v66)
          {
            goto LABEL_118;
          }

          if (v58 < v84)
          {
            v53 = v50 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v97;
      if (v97 >= v6)
      {
        v101 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_1C702203C(&v101, *result, a3);
LABEL_102:
}

void sub_1C701C494(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_72:
    v101 = *result;
    if (!*result)
    {
      goto LABEL_111;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_74:
      v80 = v6 + 16;
      v81 = *(v6 + 2);
      while (v81 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_109;
        }

        v82 = v6;
        v83 = &v6[16 * v81];
        v84 = *v83;
        v85 = &v80[2 * v81];
        v86 = *(v85 + 1);
        sub_1C70235E8((*a3 + 56 * *v83), (*a3 + 56 * *v85), *a3 + 56 * v86, v101);
        if (v99)
        {
          break;
        }

        if (v86 < v84)
        {
          goto LABEL_99;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_100;
        }

        *v83 = v84;
        *(v83 + 1) = v86;
        v87 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_101;
        }

        v99 = 0;
        v81 = *v80 - 1;
        sub_1C7423CF4(v85 + 16, v87, v85);
        *v80 = v81;
        v6 = v82;
      }

LABEL_82:

      return;
    }

LABEL_107:
    v6 = sub_1C7420830();
    goto LABEL_74;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v94 = v6;
    if (v5 + 1 < v4)
    {
      v92 = v4;
      v9 = *a3;
      v95 = v5 + 1;
      v10 = (*a3 + 56 * v8);
      v11 = *v10;
      v12 = v10[1];
      v90 = v7;
      v13 = (*a3 + 56 * v7);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[4];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v101 = v16;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);
      MEMORY[0x1CCA5CD70](v14, v15);

      v17 = 0;
      v18 = (v90 + 2);
      v19 = v9 + 56 * v90 + 88;
      v20 = v95;
      while (1)
      {
        v8 = v18;
        v21 = v20;
        v22 = v17;
        if (v18 >= v92)
        {
          break;
        }

        v101 = v18;
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v25 = *(v19 - 32);
        v26 = *(v19 - 24);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        MEMORY[0x1CCA5CD70](v23, v24);
        MEMORY[0x1CCA5CD70](v25, v26);
        v6 = v94;

        v18 = v101 + 1;
        v19 += 56;
        v20 = v21 + 1;
        v17 = v22 + 56;
      }

      v7 = v90;
    }

    v27 = a3[1];
    if (v8 < v27)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_104;
      }

      if (v8 - v7 < a4)
      {
        v28 = v7 + a4;
        if (__OFADD__(v7, a4))
        {
          goto LABEL_105;
        }

        if (v28 >= v27)
        {
          v28 = a3[1];
        }

        if (v28 < v7)
        {
          goto LABEL_106;
        }

        if (v8 != v28)
        {
          v29 = (*a3 + 56 * v8 - 56);
          v91 = v28;
          v30 = v7 - v8;
          do
          {
            v96 = v8;
            v93 = v30;
            v31 = v29[7];
            v32 = v29[8];
            v33 = v29[1];
            v100 = *v29;
            v34 = v29[4];
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C75504FC();
            v101 = v34;
            sub_1C75504FC();
            MEMORY[0x1CCA5CD70](v31, v32);
            MEMORY[0x1CCA5CD70](v100, v33);

            v8 = v96 + 1;
            v29 += 7;
            v30 = v93 - 1;
          }

          while (v96 + 1 != v91);
          v8 = v91;
          v6 = v94;
        }
      }
    }

    if (v8 < v7)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v78;
    }

    v36 = *(v6 + 2);
    v35 = *(v6 + 3);
    v37 = v36 + 1;
    v97 = v8;
    if (v36 >= v35 >> 1)
    {
      sub_1C6FB17EC(v35 > 1, v36 + 1, 1, v6);
      v6 = v79;
    }

    *(v6 + 2) = v37;
    v38 = v6 + 32;
    v39 = &v6[16 * v36 + 32];
    *v39 = v7;
    *(v39 + 1) = v97;
    v40 = *result;
    if (!*result)
    {
      goto LABEL_110;
    }

    if (v36)
    {
      break;
    }

LABEL_68:
    v5 = v97;
    v4 = a3[1];
    if (v97 >= v4)
    {
      goto LABEL_72;
    }
  }

  while (1)
  {
    v41 = v37 - 1;
    v42 = &v38[16 * v37 - 16];
    v43 = &v6[16 * v37];
    if (v37 >= 4)
    {
      v48 = &v38[16 * v37];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_88;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_89;
      }

      v55 = *(v43 + 1);
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_91;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_94;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = *(v42 + 1);
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_102;
        }

        if (v46 < v72)
        {
          v41 = v37 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_39;
    }

    if (v37 == 3)
    {
      v44 = *(v6 + 4);
      v45 = *(v6 + 5);
      v54 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      v47 = v54;
LABEL_39:
      if (v47)
      {
        goto LABEL_90;
      }

      v59 = *v43;
      v58 = *(v43 + 1);
      v60 = __OFSUB__(v58, v59);
      v61 = v58 - v59;
      v62 = v60;
      if (v60)
      {
        goto LABEL_93;
      }

      v63 = *(v42 + 1);
      v64 = v63 - *v42;
      if (__OFSUB__(v63, *v42))
      {
        goto LABEL_96;
      }

      if (__OFADD__(v61, v64))
      {
        goto LABEL_98;
      }

      if (v61 + v64 >= v46)
      {
        if (v46 < v64)
        {
          v41 = v37 - 2;
        }

        goto LABEL_61;
      }

      goto LABEL_54;
    }

    if (v37 < 2)
    {
      goto LABEL_92;
    }

    v66 = *v43;
    v65 = *(v43 + 1);
    v54 = __OFSUB__(v65, v66);
    v61 = v65 - v66;
    v62 = v54;
LABEL_54:
    if (v62)
    {
      goto LABEL_95;
    }

    v68 = *v42;
    v67 = *(v42 + 1);
    v54 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v54)
    {
      goto LABEL_97;
    }

    if (v69 < v61)
    {
      goto LABEL_68;
    }

LABEL_61:
    if (v41 - 1 >= v37)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
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
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    if (!*a3)
    {
      break;
    }

    v73 = &v38[16 * v41 - 16];
    v74 = *v73;
    v75 = &v38[16 * v41];
    v76 = *(v75 + 1);
    sub_1C70235E8((*a3 + 56 * *v73), (*a3 + 56 * *v75), *a3 + 56 * v76, v40);
    if (v99)
    {
      goto LABEL_82;
    }

    if (v76 < v74)
    {
      goto LABEL_85;
    }

    v77 = *(v6 + 2);
    if (v41 > v77)
    {
      goto LABEL_86;
    }

    *v73 = v74;
    *(v73 + 1) = v76;
    if (v41 >= v77)
    {
      goto LABEL_87;
    }

    v99 = 0;
    v37 = v77 - 1;
    sub_1C7423CF4(v75 + 16, v77 - 1 - v41, &v38[16 * v41]);
    *(v6 + 2) = v77 - 1;
    if (v77 <= 2)
    {
      goto LABEL_68;
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
}

void sub_1C701CE48(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v103 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v102 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 56 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 56 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = (v9 + 56 * v8 + 120);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 8) && *v16 == *(v16 - 7))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v16 += 7;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 56 * v6 - 24;
          v19 = 56 * v8 + 48;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 48);
              v25 = (v22 + v18);
              v26 = *(v23 - 4);
              v27 = *(v23 - 24);
              v28 = *(v23 - 2);
              v29 = *(v23 - 1);
              v30 = *v23;
              v32 = *(v25 - 1);
              v31 = *v25;
              v33 = *(v25 - 2);
              *v23 = *(v25 + 2);
              *(v23 - 2) = v32;
              *(v23 - 1) = v31;
              *(v23 - 3) = v33;
              *(v25 - 2) = v24;
              *(v25 - 2) = v26;
              *(v25 - 8) = v27;
              *v25 = v28;
              *(v25 + 1) = v29;
              *(v25 + 16) = v30;
            }

            ++v21;
            v18 -= 56;
            v19 += 56;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v34 = a3[1];
      if (v6 < v34)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v8 + a4;
          }

          if (v35 < v8)
          {
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
            return;
          }

          if (v6 != v35)
          {
            v36 = *a3;
            v37 = *a3 + 56 * v6 - 56;
            v99 = v8;
            v38 = v8 - v6;
            do
            {
              v39 = v38;
              v40 = v37;
              do
              {
                v41 = v40 + 56;
                v42 = *(v40 + 56) == *v40 && *(v40 + 64) == *(v40 + 8);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_125;
                }

                v43 = *(v40 + 56);
                v44 = *(v40 + 72);
                v45 = *(v40 + 80);
                v46 = *(v40 + 88);
                v47 = *(v40 + 96);
                v48 = *(v40 + 104);
                v49 = *(v40 + 16);
                *v41 = *v40;
                *(v40 + 72) = v49;
                *(v40 + 88) = *(v40 + 32);
                v50 = *(v40 + 48);
                *v40 = v43;
                *(v40 + 16) = v44;
                *(v40 + 24) = v45;
                *(v40 + 32) = v46;
                *(v40 + 40) = v47;
                *(v40 + 48) = v48;
                v40 -= 56;
                *(v41 + 48) = v50;
              }

              while (!__CFADD__(v39++, 1));
              ++v6;
              v37 += 56;
              --v38;
            }

            while (v6 != v35);
            v6 = v35;
            v8 = v99;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v95;
      }

      v53 = v7[2];
      v52 = v7[3];
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        sub_1C6FB17EC(v52 > 1, v53 + 1, 1, v7);
        v7 = v96;
      }

      v7[2] = v54;
      v55 = v7 + 4;
      v56 = &v7[2 * v53 + 4];
      *v56 = v8;
      v56[1] = v6;
      v100 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v53)
      {
        while (1)
        {
          v57 = v54 - 1;
          v58 = &v55[2 * v54 - 2];
          v59 = &v7[2 * v54];
          if (v54 >= 4)
          {
            break;
          }

          if (v54 == 3)
          {
            v60 = v7[4];
            v61 = v7[5];
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_69:
            if (v63)
            {
              goto LABEL_110;
            }

            v75 = *v59;
            v74 = v59[1];
            v76 = __OFSUB__(v74, v75);
            v77 = v74 - v75;
            v78 = v76;
            if (v76)
            {
              goto LABEL_113;
            }

            v79 = v58[1];
            v80 = v79 - *v58;
            if (__OFSUB__(v79, *v58))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v77, v80))
            {
              goto LABEL_118;
            }

            if (v77 + v80 >= v62)
            {
              if (v62 < v80)
              {
                v57 = v54 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v54 < 2)
          {
            goto LABEL_112;
          }

          v82 = *v59;
          v81 = v59[1];
          v70 = __OFSUB__(v81, v82);
          v77 = v81 - v82;
          v78 = v70;
LABEL_84:
          if (v78)
          {
            goto LABEL_115;
          }

          v84 = *v58;
          v83 = v58[1];
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_117;
          }

          if (v85 < v77)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v57 - 1 >= v54)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v89 = v7;
          v90 = &v55[2 * v57 - 2];
          v91 = *v90;
          v92 = &v55[2 * v57];
          v93 = v92[1];
          sub_1C7023A70((*a3 + 56 * *v90), (*a3 + 56 * *v92), *a3 + 56 * v93, v100);
          if (v102)
          {
            goto LABEL_103;
          }

          if (v93 < v91)
          {
            goto LABEL_105;
          }

          v94 = v89[2];
          if (v57 > v94)
          {
            goto LABEL_106;
          }

          *v90 = v91;
          v90[1] = v93;
          if (v57 >= v94)
          {
            goto LABEL_107;
          }

          v54 = v94 - 1;
          memmove(&v55[2 * v57], v92 + 2, 16 * (v94 - 1 - v57));
          v7 = v89;
          v89[2] = v94 - 1;
          if (v94 <= 2)
          {
            goto LABEL_98;
          }
        }

        v64 = &v55[2 * v54];
        v65 = *(v64 - 8);
        v66 = *(v64 - 7);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_108;
        }

        v69 = *(v64 - 6);
        v68 = *(v64 - 5);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_109;
        }

        v71 = v59[1];
        v72 = v71 - *v59;
        if (__OFSUB__(v71, *v59))
        {
          goto LABEL_111;
        }

        v70 = __OFADD__(v62, v72);
        v73 = v62 + v72;
        if (v70)
        {
          goto LABEL_114;
        }

        if (v73 >= v67)
        {
          v87 = *v58;
          v86 = v58[1];
          v70 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v70)
          {
            goto LABEL_119;
          }

          if (v62 < v88)
          {
            v57 = v54 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v103 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C7022168(&v103, *result, a3);
LABEL_103:
}

void sub_1C701D3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void (*a22)(int64_t, int64_t, int64_t, int64_t))
{
  OUTLINED_FUNCTION_124();
  v174 = v24;
  v175 = v25;
  v27 = v26;
  v166 = v22;
  v29 = v28;
  v31 = v30;
  v153 = v32;
  v160 = a22;
  v172 = v33(0);
  OUTLINED_FUNCTION_3_0();
  v163 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  v171 = v37;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v149 - v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_130();
  v168 = v43;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v167 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_165(v48);
  v165 = v31;
  v49 = v31[1];
  if (v49 < 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_103:
    OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_555(v138);
    if (!v139)
    {
      goto LABEL_144;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v166;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v141 = v51 + 16;
      v142 = *(v51 + 2);
      while (v142 >= 2)
      {
        if (!*v165)
        {
          goto LABEL_141;
        }

        v143 = v51;
        v144 = &v51[16 * v142];
        v145 = *v144;
        v146 = &v141[2 * v142];
        v147 = *(v146 + 1);
        v160(*v165 + *(v163 + 72) * *v144, *v165 + *(v163 + 72) * *v146, *v165 + *(v163 + 72) * v147, a10);
        if (v27)
        {
          break;
        }

        if (v147 < v145)
        {
          goto LABEL_129;
        }

        if (v142 - 2 >= *v141)
        {
          goto LABEL_130;
        }

        *v144 = v145;
        *(v144 + 1) = v147;
        v148 = *v141 - v142;
        if (*v141 < v142)
        {
          goto LABEL_131;
        }

        v142 = *v141 - 1;
        sub_1C7423CF4(v146 + 16, v148, v146);
        *v141 = v142;
        v51 = v143;
      }

LABEL_113:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_138:
    v51 = sub_1C7420830();
    goto LABEL_105;
  }

  v149 = v29;
  v50 = 0;
  v173 = a21;
  v51 = MEMORY[0x1E69E7CC0];
  v176 = v40;
  v161 = v23;
  v157 = v27;
  while (1)
  {
    v52 = v50;
    v53 = v50 + 1;
    if (v50 + 1 < v49)
    {
      v158 = v49;
      v54 = *v165;
      v55 = *(v163 + 72);
      v162 = v50 + 1;
      v56 = v151;
      sub_1C702659C();
      v154 = v52;
      v164 = v55;
      v57 = v152;
      sub_1C702659C();
      v59 = v174;
      v58 = v175;
      v177 = v174;
      v178 = v175;
      MEMORY[0x1CCA5CD70](*v56, v56[1]);
      v61 = v177;
      v60 = v178;
      v177 = v59;
      v178 = v58;
      MEMORY[0x1CCA5CD70](*v57, v57[1]);
      if (v61 == v177 && v60 == v178)
      {
        LODWORD(v159) = 0;
      }

      else
      {
        LODWORD(v159) = OUTLINED_FUNCTION_385(v61, v60, v177);
      }

      v150 = v51;

      OUTLINED_FUNCTION_192();
      sub_1C70265F0();
      sub_1C70265F0();
      OUTLINED_FUNCTION_147_0();
      v64 = v63 + 2;
      v65 = v164 * v64;
      v66 = v54 + v164 * v64;
      v23 = v161;
      v67 = v162;
      v68 = (v164 * v162);
      v52 = v54 + v164 * v162;
      do
      {
        v69 = v64;
        v70 = v67;
        v51 = v68;
        v71 = v65;
        if (v64 >= v158)
        {
          break;
        }

        a10 = v67;
        v169 = v65;
        v170 = v64;
        v72 = v167;
        sub_1C702659C();
        v73 = v168;
        sub_1C702659C();
        v74 = v174;
        v75 = v175;
        v177 = v174;
        v178 = v175;
        MEMORY[0x1CCA5CD70](*v72, v72[1]);
        v77 = v177;
        v76 = v178;
        v177 = v74;
        v178 = v75;
        MEMORY[0x1CCA5CD70](*v73, v73[1]);
        v78 = v77 == v177 && v76 == v178;
        v79 = v78 ? 0 : OUTLINED_FUNCTION_385(v77, v76, v177);
        v69 = v170;

        v27 = v157;
        sub_1C70265F0();
        sub_1C70265F0();
        v80 = v159 ^ v79;
        v64 = v69 + 1;
        v66 += v164;
        v52 += v164;
        v70 = a10;
        v67 = a10 + 1;
        v68 = &v51[v164];
        v71 = v169;
        v65 = v169 + v164;
        v23 = v161;
      }

      while ((v80 & 1) == 0);
      if (v159)
      {
        v52 = v154;
        if (v69 < v154)
        {
          goto LABEL_135;
        }

        if (v154 >= v69)
        {
          v53 = v69;
          v51 = v150;
          goto LABEL_37;
        }

        v81 = (v154 * v164);
        do
        {
          if (v52 != v70)
          {
            a10 = v70;
            v82 = *v165;
            if (!*v165)
            {
              goto LABEL_142;
            }

            sub_1C70267FC();
            v83 = v81 < v51 || &v81[v82] >= v82 + v71;
            if (v83)
            {
              OUTLINED_FUNCTION_561();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v81 != v51)
            {
              OUTLINED_FUNCTION_561();
              swift_arrayInitWithTakeBackToFront();
            }

            OUTLINED_FUNCTION_127_2();
            sub_1C70267FC();
            v23 = v161;
            v70 = a10;
          }

          ++v52;
          v51 -= v164;
          v71 -= v164;
          v81 += v164;
          v84 = v52 < v70--;
        }

        while (v84);
      }

      v53 = v69;
      OUTLINED_FUNCTION_536();
    }

LABEL_37:
    v85 = v165[1];
    if (v53 < v85)
    {
      if (__OFSUB__(v53, v52))
      {
        goto LABEL_134;
      }

      if ((v53 - v52) < v149)
      {
        break;
      }
    }

LABEL_58:
    if (v53 < v52)
    {
      goto LABEL_133;
    }

    v101 = swift_isUniquelyReferenced_nonNull_native();
    v162 = v53;
    if ((v101 & 1) == 0)
    {
      v130 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB17EC(v130, v131, v132, v51);
      v51 = v133;
    }

    v102 = *(v51 + 2);
    OUTLINED_FUNCTION_236();
    if (v83)
    {
      OUTLINED_FUNCTION_143_0();
      sub_1C6FB17EC(v134, v135, v136, v51);
      v51 = v137;
    }

    *(v51 + 2) = v53;
    v103 = v51 + 32;
    v104 = &v51[16 * v102 + 32];
    v105 = v162;
    *v104 = v52;
    *(v104 + 1) = v105;
    OUTLINED_FUNCTION_333();
    OUTLINED_FUNCTION_555(v106);
    if (!v107)
    {
      goto LABEL_143;
    }

    if (v102)
    {
      while (1)
      {
        v108 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          OUTLINED_FUNCTION_553();
LABEL_73:
          if (v109)
          {
            goto LABEL_120;
          }

          OUTLINED_FUNCTION_548();
          if (v110)
          {
            goto LABEL_123;
          }

          OUTLINED_FUNCTION_546();
          if (v110)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v115, v118))
          {
            goto LABEL_128;
          }

          if (v115 + v118 >= v116)
          {
            if (v116 < v118)
            {
              v108 = v53 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v53 < 2)
        {
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_545();
        v117 = v110;
LABEL_85:
        if (v117)
        {
          goto LABEL_125;
        }

        OUTLINED_FUNCTION_544();
        if (v110)
        {
          goto LABEL_127;
        }

        if (v119 < v120)
        {
          goto LABEL_99;
        }

LABEL_92:
        if (v108 - 1 >= v53)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*v165)
        {
          goto LABEL_140;
        }

        v123 = &v103[16 * v108 - 16];
        v124 = *v123;
        v125 = &v103[16 * v108];
        v126 = *(v125 + 1);
        v127 = v166;
        v160(*v165 + *(v163 + 72) * *v123, *v165 + *(v163 + 72) * *v125, *v165 + *(v163 + 72) * v126, a10);
        v166 = v127;
        if (v127)
        {
          goto LABEL_113;
        }

        if (v126 < v124)
        {
          goto LABEL_115;
        }

        v128 = v51;
        v129 = *(v51 + 2);
        if (v108 > v129)
        {
          goto LABEL_116;
        }

        *v123 = v124;
        *(v123 + 1) = v126;
        if (v108 >= v129)
        {
          goto LABEL_117;
        }

        v53 = v129 - 1;
        sub_1C7423CF4(v125 + 16, v129 - 1 - v108, &v103[16 * v108]);
        *(v128 + 2) = v129 - 1;
        v84 = v129 > 2;
        v51 = v128;
        if (!v84)
        {
          goto LABEL_99;
        }
      }

      OUTLINED_FUNCTION_551();
      if (v110)
      {
        goto LABEL_118;
      }

      OUTLINED_FUNCTION_550();
      if (v110)
      {
        goto LABEL_119;
      }

      OUTLINED_FUNCTION_549();
      if (v110)
      {
        goto LABEL_121;
      }

      v110 = __OFADD__(v111, v113);
      v114 = v111 + v113;
      if (v110)
      {
        goto LABEL_124;
      }

      if (v114 >= v112)
      {
        OUTLINED_FUNCTION_543();
        if (v110)
        {
          goto LABEL_132;
        }

        if (v122 < v121)
        {
          v108 = v53 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_73;
    }

LABEL_99:
    v49 = v165[1];
    v23 = v161;
    v50 = v162;
    if (v162 >= v49)
    {
      goto LABEL_103;
    }
  }

  v86 = v52 + v149;
  if (__OFADD__(v52, v149))
  {
    goto LABEL_136;
  }

  if (v86 >= v85)
  {
    v86 = v165[1];
  }

  if (v86 < v52)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v53 == v86)
  {
    goto LABEL_58;
  }

  v150 = v51;
  v87 = *v165;
  v88 = *(v163 + 72);
  v89 = *v165 + v88 * (v53 - 1);
  v169 = -v88;
  v154 = v52;
  v90 = v52 - v53;
  v170 = v87;
  v155 = v88;
  v91 = v87 + v53 * v88;
  v156 = v86;
LABEL_46:
  v162 = v53;
  v158 = v91;
  v159 = v90;
  v92 = v91;
  v93 = v90;
  v164 = v89;
  v52 = v89;
  while (1)
  {
    a10 = v93;
    sub_1C702659C();
    OUTLINED_FUNCTION_15_1();
    sub_1C702659C();
    v94 = v174;
    v51 = v27;
    v95 = v175;
    v177 = v174;
    v178 = v175;
    MEMORY[0x1CCA5CD70](*v23, v23[1]);
    v96 = v23;
    v98 = v177;
    v97 = v178;
    v177 = v94;
    v178 = v95;
    MEMORY[0x1CCA5CD70](*v176, v176[1]);
    if (v98 == v177 && v97 == v178)
    {

      OUTLINED_FUNCTION_249();
      sub_1C70265F0();
      sub_1C70265F0();
      v27 = v51;
      v23 = v96;
LABEL_56:
      v53 = v162 + 1;
      v89 = v164 + v155;
      v90 = v159 - 1;
      v91 = v158 + v155;
      if (v162 + 1 == v156)
      {
        v53 = v156;
        OUTLINED_FUNCTION_536();
        goto LABEL_58;
      }

      goto LABEL_46;
    }

    v100 = OUTLINED_FUNCTION_385(v98, v97, v177);

    OUTLINED_FUNCTION_249();
    sub_1C70265F0();
    sub_1C70265F0();
    v27 = v51;
    v23 = v96;
    if ((v100 & 1) == 0)
    {
      goto LABEL_56;
    }

    if (!v170)
    {
      break;
    }

    sub_1C70267FC();
    OUTLINED_FUNCTION_457();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C70267FC();
    v52 += v169;
    v92 += v169;
    v93 = a10 + 1;
    if (a10 == -1)
    {
      goto LABEL_56;
    }
  }

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
}

void sub_1C701DDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_124();
  v160 = v24;
  v26 = v25;
  v157 = v22;
  v28 = v27;
  v141 = v29;
  v148 = a22;
  v149 = v30;
  v147 = a21;
  v159 = v31(0);
  OUTLINED_FUNCTION_3_0();
  v150 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  v144 = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  v158 = v36;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v136 - v39);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_130();
  v155 = v42;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_130();
  v154 = v44;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_130();
  v140 = v46;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v48);
  v152 = v28;
  if (v28[1] < 1)
  {
    v51 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v23 = *v141;
    if (!*v141)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v128 = v51 + 16;
      v129 = *(v51 + 2);
      for (i = v51; v129 >= 2; v51 = i)
      {
        if (!*v152)
        {
          goto LABEL_145;
        }

        v130 = &v51[16 * v129];
        v131 = *v130;
        v132 = &v128[2 * v129];
        v133 = *(v132 + 1);
        v134 = v157;
        sub_1C7024200(*v152 + *(v150 + 72) * *v130, *v152 + *(v150 + 72) * *v132, *v152 + *(v150 + 72) * v133, v23, v149, v147, v26, v148, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
        v157 = v134;
        if (v134)
        {
          break;
        }

        if (v133 < v131)
        {
          goto LABEL_133;
        }

        if (v129 - 2 >= *v128)
        {
          goto LABEL_134;
        }

        *v130 = v131;
        *(v130 + 1) = v133;
        v135 = *v128 - v129;
        if (*v128 < v129)
        {
          goto LABEL_135;
        }

        v129 = *v128 - 1;
        sub_1C7423CF4(v132 + 16, v135, v132);
        *v128 = v129;
      }

LABEL_117:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_142:
    v51 = sub_1C7420830();
    goto LABEL_109;
  }

  OUTLINED_FUNCTION_353();
  v50 = 0;
  v51 = MEMORY[0x1E69E7CC0];
  v161 = v23;
  while (1)
  {
    v52 = v50;
    v53 = v50 + 1;
    if (v50 + 1 < v49)
    {
      v145 = v49;
      v54 = *v152;
      v55 = *(v150 + 72);
      sub_1C702659C();
      v151 = v55;
      OUTLINED_FUNCTION_362();
      sub_1C702659C();
      OUTLINED_FUNCTION_441();
      v58 = v58 && v56 == v57;
      v23 = v53;
      if (v58)
      {
        LODWORD(v146) = 0;
      }

      else
      {
        LODWORD(v146) = sub_1C7551DBC();
      }

      i = v51;
      sub_1C70265F0();
      sub_1C70265F0();
      v138 = v52;
      v59 = v52 + 2;
      v60 = v151 * (v52 + 2);
      v61 = v54 + v60;
      v62 = v151 * v23;
      v63 = v54 + v151 * v23;
      do
      {
        v64 = v59;
        v65 = v23;
        v66 = v62;
        v67 = v60;
        v153 = v59;
        if (v59 >= v145)
        {
          break;
        }

        v68 = v154;
        sub_1C702659C();
        v69 = v155;
        sub_1C702659C();
        v70 = *v68 == *v69 && v68[1] == v69[1];
        v71 = v70 ? 0 : sub_1C7551DBC();
        sub_1C70265F0();
        sub_1C70265F0();
        v64 = v153;
        v59 = v153 + 1;
        v61 += v151;
        v63 += v151;
        v23 = v65 + 1;
        v62 = v66 + v151;
        v60 = v67 + v151;
      }

      while (((v146 ^ v71) & 1) == 0);
      if (v146)
      {
        OUTLINED_FUNCTION_135_1();
        if (v73 < v72)
        {
          goto LABEL_139;
        }

        if (v72 >= v73)
        {
          v53 = v73;
          v51 = i;
          v23 = v161;
          v52 = v72;
          goto LABEL_39;
        }

        v74 = v72 * v151;
        v75 = v72;
        do
        {
          if (v75 != v65)
          {
            v76 = *v152;
            if (!*v152)
            {
              goto LABEL_146;
            }

            sub_1C70267FC();
            v77 = v74 < v66 || v76 + v74 >= (v76 + v67);
            if (v77)
            {
              OUTLINED_FUNCTION_225();
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != v66)
            {
              OUTLINED_FUNCTION_225();
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C70267FC();
          }

          ++v75;
          v66 -= v151;
          v67 -= v151;
          v74 += v151;
          v78 = v75 < v65--;
        }

        while (v78);
        v53 = v153;
      }

      else
      {
        v53 = v64;
      }

      v51 = i;
      v23 = v161;
      v52 = v138;
    }

LABEL_39:
    v79 = v152[1];
    v153 = v53;
    if (v53 < v79)
    {
      if (__OFSUB__(v53, v52))
      {
        goto LABEL_138;
      }

      if (v53 - v52 < v137)
      {
        break;
      }
    }

LABEL_62:
    if (v153 < v52)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v118 = OUTLINED_FUNCTION_13_13();
      sub_1C6FB17EC(v118, v119, v120, v121);
      v51 = v122;
    }

    v90 = *(v51 + 2);
    v91 = v90 + 1;
    if (v90 >= *(v51 + 3) >> 1)
    {
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB17EC(v123, v124, v125, v126);
      v51 = v127;
    }

    *(v51 + 2) = v91;
    v92 = v51 + 32;
    v93 = &v51[16 * v90 + 32];
    v94 = v153;
    *v93 = v52;
    v93[1] = v94;
    v151 = *v141;
    if (!v151)
    {
      goto LABEL_147;
    }

    if (v90)
    {
      i = v51;
      while (v91 < 4)
      {
        if (v91 == 3)
        {
          OUTLINED_FUNCTION_553();
LABEL_78:
          if (v95)
          {
            goto LABEL_124;
          }

          OUTLINED_FUNCTION_548();
          if (v96)
          {
            goto LABEL_127;
          }

          OUTLINED_FUNCTION_546();
          if (v96)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v101, v104))
          {
            goto LABEL_132;
          }

          if (v101 + v104 >= v102)
          {
            if (v102 < v104)
            {
              v105 = v91 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        if (v91 < 2)
        {
          goto LABEL_126;
        }

        OUTLINED_FUNCTION_545();
        v103 = v96;
LABEL_90:
        if (v103)
        {
          goto LABEL_129;
        }

        OUTLINED_FUNCTION_544();
        if (v96)
        {
          goto LABEL_131;
        }

        if (v106 < v107)
        {
          goto LABEL_104;
        }

LABEL_97:
        if (v105 - 1 >= v91)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v152)
        {
          goto LABEL_144;
        }

        v110 = &v92[16 * v105 - 16];
        v111 = *v110;
        v23 = v105;
        v112 = &v92[16 * v105];
        v113 = *(v112 + 1);
        v114 = v157;
        sub_1C7024200(*v152 + *(v150 + 72) * *v110, *v152 + *(v150 + 72) * *v112, *v152 + *(v150 + 72) * v113, v151, v149, v147, v26, v148, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147);
        v157 = v114;
        if (v114)
        {
          goto LABEL_117;
        }

        if (v113 < v111)
        {
          goto LABEL_119;
        }

        v115 = v26;
        v26 = v40;
        v116 = v92;
        v117 = *(i + 2);
        if (v23 > v117)
        {
          goto LABEL_120;
        }

        *v110 = v111;
        *(v110 + 1) = v113;
        if (v23 >= v117)
        {
          goto LABEL_121;
        }

        v91 = v117 - 1;
        sub_1C7423CF4(v112 + 16, v117 - 1 - v23, v112);
        v51 = i;
        *(i + 2) = v117 - 1;
        v78 = v117 > 2;
        v23 = v161;
        v92 = v116;
        v40 = v26;
        v26 = v115;
        if (!v78)
        {
          goto LABEL_104;
        }
      }

      OUTLINED_FUNCTION_551();
      if (v96)
      {
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_550();
      if (v96)
      {
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_549();
      if (v96)
      {
        goto LABEL_125;
      }

      v96 = __OFADD__(v97, v99);
      v100 = v97 + v99;
      if (v96)
      {
        goto LABEL_128;
      }

      if (v100 >= v98)
      {
        OUTLINED_FUNCTION_543();
        if (v96)
        {
          goto LABEL_136;
        }

        if (v109 < v108)
        {
          v105 = v91 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_78;
    }

LABEL_104:
    v50 = v153;
    v49 = v152[1];
    if (v153 >= v49)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v52, v137))
  {
    goto LABEL_140;
  }

  if (v52 + v137 >= v79)
  {
    v80 = v79;
  }

  else
  {
    v80 = v52 + v137;
  }

  if (v80 < v52)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v153 == v80)
  {
    goto LABEL_62;
  }

  i = v51;
  v81 = *v152;
  v82 = *(v150 + 72);
  v83 = *v152 + v82 * (v153 - 1);
  v84 = v52;
  v85 = -v82;
  v138 = v84;
  v86 = v84 - v153;
  v142 = v82;
  v143 = v80;
  v87 = v81 + v153 * v82;
LABEL_49:
  v145 = v87;
  v146 = v86;
  v151 = v83;
  while (1)
  {
    sub_1C702659C();
    OUTLINED_FUNCTION_455();
    sub_1C702659C();
    if (*v40 == *v23 && v40[1] == *(v23 + 8))
    {
      OUTLINED_FUNCTION_497();
      sub_1C70265F0();
      sub_1C70265F0();
LABEL_60:
      v83 = v151 + v142;
      v86 = v146 - 1;
      v87 = v145 + v142;
      if (++v153 == v143)
      {
        v153 = v143;
        v51 = i;
        v52 = v138;
        goto LABEL_62;
      }

      goto LABEL_49;
    }

    v89 = sub_1C7551DBC();
    OUTLINED_FUNCTION_497();
    sub_1C70265F0();
    sub_1C70265F0();
    if ((v89 & 1) == 0)
    {
      goto LABEL_60;
    }

    if (!v81)
    {
      break;
    }

    sub_1C70267FC();
    OUTLINED_FUNCTION_225();
    swift_arrayInitWithTakeFrontToBack();
    sub_1C70267FC();
    v83 += v85;
    v87 += v85;
    v77 = __CFADD__(v86++, 1);
    v23 = v161;
    if (v77)
    {
      goto LABEL_60;
    }
  }

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
}

void sub_1C701E6D8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v147 = *result;
    if (!v147)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_102;
    }

    goto LABEL_136;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v9 = *a3;
      v10 = *a3 + 40 * v8;
      v11 = *(v10 + 8);
      v12 = *(v10 + 16);
      v13 = *(v10 + 24);
      v14 = *(v10 + 25);
      v15 = *(v10 + 32);
      v141 = *v10;
      v142 = v11;
      v143 = v12;
      v144 = v13;
      v145 = v14;
      v146 = v15;
      v16 = v9 + 40 * v5;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v19 = *(v16 + 24);
      v20 = *(v16 + 25);
      v21 = *(v16 + 32);
      v137[0] = *v16;
      v137[1] = v17;
      v137[2] = v18;
      v138 = v19;
      v139 = v20;
      v140 = v21;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v128 = sub_1C7017BB4(&v141, v137);
      if (v131)
      {

LABEL_110:

        return;
      }

      v124 = v4;
      v22 = v9 + 40 * v7 + 72;
      v23 = v7 + 2;
      v126 = v6;
      while (1)
      {
        v24 = v23;
        if (v8 + 1 >= v4)
        {
          break;
        }

        v25 = *(v22 + 8);
        v26 = *(v22 + 16);
        v27 = *(v22 - 24);
        v134 = *(v22 - 32);
        v28 = *v22;
        v141 = 0;
        v142 = 0xE000000000000000;
        v147 = v28;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C755180C();

        v141 = 0xD000000000000010;
        v142 = 0x80000001C7599970;
        MEMORY[0x1CCA5CD70](v25, v26);
        v30 = v141;
        v29 = v142;
        v141 = 0;
        v142 = 0xE000000000000000;
        sub_1C755180C();

        v141 = 0xD000000000000010;
        v142 = 0x80000001C7599970;
        MEMORY[0x1CCA5CD70](v134, v27);
        if (v30 == v141 && v29 == v142)
        {
          v32 = 0;
        }

        else
        {
          v32 = sub_1C7551DBC();
        }

        v22 += 40;
        ++v8;
        v23 = v24 + 1;
        v4 = v124;
        v6 = v126;
        if ((v128 ^ v32))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v128)
      {
        if (v8 < v7)
        {
          goto LABEL_135;
        }

        if (v7 < v8)
        {
          if (v4 >= v24)
          {
            v33 = v24;
          }

          else
          {
            v33 = v4;
          }

          v34 = 40 * v33 - 16;
          v35 = 40 * v7 + 32;
          v36 = v8;
          v37 = v7;
          do
          {
            if (v37 != --v36)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v39 = (v38 + v35);
              v40 = *(v38 + v35 - 32);
              v41 = v38 + v34;
              v42 = *(v39 - 2);
              v43 = *(v39 - 8);
              v44 = *(v39 - 7);
              v45 = *v39;
              v46 = *(v41 + 8);
              v47 = *(v41 - 8);
              *(v39 - 2) = *(v41 - 24);
              *(v39 - 1) = v47;
              *v39 = v46;
              *(v41 - 24) = v40;
              *(v41 - 8) = v42;
              *v41 = v43;
              *(v41 + 1) = v44;
              *(v41 + 8) = v45;
            }

            ++v37;
            v34 -= 40;
            v35 += 40;
          }

          while (v37 < v36);
        }
      }
    }

    v48 = a3[1];
    if (v8 < v48)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_132;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_48:
    if (v8 < v7)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v111;
    }

    v69 = *(v6 + 2);
    v68 = *(v6 + 3);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      sub_1C6FB17EC(v68 > 1, v69 + 1, 1, v6);
      v6 = v112;
    }

    *(v6 + 2) = v70;
    v71 = v6 + 32;
    v72 = &v6[16 * v69 + 32];
    *v72 = v7;
    *(v72 + 1) = v8;
    v73 = *result;
    if (!*result)
    {
      goto LABEL_141;
    }

    v133 = v8;
    if (v69)
    {
      while (1)
      {
        v74 = v70 - 1;
        v75 = &v71[16 * v70 - 16];
        v76 = &v6[16 * v70];
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v77 = *(v6 + 4);
          v78 = *(v6 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_68:
          if (v80)
          {
            goto LABEL_118;
          }

          v92 = *v76;
          v91 = *(v76 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_121;
          }

          v96 = *(v75 + 1);
          v97 = v96 - *v75;
          if (__OFSUB__(v96, *v75))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v94, v97))
          {
            goto LABEL_126;
          }

          if (v94 + v97 >= v79)
          {
            if (v79 < v97)
            {
              v74 = v70 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v70 < 2)
        {
          goto LABEL_120;
        }

        v99 = *v76;
        v98 = *(v76 + 1);
        v87 = __OFSUB__(v98, v99);
        v94 = v98 - v99;
        v95 = v87;
LABEL_83:
        if (v95)
        {
          goto LABEL_123;
        }

        v101 = *v75;
        v100 = *(v75 + 1);
        v87 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v87)
        {
          goto LABEL_125;
        }

        if (v102 < v94)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v74 - 1 >= v70)
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
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v106 = &v71[16 * v74 - 16];
        v107 = *v106;
        v108 = &v71[16 * v74];
        v109 = *(v108 + 1);
        sub_1C702466C((*a3 + 40 * *v106), (*a3 + 40 * *v108), *a3 + 40 * v109, v73);
        if (v131)
        {
          goto LABEL_110;
        }

        if (v109 < v107)
        {
          goto LABEL_113;
        }

        v110 = *(v6 + 2);
        if (v74 > v110)
        {
          goto LABEL_114;
        }

        *v106 = v107;
        *(v106 + 1) = v109;
        if (v74 >= v110)
        {
          goto LABEL_115;
        }

        v70 = v110 - 1;
        sub_1C7423CF4(v108 + 16, v110 - 1 - v74, &v71[16 * v74]);
        *(v6 + 2) = v110 - 1;
        if (v110 <= 2)
        {
          goto LABEL_97;
        }
      }

      v81 = &v71[16 * v70];
      v82 = *(v81 - 8);
      v83 = *(v81 - 7);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_116;
      }

      v86 = *(v81 - 6);
      v85 = *(v81 - 5);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_117;
      }

      v88 = *(v76 + 1);
      v89 = v88 - *v76;
      if (__OFSUB__(v88, *v76))
      {
        goto LABEL_119;
      }

      v87 = __OFADD__(v79, v89);
      v90 = v79 + v89;
      if (v87)
      {
        goto LABEL_122;
      }

      if (v90 >= v84)
      {
        v104 = *v75;
        v103 = *(v75 + 1);
        v87 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v87)
        {
          goto LABEL_130;
        }

        if (v79 < v105)
        {
          v74 = v70 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v4 = a3[1];
    v5 = v133;
    if (v133 >= v4)
    {
      goto LABEL_100;
    }
  }

  v49 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_133;
  }

  if (v49 >= v48)
  {
    v49 = a3[1];
  }

  if (v49 < v7)
  {
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    v6 = sub_1C7420830();
LABEL_102:
    v113 = v6 + 16;
    v114 = *(v6 + 2);
    while (v114 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_139;
      }

      v115 = v6;
      v116 = &v6[16 * v114];
      v117 = *v116;
      v118 = &v113[2 * v114];
      v119 = *(v118 + 1);
      sub_1C702466C((*a3 + 40 * *v116), (*a3 + 40 * *v118), *a3 + 40 * v119, v147);
      if (v131)
      {
        break;
      }

      if (v119 < v117)
      {
        goto LABEL_127;
      }

      if (v114 - 2 >= *v113)
      {
        goto LABEL_128;
      }

      *v116 = v117;
      *(v116 + 1) = v119;
      v120 = *v113 - v114;
      if (*v113 < v114)
      {
        goto LABEL_129;
      }

      v114 = *v113 - 1;
      sub_1C7423CF4(v118 + 16, v120, v118);
      *v113 = v114;
      v6 = v115;
    }

    goto LABEL_110;
  }

  if (v8 == v49)
  {
    goto LABEL_48;
  }

  v127 = v6;
  v135 = *a3;
  v50 = *a3 + 40 * v8 - 40;
  v51 = v7 - v8;
  v123 = v49;
LABEL_36:
  v132 = v8;
  v52 = (v135 + 40 * v8);
  v53 = *v52;
  v54 = v52[1];
  v125 = v51;
  v55 = v51;
  v129 = v50;
  v56 = v50;
  while (1)
  {
    v136 = v55;
    v57 = *(v56 + 8);
    v147 = *v56;
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C755180C();

    v141 = 0xD000000000000010;
    v142 = 0x80000001C7599970;
    MEMORY[0x1CCA5CD70](v53, v54);
    v58 = v141;
    v59 = v142;
    v141 = 0;
    v142 = 0xE000000000000000;
    sub_1C755180C();

    v141 = 0xD000000000000010;
    v142 = 0x80000001C7599970;
    MEMORY[0x1CCA5CD70](v147, v57);
    if (v58 == v141 && v59 == v142)
    {

LABEL_46:
      v8 = v132 + 1;
      v50 = v129 + 40;
      v51 = v125 - 1;
      if (v132 + 1 == v123)
      {
        v8 = v123;
        v6 = v127;
        goto LABEL_48;
      }

      goto LABEL_36;
    }

    v61 = sub_1C7551DBC();

    if ((v61 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (!v135)
    {
      break;
    }

    v54 = *(v56 + 48);
    v62 = *(v56 + 56);
    v63 = *(v56 + 16);
    v64 = *(v56 + 32);
    v53 = *(v56 + 40);
    *(v56 + 40) = *v56;
    v65 = *(v56 + 64);
    v66 = *(v56 + 65);
    v67 = *(v56 + 72);
    *(v56 + 56) = v63;
    *(v56 + 72) = v64;
    *v56 = v53;
    *(v56 + 8) = v54;
    *(v56 + 16) = v62;
    *(v56 + 24) = v65;
    *(v56 + 25) = v66;
    *(v56 + 32) = v67;
    v56 -= 40;
    v55 = v136 + 1;
    if (v136 == -1)
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

void sub_1C701F010(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v99 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 40 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 40 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = (v9 + 40 * v8 + 88);
        while (v6 < v5)
        {
          if (*(v16 - 1) == *(v16 - 6) && *v16 == *(v16 - 5))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v16 += 5;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v18 = 40 * v6 - 16;
          v19 = 40 * v8 + 32;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v23 = (v22 + v19);
              v24 = *(v22 + v19 - 32);
              v25 = v22 + v18;
              v26 = *(v23 - 2);
              v27 = *(v23 - 8);
              v28 = *(v23 - 7);
              v29 = *v23;
              v30 = *(v25 + 8);
              v31 = *(v25 - 8);
              *(v23 - 2) = *(v25 - 24);
              *(v23 - 1) = v31;
              *v23 = v30;
              *(v25 - 24) = v24;
              *(v25 - 8) = v26;
              *v25 = v27;
              *(v25 + 1) = v28;
              *(v25 + 8) = v29;
            }

            ++v21;
            v18 -= 40;
            v19 += 40;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v32 = a3[1];
      if (v6 < v32)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v32)
          {
            v33 = a3[1];
          }

          else
          {
            v33 = v8 + a4;
          }

          if (v33 < v8)
          {
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
            return;
          }

          if (v6 != v33)
          {
            v34 = *a3;
            v35 = *a3 + 40 * v6 - 40;
            v36 = v8 - v6;
            do
            {
              v37 = (v34 + 40 * v6);
              v38 = *v37;
              v39 = v37[1];
              v40 = v36;
              v41 = v35;
              do
              {
                v42 = v38 == *v41 && v39 == *(v41 + 8);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v34)
                {
                  goto LABEL_125;
                }

                v39 = *(v41 + 48);
                v43 = *(v41 + 56);
                v44 = *(v41 + 16);
                v45 = *(v41 + 32);
                v38 = *(v41 + 40);
                *(v41 + 40) = *v41;
                v46 = *(v41 + 64);
                v47 = *(v41 + 65);
                v48 = *(v41 + 72);
                *(v41 + 56) = v44;
                *(v41 + 72) = v45;
                *v41 = v38;
                *(v41 + 8) = v39;
                *(v41 + 16) = v43;
                *(v41 + 24) = v46;
                *(v41 + 25) = v47;
                *(v41 + 32) = v48;
                v41 -= 40;
              }

              while (!__CFADD__(v40++, 1));
              ++v6;
              v35 += 40;
              --v36;
            }

            while (v6 != v33);
            v6 = v33;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v93;
      }

      v51 = v7[2];
      v50 = v7[3];
      v52 = v51 + 1;
      if (v51 >= v50 >> 1)
      {
        sub_1C6FB17EC(v50 > 1, v51 + 1, 1, v7);
        v7 = v94;
      }

      v7[2] = v52;
      v53 = v7 + 4;
      v54 = &v7[2 * v51 + 4];
      *v54 = v8;
      v54[1] = v6;
      v97 = *result;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v51)
      {
        while (1)
        {
          v55 = v52 - 1;
          v56 = &v53[2 * v52 - 2];
          v57 = &v7[2 * v52];
          if (v52 >= 4)
          {
            break;
          }

          if (v52 == 3)
          {
            v58 = v7[4];
            v59 = v7[5];
            v68 = __OFSUB__(v59, v58);
            v60 = v59 - v58;
            v61 = v68;
LABEL_69:
            if (v61)
            {
              goto LABEL_110;
            }

            v73 = *v57;
            v72 = v57[1];
            v74 = __OFSUB__(v72, v73);
            v75 = v72 - v73;
            v76 = v74;
            if (v74)
            {
              goto LABEL_113;
            }

            v77 = v56[1];
            v78 = v77 - *v56;
            if (__OFSUB__(v77, *v56))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v75, v78))
            {
              goto LABEL_118;
            }

            if (v75 + v78 >= v60)
            {
              if (v60 < v78)
              {
                v55 = v52 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v52 < 2)
          {
            goto LABEL_112;
          }

          v80 = *v57;
          v79 = v57[1];
          v68 = __OFSUB__(v79, v80);
          v75 = v79 - v80;
          v76 = v68;
LABEL_84:
          if (v76)
          {
            goto LABEL_115;
          }

          v82 = *v56;
          v81 = v56[1];
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_117;
          }

          if (v83 < v75)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v55 - 1 >= v52)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v87 = v7;
          v88 = &v53[2 * v55 - 2];
          v89 = *v88;
          v90 = &v53[2 * v55];
          v91 = v90[1];
          sub_1C70228EC((*a3 + 40 * *v88), (*a3 + 40 * *v90), *a3 + 40 * v91, v97);
          if (v99)
          {
            goto LABEL_103;
          }

          if (v91 < v89)
          {
            goto LABEL_105;
          }

          v92 = v87[2];
          if (v55 > v92)
          {
            goto LABEL_106;
          }

          *v88 = v89;
          v88[1] = v91;
          if (v55 >= v92)
          {
            goto LABEL_107;
          }

          v52 = v92 - 1;
          memmove(&v53[2 * v55], v90 + 2, 16 * (v92 - 1 - v55));
          v7 = v87;
          v87[2] = v92 - 1;
          if (v92 <= 2)
          {
            goto LABEL_98;
          }
        }

        v62 = &v53[2 * v52];
        v63 = *(v62 - 8);
        v64 = *(v62 - 7);
        v68 = __OFSUB__(v64, v63);
        v65 = v64 - v63;
        if (v68)
        {
          goto LABEL_108;
        }

        v67 = *(v62 - 6);
        v66 = *(v62 - 5);
        v68 = __OFSUB__(v66, v67);
        v60 = v66 - v67;
        v61 = v68;
        if (v68)
        {
          goto LABEL_109;
        }

        v69 = v57[1];
        v70 = v69 - *v57;
        if (__OFSUB__(v69, *v57))
        {
          goto LABEL_111;
        }

        v68 = __OFADD__(v60, v70);
        v71 = v60 + v70;
        if (v68)
        {
          goto LABEL_114;
        }

        if (v71 >= v65)
        {
          v85 = *v56;
          v84 = v56[1];
          v68 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v68)
          {
            goto LABEL_119;
          }

          if (v60 < v86)
          {
            v55 = v52 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v100 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C7021F04(&v100, *result, a3);
LABEL_103:
}

void sub_1C701F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  OUTLINED_FUNCTION_124();
  v143 = v13;
  v149 = v14;
  v15 = v14[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_95:
    OUTLINED_FUNCTION_555(v143);
    if (!v132)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v133 = v17;
      v134 = (v17 + 16);
      for (i = *(v17 + 2); i >= 2; *v134 = i)
      {
        if (!*v149)
        {
          goto LABEL_133;
        }

        v136 = &v133[16 * i];
        v137 = *v136;
        v138 = &v134[2 * i];
        v139 = *(v138 + 1);
        sub_1C7024AC8(*v149 + 56 * *v136, *v149 + 56 * *v138, *v149 + 56 * v139, a10);
        if (v10)
        {
          break;
        }

        if (v139 < v137)
        {
          goto LABEL_121;
        }

        if (i - 2 >= *v134)
        {
          goto LABEL_122;
        }

        *v136 = v137;
        *(v136 + 1) = v139;
        v140 = *v134 - i;
        if (*v134 < i)
        {
          goto LABEL_123;
        }

        i = *v134 - 1;
        sub_1C7423CF4(v138 + 16, v140, v138);
      }

LABEL_105:

      OUTLINED_FUNCTION_125();
      return;
    }

LABEL_130:
    v17 = sub_1C7420830();
    goto LABEL_97;
  }

  v141 = v12;
  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v144 = v16;
    if (v16 + 1 < v15)
    {
      v147 = v15;
      v20 = *v149;
      OUTLINED_FUNCTION_260_0(*v149 + 56 * v19);
      OUTLINED_FUNCTION_581(v21);
      v24 = OUTLINED_FUNCTION_260_0(v20 + v23 * v22);
      v169 = v25;
      *(v26 + 144) = v27;
      *(v26 + 160) = v28;
      *(v26 + 128) = v24;
      v30 = v167;
      v29 = v168;
      OUTLINED_FUNCTION_258();
      OUTLINED_FUNCTION_234();
      v159.n128_u64[0] = v11;
      v159.n128_u64[1] = v31;
      sub_1C70260B4(v165, v163);
      sub_1C70260B4(v166, v163);
      v32 = OUTLINED_FUNCTION_323();
      MEMORY[0x1CCA5CD70](v32);
      v33 = v159;
      OUTLINED_FUNCTION_234();
      *&v163[0] = v11;
      *(&v163[0] + 1) = v34;
      MEMORY[0x1CCA5CD70](v30, v29);
      v35 = v33.n128_u64[0] == *&v163[0] && v33.n128_u64[1] == *(&v163[0] + 1);
      v142 = v17;
      if (v35)
      {
        v153 = 0;
      }

      else
      {
        v36 = OUTLINED_FUNCTION_323();
        v153 = OUTLINED_FUNCTION_385(v36, v37, v38);
      }

      sub_1C70260EC(v166);
      sub_1C70260EC(v165);
      v39 = v20 + 56 * v144 + 112;
      a10 = (56 * v144);
      v40 = 56 * v144 + 56;
      do
      {
        v41 = v19;
        v42 = v40;
        v150 = v19 + 1;
        if (v19 + 1 >= v147)
        {
          break;
        }

        v43 = OUTLINED_FUNCTION_272();
        v162 = v44;
        v160 = v45;
        v161 = v46;
        v159 = v43;
        v47 = OUTLINED_FUNCTION_574();
        v164 = v48;
        v163[1] = v49;
        v163[2] = v50;
        v163[0] = v47;
        v51 = v160;
        v11 = v49;
        OUTLINED_FUNCTION_36_5();
        v157 = v52;
        OUTLINED_FUNCTION_234();
        v158 = v53;
        sub_1C70260B4(&v159, &v155);
        sub_1C70260B4(v163, &v155);
        MEMORY[0x1CCA5CD70](v51, *(&v51 + 1));
        v55 = v157;
        v54 = v158;
        OUTLINED_FUNCTION_36_5();
        v155 = v56;
        OUTLINED_FUNCTION_234();
        v156 = v57;
        v58 = OUTLINED_FUNCTION_35_0();
        MEMORY[0x1CCA5CD70](v58);
        v59 = v55 == v155 && v54 == v156;
        v60 = v59 ? 0 : OUTLINED_FUNCTION_385(v55, v54, v155);

        sub_1C70260EC(v163);
        sub_1C70260EC(&v159);
        v39 += 56;
        ++v19;
        v40 = v42 + 56;
      }

      while (((v153 ^ v60) & 1) == 0);
      v17 = v142;
      if ((v153 & 1) == 0)
      {
        v19 = v150;
LABEL_29:
        v18 = v144;
        goto LABEL_30;
      }

      v19 = v150;
      v61 = v144;
      if (v150 < v144)
      {
        goto LABEL_127;
      }

      if (v144 <= v41)
      {
        do
        {
          if (v61 != v41)
          {
            v62 = *v149;
            if (!*v149)
            {
              goto LABEL_134;
            }

            v63 = a10 + v62;
            v64 = *(a10 + v62 + 48);
            v65 = (v62 + v42);
            v67 = *(v63 + 1);
            v66 = *(v63 + 2);
            v68 = *v63;
            v70 = v65[1];
            v69 = v65[2];
            v71 = *v65;
            *(v63 + 6) = *(v65 + 6);
            *(v63 + 1) = v70;
            *(v63 + 2) = v69;
            *v63 = v71;
            *v65 = v68;
            v65[1] = v67;
            v65[2] = v66;
            *(v65 + 6) = v64;
          }

          ++v61;
          v42 -= 56;
          a10 = (a10 + 56);
        }

        while (v61 < v41--);
        goto LABEL_29;
      }

      v18 = v144;
    }

LABEL_30:
    v73 = v149[1];
    if (v19 < v73)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_126;
      }

      if (v19 - v18 < v141)
      {
        break;
      }
    }

LABEL_51:
    if (v19 < v18)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v122 = OUTLINED_FUNCTION_13_13();
      sub_1C6FB17EC(v122, v123, v124, v125);
      v17 = v126;
    }

    v97 = *(v17 + 2);
    v98 = v97 + 1;
    v152 = v19;
    if (v97 >= *(v17 + 3) >> 1)
    {
      OUTLINED_FUNCTION_131_0();
      sub_1C6FB17EC(v127, v128, v129, v130);
      v17 = v131;
    }

    *(v17 + 2) = v98;
    v99 = v17 + 32;
    v100 = &v17[16 * v97 + 32];
    *v100 = v144;
    *(v100 + 1) = v152;
    OUTLINED_FUNCTION_555(v143);
    if (!v101)
    {
      goto LABEL_135;
    }

    if (v97)
    {
      while (1)
      {
        v102 = v98 - 1;
        if (v98 >= 4)
        {
          break;
        }

        if (v98 == 3)
        {
          OUTLINED_FUNCTION_553();
LABEL_66:
          if (v103)
          {
            goto LABEL_112;
          }

          OUTLINED_FUNCTION_548();
          if (v104)
          {
            goto LABEL_115;
          }

          OUTLINED_FUNCTION_546();
          if (v104)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v109, v112))
          {
            goto LABEL_120;
          }

          if (v109 + v112 >= v110)
          {
            if (v110 < v112)
            {
              v102 = v98 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v98 < 2)
        {
          goto LABEL_114;
        }

        OUTLINED_FUNCTION_545();
        v111 = v104;
LABEL_78:
        if (v111)
        {
          goto LABEL_117;
        }

        OUTLINED_FUNCTION_544();
        if (v104)
        {
          goto LABEL_119;
        }

        if (v113 < v114)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v102 - 1 >= v98)
        {
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

        if (!*v149)
        {
          goto LABEL_132;
        }

        v117 = v17;
        v118 = &v99[16 * v102 - 16];
        v11 = *v118;
        v119 = &v99[16 * v102];
        v120 = *(v119 + 1);
        sub_1C7024AC8(*v149 + 56 * *v118, *v149 + 56 * *v119, *v149 + 56 * v120, a10);
        if (v10)
        {
          goto LABEL_105;
        }

        if (v120 < v11)
        {
          goto LABEL_107;
        }

        v121 = *(v117 + 2);
        if (v102 > v121)
        {
          goto LABEL_108;
        }

        *v118 = v11;
        v118[1] = v120;
        if (v102 >= v121)
        {
          goto LABEL_109;
        }

        v98 = v121 - 1;
        sub_1C7423CF4(v119 + 16, v121 - 1 - v102, &v99[16 * v102]);
        v17 = v117;
        *(v117 + 2) = v121 - 1;
        if (v121 <= 2)
        {
          goto LABEL_92;
        }
      }

      OUTLINED_FUNCTION_551();
      if (v104)
      {
        goto LABEL_110;
      }

      OUTLINED_FUNCTION_550();
      if (v104)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_549();
      if (v104)
      {
        goto LABEL_113;
      }

      v104 = __OFADD__(v105, v107);
      v108 = v105 + v107;
      if (v104)
      {
        goto LABEL_116;
      }

      if (v108 >= v106)
      {
        OUTLINED_FUNCTION_543();
        if (v104)
        {
          goto LABEL_124;
        }

        if (v116 < v115)
        {
          v102 = v98 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_66;
    }

LABEL_92:
    v16 = v152;
    v15 = v149[1];
    if (v152 >= v15)
    {
      goto LABEL_95;
    }
  }

  v74 = v18 + v141;
  if (__OFADD__(v18, v141))
  {
    goto LABEL_128;
  }

  if (v74 >= v73)
  {
    v74 = v149[1];
  }

  if (v74 < v18)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v19 == v74)
  {
    goto LABEL_51;
  }

  v154 = *v149;
  v75 = *v149 + 56 * v19;
  v76 = (v18 - v19 + 1);
  v145 = v74;
LABEL_39:
  v151 = v19;
  v146 = v76;
  a10 = v76;
  v148 = v75;
  while (1)
  {
    OUTLINED_FUNCTION_581(*(v75 + 48));
    v77 = *(v75 - 56);
    v78 = *(v75 - 40);
    v79 = *(v75 - 24);
    v169 = *(v75 - 8);
    v80[9] = v78;
    v80[10] = v79;
    v80[8] = v77;
    v81 = v165[2];
    v11 = v165[3];
    v82 = v167;
    v83 = v168;
    OUTLINED_FUNCTION_234();
    v159.n128_u64[0] = 0x6E6F697461636F4CLL;
    v159.n128_u64[1] = v84;
    sub_1C70260B4(v165, v163);
    sub_1C70260B4(v166, v163);
    MEMORY[0x1CCA5CD70](v81, v11);
    v85 = v159;
    OUTLINED_FUNCTION_234();
    *&v163[0] = 0x6E6F697461636F4CLL;
    *(&v163[0] + 1) = v86;
    v87 = MEMORY[0x1CCA5CD70](v82, v83);
    if (v85.n128_u64[0] == *&v163[0] && v85.n128_u64[1] == *(&v163[0] + 1))
    {

      sub_1C70260EC(v166);
      sub_1C70260EC(v165);
LABEL_49:
      v19 = v151 + 1;
      v75 = v148 + 56;
      v76 = (v146 - 1);
      if (v151 + 1 == v145)
      {
        v19 = v145;
        v18 = v144;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v90 = OUTLINED_FUNCTION_342(v87, v88, *&v163[0]);

    sub_1C70260EC(v166);
    sub_1C70260EC(v165);
    if ((v90 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v154)
    {
      break;
    }

    v91 = v75 - 56;
    v92 = *(v75 + 48);
    v94 = *(v75 + 16);
    v93 = *(v75 + 32);
    v95 = *v75;
    v96 = *(v75 - 40);
    *v75 = *(v75 - 56);
    *(v75 + 16) = v96;
    *(v75 + 32) = *(v75 - 24);
    *(v75 + 48) = *(v75 - 8);
    *v91 = v95;
    *(v91 + 16) = v94;
    *(v91 + 32) = v93;
    *(v91 + 48) = v92;
    if (!a10)
    {
      goto LABEL_49;
    }

    a10 = (a10 + 1);
    v75 -= 56;
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
}

void sub_1C701FD8C(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v88 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3;
        v12 = (*a3 + 56 * v10);
        v13 = *v12;
        v14 = v12[1];
        v15 = (*a3 + 56 * v9);
        if (v13 == *v15 && v14 == v15[1])
        {
          v17 = 0;
        }

        else
        {
          v17 = sub_1C7551DBC();
        }

        v10 = v9 + 2;
        v18 = 56 * v9;
        v19 = (v11 + 56 * v9 + 120);
        while (v10 < v6)
        {
          if (*(v19 - 1) == *(v19 - 8) && *v19 == *(v19 - 7))
          {
            if (v17)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v10;
          v19 += 7;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_114;
        }

        if (v9 < v10)
        {
          v21 = 56 * v10 - 56;
          v22 = v10;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_119;
              }

              v25 = (v24 + v18);
              v26 = *(v24 + v18 + 48);
              v27 = (v24 + v21);
              v29 = v25[1];
              v28 = v25[2];
              v30 = *v25;
              v32 = v27[1];
              v31 = v27[2];
              v33 = *v27;
              *(v25 + 6) = *(v27 + 6);
              v25[1] = v32;
              v25[2] = v31;
              *v25 = v33;
              *v27 = v30;
              v27[1] = v29;
              v27[2] = v28;
              *(v27 + 6) = v26;
            }

            ++v23;
            v21 -= 56;
            v18 += 56;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v34 = a3[1];
      if (v10 < v34)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_113;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_115;
          }

          v86 = v5;
          if (v9 + a4 >= v34)
          {
            v35 = a3[1];
          }

          else
          {
            v35 = v9 + a4;
          }

          if (v35 < v9)
          {
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
            return;
          }

          if (v10 != v35)
          {
            v36 = *a3;
            v37 = *a3 + 56 * v10;
            v85 = v9;
            v38 = v9 - v10;
            do
            {
              v39 = v38;
              v40 = v37;
              do
              {
                v41 = v40 - 56;
                v42 = *v40 == *(v40 - 56) && *(v40 + 8) == *(v40 - 48);
                if (v42 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v36)
                {
                  goto LABEL_117;
                }

                v43 = *(v40 + 48);
                v45 = *(v40 + 16);
                v44 = *(v40 + 32);
                v46 = *v40;
                v47 = *(v40 - 40);
                *v40 = *v41;
                *(v40 + 16) = v47;
                *(v40 + 32) = *(v40 - 24);
                *(v40 + 48) = *(v40 - 8);
                *v41 = v46;
                *(v40 - 40) = v45;
                *(v40 - 24) = v44;
                v40 -= 56;
                *(v41 + 48) = v43;
              }

              while (!__CFADD__(v39++, 1));
              ++v10;
              v37 += 56;
              --v38;
            }

            while (v10 != v35);
            v10 = v35;
            v9 = v85;
          }

          v5 = v86;
        }
      }

      if (v10 < v9)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v75, v76, v77, v8);
        v8 = v78;
      }

      v49 = *(v8 + 16);
      v50 = v49 + 1;
      if (v49 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_137_0();
        sub_1C6FB17EC(v79, v80, v81, v8);
        v8 = v82;
      }

      *(v8 + 16) = v50;
      v51 = v8 + 32;
      v52 = (v8 + 32 + 16 * v49);
      *v52 = v9;
      v52[1] = v10;
      if (!*result)
      {
        goto LABEL_120;
      }

      if (v49)
      {
        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            OUTLINED_FUNCTION_553();
LABEL_65:
            if (v54)
            {
              goto LABEL_102;
            }

            OUTLINED_FUNCTION_548();
            if (v55)
            {
              goto LABEL_105;
            }

            OUTLINED_FUNCTION_546();
            if (v55)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_110;
            }

            if (v60 + v63 >= v61)
            {
              if (v61 < v63)
              {
                v53 = v50 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v50 < 2)
          {
            goto LABEL_104;
          }

          OUTLINED_FUNCTION_545();
          v62 = v55;
LABEL_77:
          if (v62)
          {
            goto LABEL_107;
          }

          OUTLINED_FUNCTION_544();
          if (v55)
          {
            goto LABEL_109;
          }

          if (v64 < v65)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v53 - 1 >= v50)
          {
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
LABEL_102:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v68 = (v51 + 16 * (v53 - 1));
          v69 = *v68;
          v70 = v51 + 16 * v53;
          v71 = *(v70 + 8);
          sub_1C7024E74();
          if (v5)
          {
            goto LABEL_95;
          }

          if (v71 < v69)
          {
            goto LABEL_97;
          }

          v72 = v8;
          v73 = *(v8 + 16);
          if (v53 > v73)
          {
            goto LABEL_98;
          }

          *v68 = v69;
          v68[1] = v71;
          if (v53 >= v73)
          {
            goto LABEL_99;
          }

          v50 = v73 - 1;
          memmove((v51 + 16 * v53), (v70 + 16), 16 * (v73 - 1 - v53));
          *(v72 + 16) = v73 - 1;
          v74 = v73 > 2;
          v8 = v72;
          v5 = 0;
          if (!v74)
          {
            goto LABEL_91;
          }
        }

        OUTLINED_FUNCTION_551();
        if (v55)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_550();
        if (v55)
        {
          goto LABEL_101;
        }

        OUTLINED_FUNCTION_549();
        if (v55)
        {
          goto LABEL_103;
        }

        v55 = __OFADD__(v56, v58);
        v59 = v56 + v58;
        if (v55)
        {
          goto LABEL_106;
        }

        if (v59 >= v57)
        {
          OUTLINED_FUNCTION_543();
          if (v55)
          {
            goto LABEL_111;
          }

          if (v67 < v66)
          {
            v53 = v50 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_65;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v10;
      if (v10 >= v6)
      {
        v88 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_121;
  }

  sub_1C70222A0(&v88, *result, a3);
LABEL_95:
}

void sub_1C70202C4(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v125 = *result;
    if (!v125)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v92 = v6 + 16;
      v93 = *(v6 + 2);
      while (v93 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_141;
        }

        v94 = v6;
        v95 = &v6[16 * v93];
        v96 = *v95;
        v97 = &v92[2 * v93];
        v98 = *(v97 + 1);
        sub_1C702501C((*a3 + 72 * *v95), (*a3 + 72 * *v97), (*a3 + 72 * v98), v125);
        if (v114)
        {
          break;
        }

        if (v98 < v96)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        v99 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        sub_1C7423CF4(v97 + 16, v99, v97);
        *v92 = v93;
        v6 = v94;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v6 = sub_1C7420830();
    goto LABEL_105;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      v17 = v5 + 1;
    }

    else
    {
      v115 = v4;
      v101 = v6;
      v9 = *a3;
      memcpy(__dst, (*a3 + 72 * v8), 0x42uLL);
      v104 = v7;
      memcpy(v124, (v9 + 72 * v7), 0x42uLL);
      v10 = __dst[4];
      v11 = __dst[5];
      v13 = v124[4];
      v12 = v124[5];
      v121[0] = 980706640;
      v121[1] = 0xE400000000000000;
      sub_1C7025FF8(__dst, __src);
      sub_1C7025FF8(v124, __src);
      MEMORY[0x1CCA5CD70](v10, v11);
      v14 = v121[0];
      v15 = v121[1];
      __src[0] = 980706640;
      __src[1] = 0xE400000000000000;
      MEMORY[0x1CCA5CD70](v13, v12);
      v16 = v14 == __src[0] && v15 == __src[1];
      LODWORD(v125) = v16 ? 0 : sub_1C7551DBC();

      sub_1C7026030(v124);
      sub_1C7026030(__dst);
      v18 = (v9 + 72 * v7 + 144);
      v108 = 72 * v7;
      v19 = 72 * v7 + 72;
      do
      {
        v20 = v8;
        v21 = v19;
        v111 = v8 + 1;
        if (v8 + 1 >= v115)
        {
          break;
        }

        memcpy(v121, v18, 0x42uLL);
        memcpy(__src, v18 - 72, 0x42uLL);
        v22 = v121[4];
        v23 = v121[5];
        v24 = __src[4];
        v25 = __src[5];
        v119 = 980706640;
        v120 = 0xE400000000000000;
        sub_1C7025FF8(v121, &v117);
        sub_1C7025FF8(__src, &v117);
        MEMORY[0x1CCA5CD70](v22, v23);
        v26 = v119;
        v27 = v120;
        v117 = 980706640;
        v118 = 0xE400000000000000;
        MEMORY[0x1CCA5CD70](v24, v25);
        v28 = v26 == v117 && v27 == v118;
        v29 = v28 ? 0 : sub_1C7551DBC();

        sub_1C7026030(__src);
        sub_1C7026030(v121);
        v18 += 72;
        v8 = v20 + 1;
        v19 = v21 + 72;
      }

      while (((v125 ^ v29) & 1) == 0);
      if (v125)
      {
        v7 = v104;
        v6 = v101;
        if (v111 < v104)
        {
          goto LABEL_135;
        }

        if (v104 <= v20)
        {
          v30 = v104;
          v31 = v108;
          do
          {
            if (v30 != v20)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              memcpy(__src, (v32 + v31), 0x42uLL);
              memmove((v32 + v31), (v32 + v21), 0x48uLL);
              memcpy((v32 + v21), __src, 0x42uLL);
            }

            ++v30;
            v21 -= 72;
            v31 += 72;
          }

          while (v30 < v20--);
        }

        v17 = v111;
      }

      else
      {
        v6 = v101;
        v17 = v111;
        v7 = v104;
      }
    }

    v34 = a3[1];
    if (v17 < v34)
    {
      if (__OFSUB__(v17, v7))
      {
        goto LABEL_134;
      }

      if (v17 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v17 < v7)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v90;
    }

    v48 = *(v6 + 2);
    v47 = *(v6 + 3);
    v49 = v48 + 1;
    v113 = v17;
    if (v48 >= v47 >> 1)
    {
      sub_1C6FB17EC(v47 > 1, v48 + 1, 1, v6);
      v6 = v91;
    }

    *(v6 + 2) = v49;
    v50 = v6 + 32;
    v51 = &v6[16 * v48 + 32];
    *v51 = v7;
    *(v51 + 1) = v113;
    v125 = *result;
    if (!v125)
    {
      goto LABEL_143;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = &v50[16 * v49 - 16];
        v54 = &v6[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v6 + 4);
          v56 = *(v6 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_71:
          if (v58)
          {
            goto LABEL_120;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_123;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_128;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v49 < 2)
        {
          goto LABEL_122;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_86:
        if (v73)
        {
          goto LABEL_125;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_127;
        }

        if (v80 < v72)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v52 - 1 >= v49)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v84 = v6;
        v85 = &v50[16 * v52 - 16];
        v86 = *v85;
        v87 = &v50[16 * v52];
        v88 = *(v87 + 1);
        sub_1C702501C((*a3 + 72 * *v85), (*a3 + 72 * *v87), (*a3 + 72 * v88), v125);
        if (v114)
        {
          goto LABEL_113;
        }

        if (v88 < v86)
        {
          goto LABEL_115;
        }

        v89 = *(v84 + 2);
        if (v52 > v89)
        {
          goto LABEL_116;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        if (v52 >= v89)
        {
          goto LABEL_117;
        }

        v49 = v89 - 1;
        sub_1C7423CF4(v87 + 16, v89 - 1 - v52, &v50[16 * v52]);
        v6 = v84;
        *(v84 + 2) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_100;
        }
      }

      v59 = &v50[16 * v49];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_118;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_119;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_121;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_124;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_132;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v5 = v113;
    v4 = a3[1];
    if (v113 >= v4)
    {
      goto LABEL_103;
    }
  }

  v35 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_136;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v7)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v17 == v35)
  {
    goto LABEL_51;
  }

  v102 = v6;
  v116 = *a3;
  v36 = (*a3 + 72 * v17);
  v105 = v7;
  v106 = v35;
  v37 = (v7 - v17 + 1);
LABEL_39:
  v112 = v17;
  v107 = v37;
  v125 = v37;
  v109 = v36;
  while (1)
  {
    memcpy(__dst, v36, 0x42uLL);
    memcpy(v124, v36 - 72, 0x42uLL);
    v38 = __dst[4];
    v39 = __dst[5];
    v41 = v124[4];
    v40 = v124[5];
    v121[0] = 980706640;
    v121[1] = 0xE400000000000000;
    sub_1C7025FF8(__dst, __src);
    sub_1C7025FF8(v124, __src);
    MEMORY[0x1CCA5CD70](v38, v39);
    v42 = v121[0];
    v43 = v121[1];
    __src[0] = 980706640;
    __src[1] = 0xE400000000000000;
    MEMORY[0x1CCA5CD70](v41, v40);
    if (v42 == __src[0] && v43 == __src[1])
    {

      sub_1C7026030(v124);
      sub_1C7026030(__dst);
LABEL_49:
      v17 = v112 + 1;
      v36 = v109 + 72;
      v37 = v107 - 1;
      if (v112 + 1 == v106)
      {
        v17 = v106;
        v6 = v102;
        v7 = v105;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v45 = sub_1C7551DBC();

    sub_1C7026030(v124);
    sub_1C7026030(__dst);
    v46 = v125;
    if ((v45 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v116)
    {
      break;
    }

    memcpy(__src, v36, 0x42uLL);
    memcpy(v36, v36 - 72, 0x48uLL);
    memcpy(v36 - 72, __src, 0x42uLL);
    if (!v46)
    {
      goto LABEL_49;
    }

    v125 = v46 + 1;
    v36 -= 72;
  }

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
}

void sub_1C7020B60(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 72 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 72 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = 72 * v8;
        v17 = (v9 + 72 * v8 + 152);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 10) && *v17 == *(v17 - 9))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v17 += 9;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 72 * v6 - 72;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x48uLL);
              memcpy((v22 + v19), __dst, 0x42uLL);
            }

            ++v21;
            v19 -= 72;
            v16 += 72;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (v6 != v24)
          {
            v79 = v7;
            v25 = *a3;
            v26 = *a3 + 72 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 9) && v29[1] == *(v29 - 8);
                if (v30 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 9, 0x48uLL);
                memcpy(v29 - 9, __dst, 0x42uLL);
                v29 -= 9;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 72;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v79;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v75;
      }

      v33 = v7[2];
      v32 = v7[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_1C6FB17EC(v32 > 1, v33 + 1, 1, v7);
        v7 = v76;
      }

      v7[2] = v34;
      v35 = v7 + 4;
      v36 = &v7[2 * v33 + 4];
      *v36 = v8;
      v36[1] = v6;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v7[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v7[4];
            v41 = v7[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_69:
            if (v43)
            {
              goto LABEL_110;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_113;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_118;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v34 < 2)
          {
            goto LABEL_112;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_84:
          if (v58)
          {
            goto LABEL_115;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_117;
          }

          if (v65 < v57)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v37 - 1 >= v34)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v69 = v7;
          v70 = &v35[2 * v37 - 2];
          v71 = *v70;
          v72 = &v35[2 * v37];
          v73 = v72[1];
          sub_1C7025784();
          if (v4)
          {
            goto LABEL_103;
          }

          if (v73 < v71)
          {
            goto LABEL_105;
          }

          v74 = v69[2];
          if (v37 > v74)
          {
            goto LABEL_106;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v37 >= v74)
          {
            goto LABEL_107;
          }

          v34 = v74 - 1;
          memmove(&v35[2 * v37], v72 + 2, 16 * (v74 - 1 - v37));
          v7 = v69;
          v69[2] = v74 - 1;
          if (v74 <= 2)
          {
            goto LABEL_98;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_108;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_109;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_111;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_114;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_119;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C70223D4(&v82, *result, a3, sub_1C7423D04);
LABEL_103:
}

void sub_1C70210D0(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v125 = *result;
    if (!v125)
    {
      goto LABEL_144;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_105:
      v92 = v6 + 16;
      v93 = *(v6 + 2);
      while (v93 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_141;
        }

        v94 = v6;
        v95 = &v6[16 * v93];
        v96 = *v95;
        v97 = &v92[2 * v93];
        v98 = *(v97 + 1);
        sub_1C70253C8((*a3 + 72 * *v95), (*a3 + 72 * *v97), (*a3 + 72 * v98), v125);
        if (v114)
        {
          break;
        }

        if (v98 < v96)
        {
          goto LABEL_129;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_130;
        }

        *v95 = v96;
        *(v95 + 1) = v98;
        v99 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_131;
        }

        v93 = *v92 - 1;
        sub_1C7423CF4(v97 + 16, v99, v97);
        *v92 = v93;
        v6 = v94;
      }

LABEL_113:

      return;
    }

LABEL_138:
    v6 = sub_1C7420830();
    goto LABEL_105;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 >= v4)
    {
      v17 = v5 + 1;
    }

    else
    {
      v115 = v4;
      v101 = v6;
      v9 = *a3;
      memcpy(__dst, (*a3 + 72 * v8), 0x41uLL);
      v104 = v7;
      memcpy(v124, (v9 + 72 * v7), 0x41uLL);
      v10 = __dst[4];
      v11 = __dst[5];
      v13 = v124[4];
      v12 = v124[5];
      v121[0] = 0x3A6E6F73726550;
      v121[1] = 0xE700000000000000;
      sub_1C7025F3C(__dst, __src);
      sub_1C7025F3C(v124, __src);
      MEMORY[0x1CCA5CD70](v10, v11);
      v14 = v121[0];
      v15 = v121[1];
      __src[0] = 0x3A6E6F73726550;
      __src[1] = 0xE700000000000000;
      MEMORY[0x1CCA5CD70](v13, v12);
      v16 = v14 == __src[0] && v15 == __src[1];
      LODWORD(v125) = v16 ? 0 : sub_1C7551DBC();

      sub_1C7025F74(v124);
      sub_1C7025F74(__dst);
      v18 = (v9 + 72 * v7 + 144);
      v108 = 72 * v7;
      v19 = 72 * v7 + 72;
      do
      {
        v20 = v8;
        v21 = v19;
        v111 = v8 + 1;
        if (v8 + 1 >= v115)
        {
          break;
        }

        memcpy(v121, v18, 0x41uLL);
        memcpy(__src, v18 - 72, 0x41uLL);
        v22 = v121[4];
        v23 = v121[5];
        v24 = __src[4];
        v25 = __src[5];
        v119 = 0x3A6E6F73726550;
        v120 = 0xE700000000000000;
        sub_1C7025F3C(v121, &v117);
        sub_1C7025F3C(__src, &v117);
        MEMORY[0x1CCA5CD70](v22, v23);
        v26 = v119;
        v27 = v120;
        v117 = 0x3A6E6F73726550;
        v118 = 0xE700000000000000;
        MEMORY[0x1CCA5CD70](v24, v25);
        v28 = v26 == v117 && v27 == v118;
        v29 = v28 ? 0 : sub_1C7551DBC();

        sub_1C7025F74(__src);
        sub_1C7025F74(v121);
        v18 += 72;
        v8 = v20 + 1;
        v19 = v21 + 72;
      }

      while (((v125 ^ v29) & 1) == 0);
      if (v125)
      {
        v7 = v104;
        v6 = v101;
        if (v111 < v104)
        {
          goto LABEL_135;
        }

        if (v104 <= v20)
        {
          v30 = v104;
          v31 = v108;
          do
          {
            if (v30 != v20)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_142;
              }

              memcpy(__src, (v32 + v31), 0x41uLL);
              memmove((v32 + v31), (v32 + v21), 0x48uLL);
              memcpy((v32 + v21), __src, 0x41uLL);
            }

            ++v30;
            v21 -= 72;
            v31 += 72;
          }

          while (v30 < v20--);
        }

        v17 = v111;
      }

      else
      {
        v6 = v101;
        v17 = v111;
        v7 = v104;
      }
    }

    v34 = a3[1];
    if (v17 < v34)
    {
      if (__OFSUB__(v17, v7))
      {
        goto LABEL_134;
      }

      if (v17 - v7 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v17 < v7)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v90;
    }

    v48 = *(v6 + 2);
    v47 = *(v6 + 3);
    v49 = v48 + 1;
    v113 = v17;
    if (v48 >= v47 >> 1)
    {
      sub_1C6FB17EC(v47 > 1, v48 + 1, 1, v6);
      v6 = v91;
    }

    *(v6 + 2) = v49;
    v50 = v6 + 32;
    v51 = &v6[16 * v48 + 32];
    *v51 = v7;
    *(v51 + 1) = v113;
    v125 = *result;
    if (!v125)
    {
      goto LABEL_143;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        v53 = &v50[16 * v49 - 16];
        v54 = &v6[16 * v49];
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v55 = *(v6 + 4);
          v56 = *(v6 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_71:
          if (v58)
          {
            goto LABEL_120;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_123;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_126;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_128;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v49 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        if (v49 < 2)
        {
          goto LABEL_122;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_86:
        if (v73)
        {
          goto LABEL_125;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_127;
        }

        if (v80 < v72)
        {
          goto LABEL_100;
        }

LABEL_93:
        if (v52 - 1 >= v49)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v84 = v6;
        v85 = &v50[16 * v52 - 16];
        v86 = *v85;
        v87 = &v50[16 * v52];
        v88 = *(v87 + 1);
        sub_1C70253C8((*a3 + 72 * *v85), (*a3 + 72 * *v87), (*a3 + 72 * v88), v125);
        if (v114)
        {
          goto LABEL_113;
        }

        if (v88 < v86)
        {
          goto LABEL_115;
        }

        v89 = *(v84 + 2);
        if (v52 > v89)
        {
          goto LABEL_116;
        }

        *v85 = v86;
        *(v85 + 1) = v88;
        if (v52 >= v89)
        {
          goto LABEL_117;
        }

        v49 = v89 - 1;
        sub_1C7423CF4(v87 + 16, v89 - 1 - v52, &v50[16 * v52]);
        v6 = v84;
        *(v84 + 2) = v89 - 1;
        if (v89 <= 2)
        {
          goto LABEL_100;
        }
      }

      v59 = &v50[16 * v49];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_118;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_119;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_121;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_124;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_132;
        }

        if (v57 < v83)
        {
          v52 = v49 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_71;
    }

LABEL_100:
    v5 = v113;
    v4 = a3[1];
    if (v113 >= v4)
    {
      goto LABEL_103;
    }
  }

  v35 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_136;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v7)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v17 == v35)
  {
    goto LABEL_51;
  }

  v102 = v6;
  v116 = *a3;
  v36 = (*a3 + 72 * v17);
  v105 = v7;
  v106 = v35;
  v37 = (v7 - v17 + 1);
LABEL_39:
  v112 = v17;
  v107 = v37;
  v125 = v37;
  v109 = v36;
  while (1)
  {
    memcpy(__dst, v36, 0x41uLL);
    memcpy(v124, v36 - 72, 0x41uLL);
    v38 = __dst[4];
    v39 = __dst[5];
    v41 = v124[4];
    v40 = v124[5];
    v121[0] = 0x3A6E6F73726550;
    v121[1] = 0xE700000000000000;
    sub_1C7025F3C(__dst, __src);
    sub_1C7025F3C(v124, __src);
    MEMORY[0x1CCA5CD70](v38, v39);
    v42 = v121[0];
    v43 = v121[1];
    __src[0] = 0x3A6E6F73726550;
    __src[1] = 0xE700000000000000;
    MEMORY[0x1CCA5CD70](v41, v40);
    if (v42 == __src[0] && v43 == __src[1])
    {

      sub_1C7025F74(v124);
      sub_1C7025F74(__dst);
LABEL_49:
      v17 = v112 + 1;
      v36 = v109 + 72;
      v37 = v107 - 1;
      if (v112 + 1 == v106)
      {
        v17 = v106;
        v6 = v102;
        v7 = v105;
        goto LABEL_51;
      }

      goto LABEL_39;
    }

    v45 = sub_1C7551DBC();

    sub_1C7025F74(v124);
    sub_1C7025F74(__dst);
    v46 = v125;
    if ((v45 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v116)
    {
      break;
    }

    memcpy(__src, v36, 0x41uLL);
    memcpy(v36, v36 - 72, 0x48uLL);
    memcpy(v36 - 72, __src, 0x41uLL);
    if (!v46)
    {
      goto LABEL_49;
    }

    v125 = v46 + 1;
    v36 -= 72;
  }

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
}

void sub_1C7021994(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 72 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 72 * v8);
        if (v11 == *v13 && v12 == v13[1])
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1C7551DBC();
        }

        v6 = v8 + 2;
        v16 = 72 * v8;
        v17 = (v9 + 72 * v8 + 152);
        while (v6 < v5)
        {
          if (*(v17 - 1) == *(v17 - 10) && *v17 == *(v17 - 9))
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1C7551DBC()))
          {
            break;
          }

          ++v6;
          v17 += 9;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 72 * v6 - 72;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x48uLL);
              memcpy((v22 + v19), __dst, 0x41uLL);
            }

            ++v21;
            v19 -= 72;
            v16 += 72;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (v6 != v24)
          {
            v79 = v7;
            v25 = *a3;
            v26 = *a3 + 72 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *v29 == *(v29 - 9) && v29[1] == *(v29 - 8);
                if (v30 || (sub_1C7551DBC() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 9, 0x48uLL);
                memcpy(v29 - 9, __dst, 0x41uLL);
                v29 -= 9;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 72;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v79;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v75;
      }

      v33 = v7[2];
      v32 = v7[3];
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        sub_1C6FB17EC(v32 > 1, v33 + 1, 1, v7);
        v7 = v76;
      }

      v7[2] = v34;
      v35 = v7 + 4;
      v36 = &v7[2 * v33 + 4];
      *v36 = v8;
      v36[1] = v6;
      if (!*result)
      {
        goto LABEL_128;
      }

      if (v33)
      {
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v7[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v7[4];
            v41 = v7[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_69:
            if (v43)
            {
              goto LABEL_110;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_113;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_118;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v34 < 2)
          {
            goto LABEL_112;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_84:
          if (v58)
          {
            goto LABEL_115;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_117;
          }

          if (v65 < v57)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v37 - 1 >= v34)
          {
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
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v69 = v7;
          v70 = &v35[2 * v37 - 2];
          v71 = *v70;
          v72 = &v35[2 * v37];
          v73 = v72[1];
          sub_1C7025784();
          if (v4)
          {
            goto LABEL_103;
          }

          if (v73 < v71)
          {
            goto LABEL_105;
          }

          v74 = v69[2];
          if (v37 > v74)
          {
            goto LABEL_106;
          }

          *v70 = v71;
          v70[1] = v73;
          if (v37 >= v74)
          {
            goto LABEL_107;
          }

          v34 = v74 - 1;
          memmove(&v35[2 * v37], v72 + 2, 16 * (v74 - 1 - v37));
          v7 = v69;
          v69[2] = v74 - 1;
          if (v74 <= 2)
          {
            goto LABEL_98;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_108;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_109;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_111;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_114;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_119;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_129;
  }

  sub_1C70223D4(&v82, *result, a3, sub_1C7423D04);
LABEL_103:
}
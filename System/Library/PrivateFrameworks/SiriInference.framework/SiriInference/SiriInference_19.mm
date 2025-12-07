unint64_t sub_1DD4EE670()
{
  result = qword_1ECCDDE08;
  if (!qword_1ECCDDE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE08);
  }

  return result;
}

unint64_t sub_1DD4EE6C8()
{
  result = qword_1ECCDDE10;
  if (!qword_1ECCDDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE10);
  }

  return result;
}

unint64_t sub_1DD4EE720()
{
  result = qword_1ECCDDE18;
  if (!qword_1ECCDDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_52(uint64_t a1, uint64_t a2)
{

  return sub_1DD640B18();
}

uint64_t sub_1DD4EE7C0(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1DD63D078();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  result = -1;
  if ((a2 & 1) != 0 && a1)
  {
    v20 = a1;
    v21 = [v20 absoluteTimestamp];
    if (v21)
    {
      v22 = v21;
      sub_1DD63D048();

      v23 = *(v10 + 32);
      v23(v18, v15, v9);
      sub_1DD3B7EA0(a3, v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        (*(v10 + 8))(v18, v9);

        sub_1DD4AF0C8(v8);
      }

      else
      {
        v23(v12, v8, v9);
        sub_1DD63CF88();
        v25 = v24;

        v26 = round(v25);
        if (v26 <= -9.22337204e18)
        {
          v28 = *(v10 + 8);
          v28(v12, v9);
          v28(v18, v9);
        }

        else
        {
          v27 = *(v10 + 8);
          v27(v12, v9);
          v27(v18, v9);
          if (v26 < 9.22337204e18)
          {
            return v26;
          }
        }
      }
    }

    else
    {
    }

    return -1;
  }

  return result;
}

unint64_t sub_1DD4EEA90()
{
  result = qword_1ECCDF210;
  if (!qword_1ECCDF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF210);
  }

  return result;
}

uint64_t sub_1DD4EEAE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  memcpy(v5 + 2, v2, 0x58uLL);
  v5[13] = a1;
  v5[14] = a2;
  sub_1DD4EF07C(v2, v7);

  sub_1DD63D9C8();
}

uint64_t sub_1DD4EEB8C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v27[1] = a4;
  v28 = a3;
  v29 = sub_1DD63D4F8();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = *a1;
  v33 = v12;
  sub_1DD4EF07C(a2, v32);
  sub_1DD4EF0B4(v12, a2);
  v31 = &v33;
  v15 = sub_1DD530814(sub_1DD4EF458, v30, v14, v13 & 1);
  v16 = v15;
  if (v15)
  {
    v17 = sub_1DD4EF348(v15);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  if (*(a2 + 48))
  {
    sub_1DD63D068();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_1DD63D078();
  v22 = __swift_storeEnumTagSinglePayload(v11, v20, 1, v21);
  MEMORY[0x1EEE9AC00](v22);
  v27[-6] = a2;
  v27[-5] = v16;
  v27[-4] = v17;
  v27[-3] = v19;
  v27[-2] = v11;
  v24 = sub_1DD604138(sub_1DD4EF478, &v27[-8], v23);

  *v8 = sub_1DD3B80F8(v24);
  v25 = v29;
  (*(v6 + 104))(v8, *MEMORY[0x1E69D2B60], v29);
  v28(v8);

  (*(v6 + 8))(v8, v25);
  return sub_1DD4AF0C8(v11);
}

uint64_t sub_1DD4EEE18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  if (a5)
  {
    if (v12 == a4 && v11 == a5)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1DD640CD8();
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = (*(a2 + 56))(a3, v14 & 1, a6);
  *a7 = v12;
  a7[1] = v11;
  a7[2] = v15;
}

uint64_t sub_1DD4EEEC8()
{
  v0 = qword_1ECCDDE20;

  return v0;
}

uint64_t sub_1DD4EEF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EF01C();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD4EEFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EF01C();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD4EF01C()
{
  result = qword_1ECCDDE30;
  if (!qword_1ECCDDE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE30);
  }

  return result;
}

void sub_1DD4EF0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020();
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = a1 + 32;
  v29 = a2;
  while (1)
  {
    if (!v4)
    {
      goto LABEL_36;
    }

    v8 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    if (v5)
    {
      v9 = MEMORY[0x1E12B2C10](v4 - 1, a1);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v8 >= *(v6 + 16))
      {
        goto LABEL_39;
      }

      v9 = *(v7 + 8 * v8);
    }

    v10 = v9;
    if ((*(a2 + 32))())
    {
      v11 = sub_1DD4EF3B8(v10);
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        v15 = *(a2 + 24);
        if (*(v15 + 16))
        {
          sub_1DD640E28();
          sub_1DD63FD28();
          v16 = sub_1DD640E78();
          v17 = ~(-1 << *(v15 + 32));
          while (1)
          {
            v18 = v16 & v17;
            if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {
              break;
            }

            v19 = (*(v15 + 48) + 16 * v18);
            if (*v19 != v13 || v14 != v19[1])
            {
              v21 = sub_1DD640CD8();
              v16 = v18 + 1;
              if ((v21 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }

          v5 = a1 & 0xC000000000000001;
          a2 = v29;
        }

        if ((*(a2 + 72) & 1) == 0)
        {
LABEL_35:

          a2 = v29;
LABEL_36:
          sub_1DD4EF4A0(a2);
          return;
        }

        v22 = *(a2 + 16);
        if (*(v22 + 16))
        {
          sub_1DD640E28();
          sub_1DD63FD28();
          v23 = sub_1DD640E78();
          v24 = ~(-1 << *(v22 + 32));
          while (1)
          {
            v25 = v23 & v24;
            if (((*(v22 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
            {
              break;
            }

            v26 = (*(v22 + 48) + 16 * v25);
            if (*v26 != v13 || v14 != v26[1])
            {
              v28 = sub_1DD640CD8();
              v23 = v25 + 1;
              if ((v28 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_35;
          }

LABEL_18:

          --v4;
          v5 = a1 & 0xC000000000000001;
          a2 = v29;
        }

        else
        {

          --v4;
        }

        v6 = a1 & 0xFFFFFFFFFFFFFF8;
        v7 = a1 + 32;
      }

      else
      {

        --v4;
        v7 = a1 + 32;
      }
    }

    else
    {

      --v4;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1DD4EF348(void *a1)
{
  v2 = [a1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD4EF3B8(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63FDD8();

  return v3;
}

id sub_1DD4EF41C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1DD53058C(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DD4EF514(void *a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1DD63D078();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  result = -1;
  if ((a2 & 1) != 0 && a1)
  {
    v20 = a1;
    v21 = [v20 absoluteTimestamp];
    if (v21)
    {
      v22 = v21;
      sub_1DD63D048();

      v23 = *(v10 + 32);
      v23(v18, v15, v9);
      sub_1DD3B7EA0(a3, v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        (*(v10 + 8))(v18, v9);

        sub_1DD4AF0C8(v8);
      }

      else
      {
        v23(v12, v8, v9);
        sub_1DD63CF88();
        v25 = v24;

        v26 = round(v25);
        if (v26 <= -9.22337204e18)
        {
          v28 = *(v10 + 8);
          v28(v12, v9);
          v28(v18, v9);
        }

        else
        {
          v27 = *(v10 + 8);
          v27(v12, v9);
          v27(v18, v9);
          if (v26 < 9.22337204e18)
          {
            return v26;
          }
        }
      }
    }

    else
    {
    }

    return -1;
  }

  return result;
}

uint64_t sub_1DD4EF7D8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DD4EF818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD4EF880()
{
  result = qword_1ECCDDE48;
  if (!qword_1ECCDDE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE48);
  }

  return result;
}

uint64_t sub_1DD4EF8D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  memcpy(v5 + 2, v2, 0x50uLL);
  v5[12] = a1;
  v5[13] = a2;
  sub_1DD4EFE6C(v2, &v7);

  sub_1DD63D9C8();
}

uint64_t sub_1DD4EF97C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v27[1] = a4;
  v28 = a3;
  v29 = sub_1DD63D4F8();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v27 - v10;
  v12 = *a1;
  v33 = v12;
  sub_1DD4EFE6C(a2, v32);
  sub_1DD4EFEA4(v12, a2);
  v31 = &v33;
  v15 = sub_1DD530814(sub_1DD4EF458, v30, v14, v13 & 1);
  v16 = v15;
  if (v15)
  {
    v17 = sub_1DD4EF348(v15);
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  if (*(a2 + 40))
  {
    sub_1DD63D068();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_1DD63D078();
  v22 = __swift_storeEnumTagSinglePayload(v11, v20, 1, v21);
  MEMORY[0x1EEE9AC00](v22);
  v27[-6] = a2;
  v27[-5] = v16;
  v27[-4] = v17;
  v27[-3] = v19;
  v27[-2] = v11;
  v24 = sub_1DD604138(sub_1DD4F00A8, &v27[-8], v23);

  *v8 = sub_1DD3B80F8(v24);
  v25 = v29;
  (*(v6 + 104))(v8, *MEMORY[0x1E69D2B60], v29);
  v28(v8);

  (*(v6 + 8))(v8, v25);
  return sub_1DD4AF0C8(v11);
}

uint64_t sub_1DD4EFC08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  if (a5)
  {
    if (v12 == a4 && v11 == a5)
    {
      v14 = 1;
    }

    else
    {
      v14 = sub_1DD640CD8();
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = (*(a2 + 48))(a3, v14 & 1, a6);
  *a7 = v12;
  a7[1] = v11;
  a7[2] = v15;
}

uint64_t sub_1DD4EFCB8()
{
  v0 = qword_1ECCDDE38;

  return v0;
}

uint64_t sub_1DD4EFD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EFE0C();

  return MEMORY[0x1EEE40138](a1, a2, a3, a4, v8);
}

uint64_t sub_1DD4EFDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DD4EFE0C();

  return MEMORY[0x1EEE40118](a1, a2, a3, a4, v8);
}

unint64_t sub_1DD4EFE0C()
{
  result = qword_1ECCDDE50;
  if (!qword_1ECCDDE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDE50);
  }

  return result;
}

void sub_1DD4EFEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD3CC020();
  v5 = a1 & 0xC000000000000001;
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  v7 = a1 + 32;
  v22 = a2;
  while (1)
  {
    if (!v4)
    {
      goto LABEL_27;
    }

    v8 = v4 - 1;
    if (__OFSUB__(v4, 1))
    {
      break;
    }

    if (v5)
    {
      v9 = MEMORY[0x1E12B2C10](v4 - 1, a1);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      if (v8 >= *(v6 + 16))
      {
        goto LABEL_31;
      }

      v9 = *(v7 + 8 * v8);
    }

    v10 = v9;
    if ((*(a2 + 24))())
    {
      v11 = sub_1DD4EF3B8(v10);
      if (v12)
      {
        v13 = v12;
        if ((*(a2 + 64) & 1) == 0)
        {
LABEL_26:

          a2 = v22;
LABEL_27:
          sub_1DD4F00D0(a2);
          return;
        }

        a2 = v22;
        v14 = *(v22 + 16);
        if (*(v14 + 16))
        {
          v15 = v11;
          sub_1DD640E28();
          sub_1DD63FD28();
          v16 = sub_1DD640E78();
          v17 = ~(-1 << *(v14 + 32));
          while (1)
          {
            v18 = v16 & v17;
            if (((*(v14 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {
              break;
            }

            v19 = (*(v14 + 48) + 16 * v18);
            if (*v19 != v15 || v13 != v19[1])
            {
              v21 = sub_1DD640CD8();
              v16 = v18 + 1;
              if ((v21 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_26;
          }

          --v4;
          a2 = v22;
        }

        else
        {

          --v4;
        }

        v6 = a1 & 0xFFFFFFFFFFFFFF8;
        v5 = a1 & 0xC000000000000001;
        v7 = a1 + 32;
      }

      else
      {

        --v4;
        v7 = a1 + 32;
      }
    }

    else
    {

      --v4;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_1DD4F016C()
{
  OUTLINED_FUNCTION_18_4();
  LODWORD(v2) = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v106 = v11;
  v12 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v104 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v103 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_3();
  v105 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6_47();
  type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1_4();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v99 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_16_3();
  if (!v10)
  {
    goto LABEL_4;
  }

  v101 = v12;
  v102 = v32;
  v33 = v31;
  sub_1DD4B7F04(v10, v0);
  v107 = v33;
  if (__swift_getEnumTagSinglePayload(v0, 1, v33) != 1)
  {
    v40 = v102;
    v41 = sub_1DD4F298C(v0, v102);
    if (v6)
    {
      if (v6 == 1)
      {
        v4 = *(v10 + 16);
        v6 = v8;
        if (v4 < v8)
        {
          v8 = v106;
          if (qword_1ECCDB0E0 == -1)
          {
LABEL_11:
            v42 = sub_1DD63F9F8();
            OUTLINED_FUNCTION_130(v42, qword_1ECD0DDF0);

            v43 = sub_1DD63F9D8();
            v44 = sub_1DD640368();
            if (OUTLINED_FUNCTION_5_6(v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218240;
              *(v45 + 4) = v6;
              *(v45 + 12) = 2048;
              *(v45 + 14) = v4;

              _os_log_impl(&dword_1DD38D000, v43, v2, "LearnedChoiceExtractor: Not enough learnings; need %ld but found %ld", v45, 0x16u);
              OUTLINED_FUNCTION_0_1();
            }

            else
            {
            }

            v79 = OUTLINED_FUNCTION_5_54();
            __swift_storeEnumTagSinglePayload(v79, v80, v81, v107);
            v82 = v40;
LABEL_44:
            sub_1DD4BC07C(v82);
            goto LABEL_5;
          }

LABEL_48:
          OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
          goto LABEL_11;
        }

        v105 = *(v10 + 16);

        v68 = sub_1DD4F09F4(v8, v10);
        v40 = v71 >> 1;
        v72 = (v71 >> 1) - v70;
        if (!__OFSUB__(v71 >> 1, v70))
        {
          if (v72)
          {
            v6 = v69;
            v8 = v70;
            v104 = v68;
            v108 = MEMORY[0x1E69E7CC0];
            sub_1DD42BCF4(0, v72 & ~(v72 >> 63), 0);
            if ((v72 & 0x8000000000000000) == 0)
            {
              v2 = v108;
              while (v8 < v40)
              {
                sub_1DD4BC018(v6 + *(v22 + 72) * v8, v29);
                v73 = *&v29[*(v107 + 32)];
                sub_1DD4BC07C(v29);
                v108 = v2;
                v4 = *(v2 + 16);
                v74 = *(v2 + 24);
                v72 = v4 + 1;
                if (v4 >= v74 >> 1)
                {
                  sub_1DD42BCF4(v74 > 1, v4 + 1, 1);
                  v2 = v108;
                }

                *(v2 + 16) = v72;
                *(v2 + 4 * v4 + 32) = v73;
                if (v40 == ++v8)
                {
                  swift_unknownObjectRelease();
                  goto LABEL_37;
                }
              }

              __break(1u);
              goto LABEL_46;
            }

            __break(1u);
            goto LABEL_52;
          }

          swift_unknownObjectRelease();
          v2 = MEMORY[0x1E69E7CC0];
LABEL_37:
          v29 = sub_1DD418E9C(v2);
          v8 = v106;
          v6 = v102;
          if (*(v29 + 2) != 1)
          {
            if (qword_1ECCDB0E0 == -1)
            {
LABEL_40:
              v91 = sub_1DD63F9F8();
              OUTLINED_FUNCTION_130(v91, qword_1ECD0DDF0);

              v92 = sub_1DD63F9D8();
              v93 = sub_1DD640368();
              if (OUTLINED_FUNCTION_4_0(v93))
              {
                v94 = swift_slowAlloc();
                *v94 = 134218240;
                *(v94 + 4) = v105;

                *(v94 + 12) = 2048;
                v95 = *(v29 + 2);

                *(v94 + 14) = v95;

                _os_log_impl(&dword_1DD38D000, v92, v72, "LearnedChoiceExtractor: Last %ld learnings have %ld different selections.", v94, 0x16u);
                OUTLINED_FUNCTION_0_1();
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              v96 = OUTLINED_FUNCTION_5_54();
              __swift_storeEnumTagSinglePayload(v96, v97, v98, v107);
              v82 = v6;
              goto LABEL_44;
            }

LABEL_52:
            OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
            goto LABEL_40;
          }

          sub_1DD4BC018(v6, v8);
          v88 = OUTLINED_FUNCTION_7_40();
          __swift_storeEnumTagSinglePayload(v88, v89, v90, v107);
          v78 = v6;
LABEL_31:
          sub_1DD4BC07C(v78);
          v38 = 2;
          goto LABEL_6;
        }

        __break(1u);
        goto LABEL_50;
      }

      v8 = v106;
      sub_1DD4BC018(v40, v106);
      v65 = OUTLINED_FUNCTION_7_40();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v107);
    }

    else
    {
      if ((v8 * 60) >> 64 != (60 * v8) >> 63)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v46 = (v4)(v41);
      v22 = v105;
      if (__OFSUB__(v46, 60 * v8))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      sub_1DD63CF38();
      v47 = v107;
      OUTLINED_FUNCTION_4_49();
      sub_1DD4F29F0(v48, v49, MEMORY[0x1E6969548]);
      v2 = v101;
      if (sub_1DD63FD68())
      {
        if (qword_1ECCDB0E0 == -1)
        {
LABEL_17:
          v50 = sub_1DD63F9F8();
          OUTLINED_FUNCTION_130(v50, qword_1ECD0DDF0);
          sub_1DD4BC018(v40, v26);
          v51 = v101;
          (*(v104 + 16))(v103, v22, v101);
          v52 = sub_1DD63F9D8();
          v53 = sub_1DD640368();
          if (OUTLINED_FUNCTION_5_6(v53))
          {
            v54 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v108 = v100;
            *v54 = 136315394;
            HIDWORD(v99) = v2;
            OUTLINED_FUNCTION_4_49();
            sub_1DD4F29F0(v55, v56, MEMORY[0x1E6969570]);
            v57 = sub_1DD640CB8();
            v6 = v58;
            sub_1DD4BC07C(v26);
            v59 = sub_1DD39565C(v57, v6, &v108);

            *(v54 + 4) = v59;
            *(v54 + 12) = 2080;
            v60 = sub_1DD640CB8();
            v62 = v61;
            v63 = OUTLINED_FUNCTION_12_29();
            v6(v63);
            v64 = sub_1DD39565C(v60, v62, &v108);

            *(v54 + 14) = v64;
            _os_log_impl(&dword_1DD38D000, v52, BYTE4(v99), "LearnedChoiceExtractor: Timestamp %s is older than the cutoff %s", v54, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_0_1();
            v22 = v105;
            OUTLINED_FUNCTION_0_1();
          }

          else
          {

            v83 = OUTLINED_FUNCTION_12_29();
            v6(v83);
            sub_1DD4BC07C(v26);
          }

          v8 = v106;
          v84 = OUTLINED_FUNCTION_5_54();
          __swift_storeEnumTagSinglePayload(v84, v85, v86, v87);
          (v6)(v22, v51);
          v82 = v102;
          goto LABEL_44;
        }

LABEL_50:
        OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
        goto LABEL_17;
      }

      v8 = v106;
      sub_1DD4BC018(v40, v106);
      v75 = OUTLINED_FUNCTION_7_40();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v47);
      (*(v104 + 8))(v22, v2);
    }

    v78 = v40;
    goto LABEL_31;
  }

  sub_1DD3ADFD0(v0, &qword_1ECCDD880, &qword_1DD652070);
LABEL_4:
  v8 = v106;
  v34 = OUTLINED_FUNCTION_5_54();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
LABEL_5:
  v38 = 0;
LABEL_6:
  v39 = type metadata accessor for LearningResult(0);
  *(v8 + *(v39 + 20)) = xmmword_1DD6555D0;
  *(v8 + *(v39 + 24)) = v38;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F09F4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1DD59AF80(v3, -result, 0, a2);
    if (v4)
    {
      result = 0;
    }

    if (v3 >= result)
    {
      v5 = sub_1DD4BE560(result, v3, a2);

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4F0AE0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
  __swift_allocate_value_buffer(v4, a2);
  OUTLINED_FUNCTION_130(v4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEA8, &qword_1DD655618);
  OUTLINED_FUNCTION_2_61();
  sub_1DD3FAC5C(v5, &qword_1ECCDDE98, &qword_1DD6555F0, v6);
  return sub_1DD63F688();
}

void sub_1DD4F0BAC()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v2;
  v5 = v4;
  v45 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEB8, &qword_1DD655620);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v44 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_47();
  sub_1DD63F648();
  OUTLINED_FUNCTION_0();
  v46 = v16;
  v47 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_0();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEC0, &qword_1DD655628);
  OUTLINED_FUNCTION_0();
  v48 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1_4();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16_3();
  v41 = v24;
  v49 = v5;
  v50 = v3;
  v42 = sub_1DD3B530C();
  MEMORY[0x1E12AFE30](v51, &v49, MEMORY[0x1E69E6158], v42);
  sub_1DD63DB48();
  sub_1DD4F0FCC();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEA8, &qword_1DD655618);
  OUTLINED_FUNCTION_2_61();
  sub_1DD3FAC5C(v26, &qword_1ECCDDEB8, &qword_1DD655620, v27);
  v28 = v25;
  v37 = v25;
  v38 = v7;
  sub_1DD63F628();
  v29 = *(v8 + 8);
  v40 = v8 + 8;
  v29(v13, v7);
  v30 = *(v47 + 8);
  v47 += 8;
  v39 = v30;
  v30(v0, v46);
  MEMORY[0x1E12AFE70](v1, v28);
  v31 = sub_1DD3FAC5C(&qword_1ECCDDED0, &qword_1ECCDDEC0, &qword_1DD655628, MEMORY[0x1E69E8278]);
  v32 = v41;
  v33 = v43;
  MEMORY[0x1E12AFE30](v22, v43, v31);
  v34 = *(v48 + 8);
  v48 += 8;
  v34(v22, v33);
  v49 = v51[0];
  v50 = v51[1];
  sub_1DD63DB38();

  sub_1DD63DB48();
  v35 = v44;
  v36 = v38;
  sub_1DD63F618();
  sub_1DD63F608();
  v29(v35, v36);
  v39(v0, v46);
  v29(v13, v36);
  v34(v32, v33);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4F0FCC()
{
  OUTLINED_FUNCTION_18_4();
  v52 = v2;
  v3 = sub_1DD63DB58();
  OUTLINED_FUNCTION_0();
  v48 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEB8, &qword_1DD655620);
  OUTLINED_FUNCTION_0();
  v50 = v12;
  v51 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1_4();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_3();
  v46 = v18;
  v49 = sub_1DD63F648();
  OUTLINED_FUNCTION_0();
  v47 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_0();
  v43 = v0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDED8, &qword_1DD655630);
  v22 = OUTLINED_FUNCTION_3(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6_47();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDEE0, &qword_1DD655638);
  OUTLINED_FUNCTION_0();
  v45 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1_4();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_16_3();
  v44 = v30;
  v31 = sub_1DD63F678();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v31);
  sub_1DD63DB48();
  sub_1DD63F658();
  v32 = sub_1DD4F29F0(&qword_1ECCDDEE8, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  MEMORY[0x1E12AFE30](v8, v3, v32);
  v33 = *(v48 + 8);
  v33(v8, v3);
  sub_1DD63DB38();
  v33(v11, v3);
  OUTLINED_FUNCTION_2_61();
  sub_1DD3FAC5C(v34, &qword_1ECCDDEB8, &qword_1DD655620, v35);
  v36 = MEMORY[0x1E69E67B0];
  v37 = v46;
  v38 = v50;
  v39 = v43;
  sub_1DD63F638();
  (*(v51 + 8))(v16, v38);
  (*(v47 + 8))(v39, v49);
  sub_1DD3ADFD0(v1, &qword_1ECCDDED8, &qword_1DD655630);
  MEMORY[0x1E12AFE80](v37, v36);
  v40 = sub_1DD3FAC5C(&qword_1ECCDDEF0, &qword_1ECCDDEE0, &qword_1DD655638, MEMORY[0x1E69E8290]);
  v41 = v44;
  MEMORY[0x1E12AFE30](v28, v23, v40);
  v42 = *(v45 + 8);
  v42(v28, v23);
  sub_1DD63DB38();
  v42(v41, v23);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4F1444()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE88, &qword_1DD6555E0);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE90, &qword_1DD6555E8);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_4();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v68[-v20];
  if (v1)
  {
    v22 = v3 == 0x6563726F66 && v1 == 0xE500000000000000;
    if (v22 || (sub_1DD640CD8() & 1) != 0)
    {

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
      }

      v23 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v23, qword_1ECD0DDF0);
      v24 = sub_1DD63F9D8();
      v25 = sub_1DD640368();
      if (!OUTLINED_FUNCTION_5_6(v25))
      {
        goto LABEL_12;
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1DD38D000, v24, v8, "LearnedChoiceExtractor: Using default strategy for prediction but will always disambiguate.", v26, 2u);
      goto LABEL_11;
    }

    v27 = v3 == 0x74736574616CLL && v1 == 0xE600000000000000;
    if (v27 || (sub_1DD640CD8() & 1) != 0)
    {

      goto LABEL_13;
    }

    if (qword_1ECCDB088 != -1)
    {
      swift_once();
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
    v29 = __swift_project_value_buffer(v28, qword_1ECCDDE58);
    sub_1DD4F1B64(v29, v3, v1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_1DD3ADFD0(v11, &qword_1ECCDDE88, &qword_1DD6555E0);
      if (qword_1ECCDB090 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v28, qword_1ECCDDE70);
      sub_1DD4F1B64(v30, v3, v1);
      if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
      {
        sub_1DD3ADFD0(v8, &qword_1ECCDDE88, &qword_1DD6555E0);
        if (qword_1ECCDB0E0 != -1)
        {
          OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
        }

        v31 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v31, qword_1ECD0DDF0);

        v24 = sub_1DD63F9D8();
        v32 = sub_1DD640378();

        if (!os_log_type_enabled(v24, v32))
        {

          goto LABEL_12;
        }

        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v69 = v34;
        *v33 = 136315138;
        v35 = sub_1DD39565C(v3, v1, &v69);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_1DD38D000, v24, v32, "LearnedChoiceExtractor: Could not parse [%s]", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_0_1();
LABEL_11:
        OUTLINED_FUNCTION_0_1();
LABEL_12:

        goto LABEL_13;
      }

      (*(v14 + 32))(v18, v8, v12);
      KeyPath = swift_getKeyPath();
      sub_1DD63F6A8();

      if ((v70 ^ v69) >> 14)
      {
        v53 = OUTLINED_FUNCTION_13_30();
        sub_1DD4F2314(v53, v54, v55, v56, v57);
        if ((v58 & 0x100) != 0)
        {
          v59 = OUTLINED_FUNCTION_13_30();
          sub_1DD4F1D80(v59, v60, v61, v62, v63);
        }

        KeyPath = v58;

        if ((KeyPath & 1) == 0)
        {
          (*(v14 + 8))(v18, v12);
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
      }

      v64 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v64, qword_1ECD0DDF0);
      v65 = sub_1DD63F9D8();
      v66 = sub_1DD640378();
      if (OUTLINED_FUNCTION_4_0(v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_1DD38D000, v65, KeyPath, "LearnedChoiceExtractor: Could not get Int count", v67, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      (*(v14 + 8))(v18, v12);
    }

    else
    {

      (*(v14 + 32))(v21, v11, v12);
      v36 = swift_getKeyPath();
      sub_1DD63F6A8();

      if ((v70 ^ v69) >> 14)
      {
        v37 = OUTLINED_FUNCTION_11_35();
        sub_1DD4F2314(v37, v38, v39, v40, v41);
        if ((v42 & 0x100) != 0)
        {
          v43 = OUTLINED_FUNCTION_11_35();
          sub_1DD4F1D80(v43, v44, v45, v46, v47);
        }

        v36 = v42;

        if ((v36 & 1) == 0)
        {
          (*(v14 + 8))(v21, v12);
          goto LABEL_13;
        }
      }

      else
      {
      }

      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
      }

      v48 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v48, qword_1ECD0DDF0);
      v49 = sub_1DD63F9D8();
      v50 = sub_1DD640378();
      if (OUTLINED_FUNCTION_4_0(v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_1DD38D000, v49, v36, "LearnedChoiceExtractor: Could not get Int count", v51, 2u);
        OUTLINED_FUNCTION_0_1();
      }

      (*(v14 + 8))(v21, v12);
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F1B64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDE98, &qword_1DD6555F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  sub_1DD3FAC5C(&qword_1ECCDDEB0, &qword_1ECCDDE98, &qword_1DD6555F0, MEMORY[0x1E69E9290]);
  sub_1DD63F668();
  sub_1DD4F1D4C(sub_1DD4F1D48, 0, a2, a3);
  sub_1DD63F698();
  (*(v6 + 8))(v8, v5);
}

unsigned __int8 *sub_1DD4F1D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1DD4F23F0();

  result = sub_1DD640048();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1DD511C60(result, v7);
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
      result = sub_1DD640948();
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

uint64_t sub_1DD4F2314(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
    v11 = sub_1DD640948();
  }

  result = sub_1DD4F2444(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1DD4F23F0()
{
  result = qword_1ECCDDEA0;
  if (!qword_1ECCDDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDEA0);
  }

  return result;
}

uint64_t sub_1DD4F2444(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
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
    result = sub_1DD625824(a3, a5, a6);
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

    result = sub_1DD63FFC8();
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
    result = sub_1DD625824(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1DD625824(v21, a5, a6);
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

  result = sub_1DD63FFC8();
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

uint64_t sub_1DD4F2880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DD4F28C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD4F2910(uint64_t a1)
{
  result = sub_1DD4F2938();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD4F2938()
{
  result = qword_1ECCDDEF8;
  if (!qword_1ECCDDEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDEF8);
  }

  return result;
}

uint64_t sub_1DD4F298C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnedDisambiguation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4F29F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD4F2A90(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC780();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD4F65EC(v6);
  *a1 = v2;
  return result;
}

void LearnedDisambiguation.cloneForPredictionRecord()()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v12 = *v1;
  v11 = v1[1];

  sub_1DD63D0E8();
  v13 = sub_1DD63D098();
  v15 = v14;
  (*(v6 + 8))(v10, v4);
  v16 = type metadata accessor for LearnedDisambiguation(0);
  sub_1DD63D068();
  v17 = *(v1 + v16[7]);
  v18 = *(v1 + v16[8]);
  *v3 = v12;
  v3[1] = v11;
  v3[2] = v13;
  v3[3] = v15;
  *(v3 + v16[7]) = v17;
  *(v3 + v16[8]) = v18;
  v19 = (v3 + v16[9]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  OUTLINED_FUNCTION_41_10((v3 + v16[10]));

  OUTLINED_FUNCTION_17();
}

uint64_t type metadata accessor for LearnedDisambiguation(uint64_t a1)
{
  result = qword_1ECCDDF08;
  if (!qword_1ECCDDF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4F2C78(uint64_t a1)
{
  v1[7] = a1;
  v2 = sub_1DD63D558();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD4F2D38, 0, 0);
}

uint64_t sub_1DD4F2D38()
{
  sub_1DD63D718();
  sub_1DD63D708();
  sub_1DD63D6E8();

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_15_2();
  v1 = sub_1DD63D7A8();
  v0[11] = v1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1DD4F2E6C;
  v3 = v0[10];
  v4 = v0[8];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x6465726568746167, 0xEA00000000002928, sub_1DD4F6520, v1, v4);
}

uint64_t sub_1DD4F2E6C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1DD4F3028;
  }

  else
  {
    v2 = sub_1DD4F2F80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DD4F2F80()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  sub_1DD63D548();
  sub_1DD4F5968();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DD4F3028()
{
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
  }

  v1 = *(v0 + 104);
  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1ECD0DDF0);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_54();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DD38D000, v4, v5, "Could not gather signal values: %@", v8, 0xCu);
    sub_1DD390754(v9, &qword_1ECCDBF90, &qword_1DD6445B0);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_41_10(*(v0 + 56));

  v12 = *(v0 + 8);

  return v12();
}

void LearnedDisambiguation.init(useCase:id:timestamp:choices:selection:encodedPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_18_4();
  v23 = v22;
  v47 = v24;
  v48 = v25;
  v45 = v26;
  v46 = v27;
  v29 = v28;
  v44 = sub_1DD63D9E8();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2();
  v35 = v34 - v33;
  v36 = type metadata accessor for LearnedDisambiguation(0);
  v37 = v36[6];
  v38 = sub_1DD63D078();
  v39 = *(v38 - 8);
  (*(v39 + 16))(&v29[v37], v23, v38);
  sub_1DD4F3F88();
  v43 = v40;

  sub_1DD63FE58();

  sub_1DD63D9F8();
  v41 = sub_1DD63D9D8();
  (*(v39 + 8))(v23, v38);
  (*(v31 + 8))(v35, v44);
  *v29 = v45;
  *(v29 + 1) = v46;
  *(v29 + 2) = v47;
  *(v29 + 3) = v48;
  *&v29[v36[7]] = v43;
  *&v29[v36[8]] = v41;
  v42 = &v29[v36[9]];
  *v42 = a21;
  *(v42 + 1) = a22;
  OUTLINED_FUNCTION_41_10(&v29[v36[10]]);
  OUTLINED_FUNCTION_17();
}

uint64_t LearnedDisambiguation.useCase.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LearnedDisambiguation.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LearnedDisambiguation.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LearnedDisambiguation(0) + 24);
  sub_1DD63D078();
  OUTLINED_FUNCTION_7();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LearnedDisambiguation.choices.getter()
{
  type metadata accessor for LearnedDisambiguation(0);
}

uint64_t LearnedDisambiguation.choicesHash.getter(__n128 a1)
{
  sub_1DD63D9E8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  type metadata accessor for LearnedDisambiguation(0);

  sub_1DD63DA08();
  v2 = sub_1DD63D9D8();
  v3 = OUTLINED_FUNCTION_14_9();
  v4(v3);
  return v2;
}

__n128 LearnedDisambiguation.signalValues.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LearnedDisambiguation(0) + 40));
  v4 = v3[1].n128_u64[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  return result;
}

void sub_1DD4F35D8()
{
  OUTLINED_FUNCTION_18_4();
  v1 = sub_1DD63F438();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_0();
  v67 = v9;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v71 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v66 - v13);
  v15 = sub_1DD63FC88();
  v72 = v0;
  v16 = v0[1];
  *v14 = *v0;
  v14[1] = v16;
  v17 = *MEMORY[0x1E69D2AE8];
  v75 = *(v3 + 104);
  v66[0] = v1;
  v75(v14, v17, v1);
  v74 = *(v3 + 32);
  v18 = OUTLINED_FUNCTION_5_9();
  v19(v18);

  swift_isUniquelyReferenced_nonNull_native();
  *&v77 = v15;
  v20 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v20, v21);
  v22 = v72[3];
  *v14 = v72[2];
  v14[1] = v22;
  v68 = v17;
  v23 = v66[0];
  OUTLINED_FUNCTION_16_31();
  v24();
  v25 = OUTLINED_FUNCTION_5_9();
  v74(v25);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  v26 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v26, 25705);
  v27 = v77;
  v28 = type metadata accessor for LearnedDisambiguation(0);
  sub_1DD63CF48();
  *v14 = v29;
  v75(v14, *MEMORY[0x1E69D2AD8], v23);
  v30 = v71;
  v69 = v14;
  v73 = v3 + 32;
  (v74)(v71, v14, v23);
  v31 = v30;
  swift_isUniquelyReferenced_nonNull_native();
  *&v77 = v27;
  sub_1DD3FFF08(v30, 0x6D617473656D6974);
  v66[1] = v77;
  v70 = v28;
  v32 = *(v72 + *(v28 + 28));
  v33 = *(v32 + 16);
  if (v33)
  {
    *&v77 = MEMORY[0x1E69E7CC0];
    sub_1DD42BD68(0, v33, 0);
    v34 = v77;
    v35 = (v32 + 32);
    v36 = *MEMORY[0x1E69D2AC0];
    do
    {
      v37 = *v35++;
      *v7 = v37;
      OUTLINED_FUNCTION_16_31();
      v38();
      *&v77 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1DD42BD68(v39 > 1, v40 + 1, 1);
        v34 = v77;
      }

      *(v34 + 16) = v40 + 1;
      (v74)(v34 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v40, v7, v23);
      --v33;
    }

    while (v33);
    v41 = v71;
  }

  else
  {
    v36 = *MEMORY[0x1E69D2AC0];
    v34 = MEMORY[0x1E69E7CC0];
    v41 = v31;
  }

  v42 = v67;
  *v67 = v34;
  v43 = v75;
  v75(v42, *MEMORY[0x1E69D2AD0], v23);
  v44 = v69;
  v45 = v74;
  (v74)(v69, v42, v23);
  v46 = v45;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  sub_1DD3FFF08(v44, 0x736563696F6863);
  *v44 = *(v72 + *(v70 + 32));
  v43(v44, v36, v23);
  v47 = v41;
  v48 = v41;
  v49 = v46;
  (v46)(v47, v44, v23);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  v50 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v50, v51);
  v52 = v70;
  v53 = v72;
  v54 = (v72 + *(v70 + 36));
  v55 = v54[1];
  *v44 = *v54;
  v44[1] = v55;
  OUTLINED_FUNCTION_16_31();
  v56();
  v57 = OUTLINED_FUNCTION_5_9();
  v49(v57);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_19_24();
  v58 = OUTLINED_FUNCTION_18_26();
  sub_1DD3FFF08(v58, v59);
  v60 = v77;
  v61 = (v53 + *(v52 + 40));
  v62 = *(v61 + 2);
  v77 = *v61;
  v78 = v62;
  sub_1DD4F3BBC();
  *v44 = v63;
  OUTLINED_FUNCTION_16_31();
  v64();
  v65 = OUTLINED_FUNCTION_5_9();
  v49(v65);
  swift_isUniquelyReferenced_nonNull_native();
  v76 = v60;
  sub_1DD3FFF08(v48, 0x61566C616E676973);
  OUTLINED_FUNCTION_17();
}

void sub_1DD4F3BBC()
{
  OUTLINED_FUNCTION_18_4();
  sub_1DD63F438();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_4();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v23 - v8);
  v10 = *v0;
  v11 = v0[1];
  v23 = v0[2];
  v12 = sub_1DD63FC88();
  *v9 = v10;
  v13 = *(v2 + 104);
  v14 = OUTLINED_FUNCTION_13_31();
  v13(v14);
  v15 = *(v2 + 32);
  v16 = OUTLINED_FUNCTION_11_36();
  v15(v16);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v12;
  sub_1DD3FFF08(v6, 3223670);
  v17 = v24;
  *v9 = v11;
  v18 = OUTLINED_FUNCTION_13_31();
  v13(v18);
  v19 = OUTLINED_FUNCTION_11_36();
  v15(v19);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v17;
  sub_1DD3FFF08(v6, 3289206);
  v20 = v24;
  *v9 = v23;
  v21 = OUTLINED_FUNCTION_13_31();
  v13(v21);
  v22 = OUTLINED_FUNCTION_11_36();
  v15(v22);
  swift_isUniquelyReferenced_nonNull_native();
  v24 = v20;
  sub_1DD3FFF08(v6, 3354742);
  OUTLINED_FUNCTION_17();
}

uint64_t LearnedDisambiguation.description.getter()
{
  v1 = v0;
  sub_1DD6408D8();
  OUTLINED_FUNCTION_15_28();
  MEMORY[0x1E12B2260](*v1, v1[1]);
  MEMORY[0x1E12B2260](0x3D6469202CLL, 0xE500000000000000);
  MEMORY[0x1E12B2260](v1[2], v1[3]);
  MEMORY[0x1E12B2260](0x7473656D6974202CLL, 0xEC0000003D706D61);
  v2 = type metadata accessor for LearnedDisambiguation(0);
  sub_1DD480258(v2);
  v3 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v3);

  MEMORY[0x1E12B2260](0x6563696F6863202CLL, 0xEA00000000003D73);
  v4 = MEMORY[0x1E12B2430](*(v0 + *(v2 + 28)), MEMORY[0x1E69E7668]);
  MEMORY[0x1E12B2260](v4);

  MEMORY[0x1E12B2260](0x7463656C6573202CLL, 0xEC0000003D6E6F69);
  v5 = sub_1DD640CB8();
  MEMORY[0x1E12B2260](v5);

  OUTLINED_FUNCTION_15_28();
  MEMORY[0x1E12B2260](*(v1 + *(v2 + 36)), *(v1 + *(v2 + 36) + 8));
  MEMORY[0x1E12B2260](32093, 0xE200000000000000);
  return 0;
}

void sub_1DD4F3F88()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  sub_1DD63D9E8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v3 = *(v1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1DD42BCF4(0, v3, 0);
    v4 = v11;
    v5 = v1 + 40;
    do
    {
      sub_1DD63FE58();

      sub_1DD63D9F8();
      v6 = sub_1DD63D9D8();
      v7 = OUTLINED_FUNCTION_14_9();
      v8(v7);

      v11 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1DD42BCF4(v9 > 1, v10 + 1, 1);
        v4 = v11;
      }

      *(v4 + 16) = v10 + 1;
      *(v4 + 4 * v10 + 32) = v6;
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  v11 = v4;

  sub_1DD4F2A90(&v11);

  OUTLINED_FUNCTION_17();
}

uint64_t static LearnedDisambiguation.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LearnedDisambiguation(0);

  return sub_1DD63CFC8();
}

uint64_t static LearnedDisambiguation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for LearnedDisambiguation(0);
  if ((sub_1DD63D028() & 1) == 0 || (sub_1DD3C43B4(*(a1 + v6[7]), *(a2 + v6[7])) & 1) == 0 || *(a1 + v6[8]) != *(a2 + v6[8]))
  {
    return 0;
  }

  v7 = v6[9];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_1DD640CD8();
}

void LearnedDisambiguation.decodePayload<A>(to:)()
{
  OUTLINED_FUNCTION_18_4();
  v31[2] = v0;
  v31[3] = v1;
  v3 = v2;
  v32 = v4;
  sub_1DD6405F8();
  OUTLINED_FUNCTION_0();
  v31[1] = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  v9 = sub_1DD63FE28();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  sub_1DD63C7A8();
  swift_allocObject();
  sub_1DD63C798();
  type metadata accessor for LearnedDisambiguation(0);
  sub_1DD63FE18();
  v16 = sub_1DD63FDE8();
  v18 = v17;
  (*(v11 + 8))(v15, v9);
  if (v18 >> 60 == 15)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
    }

    v19 = sub_1DD63F9F8();
    __swift_project_value_buffer(v19, qword_1ECD0DDF0);
    v20 = sub_1DD63F9D8();
    v21 = sub_1DD640378();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1DD38D000, v20, v21, "LearnedDisambiguation: PervasiveEntityResolution could not decode parse, starting fresh", v22, 2u);
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    sub_1DD63C788();

    sub_1DD3AD77C(v16, v18);
    OUTLINED_FUNCTION_21_21();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    (*(*(v3 - 8) + 32))(v32, v8, v3);
  }

  OUTLINED_FUNCTION_21_21();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F45AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v136 = v5;
  v137 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v135 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v111 - v13;
  v15 = sub_1DD63F438();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v133 = (v19 - v20);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  v134 = v22;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v111 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v111 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v138 = &v111 - v33;
  v34 = sub_1DD4F505C(0x65736143657375, 0xE700000000000000, a1);
  if (v35)
  {
    v36 = v35;
    v131 = v34;
    v37 = sub_1DD4F505C(25705, 0xE200000000000000, a1);
    if (v38)
    {
      v130 = v37;
      v132 = v38;
      sub_1DD4F54CC(0x6D617473656D6974, 0xE900000000000070, a1, MEMORY[0x1E69D2AD8], "LearnedDisambiguationMetaData: Expected double for %s", v111);
      if ((v40 & 1) == 0)
      {
        v120 = v39;
        sub_1DD4F54CC(0x6F697463656C6573, 0xE90000000000006ELL, a1, MEMORY[0x1E69D2AC0], "LearnedDisambiguationMetaData: Expected int for %s", v111);
        if ((v42 & 1) == 0)
        {
          v115 = v41;
          v43 = sub_1DD4F505C(0x64616F6C796170, 0xE700000000000000, a1);
          if (v44)
          {
            v114 = v43;
            v116 = v44;
            v45 = OUTLINED_FUNCTION_17_28();
            sub_1DD59B9EC(v45, 0xE700000000000000, a1);
            if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
            {

              sub_1DD390754(v14, &qword_1ECCDC448, &qword_1DD655800);
LABEL_26:
              if (qword_1ECCDB0E0 != -1)
              {
                OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
              }

              v71 = sub_1DD63F9F8();
              __swift_project_value_buffer(v71, qword_1ECD0DDF0);
              v72 = sub_1DD63F9D8();
              v73 = sub_1DD640378();
              if (os_log_type_enabled(v72, v73))
              {
                v74 = OUTLINED_FUNCTION_54();
                v75 = swift_slowAlloc();
                v139 = v75;
                *v74 = 136315138;
                v76 = OUTLINED_FUNCTION_17_28();
                *(v74 + 4) = sub_1DD39565C(v76, 0xE700000000000000, v77);
                _os_log_impl(&dword_1DD38D000, v72, v73, "LearnedDisambiguation: Could not extract %s", v74, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v75);
                OUTLINED_FUNCTION_0_1();
                OUTLINED_FUNCTION_0_1();
              }

              goto LABEL_11;
            }

            v51 = v138;
            v128 = *(v17 + 32);
            v129 = v17 + 32;
            v128();
            v126 = *(v17 + 16);
            v127 = v17 + 16;
            v126(v31, v51, v15);
            v52 = OUTLINED_FUNCTION_5_9();
            v124 = v54;
            v125 = v53;
            if ((v54)(v52) != *MEMORY[0x1E69D2AD0])
            {
              v69 = *(v17 + 8);
              v69(v51, v15);

              v70 = OUTLINED_FUNCTION_5_9();
              (v69)(v70);
              goto LABEL_26;
            }

            v112 = a2;
            v55 = OUTLINED_FUNCTION_5_9();
            v119 = v56;
            v118 = v57;
            v57(v55);
            v58 = *v31;
            v59 = *(*v31 + 16);
            v113 = v17;
            if (v59)
            {
              v60 = (*(v17 + 80) + 32) & ~*(v17 + 80);
              v111 = v58;
              v61 = &v58[v60];
              v123 = *(v17 + 72);
              v122 = *MEMORY[0x1E69D2AC0];
              v117 = (v17 + 8);
              v62 = MEMORY[0x1E69E7CC0];
              do
              {
                v126(v28, v61, v15);
                (v128)(v25, v28, v15);
                v63 = v124(v25, v15);
                if (v63 == v122)
                {
                  OUTLINED_FUNCTION_22_20();
                  v64();
                  v121 = *v25;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1DD3C018C();
                    v62 = v67;
                  }

                  v65 = *(v62 + 16);
                  v66 = v62;
                  if (v65 >= *(v62 + 24) >> 1)
                  {
                    sub_1DD3C018C();
                    v66 = v68;
                  }

                  *(v66 + 16) = v65 + 1;
                  v62 = v66;
                  *(v66 + 4 * v65 + 32) = v121;
                }

                else
                {
                  (*v117)(v25, v15);
                }

                v61 += v123;
                --v59;
              }

              while (v59);
              v78 = *(v111 + 2);
            }

            else
            {
              v78 = 0;
              v62 = MEMORY[0x1E69E7CC0];
            }

            v79 = *(v62 + 16);

            a2 = v112;
            if (v79 != v78)
            {

              if (qword_1ECCDB0E0 != -1)
              {
                OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
              }

              v82 = sub_1DD63F9F8();
              __swift_project_value_buffer(v82, qword_1ECD0DDF0);
              v83 = sub_1DD63F9D8();
              v84 = sub_1DD640378();
              v85 = os_log_type_enabled(v83, v84);
              v86 = v138;
              if (v85)
              {
                v87 = swift_slowAlloc();
                *v87 = 0;
                _os_log_impl(&dword_1DD38D000, v83, v84, "LearnedDisambiguation: Could not extract convert choices as UInt32", v87, 2u);
                OUTLINED_FUNCTION_0_1();
              }

              (*(v113 + 8))(v86, v15);
              goto LABEL_11;
            }

            v123 = v62;
            sub_1DD59B9EC(0x61566C616E676973, 0xEC0000007365756CLL, a1);

            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v15);
            v81 = v113;
            if (EnumTagSinglePayload == 1)
            {
              sub_1DD390754(v11, &qword_1ECCDC448, &qword_1DD655800);
            }

            else
            {
              v88 = v134;
              (v128)(v134, v11, v15);
              v126(v133, v88, v15);
              v89 = OUTLINED_FUNCTION_5_9();
              if ((v124)(v89) == *MEMORY[0x1E69D2AE0])
              {
                OUTLINED_FUNCTION_5_9();
                OUTLINED_FUNCTION_22_20();
                v90();
                v91 = v88;
                OUTLINED_FUNCTION_6_48(3223670);
                if (v93)
                {
                  v94 = -1;
                }

                else
                {
                  v94 = v92;
                }

                OUTLINED_FUNCTION_6_48(3289206);
                if (v96)
                {
                  v97 = -1;
                }

                else
                {
                  v97 = v95;
                }

                OUTLINED_FUNCTION_6_48(3354742);
                v99 = v98;
                v101 = v100;
                v81 = v113;

                (*(v81 + 8))(v91, v15);
                if (v101)
                {
                  v99 = -1;
                }

                goto LABEL_52;
              }

              v102 = *(v113 + 8);
              v102(v88, v15);
              v103 = OUTLINED_FUNCTION_5_9();
              (v102)(v103);
              v81 = v113;
            }

            v94 = -1;
            v97 = -1;
            v99 = -1;
LABEL_52:
            v104 = v135;
            sub_1DD63CF38();
            (*(v81 + 8))(v138, v15);
            v105 = v130;
            *a2 = v131;
            a2[1] = v36;
            v106 = v132;
            a2[2] = v105;
            a2[3] = v106;
            v107 = type metadata accessor for LearnedDisambiguation(0);
            (*(v136 + 32))(a2 + v107[6], v104, v137);
            *(a2 + v107[7]) = v123;
            *(a2 + v107[8]) = v115;
            v108 = (a2 + v107[9]);
            v109 = v116;
            *v108 = v114;
            v108[1] = v109;
            v110 = (a2 + v107[10]);
            *v110 = v94;
            v110[1] = v97;
            v110[2] = v99;
            OUTLINED_FUNCTION_21_21();
            return __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
          }
        }
      }
    }
  }

LABEL_11:
  v46 = type metadata accessor for LearnedDisambiguation(0);
  v47 = a2;
  v48 = 1;
  v49 = 1;
  return __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
}

uint64_t sub_1DD4F505C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = sub_1DD63F438();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  sub_1DD59B9EC(a1, a2, a3);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1DD390754(v8, &qword_1ECCDC448, &qword_1DD655800);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1ECD0DDF0);

    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640378();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1DD39565C(a1, a2, &v30);
      _os_log_impl(&dword_1DD38D000, v17, v18, "LearnedDisambiguationMetaData: No value for %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
      MEMORY[0x1E12B3DA0](v19, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    v21 = (*(v10 + 88))(v12, v9);
    v22 = *(v10 + 8);
    if (v21 == *MEMORY[0x1E69D2AE8])
    {
      v22(v15, v9);
      (*(v10 + 96))(v12, v9);
      return *v12;
    }

    v22(v12, v9);
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1ECD0DDF0);

    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640378();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1DD39565C(a1, a2, &v30);
      _os_log_impl(&dword_1DD38D000, v25, v26, "LearnedDisambiguationMetaData: Expected string for %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E12B3DA0](v28, -1, -1);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
    }

    v22(v15, v9);
  }

  return 0;
}

void sub_1DD4F54CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, ...)
{
  OUTLINED_FUNCTION_18_4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC448, &qword_1DD655800);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_1DD63F438();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  v24 = OUTLINED_FUNCTION_14_9();
  sub_1DD59B9EC(v24, v25, v10);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1DD390754(v13, &qword_1ECCDC448, &qword_1DD655800);
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
    }

    v26 = sub_1DD63F9F8();
    __swift_project_value_buffer(v26, qword_1ECD0DDF0);
    OUTLINED_FUNCTION_15_2();

    v27 = sub_1DD63F9D8();
    v28 = sub_1DD640378();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_54();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315138;
      v31 = OUTLINED_FUNCTION_14_9();
      *(v29 + 4) = sub_1DD39565C(v31, v32, v33);
      _os_log_impl(&dword_1DD38D000, v27, v28, "LearnedDisambiguationMetaData: No value for %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    v45 = v6;
    (*(v16 + 32))(v23, v13, v14);
    (*(v16 + 16))(v20, v23, v14);
    v34 = (*(v16 + 88))(v20, v14);
    v35 = *(v16 + 8);
    if (v34 == *v8)
    {
      v35(v23, v14);
      (*(v16 + 96))(v20, v14);
    }

    else
    {
      v35(v20, v14);
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
      }

      v36 = sub_1DD63F9F8();
      __swift_project_value_buffer(v36, qword_1ECD0DDF0);
      OUTLINED_FUNCTION_15_2();

      v37 = sub_1DD63F9D8();
      v38 = sub_1DD640378();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = v35;
        v40 = OUTLINED_FUNCTION_54();
        v41 = swift_slowAlloc();
        v46 = v41;
        *v40 = 136315138;
        v42 = OUTLINED_FUNCTION_14_9();
        *(v40 + 4) = sub_1DD39565C(v42, v43, v44);
        _os_log_impl(&dword_1DD38D000, v37, v38, v45, v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v41);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();

        v39(v23, v14);
      }

      else
      {

        v35(v23, v14);
      }
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD4F5968()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v89 = v2;
  sub_1DD63D818();
  OUTLINED_FUNCTION_0();
  v87 = v4;
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v86 = v6 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v85 = (v8 - v9);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_0();
  v96 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v82 - v13;
  v90 = sub_1DD63FC88();
  v15 = v1 + 64;
  v16 = 1 << *(v1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v1 + 64);
  v19 = (v16 + 63) >> 6;
  v93 = *MEMORY[0x1E69D2B58];
  v95 = v1;

  v20 = 0;
  v91 = v19;
  v92 = v1 + 64;
LABEL_4:
  v21 = v20;
  if (!v18)
  {
    goto LABEL_6;
  }

  do
  {
    v22 = v14;
    v23 = v96;
    v20 = v21;
LABEL_10:
    v24 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v25 = v24 | (v20 << 6);
    v26 = *(v95 + 56);
    v27 = (*(v95 + 48) + 16 * v25);
    v29 = *v27;
    v28 = v27[1];
    v30 = sub_1DD63D4F8();
    OUTLINED_FUNCTION_0();
    v32 = v31;
    v34 = v26 + *(v33 + 72) * v25;
    v35 = v94;
    v14 = v22;
    (*(v31 + 16))(&v22[*(v94 + 48)], v34, v30);
    *v22 = v29;
    *(v22 + 1) = v28;
    sub_1DD3DD9B4(v22, v23, &qword_1ECCDBAF8, &qword_1DD643E80);

    v36 = *(v35 + 48);
    v37 = (*(v32 + 88))(v23 + v36, v30);
    if (v37 == v93)
    {
      v38 = v96;
      (*(v32 + 96))(v96 + v36, v30);
      v84 = *(v38 + v36);
      v39 = v85;
      sub_1DD3DD9B4(v22, v85, &qword_1ECCDBAF8, &qword_1DD643E80);
      v40 = *v39;
      v41 = v39[1];
      v42 = v90;
      swift_isUniquelyReferenced_nonNull_native();
      v97 = v42;
      v83 = v40;
      v43 = v41;
      v44 = sub_1DD3978DC();
      v46 = *(v42 + 16);
      v47 = (v45 & 1) == 0;
      v90 = (v46 + v47);
      if (__OFADD__(v46, v47))
      {
LABEL_33:
        __break(1u);
      }

      else
      {
        v48 = v44;
        v49 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
        if (sub_1DD640A08())
        {
          v50 = sub_1DD3978DC();
          if ((v49 & 1) != (v51 & 1))
          {
LABEL_35:
            sub_1DD640D58();
            __break(1u);
            return;
          }

          v48 = v50;
        }

        if (v49)
        {

          v90 = v97;
          *(*(v97 + 56) + 8 * v48) = v84;
          sub_1DD390754(v14, &qword_1ECCDBAF8, &qword_1DD643E80);
LABEL_21:
          v19 = v91;
          v15 = v92;
          (*(v32 + 8))(v85 + *(v94 + 48), v30);
          goto LABEL_4;
        }

        v52 = v97;
        *(v97 + 8 * (v48 >> 6) + 64) |= 1 << v48;
        v53 = (v52[6] + 16 * v48);
        v54 = v84;
        *v53 = v83;
        v53[1] = v43;
        *(v52[7] + 8 * v48) = v54;
        sub_1DD390754(v14, &qword_1ECCDBAF8, &qword_1DD643E80);
        v55 = v52[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (!v56)
        {
          v90 = v52;
          v52[2] = v57;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    sub_1DD390754(v22, &qword_1ECCDBAF8, &qword_1DD643E80);
    (*(v32 + 8))(v96 + v36, v30);
    v21 = v20;
    v19 = v91;
    v15 = v92;
  }

  while (v18);
  while (1)
  {
LABEL_6:
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v20 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v20);
    ++v21;
    if (v18)
    {
      v22 = v14;
      v23 = v96;
      goto LABEL_10;
    }
  }

  v59 = v86;
  v58 = v87;
  v60 = *(v87 + 104);
  v61 = v88;
  v60(v86, *MEMORY[0x1E69D2BD0], v88);
  v62 = sub_1DD63D828();
  v64 = v63;
  v65 = *(v58 + 8);
  v65(v59, v61);
  v66 = v90;
  v67 = sub_1DD59B63C(v62, v64, v90);
  v69 = v68;

  if (v69)
  {
    v70 = -1;
  }

  else
  {
    v70 = v67;
  }

  v96 = v70;
  v60(v59, *MEMORY[0x1E69D2BE0], v61);
  sub_1DD63D828();
  v71 = OUTLINED_FUNCTION_23_22();
  (v65)(v71);
  v72 = sub_1DD59B63C(v67, v64, v66);
  v74 = v73;

  if (v74)
  {
    v75 = -1;
  }

  else
  {
    v75 = v72;
  }

  v60(v59, *MEMORY[0x1E69D2BD8], v61);
  sub_1DD63D828();
  v76 = OUTLINED_FUNCTION_23_22();
  (v65)(v76);
  v77 = sub_1DD59B63C(v72, v64, v66);
  v79 = v78;

  if (v79)
  {
    v80 = -1;
  }

  else
  {
    v80 = v77;
  }

  v81 = v89;
  *v89 = v96;
  v81[1] = v75;
  v81[2] = v80;
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4F5FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1DD63D568();
}

uint64_t sub_1DD4F6100(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v2 = sub_1DD63D7B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD63D558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF28, &qword_1DD655820);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  sub_1DD3DD9B4(v18, &v17 - v11, &qword_1ECCDDF28, &qword_1DD655820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v3 + 32);
    v13(v5, v12, v2);
    sub_1DD4F65A4(&qword_1ECCDDF30, MEMORY[0x1E69D2BB8], MEMORY[0x1E69D2BC0]);
    v14 = swift_allocError();
    v13(v15, v5, v2);
    v20 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
    return sub_1DD6401B8();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818);
    return sub_1DD6401C8();
  }
}

void sub_1DD4F6418(uint64_t a1)
{
  sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    sub_1DD4F64C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD4F64C0()
{
  if (!qword_1ECCDDF18)
  {
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDDF18);
    }
  }
}

uint64_t sub_1DD4F6528(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF20, &qword_1DD655818) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DD4F6100(a1, v4);
}

uint64_t sub_1DD4F65A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD4F65EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
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
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD4F673C(v7, v8, a1, v4);
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
    return sub_1DD4F66E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4F66E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 4 * a3 - 4;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 4 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 4;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4F673C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v77 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v72 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 4 * v8);
        v10 = *(*a3 + 4 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 4 * v11++) >= v12);
          v12 = *(*a3 + 4 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 4 * v16);
                *(v17 + 4 * v16) = *(v17 + 4 * v15);
                *(v17 + 4 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 4 * v8 - 4;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 4 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 4;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v74 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1DD4F6D08((*a3 + 4 * *v64), (*a3 + 4 * *v66), (*a3 + 4 * v67), v75);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v74;
      a4 = v72;
      if (v74 >= v5)
      {
        v77 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD4F6BDC(&v77, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD4F6BDC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD4F6D08((*a3 + 4 * *v9), (*a3 + 4 * *v11), (*a3 + 4 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DD4F6D08(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 4;
  v9 = (a3 - a2) / 4;
  if (v8 < v9)
  {
    sub_1DD3C1BC8(a1, (a2 - a1) / 4, a4);
    v10 = &v4[4 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 4;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 4;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DD3C1BC8(a2, (a3 - a2) / 4, a4);
  v10 = &v4[4 * v9];
LABEL_15:
  v14 = v6 - 4;
  for (v5 -= 4; v10 > v4 && v6 > v7; v5 -= 4)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 4 == v6;
      v6 -= 4;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 4)
    {
      *v5 = v16;
    }

    v10 -= 4;
  }

LABEL_28:
  v17 = (v10 - v4) / 4;
  if (v6 != v4 || v6 >= &v4[4 * v17])
  {
    memmove(v6, v4, 4 * v17);
  }

  return 1;
}

uint64_t sub_1DD4F6EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCE8, &unk_1DD64AF90);
  v7 = OUTLINED_FUNCTION_3(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = sub_1DD63F308();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v15 - v14);
  sub_1DD63F2F8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v17 = *(v12 + 32);
  v17(v16, v9, v10);
  v17(a3, v16, v10);
  v18 = type metadata accessor for LearnedDisambiguationPersistentStorage(0);
  v19 = &a3[*(v18 + 20)];
  *v19 = a1;
  *(v19 + 1) = a2;
  a3[*(v18 + 24)] = 1;
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, v18);
}

uint64_t static LearnedDisambiguationPersistentStorage.all.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v2 = OUTLINED_FUNCTION_3(v1);
  MEMORY[0x1EEE9AC00](v2);
  v63 = (v52 - v3);
  type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v57 = v5;
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD63F0B8();
  OUTLINED_FUNCTION_0();
  v59 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = sub_1DD63F2B8();
  OUTLINED_FUNCTION_0();
  v60 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15_29();
  v22 = sub_1DD63F308();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2();
  v28 = v27 - v26;
  v29 = v62;
  sub_1DD63F2F8();
  if (!v29)
  {
    v55 = v24;
    v56 = v22;
    v61 = v8;
    v62 = v9;
    sub_1DD63F2A8();
    sub_1DD63F268();
    v30 = *(v60 + 8);
    v30(v20, v15);
    v31 = sub_1DD63F298();
    v54 = 0;
    v32 = v28;
    v34 = v31;
    v30(v0, v15);
    v35 = *(v34 + 16);
    if (v35)
    {
      v52[1] = v34;
      v53 = v32;
      OUTLINED_FUNCTION_24_0();
      v38 = v34 + v37;
      v59 = *(v36 + 56);
      v60 = v39;
      v40 = (v36 - 8);
      v15 = MEMORY[0x1E69E7CC0];
      v41 = v58;
      v42 = v62;
      do
      {
        v43 = v36;
        (v60)(v14, v38, v42);
        v44 = sub_1DD63F068();
        v45 = v63;
        sub_1DD4F45AC(v44, v63);
        (*v40)(v14, v42);
        if (__swift_getEnumTagSinglePayload(v45, 1, v41) == 1)
        {
          sub_1DD390754(v45, &qword_1ECCDD880, &qword_1DD652070);
        }

        else
        {
          sub_1DD4F298C(v45, v61);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3C0254();
            v15 = v50;
          }

          v47 = *(v15 + 16);
          v46 = *(v15 + 24);
          if (v47 >= v46 >> 1)
          {
            OUTLINED_FUNCTION_14_0(v46);
            sub_1DD3C0254();
            v15 = v51;
          }

          *(v15 + 16) = v47 + 1;
          OUTLINED_FUNCTION_24_0();
          sub_1DD4F298C(v61, v15 + v48 + *(v49 + 72) * v47);
          v41 = v58;
        }

        v38 += v59;
        --v35;
        v36 = v43;
        v42 = v62;
      }

      while (v35);

      v32 = v53;
    }

    else
    {

      v15 = MEMORY[0x1E69E7CC0];
    }

    (*(v55 + 8))(v32, v56);
  }

  return v15;
}

uint64_t sub_1DD4F75D0(uint64_t a1)
{
  v2 = v1;
  v63[0] = type metadata accessor for LearnedDisambiguationPersistentStorage(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v64 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v63 - v9);
  type metadata accessor for LearnedDisambiguation(0);
  OUTLINED_FUNCTION_0();
  v65 = v12;
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v69 = v14 - v13;
  v15 = sub_1DD63F0B8();
  OUTLINED_FUNCTION_0();
  v63[1] = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = sub_1DD63F328();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v27 = v26 - v25;
  sub_1DD63F2B8();
  OUTLINED_FUNCTION_0();
  v67 = v29;
  v68 = v28;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_4();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v63 - v34;
  sub_1DD4F7CE0(a1);
  (*(v23 + 104))(v27, *MEMORY[0x1E69D2A60], v21);
  sub_1DD63F288();
  v36 = v21;
  v37 = v67;
  (*(v23 + 8))(v27, v36);
  v38 = *(v37 + 8);
  v39 = v32;
  v40 = v68;
  v38(v39);
  v67 = v2;
  v41 = sub_1DD63F298();
  (v38)(v35, v40);
  v42 = *(v41 + 16);
  if (v42)
  {
    OUTLINED_FUNCTION_24_0();
    v64 = v41;
    v45 = v41 + v44;
    v67 = *(v43 + 56);
    v68 = v46;
    v47 = (v43 - 8);
    v48 = MEMORY[0x1E69E7CC0];
    v49 = v66;
    do
    {
      v50 = v43;
      v68(v20, v45, v15);
      v51 = sub_1DD63F068();
      sub_1DD4F45AC(v51, v10);
      (*v47)(v20, v15);
      if (__swift_getEnumTagSinglePayload(v10, 1, v49) == 1)
      {
        sub_1DD390754(v10, &qword_1ECCDD880, &qword_1DD652070);
      }

      else
      {
        sub_1DD4F298C(v10, v69);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD3C0254();
          v48 = v56;
        }

        v53 = *(v48 + 16);
        v52 = *(v48 + 24);
        if (v53 >= v52 >> 1)
        {
          OUTLINED_FUNCTION_14_0(v52);
          sub_1DD3C0254();
          v48 = v57;
        }

        *(v48 + 16) = v53 + 1;
        OUTLINED_FUNCTION_24_0();
        sub_1DD4F298C(v69, v48 + v54 + *(v55 + 72) * v53);
        v49 = v66;
      }

      v45 += v67;
      --v42;
      v43 = v50;
    }

    while (v42);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
  }

  v58 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v58, qword_1ECD0DDF0);

  v59 = sub_1DD63F9D8();
  v60 = sub_1DD640368();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = OUTLINED_FUNCTION_54();
    *v61 = 134217984;
    *(v61 + 4) = *(v48 + 16);

    _os_log_impl(&dword_1DD38D000, v59, v60, "LearnedDisambiguationPersistentStorage: count of entries %ld", v61, 0xCu);
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return v48;
}

uint64_t sub_1DD4F7CE0(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1DD63F2B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1DD63F2A8();
  sub_1DD63F268();
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_1DD4F8830(v1);
  sub_1DD63F258();

  return (v9)(v8, v2);
}

uint64_t sub_1DD4F7E34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v119 = a2;
  v116 = type metadata accessor for LearnedDisambiguationPersistentStorage(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1_4();
  v126 = v6 - v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v111 - v9;
  v127 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v124 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v128 = (v12 - v13);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15_29();
  v115 = sub_1DD63F0B8();
  OUTLINED_FUNCTION_0();
  v129 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1_4();
  v113 = v17 - v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v111 - v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v111 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF50, &unk_1DD6558A8);
  v28 = OUTLINED_FUNCTION_3(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_1_4();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v111 - v33;
  v35 = sub_1DD63F2B8();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2();
  v41 = v40 - v39;
  sub_1DD4F7CE0(a1);
  v118 = v2;
  v59 = sub_1DD63F298();
  v60 = v124;
  v111 = v31;
  v61 = v115;
  (*(v37 + 8))(v41, v35);
  v126 = *(v59 + 16);
  v112 = v34;
  if (v126)
  {
    v62 = v129 + 16;
    OUTLINED_FUNCTION_24_0();
    v125 = v59;
    v122 = v59 + v63;
    v123 = v64;
    (v64)(v26);
    v65 = (v60 + 8);
    v124 = v62;
    v120 = (v62 + 16);
    v121 = v62 - 8;
    for (i = 1; ; ++i)
    {
      v67 = v128;
      if (v126 == i)
      {

        v34 = v112;
        (*v120)(v112, v26, v61);
        v77 = v34;
        v78 = 0;
        goto LABEL_16;
      }

      if (i >= *(v125 + 16))
      {
        break;
      }

      v68 = v129;
      v123(v21, v122 + *(v129 + 72) * i, v61);
      sub_1DD63F098();
      sub_1DD63F098();
      v69 = sub_1DD63CFC8();
      v70 = *v65;
      v71 = v67;
      v72 = v127;
      (*v65)(v71, v127);
      v70(v3, v72);
      v73 = *(v68 + 8);
      if (v69)
      {
        v73(v26, v61);
        (*v120)(v26, v21, v61);
      }

      else
      {
        v73(v21, v61);
      }
    }

    __break(1u);
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
    v42 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v42, qword_1ECD0DDF0);
    OUTLINED_FUNCTION_3_53();
    v43 = v126;
    sub_1DD4F94E4(v118, v126, v44);
    v45 = i;
    v46 = sub_1DD63F9D8();
    v47 = sub_1DD640378();

    v48 = os_log_type_enabled(v46, v47);
    v49 = v119;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v52 = OUTLINED_FUNCTION_62();
      v130[0] = v52;
      *v50 = 136315394;

      OUTLINED_FUNCTION_0_96();
      v54 = sub_1DD4F9544(v43, v53);
      v56 = OUTLINED_FUNCTION_57_0(v54, v55, v130);

      *(v50 + 4) = v56;
      *(v50 + 12) = 2112;
      v57 = i;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 14) = v58;
      *v51 = v58;
      _os_log_impl(&dword_1DD38D000, v46, v47, "LearnedDisambiguationPersistentStorage: Could not query for %s: %@", v50, 0x16u);
      sub_1DD390754(v51, &qword_1ECCDBF90, &qword_1DD6445B0);
      OUTLINED_FUNCTION_0_1();
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      OUTLINED_FUNCTION_0_96();
      sub_1DD4F9544(v43, v74);
    }

    v75 = type metadata accessor for LearnedDisambiguation(0);
    v76 = v49;
    return __swift_storeEnumTagSinglePayload(v76, 1, 1, v75);
  }

  v77 = v34;
  v78 = 1;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v77, v78, 1, v61);
  v79 = v119;
  v80 = v34;
  v81 = v111;
  sub_1DD4F95A8(v34, v111);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, 1, v61);
  v83 = v117;
  v84 = v113;
  v85 = v114;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v81, &qword_1ECCDDF50, &unk_1DD6558A8);
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
    }

    v86 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v86, qword_1ECD0DDF0);
    OUTLINED_FUNCTION_3_53();
    sub_1DD4F94E4(v118, v85, v87);
    v88 = sub_1DD63F9D8();
    v89 = sub_1DD640368();
    v90 = v80;
    if (os_log_type_enabled(v88, v89))
    {
      v91 = OUTLINED_FUNCTION_54();
      v92 = OUTLINED_FUNCTION_62();
      v130[0] = v92;
      *v91 = 136315138;
      v93 = (v85 + *(v116 + 20));
      v94 = *v93;
      v95 = v93[1];

      OUTLINED_FUNCTION_0_96();
      sub_1DD4F9544(v85, v96);
      v97 = sub_1DD39565C(v94, v95, v130);

      *(v91 + 4) = v97;
      _os_log_impl(&dword_1DD38D000, v88, v89, "LearnedDisambiguationPersistentStorage: Could not query for  the most recent entry for  %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      OUTLINED_FUNCTION_0_96();
      sub_1DD4F9544(v85, v108);
    }

    sub_1DD390754(v90, &qword_1ECCDDF50, &unk_1DD6558A8);
    v75 = type metadata accessor for LearnedDisambiguation(0);
    v76 = v79;
    return __swift_storeEnumTagSinglePayload(v76, 1, 1, v75);
  }

  v98 = v129;
  (*(v129 + 32))(v117, v81, v61);
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
  }

  v99 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v99, qword_1ECD0DDF0);
  (*(v98 + 16))(v84, v83, v61);
  v100 = sub_1DD63F9D8();
  v101 = sub_1DD640358();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = OUTLINED_FUNCTION_54();
    v128 = OUTLINED_FUNCTION_62();
    v130[0] = v128;
    *v102 = 136315138;
    sub_1DD63F068();
    sub_1DD63F438();
    sub_1DD63FC68();
    v103 = v61;

    v104 = *(v98 + 8);
    v105 = v104(v84, v61);
    v107 = OUTLINED_FUNCTION_57_0(v105, v106, v130);

    *(v102 + 4) = v107;
    _os_log_impl(&dword_1DD38D000, v100, v101, "LearnedDisambiguationPersistentStorage: found the mostRecentInteraction:  %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v128);
    v79 = v119;
    OUTLINED_FUNCTION_0_1();
    v83 = v117;
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v104 = *(v98 + 8);
    v104(v84, v61);
    v103 = v61;
  }

  v110 = sub_1DD63F068();
  sub_1DD4F45AC(v110, v79);
  v104(v83, v103);
  return sub_1DD390754(v112, &qword_1ECCDDF50, &unk_1DD6558A8);
}

uint64_t sub_1DD4F8830(int a1)
{
  v8 = *(v1 + *(type metadata accessor for LearnedDisambiguationPersistentStorage(0) + 20));

  MEMORY[0x1E12B2260](46, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7668];
  *(v3 + 16) = xmmword_1DD643F90;
  v5 = MEMORY[0x1E69E76D0];
  *(v3 + 56) = v4;
  *(v3 + 64) = v5;
  *(v3 + 32) = a1;
  v6 = sub_1DD63FE08();
  MEMORY[0x1E12B2260](v6);

  return v8;
}

uint64_t sub_1DD4F88F4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for LearnedDisambiguationPersistentStorage(0);
  v3[5] = v4;
  OUTLINED_FUNCTION_3(v4);
  v3[6] = OUTLINED_FUNCTION_10_23();
  v5 = type metadata accessor for LearnedDisambiguation(0);
  v3[7] = v5;
  OUTLINED_FUNCTION_3(v5);
  v3[8] = OUTLINED_FUNCTION_10_23();
  v6 = sub_1DD63F0B8();
  v3[9] = v6;
  OUTLINED_FUNCTION_51(v6);
  v3[10] = v7;
  v3[11] = OUTLINED_FUNCTION_10_23();
  v8 = sub_1DD63F418();
  v3[12] = v8;
  OUTLINED_FUNCTION_51(v8);
  v3[13] = v9;
  v3[14] = OUTLINED_FUNCTION_10_23();
  v10 = sub_1DD63F328();
  v3[15] = v10;
  OUTLINED_FUNCTION_51(v10);
  v3[16] = v11;
  v3[17] = OUTLINED_FUNCTION_10_23();
  v12 = sub_1DD63D9E8();
  v3[18] = v12;
  OUTLINED_FUNCTION_51(v12);
  v3[19] = v13;
  v3[20] = OUTLINED_FUNCTION_10_23();

  return MEMORY[0x1EEE6DFA0](sub_1DD4F8AD4, 0, 0);
}

uint64_t sub_1DD4F8AD4()
{
  v42 = v0;
  v1 = v0[2];
  v2 = (v0[4] + *(v0[5] + 20));
  if (*v1 == *v2 && v1[1] == v2[1])
  {
    v39 = v0[4];
    v40 = v0[5];
    goto LABEL_8;
  }

  if (sub_1DD640CD8())
  {
    v39 = v0[4];
    v40 = v0[5];
LABEL_8:
    v4 = v0[19];
    v5 = v0[20];
    v6 = v0[16];
    v35 = v0[17];
    v36 = v0[15];
    v7 = v0[10];
    v38 = v0[11];
    v37 = v0[9];
    v33 = v0[18];
    v34 = v0[3];
    swift_allocBox();
    v9 = v8;
    sub_1DD63F0A8();

    sub_1DD63F038();
    sub_1DD63F058();

    sub_1DD63DA08();
    v10 = sub_1DD63D9D8();
    (*(v4 + 8))(v5, v33);
    sub_1DD4F8830(v10);
    sub_1DD63F048();
    sub_1DD4F35D8();
    sub_1DD63F078();
    (*(v6 + 16))(v35, v34, v36);
    sub_1DD63F088();
    (*(v7 + 16))(v38, v9, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF48, &qword_1DD6558A0);
    sub_1DD63FC88();
    sub_1DD63F3E8();
    if (*(v39 + *(v40 + 24)) == 1)
    {

      sub_1DD63F3F8();
    }

    else
    {
      sub_1DD63F408();
    }

    (*(v0[13] + 8))(v0[14], v0[12]);

    goto LABEL_17;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_1ECCDB0E0);
  }

  v11 = v0[8];
  v12 = v0[6];
  v13 = v0[4];
  v14 = v0[2];
  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1ECD0DDF0);
  sub_1DD4F94E4(v14, v11, type metadata accessor for LearnedDisambiguation);
  OUTLINED_FUNCTION_3_53();
  sub_1DD4F94E4(v13, v12, v16);
  v17 = sub_1DD63F9D8();
  v18 = sub_1DD640378();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[8];
  v21 = v0[6];
  if (v19)
  {
    v22 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v22 = 136315394;
    v23 = *v20;
    v24 = v20[1];

    OUTLINED_FUNCTION_7_41();
    v25 = sub_1DD39565C(v23, v24, v41);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;

    OUTLINED_FUNCTION_0_96();
    v27 = sub_1DD4F9544(v21, v26);
    v29 = OUTLINED_FUNCTION_57_0(v27, v28, v41);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_1DD38D000, v17, v18, "LearnedDisambiguationPersistentStorage: Ignoring mismatched useCase [%s]!=[%s]", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_0_96();
    sub_1DD4F9544(v21, v30);
    OUTLINED_FUNCTION_7_41();
  }

LABEL_17:

  v31 = v0[1];

  return v31();
}

void sub_1DD4F9070(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1ECD0DDF0);
    v5 = a1;
    oslog = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    sub_1DD39A630(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = a1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1DD38D000, oslog, v6, "LearnedDisambiguationPersistentStorage: Donation failed with %@.", v7, 0xCu);
      sub_1DD390754(v8, &qword_1ECCDBF90, &qword_1DD6445B0);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1ECD0DDF0);
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DD38D000, v12, v13, "LearnedDisambiguationPersistentStorage: Donation succeeded.", v14, 2u);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
    }

    oslog = sub_1DD63F9D8();
    v15 = sub_1DD640368();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      sub_1DD63F0B8();
      swift_projectBox();
      swift_beginAccess();
      sub_1DD63F068();
      swift_endAccess();
      sub_1DD63F438();
      v18 = sub_1DD63FC68();
      v20 = v19;

      v21 = sub_1DD39565C(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1DD38D000, oslog, v15, "LearnedDisambiguationPersistentStorage: Donated learning: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E12B3DA0](v17, -1, -1);
      MEMORY[0x1E12B3DA0](v16, -1, -1);

      return;
    }
  }
}

uint64_t type metadata accessor for LearnedDisambiguationPersistentStorage(uint64_t a1)
{
  result = qword_1ECCDDF38;
  if (!qword_1ECCDDF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4F9460(uint64_t a1)
{
  result = sub_1DD63F308();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD4F94E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD4F9544(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD4F95A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF50, &unk_1DD6558A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4F963C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LearningResult(uint64_t a1)
{
  result = qword_1ECCDDF58;
  if (!qword_1ECCDDF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD4F9720(uint64_t a1)
{
  sub_1DD4F97AC(319);
  if (v1 <= 0x3F)
  {
    sub_1DD4F9804();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD4F97AC(uint64_t a1)
{
  if (!qword_1ECCDDF68)
  {
    type metadata accessor for LearnedDisambiguation(255);
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCDDF68);
    }
  }
}

void sub_1DD4F9804()
{
  if (!qword_1EE163958)
  {
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE163958);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for LearningResult.ResultType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4F9934()
{
  result = qword_1ECCDDF70;
  if (!qword_1ECCDDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDF70);
  }

  return result;
}

uint64_t sub_1DD4F9988(uint64_t a1)
{
  sub_1DD63D118();
  sub_1DD3B7F10();
  sub_1DD640678();

  v1 = sub_1DD63FE58();
  v3 = v2;

  v4 = v1 == 0x74615F6564 && v3 == 0xE500000000000000;
  if (v4 || (OUTLINED_FUNCTION_0_97(0x74615F6564) & 1) != 0 || (v1 == 0x65625F6C6ELL ? (v5 = v3 == 0xE500000000000000) : (v5 = 0), v5 || (OUTLINED_FUNCTION_0_97(0x65625F6C6ELL) & 1) != 0 || (v1 == 0x65625F7266 ? (v6 = v3 == 0xE500000000000000) : (v6 = 0), v6 || (OUTLINED_FUNCTION_0_97(0x65625F7266) & 1) != 0 || (v1 == 0x72665F7266 ? (v7 = v3 == 0xE500000000000000) : (v7 = 0), v7 || (OUTLINED_FUNCTION_0_97(0x72665F7266) & 1) != 0 || (v1 == 0x65645F6564 ? (v8 = v3 == 0xE500000000000000) : (v8 = 0), v8 || (OUTLINED_FUNCTION_0_97(0x65645F6564) & 1) != 0 || (v1 == 0x6C702D6C70 ? (v9 = v3 == 0xE500000000000000) : (v9 = 0), v9 || (OUTLINED_FUNCTION_0_97(0x6C702D6C70) & 1) != 0 || (v1 == 0x75725F7572 ? (v10 = v3 == 0xE500000000000000) : (v10 = 0), v10 || (OUTLINED_FUNCTION_0_97(0x75725F7572) & 1) != 0 || (v1 == 0x68635F6564 ? (v11 = v3 == 0xE500000000000000) : (v11 = 0), v11 || (OUTLINED_FUNCTION_0_97(0x68635F6564) & 1) != 0 || (v1 == 0x68635F7266 ? (v12 = v3 == 0xE500000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_0_97(0x68635F7266) & 1) != 0 || (v1 == 0x68635F7469 ? (v13 = v3 == 0xE500000000000000) : (v13 = 0), v13 || (OUTLINED_FUNCTION_0_97(0x68635F7469) & 1) != 0 || (v1 == 0x65735F7673 ? (v14 = v3 == 0xE500000000000000) : (v14 = 0), v14)))))))))))
  {

    v15 = 1;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_0_97(0x65735F7673);
  }

  return v15 & 1;
}

uint64_t sub_1DD4F9BB8(uint64_t a1)
{
  sub_1DD63D118();
  sub_1DD3B52B8();
  v1 = sub_1DD3B530C();
  OUTLINED_FUNCTION_69(v1, MEMORY[0x1E69E6158], v2, v3, v4, v5, v6, v7, 26746);
  v8 = sub_1DD63FD48();

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v17 = sub_1DD63D118();
    OUTLINED_FUNCTION_69(v17, MEMORY[0x1E69E6158], v10, v11, v12, v13, v14, v15, 6649209);
    v9 = sub_1DD63FD48();
  }

  return v9 & 1;
}

uint64_t sub_1DD4F9C90(uint64_t a1)
{
  sub_1DD63D118();
  sub_1DD3B52B8();
  v1 = sub_1DD3B530C();
  OUTLINED_FUNCTION_69(v1, MEMORY[0x1E69E6158], v2, v3, v1, v4, v5, v6, 24938);
  v7 = sub_1DD63FD48();

  return v7 & 1;
}

uint64_t sub_1DD4F9D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657669727261 && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x747261706564 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

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

uint64_t sub_1DD4F9E34(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x657669727261;
  }

  return 0x747261706564;
}

uint64_t sub_1DD4F9E84(uint64_t a1)
{
  v2 = sub_1DD4FA438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4F9EC0(uint64_t a1)
{
  v2 = sub_1DD4FA438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4F9F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4F9D24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4F9F2C(uint64_t a1)
{
  v2 = sub_1DD4FA390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4F9F68(uint64_t a1)
{
  v2 = sub_1DD4FA390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4F9FA4(uint64_t a1)
{
  v2 = sub_1DD4FA3E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4F9FE0(uint64_t a1)
{
  v2 = sub_1DD4FA3E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4FA01C(uint64_t a1)
{
  v2 = sub_1DD4FA48C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FA058(uint64_t a1)
{
  v2 = sub_1DD4FA48C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.Event.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF78, &qword_1DD655960);
  OUTLINED_FUNCTION_0();
  v33 = v4;
  v34 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF80, &qword_1DD655968);
  OUTLINED_FUNCTION_0();
  v30 = v8;
  v31 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v29 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF88, &qword_1DD655970);
  OUTLINED_FUNCTION_0();
  v27 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDF90, &qword_1DD655978);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FA390();
  sub_1DD640EF8();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_1DD4FA438();
      v15 = v29;
      OUTLINED_FUNCTION_52_0(&_s5EventO16ArriveCodingKeysON, &v36);
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_1DD4FA3E4();
      v15 = v32;
      OUTLINED_FUNCTION_52_0(&_s5EventO16DepartCodingKeysON, &v37);
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_1DD4FA48C();
    OUTLINED_FUNCTION_52_0(&_s5EventO17UnknownCodingKeysON, &v35);
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_1DD4FA390()
{
  result = qword_1ECCDDF98;
  if (!qword_1ECCDDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDF98);
  }

  return result;
}

unint64_t sub_1DD4FA3E4()
{
  result = qword_1ECCDDFA0;
  if (!qword_1ECCDDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFA0);
  }

  return result;
}

unint64_t sub_1DD4FA438()
{
  result = qword_1ECCDDFA8;
  if (!qword_1ECCDDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFA8);
  }

  return result;
}

unint64_t sub_1DD4FA48C()
{
  result = qword_1ECCDDFB0;
  if (!qword_1ECCDDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFB0);
  }

  return result;
}

uint64_t Location.Event.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t Location.Event.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v55 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFB8, &qword_1DD655980);
  OUTLINED_FUNCTION_0();
  v56 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFC0, &qword_1DD655988);
  OUTLINED_FUNCTION_0();
  v53 = v7;
  v54 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFC8, &qword_1DD655990);
  OUTLINED_FUNCTION_0();
  v52 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDFD0, &qword_1DD655998);
  OUTLINED_FUNCTION_0();
  v57 = v17;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FA390();
  v21 = v60;
  sub_1DD640ED8();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v11;
  v50 = v15;
  v51 = v10;
  v23 = v58;
  v22 = v59;
  v60 = a1;
  sub_1DD640B98();
  result = sub_1DD418088();
  if (v26 == v27 >> 1)
  {
    goto LABEL_9;
  }

  v48 = 0;
  if (v26 >= (v27 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v28) = *(v25 + v26);
    sub_1DD41805C();
    v30 = v29;
    v32 = v31;
    swift_unknownObjectRelease();
    v33 = v30 == v32 >> 1;
    v34 = v56;
    if (!v33)
    {
LABEL_9:
      v39 = sub_1DD640938();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0);
      *v41 = &type metadata for Location.Event;
      sub_1DD640AC8();
      sub_1DD640928();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v20, v16);
      a1 = v60;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v28)
    {
      if (v28 == 1)
      {
        v62[0] = 1;
        sub_1DD4FA438();
        v35 = v51;
        OUTLINED_FUNCTION_104(&_s5EventO16ArriveCodingKeysON, v62);
        v36 = v55;
        v37 = v16;
        v38 = v57;
        swift_unknownObjectRelease();
        (*(v53 + 8))(v35, v54);
        (*(v38 + 8))(v20, v37);
      }

      else
      {
        LODWORD(v54) = v28;
        v62[1] = 2;
        sub_1DD4FA3E4();
        v43 = v48;
        sub_1DD640AB8();
        v36 = v55;
        v28 = v16;
        v44 = v57;
        if (v43)
        {
          (*(v57 + 8))(v20, v28);
          swift_unknownObjectRelease();
          a1 = v60;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v34 + 8))(v23, v22);
        (*(v44 + 8))(v20, v28);
        LOBYTE(v28) = v54;
      }
    }

    else
    {
      v61 = 0;
      sub_1DD4FA48C();
      v42 = v50;
      OUTLINED_FUNCTION_104(&_s5EventO17UnknownCodingKeysON, &v61);
      swift_unknownObjectRelease();
      (*(v52 + 8))(v42, v49);
      v45 = OUTLINED_FUNCTION_86_1();
      v46(v45);
      v36 = v55;
    }

    *v36 = v28;
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  return result;
}

unint64_t sub_1DD4FAB48()
{
  result = qword_1ECCDDFD8;
  if (!qword_1ECCDDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFD8);
  }

  return result;
}

_BYTE *sub_1DD4FABAC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4FACBC()
{
  result = qword_1ECCDDFE0;
  if (!qword_1ECCDDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFE0);
  }

  return result;
}

unint64_t sub_1DD4FAD14()
{
  result = qword_1ECCDDFE8;
  if (!qword_1ECCDDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFE8);
  }

  return result;
}

unint64_t sub_1DD4FAD6C()
{
  result = qword_1ECCDDFF0;
  if (!qword_1ECCDDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFF0);
  }

  return result;
}

unint64_t sub_1DD4FADC4()
{
  result = qword_1ECCDDFF8;
  if (!qword_1ECCDDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDDFF8);
  }

  return result;
}

unint64_t sub_1DD4FAE1C()
{
  result = qword_1ECCDE000;
  if (!qword_1ECCDE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE000);
  }

  return result;
}

unint64_t sub_1DD4FAE74()
{
  result = qword_1ECCDE008;
  if (!qword_1ECCDE008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE008);
  }

  return result;
}

unint64_t sub_1DD4FAECC()
{
  result = qword_1ECCDE010;
  if (!qword_1ECCDE010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE010);
  }

  return result;
}

unint64_t sub_1DD4FAF24()
{
  result = qword_1ECCDE018;
  if (!qword_1ECCDE018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE018);
  }

  return result;
}

unint64_t sub_1DD4FAF7C()
{
  result = qword_1ECCDE020;
  if (!qword_1ECCDE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE020);
  }

  return result;
}

uint64_t sub_1DD4FAFF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7496035 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD4FB0BC(char a1)
{
  if (a1)
  {
    return 7496035;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1DD4FB0EC(uint64_t a1)
{
  v2 = sub_1DD4FB558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FB128(uint64_t a1)
{
  v2 = sub_1DD4FB558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4FB16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4FAFF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4FB194(uint64_t a1)
{
  v2 = sub_1DD4FB504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FB1D0(uint64_t a1)
{
  v2 = sub_1DD4FB504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD4FB20C(uint64_t a1)
{
  v2 = sub_1DD4FB5AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FB248(uint64_t a1)
{
  v2 = sub_1DD4FB5AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.MobileSpace.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE028, &qword_1DD655DD0);
  OUTLINED_FUNCTION_0();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE030, &qword_1DD655DD8);
  OUTLINED_FUNCTION_0();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE038, &qword_1DD655DE0);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FB504();
  sub_1DD640EF8();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1DD4FB558();
    v20 = v24;
    sub_1DD640BB8();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1DD4FB5AC();
    sub_1DD640BB8();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_1DD4FB504()
{
  result = qword_1ECCDE040;
  if (!qword_1ECCDE040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE040);
  }

  return result;
}

unint64_t sub_1DD4FB558()
{
  result = qword_1ECCDE048;
  if (!qword_1ECCDE048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE048);
  }

  return result;
}

unint64_t sub_1DD4FB5AC()
{
  result = qword_1ECCDE050;
  if (!qword_1ECCDE050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE050);
  }

  return result;
}

uint64_t Location.MobileSpace.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

uint64_t Location.MobileSpace.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE058, &qword_1DD655DE8);
  OUTLINED_FUNCTION_0();
  v40 = v3;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE060, &qword_1DD655DF0);
  OUTLINED_FUNCTION_0();
  v39 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE068, &unk_1DD655DF8);
  OUTLINED_FUNCTION_0();
  v42 = v13;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4FB504();
  v17 = v44;
  sub_1DD640ED8();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_1DD640B98();
  result = sub_1DD418088();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_1DD640938();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0);
    *v34 = &type metadata for Location.MobileSpace;
    sub_1DD640AC8();
    sub_1DD640928();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_1DD41805C();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_1DD4FB558();
      v29 = v6;
      OUTLINED_FUNCTION_2_62(&_s11MobileSpaceO13CarCodingKeysON, &v47);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_1DD4FB5AC();
      v35 = v38;
      OUTLINED_FUNCTION_2_62(&_s11MobileSpaceO17UnknownCodingKeysON, &v46);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

unint64_t sub_1DD4FBB24()
{
  result = qword_1ECCDE070;
  if (!qword_1ECCDE070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE070);
  }

  return result;
}

_BYTE *sub_1DD4FBB88(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4FBC88()
{
  result = qword_1ECCDE078;
  if (!qword_1ECCDE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE078);
  }

  return result;
}

unint64_t sub_1DD4FBCE0()
{
  result = qword_1ECCDE080;
  if (!qword_1ECCDE080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE080);
  }

  return result;
}

unint64_t sub_1DD4FBD38()
{
  result = qword_1ECCDE088;
  if (!qword_1ECCDE088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE088);
  }

  return result;
}

unint64_t sub_1DD4FBD90()
{
  result = qword_1ECCDE090;
  if (!qword_1ECCDE090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE090);
  }

  return result;
}

unint64_t sub_1DD4FBDE8()
{
  result = qword_1ECCDE098;
  if (!qword_1ECCDE098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE098);
  }

  return result;
}

unint64_t sub_1DD4FBE40()
{
  result = qword_1ECCDE0A0;
  if (!qword_1ECCDE0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0A0);
  }

  return result;
}

unint64_t sub_1DD4FBE98()
{
  result = qword_1ECCDE0A8;
  if (!qword_1ECCDE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDE0A8);
  }

  return result;
}

void *sub_1DD4FBEF0()
{
  OUTLINED_FUNCTION_9_1();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0C0, &qword_1DD656160);
    v2 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_98();
  OUTLINED_FUNCTION_8_42();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  while (v5)
  {
    v10 = v9;
LABEL_10:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_4_50();
    v13 = *v11;
    v12 = v11[1];

    swift_dynamicCast();
    sub_1DD400AE4(&v24, v26);
    sub_1DD400AE4(v26, v27);
    sub_1DD400AE4(v27, &v25);
    result = sub_1DD3978DC();
    v14 = result;
    if (v15)
    {
      OUTLINED_FUNCTION_6_49();
      *v16 = v13;
      v16[1] = v12;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = sub_1DD400AE4(&v25, v17);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_9_38();
      *(v2 + v18 + 64) |= v19;
      OUTLINED_FUNCTION_6_49();
      *v20 = v13;
      v20[1] = v12;
      result = sub_1DD400AE4(&v25, (v2[7] + 32 * v14));
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_18;
      }

      v2[2] = v23;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v5 = *(v0 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_1DD4FC0F0()
{
  OUTLINED_FUNCTION_9_1();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0B8, &qword_1DD656158);
    v2 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_98();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (v6)
  {
LABEL_11:
    while (1)
    {
      OUTLINED_FUNCTION_4_50();
      v13 = *v11;
      v12 = v11[1];
      sub_1DD395720(v15 + 32 * v14, v36);
      *&v35 = v13;
      *(&v35 + 1) = v12;
      v33[2] = v35;
      v34[0] = v36[0];
      v34[1] = v36[1];
      v33[0] = v35;

      swift_dynamicCast();
      sub_1DD400AE4(v34, v28);
      v29 = v25;
      v30 = v26;
      v31 = v27;
      sub_1DD400AE4(v28, v32);
      v25 = v29;
      v26 = v30;
      v27 = v31;
      sub_1DD400AE4(v32, v33);
      v16 = sub_1DD640828() & ~(-1 << *(v2 + 32));
      if (((-1 << v16) & ~*(v8 + 8 * (v16 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_5_53();
LABEL_20:
      OUTLINED_FUNCTION_2_63();
      *(v8 + v21) |= v22;
      v24 = *(v2 + 48) + 40 * v23;
      *v24 = v25;
      *(v24 + 16) = v26;
      *(v24 + 32) = v27;
      sub_1DD400AE4(v33, (*(v2 + 56) + 32 * v23));
      ++*(v2 + 16);
    }

    OUTLINED_FUNCTION_4_3();
    while (++v17 != v19 || (v18 & 1) == 0)
    {
      v20 = v17 == v19;
      if (v17 == v19)
      {
        v17 = 0;
      }

      v18 |= v20;
      if (*(v8 + 8 * v17) != -1)
      {
        OUTLINED_FUNCTION_8_41();
        goto LABEL_20;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      ++v9;
      if (*(v0 + 64 + 8 * v10))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1DD4FC360()
{
  OUTLINED_FUNCTION_9_1();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCE10, &qword_1DD64D240);
    v2 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_98();
  OUTLINED_FUNCTION_8_42();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v5 &= v5 - 1;
    OUTLINED_FUNCTION_4_50();
    v12 = *v10;
    v11 = v10[1];
    v15 = *(v14 + 8 * v13);

    v16 = v15;
    v17 = sub_1DD3978DC();
    if (v18)
    {
      OUTLINED_FUNCTION_6_49();
      *v19 = v12;
      v19[1] = v11;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v16;

      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_9_38();
      *(v2 + v22 + 64) |= v23;
      OUTLINED_FUNCTION_6_49();
      *v24 = v12;
      v24[1] = v11;
      *(v2[7] + 8 * v17) = v16;
      v25 = v2[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_18;
      }

      v2[2] = v27;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v5 = *(v0 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1DD4FC508()
{
  OUTLINED_FUNCTION_9_1();
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0B8, &qword_1DD656158);
    v2 = OUTLINED_FUNCTION_1_74();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  OUTLINED_FUNCTION_0_98();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  v9 = 0;
  if (v6)
  {
LABEL_11:
    while (1)
    {
      OUTLINED_FUNCTION_4_50();
      v12 = v11[1];
      *&v30[0] = *v11;
      *(&v30[0] + 1) = v12;

      swift_dynamicCast();
      swift_dynamicCast();
      v26 = v22;
      v27 = v23;
      v28 = v24;
      sub_1DD400AE4(&v25, v29);
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_1DD400AE4(v29, v30);
      v13 = sub_1DD640828() & ~(-1 << *(v2 + 32));
      if (((-1 << v13) & ~*(v8 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_5_53();
LABEL_20:
      OUTLINED_FUNCTION_2_63();
      *(v8 + v18) |= v19;
      v21 = *(v2 + 48) + 40 * v20;
      *v21 = v22;
      *(v21 + 16) = v23;
      *(v21 + 32) = v24;
      sub_1DD400AE4(v30, (*(v2 + 56) + 32 * v20));
      ++*(v2 + 16);
    }

    OUTLINED_FUNCTION_4_3();
    while (++v14 != v16 || (v15 & 1) == 0)
    {
      v17 = v14 == v16;
      if (v14 == v16)
      {
        v14 = 0;
      }

      v15 |= v17;
      if (*(v8 + 8 * v14) != -1)
      {
        OUTLINED_FUNCTION_8_41();
        goto LABEL_20;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      ++v9;
      if (*(v0 + 64 + 8 * v10))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
}

INSpatialEventTrigger_optional __swiftcall Location.toINSpatialEventTrigger(withPlacemarkName:)(Swift::String_optional withPlacemarkName)
{
  object = withPlacemarkName.value._object;
  countAndFlagsBits = withPlacemarkName.value._countAndFlagsBits;
  memcpy(__dst, v1, 0x2B0uLL);
  v4 = *(v1 + 688);
  v5 = *(v1 + 689);
  *v12 = *(v1 + 690);
  *&v12[14] = *(v1 + 704);
  __dst[688] = v4;
  __dst[689] = v5;
  v14 = Location.toCLPlacemark()();
  if (v14.value.super.isa)
  {
    isa = v14.value.super.isa;
    if (object)
    {
      v7._countAndFlagsBits = countAndFlagsBits;
      v7._object = object;
      v8 = CLPlacemark.withOverriddenName(_:)(v7).super.isa;
      v9 = v8;
    }

    else
    {
      v9 = 0;
      v8 = v14.value.super.isa;
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E696EA48]) initWithPlacemark:v8 event:qword_1DD656168[v4]];
  }

  else if (v5 == 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E696EA48]) initWithMobileSpace:v5 & 1 event:qword_1DD656168[v4]];
  }

  v14.value.super.isa = v10;
  return *&v14.value.super.isa;
}

CLPlacemark_optional __swiftcall Location.toCLPlacemark()()
{
  v55 = *(v1 + 11);
  v59 = *(v1 + 24);
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v61 = *(v1 + 32);
  v62 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  v52 = *(v1 + 512);
  v53 = *(v1 + 536);
  v54 = *(v1 + 72);
  v56 = *(v1 + 520);
  v57 = *(v1 + 544);
  v63 = *(v1 + 608);
  v8 = *(v1 + 616);
  v58 = *(v1 + 648);
  v9 = *(v1 + 704);
  v60 = *(v1 + 656);
  if (v9 >> 60 == 15 || (v10 = *(v1 + 696), sub_1DD4FCE10(), sub_1DD3D01B4(v10, v9), (v11 = sub_1DD4FCD90(v10, v9)) == 0))
  {
    if (!v5 || (, v18 = sub_1DD4FCD30(v4, v5), (v0 & 1) != 0) || (v19 = *&v18, , v20 = sub_1DD4FCD30(v7, v6), (v0 & 1) != 0))
    {
      isa = 0;
      goto LABEL_11;
    }

    v51 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v19 longitude:*&v20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD270, &qword_1DD64F1A0);
    inited = swift_initStackObject();
    v23 = inited;
    *(inited + 16) = xmmword_1DD652A50;
    *(inited + 32) = 0x6574617453;
    *(inited + 40) = 0xE500000000000000;
    v24 = MEMORY[0x1E69E6158];
    if (v3)
    {
      v25 = v2;
    }

    else
    {
      v25 = 0;
    }

    v26 = 0xE000000000000000;
    if (v3)
    {
      v27 = v3;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    *(inited + 48) = v25;
    *(inited + 56) = v27;
    *(inited + 72) = v24;
    *(inited + 80) = 2037672259;
    v28 = v54;
    if (v62)
    {
      v29 = v62;
    }

    else
    {
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = v28;
    *(inited + 104) = v29;
    *(inited + 120) = v24;
    *(inited + 128) = 1701667150;
    v30 = v63;
    if (v8)
    {
      v31 = v8;
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
    }

    *(inited + 136) = 0xE400000000000000;
    *(inited + 144) = v30;
    *(inited + 152) = v31;
    *(inited + 168) = v24;
    strcpy((inited + 176), "Thoroughfare");
    *(inited + 189) = 0;
    *(inited + 190) = -5120;
    if (v56 >= 2)
    {

      v26 = v56;
      v34 = v60;
      v33 = v61;
      v35 = v57;
      v32 = v52;
    }

    else
    {
      v32 = 0;
      v34 = v60;
      v33 = v61;
      v35 = v57;
    }

    v36 = 0;
    v23[24] = v32;
    v23[25] = v26;
    v23[27] = v24;
    v23[28] = 0x6F726F6854627553;
    v23[29] = 0xEF65726166686775;
    v37 = 0xE000000000000000;
    if (v56 != 1 && v35)
    {

      v36 = v53;
      v37 = v38;
    }

    v23[30] = v36;
    v23[31] = v37;
    v23[33] = v24;
    v23[34] = 0xD000000000000015;
    v39 = v58;
    if (v34)
    {
      v40 = v34;
    }

    else
    {
      v39 = 0;
      v40 = 0xE000000000000000;
    }

    v23[35] = 0x80000001DD66EDD0;
    v23[36] = v39;
    v23[37] = v40;
    v23[39] = v24;
    v23[40] = 5261658;
    v41 = v59;
    if (v33)
    {
      v42 = v33;
    }

    else
    {
      v41 = 0;
      v42 = 0xE000000000000000;
    }

    v23[41] = 0xE300000000000000;
    v23[42] = v41;
    v23[43] = v42;
    v23[45] = v24;
    v23[46] = 0x437972746E756F43;
    v23[47] = 0xEB0000000065646FLL;
    if (v55 == 4)
    {
      v43 = v23 + 48;
      v23[51] = v24;
    }

    else
    {
      v44 = Country.Value.rawValue.getter();
      v43 = v23 + 48;
      v23[51] = v24;
      if (v45)
      {
        *v43 = v44;
LABEL_41:
        v23[49] = v45;

        sub_1DD63FC88();
        v46 = v51;
        sub_1DD4FC0F0();
        v48 = v47;

        v49 = objc_allocWithZone(MEMORY[0x1E695FC20]);
        sub_1DD3FE5F0(v51, v48, 0, 0);
        isa = v50;

        goto LABEL_11;
      }
    }

    *v43 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_41;
  }

  v13 = v11;
  v14 = [objc_opt_self() placemarkWithGEOMapItem_];
  isa = v14;
  if (v8 && v14)
  {
    v16 = v14;
    v17._countAndFlagsBits = v63;
    v17._object = v8;
    isa = CLPlacemark.withOverriddenName(_:)(v17).super.isa;
  }

LABEL_11:
  v21 = isa;
  result.value._internal = v0;
  result.value.super.isa = v21;
  result.is_nil = v12;
  return result;
}

uint64_t sub_1DD4FCD30(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_1DD4FCEC0(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id sub_1DD4FCD90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1DD63CF08();
    sub_1DD3AD77C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() mapItemStorageForSerializedMapItemStorage_];

  return v5;
}

unint64_t sub_1DD4FCE10()
{
  result = qword_1ECCDE0B0;
  if (!qword_1ECCDE0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECCDE0B0);
  }

  return result;
}

_BYTE *sub_1DD4FCE54@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_1DD4FCEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_1DD6408A8();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t sub_1DD4FCFD4()
{
  if (*(v0 + 640))
  {
    v2 = *(v0 + 632);
    goto LABEL_83;
  }

  v78 = *(v0 + 11);
  v79 = *(v0 + 32);
  v3 = *(v0 + 56);
  v76 = *(v0 + 48);
  v77 = *(v0 + 24);
  v4 = *(v0 + 80);
  v5 = *(v0 + 416);
  v73 = *(v0 + 512);
  v74 = *(v0 + 72);
  v6 = *(v0 + 520);
  v72 = *(v0 + 536);
  v7 = *(v0 + 544);
  v8 = *(v0 + 553);
  v80 = *(v0 + 600);
  v75 = *(v0 + 648);
  v9 = *(v0 + 656);
  if (v5)
  {
    if (v5 == 1)
    {
LABEL_5:
      v10 = MEMORY[0x1E69E7CC0];
      goto LABEL_12;
    }

    v0 = *(v0 + 408);
  }

  else
  {
    v5 = *(v0 + 432);
    if (v5)
    {
      v0 = *(v0 + 424);
    }

    else
    {
      v5 = *(v0 + 456);
      if (v5)
      {
        v0 = *(v0 + 448);
      }

      else
      {
        v5 = *(v0 + 472);
        if (v5)
        {
          v0 = *(v0 + 464);
        }

        else
        {
          v5 = *(v0 + 496);
          if (!v5)
          {
            goto LABEL_5;
          }

          v0 = *(v0 + 488);
        }
      }
    }
  }

  sub_1DD3BE2A4();
  v10 = v11;
  v1 = *(v11 + 16);
  v12 = v1 + 1;
  if (v1 >= *(v11 + 24) >> 1)
  {
    sub_1DD3BE2A4();
    v12 = v1 + 1;
    v10 = v52;
  }

  *(v10 + 16) = v12;
  v13 = v10 + 16 * v1;
  *(v13 + 32) = v0;
  *(v13 + 40) = v5;
LABEL_12:
  if (v6 != 1)
  {
    if (v7)
    {

      sub_1DD3BE2A4();
      v15 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_14_0(v16);
        sub_1DD3BE2A4();
        v15 = v67;
      }

      *(v15 + 16) = v17 + 1;
      v18 = v15 + 16 * v17;
      *(v18 + 32) = v72;
      *(v18 + 40) = v7;
      if (!v6)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (!v6)
      {
LABEL_24:
        if ((v8 & 0xFF00) != 0x900)
        {
          v22 = StreetType.Value.rawValue.getter();
          v24 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_3_54();
            v15 = v70;
          }

          v25 = *(v15 + 16);
          if (v25 >= *(v15 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v15 = v71;
          }

          *(v15 + 16) = v25 + 1;
          v26 = v15 + 16 * v25;
          *(v26 + 32) = v22;
          *(v26 + 40) = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        sub_1DD4477A4();
        v0 = sub_1DD63FD58();
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_23();
          v10 = v61;
        }

        v1 = *(v10 + 16);
        if (v1 >= *(v10 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v10 = v62;
        }

        *(v10 + 16) = v1 + 1;
        v29 = v10 + 16 * v1;
        *(v29 + 32) = v0;
        *(v29 + 40) = v28;
        goto LABEL_35;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_54();
      v15 = v68;
    }

    v20 = *(v15 + 16);
    v19 = *(v15 + 24);
    if (v20 >= v19 >> 1)
    {
      OUTLINED_FUNCTION_14_0(v19);
      sub_1DD3BE2A4();
      v15 = v69;
    }

    *(v15 + 16) = v20 + 1;
    v21 = v15 + 16 * v20;
    *(v21 + 32) = v73;
    *(v21 + 40) = v6;
    goto LABEL_24;
  }

LABEL_35:
  if (v4)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v53;
    }

    OUTLINED_FUNCTION_2_64();
    if (v31)
    {
      OUTLINED_FUNCTION_14_0(v30);
      sub_1DD3BE2A4();
      v10 = v54;
    }

    *(v10 + 16) = v0;
    v32 = v10 + 16 * v1;
    *(v32 + 32) = v74;
    *(v32 + 40) = v4;
  }

  if (v9)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v55;
    }

    OUTLINED_FUNCTION_2_64();
    if (v31)
    {
      OUTLINED_FUNCTION_14_0(v33);
      sub_1DD3BE2A4();
      v10 = v56;
    }

    *(v10 + 16) = v0;
    v34 = v10 + 16 * v1;
    *(v34 + 32) = v75;
    *(v34 + 40) = v9;
  }

  if (v3)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v57;
    }

    OUTLINED_FUNCTION_2_64();
    if (v31)
    {
      OUTLINED_FUNCTION_14_0(v35);
      sub_1DD3BE2A4();
      v10 = v58;
    }

    *(v10 + 16) = v0;
    v36 = v10 + 16 * v1;
    *(v36 + 32) = v76;
    *(v36 + 40) = v3;
  }

  if (v79)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v59;
    }

    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    if (v38 >= v37 >> 1)
    {
      OUTLINED_FUNCTION_14_0(v37);
      sub_1DD3BE2A4();
      v10 = v60;
    }

    *(v10 + 16) = v38 + 1;
    v39 = v10 + 16 * v38;
    *(v39 + 32) = v77;
    *(v39 + 40) = v79;
  }

  if (v78 != 4)
  {
    v40 = Country.Value.rawValue.getter();
    v42 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v63;
    }

    v43 = *(v10 + 16);
    if (v43 >= *(v10 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v10 = v64;
    }

    *(v10 + 16) = v43 + 1;
    v44 = v10 + 16 * v43;
    *(v44 + 32) = v40;
    *(v44 + 40) = v42;
  }

  if ((v80 & 0xFF00) != 0x400)
  {
    v45 = 0xED00006163697265;
    v46 = 0x6D41206874726F4ELL;
    switch(v80)
    {
      case 1:
        v46 = 0x6D41206874756F53;
        break;
      case 2:
        v45 = 0xE900000000000061;
        v46 = 0x6369747261746E41;
        break;
      case 3:
        v45 = 0xE600000000000000;
        v46 = 0x616369726641;
        break;
      case 4:
        v45 = 0xE600000000000000;
        v46 = 0x65706F727545;
        break;
      case 5:
        v45 = 0xE400000000000000;
        v46 = 1634300737;
        break;
      case 6:
        v45 = 0xE700000000000000;
        v47 = 0x697361727545;
        goto LABEL_76;
      case 7:
        v45 = 0xE700000000000000;
        v47 = 0x696E6165634FLL;
LABEL_76:
        v46 = v47 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
        break;
      default:
        break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v10 = v65;
    }

    v49 = *(v10 + 16);
    v48 = *(v10 + 24);
    if (v49 >= v48 >> 1)
    {
      OUTLINED_FUNCTION_14_0(v48);
      sub_1DD3BE2A4();
      v10 = v66;
    }

    *(v10 + 16) = v49 + 1;
    v50 = v10 + 16 * v49;
    *(v50 + 32) = v46;
    *(v50 + 40) = v45;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v2 = sub_1DD63FD58();

LABEL_83:

  return v2;
}

void OUTLINED_FUNCTION_3_54()
{

  sub_1DD3BE2A4();
}

__n128 Location.init(radius:country:zipcode:state:city:centroid:place:timezone:proximity:landmark:streetAddress:continentName:addressReference:locationName:locationLabel:county:locationAccuracy:)@<Q0>(uint64_t *a1@<X0>, __int16 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, const void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, const void *a12, const void *a13, __int16 *a14, __int16 *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21)
{
  v22 = *a1;
  v23 = *(a1 + 4);
  v24 = *(a1 + 10);
  v25 = *a2;
  v26 = *(a2 + 2);
  v29 = *a3;
  v27 = *(a3 + 2);
  v31 = *a4;
  v30 = *(a4 + 2);
  v33 = *a5;
  v32 = *(a5 + 2);
  v36 = *a6;
  v34 = *(a6 + 3);
  v35 = *(a6 + 2);
  v37 = *a11;
  v44 = *a15;
  v45 = *a14;
  v46 = a16[1];
  v47 = *a16;
  *(a9 + 8) = 4;
  v40 = *(a16 + 16);
  *(a9 + 11) = 4;
  v42 = a19[1];
  v43 = *a19;
  v41 = *(a19 + 8);
  *a9 = 0;
  *(a9 + 10) = 0;
  *(a9 + 13) = 0;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0;
  sub_1DD3AD724(__src);
  memcpy((a9 + 120), __src, 0x106uLL);
  *(a9 + 400) = 5;
  *(a9 + 408) = 0;
  *(a9 + 416) = 1;
  *(a9 + 424) = 0u;
  *(a9 + 440) = 0u;
  *(a9 + 456) = 0u;
  *(a9 + 472) = 0u;
  *(a9 + 488) = 0u;
  *(a9 + 504) = 0;
  *(a9 + 512) = xmmword_1DD642F70;
  *(a9 + 528) = 0u;
  *(a9 + 544) = 0u;
  *(a9 + 560) = 0u;
  *(a9 + 576) = 0u;
  *(a9 + 592) = 0;
  *(a9 + 600) = 132096;
  *(a9 + 624) = 0;
  *(a9 + 608) = 0u;
  *(a9 + 664) = 0;
  *(a9 + 648) = 0u;
  *(a9 + 688) = 515;
  *(a9 + 696) = xmmword_1DD6561A0;
  *a9 = v22;
  *(a9 + 10) = v24;
  *(a9 + 8) = v23;
  *(a9 + 13) = v26;
  *(a9 + 11) = v25;

  *(a9 + 16) = v29;
  *(a9 + 32) = v27;

  *(a9 + 40) = v31;
  *(a9 + 56) = v30;

  *(a9 + 64) = v33;
  *(a9 + 80) = v32;
  sub_1DD3AD738(*(a9 + 88), *(a9 + 96), *(a9 + 104), *(a9 + 112));
  *(a9 + 88) = v36;
  *(a9 + 104) = v35;
  *(a9 + 112) = v34;
  memcpy(__dst, (a9 + 120), 0x106uLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy((a9 + 120), a7, 0x106uLL);
  *(a9 + 384) = a8;
  *(a9 + 392) = a10;
  *(a9 + 400) = v37;
  memcpy(v50, (a9 + 408), 0x61uLL);
  sub_1DD3ADFD0(v50, &qword_1ECCDB840, &qword_1DD642FC8);
  memcpy((a9 + 408), a12, 0x61uLL);
  memcpy(v51, (a9 + 512), 0x58uLL);
  sub_1DD3ADFD0(v51, &qword_1ECCDB848, &qword_1DD642FD0);
  memcpy((a9 + 512), a13, 0x58uLL);
  *(a9 + 600) = v45;
  *(a9 + 602) = v44;

  *(a9 + 608) = v47;
  *(a9 + 616) = v46;
  *(a9 + 624) = v40;
  *(a9 + 632) = a17;
  *(a9 + 640) = a18;

  *(a9 + 648) = v43;
  *(a9 + 656) = v42;
  *(a9 + 664) = v41;
  *(a9 + 672) = a20;
  *(a9 + 680) = a21;
  sub_1DD3AD77C(*(a9 + 696), *(a9 + 704));
  result = xmmword_1DD6561A0;
  *(a9 + 696) = xmmword_1DD6561A0;
  return result;
}

void Location.radius.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 10);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v2;
}

uint64_t Location.centroid.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[13];
  v5 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1DD4FDA84(v2, v3);
}

uint64_t sub_1DD4FDA84(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 Location.centroid.setter(uint64_t a1)
{
  sub_1DD3AD738(v1[11], v1[12], v1[13], v1[14]);
  result = *a1;
  *(v1 + 13) = *(a1 + 16);
  *(v1 + 11) = result;
  return result;
}

uint64_t Location.place.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 120), 0x106uLL);
  memcpy(a1, (v1 + 120), 0x106uLL);
  return sub_1DD4FDD00(__dst, v4, &qword_1ECCDB838, &qword_1DD6570C0);
}

void *Location.place.setter(const void *a1)
{
  memcpy(v4, (v1 + 120), 0x106uLL);
  sub_1DD3ADFD0(v4, &qword_1ECCDB838, &qword_1DD6570C0);
  return memcpy((v1 + 120), a1, 0x106uLL);
}

uint64_t Location.landmark.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 408), 0x61uLL);
  memcpy(a1, (v1 + 408), 0x61uLL);
  return sub_1DD4FDD00(__dst, &v4, &qword_1ECCDB840, &qword_1DD642FC8);
}

uint64_t Location.streetAddress.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 512), sizeof(__dst));
  memcpy(a1, (v1 + 512), 0x58uLL);
  return sub_1DD4FDD00(__dst, &v4, &qword_1ECCDB848, &qword_1DD642FD0);
}

uint64_t sub_1DD4FDD00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

uint64_t Location.locationName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 616);
  v3 = *(v1 + 624);
  *a1 = *(v1 + 608);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t Location.locationLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 632) = a1;
  *(v2 + 640) = a2;
  return result;
}

uint64_t Location.county.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 656);
  v3 = *(v1 + 664);
  *a1 = *(v1 + 648);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id sub_1DD4FDE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DD3AD724(__src);
  memcpy(__dst, __src, sizeof(__dst));
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_43_13();
  memcpy(v12, __dst, 0x106uLL);
  sub_1DD3ADFD0(v12, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy(__dst, __src, sizeof(__dst));
  v13[0] = xmmword_1DD642F70;
  memset(&v13[1], 0, 80);
  v14 = 0;
  sub_1DD3ADFD0(v13, &qword_1ECCDB840, &qword_1DD642FC8);
  v15[0] = xmmword_1DD642F70;
  memset(&v15[1], 0, 64);
  v16 = 0;
  sub_1DD3ADFD0(v15, &qword_1ECCDB848, &qword_1DD642FD0);
  swift_bridgeObjectRelease_n();
  result = [objc_opt_self() mapItemStorageForGEOMapItem_];
  if (result)
  {
    v5 = result;
    v6 = [result data];

    if (v6)
    {
      v7 = sub_1DD63CF28();
      v9 = v8;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v7 = 0;
      v9 = 0xF000000000000000;
    }

    sub_1DD3AD77C(0, 0xF000000000000000);
    *a2 = 0;
    *(a2 + 10) = 0;
    *(a2 + 8) = 4;
    *(a2 + 13) = 0;
    *(a2 + 11) = 4;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0;
    result = memcpy((a2 + 120), __dst, 0x106uLL);
    *(a2 + 384) = 0u;
    *(a2 + 400) = 5;
    *(a2 + 408) = 0;
    *(a2 + 416) = 1;
    *(a2 + 424) = 0u;
    *(a2 + 440) = 0u;
    *(a2 + 456) = 0u;
    *(a2 + 472) = 0u;
    *(a2 + 488) = 0u;
    *(a2 + 504) = 0;
    *(a2 + 512) = xmmword_1DD642F70;
    *(a2 + 528) = 0u;
    *(a2 + 544) = 0u;
    *(a2 + 560) = 0u;
    *(a2 + 576) = 0u;
    *(a2 + 592) = 0;
    *(a2 + 600) = 132096;
    *(a2 + 608) = 0u;
    *(a2 + 624) = 0;
    *(a2 + 632) = 0u;
    *(a2 + 648) = 0u;
    *(a2 + 664) = 0;
    *(a2 + 672) = 0u;
    *(a2 + 688) = 515;
    *(a2 + 696) = v7;
    *(a2 + 704) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1DD4FE0FC@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 4;
  v2 = a1 + 8;
  v3 = (a1 + 408);
  *(a1 + 10) = 0;
  *(a1 + 11) = 4;
  v4 = a1 + 11;
  *(a1 + 13) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  sub_1DD3AD724(__src);
  memcpy((a1 + 120), __src, 0x106uLL);
  *(a1 + 400) = 5;
  *(a1 + 408) = 0;
  *(a1 + 416) = 1;
  v5.n128_f64[0] = OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_39_12(v5, xmmword_1DD642F70);
  *(a1 + 600) = 132096;
  *(a1 + 624) = 0;
  *(a1 + 608) = v6;
  *(a1 + 664) = 0;
  *(a1 + 648) = v6;
  *(a1 + 688) = 515;
  *(v3 + 18) = xmmword_1DD6561A0;
  *a1 = 0;
  *(v2 + 2) = 0;
  *v2 = 4;
  *(v4 + 2) = 0;
  *v4 = 4;

  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;

  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;

  *(a1 + 80) = 0;
  *(a1 + 64) = 0u;
  sub_1DD3AD738(*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112));
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  memcpy(__dst, (a1 + 120), 0x106uLL);
  sub_1DD3ADFD0(__dst, &qword_1ECCDB838, &qword_1DD6570C0);
  memcpy((a1 + 120), __src, 0x106uLL);
  *(a1 + 384) = 0u;
  *(a1 + 400) = 5;
  memcpy(v10, v3, 0x61uLL);
  sub_1DD3ADFD0(v10, &qword_1ECCDB840, &qword_1DD642FC8);
  *v3 = xmmword_1DD642F70;
  OUTLINED_FUNCTION_30_13();
  memcpy(v11, (a1 + 512), 0x58uLL);
  sub_1DD3ADFD0(v11, &qword_1ECCDB848, &qword_1DD642FD0);
  OUTLINED_FUNCTION_39_12(0, xmmword_1DD642F70);
  *(a1 + 600) = 132096;

  *(a1 + 624) = 0;
  *(a1 + 608) = 0u;
  *(a1 + 632) = 0u;

  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 672) = 0u;
  sub_1DD3AD77C(v3[36], *(a1 + 704));
  result = xmmword_1DD6561A0;
  *(v3 + 18) = xmmword_1DD6561A0;
  return result;
}

uint64_t static Location.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 4) | (*(a1 + 10) << 16);
  v6 = *(a1 + 13);
  v7 = *(a1 + 11);
  v189 = *(a1 + 1);
  v190 = a1[4];
  v185 = *(a1 + 5);
  v187 = a1[7];
  v177 = *(a1 + 4);
  v182 = a1[10];
  v180 = a1[12];
  v178 = a1[11];
  v179 = a1[13];
  v172 = a1[14];
  memcpy(__dst, a1 + 15, 0x106uLL);
  v165 = a1[48];
  v169 = a1[49];
  v167 = *(a1 + 400);
  memcpy(v201, a1 + 51, sizeof(v201));
  memcpy(v202, a1 + 64, sizeof(v202));
  v162 = *(a1 + 301);
  v163 = *(a1 + 300);
  v161 = *(a1 + 38);
  v160 = *(a1 + 624);
  v156 = a1[81];
  v157 = a1[79];
  v158 = a1[82];
  v159 = a1[80];
  v155 = *(a1 + 332);
  v153 = a1[84];
  v154 = a1[85];
  v8 = *a2;
  v9 = *(a2 + 8) | (*(a2 + 10) << 16);
  v10 = *(a2 + 13);
  v11 = *(a2 + 11);
  v12 = *(a2 + 24);
  v188 = *(a2 + 16);
  v13 = *(a2 + 32);
  v183 = *(a2 + 40);
  v184 = *(a2 + 48);
  v186 = *(a2 + 56);
  v173 = *(a2 + 64);
  v174 = *(a2 + 72);
  v181 = *(a2 + 80);
  v175 = *(a2 + 96);
  v176 = *(a2 + 88);
  v170 = *(a2 + 104);
  v171 = *(a2 + 112);
  memcpy(__src, (a2 + 120), 0x106uLL);
  v164 = *(a2 + 384);
  v168 = *(a2 + 392);
  v166 = *(a2 + 400);
  memcpy(v204, (a2 + 408), 0x61uLL);
  memcpy(v205, (a2 + 512), 0x58uLL);
  v14 = *(a2 + 602);
  v15 = *(a2 + 608);
  v16 = *(a2 + 624);
  v17 = *(a2 + 680);
  if (v5 == 4)
  {
    v18 = v14;
    v150 = v16;
    v19 = v15;
    OUTLINED_FUNCTION_29_16();
    if (v9 != 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    *&v198[0] = v4;
    WORD4(v198[0]) = v5;
    BYTE10(v198[0]) = BYTE2(v5);
    if (v9 == 4)
    {
      goto LABEL_26;
    }

    v18 = v14;
    v150 = v16;
    v19 = v15;
    OUTLINED_FUNCTION_29_16();
    v196[0] = v8;
    LOWORD(v196[1]) = v9 & 0x1FF;
    BYTE2(v196[1]) = BYTE2(v9) & 1;
    v22 = v21;
    v23 = static Radius.== infix(_:_:)(v198, v196);
    v20 = v22;
    if ((v23 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v7 == 4)
  {
    if (v11 != 4)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LOWORD(v198[0]) = v7;
    BYTE2(v198[0]) = (v7 | (v6 << 16)) >> 16;
    if (v11 == 4)
    {
      goto LABEL_26;
    }

    LOWORD(v196[0]) = v11;
    BYTE2(v196[0]) = (v11 | (v10 << 16)) >> 16;
    v24 = v20;
    v25 = static Country.== infix(_:_:)(v198, v196);
    v20 = v24;
    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v26 = v17;
  if (v190)
  {
    v198[0] = v189;
    *&v198[1] = v190;
    if (!v13)
    {
      goto LABEL_24;
    }

    v27 = v20;
    LOBYTE(v196[0]) = v188;
    v196[1] = v12;
    v196[2] = v13;
    swift_bridgeObjectRetain_n();

    v28 = OUTLINED_FUNCTION_27_18();
    v30 = static Zipcode.== infix(_:_:)(v28, v29);

    if ((v30 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_24;
    }

    v27 = v20;
  }

  if (v187)
  {
    v198[0] = v185;
    *&v198[1] = v187;
    if (!v186)
    {
      goto LABEL_24;
    }

    LOWORD(v196[0]) = v183;
    v196[1] = v184;
    v196[2] = v186;
    swift_bridgeObjectRetain_n();

    v31 = OUTLINED_FUNCTION_27_18();
    v33 = static State.== infix(_:_:)(v31, v32);

    if ((v33 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v186)
    {
      goto LABEL_24;
    }
  }

  if (!v182)
  {
    v39 = v179;
    if (!v181)
    {

      goto LABEL_37;
    }

LABEL_24:

LABEL_25:

    goto LABEL_26;
  }

  v198[0] = v177;
  *&v198[1] = v182;
  if (!v181)
  {
    goto LABEL_24;
  }

  LOWORD(v196[0]) = v173;
  v196[1] = v174;
  v196[2] = v181;
  swift_bridgeObjectRetain_n();

  v36 = OUTLINED_FUNCTION_27_18();
  v38 = static City.== infix(_:_:)(v36, v37);

  v39 = v179;
  if ((v38 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_37:
  if (!v180)
  {
    sub_1DD4FDA84(v178, 0);
    if (!v175)
    {
      sub_1DD4FDA84(v176, 0);
      goto LABEL_57;
    }

    v49 = OUTLINED_FUNCTION_38_12();
    v51 = v170;
    v50 = v171;
    sub_1DD4FDA84(v49, v52);
    goto LABEL_53;
  }

  if (!v175)
  {
    v53 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v53, v54);
    v51 = v170;
    v50 = v171;
    sub_1DD4FDA84(v176, 0);
    v55 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v55, v56);

LABEL_53:
    v57 = OUTLINED_FUNCTION_10_37();
    sub_1DD3AD738(v57, v58, v59, v60);
    v61 = OUTLINED_FUNCTION_38_12();
    v63 = v51;
    v64 = v50;
LABEL_54:
    sub_1DD3AD738(v61, v62, v63, v64);
    goto LABEL_26;
  }

  v40 = v178 == v176 && v180 == v175;
  if (!v40 && (sub_1DD640CD8() & 1) == 0)
  {
    v82 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v82, v83);
    v84 = OUTLINED_FUNCTION_38_12();
    sub_1DD4FDA84(v84, v85);
    v86 = OUTLINED_FUNCTION_10_37();
    sub_1DD4FDA84(v86, v87);
    v88 = OUTLINED_FUNCTION_38_12();
    sub_1DD3AD738(v88, v89, v170, v171);

    v61 = OUTLINED_FUNCTION_10_37();
    goto LABEL_54;
  }

  if (v39 == v170 && v172 == v171)
  {
    OUTLINED_FUNCTION_16_32();
    sub_1DD4FDA84(v65, v66);
    OUTLINED_FUNCTION_16_32();
    sub_1DD4FDA84(v67, v68);
    OUTLINED_FUNCTION_16_32();
    sub_1DD4FDA84(v69, v70);
    OUTLINED_FUNCTION_16_32();
    sub_1DD3AD738(v71, v72, v73, v74);

LABEL_57:
    OUTLINED_FUNCTION_16_32();
    sub_1DD3AD738(v75, v76, v77, v78);
    goto LABEL_58;
  }

  OUTLINED_FUNCTION_23_23();
  v191 = sub_1DD640CD8();
  OUTLINED_FUNCTION_16_32();
  sub_1DD4FDA84(v42, v43);
  OUTLINED_FUNCTION_23_23();
  sub_1DD4FDA84(v44, v45);
  sub_1DD4FDA84(v178, v180);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3AD738(v46, v47, v48, v171);

  sub_1DD3AD738(v178, v180, v39, v172);
  if ((v191 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_58:
  memcpy(v198, __dst, 0x106uLL);
  memcpy(&v198[16] + 8, __src, 0x106uLL);
  memcpy(v199, __dst, 0x106uLL);
  if (OUTLINED_FUNCTION_0_99(v199) == 1)
  {
    memcpy(v196, &v198[16] + 8, 0x106uLL);
    if (OUTLINED_FUNCTION_0_99(v196) == 1)
    {
      OUTLINED_FUNCTION_37_15(v197);
      OUTLINED_FUNCTION_15_30(__dst);
      OUTLINED_FUNCTION_15_30(__src);
      OUTLINED_FUNCTION_23_23();
      sub_1DD3ADFD0(v79, v80, v81);
      goto LABEL_68;
    }

    OUTLINED_FUNCTION_26_20(__dst, v197);
    OUTLINED_FUNCTION_26_20(__src, v197);
LABEL_65:
    memcpy(v196, v198, 0x20EuLL);
    v90 = &unk_1ECCDE0C8;
    v91 = &unk_1DD6561B0;
    v92 = v196;
LABEL_66:
    sub_1DD3ADFD0(v92, v90, v91);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_37_15(v197);
  OUTLINED_FUNCTION_37_15(v195);
  memcpy(v196, &v198[16] + 8, 0x106uLL);
  if (OUTLINED_FUNCTION_0_99(v196) == 1)
  {
    OUTLINED_FUNCTION_37_15(v194);
    OUTLINED_FUNCTION_24_16(__dst);
    OUTLINED_FUNCTION_24_16(__src);
    OUTLINED_FUNCTION_24_16(v197);
    sub_1DD501494(v194);
    goto LABEL_65;
  }

  memcpy(v194, &v198[16] + 8, 0x106uLL);
  OUTLINED_FUNCTION_24_16(__dst);
  OUTLINED_FUNCTION_24_16(__src);
  OUTLINED_FUNCTION_24_16(v197);
  static Place.== infix(_:_:)();
  v94 = v93;
  memcpy(v192, v194, 0x106uLL);
  sub_1DD501494(v192);
  memcpy(v193, v195, 0x106uLL);
  sub_1DD501494(v193);
  OUTLINED_FUNCTION_37_15(v194);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3ADFD0(v95, v96, v97);
  if ((v94 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_68:
  if (v169)
  {
    if (!v168)
    {
      goto LABEL_26;
    }

    v98 = v165 == v164 && v169 == v168;
    if (!v98 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v168)
  {
    goto LABEL_26;
  }

  if (v167 == 5)
  {
    if (v166 != 5)
    {
      goto LABEL_26;
    }
  }

  else if (v166 == 5 || (sub_1DD3AE138() & 1) == 0)
  {
    goto LABEL_26;
  }

  memcpy(v193, &v201[16], 0x51uLL);
  v99 = v204[0];
  v100 = v204[1];
  memcpy(v192, &v204[2], 0x51uLL);
  if (*&v201[8] == 1)
  {
    if (v204[1] == 1)
    {
      *&v198[0] = *v201;
      *(&v198[0] + 1) = 1;
      v101 = OUTLINED_FUNCTION_22_21();
      memcpy(v101, v102, 0x51uLL);
      OUTLINED_FUNCTION_26_20(v201, v196);
      OUTLINED_FUNCTION_26_20(v204, v196);
      OUTLINED_FUNCTION_23_23();
      sub_1DD3ADFD0(v103, v104, v105);
      goto LABEL_90;
    }

    OUTLINED_FUNCTION_26_20(v201, v198);
    OUTLINED_FUNCTION_26_20(v204, v198);
LABEL_88:
    OUTLINED_FUNCTION_34_13();
    memcpy(v108, v109, 0x51uLL);
    *(&v198[6] + 1) = v99;
    *&v198[7] = v100;
    memcpy(&qword_1ECCDB8B8, v192, 0x51uLL);
    v90 = &unk_1ECCDE0D0;
    v91 = &unk_1DD6561B8;
LABEL_97:
    v92 = v198;
    goto LABEL_66;
  }

  v198[0] = *v201;
  v106 = OUTLINED_FUNCTION_22_21();
  memcpy(v106, v107, 0x51uLL);
  memcpy(v196, v198, 0x61uLL);
  if (v100 == 1)
  {
    memcpy(v197, v198, 0x61uLL);
    OUTLINED_FUNCTION_15_30(v201);
    OUTLINED_FUNCTION_15_30(v204);
    OUTLINED_FUNCTION_15_30(v198);
    sub_1DD4EE484(v197);
    goto LABEL_88;
  }

  memcpy(&v197[2], &v204[2], 0x51uLL);
  v197[0] = v99;
  v197[1] = v100;
  OUTLINED_FUNCTION_15_30(v201);
  OUTLINED_FUNCTION_15_30(v204);
  OUTLINED_FUNCTION_15_30(v198);
  v110 = static Landmark.== infix(_:_:)(v196, v197);
  memcpy(v194, v197, 0x61uLL);
  sub_1DD4EE484(v194);
  memcpy(v195, v196, 0x61uLL);
  sub_1DD4EE484(v195);
  OUTLINED_FUNCTION_31_16();
  memcpy(v111, v112, 0x51uLL);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3ADFD0(v113, v114, v115);
  if ((v110 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_90:
  memcpy(v193, &v202[16], 0x48uLL);
  v117 = v205[0];
  v116 = v205[1];
  memcpy(v192, &v205[2], 0x48uLL);
  if (*&v202[8] == 1)
  {
    if (v205[1] == 1)
    {
      *&v198[0] = *v202;
      *(&v198[0] + 1) = 1;
      v118 = OUTLINED_FUNCTION_22_21();
      memcpy(v118, v119, 0x48uLL);
      OUTLINED_FUNCTION_26_20(v202, v196);
      OUTLINED_FUNCTION_26_20(v205, v196);
      OUTLINED_FUNCTION_23_23();
      sub_1DD3ADFD0(v120, v121, v122);
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_26_20(v202, v198);
    OUTLINED_FUNCTION_26_20(v205, v198);
    goto LABEL_96;
  }

  v198[0] = *v202;
  v123 = OUTLINED_FUNCTION_22_21();
  memcpy(v123, v124, 0x48uLL);
  memcpy(v196, v198, 0x58uLL);
  if (v116 == 1)
  {
    memcpy(v197, v198, 0x58uLL);
    OUTLINED_FUNCTION_15_30(v202);
    OUTLINED_FUNCTION_15_30(v205);
    OUTLINED_FUNCTION_15_30(v198);
    sub_1DD501440(v197);
LABEL_96:
    OUTLINED_FUNCTION_34_13();
    memcpy(v125, v126, 0x48uLL);
    *(&v198[5] + 1) = v117;
    *&v198[6] = v116;
    memcpy(&qword_1ECCDB8B0, v192, 0x48uLL);
    v90 = &unk_1ECCDE0D8;
    v91 = &unk_1DD6561C0;
    goto LABEL_97;
  }

  memcpy(&v197[2], &v205[2], 0x48uLL);
  v197[0] = v117;
  v197[1] = v116;
  OUTLINED_FUNCTION_15_30(v202);
  OUTLINED_FUNCTION_15_30(v205);
  OUTLINED_FUNCTION_15_30(v198);
  v127 = static StreetAddress.== infix(_:_:)(v196, v197);
  memcpy(v194, v197, 0x58uLL);
  sub_1DD501440(v194);
  memcpy(v195, v196, 0x58uLL);
  sub_1DD501440(v195);
  OUTLINED_FUNCTION_31_16();
  memcpy(v128, v129, 0x48uLL);
  OUTLINED_FUNCTION_23_23();
  sub_1DD3ADFD0(v130, v131, v132);
  if ((v127 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_99:
  if ((v163 & 0xFF00) == 0x400)
  {
    if ((v27 & 0xFF00) != 0x400)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LOWORD(v198[0]) = v163;
    if ((v27 & 0xFF00) == 0x400)
    {
      goto LABEL_26;
    }

    LOWORD(v196[0]) = v27;
    v133 = OUTLINED_FUNCTION_27_18();
    if ((static ContinentName.== infix(_:_:)(v133, v134) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (v162 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LOWORD(v198[0]) = v162;
    if (v18 == 2)
    {
      goto LABEL_26;
    }

    LOWORD(v196[0]) = v18 & 0xFF01;
    v135 = OUTLINED_FUNCTION_27_18();
    if ((static AddressReference.== infix(_:_:)(v135, v136) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (*(&v161 + 1))
  {
    v198[0] = v161;
    LOBYTE(v198[1]) = v160;
    if (!v152)
    {
      goto LABEL_114;
    }

    v196[0] = v19;
    v196[1] = v152;
    LOBYTE(v196[2]) = v150;
    swift_bridgeObjectRetain_n();

    v137 = OUTLINED_FUNCTION_27_18();
    v139 = static LocationName.== infix(_:_:)(v137, v138);

    if ((v139 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v152)
    {
      goto LABEL_114;
    }
  }

  if (v159)
  {
    if (!v151)
    {
      goto LABEL_26;
    }

    v140 = v157 == v148 && v159 == v151;
    if (!v140 && (sub_1DD640CD8() & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (v151)
  {
    goto LABEL_26;
  }

  if (v158)
  {
    *&v198[0] = v156;
    *(&v198[0] + 1) = v158;
    LOWORD(v198[1]) = v155;
    if (v149)
    {
      v196[0] = v147;
      v196[1] = v149;
      LOWORD(v196[2]) = v146;
      swift_bridgeObjectRetain_n();

      v141 = OUTLINED_FUNCTION_27_18();
      v143 = static County.== infix(_:_:)(v141, v142);

      if ((v143 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_133;
    }

    goto LABEL_114;
  }

  if (v149)
  {
LABEL_114:

    goto LABEL_25;
  }

LABEL_133:
  if (v154)
  {
    if (v26)
    {
      if (v153 != v145 || v154 != v26)
      {
        v34 = sub_1DD640CD8();
        return v34 & 1;
      }

LABEL_141:
      v34 = 1;
      return v34 & 1;
    }
  }

  else if (!v26)
  {
    goto LABEL_141;
  }

LABEL_26:
  v34 = 0;
  return v34 & 1;
}

Swift::Void __swiftcall Location.setLocationName(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;

  *(v1 + 608) = countAndFlagsBits;
  *(v1 + 616) = object;
  *(v1 + 624) = 3;
}

uint64_t sub_1DD4FF41C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737569646172 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F6370697ALL && a2 == 0xE700000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 2037672291 && a2 == 0xE400000000000000;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x64696F72746E6563 && a2 == 0xE800000000000000;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6563616C70 && a2 == 0xE500000000000000;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x74696D69786F7270 && a2 == 0xE900000000000079;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6B72616D646E616CLL && a2 == 0xE800000000000000;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6441746565727473 && a2 == 0xED00007373657264;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E656E69746E6F63 && a2 == 0xED0000656D614E74;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000010 && 0x80000001DD66EDF0 == a2;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6E6F697461636F6CLL && a2 == 0xED00006C6562614CLL;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x79746E756F63 && a2 == 0xE600000000000000;
                                if (v20 || (sub_1DD640CD8() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000010 && 0x80000001DD66EE10 == a2;
                                  if (v21 || (sub_1DD640CD8() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
                                    if (v22 || (sub_1DD640CD8() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x7053656C69626F6DLL && a2 == 0xEB00000000656361;
                                      if (v23 || (sub_1DD640CD8() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else if (a1 == 0x446D65744970616DLL && a2 == 0xEB00000000617461)
                                      {

                                        return 19;
                                      }

                                      else
                                      {
                                        v25 = sub_1DD640CD8();

                                        if (v25)
                                        {
                                          return 19;
                                        }

                                        else
                                        {
                                          return 20;
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4FFA1C(char a1)
{
  result = 0x737569646172;
  switch(a1)
  {
    case 1:
      result = 0x7972746E756F63;
      break;
    case 2:
      result = 0x65646F6370697ALL;
      break;
    case 3:
      v3 = 1952543859;
      goto LABEL_17;
    case 4:
      result = 2037672291;
      break;
    case 5:
      result = 0x64696F72746E6563;
      break;
    case 6:
      v3 = 1667329136;
LABEL_17:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 7:
      result = 0x656E6F7A656D6974;
      break;
    case 8:
      result = 0x74696D69786F7270;
      break;
    case 9:
      result = 0x6B72616D646E616CLL;
      break;
    case 10:
      result = 0x6441746565727473;
      break;
    case 11:
      result = 0x6E656E69746E6F63;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
    case 14:
      result = 0x6E6F697461636F6CLL;
      break;
    case 15:
      result = 0x79746E756F63;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x746E657665;
      break;
    case 18:
      result = 0x7053656C69626F6DLL;
      break;
    case 19:
      result = 0x446D65744970616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4FFC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4FF41C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4FFC5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD4FFA14();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4FFC84(uint64_t a1)
{
  v2 = sub_1DD5014E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4FFCC0(uint64_t a1)
{
  v2 = sub_1DD5014E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE0E0, &qword_1DD6561C8);
  OUTLINED_FUNCTION_32_15();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v67 = *v1;
  LODWORD(v68) = *(v1 + 4);
  v82 = *(v1 + 10);
  v9 = *(v1 + 13);
  v65 = *(v1 + 11);
  v66 = v9;
  v10 = v1[2];
  v63 = v1[3];
  v64 = v10;
  v11 = v1[4];
  v13 = v1[6];
  v12 = v1[7];
  v59 = v1[5];
  v60 = v13;
  v61 = v12;
  v62 = v11;
  v14 = v1[9];
  v56 = v1[8];
  v57 = v14;
  v15 = v1[11];
  v58 = v1[10];
  v16 = v1[12];
  v17 = v1[13];
  v52 = v15;
  v53 = v16;
  v18 = v1[14];
  v54 = v17;
  v55 = v18;
  memcpy(v79, v1 + 15, 0x106uLL);
  v19 = v1[49];
  v50 = v1[48];
  v51 = v19;
  v49 = *(v1 + 400);
  memcpy(v80, v1 + 51, 0x61uLL);
  memcpy(__dst, v1 + 64, 0x58uLL);
  v20 = *(v1 + 300);
  v47 = *(v1 + 301);
  v48 = v20;
  v21 = v1[76];
  v46 = v1[77];
  v45 = *(v1 + 624);
  v22 = v1[79];
  v43 = v1[80];
  v44 = v21;
  v23 = v1[81];
  v41 = v1[82];
  v42 = v22;
  v40 = *(v1 + 332);
  v37 = v1[84];
  v38 = v1[85];
  v39 = v23;
  v24 = *(v1 + 689);
  v35 = *(v1 + 688);
  v36 = v24;
  v34 = v1[87];
  v25 = v1[88];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5014E8();
  sub_1DD640EF8();
  v78[0] = v67;
  BYTE2(v78[1]) = v82;
  v26 = v8;
  LOWORD(v78[1]) = v68;
  v77[0] = 0;
  sub_1DD50153C();
  OUTLINED_FUNCTION_14_31();
  v27 = v69;
  sub_1DD640C08();
  if (v27)
  {
    return (*(v5 + 8))(v8, v2);
  }

  v30 = v63;
  v29 = v64;
  v31 = v62;
  v68 = v25;
  v69 = v5;
  BYTE2(v78[0]) = (v65 | (v66 << 16)) >> 16;
  LOWORD(v78[0]) = v65;
  v77[0] = 1;
  sub_1DD501590();
  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();
  v78[0] = v29;
  v78[1] = v30;
  v78[2] = v31;
  v77[0] = 2;
  sub_1DD5015E4();

  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();

  v78[0] = v59;
  v78[1] = v60;
  v78[2] = v61;
  v77[0] = 3;
  sub_1DD501638();

  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();

  v78[0] = v56;
  v78[1] = v57;
  v78[2] = v58;
  v77[0] = 4;
  sub_1DD50168C();

  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();

  v78[0] = v52;
  v78[1] = v53;
  v78[2] = v54;
  v78[3] = v55;
  v77[0] = 5;
  sub_1DD4FDA84(v52, v53);
  sub_1DD5016E0();
  OUTLINED_FUNCTION_14_31();
  sub_1DD640C08();
  OUTLINED_FUNCTION_44_13();
  memcpy(v78, v79, 0x106uLL);
  v86 = 6;
  sub_1DD4FDD00(v79, v77, &qword_1ECCDB838, &qword_1DD6570C0);
  sub_1DD501734();
  sub_1DD640C08();
  memcpy(v77, v78, 0x106uLL);
  sub_1DD3ADFD0(v77, &qword_1ECCDB838, &qword_1DD6570C0);
  v76[0] = 7;
  sub_1DD640BC8();
  v76[0] = v49;
  v75[0] = 8;
  sub_1DD501788();
  sub_1DD640C08();
  memcpy(v76, v80, sizeof(v76));
  v85 = 9;
  sub_1DD4FDD00(v80, v75, &qword_1ECCDB840, &qword_1DD642FC8);
  sub_1DD5017DC();
  sub_1DD640C08();
  memcpy(v75, v76, 0x61uLL);
  sub_1DD3ADFD0(v75, &qword_1ECCDB840, &qword_1DD642FC8);
  memcpy(v74, __dst, sizeof(v74));
  v84 = 10;
  sub_1DD4FDD00(__dst, v73, &qword_1ECCDB848, &qword_1DD642FD0);
  sub_1DD501830();
  sub_1DD640C08();
  memcpy(v73, v74, sizeof(v73));
  sub_1DD3ADFD0(v73, &qword_1ECCDB848, &qword_1DD642FD0);
  LOWORD(v70) = v48;
  v83 = 11;
  sub_1DD501884();
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  LOWORD(v70) = v47;
  v83 = 12;
  sub_1DD5018D8();
  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  v70 = v44;
  v71 = v46;
  LOBYTE(v72) = v45;
  v83 = 13;
  v32 = sub_1DD50192C();

  OUTLINED_FUNCTION_12_30();
  OUTLINED_FUNCTION_25_14();
  sub_1DD640C08();
  if (v32 || (, LOBYTE(v70) = 14, OUTLINED_FUNCTION_25_14(), sub_1DD640BC8(), v70 = v39, v71 = v41, v72 = v40, v83 = 15, v33 = sub_1DD501980(), , OUTLINED_FUNCTION_12_30(), OUTLINED_FUNCTION_25_14(), sub_1DD640C08(), v33))
  {
  }

  else
  {

    LOBYTE(v70) = 16;
    OUTLINED_FUNCTION_25_14();
    sub_1DD640BC8();
    LOBYTE(v70) = v35;
    v83 = 17;
    sub_1DD5019D4();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_25_14();
    sub_1DD640C08();
    LOBYTE(v70) = v36;
    v83 = 18;
    sub_1DD501A28();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_25_14();
    sub_1DD640C08();
    v70 = v34;
    v71 = v68;
    v83 = 19;
    sub_1DD501A7C(v34, v68);
    sub_1DD47756C();
    OUTLINED_FUNCTION_12_30();
    OUTLINED_FUNCTION_25_14();
    sub_1DD640C08();
    sub_1DD3AD77C(v70, v71);
  }

  return (*(v69 + 8))(v26, v2);
}

uint64_t Location.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE170, &qword_1DD6561D0);
  OUTLINED_FUNCTION_32_15();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v74 - v9;
  sub_1DD3AD724(v211);
  memcpy(v210, v211, sizeof(v210));
  v11 = a1[3];
  v12 = a1[4];
  v132 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DD5014E8();
  sub_1DD640ED8();
  if (!v2)
  {
    LOBYTE(v137[0]) = 0;
    sub_1DD501AC0();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v85 = v174;
    v84 = v175 | (BYTE2(v175) << 16);
    LOBYTE(v137[0]) = 1;
    sub_1DD501B14();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v83 = v174 | (BYTE2(v174) << 16);
    LOBYTE(v137[0]) = 2;
    sub_1DD501B68();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v82 = v174;
    v18 = v175;
    v19 = v176;

    LOBYTE(v137[0]) = 3;
    sub_1DD501BBC();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v133 = v18;
    v134 = v19;
    v80 = a2;
    v20 = v174;
    v21 = v175;
    v81 = v176;

    LOBYTE(v137[0]) = 4;
    sub_1DD501C10();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v124 = v174;
    v125 = v175;
    v22 = v176;

    LOBYTE(v137[0]) = 5;
    sub_1DD501C64();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v127 = v22;
    v113 = v174;
    v115 = v175;
    v116 = v176;
    v119 = v177;
    OUTLINED_FUNCTION_43_13();
    v172[263] = 6;
    sub_1DD501CB8();
    OUTLINED_FUNCTION_9_39();
    sub_1DD640B18();
    memcpy(v171, v173, sizeof(v171));
    memcpy(v172, v210, 0x106uLL);
    sub_1DD3ADFD0(v172, &qword_1ECCDB838, &qword_1DD6570C0);
    memcpy(v210, v171, sizeof(v210));
    OUTLINED_FUNCTION_20_24(7);
    v103 = sub_1DD640AD8();
    v105 = v23;
    v78 = v20;
    v79 = v21;
    LOBYTE(v137[0]) = 8;
    sub_1DD501D0C();
    OUTLINED_FUNCTION_5_55();
    sub_1DD640B18();
    v212 = 0;
    v100 = v174;
    v157 = 9;
    sub_1DD501D60();
    OUTLINED_FUNCTION_9_39();
    v24 = v212;
    sub_1DD640B18();
    v212 = v24;
    if (v24)
    {
      v25 = OUTLINED_FUNCTION_7_2();
      v26(v25);
      OUTLINED_FUNCTION_1_75();
      v106 = 0;
      v104 = 0;
      OUTLINED_FUNCTION_2_65();
      OUTLINED_FUNCTION_6_50();
      v90 = 1;
LABEL_8:
      v89 = 1;
LABEL_9:
      v86 = 2;
LABEL_10:
      OUTLINED_FUNCTION_19_25();
      v12 = v81;
      v14 = v82;
      v11 = v78;
      a2 = v79;
      goto LABEL_4;
    }

    v114 = v158;
    v90 = v159;
    v121 = v161;
    v122 = v162;
    v123 = v163;
    v126 = v164;
    v128 = v165;
    v129 = v166;
    v130 = v167;
    v131 = v168;
    v117 = v160;
    v118 = v169;
    v120 = v170;
    v136 = xmmword_1DD642F70;
    v155[0] = xmmword_1DD642F70;
    memset(&v155[1], 0, 80);
    v156 = 0;
    sub_1DD3ADFD0(v155, &qword_1ECCDB840, &qword_1DD642FC8);
    v143 = 10;
    sub_1DD501DB4();
    OUTLINED_FUNCTION_9_39();
    v27 = v212;
    sub_1DD640B18();
    v212 = v27;
    if (v27)
    {
      v28 = OUTLINED_FUNCTION_7_2();
      v29(v28);
      v111 = 0;
      v112 = 0;
      v109 = 0;
      v110 = 0;
      v107 = 0;
      v108 = 0;
      v106 = 0;
      v104 = 0;
      OUTLINED_FUNCTION_2_65();
      OUTLINED_FUNCTION_6_50();
      goto LABEL_8;
    }

    v89 = v145;
    v111 = v146;
    v112 = v144;
    v109 = v148;
    v110 = v147;
    v107 = v150;
    v108 = v149;
    v106 = v151;
    v104 = v152;
    v101 = v154;
    v102 = v153;
    v141[0] = v136;
    memset(&v141[1], 0, 64);
    v142 = 0;
    sub_1DD3ADFD0(v141, &qword_1ECCDB848, &qword_1DD642FD0);
    LOBYTE(v137[0]) = 11;
    sub_1DD501E08();
    OUTLINED_FUNCTION_5_55();
    v30 = v212;
    sub_1DD640B18();
    v212 = v30;
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_7_2();
      v32(v31);
      OUTLINED_FUNCTION_4_51();
      v91 = 1024;
LABEL_17:
      v87 = 3;
      v88 = 2;
      goto LABEL_9;
    }

    v91 = v174;
    LOBYTE(v137[0]) = 12;
    sub_1DD501E5C();
    OUTLINED_FUNCTION_5_55();
    v33 = v212;
    sub_1DD640B18();
    v212 = v33;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_7_2();
      v35(v34);
      OUTLINED_FUNCTION_4_51();
      goto LABEL_17;
    }

    v86 = v174;
    LOBYTE(v137[0]) = 13;
    sub_1DD501EB0();
    OUTLINED_FUNCTION_5_55();
    v36 = v212;
    sub_1DD640B18();
    v212 = v36;
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_7_2();
      v38(v37);
      OUTLINED_FUNCTION_4_51();
    }

    else
    {
      v92 = v174;
      v94 = v175;
      v96 = v176;

      OUTLINED_FUNCTION_20_24(14);
      v39 = v212;
      v135 = sub_1DD640AD8();
      *&v136 = v40;
      v212 = v39;
      if (v39)
      {
        v41 = OUTLINED_FUNCTION_7_2();
        v42(v41);
        OUTLINED_FUNCTION_40_8();
        v135 = 0;
        *&v136 = 0;
      }

      else
      {
        LOBYTE(v137[0]) = 15;
        sub_1DD501F04();
        OUTLINED_FUNCTION_5_55();
        v43 = v212;
        sub_1DD640B18();
        v212 = v43;
        if (v43)
        {
          v44 = OUTLINED_FUNCTION_7_2();
          v45(v44);
          OUTLINED_FUNCTION_40_8();
        }

        else
        {
          v93 = v174;
          v95 = v175;
          v97 = v176;

          OUTLINED_FUNCTION_20_24(16);
          v46 = v212;
          v98 = sub_1DD640AD8();
          v99 = v47;
          v212 = v46;
          if (v46)
          {
            v48 = OUTLINED_FUNCTION_7_2();
            v49(v48);
            v98 = 0;
            v99 = 0;
          }

          else
          {
            LOBYTE(v137[0]) = 17;
            sub_1DD501F58();
            OUTLINED_FUNCTION_5_55();
            v50 = v212;
            sub_1DD640B18();
            v212 = v50;
            if (!v50)
            {
              v87 = v174;
              LOBYTE(v137[0]) = 18;
              sub_1DD501FAC();
              OUTLINED_FUNCTION_5_55();
              v53 = v212;
              sub_1DD640B18();
              v212 = v53;
              if (!v53)
              {
                v88 = v174;
                v138 = 19;
                sub_1DD477290();
                OUTLINED_FUNCTION_9_39();
                v56 = v212;
                sub_1DD640B18();
                v212 = v56;
                if (!v56)
                {
                  v59 = OUTLINED_FUNCTION_7_2();
                  v60(v59);
                  v76 = v140;
                  v77 = v139;
                  sub_1DD3AD77C(0, 0xF000000000000000);
                  v137[0] = v85;
                  v75 = HIWORD(v84);
                  BYTE2(v137[1]) = BYTE2(v84);
                  LOWORD(v137[1]) = v84;
                  v74 = HIWORD(v83);
                  BYTE5(v137[1]) = BYTE2(v83);
                  *(&v137[1] + 3) = v83;
                  v137[2] = v82;
                  v137[3] = v133;
                  v137[4] = v134;
                  v137[5] = v78;
                  v137[6] = v79;
                  v137[7] = v81;
                  v137[8] = v124;
                  v137[9] = v125;
                  v137[10] = v127;
                  v137[11] = v113;
                  v137[12] = v115;
                  v137[13] = v116;
                  v137[14] = v119;
                  memcpy(&v137[15], v171, 0x106uLL);
                  *(&v137[50] + 1) = v209[0];
                  *(&v137[63] + 1) = v208[0];
                  *(&v137[78] + 1) = *v207;
                  *(&v137[83] + 2) = v205;
                  *(&v137[86] + 2) = v203;
                  HIDWORD(v137[50]) = *(v209 + 3);
                  HIDWORD(v137[63]) = *(v208 + 3);
                  HIDWORD(v137[78]) = *&v207[3];
                  HIWORD(v137[83]) = v206;
                  HIWORD(v137[86]) = v204;
                  v137[48] = v103;
                  v137[49] = v105;
                  LOBYTE(v137[50]) = v100;
                  v137[51] = v114;
                  v137[52] = v90;
                  v137[53] = v117;
                  v61 = v121;
                  v62 = v122;
                  v137[54] = v121;
                  v137[55] = v122;
                  v63 = v123;
                  v137[56] = v123;
                  v64 = v126;
                  v137[57] = v126;
                  v66 = v128;
                  v65 = v129;
                  v137[58] = v128;
                  v137[59] = v129;
                  v68 = v130;
                  v67 = v131;
                  v137[60] = v130;
                  v137[61] = v131;
                  v137[62] = v118;
                  LOBYTE(v137[63]) = v120;
                  v137[64] = v112;
                  v137[65] = v89;
                  v137[66] = v111;
                  v137[67] = v110;
                  v137[68] = v109;
                  v137[69] = v108;
                  v137[70] = v107;
                  v137[71] = v106;
                  v137[72] = v104;
                  v137[73] = v102;
                  v137[74] = v101;
                  LOWORD(v137[75]) = v91;
                  WORD1(v137[75]) = v86;
                  v137[76] = v92;
                  v137[77] = v94;
                  LOBYTE(v137[78]) = v96;
                  v137[79] = v135;
                  v137[80] = v136;
                  v137[81] = v93;
                  v137[82] = v95;
                  LOWORD(v137[83]) = v97;
                  v137[84] = v98;
                  v137[85] = v99;
                  LOBYTE(v137[86]) = v87;
                  BYTE1(v137[86]) = v88;
                  v137[87] = v77;
                  v137[88] = v76;
                  memcpy(v80, v137, 0x2C8uLL);
                  sub_1DD472DF8(v137, &v174);
                  __swift_destroy_boxed_opaque_existential_1(v132);
                  v174 = v85;
                  BYTE2(v175) = v75;
                  LOWORD(v175) = v84;
                  BYTE5(v175) = v74;
                  *(&v175 + 3) = v83;
                  v176 = v82;
                  v177 = v133;
                  v178 = v134;
                  v179 = v78;
                  v180 = v79;
                  v181 = v81;
                  OUTLINED_FUNCTION_18_27();
                  v182 = v119;
                  memcpy(v183, v210, sizeof(v183));
                  OUTLINED_FUNCTION_17_29();
                  v185 = v117;
                  v186 = v61;
                  v187 = v62;
                  v188 = v63;
                  v189 = v64;
                  v190 = v66;
                  v191 = v65;
                  v192 = v68;
                  v193 = v67;
                  v194 = v118;
                  OUTLINED_FUNCTION_33_10(v184);
                  v195 = v120;
                  OUTLINED_FUNCTION_13_32((v69 + 505));
                  *(v70 + 625) = *(v71 + 7);
                  *&v197[3] = *(v71 + 10);
                  v198 = v135;
                  OUTLINED_FUNCTION_28_10(v136);
                  OUTLINED_FUNCTION_21_22((v72 + 666));
                  OUTLINED_FUNCTION_42_10((v73 + 690));
                  v16 = v76;
                  v201 = v77;
                  goto LABEL_5;
                }

                v57 = OUTLINED_FUNCTION_7_2();
                v58(v57);
                goto LABEL_10;
              }

              v54 = OUTLINED_FUNCTION_7_2();
              v55(v54);
              goto LABEL_29;
            }

            v51 = OUTLINED_FUNCTION_7_2();
            v52(v51);
          }
        }
      }
    }

    v87 = 3;
LABEL_29:
    v88 = 2;
    goto LABEL_10;
  }

  v212 = v2;
  OUTLINED_FUNCTION_0_100();
  OUTLINED_FUNCTION_8_43();
  v133 = 0;
  v134 = 0;
  v14 = 0;
  v7 = 0;
  v3 = 4;
  OUTLINED_FUNCTION_3_55();
  LODWORD(v10) = 4;
  v13 = &v174;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v132);
  v174 = v7;
  BYTE2(v175) = BYTE2(v10);
  LOWORD(v175) = v10;
  BYTE5(v175) = BYTE2(v3);
  *(v13 + 11) = v3;
  v176 = v14;
  v177 = v133;
  v178 = v134;
  v179 = v11;
  v180 = a2;
  v181 = v12;
  OUTLINED_FUNCTION_18_27();
  v182 = v119;
  memcpy(v183, v210, sizeof(v183));
  OUTLINED_FUNCTION_17_29();
  v185 = v117;
  v186 = v121;
  v187 = v122;
  v188 = v123;
  v189 = v126;
  v190 = v128;
  v191 = v129;
  v192 = v130;
  OUTLINED_FUNCTION_33_10(v184);
  v193 = v131;
  v194 = v118;
  v195 = v120;
  OUTLINED_FUNCTION_13_32(v196);
  *v197 = *(v15 + 7);
  *&v197[3] = *(v15 + 10);
  v198 = v135;
  OUTLINED_FUNCTION_28_10(v136);
  OUTLINED_FUNCTION_21_22(v199);
  OUTLINED_FUNCTION_42_10(&v200);
  v201 = 0;
  v16 = 0xF000000000000000;
LABEL_5:
  v202 = v16;
  return sub_1DD501A90(&v174);
}
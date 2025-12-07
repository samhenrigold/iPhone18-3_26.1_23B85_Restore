uint64_t sub_1E4034F24(void **a1, id *a2, void **a3, void **a4, char a5)
{
  *(swift_allocObject() + 16) = a5 & 1;
  v9 = a2 - a1;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    if (a4 != a1 || &a1[v9] <= a4)
    {
      memmove(a4, a1, 8 * v9);
    }

    v12 = &a4[v9];
    while (1)
    {
      if (a4 >= v12 || a2 >= a3)
      {
        v30 = a1;
        goto LABEL_49;
      }

      v14 = a1;
      v50 = a2;
      v15 = a4;
      v16 = *a4;
      v17 = *a2;
      v18 = v16;
      v19 = sub_1E41FE884();
      result = sub_1E4205224();
      v22 = result;
      if (v19)
      {
        if (v21)
        {
          goto LABEL_58;
        }

        result = sub_1E4205224();
        if (v23)
        {
          goto LABEL_60;
        }

        v24 = result;
        v25 = v14;

        if (v22 >= v24)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (v21)
        {
          goto LABEL_59;
        }

        result = sub_1E4205224();
        if (v27)
        {
          goto LABEL_61;
        }

        v28 = result;
        v25 = v14;

        if (v28 >= v22)
        {
LABEL_16:
          v26 = v15;
          a4 = v15 + 1;
          a2 = v50;
          if (v25 == v15)
          {
            goto LABEL_18;
          }

LABEL_17:
          *v25 = *v26;
          goto LABEL_18;
        }
      }

      v26 = v50;
      a2 = v50 + 1;
      a4 = v15;
      if (v25 != v50)
      {
        goto LABEL_17;
      }

LABEL_18:
      a1 = v25 + 1;
    }
  }

  if (a4 != a2 || &a2[v10] <= a4)
  {
    memmove(a4, a2, 8 * v10);
  }

  v12 = &a4[v10];
  v48 = a4;
LABEL_30:
  v30 = a2;
  v51 = a2 - 1;
  v31 = a3;
  v49 = v30;
  while (v12 > a4 && v30 > a1)
  {
    v33 = a1;
    v34 = v12 - 1;
    v35 = *v51;
    v36 = *(v12 - 1);
    v37 = v35;
    v38 = sub_1E41FE884();
    result = sub_1E4205224();
    v40 = result;
    if (v38)
    {
      if (v39)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        return result;
      }

      result = sub_1E4205224();
      if (v41)
      {
        goto LABEL_62;
      }

      v42 = result;
      a1 = v33;

      a3 = v31 - 1;
      if (v40 < v42)
      {
LABEL_46:
        a4 = v48;
        v45 = v31 == v49;
        a2 = v51;
        if (!v45)
        {
          *a3 = *v51;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (v39)
      {
        goto LABEL_57;
      }

      result = sub_1E4205224();
      if (v43)
      {
        goto LABEL_63;
      }

      v44 = result;
      a1 = v33;

      a3 = v31 - 1;
      if (v44 < v40)
      {
        goto LABEL_46;
      }
    }

    v45 = v12 == v31;
    v31 = a3;
    --v12;
    a4 = v48;
    v30 = v49;
    if (!v45)
    {
      *a3 = *v34;
      v31 = a3;
      v12 = v34;
    }
  }

LABEL_49:
  v46 = v12 - a4;
  if (v30 != a4 || v30 >= &a4[v46])
  {
    memmove(v30, a4, 8 * v46);
  }

  return 1;
}

void sub_1E403524C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = a3;
  v55 = type metadata accessor for SportsSeeAllPlayModel(0);
  MEMORY[0x1EEE9AC00](v55);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v46 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = v54 - a2;
  if (v54 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v58 = a1;
  v57 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1E3FD58E0(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v30 = v54;
    v51 = v8;
    v52 = a1;
    v50 = -v13;
    v48 = v11;
LABEL_36:
    v53 = a2;
    v54 = a2 + v28;
    v31 = v30;
    v32 = v29;
    v33 = v29;
    v49 = v29;
    while (1)
    {
      if (v27 <= a4)
      {
        v58 = a2;
        v56 = v32;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v32;
      v34 = v31 + v28;
      v35 = v27 + v28;
      OUTLINED_FUNCTION_15_164();
      v37 = v36;
      v39 = v38;
      sub_1E4035D98();
      sub_1E4035D98();
      v40 = *(v11 + 6);
      v41 = v8;
      v42 = *(v8 + 6);
      sub_1E4035DF0(v41, type metadata accessor for SportsSeeAllPlayModel);
      sub_1E4035DF0(v11, type metadata accessor for SportsSeeAllPlayModel);
      if (v42 < v40)
      {
        v44 = v39 < v53 || v34 >= v53;
        v30 = v34;
        if (v44)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v47;
          v11 = v48;
          v8 = v51;
          a1 = v52;
          v27 = v37;
          v28 = v50;
        }

        else
        {
          v29 = v47;
          v11 = v48;
          v15 = v39 == v53;
          v45 = v54;
          a2 = v54;
          v8 = v51;
          a1 = v52;
          v27 = v37;
          v28 = v50;
          if (!v15)
          {
            OUTLINED_FUNCTION_32_85();
            swift_arrayInitWithTakeBackToFront();
            v27 = v37;
            a2 = v45;
            v29 = v47;
          }
        }

        goto LABEL_36;
      }

      if (v39 < v37 || v34 >= v37)
      {
        OUTLINED_FUNCTION_32_85();
        swift_arrayInitWithTakeFrontToBack();
        v31 = v34;
        v27 = v35;
        v32 = v35;
        v8 = v51;
        a1 = v52;
        v11 = v48;
        v33 = v49;
        a2 = v53;
        v28 = v50;
      }

      else
      {
        v32 = v35;
        v15 = v37 == v39;
        v31 = v34;
        v27 = v35;
        v8 = v51;
        a1 = v52;
        v11 = v48;
        v33 = v49;
        a2 = v53;
        v28 = v50;
        if (!v15)
        {
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeBackToFront();
          v31 = v34;
          v27 = v35;
          v32 = v35;
        }
      }
    }

    v58 = a2;
    v56 = v33;
  }

  else
  {
    sub_1E3FD58E0(a1, v14 / v13, a4);
    v53 = a4 + v18 * v13;
    v56 = v53;
    while (a4 < v53 && a2 < v54)
    {
      sub_1E4035D98();
      sub_1E4035D98();
      v21 = a2;
      v22 = *(v11 + 6);
      v23 = *(v8 + 6);
      OUTLINED_FUNCTION_14_171();
      sub_1E4035DF0(v8, v24);
      sub_1E4035DF0(v11, type metadata accessor for SportsSeeAllPlayModel);
      if (v23 >= v22)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeFrontToBack();
          a2 = v21;
        }

        else
        {
          a2 = v21;
          if (a1 != a4)
          {
            OUTLINED_FUNCTION_32_85();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = a4 + v13;
        a4 += v13;
      }

      else
      {
        a2 = v21 + v13;
        if (a1 < v21 || a1 >= a2)
        {
          OUTLINED_FUNCTION_210();
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v21)
        {
          OUTLINED_FUNCTION_210();
          OUTLINED_FUNCTION_32_85();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v13;
      v58 = a1;
    }
  }

LABEL_58:
  sub_1E4035688(&v58, &v57, &v56);
}

uint64_t sub_1E4035688(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SportsSeeAllPlayModel(0);
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

uint64_t sub_1E4035768()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

void sub_1E40357E8(uint64_t a1)
{
  sub_1E40358D8();
  if (v1 <= 0x3F)
  {
    sub_1E4205BF4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SportsPlayProcessor.ProcessorPlayStore(319);
      if (v3 <= 0x3F)
      {
        sub_1E4035928(319);
        if (v4 <= 0x3F)
        {
          sub_1E4035A68(319, &qword_1ECF3EB38, MEMORY[0x1E69D3B28]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E40358D8()
{
  if (!qword_1ECF3EB20)
  {
    v0 = sub_1E4206374();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3EB20);
    }
  }
}

void sub_1E4035928(uint64_t a1)
{
  if (!qword_1ECF3EB28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB30, &qword_1E42E6768);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3EB28);
    }
  }
}

void sub_1E4035994(uint64_t a1)
{
  sub_1E4035A68(319, &qword_1ECF3EB40, type metadata accessor for SportsPlayPeriod);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E4035A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4207104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1E4035ABC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsSeeAllPlayModel(0);
  v28 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v23 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = -1 << *(a4 + 32);
    v24 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v25 = a3;
    while (v16 < a3)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            v13 = v23;
            a1 = v24;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v20 = v17;
LABEL_15:
      v15 &= v15 - 1;
      v21 = a4;
      v22 = *(v28 + 72);
      sub_1E4035D98();
      sub_1E4035768();
      sub_1E4035768();
      a3 = v25;
      if (v19 == v25)
      {
        v17 = v20;
        v13 = v23;
        a1 = v24;
        a4 = v21;
        goto LABEL_20;
      }

      a2 += v22;
      v16 = v19;
      v17 = v20;
      a4 = v21;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E4035D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsSeeAllPlayModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4035D98()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E4035DF0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E4035E48()
{
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return v0;
}

uint64_t sub_1E4035EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4035F10(uint64_t a1, uint64_t a2, uint64_t a3)
{

  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36F10, &unk_1E42CAA40);
  if (swift_dynamicCast())
  {
    v5 = *(&v15[1] + 1);
    v6 = v16;
    __swift_project_boxed_opaque_existential_1(v15, *(&v15[1] + 1));
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1E325F6F0(v15, &qword_1ECF36F18, qword_1E42E7B60);
    v7 = 0;
  }

  sub_1E403622C(v7, v15);

  v10 = *(v15 + 8);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  v11 = *(&v15[1] + 1);
  v9 = *&v15[0];
  MEMORY[0x1E690DE70](v15, a2, &type metadata for ConfirmationDialogViewModifier, a3);
  sub_1E325F6F0(&v9, &qword_1ECF3EB58, &unk_1E42E67E0);
  sub_1E325F6F0(&v10, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E325F6F0(&v11, &qword_1ECF3EB60, &qword_1E42E67F0);
  sub_1E325F6F0(&v12, &qword_1ECF3EB68, &qword_1E42E67F8);
  return sub_1E325F6F0(&v13, &qword_1ECF2F550, &qword_1E42E6800);
}

uint64_t sub_1E4036118(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E403622C(v5, v9);
  v15 = v10;
  v16 = v11;
  v14 = *&v9[24];
  v13 = *&v9[8];
  v12 = *v9;
  v8 = v11;
  v7[1] = *&v9[16];
  v7[2] = v10;
  v7[0] = *v9;
  MEMORY[0x1E690DE70](v7, a2, &type metadata for ConfirmationDialogViewModifier, a3);
  sub_1E325F6F0(&v12, &qword_1ECF3EB58, &unk_1E42E67E0);
  sub_1E325F6F0(&v13, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E325F6F0(&v14, &qword_1ECF3EB60, &qword_1E42E67F0);
  sub_1E325F6F0(&v15, &qword_1ECF3EB68, &qword_1E42E67F8);
  return sub_1E325F6F0(&v15 + 8, &qword_1ECF2F550, &qword_1E42E6800);
}

uint64_t sub_1E403622C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E42038E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB60, &qword_1E42E67F0);
  sub_1E42038E4();
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_1E4036310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB70, qword_1E42E6808);
  sub_1E32752B0(&qword_1EE28A178, &qword_1ECF3EB70, qword_1E42E6808, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

void sub_1E403639C(void *a1)
{
  v1 = a1;
  sub_1E4200524();
}

uint64_t sub_1E40363DC()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB70, qword_1E42E6808);
  swift_allocObject();
  *(v0 + 16) = sub_1E4200544();
  return v0;
}

unint64_t sub_1E4036468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE292F10[0];
  if (!qword_1EE292F10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE292F10);
  }

  return result;
}

uint64_t sub_1E40364BC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4036510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E40365A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB78, &qword_1E42E69C0);
  OUTLINED_FUNCTION_0_10();
  v34 = v5;
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB80, &qword_1E42E69C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v31 = v29 - v9;
  v37 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0, &unk_1E42E69F8);
  sub_1E42038F4();
  v33 = v7;
  if (v44 && (v10 = sub_1E32868C0(v44, &selRef_title), v11))
  {
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v40 = v10;
  v41 = v12;
  v44 = *(v2 + 8);
  v39 = *(v2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  v13 = sub_1E4203914();
  v29[1] = v38;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB88, &qword_1E42E69D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB90, &qword_1E42E69D8);
  v15 = sub_1E32752B0(&qword_1EE288940, &qword_1ECF3EB88, &qword_1E42E69D0, MEMORY[0x1E697FDF8]);
  sub_1E32822E0(v15, v16, v17);
  sub_1E4037470();
  v18 = v33;
  sub_1E4203134();

  *&v39 = *v2;
  if (v39)
  {
    v20 = (*(*v39 + 88))(v19);
  }

  else
  {
    v20 = sub_1E3B4F980(&type metadata for ConfirmationDialogViewModel.Event, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v21 = v20;
  v22 = *(v2 + 24);
  v42 = *(v2 + 32);
  v43 = v22;
  v40 = *(v2 + 40);
  LOBYTE(v41) = *(v2 + 48);
  v23 = swift_allocObject();
  v24 = *(v3 + 16);
  *(v23 + 16) = *v3;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v3 + 32);
  *(v23 + 64) = *(v3 + 48);
  v25 = v31;
  (*(v34 + 32))(v31, v18, v35);
  v26 = v32;
  *(v25 + *(v32 + 52)) = v21;
  v27 = (v25 + *(v26 + 56));
  *v27 = sub_1E40375A4;
  v27[1] = v23;
  sub_1E32E098C(v25, v36);
  sub_1E37E93E8(&v39, &v37, &qword_1ECF3EB58, &unk_1E42E67E0);
  sub_1E37E93E8(&v44, &v37, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E37E93E8(&v43, &v37, &qword_1ECF3EB60, &qword_1E42E67F0);
  sub_1E37E93E8(&v42, &v37, &qword_1ECF3EB68, &qword_1E42E67F8);
  return sub_1E37E93E8(&v40, &v37, &qword_1ECF2F550, &qword_1E42E6800);
}

void sub_1E4036A1C(id *a1, uint64_t a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v12 = *a1;
  v13 = sub_1E3982FB8(v10, v11);
  if (!v13)
  {
LABEL_11:
    v30 = *(a2 + 8);
    v31 = v30;
    v32 = *(&v30 + 1);
    sub_1E37E93E8(&v32, &v29, &qword_1ECF31088, &qword_1E42E69F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
    sub_1E42038F4();
    if (v29)
    {
      sub_1E325F6F0(&v31, &qword_1ECF294E0, &qword_1E429C8B0);
      v23 = sub_1E324FBDC();
      (*(v6 + 16))(v9, v23, v4);
      v24 = sub_1E41FFC94();
      v25 = sub_1E42067F4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1E323F000, v24, v25, "ConfirmationDialogViewModifier:: presenting confirmation while another dialog is presented", v26, 2u);
        MEMORY[0x1E69143B0](v26, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v4);
    }

    else
    {
      v30 = *(a2 + 24);
      v29 = v12;
      v27 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0, &unk_1E42E69F8);
      sub_1E4203904();
      v30 = v31;
      LOBYTE(v29) = 1;
      sub_1E4203904();

      sub_1E325F6F0(&v31, &qword_1ECF294E0, &qword_1E429C8B0);
    }

    return;
  }

  v14 = v13;
  v15 = [objc_opt_self() topPresentedViewController];
  if (!v15)
  {

    goto LABEL_11;
  }

  v28 = v15;
  v16 = [v12 popoverPresentationController];
  if (v16)
  {
    v17 = v16;
    v18 = *(*v14 + 96);
    v19 = v18();
    [v17 setSourceView_];

    v20 = v18();
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      [v17 setSourceRect_];
      [v17 setPermittedArrowDirections_];

      v17 = v21;
    }
  }

  [v12 vui:v28 presentAlertFromPresentingController:1 animated:0 completion:?];

  v22 = v28;
}

void sub_1E4036DCC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E4205F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1E4036E34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = sub_1E3FBD320(a1);
  if (v17)
  {
    v18 = v17;
    v25 = v16;
    v26 = a2;
    if ([a1 style] == 2)
    {
      sub_1E4200A04();
    }

    else
    {
      if ([a1 style] != 1)
      {
        v20 = sub_1E4200A34();
        v21 = 1;
        goto LABEL_11;
      }

      sub_1E4200A14();
    }

    v20 = sub_1E4200A34();
    v21 = 0;
LABEL_11:
    __swift_storeEnumTagSinglePayload(v15, v21, 1, v20);
    sub_1E37E93E8(v15, v12, &qword_1ECF2F570, &unk_1E42B7C40);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    MEMORY[0x1EEE9AC00](v22);
    *(&v25 - 2) = v25;
    *(&v25 - 1) = v18;
    v23 = a1;
    sub_1E4203954();

    sub_1E325F6F0(v15, &qword_1ECF2F570, &unk_1E42B7C40);
    v24 = v26;
    (*(v6 + 32))(v26, v9, v4);
    return __swift_storeEnumTagSinglePayload(v24, 0, 1, v4);
  }

  return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
}

uint64_t sub_1E4037178()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  *&v14 = v2;
  *(&v14 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0, &unk_1E42E69F8);
  sub_1E42038F4();
  if (v11[0])
  {
    v4 = [v11[0] actions];

    sub_1E40375AC();
    v5 = sub_1E42062B4();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v11[2] = v5;
  swift_getKeyPath();
  v15 = *v1;
  v16 = v2;
  v14 = *(v1 + 1);
  v17 = v3;
  v13 = *(v1 + 48);
  v12 = v1[5];
  v6 = swift_allocObject();
  v8 = *(v1 + 1);
  v7 = *(v1 + 2);
  v9 = *v1;
  *(v6 + 64) = *(v1 + 48);
  *(v6 + 32) = v8;
  *(v6 + 48) = v7;
  *(v6 + 16) = v9;
  sub_1E37E93E8(&v15, v11, &qword_1ECF3EB58, &unk_1E42E67E0);
  sub_1E37E93E8(&v14, v11, &qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E37E93E8(&v16, v11, &qword_1ECF3EB60, &qword_1E42E67F0);
  sub_1E37E93E8(&v17, v11, &qword_1ECF3EB68, &qword_1E42E67F8);
  sub_1E37E93E8(&v12, v11, &qword_1ECF2F550, &qword_1E42E6800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D198, &unk_1E42DFD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EB98, &unk_1E42E69E0);
  sub_1E32752B0(&qword_1EE23B4C8, &qword_1ECF3D198, &unk_1E42DFD70, MEMORY[0x1E69E6338]);
  sub_1E375BEF4();
  sub_1E40374F4();
  return sub_1E4203B34();
}

uint64_t sub_1E40373D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA0, &unk_1E42E69F8);
  sub_1E42038F4();
  if (!v8 || (v0 = sub_1E32868C0(v8, &selRef_message), !v1))
  {

    v0 = 0;
    v1 = 0xE000000000000000;
  }

  sub_1E32822E0(v0, v1, v2);
  v3 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v3, v4, v5, v6);
}

unint64_t sub_1E4037470()
{
  result = qword_1EE2883C8;
  if (!qword_1EE2883C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB90, &qword_1E42E69D8);
    sub_1E40374F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883C8);
  }

  return result;
}

unint64_t sub_1E40374F4()
{
  result = qword_1EE288630;
  if (!qword_1EE288630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98, &unk_1E42E69E0);
    sub_1E32752B0(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288630);
  }

  return result;
}

unint64_t sub_1E40375AC()
{
  result = qword_1ECF372A0;
  if (!qword_1ECF372A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF372A0);
  }

  return result;
}

uint64_t objectdestroyTm_60()
{

  j__swift_release(*(v0 + 56));

  return swift_deallocObject();
}

void sub_1E4037660()
{
  v1 = *(v0 + 16);
  v2 = [v1 handler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, v1);

    _Block_release(v3);
  }
}

uint64_t sub_1E40376D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E32822E0(a1, a2, a3);

  v3 = sub_1E4202C44();
  return OUTLINED_FUNCTION_92(v3, v4, v5, v6);
}

uint64_t sub_1E4037730(__n128 a1)
{
  if (*(v1 + 128))
  {
    v2 = *(v1 + 128);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v2 = sub_1E4097BF8(1);
    *(v1 + 128) = v2;
  }

  return v2;
}

uint64_t sub_1E40377D0()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 1720);

  v4 = v2(v3);
  sub_1E3C37CBC(v4, 23);

  v6 = (*(*v1 + 1744))(v5);
  sub_1E3C37CBC(v6, 9);

  v8 = (*(*v1 + 1792))(v7);
  sub_1E3C37CBC(v8, 41);

  v10 = (*(*v1 + 1768))(v9);
  sub_1E3C37CBC(v10, 14);

  return v1;
}

double sub_1E403796C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  else
  {
    a2 = 0;
    a3 = 0;
  }

  type metadata accessor for AppEnvironment(0);
  sub_1E39DC8E8();
  v11[0] = a2;
  v11[1] = a3;
  v11[2] = sub_1E4201754();
  v11[3] = v9;
  MEMORY[0x1E690DE70](v11, a4, &type metadata for SizeClassChangeModifier, a5);
  sub_1E34AF594(a2, a3);

  return result;
}

unint64_t sub_1E4037A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2985D0[0];
  if (!qword_1EE2985D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2985D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI10LayoutGridC0D9SizeClassOIegy_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E4037A98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4037AEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1E4037B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA8, &qword_1E42E6B58);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  if (a4)
  {
    v15 = *(*a4 + 240);

    v17 = v15(v16);

    sub_1E37F99D4(v18, v19, v20);
    v21 = sub_1E3B501F8(v17, &unk_1F5D6AC00);

    v22 = swift_allocObject();
    *(v22 + 2) = a2;
    *(v22 + 3) = a3;
    *(v22 + 4) = a4;
    *(v22 + 5) = a5;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBB0, &unk_1E42E6B60);
    (*(*(v23 - 8) + 16))(v14, a1, v23);
    *&v14[*(v12 + 52)] = v21;
    v24 = &v14[*(v12 + 56)];
    *v24 = sub_1E4037D58;
    v24[1] = v22;
    sub_1E4037E50(v14, a6);

    return sub_1E34AF604(a2, a3);
  }

  else
  {
    type metadata accessor for AppEnvironment(0);
    sub_1E39DC8E8();
    result = sub_1E4201744();
    __break(1u);
  }

  return result;
}

void sub_1E4037D58()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v3 = v0[4];
    if (v3)
    {
      v4 = *(*v3 + 216);
      sub_1E34AF604(v0[2], v0[3]);

      v6 = v4(v5);

      v1(v6);

      sub_1E34AF594(v1, v2);
    }

    else
    {
      type metadata accessor for AppEnvironment(0);
      sub_1E39DC8E8();

      sub_1E4201744();
      __break(1u);
    }
  }
}

uint64_t sub_1E4037E50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBA8, &qword_1E42E6B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4037EC0()
{
  result = qword_1EE2893C8;
  if (!qword_1EE2893C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EBA8, &qword_1E42E6B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2893C8);
  }

  return result;
}

uint64_t sub_1E4037F24(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_248();
  v4 = swift_allocObject();
  sub_1E4037F6C(a1, a2);
  return v4;
}

void sub_1E4037F6C(uint64_t a1, void *a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v2;
  *(v2 + 32) = 0u;
  v16 = (v2 + 32);
  *(v2 + 48) = 0;
  v17 = (v2 + 48);
  *(v16 - 1) = 0u;
  OUTLINED_FUNCTION_3_0((v16 + 1), v99);
  v16[1] = a1;
  v92 = a2;
  sub_1E327F454(a2, &v96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  type metadata accessor for CollectionServiceRequestContext(0);
  if (swift_dynamicCast())
  {
    v18 = v95[0];
  }

  else
  {
    v18 = 0;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v19, v20, a1, &v96);

  if (!v97)
  {
    sub_1E329505C(&v96);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v24 = sub_1E324FBDC();
    (*(v7 + 16))(v10, v24, v5);

    v25 = sub_1E41FFC94();
    v26 = sub_1E42067F4();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v96 = v28;
      *v27 = 136315138;
      v95[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBB8, qword_1E42E6B70);
      v29 = sub_1E42070D4();
      v31 = sub_1E3270FC8(v29, v30, &v96);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1E323F000, v25, v26, "CollectionFragment:: Failed to create fragment from JSON <%s>.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E69143B0](v28, -1, -1);
      MEMORY[0x1E69143B0](v27, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v92);
    (*(v7 + 8))(v10, v5);
    return;
  }

  v22 = v95[0];
  if (!*(v95[0] + 16))
  {

    goto LABEL_12;
  }

  if (!v18)
  {
    __swift_destroy_boxed_opaque_existential_1(v92);
    goto LABEL_16;
  }

  v23 = *(v18 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType);
  if (v23 == 5)
  {
    __swift_destroy_boxed_opaque_existential_1(v92);

LABEL_16:

    return;
  }

  if ((sub_1E37D01CC(*(v18 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType), 2, v21) & 1) == 0)
  {

    sub_1E37D01CC(v23, 1, v38);

    __swift_destroy_boxed_opaque_existential_1(v92);
    return;
  }

  v32 = sub_1E4206BA4();
  v33 = VUISignpostLogObject(v32);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  v34 = *(v12 + 8);
  (v34)(v15, v91);
  ViewModelKeys.rawValue.getter(35);
  v90 = v22;
  sub_1E3277E60(v35, v36, v22, &v96);

  if (v97)
  {
    if (swift_dynamicCast())
    {
      v37 = v95[0];
      OUTLINED_FUNCTION_3_0((v16 - 1), v94);
      *(v16 - 1) = v37;
    }
  }

  else
  {
    sub_1E329505C(&v96);
  }

  v39 = v90;
  v97 = &type metadata for ViewModelKeys;
  v98 = &off_1F5D7BCA8;
  LOBYTE(v96) = 34;
  v40 = sub_1E39BD1A0(&v96, v90);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  OUTLINED_FUNCTION_3_0((v16 + 2), v95);
  *v17 = v40;

  v41 = *(*v18 + 176);

  v43 = v41(v42);

  if (!v43)
  {
    goto LABEL_43;
  }

  v89 = v34;
  ViewModelKeys.rawValue.getter(13);
  v45 = v44;
  v34 = v46;
  sub_1E384EE08(140);
  v87 = v47;
  v49 = v48;
  ViewModelKeys.rawValue.getter(7);
  v86 = v50;
  v52 = v51;
  sub_1E3277E60(v45, v34, v39, &v96);

  v53 = v39;
  if (!v97)
  {

    sub_1E329505C(&v96);
LABEL_41:
    OUTLINED_FUNCTION_6_214();
    goto LABEL_42;
  }

  v88 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_9_180();
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_40:

    goto LABEL_41;
  }

  v34 = v100;
  v102 = v100;
  v54 = v88;
  if (!*(v100 + 16))
  {

    goto LABEL_40;
  }

  v53 = *(v100 + 32);

  sub_1E3277E60(v87, v54, v53, &v96);

  if (!v97)
  {

    sub_1E329505C(&v96);
LABEL_46:
    OUTLINED_FUNCTION_6_214();
    OUTLINED_FUNCTION_5_231();
    goto LABEL_42;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_9_180();
  v85 = v55;
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_46;
  }

  v56 = v100;
  v57 = MEMORY[0x1E69E7CC0];
  v101 = MEMORY[0x1E69E7CC0];
  v58 = type metadata accessor for ViewModel();
  v59 = sub_1E3DD5014(13, v56, v43, v58);
  if (v59)
  {
    v57 = v59;
  }

  sub_1E3277E60(v86, v52, v56, &v96);

  if (!v97)
  {

    sub_1E329505C(&v96);
LABEL_49:
    OUTLINED_FUNCTION_5_231();
    v69 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_6_214();
LABEL_65:

    if (v69 >> 62)
    {
      v80 = sub_1E42076C4();

      swift_bridgeObjectRelease_n();
      v69 = v80;
    }

    else
    {
      sub_1E42079D4();
    }

    OUTLINED_FUNCTION_3_0(v16, &v96);
    *v16 = v69;
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_9_180();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_49;
  }

  v81[2] = v58;
  v86 = v57;
  v53 = v100;
  v60 = type metadata accessor for CollectionGroupViewModel();
  v61 = *(*v43 + 624);
  v84 = *v43 + 624;
  v83 = v61;
  v61();
  v86 = v60;
  if (!sub_1E3960F08())
  {
    v63 = MEMORY[0x1E69E7CC0];
    goto LABEL_51;
  }

  MEMORY[0x1E6910BF0]();
  OUTLINED_FUNCTION_7_220();
  if (v62)
  {
    goto LABEL_70;
  }

  while (1)
  {
    sub_1E4206324();
    v63 = v101;
LABEL_51:
    OUTLINED_FUNCTION_5_231();
    if (*(v34 + 16))
    {
      break;
    }

    __break(1u);
LABEL_70:
    OUTLINED_FUNCTION_10_165();
  }

  sub_1E4038CA4(v34);
  if (v70)
  {
    v82 = v63;
    sub_1E4038CF8(0, 1);

    v71 = *(v102 + 16);
    v81[1] = v102;
    if (v71)
    {
      v34 = v102 + 32;
      v72 = v88;
      do
      {
        v73 = *v34;
        if (*(*v34 + 16))
        {

          v74 = sub_1E327D33C(v87, v72);
          if (v75)
          {
            sub_1E328438C(*(v73 + 56) + 32 * v74, &v96);

            OUTLINED_FUNCTION_9_180();
            if (swift_dynamicCast())
            {
              v53 = v100;
              v83();
              OUTLINED_FUNCTION_5_231();
              if (sub_1E3960E00(v76, v77, v78))
              {

                MEMORY[0x1E6910BF0](v79);
                OUTLINED_FUNCTION_7_220();
                if (v62)
                {
                  OUTLINED_FUNCTION_10_165();
                }

                sub_1E4206324();

                v82 = v101;
                OUTLINED_FUNCTION_5_231();
              }
            }
          }

          else
          {
          }
        }

        v34 += 8;
        --v71;
        v72 = v88;
      }

      while (v71);
    }

    OUTLINED_FUNCTION_6_214();
    v69 = v82;
    if (v82)
    {
      goto LABEL_65;
    }

LABEL_42:
    v64 = type metadata accessor for ViewModel();

    v65 = sub_1E3DD5014(13, v53, v43, v64);

    OUTLINED_FUNCTION_3_0(v16, &v96);
    *v16 = v65;
LABEL_43:

    v66 = v92;
    v67 = sub_1E4206B94();
    v68 = VUISignpostLogObject(v67);
    sub_1E41FFBE4();
    sub_1E41FFBA4();

    __swift_destroy_boxed_opaque_existential_1(v66);
    (v34)(v15, v91);
    return;
  }

  __break(1u);
}

uint64_t sub_1E4038B5C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_248();
  v4 = swift_allocObject();
  sub_1E4038BA4(a1, a2);
  return v4;
}

uint64_t sub_1E4038BA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  OUTLINED_FUNCTION_3_0(v2 + 24, v7);
  *(v2 + 24) = a1;
  OUTLINED_FUNCTION_3_0(v2 + 32, &v6);
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_1E4038C10()
{

  return v0;
}

uint64_t sub_1E4038C50()
{
  sub_1E4038C10();
  v0 = OUTLINED_FUNCTION_4_248();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E4038C7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E4037F24(a1, a2);
  *a3 = result;
  return result;
}

void sub_1E4038CA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }
}

int64_t sub_1E4038CF8(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E3EA0A4C(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 8 * a2);
  if (v5 != a2 || v12 + 8 * v11 <= v9 + 8 * v5)
  {
    result = memmove((v9 + 8 * v5), v12, 8 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1E4038DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int16 *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v9 = BYTE1(a3);
  v10 = a4[49];
  v11 = v10 + 66;
  if ((v10 - 190) > 0x1F)
  {
    goto LABEL_26;
  }

  v12 = a3;
  if (((1 << v11) & 0xEF800000) != 0)
  {
    if (a3 == 5 || (LOBYTE(v72) = 4, v13 = sub_1E3890B18(a1, a2, a3), OUTLINED_FUNCTION_1_281(v13, v14, &type metadata for ViewLayoutEnvironment.Placement, v13, v15, v16, v17, v18, v67, v12), (sub_1E4205E84() & 1) == 0) || (sub_1E3A24FDC(a1) & 1) == 0)
    {
      v70 = &unk_1F5D5DE28;
      v71 = &off_1F5D5CA58;
      LOBYTE(v69[0]) = 4;
      v24 = j__OUTLINED_FUNCTION_18();
      v25 = sub_1E39C29F0(v69, v24 & 1);
      __swift_destroy_boxed_opaque_existential_1(v69);
      v22 = 0;
      v20 = 0;
      if (v25)
      {
        v23 = 118;
      }

      else
      {
        v23 = 117;
      }

      v19 = 1;
      v21 = 1;
      goto LABEL_11;
    }

LABEL_6:
    v19 = 0;
    v20 = 0;
    v21 = 1;
    v22 = 21;
    v23 = 119;
LABEL_11:
    v26 = 1;
    goto LABEL_60;
  }

  if (((1 << v11) & 9) != 0)
  {
    if (a3 == 5)
    {
      goto LABEL_59;
    }

    LOBYTE(v72) = 1;
    v27 = sub_1E3890B18(a1, a2, a3);
    OUTLINED_FUNCTION_1_281(v27, v28, &type metadata for ViewLayoutEnvironment.Placement, v29, v30, v31, v32, v33, v67, v12);
    v34 = sub_1E4205E84();
    if (v34)
    {
      if (v9 != 2 && (v6 & 0x100) != 0)
      {
        goto LABEL_6;
      }

      if (([objc_opt_self() isPad] & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    else
    {
      LOBYTE(v72) = 3;
      OUTLINED_FUNCTION_1_281(v34, v35, &type metadata for ViewLayoutEnvironment.Placement, v36, v37, v38, v39, v40, v68, v12);
      if ((sub_1E4205E84() & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (sub_1E3A24FDC(a1))
    {
      goto LABEL_6;
    }

LABEL_59:
    v22 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v26 = 0;
    v23 = 263;
    goto LABEL_60;
  }

  if (v10 != 197)
  {
LABEL_26:
    if (v10 == 181)
    {
      v51 = sub_1E3A24FDC(a1);
      v22 = 0;
      if (v51)
      {
        v23 = 122;
      }

      else
      {
        v23 = 118;
      }

      if (v51)
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      v21 = (v51 & 1) == 0;
      v19 = 1;
      goto LABEL_11;
    }

    v52 = (*(*a4 + 648))(a1, a2);
    if (!v52)
    {
      goto LABEL_59;
    }

    v53 = v52;
    swift_beginAccess();
    v54 = *(v53 + 56);

    if (!v54)
    {
      goto LABEL_59;
    }

    v56 = (*(*v54 + 1000))(v55);
    v58 = v57;

    if (!v58)
    {
      goto LABEL_59;
    }

    v61 = TVAppFeature.isEnabled.getter(10, v59, v60);
    if (v56 == sub_1E4205F14() && v58 == v62)
    {
      v64 = 1;
    }

    else
    {
      v64 = sub_1E42079A4();
    }

    v65 = sub_1E3A24FDC(a1);
    v66 = (*(*a4 + 536))();
    if (v66)
    {
      v70 = &unk_1F5D5E578;
      v71 = &off_1F5D5CC08;
      LOBYTE(v69[0]) = 3;
      sub_1E3F9F164(v69, v66, MEMORY[0x1E69E7CA0] + 8);

      __swift_destroy_boxed_opaque_existential_1(v69);
      if (*(&v73 + 1))
      {
        if (swift_dynamicCast() && (v69[0] & 1) != 0)
        {
          if (v9 != 2 && (v6 & 0x100) != 0)
          {
            goto LABEL_6;
          }

          if ([objc_opt_self() isPad])
          {
LABEL_58:
            if (v65)
            {
              goto LABEL_6;
            }

            goto LABEL_59;
          }
        }

LABEL_56:
        if ((v61 & 1) == 0 || (v64 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v72 = 0u;
      v73 = 0u;
    }

    sub_1E329505C(&v72);
    goto LABEL_56;
  }

  v41 = sub_1E3A24FDC(a1);
  v26 = 0;
  v22 = 0;
  v23 = 263;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if ((v41 & 1) != 0 && v12 != 5)
  {
    LOBYTE(v72) = 3;
    v44 = sub_1E3890B18(v41, v42, v43);
    OUTLINED_FUNCTION_1_281(v44, v45, &type metadata for ViewLayoutEnvironment.Placement, v44, v46, v47, v48, v49, v67, v12);
    v50 = sub_1E4205E84();
    v22 = 0;
    v20 = 0;
    v26 = v50 & 1;
    if (v50)
    {
      v23 = 118;
    }

    else
    {
      v23 = 263;
    }

    v19 = v50 & 1;
    v21 = v19;
  }

LABEL_60:
  *a5 = v23;
  *(a5 + 8) = v22;
  *(a5 + 16) = v19;
  *(a5 + 24) = v20;
  *(a5 + 32) = v21;
  *(a5 + 40) = 0;
  *(a5 + 48) = v26;
}

uint64_t sub_1E40392CC(unsigned __int16 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFEFA && *(a1 + 49))
    {
      v2 = *a1 + 65273;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x107;
      v2 = v3 - 263;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4039310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFEF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 65274;
    if (a3 >= 0xFEFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFEFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 262;
    }
  }

  return result;
}

uint64_t sub_1E403939C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1E403975C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4039434(uint64_t result, unsigned int a2, uint64_t a3)
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

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1E403957C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
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

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1E403975C()
{
  result = qword_1ECF3EBC0;
  if (!qword_1ECF3EBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF3EBC0);
  }

  return result;
}

id sub_1E40397A0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_7_221();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  v14 = type metadata accessor for LibMPPlayableMediaEntity(0);
  if (OUTLINED_FUNCTION_0_324(v14))
  {
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMPMediaItem:*(v42 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) watchType:a2 playbackContext:a3 isRentAndWatchNow:a4 & 1];
  }

  else
  {
    OUTLINED_FUNCTION_7_221();
    v16 = type metadata accessor for LibSidebandPlayableMediaEntity(0);
    if (OUTLINED_FUNCTION_0_324(v16))
    {
      v40 = a2;
      v41 = a3;
      v17 = v10;
      v18 = *(*v42 + 192);

      v18(v19);
      v21 = v20;

      if (v21)
      {
        v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v23 = sub_1E4205ED4();

        v15 = [v22 initWithSidebandAdamID:v23 watchType:v40 playbackContext:v41 isRentAndWatchNow:a4 & 1];

        goto LABEL_13;
      }

      v10 = v17;
      a2 = v40;
      a3 = v41;
    }

    OUTLINED_FUNCTION_7_221();
    v24 = type metadata accessor for LibFamilySharingPlayableMediaEntity(0);
    if (OUTLINED_FUNCTION_0_324(v24))
    {
      v25 = sub_1E402AAA4(v42);
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1E4298880;
      *(v27 + 32) = v25;
      sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
      v28 = v25;
      v29 = sub_1E42062A4();

      v15 = [v26 initWithVideosPlayables:v29 watchType:a2 playbackContext:a3 isRentAndWatchNow:a4 & 1];
    }

    else
    {
      v30 = sub_1E41A3110();
      (*(v10 + 16))(v13, v30, v8);
      OUTLINED_FUNCTION_7_221();
      v31 = sub_1E41FFC94();
      v32 = sub_1E42067F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 136315138;
        v41 = v10;
        v42 = v34;
        __swift_project_boxed_opaque_existential_1(v43, v43[3]);
        v35 = sub_1E4207944();
        v37 = v36;
        __swift_destroy_boxed_opaque_existential_1(v43);
        v38 = sub_1E3270FC8(v35, v37, &v42);

        *(v33 + 4) = v38;
        _os_log_impl(&dword_1E323F000, v31, v32, "Unable to create VUIActionPlay for %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v41 + 8))(v13, v8);
      }

      else
      {

        (*(v10 + 8))(v13, v8);
        __swift_destroy_boxed_opaque_existential_1(v43);
      }

      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

void sub_1E4039C00(void *a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v13 = sub_1E403A2F8(a2, type metadata accessor for LibMPPlayableMediaEntity);
    if (v13)
    {
      v14 = v13;
      v63 = a1;

      v64 = MEMORY[0x1E69E7CC0];
      sub_1E32AE9B0(v14);
      OUTLINED_FUNCTION_1_282();
      while (1)
      {
        if (v7 == a2)
        {

          v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_1E3280A90(0, &qword_1EE23B3F8, 0x1E69705D0);
          v20 = sub_1E42062A4();

          v21 = [v19 initWithPlaybackContext:v63 mpMediaItems:v20];
          goto LABEL_14;
        }

        if (v4)
        {
          v15 = MEMORY[0x1E6911E60](a2, v14);
        }

        else
        {
          if (a2 >= *(v3 + 16))
          {
            goto LABEL_51;
          }

          v15 = *(v14 + 8 * a2 + 32);
        }

        if (__OFADD__(a2, 1))
        {
          break;
        }

        v16 = *(v15 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem);

        MEMORY[0x1E6910BF0](v17);
        OUTLINED_FUNCTION_2_246();
        if (v18)
        {
          OUTLINED_FUNCTION_12_21();
        }

        sub_1E4206324();
        ++a2;
      }

      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      v26 = sub_1E403A2F8(a2, type metadata accessor for LibSidebandPlayableMediaEntity);
      if (v26)
      {
        v27 = v26;
        v62 = v4;
        v63 = a1;

        v28 = sub_1E32AE9B0(v27);
        v29 = 0;
        v30 = MEMORY[0x1E69E7CC0];
        while (v28 != v29)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x1E6911E60](v29, v27);
            v31 = v32;
          }

          else
          {
            if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_53;
            }

            v31 = *(v27 + 8 * v29 + 32);
          }

          v33 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_52;
          }

          v34 = (*(*v31 + 192))(v32);
          v36 = v35;

          ++v29;
          if (v36)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1E3740F88(0, *(v30 + 2) + 1, 1, v30);
            }

            v38 = *(v30 + 2);
            v37 = *(v30 + 3);
            if (v38 >= v37 >> 1)
            {
              v30 = sub_1E3740F88((v37 > 1), v38 + 1, 1, v30);
            }

            *(v30 + 2) = v38 + 1;
            v39 = &v30[16 * v38];
            *(v39 + 4) = v34;
            *(v39 + 5) = v36;
            v29 = v33;
          }
        }

        v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v41 = sub_1E42062A4();

        v22 = [v40 initWithPlaybackContext:v63 sidebandLibraryAdamIDs:v41];
      }

      else
      {
        v43 = sub_1E403A2F8(a2, type metadata accessor for LibFamilySharingPlayableMediaEntity);
        if (v43)
        {
          v44 = v43;

          v64 = MEMORY[0x1E69E7CC0];
          sub_1E32AE9B0(v44);
          OUTLINED_FUNCTION_1_282();
          while (v7 != a2)
          {
            if (v4)
            {
              v45 = MEMORY[0x1E6911E60](a2, v44);
            }

            else
            {
              if (a2 >= *(v3 + 16))
              {
                goto LABEL_55;
              }

              v45 = *(v44 + 8 * a2 + 32);
            }

            if (__OFADD__(a2, 1))
            {
              goto LABEL_54;
            }

            sub_1E402AAA4(v45);

            MEMORY[0x1E6910BF0](v46);
            OUTLINED_FUNCTION_2_246();
            if (v18)
            {
              OUTLINED_FUNCTION_12_21();
            }

            sub_1E4206324();
            ++a2;
          }

          v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
          v20 = sub_1E42062A4();

          v21 = [v47 initWithPlaybackContext:a1 videosPlayables:v20 imageProxies:0 storeDictionary:0];
LABEL_14:
          v22 = v21;
        }

        else
        {
          v48 = sub_1E41A3110();
          (*(v9 + 16))(v12, v48, v7);

          v49 = sub_1E41FFC94();
          v50 = sub_1E42067F4();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v64 = v63;
            *v51 = 136315138;
            v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
            v53 = MEMORY[0x1E6910C30](a2, v52);
            LODWORD(v62) = v50;
            v54 = v53;
            v56 = v55;

            v57 = sub_1E3270FC8(v54, v56, &v64);

            *(v51 + 4) = v57;
            _os_log_impl(&dword_1E323F000, v49, v62, "Unable to create MediaInfo for %s", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v63);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();
          }

          else
          {
          }

          (*(v9 + 8))(v12, v7);
          v58 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          OUTLINED_FUNCTION_3_252();
          v22 = [v59 v60];
        }
      }

      v42 = v22;
      [v42 setIntent_];
      [v42 setAutomaticPlaybackStart_];
    }
  }

  else
  {

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    OUTLINED_FUNCTION_3_252();

    [v24 v25];
  }
}

uint64_t sub_1E403A2F8(uint64_t a1, uint64_t (*a2)(void))
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = *(a1 + 16);
  sub_1E4207574();
  v5 = a1 + 32;
  if (!v4)
  {
    return v8;
  }

  while (1)
  {
    sub_1E327F454(v5, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
    a2(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
    v5 += 40;
    if (!--v4)
    {
      return v8;
    }
  }

  return 0;
}

void *sub_1E403A40C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_325();
  sub_1E403C278(v4, v5, &unk_1E42BD340);
  v6 = sub_1E4201754();
  v8 = v7;
  type metadata accessor for CGSize(0);
  sub_1E42038E4();
  v9 = v55;
  v10 = v56;
  v11 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  sub_1E42038E4();
  v47 = v57;
  __src[0] = 0;
  __src[1] = 0;
  sub_1E42038E4();
  v45 = v56;
  v46 = v55;
  v44 = v57;
  v12 = *(*a1 + 464);

  v14 = v12(v13);
  v50 = v57;
  v51 = v8;
  v48 = v56;
  v49 = v55;
  if (v14 && (v15 = sub_1E37D027C(v14), , v15))
  {
    type metadata accessor for CollectionViewModel();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = *(*a1 + 464);
  v18 = v17();
  if (v18)
  {
    v19 = v18;
    v41 = v6;
    v20 = sub_1E32AE9B0(v18);
    v42 = a1;
    v43 = v16;
    if (v20)
    {
      v6 = v20;
      if (v20 >= 1)
      {
        v52 = 0;
        v21 = 0;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1E6911E60](v21, v19);
            v25 = v22;
          }

          else
          {
            v25 = *(v19 + 8 * v21 + 32);
          }

          v53[0] = *(v25 + 98);
          v74 = 76;
          sub_1E3742F1C(v22, v23, v24);
          OUTLINED_FUNCTION_13_178();
          OUTLINED_FUNCTION_14_172();
          if (v55 == __src[0] && v56 == __src[1])
          {
          }

          else
          {
            v27 = sub_1E42079A4();

            if ((v27 & 1) == 0)
            {
              v53[0] = *(v25 + 98);
              v74 = 1;
              OUTLINED_FUNCTION_13_178();
              OUTLINED_FUNCTION_14_172();
              if (v55 == __src[0] && v56 == __src[1])
              {

LABEL_29:

                v52 = v25;
                goto LABEL_26;
              }

              v29 = sub_1E42079A4();

              if (v29)
              {
                goto LABEL_29;
              }
            }
          }

LABEL_26:
          if (v6 == ++v21)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_50:
      MEMORY[0x1E6911E60](0, v11);
LABEL_41:

      OUTLINED_FUNCTION_8();
      v37 = *(v36 + 872);

      v39 = v37(v38);

      if (v39)
      {

        v16 = v43;
LABEL_48:
        type metadata accessor for BackgroundPlaybackModel(0);
        sub_1E39D7838(&unk_1F5D92EB0);
        v40 = sub_1E3F45B98();

        LOBYTE(v74) = 0;
        __src[0] = v6;
        __src[1] = v51;
        __src[2] = a1;
        __src[3] = v16;
        __src[4] = 0;
        __src[5] = v52;
        __src[6] = v39;
        __src[7] = v55;
        __src[8] = v56;
        __src[9] = v57;
        __src[10] = v55;
        __src[11] = v56;
        __src[12] = v57;
        __src[13] = v55;
        __src[14] = v56;
        __src[15] = v57;
        __src[16] = sub_1E38074D0;
        __src[17] = v40;
        LOBYTE(__src[18]) = 0;
        v55 = v6;
        v56 = v51;
        v57 = a1;
        v58 = v16;
        v59 = 0;
        v60 = v52;
        v61 = v39;
        v62 = v9;
        v63 = v10;
        v64 = v50;
        v65 = v49;
        v66 = v48;
        v67 = v47;
        v68 = v46;
        v69 = v45;
        v70 = v44;
        v71 = sub_1E38074D0;
        v72 = v40;
        v73 = 0;
        sub_1E3E89E34(__src, v53);
        sub_1E3E89E90(&v55);
        return memcpy(a2, __src, 0x91uLL);
      }

      goto LABEL_45;
    }

    v52 = 0;
LABEL_32:

    a1 = v42;
    v6 = v41;
  }

  else
  {
    v52 = 0;
  }

  v30 = v17();
  if (!v30)
  {
    goto LABEL_47;
  }

  v31 = sub_1E37D027C(v30);

  if (!v31)
  {
    goto LABEL_47;
  }

  type metadata accessor for CollectionViewModel();
  v32 = swift_dynamicCastClass();
  if (!v32)
  {

LABEL_47:

    v39 = MEMORY[0x1E69E7CC0];
    goto LABEL_48;
  }

  v43 = v16;
  v33 = *(*v32 + 1040);

  v11 = v33(v34);

  if (!v11)
  {
LABEL_45:
    v16 = v43;
    goto LABEL_47;
  }

  result = sub_1E32AE9B0(v11);
  v16 = v43;
  if (!result)
  {

    goto LABEL_47;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_50;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_41;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E403A9FC@<X0>(uint64_t *a1@<X8>)
{
  v90[0] = *(v1 + 56);
  *&v90[1] = *(v1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  if (v89[0] == 0.0 && v89[1] == 0.0)
  {
    if (!*v1)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 184);

    v6 = COERCE_DOUBLE(v4(v5));
    v8 = v7;

    if (v8)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_247();
    v9 = v89[0];
  }

  OUTLINED_FUNCTION_2_247();
  v86 = a1;
  if (v89[0] == 0.0 && v89[1] == 0.0)
  {
    if (!*v1)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 184);

    v11(v12);
    v14 = v13;
    v16 = v15;

    if (v16)
    {
      v17 = 0.0;
    }

    else
    {
      v17 = v14;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_247();
    v17 = v89[1];
  }

  v18 = *(v1 + 48);
  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A2579C(v9);
  if ((*(**(v1 + 16) + 392))())
  {
    type metadata accessor for ShowcaseTemplateLayout();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      goto LABEL_19;
    }
  }

  type metadata accessor for ShowcaseTemplateLayout();
  v20 = sub_1E40B0EA4();
LABEL_19:
  v88 = v20;
  sub_1E3C2AE10();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v87 = v1;
  if (*(v1 + 24))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v27 + 392))())
    {
      OUTLINED_FUNCTION_30();
      (*(v28 + 1640))(v22, v24, v26);
    }
  }

  v29 = sub_1E32AE9B0(v18);
  for (i = 0; ; ++i)
  {
    if (v29 == i)
    {
      if (sub_1E3A24FDC(v19))
      {
        v34 = v9 * 0.95;
        v35 = 10.0;
        v36 = v17;
      }

      else
      {
        v34 = v9 * 0.5;
        v37 = (*v88 + 1696);
        v38 = *v37;
        (*v37)();
        OUTLINED_FUNCTION_30();
        v40 = COERCE_DOUBLE((*(v39 + 304))());
        v42 = v41;

        if (v42)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = v40;
        }

        (v38)(v43);
        OUTLINED_FUNCTION_30();
        (*(v45 + 176))(v108);

        v46 = v108[0];
        if (v109)
        {
          v46 = 0.0;
        }

        v36 = v34 / 1.27 + v44 + v46;
        v35 = v34 * 0.13;
      }

      v47 = *&v36;
      v48 = j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_12_163();
      sub_1E3EB9C0C(*&v34, v47, 0, 0, 0, 1, v48 & 1, 2, &v110, 0, 1, 0, 1, 0, 2, v83, SHIBYTE(v83));
      v129[0] = v110;
      v129[1] = v111;
      v129[2] = v112;
      v130 = v34;
      v131 = 0;
      v132 = v113;
      v133 = v114;
      v134 = v115;
      sub_1E375C2C0(v129, v90);
      v49 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_12_163();
      OUTLINED_FUNCTION_18_15();
      sub_1E3EB9DAC(v54, v50, v51, v52, v53, *&v34, v47, 0, 0, 1, 0, 0, 256, 3, 0, v49 & 1, v84, v85);
      v92 = 0;
      v91 = 0;
      memcpy(__dst, __src, sizeof(__dst));
      v121 = v9;
      v122 = v17;
      v123 = 0;
      *v124 = *v117;
      *&v124[15] = *&v117[15];
      v125 = v35;
      v126 = 0;
      v127 = v118;
      *v128 = *v119;
      *&v128[10] = *&v119[10];
      sub_1E375C1CC(__dst, v90);
      v55 = j__OUTLINED_FUNCTION_18();
      v56 = j__OUTLINED_FUNCTION_18();
      j_j__OUTLINED_FUNCTION_5_8();
      j__OUTLINED_FUNCTION_51_1();
      v57 = j__OUTLINED_FUNCTION_18();
      LOBYTE(v47) = v57;
      v58 = sub_1E3CBD2B8(v57);
      v59 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_18_15();
      sub_1E3EBA150(v65, v60, v61, v62, v63, v55, v56, 0, v64, v66, v67, v68, v69, v70, v71, v72, v73, 0, 1, v47 & 1, v58, v59 & 1);
      BYTE10(v90[13]) = 0;
      BYTE8(v90[16]) = 0;
      *&v90[18] = sub_1E4201B84();
      BYTE8(v90[18]) = 1;
      *&v90[14] = OUTLINED_FUNCTION_5_8();
      *(&v90[14] + 1) = v74;
      *&v90[15] = v75;
      *(&v90[15] + 1) = v76;
      *&v90[19] = 0;
      *(&v90[19] + 1) = (v9 - v34) * 0.5;
      *&v90[20] = 0;
      *(&v90[20] + 1) = *(&v90[19] + 1);
      *(&v90[12] + 1) = v9;
      *&v90[13] = v17;
      BYTE8(v90[13]) = 0;
      sub_1E3EBA2D4(*&v35, 0);

      memcpy(v93, __src, sizeof(v93));
      v94 = v9;
      v95 = v17;
      v96 = 0;
      *v97 = *v117;
      *&v97[15] = *&v117[15];
      v98 = v35;
      v99 = 0;
      v100 = v118;
      *v101 = *v119;
      *&v101[10] = *&v119[10];
      sub_1E37E6F2C(v93);
      v102[0] = v110;
      v102[1] = v111;
      v102[2] = v112;
      v103 = v34;
      v104 = 0;
      v105 = v113;
      v106 = v114;
      v107 = v115;
      sub_1E375C31C(v102);
      v77 = memcpy(v89, v90, sizeof(v89));
      if ((*(**(v87 + 16) + 392))(v77))
      {
        type metadata accessor for ShowcaseTemplateLayout();
        if (swift_dynamicCastClass())
        {
LABEL_44:
          *v86 = sub_1E4203DA4();
          v86[1] = v78;
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBC8, &qword_1E42E6C60);
          sub_1E403B314(v87, v89, v86 + *(v79 + 44));

          return sub_1E375B760(v89);
        }
      }

      type metadata accessor for ShowcaseTemplateLayout();
      sub_1E40B0EA4();
      goto LABEL_44;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1E6911E60](i, v18);
      v31 = v32;
    }

    else
    {
      if (i >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v31 = *(v18 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if ((*(*v31 + 392))(v32))
    {
      OUTLINED_FUNCTION_30();
      (*(v33 + 1640))(v22, v24, v26);
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_0_325();
  sub_1E403C278(v81, v82, &unk_1E42BD340);
  result = sub_1E4201744();
  __break(1u);
  return result;
}

uint64_t sub_1E403B314@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, char *a3@<X8>)
{
  v52 = a2;
  v57 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBE0, &qword_1E42E6DF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBE8, &unk_1E42E6DF8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  v51 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v50 - v16;
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_4_249();
  sub_1E403C278(v17, v18, &unk_1E42DF748);
  sub_1E4200BC4();
  v19 = sub_1E3F46400();
  v54 = v20;
  v55 = v19;
  v53 = v21;
  v63 = swift_allocObject();
  memcpy((v63 + 16), a1, 0x91uLL);
  sub_1E3E89E34(a1, &v64);
  v22 = sub_1E4203DA4();
  v61 = v23;
  v62 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E4299720;
  sub_1E42036C4();
  v25 = sub_1E4203734();

  *(v24 + 32) = v25;
  sub_1E42036C4();
  v26 = sub_1E4203734();

  *(v24 + 40) = v26;
  MEMORY[0x1E690E590](v24);
  sub_1E4203F64();
  sub_1E4201144();
  v59 = v79;
  v27 = v80;
  v28 = v81;
  v29 = v82;
  v30 = v83;
  v58 = sub_1E4202734();
  *v9 = sub_1E4201D44();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EBF0, &qword_1E42E6E08);
  sub_1E403B804(a1, v52, &v9[*(v31 + 44)]);
  sub_1E4203DA4();
  sub_1E4200D94();
  v32 = &v9[*(v6 + 36)];
  v33 = v85;
  *v32 = v84;
  *(v32 + 1) = v33;
  *(v32 + 2) = v86;
  __src[0] = *(a1 + 56);
  *&__src[1] = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E4203914();
  v34 = v64;
  v35 = v65;
  v36 = v66;
  v37 = *&v67;
  v38 = sub_1E403BF88();
  v39 = OUTLINED_FUNCTION_51_1();
  v40 = v60;
  sub_1E41DBF30(v34, v35, v39 & 1, v6, v38, v36, v37);

  sub_1E325F6F0(v9, &qword_1ECF3EBE0, &qword_1E42E6DF0);
  v41 = *(v12 + 16);
  v42 = v56;
  v41(v56, v40, v10);
  v43 = v54;
  v44 = v55;
  *&__src[0] = v55;
  *(&__src[0] + 1) = v54;
  v45 = v53;
  *&__src[1] = v53;
  *(&__src[1] + 1) = sub_1E403BF80;
  __src[2] = v63;
  *&__src[3] = 0;
  *(&__src[3] + 1) = v59;
  *&__src[4] = v27;
  *(&__src[4] + 1) = v28;
  *&__src[5] = v29;
  *(&__src[5] + 1) = v30;
  *&__src[6] = v62;
  *(&__src[6] + 1) = v61;
  LOBYTE(__src[7]) = v58;
  v46 = v57;
  memcpy(v57, __src, 0x71uLL);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC10, &qword_1E42E6E18);
  v41(&v46[*(v47 + 48)], v42, v10);
  sub_1E403C040(__src, &v64);
  v48 = *(v51 + 8);
  v48(v60, v10);
  v48(v42, v10);
  v64 = v44;
  v65 = v43;
  v66 = v45;
  *&v67 = COERCE_DOUBLE(sub_1E403BF80);
  v68 = v63;
  v69 = 0;
  v70 = 0;
  v71 = v59;
  v72 = v27;
  v73 = v28;
  v74 = v29;
  v75 = v30;
  v76 = v62;
  v77 = v61;
  v78 = v58;
  return sub_1E403C0B0(&v64);
}

uint64_t sub_1E403B804@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC20, &qword_1E42E6E28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v14 - v8);
  v10 = *(a1 + 24);
  if (v10)
  {

    *v9 = sub_1E4203DA4();
    v9[1] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC28, &unk_1E42E6E30);
    sub_1E403B938(v10, a2, v9 + *(v12 + 44));

    sub_1E379E528(v9, a3, &qword_1ECF3EC20, &qword_1E42E6E28);
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }
}

uint64_t sub_1E403B938@<X0>(unsigned __int16 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB58, &qword_1E42A2B00);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC30, &qword_1E42E6E40) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC38, &qword_1E42E6E48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;
  memcpy(v37, a2, sizeof(v37));
  nullsub_1();
  memcpy(v36, v37, sizeof(v36));
  sub_1E3A546A4(a1, v36, 0, 0, v10);
  sub_1E4203DA4();
  sub_1E4200D94();
  (*(v7 + 32))(v14, v10, v5);
  v18 = &v14[*(v11 + 44)];
  v19 = v29;
  *v18 = v28;
  *(v18 + 1) = v19;
  *(v18 + 2) = v30;
  sub_1E4202724();
  sub_1E4200A54();
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  v35 = 0;
  sub_1E42022C4();
  sub_1E379E528(v14, v17, &qword_1ECF3EC30, &qword_1E42E6E40);
  v26 = *(v25[0] + 80);
  v27 = *(v25[0] + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF290F0, &qword_1E42996C0);
  sub_1E4203914();
  sub_1E403C118();
  OUTLINED_FUNCTION_18_15();
  sub_1E4202F54();

  return sub_1E325F6F0(v17, &qword_1ECF3EC38, &qword_1E42E6E48);
}

double sub_1E403BC2C()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E324FBDC();
  (*(v2 + 16))(v5, v6, v0);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "Extras: backgroundMediaView did appear", v9, 2u);
    MEMORY[0x1E69143B0](v9, -1, -1);
  }

  (*(v2 + 8))(v5, v0);
  type metadata accessor for BackgroundPlaybackModel(0);
  OUTLINED_FUNCTION_4_249();
  sub_1E403C278(v10, v11, &unk_1E42DF748);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_30();
  v13 = (*(v12 + 200))();

  if ((v13 & 1) == 0)
  {
    OUTLINED_FUNCTION_9_14();
    OUTLINED_FUNCTION_30();
    (*(v15 + 208))(1);
  }

  return result;
}

uint64_t sub_1E403BE90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1E403BED0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

      return OUTLINED_FUNCTION_16_10(result, a2);
    }

    *(result + 145) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E403BF3C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_16_10(result, a2);
    }

    *(result + 24) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_16_10(result, a2);
    }
  }

  return result;
}

unint64_t sub_1E403BF88()
{
  result = qword_1ECF3EBF8;
  if (!qword_1ECF3EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EBE0, &qword_1E42E6DF0);
    sub_1E32752B0(&qword_1ECF3EC00, &qword_1ECF3EC08, &qword_1E42E6E10, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EBF8);
  }

  return result;
}

uint64_t sub_1E403C040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC18, &qword_1E42E6E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E403C0B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC18, &qword_1E42E6E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E403C118()
{
  result = qword_1ECF3EC40;
  if (!qword_1ECF3EC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EC38, &qword_1E42E6E48);
    sub_1E403C1D4();
    sub_1E403C278(&qword_1ECF33448, MEMORY[0x1E6980270], MEMORY[0x1E6980268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EC40);
  }

  return result;
}

unint64_t sub_1E403C1D4()
{
  result = qword_1ECF3EC48;
  if (!qword_1ECF3EC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EC30, &qword_1E42E6E40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3EC48);
  }

  return result;
}

uint64_t sub_1E403C278(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E403C2C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1E403C310(a1, a2);
  return v4;
}

void *sub_1E403C310(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = a1;
  swift_beginAccess();
  v2[3] = a2;
  sub_1E384EE08(*(a1 + 98));
  v2[4] = v5;
  v2[5] = v6;
  return v2;
}

uint64_t sub_1E403C378()
{

  return v0;
}

uint64_t sub_1E403C3A8()
{
  sub_1E403C378();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1E403C3DC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E403C45C(uint64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    return *(*(v2 + 16) + 98);
  }

  else
  {
    v1 = *(sub_1E3AF4598() + 98);
  }

  return v1;
}

id sub_1E403C4B8(uint64_t a1)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    v4 = [result stackedTextUseTypeAsViewIdEnabled];

    if (v4)
    {
      if (a1 < 0)
      {
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v5 = *(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 98);
      }

      else
      {
        v5 = *(sub_1E3AF4598() + 98);
      }

      sub_1E384EE08(v5);
    }

    else
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
    }

    return OUTLINED_FUNCTION_32_0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1E403C5C0@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LibStackedTextViews(0);
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  v7 = *(v6 + 40);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  v8 = *(*a1 + 464);

  v10 = v8(v9);
  if (v10)
  {
    sub_1E403C6D8(v10, a3);
  }

  return result;
}

void sub_1E403C6D8(unint64_t a1, void *a2)
{
  v4 = 0;
  v23 = a1 & 0xC000000000000001;
  v24 = sub_1E32AE9B0(a1);
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  v22 = a1;
  while (v24 != v4)
  {
    if (v23)
    {
      v6 = MEMORY[0x1E6911E60](v4, v22);
      v5 = v6;
    }

    else
    {
      if (v4 >= *(v21 + 16))
      {
        goto LABEL_49;
      }

      v5 = *(v22 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v9 = *(v5 + 98);
    sub_1E3742F1C(v6, v7, v8);
    sub_1E4206254();
    sub_1E4206254();
    if (v27 == v25 && v28 == v26)
    {

LABEL_21:
      if (*v5 == _TtC8VideosUI13TextViewModel)
      {

        v15 = v5;
      }

      else
      {
        v15 = 0;
      }

      a2[2] = v15;
      goto LABEL_25;
    }

    v11 = sub_1E42079A4();

    if (v11)
    {
      goto LABEL_21;
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v27 == v25 && v28 == v26)
    {

LABEL_28:
      v16 = *v5;
      if (*v5 != _TtC8VideosUI31LibDownloadingEpisodesViewModel)
      {
        goto LABEL_32;
      }

      v17 = sub_1E3DC7DF4();

      if (!v17)
      {
        v16 = *v5;
LABEL_32:
        if (v16 == _TtC8VideosUI13TextViewModel)
        {

          v18 = v5;
        }

        else
        {
          v18 = 0;
        }

        a2[3] = v18;
LABEL_25:

        goto LABEL_26;
      }

      a2[3] = v17;

      goto LABEL_26;
    }

    v13 = sub_1E42079A4();

    if (v13)
    {
      goto LABEL_28;
    }

    if (sub_1E3850594(v9))
    {
      if (*v5 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
      {

        v14 = v5;
      }

      else
      {
        v14 = 0;
      }

      a2[4] = v14;
      goto LABEL_25;
    }

    sub_1E4206254();
    sub_1E4206254();
    if (v27 == v25 && v28 == v26)
    {

LABEL_45:
      a2[5] = v5;
      goto LABEL_26;
    }

    v20 = sub_1E42079A4();

    if (v20)
    {
      goto LABEL_45;
    }

LABEL_26:

    ++v4;
  }
}

uint64_t sub_1E403CAD8@<X0>(uint64_t a1@<X8>)
{
  v53[4] = a1;
  v53[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC50, &qword_1E42E6E88);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v53[0] = v53 - v8;
  v53[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC58, &qword_1E42E6E90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v53[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC60, &qword_1E42E6E98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_67_2();
  v15 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = (v20 - v19);
  type metadata accessor for LibStackedTextViews(0);
  sub_1E3746E10(v21);
  v22 = sub_1E3B02A04();
  v23 = (*(v17 + 8))(v21, v15);
  v25 = *(v1 + 24);
  if (v22)
  {
    if (v25 && sub_1E3C27528(v23, v24))
    {
      OUTLINED_FUNCTION_30();
      (*(v26 + 152))(v54);
    }

    *v13 = sub_1E4201D54();
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC70, &qword_1E42E6EA8);
    sub_1E403D8F8();
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v27, v28, v29, v30);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v31, v32, v33, v34);
    swift_storeEnumTagMultiPayload();
    v35 = MEMORY[0x1E6981870];
    sub_1E32752B0(&qword_1EE2884B0, &qword_1ECF3EC60, &qword_1E42E6E98, MEMORY[0x1E6981870]);
    sub_1E32752B0(&qword_1EE2884B8, &qword_1ECF3EC50, &qword_1E42E6E88, v35);
    OUTLINED_FUNCTION_35_76();
    v36 = v2;
    v37 = &qword_1ECF3EC60;
    v38 = &qword_1E42E6E98;
  }

  else
  {
    if (v25 && sub_1E3C27528(v23, v24))
    {
      OUTLINED_FUNCTION_30();
      (*(v39 + 152))(v54);
    }

    *v6 = sub_1E4201D54();
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC68, &qword_1E42E6EA0);
    sub_1E403CF30();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v40, v41, v42, v43);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v44, v45, v46, v47);
    swift_storeEnumTagMultiPayload();
    sub_1E32752B0(&qword_1EE2884B0, &qword_1ECF3EC60, &qword_1E42E6E98, MEMORY[0x1E6981870]);
    OUTLINED_FUNCTION_18_5();
    sub_1E32752B0(v48, v49, v50, v51);
    OUTLINED_FUNCTION_35_76();
    OUTLINED_FUNCTION_21_1();
  }

  return sub_1E325F6F0(v36, v37, v38);
}

void sub_1E403CF30()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED30, &qword_1E42E7128);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED38, &qword_1E42E7130);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v70 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v67 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v63 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v65 = v18;
  v66 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_28_6();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_67_2();
  if (v3[2])
  {
    v63 = v3;
    v64 = v5;

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4202744();
    v34 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v37)
    {
      v35 = sub_1E4202774();
      v34 = v35;
    }

    if (sub_1E3C27528(v35, v36))
    {
      OUTLINED_FUNCTION_30();
      (*(v38 + 152))(&v71);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    (*(v65 + 32))(v26, v21, v66);
    v40 = (v26 + *(v22 + 36));
    *v40 = v34;
    OUTLINED_FUNCTION_15_3(v40);
    sub_1E3741EA0(v26, v0, &qword_1ECF28CC0, &qword_1E4298440);
    sub_1E3741EA0(v0, v1, &qword_1ECF28CC0, &qword_1E4298440);
    v39 = 0;
    v3 = v63;
    v5 = v64;
  }

  else
  {
    v39 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v39, 1, v22);
  *v9 = sub_1E4201B84();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED40, &qword_1E42E7138);
  sub_1E403D3EC(v3, &v9[*(v41 + 44)]);
  sub_1E4202744();
  v42 = OUTLINED_FUNCTION_41_4();
  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v37)
  {
    v42 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v43 = v67;
  sub_1E3741EA0(v9, v67, &qword_1ECF3ED30, &qword_1E42E7128);
  v44 = (v43 + *(v68 + 36));
  *v44 = v42;
  OUTLINED_FUNCTION_11_4(v44);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v45, v46, v47, v48);
  OUTLINED_FUNCTION_34_74(v1, v32);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v49, v50, v51, v52);
  OUTLINED_FUNCTION_34_74(v32, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED48, &unk_1E42E7140);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v53, v54, v55, v56);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v57, v58, v59);
  OUTLINED_FUNCTION_107_2(v1);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v60, v61, v62);
  OUTLINED_FUNCTION_107_2(v32);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E403D3EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v75 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_6();
  if (a1[3])
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v6 + 32))(v2, v9, v4);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v74 = v2;
  __swift_storeEnumTagSinglePayload(v2, v15, 1, v4);
  if (a1[4])
  {

    OUTLINED_FUNCTION_25();
    sub_1E3F66914(v16, v17, v18, v19, 0, v20);
    v77 = *(&v80 + 1);
    v78 = v80;
    OUTLINED_FUNCTION_44_61();
    if (!v25)
    {
      v22 = 0;
    }

    v71 = v22;
    v76 = v23;
    v88 = v23;
    v86 = v80;
    v26 = v24;
    v87 = v24;
    v27 = v21;

    sub_1E3743538(&v88, v81, &qword_1ECF32E10, &unk_1E42B9CD0);
    sub_1E3743538(&v86, v81, &qword_1ECF32E18, &qword_1E42E0410);
  }

  else
  {
    v27 = 0;
    v76 = 0;
    v78 = 0;
    v77 = 0;
    v26 = 0;
    v71 = 0;
  }

  v28 = a1[5];
  if (v28)
  {
    v29 = *a1;
    v30 = *(*v28 + 392);

    v32 = v30(v31);
    sub_1E397F070(v29, v32, v81);
    v33 = v81[0];
    v34 = v81[1];
    v35 = *(&v82 + 1);
    v72 = v82;
    v36 = v83;

    v37 = v33;
    v38 = v34;
    OUTLINED_FUNCTION_44_61();
    if (v25)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }

    v84 = v82;
    v85 = v83;

    sub_1E3743538(&v84, v79, &qword_1ECF2C5D0, &qword_1E42E7120);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v72 = 0;
    v35 = 0;
    v36 = 0;
    v40 = 0;
  }

  v68 = v38;
  OUTLINED_FUNCTION_48_52(v74, &v90);
  OUTLINED_FUNCTION_48_52(v28, &v89);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED50, &unk_1E42E7150);
  v42 = v28 + v41[12];
  *v42 = 0;
  *(v42 + 8) = 0;
  v43 = (v28 + v41[16]);
  v44 = v27;
  v45 = v76;
  *v43 = v27;
  v43[1] = v45;
  v46 = v78;
  v47 = v77;
  v43[2] = v78;
  v43[3] = v47;
  v69 = v26;
  v43[4] = v26;
  v43[5] = v71;
  v48 = (v28 + v41[20]);
  v49 = v27;
  v70 = v27;
  v76 = v45;
  v50 = v47;
  v77 = v47;
  sub_1E3908EB0(v49, v45, v46, v47, v26);
  v51 = v37;
  v52 = v72;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_46_60();
  sub_1E3AF72E0(v53);
  v54 = v45;
  v55 = v78;
  v56 = v50;
  v57 = v69;
  sub_1E3908FA0(v44, v54, v78, v56, v69);
  v58 = v68;
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_46_60();
  sub_1E3AF7344(v59, v60, v61, v62);
  *v48 = v51;
  v48[1] = v58;
  v48[2] = v52;
  v48[3] = v35;
  v48[4] = v36;
  v48[5] = v40;
  sub_1E325F6F0(v74, &qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_46_60();
  sub_1E3AF7344(v63, v64, v65, v66);
  sub_1E3908FA0(v70, v76, v55, v77, v57);
  return sub_1E325F6F0(v75, &qword_1ECF29210, &qword_1E4299980);
}

void sub_1E403D8F8()
{
  OUTLINED_FUNCTION_21_5();
  v5 = v4;
  v7 = v6;
  v134 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v143 = v9;
  v144 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v142 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_28_6();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v141 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v129 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_67_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v138 = v27 - v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v137 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_18_6();
  v136 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v129 - v34;
  v36 = v7[2];
  v139 = &v129 - v34;
  if (v36)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4202744();
    v37 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v40)
    {
      v38 = sub_1E4202774();
      v37 = v38;
    }

    if (sub_1E3C27528(v38, v39))
    {
      OUTLINED_FUNCTION_30();
      (*(v41 + 152))(v170);
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v43 = v143;
    (*(v144 + 32))(v23, v0, v143);
    v44 = &v23[*(v14 + 36)];
    *v44 = v37;
    OUTLINED_FUNCTION_15_3(v44);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v45, v46, v47, v48);
    v49 = v139;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v50, v51, v52, v53);
    v35 = v49;
    v42 = 0;
  }

  else
  {
    v42 = 1;
    v43 = v143;
  }

  v54 = 1;
  __swift_storeEnumTagSinglePayload(v35, v42, 1, v14);
  v55 = v7;
  if (v7[3])
  {

    OUTLINED_FUNCTION_18();
    v56 = v142;
    sub_1E3F23370();
    v57 = sub_1E4202744();
    v58 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v57)
    {
      v58 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    (*(v144 + 32))(v18, v56, v43);
    v59 = (v18 + *(v14 + 36));
    *v59 = v58;
    OUTLINED_FUNCTION_15_3(v59);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v60, v61, v62, v63);
    v64 = v136;
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v65, v66, v67, v68);
    v54 = 0;
  }

  else
  {
    v64 = v136;
  }

  __swift_storeEnumTagSinglePayload(v64, v54, 1, v14);
  v133 = sub_1E4201B84();
  v156 = 0;
  v69 = v7[5];
  if (v69)
  {
    v70 = *v7;
    v71 = *(*v69 + 392);

    v73 = v71(v72);
    sub_1E397F070(v70, v73, v145);
    v74 = *v145;
    v75 = *&v145[8];
    v141 = *&v145[16];
    v143 = v145[32];
    v144 = *&v145[24];

    OUTLINED_FUNCTION_44_61();
    if (!v40)
    {
      v76 = 0;
    }

    v142 = v76;
    v159 = *&v145[16];
    LOBYTE(v160) = v145[32];
    v77 = v74;
    v69 = v75;

    sub_1E3743538(&v159, v146, &qword_1ECF2C5D0, &qword_1E42E7120);
  }

  else
  {
    v77 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
  }

  if (v55[4])
  {

    OUTLINED_FUNCTION_25();
    sub_1E3F66914(v78, v79, v80, v81, 0, v82);
    v83 = *v147;
    v84 = *&v147[8];
    OUTLINED_FUNCTION_44_61();
    if (!v40)
    {
      v86 = 0;
    }

    v140 = v86;
    v89 = v87;
    v172[0] = v87;
    v158[0] = *v147;
    v90 = v88;
    LOBYTE(v158[1]) = v88;
    v91 = v85;

    sub_1E3743538(v172, v171, &qword_1ECF32E10, &unk_1E42B9CD0);
    sub_1E3743538(v158, v171, &qword_1ECF32E18, &qword_1E42E0410);
  }

  else
  {
    v91 = 0;
    v89 = 0;
    v83 = 0;
    v84 = 0;
    v90 = 0;
    v140 = 0;
  }

  v135 = v77;
  v92 = v77;
  v93 = v141;
  sub_1E3AF72E0(v92);
  OUTLINED_FUNCTION_24_108();
  v130 = v90;
  v94 = v90;
  v95 = v140;
  sub_1E3908EB0(v96, v97, v98, v99, v94);
  sub_1E3AF7344(v135, v69, v93, v144);
  v131 = v83;
  v132 = v89;
  OUTLINED_FUNCTION_24_108();
  v100 = v130;
  v140 = v95;
  sub_1E3908FA0(v101, v102, v103, v104, v130);
  OUTLINED_FUNCTION_24_108();
  sub_1E3908FA0(v105, v106, v107, v108, v100);
  v109 = v135;
  v110 = v69;
  v111 = v69;
  v112 = v141;
  v113 = v142;
  v114 = v143;
  v115 = v144;
  sub_1E3AF7344(v135, v111, v141, v144);
  *&v158[0] = v109;
  *(&v158[0] + 1) = v110;
  *&v158[1] = v112;
  *(&v158[1] + 1) = v115;
  *&v158[2] = v114;
  *(&v158[2] + 1) = v113;
  *&v158[3] = v91;
  *(&v158[3] + 1) = v132;
  *&v158[4] = v131;
  *(&v158[4] + 1) = v84;
  *&v158[5] = v100;
  *(&v158[5] + 1) = v140;
  *&v159 = v109;
  *(&v159 + 1) = v110;
  v160 = v112;
  v161 = v115;
  v162 = v114;
  v163 = v113;
  v164 = v91;
  v165 = v132;
  v166 = v131;
  v167 = v84;
  v168 = v100;
  v169 = v140;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v116, v117, v118, v119);
  sub_1E325F6F0(&v159, &qword_1ECF3ED18, &qword_1E42E7108);
  memcpy(&v155[7], v158, 0x60uLL);
  v120 = v156;
  LOBYTE(v114) = sub_1E4202744();
  v121 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v114)
  {
    v121 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v171[0] = 0;
  v122 = v137;
  OUTLINED_FUNCTION_34_74(v139, v137);
  v123 = v136;
  v124 = v138;
  OUTLINED_FUNCTION_34_74(v136, v138);
  v125 = v134;
  OUTLINED_FUNCTION_34_74(v122, v134);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED20, &qword_1E42E7110);
  OUTLINED_FUNCTION_34_74(v124, v125 + *(v126 + 48));
  v127 = *(v126 + 64);
  v128 = v133;
  *v145 = v133;
  *&v145[8] = 0;
  v145[16] = v120;
  memcpy(&v145[17], v155, 0x67uLL);
  v145[120] = v121;
  *&v145[121] = *v157;
  *&v145[124] = *&v157[3];
  *&v145[128] = v5;
  *&v145[136] = v1;
  *&v145[144] = v2;
  *&v145[152] = v3;
  v145[160] = 0;
  memcpy((v125 + v127), v145, 0xA1uLL);
  sub_1E3743538(v145, v146, &qword_1ECF3ED28, &qword_1E42E7118);
  OUTLINED_FUNCTION_107_2(v123);
  OUTLINED_FUNCTION_107_2(v139);
  v146[0] = v128;
  v146[1] = 0;
  v147[0] = v120;
  memcpy(&v147[1], v155, 0x67uLL);
  v148 = v121;
  *v149 = *v157;
  *&v149[3] = *&v157[3];
  v150 = v5;
  v151 = v1;
  v152 = v2;
  v153 = v3;
  v154 = 0;
  sub_1E325F6F0(v146, &qword_1ECF3ED28, &qword_1E42E7118);
  OUTLINED_FUNCTION_107_2(v138);
  OUTLINED_FUNCTION_107_2(v137);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E403E1F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v6 = *(type metadata accessor for StackedTextViews(0) + 28);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 16) = a2;
  return result;
}

void sub_1E403E278(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v9 = *(OUTLINED_FUNCTION_38_73() + 28);
  *(v5 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  v43 = v5;
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  v12 = *(v4 + 16);
  while (1)
  {
    if (v12 == v10)
    {

      v16 = sub_1E32AE9B0(v11);
      if (!v16)
      {

        v19 = MEMORY[0x1E69E7CC0];
LABEL_35:
        *v43 = v19;
        *(v43 + 16) = a3;
        *(v43 + 8) = a4 & 1;
        return;
      }

      v17 = v16;
      if (v16 < 1)
      {
        goto LABEL_37;
      }

      v42 = a4;
      v18 = 0;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x1E6911E60](v18, v11);
          v23 = v20;
        }

        else
        {
          v23 = *(v11 + 8 * v18 + 32);
        }

        if (*v23 == _TtC8VideosUI13TextViewModel)
        {
          type metadata accessor for RichTextViewModel(0);
          OUTLINED_FUNCTION_50();

          v24 = sub_1E3AF46D0();
          v25 = sub_1E3AF46DC(v24);
          v26 = sub_1E3AF46E0(v23, 0, v24, v25, 0, 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = OUTLINED_FUNCTION_27();
            v19 = sub_1E3ABC5C0(v34, v35, v36, v19);
          }

          v28 = *(v19 + 2);
          v27 = *(v19 + 3);
          if (v28 >= v27 >> 1)
          {
            v37 = OUTLINED_FUNCTION_35(v27);
            v19 = sub_1E3ABC5C0(v37, v28 + 1, 1, v19);
          }

          *(v19 + 2) = v28 + 1;
          *&v19[8 * v28 + 32] = v26;
        }

        else
        {
          sub_1E3742F1C(v20, v21, v22);
          sub_1E4206254();
          sub_1E4206254();
          if (v46 == v44 && v47 == v45)
          {

LABEL_27:
            type metadata accessor for MediaTagsViewModel();
            swift_allocObject();
            OUTLINED_FUNCTION_50();

            v31 = a2;
            sub_1E403C310(v23, a2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v38 = OUTLINED_FUNCTION_27();
              v19 = sub_1E3ABC5C0(v38, v39, v40, v19);
            }

            v33 = *(v19 + 2);
            v32 = *(v19 + 3);
            if (v33 >= v32 >> 1)
            {
              v41 = OUTLINED_FUNCTION_35(v32);
              v19 = sub_1E3ABC5C0(v41, v33 + 1, 1, v19);
            }

            *(v19 + 2) = v33 + 1;
            *&v19[8 * v33 + 32] = v45 | 0x8000000000000000;
            goto LABEL_32;
          }

          v30 = sub_1E42079A4();

          if (v30)
          {
            goto LABEL_27;
          }
        }

LABEL_32:
        if (v17 == ++v18)
        {

          a4 = v42;
          goto LABEL_35;
        }
      }
    }

    if (v10 >= *(v4 + 16))
    {
      break;
    }

    if (*(v4 + 8 * v10++ + 32))
    {

      MEMORY[0x1E6910BF0](v14);
      v15 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15 >> 1)
      {
        OUTLINED_FUNCTION_35(v15);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v11 = v46;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1E403E654(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *(type metadata accessor for StackedTextViews(0) + 28);
  *(a4 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  while (v10 != v8)
  {
    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (*(a1 + 8 * v8++ + 32))
    {

      MEMORY[0x1E6910BF0](v12);
      v13 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v13 >> 1)
      {
        OUTLINED_FUNCTION_35(v13);
        sub_1E42062F4();
      }

      sub_1E4206324();
      v9 = v29;
    }
  }

  v27 = a3;

  v14 = sub_1E32AE9B0(v9);
  v15 = 0;
  v16 = MEMORY[0x1E69E7CC0];
  while (v14 != v15)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](v15, v9);
    }

    else
    {
      if (v15 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v17 = *(v9 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      goto LABEL_22;
    }

    type metadata accessor for RichTextViewModel(0);
    v18 = sub_1E3AF46D0();
    v19 = sub_1E3AF46DC(v18);
    v20 = sub_1E3AF46E0(v17, 0, v18, v19, 0, 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_27();
      v16 = sub_1E3ABC5C0(v23, v24, v25, v16);
    }

    v22 = *(v16 + 2);
    v21 = *(v16 + 3);
    if (v22 >= v21 >> 1)
    {
      v26 = OUTLINED_FUNCTION_35(v21);
      v16 = sub_1E3ABC5C0(v26, v22 + 1, 1, v16);
    }

    *(v16 + 2) = v22 + 1;
    *&v16[8 * v22 + 32] = v20;
    ++v15;
  }

  *a4 = v16;
  *(a4 + 16) = a2;
  *(a4 + 8) = v27 & 1;
}

uint64_t sub_1E403E8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  v5 = *(type metadata accessor for StackedTextViews(0) + 28);
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  result = swift_storeEnumTagMultiPayload();
  v7 = 0;
  v8 = *(a1 + 16);
  v9 = (a1 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v7)
    {

      *a3 = v10;
      *(a3 + 16) = a2;
      return result;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v12 = *(v9 - 1);
    v11 = *v9;
    type metadata accessor for RichTextViewModel(0);
    swift_retain_n();
    swift_retain_n();
    v13 = sub_1E3AF46D0();
    v14 = sub_1E3AF46DC(v13);
    v15 = sub_1E3AF46E0(v12, v11, v13, v14, 0, 1);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      v18 = OUTLINED_FUNCTION_27();
      result = sub_1E3ABC5C0(v18, v19, v20, v10);
      v10 = result;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    if (v17 >= v16 >> 1)
    {
      v21 = OUTLINED_FUNCTION_35(v16);
      result = sub_1E3ABC5C0(v21, v17 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v17 + 1;
    *(v10 + 8 * v17 + 32) = v15;
    v9 += 2;
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E403EA50@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC78, &qword_1E42E6EB0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  *a1 = sub_1E4201D44();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *v10 = *(v1 + 16);
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC80, &qword_1E42E6EB8);
  sub_1E403EC74(&v10[*(v11 + 44)]);
  if (*(v1 + 8) == 1)
  {
    v24 = 0;
    v22 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v23 = 1;
  }

  else
  {
    sub_1E4203DA4();
    sub_1E4200D94();
    v23 = 0;
    v24 = v29;
    v22 = v31;
    v12 = v33;
    v13 = v34;
    v27 = 1;
    v26 = v30;
    v25 = v32;
    v16 = 1;
    v15 = v30;
    v14 = v32;
    v28 = 0;
  }

  v17 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC88, &qword_1E42E6EC0) + 44);
  sub_1E3743538(v10, v7, &qword_1ECF3EC78, &qword_1E42E6EB0);
  v18 = OUTLINED_FUNCTION_32_0();
  sub_1E3743538(v18, v19, &qword_1ECF3EC78, &qword_1E42E6EB0);
  v20 = v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC90, &qword_1E42E6EC8) + 48);
  *v20 = 0;
  *(v20 + 8) = v16;
  *(v20 + 16) = v24;
  *(v20 + 24) = v15;
  *(v20 + 32) = v22;
  *(v20 + 40) = v14;
  *(v20 + 48) = v12;
  *(v20 + 56) = v13;
  *(v20 + 64) = v23;
  sub_1E325F6F0(v10, &qword_1ECF3EC78, &qword_1E42E6EB0);
  return sub_1E325F6F0(v7, &qword_1ECF3EC78, &qword_1E42E6EB0);
}

void sub_1E403EC74(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EC98, &qword_1E42E6ED0);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECA0, &qword_1E42E6ED8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for StackedTextViews(0);
  v10 = OUTLINED_FUNCTION_8_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECA8, &qword_1E42E6EE0);
  OUTLINED_FUNCTION_0_10();
  v34 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECB0, &qword_1E42E6EE8);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v36 = &v34 - v20;
  v21 = swift_allocObject();
  *(v21 + 16) = 263;
  v22 = [objc_opt_self() sharedInstance];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 vStackInForEachEnabled];

    v41 = *v1;
    if (v24)
    {
      KeyPath = swift_getKeyPath();
      sub_1E38F84AC(v1, v13);
      OUTLINED_FUNCTION_33_85();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_5_232(v25);
      *&v24[v1] = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECB8, &qword_1E42E6F18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECE0, qword_1E42E6F38);
      OUTLINED_FUNCTION_8_192(&qword_1EE23B568);
      OUTLINED_FUNCTION_1();
      sub_1E32752B0(v26, &qword_1ECF3ECE0, qword_1E42E6F38, v27);
      sub_1E4203B34();
      v28 = v34;
      v29 = v37;
      (*(v34 + 16))(v8, v17, v37);
      swift_storeEnumTagMultiPayload();
      sub_1E403FB60();
      sub_1E403FC10();
      v30 = v36;
      sub_1E4201F44();
      (*(v28 + 8))(v17, v29);
    }

    else
    {
      swift_getKeyPath();
      sub_1E38F84AC(v1, v13);
      OUTLINED_FUNCTION_33_85();
      v31 = swift_allocObject();
      OUTLINED_FUNCTION_5_232(v31);
      *&v24[v1] = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECB8, &qword_1E42E6F18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECC0, &qword_1E42E6F20);
      OUTLINED_FUNCTION_8_192(&qword_1EE23B568);
      sub_1E403F914();
      OUTLINED_FUNCTION_46_60();
      sub_1E4203B34();
      v32 = KeyPath;
      v33 = v39;
      (*(KeyPath + 16))(v8, v5, v39);
      swift_storeEnumTagMultiPayload();
      sub_1E403FB60();
      sub_1E403FC10();
      v30 = v36;
      sub_1E4201F44();
      (*(v32 + 8))(v5, v33);
    }

    sub_1E3741EA0(v30, v40, &qword_1ECF3ECB0, &qword_1E42E6EE8);
  }

  else
  {
    __break(1u);
  }
}

id sub_1E403F1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1E403C4B8(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E403F210@<X0>(uint64_t a1@<X0>, _WORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MediaTags(0);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF33498, &qword_1E42E6F30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v71 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED10, &qword_1E42E7100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v71 - v19;
  v21 = type metadata accessor for RichTextView(0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = (v24 - v23);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ECC8, &qword_1E42E6F28);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_67_2();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v31 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_preferredLayout;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v32 = *(a1 + v31);
    v71[0] = a3;
    if (v32)
    {
LABEL_3:
      v33 = *(*v32 + 152);

      v33(v75, v34);

      goto LABEL_4;
    }

    v55 = sub_1E3AF4598();
    sub_1E3C27528(v55, v56);
    OUTLINED_FUNCTION_50();

    if (v55)
    {
      type metadata accessor for TextLayout();
      v32 = swift_dynamicCastClass();
      if (v32)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v32 = 0;
    }

LABEL_4:
    if (v32)
    {
      v35 = *a2;
      if (v35 != 263)
      {
        v36 = *(*v32 + 1592);

        v36(v35);
      }
    }

    sub_1E3AF4598();
    OUTLINED_FUNCTION_50();

    v37 = *(a1 + 98);

    *a2 = v37;
    v38 = *(v71[1] + 16);

    sub_1E3AF563C(v39, v38, v25);
    sub_1E4202744();
    v40 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v41)
    {
      v40 = sub_1E4202774();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E40402F0(v25, v29, type metadata accessor for RichTextView);
    v42 = (v29 + *(v72 + 36));
    *v42 = v40;
    OUTLINED_FUNCTION_11_4(v42);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v43, v44, v45, v46);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v47, v48, v49, v50);
    swift_storeEnumTagMultiPayload();
    sub_1E403F9A0();
    sub_1E403FA5C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    return sub_1E325F6F0(v51, v52, v53);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v54 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if (v54)
  {
    [v54 margin];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  *a2 = *(*((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 98);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v57 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  if (v57)
  {
    v58 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  }

  else
  {
    v58 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v59 = v57;

  v60 = v58;
  sub_1E3820C18();
  OUTLINED_FUNCTION_25();
  sub_1E3820C20(v61, v62, v63, v64, v65, v66);
  v67 = sub_1E4202744();
  v68 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v67)
  {
    v68 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E40402F0(v10, v14, type metadata accessor for MediaTags);
  v69 = (v14 + *(v74 + 36));
  *v69 = v68;
  OUTLINED_FUNCTION_11_4(v69);
  sub_1E3741EA0(v14, v17, &qword_1ECF33498, &qword_1E42E6F30);
  sub_1E3743538(v17, v20, &qword_1ECF33498, &qword_1E42E6F30);
  swift_storeEnumTagMultiPayload();
  sub_1E403F9A0();
  sub_1E403FA5C();
  sub_1E4201F44();

  v51 = v17;
  v52 = &qword_1ECF33498;
  v53 = &qword_1E42E6F30;
  return sub_1E325F6F0(v51, v52, v53);
}

uint64_t sub_1E403F874()
{
  v3 = OUTLINED_FUNCTION_38_73();
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_32_86();
  OUTLINED_FUNCTION_47_55(v4);
  sub_1E403F210(v0, (v2 + 16), v1);
  return swift_endAccess();
}

unint64_t sub_1E403F914()
{
  result = qword_1EE288F78;
  if (!qword_1EE288F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECC0, &qword_1E42E6F20);
    sub_1E403F9A0();
    sub_1E403FA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F78);
  }

  return result;
}

unint64_t sub_1E403F9A0()
{
  result = qword_1EE289C28;
  if (!qword_1EE289C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECC8, &qword_1E42E6F28);
    sub_1E403FB18(&qword_1EE284888, type metadata accessor for RichTextView, &unk_1E42B9B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C28);
  }

  return result;
}

unint64_t sub_1E403FA5C()
{
  result = qword_1EE289B40;
  if (!qword_1EE289B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF33498, &qword_1E42E6F30);
    sub_1E403FB18(&qword_1EE23BD30, type metadata accessor for MediaTags, &unk_1E42A0E0C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B40);
  }

  return result;
}

uint64_t sub_1E403FB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E403FB60()
{
  result = qword_1ECF3ECD0;
  if (!qword_1ECF3ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECA8, &qword_1E42E6EE0);
    sub_1E32752B0(&qword_1ECF3ECD8, &qword_1ECF3ECE0, qword_1E42E6F38, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ECD0);
  }

  return result;
}

unint64_t sub_1E403FC10()
{
  result = qword_1ECF3ECE8;
  if (!qword_1ECF3ECE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EC98, &qword_1E42E6ED0);
    sub_1E403F914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ECE8);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = (type metadata accessor for StackedTextViews(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E403FDBC()
{
  v3 = OUTLINED_FUNCTION_38_73();
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_32_86();
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED08, &qword_1E42E70F8);
  v5 = *(v4 + 44);
  OUTLINED_FUNCTION_47_55(v4);
  sub_1E403F210(v0, (v2 + 16), v1 + v5);
  return swift_endAccess();
}

void sub_1E403FEF4(uint64_t a1)
{
  type metadata accessor for LibLockupViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E4040078(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E4040078(319, qword_1EE243750, type metadata accessor for DownloadStateIndicatorViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E4040078(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          OUTLINED_FUNCTION_7_222();
          sub_1E4040078(319, v5, v6, MEMORY[0x1E697DCC0]);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E4040078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E4040104(uint64_t a1)
{
  sub_1E40401C0();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_7_222();
    sub_1E4040078(319, v2, v3, MEMORY[0x1E697DCC0]);
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E40401C0()
{
  if (!qword_1EE23B570)
  {
    v0 = sub_1E4206374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B570);
    }
  }
}

unint64_t sub_1E4040210()
{
  result = qword_1EE288D98;
  if (!qword_1EE288D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ECF0, &qword_1E42E70E8);
    v1 = MEMORY[0x1E6981870];
    sub_1E32752B0(&qword_1EE2884B0, &qword_1ECF3EC60, &qword_1E42E6E98, MEMORY[0x1E6981870]);
    sub_1E32752B0(&qword_1EE2884B8, &qword_1ECF3EC50, &qword_1E42E6E88, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D98);
  }

  return result;
}

uint64_t sub_1E40402F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_48_52@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_1E3743538(a1, v5, v2, v3);
}

uint64_t static VUIBagServiceProxyObjC.fetchCategories()()
{
  OUTLINED_FUNCTION_24();
  type metadata accessor for VUIBagService();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E4040460;

  return sub_1E39C9808();
}

uint64_t sub_1E4040460()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1E4040570(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E4040604;

  return static VUIBagServiceProxyObjC.fetchCategories()();
}

uint64_t sub_1E4040604()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;

  if (v2)
  {
    v8 = sub_1E41FE264();

    v9 = OUTLINED_FUNCTION_44_1();
    v10(v9, 0, v8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_44_1();
    v12(v11, v4, 0);
  }

  _Block_release(*(v5 + 16));
  v13 = *(v7 + 8);

  return v13();
}

uint64_t static VUIBagServiceProxyObjC.isFullTVAppEnabled()()
{
  OUTLINED_FUNCTION_24();
  type metadata accessor for VUIBagService();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E40407F4;

  return sub_1E39CA118();
}

uint64_t sub_1E40407F4()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t sub_1E404090C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E40409A0;

  return static VUIBagServiceProxyObjC.isFullTVAppEnabled()();
}

uint64_t sub_1E40409A0()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v8 = *v1;
  *v7 = *v1;

  v9 = *(v5 + 16);
  if (v2)
  {
    v10 = sub_1E41FE264();

    v11 = OUTLINED_FUNCTION_44_1();
    v12(v11, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, v4 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v13 = *(v8 + 8);

  return v13();
}

id VUIBagServiceProxyObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VUIBagServiceProxyObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VUIBagServiceProxyObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4040BF0()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E4040C80()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_250(v1);

  return v4(v3);
}

uint64_t sub_1E4040D10()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E38658(1);
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1E4040D7C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(1, v3 & 1, v4, v5 & 1);
    *(v2 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E4040E3C()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  v2 = *sub_1E3E5FD88();
  v3 = *sub_1E3E5F6B8();
  sub_1E37BD068();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1720))(9);

  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 2056);

  v7 = OUTLINED_FUNCTION_133();
  v6(v7);

  OUTLINED_FUNCTION_36();
  v9 = *(v8 + 2080);

  v10 = OUTLINED_FUNCTION_133();
  v9(v10);

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 2104);

  v13 = OUTLINED_FUNCTION_133();
  v12(v13);

  OUTLINED_FUNCTION_36();
  v15 = *(v14 + 2128);

  v16 = OUTLINED_FUNCTION_13_179();
  v15(v16);

  OUTLINED_FUNCTION_36();
  v18 = *(v17 + 968);

  v18(0);

  OUTLINED_FUNCTION_12_164();
  LOBYTE(v310[0]) = 3;
  LOBYTE(v308[0]) = v19;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_181();
  v20 = sub_1E3C3DE00();
  LOBYTE(v296) = v300;
  OUTLINED_FUNCTION_3_253(v20, v21, v22, v23, v24, v25, v26, v27, v231, v245, v259, v272, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, *(&v296 + 1), v297, *(&v297 + 1), v298, v299, v300, *(&v300 + 1), v301);
  OUTLINED_FUNCTION_7_223();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v36 = OUTLINED_FUNCTION_8_193(v28, v29, v30, v31, v32, v33, v34, v35, v232, v246, v260, v273, __dst[0]);
  v37(v36);

  *__dst = v2;
  v312 = v3;

  v247 = v2;
  v274 = v3;
  *&v310[0] = *sub_1E3E5FDEC();
  v38 = sub_1E3755B54();
  v39 = *&v310[0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_16_152();
  v40 = OUTLINED_FUNCTION_15_165();
  *&v292 = v296;
  v48 = OUTLINED_FUNCTION_6_215(v40, v41, v42, v43, v44, v45, v46, v47, v233, v247, v2, v274, v2);
  sub_1E3C2FCB8(v48, v49, v50, v51, &v292, v310, v38, v52);
  v53 = __src[0];
  v54 = __src[1];
  v55 = __src[2];
  v56 = __src[3];
  v57 = __src[4];
  v58 = __src[5];
  __dst[0] = __src[0];
  *&__dst[8] = __src[1];
  *&__dst[16] = __src[2];
  *&__dst[24] = __src[3];
  *&__dst[32] = __src[4];
  *&__dst[40] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v67 = OUTLINED_FUNCTION_7_25(v59, v60, v61, v62, v63, v64, v65, v66, v234, v248, v261, v275, __dst[0]);
  v68(v67, 21);

  __dst[0] = 0;
  LOBYTE(v312) = 1;

  v69 = MEMORY[0x1E69E6370];
  sub_1E3C3DE00();
  LOBYTE(v308[0]) = v310[0];
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_181();
  sub_1E3C3DE00();
  LOBYTE(v296) = v300;
  sub_1E3C3DE00();
  LOBYTE(v288) = v292;
  sub_1E3C2FCB8(__dst, &v312, v308, v303, &v296, &v288, v69, __src);
  OUTLINED_FUNCTION_7_223();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v78 = OUTLINED_FUNCTION_7_25(v70, v71, v72, v73, v74, v75, v76, v77, v235, v249, v262, v276, __dst[0]);
  v79(v78, 33);

  sub_1E374EA2C();
  OUTLINED_FUNCTION_2_1();
  (*(v80 + 1720))(6);

  OUTLINED_FUNCTION_36();
  v82 = *(v81 + 1984);

  v82(1);

  OUTLINED_FUNCTION_36();
  v84 = *(v83 + 2056);

  v84(0, 0);

  OUTLINED_FUNCTION_36();
  v86 = *(v85 + 2080);

  v86(0, 0);

  OUTLINED_FUNCTION_36();
  v88 = *(v87 + 2104);

  v88(0, 0);

  __dst[0] = 21;
  LOBYTE(v312) = 22;
  LOBYTE(v310[0]) = 14;
  LOBYTE(v308[0]) = 19;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_11_181();
  v89 = sub_1E3C3DE00();
  LOBYTE(v296) = v300;
  OUTLINED_FUNCTION_3_253(v89, v90, v91, v92, v93, v94, v95, v96, v236, v250, v263, v277, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v296, *(&v296 + 1), v297, *(&v297 + 1), v298, v299, v300, *(&v300 + 1), v301);
  OUTLINED_FUNCTION_7_223();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v105 = OUTLINED_FUNCTION_8_193(v97, v98, v99, v100, v101, v102, v103, v104, v237, v251, v264, v278, __dst[0]);
  v106(v105);

  *__dst = *sub_1E3E5FD88();
  v107 = *__dst;
  v312 = *sub_1E3E5F6B8();
  v108 = v312;
  *&v310[0] = *sub_1E3E5FDEC();
  v109 = *&v310[0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_16_152();
  v110 = OUTLINED_FUNCTION_15_165();
  *&v292 = v296;
  v118 = OUTLINED_FUNCTION_6_215(v110, v111, v112, v113, v114, v115, v116, v117, v238, v252, v265, v279, __dst[0]);
  sub_1E3C2FCB8(v118, v119, v120, v121, &v292, v310, v38, v122);
  v123 = __src[0];
  v124 = __src[1];
  v125 = __src[2];
  v126 = __src[3];
  v127 = __src[4];
  v128 = __src[5];
  *__dst = __src[0];
  *&__dst[8] = __src[1];
  *&__dst[16] = __src[2];
  *&__dst[24] = __src[3];
  *&__dst[32] = __src[4];
  *&__dst[40] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v137 = OUTLINED_FUNCTION_7_25(v129, v130, v131, v132, v133, v134, v135, v136, v239, v253, v266, v280, __dst[0]);
  v138(v137, 21);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v139 + 1720))(5);

  OUTLINED_FUNCTION_4_251();
  v141 = *(v140 + 2056);

  v142 = OUTLINED_FUNCTION_133();
  v141(v142);

  OUTLINED_FUNCTION_4_251();
  v144 = *(v143 + 2080);

  v144(4, 0);

  OUTLINED_FUNCTION_4_251();
  v146 = *(v145 + 2104);

  v146(4, 0);

  OUTLINED_FUNCTION_4_251();
  v148 = *(v147 + 1792);

  v148(10);

  OUTLINED_FUNCTION_4_251();
  v150 = *(v149 + 2128);

  v151 = OUTLINED_FUNCTION_13_179();
  v150(v151);

  OUTLINED_FUNCTION_4_251();
  v153 = *(v152 + 680);

  v154 = v254;
  v153(v267);

  sub_1E3952C88();
  *__dst = v155;
  *&__dst[8] = v156;
  *&__dst[16] = v157;
  *&__dst[24] = v158;
  __dst[32] = 0;
  sub_1E3952C88();
  v312 = v159;
  v313 = v160;
  v314 = v161;
  v315 = v162;
  v316 = 0;
  type metadata accessor for UIEdgeInsets();
  v164 = v163;
  sub_1E3C2FC98();
  v308[0] = v310[0];
  v308[1] = v310[1];
  v309 = v311;
  sub_1E3C3DE00();
  v303[0] = v305;
  v303[1] = v306;
  v304 = v307;
  sub_1E3C3DE00();
  v296 = v300;
  v297 = v301;
  LOBYTE(v298) = v302;
  sub_1E3C3DE00();
  v288 = v292;
  v289 = v293;
  LOBYTE(v290) = v294;
  sub_1E3C2FCB8(__dst, v308, v303, &v312, &v296, &v288, v164, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v173 = OUTLINED_FUNCTION_7_25(v165, v166, v167, v168, v169, v170, v171, v172, v240, v254, v267, v281, __dst[0]);
  v174(v173, 0);

  OUTLINED_FUNCTION_12_164();
  LOBYTE(v310[0]) = 3;

  sub_1E3C2FC98();
  LOBYTE(v305) = v308[0];
  sub_1E3C3DE00();
  LOBYTE(v300) = v303[0];
  v175 = sub_1E3C3DE00();
  LOBYTE(v292) = v296;
  v183 = OUTLINED_FUNCTION_6_215(v175, v176, v177, v178, v179, v180, v181, v182, v241, v255, v268, v282, __dst[0]);
  sub_1E3C2FCB8(v183, v184, v185, v186, v310, &v292, &qword_1F5D549D8, v187);
  *__dst = __src[0];
  *&__dst[4] = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v196 = OUTLINED_FUNCTION_8_193(v188, v189, v190, v191, v192, v193, v194, v195, v242, v256, v269, v283, __dst[0]);
  v197(v196);

  sub_1E4040D7C();
  OUTLINED_FUNCTION_2_1();
  v199 = (*(v198 + 304))();
  LOBYTE(v164) = v200;

  *__dst = v199;
  __dst[8] = v164 & 1;
  v312 = 0x4055000000000000;
  LOBYTE(v313) = 0;
  *&v310[0] = 0x4049000000000000;
  BYTE8(v310[0]) = 0;
  *&v308[0] = 0;
  BYTE8(v308[0]) = 1;

  sub_1E3C2FC98();
  *&v303[0] = v305;
  BYTE8(v303[0]) = BYTE8(v305);
  v201 = sub_1E3C3DE00();
  BYTE8(v296) = BYTE8(v300);
  OUTLINED_FUNCTION_3_253(v201, v202, v203, v204, v205, v206, v207, v208, v243, v257, v270, v284, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v288, *(&v288 + 1), v289, *(&v289 + 1), v290, v291, v292, *(&v292 + 1), v293, *(&v293 + 1), v294, v295, v300, *(&v296 + 1), v297, *(&v297 + 1), v298, v299, v300, *(&v300 + 1), v301);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v217 = OUTLINED_FUNCTION_7_25(v209, v210, v211, v212, v213, v214, v215, v216, v244, v258, v271, v285, __dst[0]);
  v218(v217, 6);

  v219 = *(**(v1 + 144) + 1784);

  v221 = v219(v220);

  if (v221 != 11)
  {
    v222 = *(**(v1 + 144) + 2352);

    v222(v221, 1, 2);
  }

  v223 = sub_1E38A86A4();
  (*(*v223 + 1808))(3);

  v224 = sub_1E37BD068();
  sub_1E3C37CBC(v224, 9);

  v225 = sub_1E38A86A4();
  sub_1E3C37CBC(v225, 39);

  v226 = sub_1E4040D7C();
  sub_1E3C37CBC(v226, 59);

  v227 = sub_1E374EA2C();
  sub_1E3C37CBC(v227, 11);

  v228 = sub_1E4040D10();
  sub_1E3C37CBC(v228, 99);

  v229 = sub_1E374EB64();
  sub_1E3C37CBC(v229, 17);

  return v1;
}

void sub_1E4041CF4(void *a1, double a2)
{
  type metadata accessor for LayoutGrid();
  v4 = sub_1E3A2579C(a2);
  v5 = a1;
  sub_1E3C2AE10();
  v7 = v6;
  sub_1E4041E6C(v8, v6, v9);

  sub_1E38A86A4();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1696))();

  OUTLINED_FUNCTION_36();
  v12 = *(v11 + 432);

  v14 = v12(v13);
  LOBYTE(v12) = v15;

  sub_1E40420F0(v4, v14, v12 & 1, a2);
  if (v16 > 0.0)
  {
    v17 = v16;
    v18 = COERCE_DOUBLE(sub_1E3C2D080());
    if ((v19 & 1) != 0 || v17 != v18)
    {

      sub_1E3C2D0A0();
    }
  }
}

void sub_1E4041E6C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  sub_1E4040D10();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1640))(a1, a2, a3);

  v7 = sub_1E3C2F814();
  sub_1E37F99D4(v7, v8, v9);
  if ((sub_1E4205E84() & 1) == 0)
  {
    v10 = sub_1E3C2F8E8();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 isAXEnabled];
      v13 = sub_1E3C2F814();
      v14 = sub_1E3A24FDC(v13) | v12;
      sub_1E374EB64();
      OUTLINED_FUNCTION_2_1();
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = 4;
      }

      (*(v15 + 1984))(v16);
    }
  }

  v17 = sub_1E38A86A4();
  (*(*v17 + 1696))(v17);

  v18 = [objc_opt_self() vui_keyWindow];
  if (v18)
  {
    v19 = v18;
    [v18 vuiWidth];
    v21 = v20;
    [v19 vuiHeight];
    v22 = sub_1E3C2F814();
    OUTLINED_FUNCTION_36();
    v24 = *(v23 + 432);

    v26 = v24(v25);
    LOBYTE(v24) = v27;

    sub_1E40420F0(v22, v26, v24 & 1, v21);
    if (v28 > 0.0)
    {
      v29 = v28;
      v30 = COERCE_DOUBLE(sub_1E3C2D080());
      if ((v31 & 1) != 0 || v29 != v30)
      {
        sub_1E3C2D0A0();
      }
    }
  }
}

void sub_1E40420F0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if ((a3 & 1) == 0 && *&a2 > 0.0)
  {
    if ((sub_1E3A24FDC(a1) & 1) == 0)
    {
      sub_1E373F630(a1, 3, v5);
    }

    VUIRoundValue();
  }
}

__n128 sub_1E40421AC@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32);
  *a4 = a1;
  *(a4 + 8) = a2;
  result = *a3;
  v6 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v6;
  *(a4 + 48) = v4 & 1;
  return result;
}

void sub_1E40421CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1E4200AF4();
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  sub_1E4200AE4();
  (*(v27 + 16))(v31, v23, v25);
  v39 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = *(v25 + 16);
  (*(v27 + 32))(v40 + v39, v31, v25);
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1E4045424;
  *(v41 + 24) = v40;
  sub_1E4203B64();

  (*(v34 + 8))(v38, v32);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40423BC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v8, v7);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = *(a1 + 16);
  (*(v3 + 32))(v10 + v9, v8, a1);
  return v10;
}

void sub_1E40424BC(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, uint64_t a7@<X3>)
{
  v11 = type metadata accessor for RoutingView(0, a4, a5, a7);
  v12 = v11[10];
  *(a6 + v11[11]) = 0;
  v13 = (a6 + v11[12]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a6 + v11[14]);
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v15, v16, &unk_1E42EB398);
  *v14 = sub_1E4201754();
  v14[1] = v17;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_99(KeyPath);
  v19 = swift_getKeyPath();
  v20 = OUTLINED_FUNCTION_23_99(v19);
  v21 = v11[17];
  a3(v20);
  *(a6 + v12) = a2;
  *(a6 + v11[9]) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();

  v23 = sub_1E4200544();
  sub_1E32752B0(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  v22 = sub_1E42006B4();

  *(a6 + v11[13]) = v22;
  *(a6 + v21) = v23;
}

void sub_1E404267C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v12 = OUTLINED_FUNCTION_21_115(v6, v4, v10, v2, v11);
  *(v9 + v12[10]) = 0;
  *(v9 + v12[11]) = 0;
  v13 = (v9 + v12[12]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v9 + v12[14]);
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v15, v16, &unk_1E42EB398);
  *v14 = sub_1E4201754();
  v14[1] = v17;
  v18 = v9 + v12[15];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  v19 = v9 + v12[16];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v9 + v12[17]) = 0;
  v5();
  *(v9 + v12[13]) = (*(v1 + 8))(v3, v1);
  *(v9 + v12[9]) = v7;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40427A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = type metadata accessor for RoutingView(0, a5, a6, a4);
  *(a7 + v11[10]) = 0;
  *(a7 + v11[11]) = 0;
  v12 = (a7 + v11[12]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a7 + v11[14]);
  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v14, v15, &unk_1E42EB398);
  *v13 = sub_1E4201754();
  v13[1] = v16;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_23_99(KeyPath);
  v18 = swift_getKeyPath();
  v19 = OUTLINED_FUNCTION_23_99(v18);
  *(a7 + v11[17]) = 0;
  a3(v19);
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  *(a7 + v11[13]) = (*(v21 + 8))(v20, v21);
  *(a7 + v11[9]) = a1;
  return __swift_destroy_boxed_opaque_existential_1(a2);
}

void sub_1E40428F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v25 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37E98, qword_1E42CE340);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C938, &qword_1E42E7250);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF36848, &qword_1E42C8DC8);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_4_252();
  v32 = v4;
  v33 = sub_1E32752B0(v5, &qword_1ECF3C938, &qword_1E42E7250, v6);
  swift_getWitnessTable();
  sub_1E3CB533C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1E4202624();
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98, &unk_1E42E69E0);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_254();
  v26 = OpaqueTypeConformance2;
  v27 = sub_1E4044FBC(v8, v9, MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  sub_1E40374F4();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_2();
  v28 = v3;
  v29 = OpaqueTypeMetadata2;
  v30 = sub_1E32752B0(v11, &qword_1ECF37E98, qword_1E42CE340, v12);
  v31 = swift_getOpaqueTypeConformance2();
  v13 = sub_1E4201584();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  sub_1E4042C74();
  OUTLINED_FUNCTION_6_216();
  swift_getWitnessTable();
  v22 = *(v15 + 16);
  v22(v21, v18, v13);
  v23 = *(v15 + 8);
  v23(v18, v13);
  v22(v25, v21, v13);
  v23(v21, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4042C74()
{
  OUTLINED_FUNCTION_31_1();
  v115 = v0;
  v2 = v1;
  v127 = v1;
  v114 = v3;
  v122 = v4;
  sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v120 = v6;
  v121 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v119 = v8 - v7;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v117 = v10;
  v118 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v116 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF36848, &qword_1E42C8DC8);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v123 = v15;
  v111 = sub_1E4201644();
  OUTLINED_FUNCTION_0_10();
  v110 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v126 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3C938, &qword_1E42E7250);
  v21 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v112 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v97 = v24;
  v125 = *(v2 + 24);
  OUTLINED_FUNCTION_4_252();
  v135 = v125;
  v136 = sub_1E32752B0(v25, &qword_1ECF3C938, &qword_1E42E7250, v26);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1E3CB533C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v109 = v30;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  v105 = v32;
  v113 = v13;
  v106 = WitnessTable;
  v133 = WitnessTable;
  v134 = v28;
  v104 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v131 = OpaqueTypeMetadata2;
  v132 = OpaqueTypeConformance2;
  v34 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v101 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v94 - v37;
  sub_1E4202624();
  v102 = v34;
  v39 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v100 = v40;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v94 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3EB98, &unk_1E42E69E0);
  v131 = OpaqueTypeMetadata2;
  v132 = OpaqueTypeConformance2;
  v99 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_254();
  v48 = sub_1E4044FBC(v46, v47, MEMORY[0x1E697CBD8]);
  v95 = v45;
  v129 = v45;
  v130 = v48;
  v49 = swift_getWitnessTable();
  v50 = sub_1E40374F4();
  v96 = v39;
  v131 = v39;
  v132 = v44;
  v108 = v44;
  v98 = v49;
  v133 = v49;
  v134 = v50;
  v51 = v50;
  v107 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v103 = v52;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v124 = v54;
  v55 = sub_1E4201614();
  sub_1E3C055D4(v55, v56, v57);
  v58 = v97;
  sub_1E4202E64();
  v59 = 1;
  OUTLINED_FUNCTION_15_5();
  v60 = v20;
  v61 = v115;
  v62(v60, v111);
  if (*(v61 + *(v127 + 40)) == 1)
  {
    sub_1E40421CC(v127, v63, v64, v65, v66, v67, v68, v69, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
    v59 = 0;
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3E8, &qword_1E42DC9B0);
  v71 = v123;
  __swift_storeEnumTagSinglePayload(v123, v59, 1, v70);
  sub_1E4200BA4();
  v72 = v105;
  sub_1E42034B4();
  sub_1E325F7FC(v71, &qword_1ECF36848, &qword_1E42C8DC8);
  OUTLINED_FUNCTION_15_5();
  v73(v58, v21);
  v74 = v116;
  sub_1E4202474();
  sub_1E4203224();
  (*(v117 + 8))(v74, v118);
  OUTLINED_FUNCTION_15_5();
  v75(v72, OpaqueTypeMetadata2);
  v76 = v119;
  sub_1E4201C94();
  v77 = v102;
  sub_1E4203294();
  (*(v120 + 8))(v76, v121);
  OUTLINED_FUNCTION_15_5();
  v79 = v78(v38, v77);
  MEMORY[0x1EEE9AC00](v79);
  v81 = v125;
  v80 = v126;
  *(&v94 - 4) = v126;
  *(&v94 - 3) = v81;
  *(&v94 - 2) = v61;
  v82 = v96;
  v83 = v108;
  v84 = v98;
  sub_1E4203214();
  OUTLINED_FUNCTION_15_5();
  v85(v43, v82);
  v128 = *(v61 + *(v127 + 52));
  v87 = sub_1E404393C(v61, v80, v81, v86);
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1E4044E64;
  *(v88 + 24) = v87;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E98, qword_1E42CE340);
  v131 = v82;
  v132 = v83;
  v133 = v84;
  v134 = v51;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_2();
  sub_1E32752B0(v89, &qword_1ECF37E98, qword_1E42CE340, v90);
  v91 = v107;
  v92 = v124;
  sub_1E42035E4();

  OUTLINED_FUNCTION_15_5();
  v93(v92, v91);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40435E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_37_1();
  (*(v9 + 16))(a4, v4);
  v10 = (a4 + *(a3 + 48));
  v11 = *v10;
  v12 = v10[1];
  sub_1E34AF604(a1, a2);
  result = sub_1E34AF594(v11, v12);
  *v10 = a1;
  v10[1] = a2;
  return result;
}

uint64_t sub_1E4043670@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_37_1();
  result = (*(v7 + 16))(a3, v3, a2);
  *(a3 + *(a2 + 44)) = a1;
  return result;
}

void sub_1E40436D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = type metadata accessor for RoutingView(0, v2, v0, v8);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  if (*(v5 + *(v9 + 44)) == 1 && *(v5 + *(v9 + 40)) == 1)
  {
    v38 = v17;
    v20 = sub_1E4201C14();
    v36 = v21;
    v37 = v20;
    v34 = v22;
    v35 = v23;
    (*(v11 + 16))(v14, v5, v9);
    v24 = *(v11 + 80);
    v33 = v7;
    v25 = (v24 + 32) & ~v24;
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    *(v26 + 24) = v1;
    (*(v11 + 32))(v26 + v25, v14, v9);
    sub_1E4203984();
    v27 = v33;
    (*(v38 + 32))(v33, v19, v15);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }
}

uint64_t sub_1E404393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RoutingView(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v7, v11);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v13, v7);
  return v15;
}

void sub_1E4043A54()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v70 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v68 = v10 - v9;
  v69 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v67 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v66 = v14 - v13;
  v15 = *(v3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + *(v18 + 44));
  *(&v72 + 1) = &unk_1F5D5E7B8;
  v73 = &off_1F5D5CC78;
  LOBYTE(v71) = 0;
  v20 = j__OUTLINED_FUNCTION_18();
  v21 = OUTLINED_FUNCTION_25_105(v20);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (v21)
  {
    goto LABEL_4;
  }

  v22 = (v1 + *(v3 + 56));
  if (*v22)
  {
    v23 = *v22;
    v24 = sub_1E3D7C418();

    if ((v24 & 1) == 0)
    {
      v52 = *v5;
      v53 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x1C8);
      v54 = v23;
      v55 = v53(v52, v19);

      if (v55)
      {
        v56 = (v1 + *(v3 + 48));
        if (*v56)
        {
          (*v56)(v19);
        }

        v57 = *(v5 + 1);
        v58 = *(v5 + 2);
        v71 = *(v5 + 1);
        v72 = v58;
        LOBYTE(v73) = v5[48];
        v59 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x1D0);
        v60 = v54;
        v59(v52, v19, v57, &v71);
      }

      goto LABEL_22;
    }

LABEL_4:
    v64 = v6;
    v25 = *(v1 + *(v3 + 48));
    if (v25)
    {
      v25(v19);
    }

    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    v27 = OUTLINED_FUNCTION_10_166(v1 + *(v3 + 60));
    if (sub_1E3F27770(v27, v28))
    {
      OUTLINED_FUNCTION_30();
      v30 = (*(v29 + 232))();

      *(v26 + 16) = v30;

      if (v30)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(v26 + 16) = 0;
    }

    v31 = OUTLINED_FUNCTION_10_166(v1 + *(v3 + 64));
    if (!sub_1E3982FB8(v31, v32) || (OUTLINED_FUNCTION_30(), v34 = (*(v33 + 96))(), , !v34))
    {
      v30 = 0;
LABEL_15:
      *(&v72 + 1) = &unk_1F5D5E7B8;
      v73 = &off_1F5D5CC78;
      LOBYTE(v71) = 1;
      v35 = j__OUTLINED_FUNCTION_18();
      v36 = OUTLINED_FUNCTION_25_105(v35);
      __swift_destroy_boxed_opaque_existential_1(&v71);
      if (v36)
      {
        sub_1E32ADE38();
        v63 = sub_1E4206A04();
        v37 = v65;
        (*(v15 + 16))(v65, v1, v3);
        v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v39 = (v38 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
        v40 = (v38 + v16 + 63) & 0xFFFFFFFFFFFFFFF8;
        v41 = swift_allocObject();
        *(v41 + 16) = *(v3 + 16);
        (*(v15 + 32))(v41 + v38, v37, v3);
        v42 = v41 + v39;
        v43 = *(v5 + 1);
        *v42 = *v5;
        *(v42 + 16) = v43;
        *(v42 + 32) = *(v5 + 2);
        *(v42 + 48) = v5[48];
        *(v41 + v40) = v26;
        v74[4] = sub_1E4044EC8;
        v74[5] = v41;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 1107296256;
        v74[2] = sub_1E378AEA4;
        v74[3] = &block_descriptor_157;
        v44 = _Block_copy(v74);
        sub_1E4044F84(v5, &v71);

        v45 = v66;
        sub_1E4203FE4();
        *&v71 = MEMORY[0x1E69E7CC0];
        sub_1E4044FBC(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
        sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
        v46 = v68;
        v47 = v64;
        sub_1E42072E4();
        v48 = v63;
        MEMORY[0x1E6911380](0, v45, v46, v44);
        _Block_release(v44);

        (*(v70 + 8))(v46, v47);
        (*(v67 + 8))(v45, v69);
      }

      else
      {
        v49 = *(v5 + 1);
        v50 = *(*v19 + 800);
        v51 = *v5;

        v50(v51, v30, 0, v49);
      }

LABEL_22:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    type metadata accessor for BaseImpressionManager();
    v30 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v34);

    *(v26 + 16) = v30;
LABEL_13:

    goto LABEL_15;
  }

  type metadata accessor for Router(0);
  OUTLINED_FUNCTION_0_326();
  sub_1E4044FBC(v61, v62, &unk_1E42EB398);
  sub_1E4201744();
  __break(1u);
}

void sub_1E4044188()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_21_115(v7, v5, v4, v2, v0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v24 = [objc_opt_self() sharedInstance];
  (*(v11 + 16))(v16, v8, v9);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  *(v18 + 24) = v1;
  (*(v11 + 32))(v18 + v17, v16, v9);
  v19 = v18 + ((v17 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = *(v6 + 16);
  *v19 = *v6;
  *(v19 + 16) = v20;
  *(v19 + 32) = *(v6 + 32);
  *(v19 + 48) = *(v6 + 48);
  *(v18 + ((v17 + v13 + 63) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v27[4] = sub_1E4045158;
  v27[5] = v18;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1E3E50C74;
  v27[3] = &block_descriptor_40_3;
  v21 = _Block_copy(v27);
  sub_1E4044F84(v6, &v26);

  v22 = v24;
  [v24 startPictureInPictureWithCompletion_];
  _Block_release(v21);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40443A0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v20 = v7;
  v9 = v8;
  v11 = v10;
  v13 = OUTLINED_FUNCTION_21_115(v12, v8, v7, v5, v3);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v19 - v17;
  v21 = v6;
  v22 = v4;
  v23 = v2;
  v24 = v0;

  sub_1E404267C();
  sub_1E40435E0(v9, v20, v13, v11);
  (*(v15 + 8))(v18, v13);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40444BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *(v5 + 16);
  v9(v7 - v6);
  (v9)(a3, v8, a2);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1E40445F8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 49))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 2147483646);
    }

    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v4);
}

uint64_t sub_1E4044648(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1E40446BC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    v2 = type metadata accessor for ViewModel();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_8_194(v2, &qword_1EE23ACC8, &unk_1ECF2C3F0, qword_1E42A0B50);
      if (v4 <= 0x3F)
      {
        sub_1E4044B4C();
        if (v5 <= 0x3F)
        {
          sub_1E389B5AC(319);
          if (v7 <= 0x3F)
          {
            OUTLINED_FUNCTION_7_224(v6, &qword_1EE289ED8, &qword_1ECF3ED58, qword_1E42E7320);
            if (v9 <= 0x3F)
            {
              OUTLINED_FUNCTION_7_224(v8, &qword_1EE289EC8, &qword_1ECF2F5C0, &unk_1E42AE860);
              if (v11 <= 0x3F)
              {
                OUTLINED_FUNCTION_8_194(v10, &qword_1EE28A180, &qword_1ECF2D3C0, &unk_1E42A9690);
                if (v12 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E4044834(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(*(v4 - 8) + 84);
  }

  if (a2)
  {
    if (v6 >= a2)
    {
LABEL_26:
      if (v5 >= 0x7FFFFFFF)
      {
        __swift_getEnumTagSinglePayload(a1, v5, v4);
      }
    }

    else
    {
      OUTLINED_FUNCTION_18_135();
      v9 = v8 + 8;
      v11 = v10 - v7;
      v12 = v9 & 0xFFFFFFF8;
      if ((v9 & 0xFFFFFFF8) != 0)
      {
        v13 = 2;
      }

      else
      {
        v13 = v11 + 1;
      }

      if (v13 >= 0x10000)
      {
        v14 = 4;
      }

      else
      {
        v14 = 2;
      }

      if (v13 < 0x100)
      {
        v14 = 1;
      }

      if (v13 >= 2)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      switch(v15)
      {
        case 1:
          v16 = *(a1 + v9);
          if (!v16)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        case 2:
          v16 = *(a1 + v9);
          if (!v16)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        case 3:
          __break(1u);
          return;
        case 4:
          v16 = *(a1 + v9);
          if (!v16)
          {
            goto LABEL_26;
          }

LABEL_22:
          v17 = v16 - 1;
          if (v12)
          {
            v17 = 0;
            LODWORD(v12) = *a1;
          }

          OUTLINED_FUNCTION_17_7(v7 + (v12 | v17));
          break;
        default:
          goto LABEL_26;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_18();
  }
}

void sub_1E4044978(_DWORD *a1)
{
  OUTLINED_FUNCTION_18_135();
  v9 = v8 + 8;
  if (v7 >= v5)
  {
    v13 = 0;
  }

  else
  {
    v10 = v5 - v7;
    if (v8 == -8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  if (v2 <= v7)
  {
    switch(v13)
    {
      case 1:
        *(a1 + v9) = 0;
        if (v2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *(a1 + v9) = 0;
        if (v2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *(a1 + v9) = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (v2)
        {
LABEL_29:
          if (v3 < 0x7FFFFFFF)
          {
            v16 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((v2 & 0x80000000) != 0)
            {
              v17 = v2 & 0x7FFFFFFF;
            }

            else
            {
              v17 = (v2 - 1);
            }

            *v16 = v17;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, v2, v3, v4);
          }
        }

        break;
    }
  }

  else
  {
    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v2 - v7;
    }

    if (v9)
    {
      v15 = ~v7 + v2;
      bzero(a1, v9);
      *a1 = v15;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v9) = v14;
        break;
      case 2:
        *(a1 + v9) = v14;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *(a1 + v9) = v14;
        break;
      default:
        return;
    }
  }
}

void sub_1E4044B4C()
{
  if (!qword_1EE28A218)
  {
    v0 = sub_1E42004B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE28A218);
    }
  }
}

void sub_1E4044BAC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1E4044C1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_1E4044C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_26_114(a1, a2, a3, a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  v7 = *(v6 + v5[9]);
  v19 = 0;
  (*(*v7 + 776))(&v14, &v19, &unk_1F5D5E7B8, &off_1F5D5CC78);
  if (v16)
  {
    result = swift_dynamicCast();
    if (result && (v19 & 1) != 0)
    {
      v9 = OUTLINED_FUNCTION_10_166(v6 + v5[16]);
      if (sub_1E3982FB8(v9, v10) && (OUTLINED_FUNCTION_30(), v12 = (*(v11 + 96))(), , v12))
      {
        type metadata accessor for BaseImpressionManager();
        v13 = static BaseImpressionManager.getParentSnapshotImpressions(responder:)(v12);
      }

      else
      {
        v13 = 0;
      }

      (*(*v7 + 800))(2, v13, 0, 0);
    }
  }

  else
  {
    result = sub_1E325F7FC(&v14, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (*(v6 + v5[17]))
  {
    LOBYTE(v14) = 2;
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    v18 = 1;
    return sub_1E4200524();
  }

  return result;
}

void sub_1E4044EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RoutingView(0, *(v4 + 16), *(v4 + 24), a4);

  sub_1E4044188();
}

uint64_t sub_1E4044FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_33Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(v5 + 16);
  type metadata accessor for RoutingView(0, v8, *(v5 + 24), a4);
  OUTLINED_FUNCTION_144();
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_12_165();
  (*(v11 + 8))(v6, v8);

  if (*(v6 + v4[12]))
  {
  }

  v12 = OUTLINED_FUNCTION_10_166(v6 + v4[15]);
  j__swift_release(v12);
  v13 = OUTLINED_FUNCTION_10_166(v6 + v4[16]);
  j__swift_release(v13);

  return swift_deallocObject();
}

uint64_t sub_1E4045158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_26_114(a1, a2, a3, a4);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  v9 = (v4 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *(v4 + ((v8 + 63) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v4 + v7 + *(v5 + 36));
  v12 = *v9;
  swift_beginAccess();
  v13 = *(v10 + 16);
  v14 = *(v9 + 1);
  v15 = *(*v11 + 800);

  v15(v12, v13, 0, v14);
}

uint64_t objectdestroy_18Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v5 + 16);
  type metadata accessor for RoutingView(0, v7, *(v5 + 24), a4);
  OUTLINED_FUNCTION_144();
  OUTLINED_FUNCTION_12_165();
  (*(v8 + 8))(v6, v7);

  if (*(v6 + v4[12]))
  {
  }

  v9 = OUTLINED_FUNCTION_10_166(v6 + v4[15]);
  j__swift_release(v9);
  v10 = OUTLINED_FUNCTION_10_166(v6 + v4[16]);
  j__swift_release(v10);

  return swift_deallocObject();
}

double sub_1E40453AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = OUTLINED_FUNCTION_26_114(a1, a2, a3, a4);
  v5 = sub_1E40423BC(v4);
  sub_1E4044C68(v5, v6, v7, v8);

  return result;
}

uint64_t sub_1E404542C()
{
  OUTLINED_FUNCTION_21();
  v3 = *(v0 + 920);

  return v3(v1);
}

void sub_1E4045494(void *a1)
{
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 888))();
  if (!v3)
  {
    return;
  }

  v11 = v3;
  v4 = sub_1E32859C4(v3, &selRef_canonicalId);
  v6 = v5;
  v7 = sub_1E32859C4(a1, &selRef_canonicalId);
  if (v6)
  {
    if (v8)
    {
      if (v4 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_1E42079A4();

        if ((v10 & 1) == 0)
        {
LABEL_19:

          return;
        }
      }

LABEL_16:
      sub_1E382766C();
      if (sub_1E4206F64() & 1) == 0 && (sub_1E4045644(a1))
      {
        sub_1E3EB4874(1);
      }

      goto LABEL_19;
    }
  }

  else if (!v8)
  {
    goto LABEL_16;
  }
}

uint64_t sub_1E4045644(void *a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v90 - v9;
  if (sub_1E39DFFE0(v11, v12, v13))
  {
    v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2B8))();
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    v14 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x2D0))();
    if (!v14)
    {
      return 0;
    }
  }

  v95 = v14;
  v16 = sub_1E32859C4(a1, &selRef_canonicalId);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  v94 = v18;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = [a1 showScoreboard];
  v93 = v7;
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v94 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 && ((v97 = sub_1E3780DC4(a1), v22 = v5, v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8E0, &qword_1E429AC18), sub_1E388EBAC(), v24 = v23, v5 = v22, v25 = sub_1E4149048(v24), , (v25 & 1) == 0) || [a1 configureScoreUpdates]))
  {
    v26 = sub_1E377C574();
    sub_1E377CDC8();
    v28 = v27;
  }

  else
  {
LABEL_18:
    v29 = sub_1E3E37EEC();
    (v5[2])(v10, v29, v4);

    v30 = v4;
    v31 = a1;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067D4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v92 = v5;
      v35 = v34;
      v97 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_1E3270FC8(v94, v19, &v97);
      *(v35 + 12) = 2080;
      v36 = sub_1E377D34C();
      v37 = (v36 & 1) == 0;
      if (v36)
      {
        v38 = 0xD00000000000001ALL;
      }

      else
      {
        v38 = 0xD000000000000014;
      }

      if (v37)
      {
        v39 = "T@VUIPlayer,N,R";
      }

      else
      {
        v39 = "to prevent spoilers.";
      }

      v40 = sub_1E3270FC8(v38, v39 | 0x8000000000000000, &v97);

      *(v35 + 14) = v40;
      _os_log_impl(&dword_1E323F000, v32, v33, "Suppressing scoreboard for %s %s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      v5 = v92;
      OUTLINED_FUNCTION_6_0();
    }

    (v5[1])(v10, v30);
    v4 = v30;
    sub_1E4046124();
    v28 = 0;
    v7 = v93;
  }

  v41 = v95;
  v42 = MEMORY[0x1E69E7D40];
  v43 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x380))(v28);
  v44 = ((*v42 & *v2) + 888);
  v45 = *v44;
  v46 = (*v44)(v43);
  v91 = v45;
  v92 = v44;
  if (v46 && (v47 = sub_1E388ED3C(v46)) != 0 && (v48 = *(v47 + 16), , v48))
  {
    v49 = [v41 superview];
    if (v49)
    {
    }

    else
    {
      [v2 vui:v41 addSubview:0 oldView:?];
    }

    v53 = [v41 setHidden_];
    v56 = sub_1E39DFFE0(v53, v54, v55);
    if ((v56 & 1) == 0)
    {
      v56 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D0))();
      if (v56)
      {
        v59 = v56;
        v60 = v7;
        v61 = v5;
        [v56 invalidateData];
        [v59 setDelegate_];
        v62 = v59;
        v63 = [v62 setVuiClipsToBounds_];
        v64 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x168);
        v65 = (v64)(v63);
        if (v65)
        {
          v66 = (*(*v65 + 1816))(v65);

          (*(*v66 + 552))(&v97, v67);

          if ((v98 & 1) == 0)
          {
            v68 = objc_opt_self();
            sub_1E3952BF8();
            [v68 radiusFromCornerRadii_];
            [v62 _setCornerRadius_];
          }
        }

        v69 = v64();
        if (v69)
        {
          v70 = (*(*v69 + 1816))(v69);

          v72 = (*(*v70 + 1784))(v71);
        }

        else
        {
          v72 = 0;
        }

        v5 = v61;
        v7 = v60;
        [v62 setScoreboardLayout_];

        [v2 setNeedsLayout];
        [v2 layoutIfNeeded];

        v41 = v95;
      }
    }

    if (sub_1E3EB80C0(v56, v57, v58))
    {
      v15 = 1;
      goto LABEL_50;
    }

    sub_1E3EB8884(0.2);
  }

  else
  {
    [v41 vui_removeFromSuperView];
    if ([v2 vui_isInAWindow])
    {
      v50 = v45();
      if (v50)
      {
        v51 = v50;
        v52 = [v50 configureScoreUpdates];

        if (v52)
        {
          sub_1E4046124();
          sub_1E4046298();
        }
      }
    }
  }

  v15 = 0;
LABEL_50:
  [v41 vui_setNeedsDisplay];
  v73 = sub_1E3E37EEC();
  (v5[2])(v7, v73, v4);

  v74 = v2;
  v75 = sub_1E41FFC94();
  v76 = sub_1E42067D4();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v5;
    v90 = v4;
    v78 = 1701736302;
    v79 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v79 = 136315394;
    v80 = sub_1E3270FC8(v94, v19, &v96);

    *(v79 + 4) = v80;
    *(v79 + 12) = 2080;
    v82 = (v91)(v81);
    if (v82 && (v83 = sub_1E388ED3C(v82)) != 0)
    {
      v84 = v83;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      v78 = MEMORY[0x1E6910C30](v84, v85);
      v87 = v86;
    }

    else
    {
      v87 = 0xE400000000000000;
    }

    v88 = sub_1E3270FC8(v78, v87, &v96);

    *(v79 + 14) = v88;
    _os_log_impl(&dword_1E323F000, v75, v76, "UnifiedOverlay: scoreboard for %s: %s", v79, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (v77[1])(v93, v90);
  }

  else
  {

    (v5[1])(v7, v4);
  }

  return v15;
}

uint64_t sub_1E404603C()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 888))();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 jsContextDictionary];

    v4 = sub_1E4205C64();
    return v4;
  }

  else
  {

    return sub_1E4205CB4();
  }
}

void sub_1E4046124()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_5_233();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x378))();
  if (v3)
  {
    v16 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = sub_1E4206474();
      OUTLINED_FUNCTION_18_22(v8);
      v9 = v0;
      v10 = sub_1E4206424();
      v11 = swift_allocObject();
      v12 = MEMORY[0x1E69E85E0];
      v11[2] = v10;
      v11[3] = v12;
      v11[4] = v9;
      v11[5] = v6;
      v11[6] = v7;
      OUTLINED_FUNCTION_16_34(v11, v13, v14, v15, v11);
    }

    else
    {
    }
  }
}

void sub_1E4046298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_5_233();
  v3 = (*((*MEMORY[0x1E69E7D40] & v2) + 0x378))();
  if (v3)
  {
    v17 = v3;
    v4 = sub_1E32859C4(v3, &selRef_canonicalId);
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if ([v17 configureScoreUpdates])
      {
        v8 = sub_1E4206474();
        OUTLINED_FUNCTION_18_22(v8);
        v9 = v17;
        v10 = v0;
        v11 = sub_1E4206424();
        v12 = swift_allocObject();
        v13 = MEMORY[0x1E69E85E0];
        v12[2] = v11;
        v12[3] = v13;
        v12[4] = v9;
        v12[5] = v10;
        v12[6] = v6;
        v12[7] = v7;
        OUTLINED_FUNCTION_16_34(v12, v14, v15, v16, v12);

        return;
      }
    }
  }
}

uint64_t sub_1E404643C()
{
  OUTLINED_FUNCTION_24();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  sub_1E41FE5D4();
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[8] = v6;
  v0[9] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E4046500, v6, v5);
}

uint64_t sub_1E4046500()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  type metadata accessor for SportsKitScoreboardManager.CacheValue(0);
  v3 = [v2 lastUpdatedTime];
  sub_1E41FE584();

  v4 = v2;
  *(v0 + 80) = sub_1E376EE58(v2, 1, v1);
  v5 = sub_1E376DBD0();
  v6 = *v5;
  *(v0 + 88) = *v5;

  *(v0 + 96) = sub_1E32859C4(v4, &selRef_leagueId);
  *(v0 + 104) = v7;

  *(v0 + 128) = j__OUTLINED_FUNCTION_18() & 1;
  *(v0 + 129) = j__OUTLINED_FUNCTION_18() & 1;
  v8 = *v6;
  *(v0 + 112) = *(*v6 + 488);
  *(v0 + 120) = (v8 + 488) & 0xFFFFFFFFFFFFLL | 0x306F000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E4046640, v6, 0);
}

uint64_t sub_1E4046640()
{
  OUTLINED_FUNCTION_27_2();
  v4 = *(v0 + 129);
  (*(v0 + 112))(*(v0 + 24), &off_1F5D93460, *(v0 + 32), *(v0 + 40), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 80), v4);

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E388DF00, v1, v2);
}

uint64_t sub_1E40466EC()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_1E41FFCB4();
  v0[5] = v4;
  v0[6] = *(v4 - 8);
  v0[7] = swift_task_alloc();
  sub_1E4206434();
  v0[8] = sub_1E4206424();
  v6 = sub_1E42063B4();
  v0[9] = v6;
  v0[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E40467E0, v6, v5);
}

uint64_t sub_1E40467E0()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E376DBD0();
  v2 = *v1;
  *(v0 + 88) = *v1;

  *(v0 + 112) = j__OUTLINED_FUNCTION_18() & 1;
  v3 = *v2;
  *(v0 + 96) = *(*v2 + 496);
  *(v0 + 104) = (v3 + 496) & 0xFFFFFFFFFFFFLL | 0xE5C6000000000000;

  return MEMORY[0x1EEE6DFA0](sub_1E4046890, v2, 0);
}

uint64_t sub_1E4046890()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 96))(*(v0 + 16), &off_1F5D93460, *(v0 + 24), *(v0 + 32), *(v0 + 112));

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1E4046910, v1, v2);
}

uint64_t sub_1E4046910()
{
  v18 = v0;
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];

  v4 = sub_1E324FBDC();
  (*(v3 + 16))(v1, v4, v2);

  v5 = sub_1E41FFC94();
  v6 = sub_1E42067D4();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1E3270FC8(v12, v11, &v17);
    _os_log_impl(&dword_1E323F000, v5, v6, "UnifiedOverlay::ScoreboardManager::unregistering from sportskit scoreboard updates [%s]", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v9 + 8))(v8, v10);

  OUTLINED_FUNCTION_54();

  return v15();
}

BOOL sub_1E4046A94()
{
  v1 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v2 + 912))();
  v4 = (*((*v1 & *v0) + 0x378))(v3);
  sub_1E377A8DC();
  v6 = v5;

  if (v6)
  {
    sub_1E4045494(v6);
  }

  return v6 != 0;
}

BOOL sub_1E4046BA0(uint64_t a1)
{
  v1 = (*(*a1 + 552))();
  if (v1)
  {
    sub_1E382766C();
    v2 = sub_1E3744600(v1);

    v3 = sub_1E37766C4(v2);
    sub_1E4045494(v3);
  }

  return v1 != 0;
}

uint64_t sub_1E4046C6C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E40466EC();
}

uint64_t sub_1E4046D00()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_15_17(v1);

  return sub_1E404643C();
}

uint64_t sub_1E4046D98()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for UpsellOfferViewLayout();
    v1 = sub_1E38A8DF4();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E4046E00()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for UpsellOfferTransactionViewLayout();
    v1 = sub_1E3FC915C();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E4046E9C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v2 = sub_1E3C2F9A0();
  v3 = *(*v2 + 1704);

  v3();
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1784))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 35);

  (v3)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1856))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 39);

  (v3)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1904))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 31);

  (v3)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1928))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 23);

  (v3)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1952))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 17);

  (v3)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1976))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 40);

  (v3)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1808))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 43);

  (v3)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1832))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 5);

  v20 = *(*v2 + 1728);
  v20(v19);
  OUTLINED_FUNCTION_2_1();
  (*(v21 + 1736))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 11);

  v20(v22);
  OUTLINED_FUNCTION_2_1();
  (*(v23 + 1760))();
  OUTLINED_FUNCTION_4_9();
  sub_1E3C37CBC(v1, 59);

  return v2;
}

double sub_1E40472D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  (*(*v3 + 1704))();
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 1640))(a1, a2, a3);

  (*(*v3 + 1728))(v8);
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 1640))(a1, a2, a3);

  return result;
}

uint64_t sub_1E404744C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = v39 - v10;
  v12 = [v2 addedCanonicalIDs];
  v13 = sub_1E4206624();

  v14 = *(v13 + 16);

  if (v14)
  {
    return 2;
  }

  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 upNextConfig];

  LOBYTE(v15) = [v16 shouldUpdateOutboundAfterRemoveFromUpNext];
  if (v15)
  {
    return 2;
  }

  v17 = [v2 removedCanonicalIDs];
  v18 = sub_1E4206624();

  v19 = *(v18 + 16);

  if (!v19)
  {
    v24 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v24, v4);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067E4();
    if (os_log_type_enabled(v25, v26))
    {
      v23 = 2;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "UpNextEvent:: canonical ids is empty for both added & removed canonical ids", v27, 2u);
      MEMORY[0x1E69143B0](v27, -1, -1);

      (*(v5 + 8))(v7, v4);
      return v23;
    }

    (*(v5 + 8))(v7, v4);
    return 2;
  }

  type metadata accessor for CollectionViewModel();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    v28 = sub_1E324FBDC();
    (*(v5 + 16))(v11, v28, v4);

    v29 = sub_1E41FFC94();
    v30 = sub_1E42067E4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v40 = v32;
      *v31 = 136315138;
      v39[3] = *(a1 + 98);
      sub_1E37D144C(v32, v33, v34);
      v35 = sub_1E4207944();
      v37 = sub_1E3270FC8(v35, v36, &v40);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_1E323F000, v29, v30, "UpNextEvent:: viewModel is not CollectionViewModel, type = %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1E69143B0](v32, -1, -1);
      MEMORY[0x1E69143B0](v31, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    return 2;
  }

  MEMORY[0x1EEE9AC00](v20);
  *&v39[-8] = v2;
  v22 = *(*v21 + 1360);

  v22(sub_1E399AFB8, &v39[-16]);

  return 1;
}

uint64_t sub_1E40478E4(__n128 a1)
{
  if (*(v1 + 264))
  {
    v2 = *(v1 + 264);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v2 = sub_1E4097BF8(5);
    *(v1 + 264) = v2;
  }

  return v2;
}

uint64_t sub_1E4047950(__n128 a1)
{
  if (*(v1 + 272))
  {
    v2 = *(v1 + 272);
  }

  else
  {
    type metadata accessor for MonogramLayout();
    v2 = sub_1E4097BF8(5);
    *(v1 + 272) = v2;
  }

  return v2;
}

uint64_t sub_1E40479BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + 289) & 1) == 0)
  {
    return *(v3 + 280);
  }

  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    sub_1E4201B74();
  }

  result = 0;
  *(v3 + 280) = 0;
  *(v3 + 288) = 1;
  *(v3 + 289) = 0;
  return result;
}

uint64_t sub_1E4047A0C()
{
  if (*(v0 + 296))
  {
    v2 = *(v0 + 296);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();
    TVAppFeature.isEnabled.getter(10, v4, v5);
    OUTLINED_FUNCTION_36();
    (*(v6 + 1696))(14);
    OUTLINED_FUNCTION_36();
    (*(v7 + 1792))(5);

    sub_1E3E5FDEC();
    OUTLINED_FUNCTION_7_16();
    v8 = *(*v2 + 680);
    v9 = v1;
    v8(v1);

    *(v3 + 296) = v2;
  }

  return v2;
}

uint64_t sub_1E4047B4C()
{
  if (*(v0 + 304))
  {
    v2 = *(v0 + 304);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();
    TVAppFeature.isEnabled.getter(10, v4, v5);
    OUTLINED_FUNCTION_36();
    v7 = *(v6 + 1696);
    if (v8)
    {
      v7(14);
      OUTLINED_FUNCTION_8();
      (*(v9 + 1792))(5);

      sub_1E3E5FD88();
      OUTLINED_FUNCTION_7_16();
      v10 = *(*v2 + 680);
      v11 = v1;
      v10(v1);
    }

    else
    {
      v7(19);

      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v12 = *(*v2 + 680);
      v13 = v1;
      v12(v1);

      OUTLINED_FUNCTION_36();
      (*(v14 + 1720))(3);
    }

    *(v3 + 304) = v2;
  }

  return v2;
}

uint64_t sub_1E4047D24()
{
  if (*(v0 + 312))
  {
    v2 = *(v0 + 312);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();
    if (TVAppFeature.isEnabled.getter(10, v4, v5))
    {

      v6 = *sub_1E3E60364();
      OUTLINED_FUNCTION_8();
      v8 = *(v7 + 680);
      v9 = v6;
      v8(v6);

      OUTLINED_FUNCTION_36();
      (*(v10 + 1696))(19);
      OUTLINED_FUNCTION_36();
      (*(v11 + 1792))(5);
      OUTLINED_FUNCTION_36();
      (*(v12 + 2272))(1);
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v13 + 1696))(19);

      sub_1E3E5FDEC();
      OUTLINED_FUNCTION_7_16();
      v14 = *(*v2 + 680);
      v15 = v1;
      v14(v1);

      OUTLINED_FUNCTION_36();
      (*(v16 + 1720))(3);
    }

    *(v3 + 312) = v2;
  }

  return v2;
}

uint64_t sub_1E4047F50()
{
  v1 = v0;
  sub_1E3C27024();
  if (v2)
  {
    v3 = objc_opt_self();
    sub_1E4047B4C();
    OUTLINED_FUNCTION_2_1();
    v5 = (*(v4 + 2408))();

    v6 = [v3 vui:v5 fontFromTextLayout:?];

    if (!v6)
    {
      v6 = [v3 preferredFontForTextStyle_];
    }

    v7 = sub_1E4205ED4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    v9 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v10 = sub_1E3CB73F8();
    *(inited + 64) = v10;
    *(inited + 40) = v6;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_327();
    sub_1E40491F0(v11, 255, v12, &unk_1E429A0E0);
    v33 = v9;
    v13 = v6;
    v14 = sub_1E4205CB4();
    sub_1E4049128(v14, v7);

    v15 = sub_1E3C27024();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v19 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v32 = v13;
        v20 = sub_1E4047D24();
        v21 = (*(*v20 + 2408))(v20);

        v22 = [v3 vui:v21 fontFromTextLayout:?];

        if (!v22)
        {
          v22 = [v3 preferredFontForTextStyle_];
        }

        v34[0] = 32;
        v34[1] = 0xE100000000000000;
        MEMORY[0x1E69109E0](v17, v18);

        v23 = sub_1E4205ED4();

        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_1E4297BE0;
        *(v24 + 64) = v10;
        *(v24 + 32) = v33;
        *(v24 + 40) = v22;
        v25 = v33;
        v26 = v22;
        v27 = sub_1E4205CB4();
        sub_1E4049128(v27, v23);

        v13 = v32;
      }

      else
      {
      }
    }

    v28 = OUTLINED_FUNCTION_5_0(v1 + 256, v34);
    sub_1E4048300(*(v1 + 256), v28, v29, v30);
  }
}

double sub_1E4048300(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (TVAppFeature.isEnabled.getter(10, a3, a4))
  {
    v6 = sub_1E3C2F8E8();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 preferredContentSizeCategory];

      OUTLINED_FUNCTION_15_0(v4 + 320, v9);
      v10 = *(v4 + 320);
      if ((sub_1E4206CA4() & 1) == 0)
      {
        v11 = v8;

        v10 = v11;
      }

      v12 = [objc_opt_self() defaultMetrics];
      sub_1E42067C4();
      a1 = v13;
    }
  }

  return a1;
}

uint64_t sub_1E404843C()
{
  *(v0 + 104) = 0x4036000000000000;
  *(v0 + 112) = 0x4036000000000000;
  *(v0 + 120) = 0;
  __asm { FMOV            V0.2D, #6.0 }

  *(v0 + 128) = _Q0;
  *(v0 + 144) = xmmword_1E42E73F0;
  *(v0 + 160) = 0x4042000000000000;
  *(v0 + 168) = 0x4042000000000000;
  *(v0 + 176) = 0;
  *(v0 + 184) = xmmword_1E42E7400;
  *(v0 + 200) = xmmword_1E42B41D0;
  *(v0 + 216) = xmmword_1E42B5E90;
  *(v0 + 232) = xmmword_1E42B5E90;
  *(v0 + 248) = xmmword_1E42E7410;
  *(v0 + 272) = 0;
  *(v0 + 280) = 0;
  *(v0 + 264) = 0;
  *(v0 + 288) = 256;
  *(v0 + 296) = 0;
  *(v0 + 304) = 0;
  v6 = *MEMORY[0x1E69DDC20];
  *(v0 + 312) = 0;
  *(v0 + 320) = v6;
  v7 = v6;
  v8 = sub_1E3C2F9A0();

  v9 = sub_1E4047A0C();
  sub_1E3C37CBC(v9, 23);

  v10 = sub_1E4047B4C();
  sub_1E3C37CBC(v10, 15);

  v11 = sub_1E4047D24();
  sub_1E3C37CBC(v11, 17);

  v13 = sub_1E40478E4(v12);
  sub_1E3C37CBC(v13, 41);

  sub_1E4048558(v14, v15);

  return v8;
}

void sub_1E4048558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1E40491F0(&qword_1ECF2ED30, a2, type metadata accessor for PlayerStatsLayout, &unk_1E42E7438);
  sub_1E4200514();
  sub_1E4200594();

  v6 = TVAppFeature.isEnabled.getter(10, v4, v5);
  if (v6)
  {
    v9 = sub_1E4048300(14.0, v6, v7, v8);
    v10 = v9 + v9;
    v14 = sub_1E4048300(10.0, v11, v12, v13);
    *&__dst[0] = sub_1E3952C10(v10, v14 + v14);
    *(&__dst[0] + 1) = v15;
    *&__dst[1] = v16;
    *(&__dst[1] + 1) = v17;
    LOBYTE(__dst[2]) = 0;
    v357 = sub_1E3952C10(56.0, 48.0);
    v358 = v18;
    v359 = v19;
    v360 = v20;
    v361 = 0;
    __asm { FMOV            V1.2D, #16.0 }

    v354 = xmmword_1E42CA420;
    v355 = _Q1;
    v356 = 0;
    v29.n128_f64[0] = sub_1E4048300(14.0, v26, v27, v28);
    *&v351 = j__OUTLINED_FUNCTION_7_78(v29);
    *(&v351 + 1) = v30;
    *&v352 = v31;
    *(&v352 + 1) = v32;
    v353 = 0;
    type metadata accessor for UIEdgeInsets();
    v34 = v33;
    sub_1E3C2FC98();
    v345 = v348;
    v346 = v349;
    v347 = v350;
    sub_1E3C3DE00();
    v339 = v342;
    v340 = v343;
    v341 = v344;
    v35 = &v345;
    v36 = &v339;
    v37 = &v357;
    v38 = &v354;
    v39 = &v351;
  }

  else
  {
    __dst[0] = xmmword_1E42E7420;
    __dst[1] = xmmword_1E429E550;
    LOBYTE(__dst[2]) = 0;
    v40 = *(MEMORY[0x1E69DDCE0] + 8);
    v42 = *(MEMORY[0x1E69DDCE0] + 16);
    v41 = *(MEMORY[0x1E69DDCE0] + 24);
    v357 = *MEMORY[0x1E69DDCE0];
    v358 = v40;
    v359 = v42;
    v360 = v41;
    v361 = 0;
    *&v354 = v357;
    *(&v354 + 1) = v40;
    *&v355 = v42;
    *(&v355 + 1) = v41;
    v356 = 0;
    type metadata accessor for UIEdgeInsets();
    v34 = v43;
    sub_1E3C2FC98();
    v348 = v351;
    v349 = v352;
    v350 = v353;
    sub_1E3C3DE00();
    v342 = v345;
    v343 = v346;
    v344 = v347;
    sub_1E3C3DE00();
    v337[0] = v339;
    v337[1] = v340;
    v338 = v341;
    v35 = &v348;
    v36 = &v342;
    v37 = v337;
    v38 = &v357;
    v39 = &v354;
  }

  sub_1E3C2FCB8(__dst, v35, v36, v37, v38, v39, v34, __src);
  memcpy(__dst, __src, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  v44 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(__dst, 1, v44 & 1, v34);
  v47 = TVAppFeature.isEnabled.getter(10, v45, v46);
  v50 = 22.0;
  v51 = 22.0;
  if (v47)
  {
    sub_1E4048300(30.0, v47, v48, v49);
    v51 = sub_1E4048300(30.0, v52, v53, v54);
  }

  OUTLINED_FUNCTION_3_0(v3 + 104, &v357);
  *(v3 + 104) = v51;
  v57 = TVAppFeature.isEnabled.getter(10, v55, v56);
  if (v57)
  {
    sub_1E4048300(30.0, v57, v58, v59);
    v50 = sub_1E4048300(30.0, v60, v61, v62);
  }

  OUTLINED_FUNCTION_3_0(v3 + 112, &v354);
  *(v3 + 112) = v50;
  *(v3 + 120) = 0;
  v65 = TVAppFeature.isEnabled.getter(10, v63, v64);
  v68 = 6.0;
  v69 = 6.0;
  if (v65)
  {
    sub_1E4048300(8.0, v65, v66, v67);
    v69 = sub_1E4048300(16.0, v70, v71, v72);
  }

  OUTLINED_FUNCTION_3_0(v3 + 128, &v351);
  *(v3 + 128) = v69;
  v75 = TVAppFeature.isEnabled.getter(10, v73, v74);
  if (v75)
  {
    sub_1E4048300(8.0, v75, v76, v77);
    v68 = sub_1E4048300(10.0, v78, v79, v80);
  }

  OUTLINED_FUNCTION_3_0(v3 + 136, &v348);
  *(v3 + 136) = v68;
  v83 = TVAppFeature.isEnabled.getter(10, v81, v82);
  v86 = 10.0;
  if (v83)
  {
    sub_1E4048300(12.0, v83, v84, v85);
    v86 = sub_1E4048300(10.0, v87, v88, v89);
  }

  OUTLINED_FUNCTION_3_0(v3 + 144, &v345);
  *(v3 + 144) = v86;
  v92 = TVAppFeature.isEnabled.getter(10, v90, v91);
  v95 = 4.0;
  if (v92)
  {
    sub_1E4048300(6.0, v92, v93, v94);
    v95 = sub_1E4048300(8.0, v96, v97, v98);
  }

  OUTLINED_FUNCTION_3_0(v3 + 152, &v342);
  *(v3 + 152) = v95;
  v101 = TVAppFeature.isEnabled.getter(10, v99, v100);
  if (v101)
  {
    sub_1E4048300(42.0, v101, v102, v103);
    v107 = sub_1E4048300(44.0, v104, v105, v106);
  }

  else
  {
    v107 = 36.0;
  }

  OUTLINED_FUNCTION_3_0(v3 + 160, &v339);
  *(v3 + 160) = v107;
  v110 = TVAppFeature.isEnabled.getter(10, v108, v109);
  if (v110)
  {
    sub_1E4048300(46.0, v110, v111, v112);
    v116 = sub_1E4048300(44.0, v113, v114, v115);
  }

  else
  {
    v116 = 36.0;
  }

  OUTLINED_FUNCTION_3_0(v3 + 168, v337);
  *(v3 + 168) = v116;
  *(v3 + 176) = 0;
  v119 = TVAppFeature.isEnabled.getter(10, v117, v118);
  v122 = 5.0;
  if (v119)
  {
    sub_1E4048300(2.0, v119, v120, v121);
    v122 = sub_1E4048300(5.0, v123, v124, v125);
  }

  OUTLINED_FUNCTION_3_0(v3 + 184, &v333);
  *(v3 + 184) = v122;
  TVAppFeature.isEnabled.getter(10, v126, v127);
  sub_1E3C2EAE8();
  v130 = TVAppFeature.isEnabled.getter(10, v128, v129);
  v133 = 16.0;
  if (v130)
  {
    sub_1E4048300(24.0, v130, v131, v132);
    v133 = sub_1E4048300(34.0, v134, v135, v136);
  }

  OUTLINED_FUNCTION_3_0(v3 + 192, &v330);
  *(v3 + 192) = v133;
  v139 = TVAppFeature.isEnabled.getter(10, v137, v138);
  v142 = 4.0;
  if (v139)
  {
    sub_1E4048300(6.0, v139, v140, v141);
    v142 = sub_1E4048300(5.0, v143, v144, v145);
  }

  OUTLINED_FUNCTION_3_0(v3 + 200, &v327);
  *(v3 + 200) = v142;
  v148 = TVAppFeature.isEnabled.getter(10, v146, v147);
  v151 = 1.0;
  if (v148)
  {
    v151 = sub_1E4048300(1.0, v148, v149, v150);
  }

  OUTLINED_FUNCTION_3_0(v3 + 208, &v324);
  *(v3 + 208) = v151;
  v154 = TVAppFeature.isEnabled.getter(10, v152, v153);
  if (v154)
  {
    sub_1E4048300(3.0, v154, v155, v156);
    sub_1E4048300(20.0, v157, v158, v159);
    v163 = sub_1E4048300(3.0, v160, v161, v162);
    v167 = sub_1E4048300(21.0, v164, v165, v166);
  }

  else
  {
    OUTLINED_FUNCTION_5_0(v3 + 232, &v321);
    v163 = *(v3 + 232);
    v167 = *(v3 + 240);
  }

  OUTLINED_FUNCTION_3_0(v3 + 216, &v318);
  *(v3 + 216) = v163;
  *(v3 + 224) = v167;
  v170 = TVAppFeature.isEnabled.getter(10, v168, v169);
  if (v170)
  {
    sub_1E4048300(3.0, v170, v171, v172);
    sub_1E4048300(20.0, v173, v174, v175);
    v179 = sub_1E4048300(3.0, v176, v177, v178);
    v183 = sub_1E4048300(21.0, v180, v181, v182);
  }

  else
  {
    v179 = 2.0;
    v183 = 16.0;
  }

  OUTLINED_FUNCTION_3_0(v3 + 232, &v315);
  *(v3 + 232) = v179;
  *(v3 + 240) = v183;
  v186 = TVAppFeature.isEnabled.getter(10, v184, v185);
  v189 = 0.25;
  if (v186)
  {
    v189 = sub_1E4048300(0.5, v186, v187, v188);
  }

  OUTLINED_FUNCTION_3_0(v3 + 248, &v312);
  *(v3 + 248) = v189;
  v192 = TVAppFeature.isEnabled.getter(10, v190, v191);
  if (v192)
  {
    sub_1E4048300(113.5, v192, v193, v194);
    sub_1E4048300(205.0, v195, v196, v197);
    sub_1E4048300(138.0, v198, v199, v200);
    v204 = sub_1E4048300(142.0, v201, v202, v203);
  }

  else
  {
    v204 = 90.0;
  }

  OUTLINED_FUNCTION_3_0(v3 + 256, &v309);
  *(v3 + 256) = v204;
  sub_1E4047950(v205);
  OUTLINED_FUNCTION_2_1();
  (*(v206 + 1768))();

  *&__dst[0] = 0;
  BYTE8(__dst[0]) = 1;
  LOBYTE(v305) = 0;
  LOBYTE(v299) = 0;
  v289 = sub_1E4048300(10.5, v207, v208, v209);
  LOBYTE(v293) = 0;
  sub_1E3C2FC98();
  v210 = OUTLINED_FUNCTION_8_100();
  OUTLINED_FUNCTION_6_217(v210, v211, v212, v213, v214, v215, v216, v217, v251, v255, v259, v263, v267, v271, v273, v277, v281, v285, v289, v293, 0x4025000000000000, v299, 0x4033000000000000, v305, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, __dst[0]);
  memcpy(__dst, __src, 0x59uLL);
  v218 = OUTLINED_FUNCTION_18();
  v226 = OUTLINED_FUNCTION_13_180(v218, v219, v220, v221, v222, v223, v224, v225, v252, v256, v260, v264, v268, v274, v278, v282, v286, v290, v294, v297, v300, v303, v306, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, __dst[0]);
  v227(v226);

  sub_1E40478E4(v228);
  OUTLINED_FUNCTION_2_1();
  (*(v229 + 1768))();

  *&__dst[0] = 0;
  BYTE8(__dst[0]) = 1;
  LOBYTE(v307) = 0;
  LOBYTE(v301) = 0;
  v291 = sub_1E4048300(16.0, v230, v231, v232);
  LOBYTE(v295) = 0;
  sub_1E3C2FC98();
  v233 = OUTLINED_FUNCTION_8_100();
  OUTLINED_FUNCTION_6_217(v233, v234, v235, v236, v237, v238, v239, v240, v253, v257, v261, v265, v269, v272, v275, v279, v283, v287, v291, v295, 0x4031000000000000, v301, 0x403E000000000000, v307, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, __dst[0]);
  memcpy(__dst, __src, 0x59uLL);
  v241 = OUTLINED_FUNCTION_18();
  v249 = OUTLINED_FUNCTION_13_180(v241, v242, v243, v244, v245, v246, v247, v248, v254, v258, v262, v266, v270, v276, v280, v284, v288, v292, v296, v298, v302, v304, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, __dst[0]);
  v250(v249);
}

void sub_1E4048E24(void *a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 320, &v13);
  v3 = *(v1 + 320);
  *(v1 + 320) = a1;
  v4 = a1;
  OUTLINED_FUNCTION_5_0(v1 + 320, v14);
  v5 = sub_1E4205F14();
  v7 = v6;
  if (v5 == sub_1E4205F14() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E42079A4();

    if ((v10 & 1) == 0)
    {
      sub_1E4048558(v11, v12);
    }
  }
}

void sub_1E4048EFC(uint64_t a1, id a2)
{
  if (a2)
  {
    v15 = [a2 preferredContentSizeCategory];
  }

  else
  {
    v15 = 0;
  }

  v4 = sub_1E3C2F8E8();
  if (!v4)
  {
    v12 = v15 == 0;
    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 preferredContentSizeCategory];

  if (v15)
  {
    v7 = sub_1E4205F14();
    v9 = v8;
    if (v7 == sub_1E4205F14() && v9 == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1E42079A4();
    }

LABEL_15:
    sub_1E3C35CF4(a1, a2);
    if (v12)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  sub_1E3C35CF4(a1, a2);
LABEL_16:
  sub_1E4048558(v13, v14);
LABEL_17:
}

void sub_1E4049050()
{

  v1 = *(v0 + 320);
}

uint64_t sub_1E40490A0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E40490F8()
{
  v0 = sub_1E40490A0();

  return MEMORY[0x1EEE6BDC0](v0, 328, 7);
}

double sub_1E4049128(uint64_t a1, void *a2)
{
  type metadata accessor for Key(0);
  sub_1E40491F0(&qword_1EE23B100, 255, type metadata accessor for Key, &unk_1E429A0E0);
  v3 = sub_1E4205C44();

  [a2 sizeWithAttributes_];
  v5 = v4;

  return v5;
}

uint64_t sub_1E40491F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1E404925C@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v75 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v74 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v64[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED60, &qword_1E42E75B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v64 - v8;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED68, &qword_1E42E75C0);
  OUTLINED_FUNCTION_0_10();
  v65 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v64 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED70, &qword_1E42E75C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v77 = v64 - v15;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED78, &qword_1E42E75D0);
  OUTLINED_FUNCTION_0_10();
  v70 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_17_3(v64 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBA0, &unk_1E42B49D0);
  OUTLINED_FUNCTION_5_7();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v64 - v21;
  v67 = v1;
  v23 = *v1;
  v24 = (*(**v1 + 488))(v20);
  v26 = MEMORY[0x1E69E7CA0];
  v72 = v2;
  if (!v24 || (v27 = sub_1E373E010(17, v24, v25), v28 = , !v27))
  {
    memset(__src, 0, 32);
    goto LABEL_7;
  }

  (*(*v27 + 512))(__src, v28);

  if (!*(&__src[1] + 1))
  {
LABEL_7:
    sub_1E325F6F0(__src, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v30 = *(&v78 + 1);
    v29 = v78;
    goto LABEL_9;
  }

LABEL_8:
  v29 = 0;
  v30 = 0xE000000000000000;
LABEL_9:
  v31 = (*(*v23 + 552))();
  if (!v31)
  {
    v78 = 0u;
    v79 = 0u;
    goto LABEL_14;
  }

  *(&__src[1] + 1) = &unk_1F5D7BEF8;
  *&__src[2] = &off_1F5D7BC58;
  LOBYTE(__src[0]) = 3;
  sub_1E3F9F164(__src, v31, v26 + 8);

  __swift_destroy_boxed_opaque_existential_1(__src);
  if (!*(&v79 + 1))
  {
LABEL_14:
    sub_1E325F6F0(&v78, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v33 = *(&__src[0] + 1);
    v32 = *&__src[0];
    goto LABEL_16;
  }

LABEL_15:
  v32 = 0;
  v33 = 0xE000000000000000;
LABEL_16:
  *&__src[0] = v29;
  *(&__src[0] + 1) = v30;
  *&v78 = v32;
  *(&v78 + 1) = v33;
  v34 = sub_1E41FE6C4();
  v35 = __swift_storeEnumTagSinglePayload(v22, 1, 1, v34);
  sub_1E32822E0(v35, v36, v37);
  v38 = sub_1E4207234();
  v40 = v39;
  v42 = v41;
  sub_1E325F6F0(v22, &qword_1ECF2FBA0, &unk_1E42B49D0);

  v44 = (v42 & 1) == 0;
  if (v42)
  {
    v45 = 15;
  }

  else
  {
    v45 = v40;
  }

  if (v44)
  {
    v46 = v38;
  }

  else
  {
    v46 = 15;
  }

  if ((*(*v23 + 392))(v43))
  {
    type metadata accessor for HintListCellLayout();
    v47 = swift_dynamicCastClass();
    if (!v47)
    {
    }
  }

  else
  {
    v47 = 0;
  }

  type metadata accessor for Accessibility();
  sub_1E40A8408();
  v64[1] = v48;
  *v9 = sub_1E4201D54();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED80, &qword_1E42E75D8);
  sub_1E4049AF4(v47, v29, v30, v46, v45, v67, &v9[*(v49 + 44)]);
  sub_1E32752B0(&qword_1ECF3ED88, &qword_1ECF3ED60, &qword_1E42E75B8, MEMORY[0x1E6981870]);
  sub_1E42030A4();

  sub_1E325F6F0(v9, &qword_1ECF3ED60, &qword_1E42E75B8);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_13_22();
  v50 = v77;
  (*(v65 + 32))(v77, v13, v66);
  v51 = v69;
  v52 = memcpy(&v50[*(v69 + 36)], __src, 0x70uLL);
  v53 = (*(*v23 + 576))(v52);
  if (v53)
  {
    v54 = v72;
    (*(*v53 + 224))(v53);
  }

  else
  {
    v55 = sub_1E4204724();
    v54 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v55);
  }

  v56 = sub_1E4049F58();
  v57 = v73;
  sub_1E3B29C44(v51, v56);
  v58 = v68;
  v59 = v77;
  sub_1E3B29C48();
  OUTLINED_FUNCTION_15_5();
  v60(v57, v75);
  sub_1E325F6F0(v54, &qword_1ECF2B7B0, &qword_1E429EC30);
  sub_1E325F6F0(v59, &qword_1ECF3ED70, &qword_1E42E75C8);
  *&v78 = v51;
  *(&v78 + 1) = v56;
  OUTLINED_FUNCTION_4_253();
  swift_getOpaqueTypeConformance2();
  v61 = v71;
  sub_1E3E03180();

  OUTLINED_FUNCTION_15_5();
  return v62(v58, v61);
}

uint64_t sub_1E4049AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v40 = a1;
  v50 = a7;
  v51 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v49 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_3();
  v48 = v9;
  v47 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v46 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3ED98, &qword_1E42E7650);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDA0, &qword_1E42E7658) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDA8, &qword_1E42E7660);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDB0, &qword_1E42E7668);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v39 - v29;
  *v16 = sub_1E4201B84();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EDB8, &qword_1E42E7670);
  sub_1E404A054(v40, v41, v42, v43, v44, v45, &v16[*(v31 + 44)]);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_13_22();
  sub_1E329E454(v16, v20, &qword_1ECF3ED98, &qword_1E42E7650);
  memcpy(&v20[*(v17 + 44)], __src, 0x70uLL);
  v32 = sub_1E4203744();
  KeyPath = swift_getKeyPath();
  sub_1E329E454(v20, v24, &qword_1ECF3EDA0, &qword_1E42E7658);
  v34 = &v24[*(v21 + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  sub_1E4202474();
  v35 = sub_1E404ACD8();
  sub_1E4203224();
  OUTLINED_FUNCTION_15_5();
  v36(v13, v47);
  sub_1E325F6F0(v24, &qword_1ECF3EDA8, &qword_1E42E7660);
  v37 = v48;
  sub_1E4201C94();
  v52 = v21;
  v53 = v35;
  swift_getOpaqueTypeConformance2();
  sub_1E4203294();
  (*(v49 + 8))(v37, v51);
  return (*(v27 + 8))(v30, v25);
}

unint64_t sub_1E4049F58()
{
  result = qword_1ECF3ED90;
  if (!qword_1ECF3ED90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ED70, &qword_1E42E75C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3ED60, &qword_1E42E75B8);
    sub_1E32752B0(&qword_1ECF3ED88, &qword_1ECF3ED60, &qword_1E42E75B8, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3ED90);
  }

  return result;
}
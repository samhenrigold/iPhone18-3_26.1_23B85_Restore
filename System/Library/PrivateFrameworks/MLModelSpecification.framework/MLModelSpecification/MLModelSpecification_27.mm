uint64_t (*SparseSupportVector.SparseNode.index.modify(void *a1))(uint64_t result, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2576D5E3C;
}

double (*SparseSupportVector.SparseNode.value.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 8);
  return sub_2576C6434;
}

BOOL static SparseSupportVector.SparseNode.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    type metadata accessor for Proto_SparseNode(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_12_48();
    v3 = sub_25771EBC8(v2);
    if (OUTLINED_FUNCTION_4_2(v3))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25771E9F0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_25771EA4C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_25771EAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SparseSupportVector(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25771EB2C()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_25771EBC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_25771EDF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881838, &unk_2577775F0);
    OUTLINED_FUNCTION_13_34();
    sub_25771EBC8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_25771F00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25771F1B0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v12 = MEMORY[0x277D84F90];
    sub_257484040(0, v2, 0);
    v3 = v12;
    v4 = v1 + 32;
    do
    {
      v5 = sub_257743674();
      v7 = v6;
      v9 = *(v12 + 16);
      v8 = *(v12 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257484040((v8 > 1), v9 + 1, 1);
      }

      *(v12 + 16) = v9 + 1;
      v10 = v12 + 24 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      *(v10 + 48) = 0;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25771F2B0(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_2577215B8(v5, a4, a5, a1, a2, a3);
}

uint64_t (*sub_25771F448(uint64_t (**a1)(), uint64_t a2, uint64_t a3))()
{
  result = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = result;
  *(result + 4) = a3;
  *(result + 5) = v3;
  *(result + 3) = a2;
  if (a2 < 0 || (v8 = result, result = *v3, *(*v3 + 16) < a3))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 1) = a3;
    *(v8 + 2) = result;
    *v8 = a2;

    return sub_25771F4E0;
  }

  return result;
}

void sub_25771F4E0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    OUTLINED_FUNCTION_11_48();
  }

  else
  {
    OUTLINED_FUNCTION_11_48();
  }

  free(v2);
}

void (*sub_25771F560())(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_21();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_21_33(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881098, &qword_257777600);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  *(v2 + 32) = v7;
  DenseSupportVectorCollection.vectors.getter();

  v8 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  if (v1 < 0 || v8 < v0)
  {
    __break(1u);
  }

  else
  {
    sub_257724438();
    *v7 = v1;
    v7[1] = v0;
    return sub_25771F658;
  }

  return result;
}

void (*sub_25771F680(void *a1, uint64_t a2, uint64_t a3))(void **a1, uint64_t a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881118, &qword_257773490);
  v7[3] = v8;
  OUTLINED_FUNCTION_4();
  v10 = *(v9 + 64);
  v7[4] = __swift_coroFrameAllocStub(v10);
  result = __swift_coroFrameAllocStub(v10);
  v7[5] = result;
  v12 = *v3;
  v7[6] = *v3;
  if (a2 < 0 || *(v12 + 16) < a3)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    *(v7 + 14) = *(v8 + 40);
    sub_257724438();
    *v13 = a2;
    *(v13 + 1) = a3;
    return sub_25771F790;
  }

  return result;
}

void (*sub_25771F7A4())(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_21();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_21_33(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881838, &unk_2577775F0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  *(v2 + 24) = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  *(v2 + 32) = v7;
  SparseSupportVectorCollection.vectors.getter();

  v8 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  if (v1 < 0 || v8 < v0)
  {
    __break(1u);
  }

  else
  {
    sub_257724438();
    *v7 = v1;
    v7[1] = v0;
    return sub_25771F89C;
  }

  return result;
}

void sub_25771F8C4()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = v1;
  v6 = v5;
  v7 = *(*v0 + 24);
  v8 = *(*v0 + 32);
  if (v9)
  {
    sub_2574AD5D8(*(*v0 + 32), v7, v1, v2);
    v10 = OUTLINED_FUNCTION_311();
    v6(v10);
    sub_2574695E4(v7, v4, v3);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_311();
    v6(v11);
  }

  sub_2574695E4(v8, v4, v3);
  free(v8);
  free(v7);
  OUTLINED_FUNCTION_35();

  free(v12);
}

void (*sub_25771F994(void *a1, uint64_t a2, uint64_t a3))(void **a1, uint64_t a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8818C0, &qword_257777348);
  v7[3] = v8;
  v9 = *(*(v8 - 8) + 64);
  v7[4] = __swift_coroFrameAllocStub(v9);
  result = __swift_coroFrameAllocStub(v9);
  v7[5] = result;
  v11 = *v3;
  v7[6] = *v3;
  if (a2 < 0 || *(v11 + 16) < a3)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    *(v7 + 14) = *(v8 + 40);
    sub_257724438();
    *v12 = a2;
    *(v12 + 1) = a3;
    return sub_25771FAAC;
  }

  return result;
}

void sub_25771FAC0(void **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 6);
  if (a2)
  {
    v8 = v6[1];
    sub_2574AD5D8(v6[5], v6[4], a3, a4);
    if (*(v7 + 16) >= v8)
    {
      v9 = v6[4];
      v11 = *v9;
      v10 = v9[1];
      v12 = v6[6];
      v13 = *v6;
      for (i = *v9; ; ++i)
      {
        v15 = v6[1];
        if (v13 == v15 || v10 == i)
        {
          break;
        }

        if (i >= v10)
        {
          __break(1u);
          goto LABEL_38;
        }

        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v17 = *(v6[4] + *(v6[3] + 40));
        if (i >= *(v17 + 16))
        {
          goto LABEL_41;
        }

        v18 = *(v17 + 8 * i + 32);

        v22 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_25767A0F0(v12, v19, v20, v21);
          v22 = v24;
        }

        if (v13 >= *(v22 + 16))
        {
          goto LABEL_43;
        }

        v23 = v6[2];
        *(v22 + 8 * v13 + 32) = v18;

        *v23 = v22;
        ++v13;
        v12 = v22;
      }

      if (v13 != v15)
      {
        goto LABEL_47;
      }

      if (v10 == i)
      {
        v40 = v6[4];
        v41 = v6[5];
        sub_2574695E4(v40, a3, a4);
        goto LABEL_34;
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v25 = v6[1];
  if (*(v7 + 16) < v25)
  {
    goto LABEL_46;
  }

  v26 = v6[5];
  v28 = *v26;
  v27 = v26[1];
  v29 = *v6;
  for (j = *v26; v29 != v25 && v27 != j; ++j)
  {
    if (j >= v27)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((v28 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v32 = *(v6[5] + *(v6 + 14));
    if (j >= *(v32 + 16))
    {
      goto LABEL_42;
    }

    v33 = *(v32 + 8 * j + 32);

    v37 = v7;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A0F0(v7, v34, v35, v36);
      v37 = v39;
    }

    if (v29 >= *(v37 + 16))
    {
      goto LABEL_44;
    }

    v38 = v6[2];
    *(v37 + 8 * v29 + 32) = v33;

    *v38 = v37;
    ++v29;
    v25 = v6[1];
    v7 = v37;
  }

  if (v29 != v25)
  {
    goto LABEL_48;
  }

  if (v27 != j)
  {
    goto LABEL_50;
  }

  v40 = v6[4];
  v41 = v6[5];
LABEL_34:
  sub_2574695E4(v41, a3, a4);
  free(v41);
  free(v40);

  free(v6);
}

unint64_t sub_25771FDF4(unint64_t result, unint64_t a2, uint64_t (*a3)(unint64_t, __n128))
{
  if (result == a2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = *(*v3 + 16);
  if (v4 <= result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *v3 + 32;
  v7 = *(v6 + 8 * result);
  (a3)(*(v6 + 8 * a2));
  v8.n128_u64[0] = v7;

  return a3(a2, v8);
}

void sub_25771FF4C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8(0);
  v10 = OUTLINED_FUNCTION_24(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v21 - v15;
  if (v7 == v5)
  {
    goto LABEL_7;
  }

  v17 = v3(v14);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v17 + 16) <= v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = v1;
  sub_257724438();

  v19 = v3(v18);
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(v19 + 16) > v5)
  {
    sub_257724438();

    v20 = v22;
    v22(v13, v7);
    v20(v16, v5);
LABEL_7:
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_11:
  __break(1u);
}

unint64_t sub_2577200E0(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v12 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = *v5;
      v13 = *(*v5 + 16);
      if (v13 > result)
      {
        v6 = a2;
        if (v13 > a2)
        {
          v14 = v4 + 32 + 48 * result;
          v30 = *v14;
          v15 = *(v14 + 24);
          v16 = *(v14 + 40);
          v17 = v4 + 32 + 48 * a2;
          v34 = *v17;
          v10 = *(v17 + 8);
          v11 = *(v17 + 16);
          v7 = *(v17 + 24);
          v8 = *(v17 + 40);
          v32 = *(v14 + 32);
          v33 = *(v17 + 32);
          v28 = *(v14 + 16);
          v29 = *(v14 + 8);
          sub_257466F40(v29, v28, v15);
          v31 = v16;

          sub_257466F40(v10, v11, v7);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v5 = v4;
          v9 = v15;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }

LABEL_11:
        __break(1u);
LABEL_12:
        sub_25767A138(v4, a2, a3, a4);
        v4 = v27;
        *v5 = v27;
LABEL_6:
        v19 = v4 + 32 + 48 * v12;
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        *v19 = v34;
        *(v19 + 8) = v10;
        *(v19 + 16) = v11;
        v22 = *(v19 + 24);
        *(v19 + 24) = v7;
        *(v19 + 32) = v33;
        *(v19 + 40) = v8;
        sub_257467018(v20, v21, v22);

        *v5 = v4;
        if (*(v4 + 16) <= v6)
        {
          __break(1u);
        }

        else
        {
          v23 = v4 + 32 + 48 * v6;
          v24 = *(v23 + 8);
          v25 = *(v23 + 16);
          *v23 = v30;
          *(v23 + 8) = v29;
          *(v23 + 16) = v28;
          v26 = *(v23 + 24);
          *(v23 + 24) = v9;
          *(v23 + 32) = v32;
          *(v23 + 40) = v31;
          sub_257467018(v24, v25, v26);

          *v5 = v4;
        }

        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2577202AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a6@<X8>)
{
  if (result < 0 || *(*v6 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    result = sub_257724438();
    *a6 = v9;
    a6[1] = a2;
  }

  return result;
}

uint64_t sub_25772039C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a7@<X8>)
{
  (a3)();

  v14 = *(a3(v13) + 16);

  if (a1 < 0 || v14 < a2)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    result = sub_257724438();
    *a7 = a1;
    a7[1] = a2;
  }

  return result;
}

uint64_t sub_25772043C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0 || *(a3 + 16) < a2)
  {
    __break(1u);
  }

  else
  {
    a4[1] = a2;
    a4[2] = a3;
    *a4 = result;
  }

  return result;
}

uint64_t sub_257720490(void (*a1)(uint64_t))
{
  (a1)();

  a1(v2);

  return 0;
}

unint64_t sub_2577204D8(uint64_t a1, uint64_t a2)
{
  v3 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (result > *(*v2 + 16))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_25772052C(unint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    (a3)();

    v6 = *(a3(v5) + 16);

    if (v3 <= v6)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257720590(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_257720EC4(a1, a3);
  if (a2 < 1)
  {
    if (v6 <= 0 && v6 > a2)
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a2)
  {
    return 0;
  }

  result = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > *(*v3 + 16))
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

unint64_t sub_25772066C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  v8 = a4(a1, a3);
  if (a2 < 1)
  {
    if (v8 <= 0 && v8 > a2)
    {
      return 0;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0 && v8 < a2)
  {
    return 0;
  }

  return sub_25772052C(a1, a2, a5);
}

void sub_2577206E8()
{
  OUTLINED_FUNCTION_31();
  v59 = v3;
  v60 = v4;
  v5 = type metadata accessor for SparseSupportVector(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_45(v7, v57);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_31(v9, v10, v11, v12, v13, v14, v15, v16, v58);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_33();
  if (!v2)
  {
    goto LABEL_12;
  }

  v19 = OUTLINED_FUNCTION_4_65();
  sub_257483674(v19, v2, 0);
  v20 = OUTLINED_FUNCTION_17_31();
  v21 = type metadata accessor for Proto_SparseVector(v20);
  OUTLINED_FUNCTION_24(v21);
  v0 = v1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v61 = *(v23 + 72);
  v24 = v0;
  do
  {
    OUTLINED_FUNCTION_311();
    sub_257724438();
    OUTLINED_FUNCTION_6_61();
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_2_72(v25);
      sub_257483674(v27, v28, v29);
    }

    OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_16_33();
    OUTLINED_FUNCTION_0_107();
    sub_257724538();
    v24 += v61;
    --v2;
  }

  while (v2);

  v30 = *(v1 + 16);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_4_65();
    sub_257483674(v31, v30, 0);
    v32 = v62;
    v33 = v60;
    do
    {
      sub_257724438();
      OUTLINED_FUNCTION_6_61();
      if (v26)
      {
        v35 = OUTLINED_FUNCTION_2_72(v34);
        sub_257483674(v35, v36, v37);
        v32 = v62;
      }

      *(v32 + 16) = v1;
      OUTLINED_FUNCTION_0_107();
      sub_257724538();
      v0 += v61;
      --v30;
    }

    while (v30);
  }

  else
  {
LABEL_12:
    v33 = v60;
  }

  OUTLINED_FUNCTION_29_22();
  if (v0 < v33)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v1 + 16);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_4_65();
      sub_257483674(v39, v38, 0);
      v40 = OUTLINED_FUNCTION_17_31();
      v41 = type metadata accessor for Proto_SparseVector(v40);
      OUTLINED_FUNCTION_24(v41);
      v43 = v1 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v45 = *(v44 + 72);
      v0 = v43;
      do
      {
        sub_257724438();
        OUTLINED_FUNCTION_13_35();
        if (v26)
        {
          v47 = OUTLINED_FUNCTION_2_72(v46);
          sub_257483674(v47, v48, v49);
        }

        OUTLINED_FUNCTION_8_46();
        OUTLINED_FUNCTION_23_30();
        OUTLINED_FUNCTION_0_107();
        sub_257724538();
        v0 += v45;
        --v38;
      }

      while (v38);

      v50 = *(v1 + 16);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_4_65();
        sub_257483674(v51, v50, 0);
        v52 = v62;
        do
        {
          sub_257724438();
          OUTLINED_FUNCTION_18_44();
          if (v26)
          {
            v54 = OUTLINED_FUNCTION_12_49(v53);
            sub_257483674(v54, v55, v56);
            v52 = v62;
          }

          *(v52 + 16) = v0;
          OUTLINED_FUNCTION_0_107();
          sub_257724538();
          v43 += v45;
          --v50;
        }

        while (v50);
      }
    }

    OUTLINED_FUNCTION_29_22();
    if (v0 >= v59)
    {
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

void sub_257720AD4()
{
  OUTLINED_FUNCTION_31();
  v59 = v3;
  v60 = v4;
  v5 = type metadata accessor for DenseSupportVector(0);
  v6 = OUTLINED_FUNCTION_24(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_45(v7, v57);
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_31(v9, v10, v11, v12, v13, v14, v15, v16, v58);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_25_30();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_33();
  if (!v2)
  {
    goto LABEL_12;
  }

  v19 = OUTLINED_FUNCTION_4_65();
  sub_2574836CC(v19, v2, 0);
  v20 = OUTLINED_FUNCTION_17_31();
  v21 = type metadata accessor for Proto_DenseVector(v20);
  OUTLINED_FUNCTION_24(v21);
  v0 = v1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v61 = *(v23 + 72);
  v24 = v0;
  do
  {
    OUTLINED_FUNCTION_311();
    sub_257724438();
    OUTLINED_FUNCTION_6_61();
    if (v26)
    {
      v27 = OUTLINED_FUNCTION_2_72(v25);
      sub_2574836CC(v27, v28, v29);
    }

    OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_16_33();
    OUTLINED_FUNCTION_1_86();
    sub_257724538();
    v24 += v61;
    --v2;
  }

  while (v2);

  v30 = *(v1 + 16);
  if (v30)
  {
    v31 = OUTLINED_FUNCTION_4_65();
    sub_2574836CC(v31, v30, 0);
    v32 = v62;
    v33 = v60;
    do
    {
      sub_257724438();
      OUTLINED_FUNCTION_6_61();
      if (v26)
      {
        v35 = OUTLINED_FUNCTION_2_72(v34);
        sub_2574836CC(v35, v36, v37);
        v32 = v62;
      }

      *(v32 + 16) = v1;
      OUTLINED_FUNCTION_1_86();
      sub_257724538();
      v0 += v61;
      --v30;
    }

    while (v30);
  }

  else
  {
LABEL_12:
    v33 = v60;
  }

  OUTLINED_FUNCTION_29_22();
  if (v0 < v33)
  {
    __break(1u);
  }

  else
  {
    v38 = *(v1 + 16);
    if (v38)
    {
      v39 = OUTLINED_FUNCTION_4_65();
      sub_2574836CC(v39, v38, 0);
      v40 = OUTLINED_FUNCTION_17_31();
      v41 = type metadata accessor for Proto_DenseVector(v40);
      OUTLINED_FUNCTION_24(v41);
      v43 = v1 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v45 = *(v44 + 72);
      v0 = v43;
      do
      {
        sub_257724438();
        OUTLINED_FUNCTION_13_35();
        if (v26)
        {
          v47 = OUTLINED_FUNCTION_2_72(v46);
          sub_2574836CC(v47, v48, v49);
        }

        OUTLINED_FUNCTION_8_46();
        OUTLINED_FUNCTION_23_30();
        OUTLINED_FUNCTION_1_86();
        sub_257724538();
        v0 += v45;
        --v38;
      }

      while (v38);

      v50 = *(v1 + 16);
      if (v50)
      {
        v51 = OUTLINED_FUNCTION_4_65();
        sub_2574836CC(v51, v50, 0);
        v52 = v62;
        do
        {
          sub_257724438();
          OUTLINED_FUNCTION_18_44();
          if (v26)
          {
            v54 = OUTLINED_FUNCTION_12_49(v53);
            sub_2574836CC(v54, v55, v56);
            v52 = v62;
          }

          *(v52 + 16) = v0;
          OUTLINED_FUNCTION_1_86();
          sub_257724538();
          v43 += v45;
          --v50;
        }

        while (v50);
      }
    }

    OUTLINED_FUNCTION_29_22();
    if (v0 >= v59)
    {
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

unint64_t sub_257720EC4(unint64_t result, unint64_t a2)
{
  v3 = *(*v2 + 16);
  if (v3 >= result && v3 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t SupportVectorCoefficients.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t (*SupportVectorCoefficients.values.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25749D854;
}

BOOL static SupportVectorCoefficients.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  result = 0;
  if (sub_257479D04(*a1, *a2))
  {
    type metadata accessor for Proto_Coefficients(0);
    sub_2577431B4();
    sub_257722C24(&qword_27F879B68);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25772104C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_Coefficients(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = a1;
  return result;
}

Swift::Int __swiftcall SupportVectorCoefficients.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall SupportVectorCoefficients.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t SupportVectorCoefficients.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*v1 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void SupportVectorCoefficients.subscript.setter(unint64_t a1, double a2)
{
  v5 = *v2;

  v9 = v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_25767A0F0(v5, v6, v7, v8);
  v9 = v10;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v9 + 16) > a1)
  {
    *(v9 + 8 * a1 + 32) = a2;

    *v2 = v9;
    return;
  }

LABEL_7:
  __break(1u);
}

void (*SupportVectorCoefficients.subscript.modify(void (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  *(result + 1) = a2;
  *(result + 2) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v2 + 16) > a2)
  {
    *result = *(*v2 + 8 * a2 + 32);
    return sub_2577211FC;
  }

  __break(1u);
  return result;
}

void (*sub_257721234(uint64_t *a1, unint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  v5 = SupportVectorCoefficients.values.getter();
  v6 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C();
  if (v6)
  {
    v7 = *(v5 + 8 * v4 + 32);
  }

  else
  {
    v7 = sub_2576A852C(v4, v5);
    swift_unknownObjectRelease();
  }

  *a1 = v7;
  return sub_2577212D0;
}

void (*sub_257721308(void *a1, uint64_t *a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_25771F994(v4, *a2, a2[1]);
  return sub_257679C40;
}

unint64_t sub_25772136C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_25771FDB0(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2577213CC@<X0>(uint64_t *a1@<X8>)
{
  result = SupportVectorCoefficients.count.getter();
  *a1 = result;
  return result;
}

void (*sub_2577213F4(uint64_t *a1, unint64_t *a2))()
{
  v3 = *a2;
  v4 = SupportVectorCoefficients.values.getter();
  v5 = j__OUTLINED_FUNCTION_289();
  sub_2576C2B8C();
  if (v5)
  {
    v6 = *(v4 + 8 * v3 + 32);
  }

  else
  {
    v6 = sub_2576A852C(v3, v4);
    swift_unknownObjectRelease();
  }

  *a1 = v6;
  return nullsub_6;
}

uint64_t sub_2577214D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257464990();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int sub_2577214FC@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = SupportVectorCoefficients.index(after:)(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_257721528@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = SupportVectorCoefficients.index(before:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_257721554@<X0>(uint64_t a1@<X8>)
{
  sub_257724538();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880E00, &qword_257771B50);
  *(a1 + *(result + 36)) = 0;
  return result;
}

void sub_2577215B8(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if ((a2 & 0x8000000000000000) != 0 || (v9 = a3, v8 = a1, v10 = *a1, *(*a1 + 16) < a3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = a5;
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    sub_25767A138(v10, a2, a3, a4);
    v10 = v23;
  }

  v12 = 0;
  v31 = v10;
  *v8 = v10;
  v24 = v8;
  v25 = 48 * v6;
  v8 = a4;
  v26 = a6 + 48 * a4;
  while (v9 != v6 && v7 != v8)
  {
    v14 = v31;
    if (v8 >= v7)
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    if (v8 >= *(a6 + 16))
    {
      goto LABEL_21;
    }

    v29 = *(v26 + v12 + 32);
    v15 = *(v26 + v12 + 40);
    v10 = *(v26 + v12 + 48);
    v16 = *(v26 + v12 + 56);
    v17 = *(v26 + v12 + 72);
    v30 = *(v26 + v12 + 64);
    sub_257466F40(v15, v10, v16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A138(v31, a2, a3, a4);
      v14 = v22;
    }

    if (v6 >= *(v14 + 16))
    {
      goto LABEL_22;
    }

    v31 = v14;
    v18 = v14 + v25 + v12;
    v19 = *(v18 + 40);
    v20 = *(v18 + 48);
    *(v18 + 32) = v29;
    *(v18 + 40) = v15;
    *(v18 + 48) = v10;
    v21 = *(v18 + 56);
    *(v18 + 56) = v16;
    *(v18 + 64) = v30;
    *(v18 + 72) = v17;
    sub_257467018(v19, v20, v21);

    ++v6;
    v8 = (v8 + 1);
    v12 += 48;
  }

  *v24 = v31;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v7 != v8)
  {
LABEL_26:
    __break(1u);
  }
}

void sub_257721798(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v80 = a4;
  v7 = type metadata accessor for Proto_DenseVector(0);
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v75[1] = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DenseSupportVector(0);
  v90 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v75[0] = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v75 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v89 = v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v75[2] = v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v75 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = v75 - v22;
  DenseSupportVectorCollection.vectors.getter();

  v84 = a1;
  v23 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  if ((a2 & 0x8000000000000000) != 0 || v23 < a3)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v24 = a2;
  v25 = *v80;
  v26 = v80[1];
  v78 = a3;
  v79 = v25;
  v27 = v25;
  v81 = v14;
  v76 = v26;
  v77 = v21;
  while (v24 != a3 && v27 != v26)
  {
    if (v27 >= v26)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881098, &qword_257777600);
    v30 = *(v80 + *(v29 + 40));
    v31 = *(v30 + 16);
    v86 = v27;
    v83 = v30;
    if (v31)
    {
      v91 = MEMORY[0x277D84F90];
      sub_2574836CC(0, v31, 0);
      v32 = v91;
      v33 = v30 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v34 = *(v87 + 72);
      do
      {
        sub_257724438();
        v91 = v32;
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_2574836CC(v35 > 1, v36 + 1, 1);
          v32 = v91;
        }

        *(v32 + 16) = v36 + 1;
        sub_257724538();
        v33 += v34;
        --v31;
      }

      while (v31);
      v27 = v86;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v27 >= *(v32 + 16))
    {
      goto LABEL_56;
    }

    v37 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v38 = *(v90 + 72);
    sub_257724438();

    v39 = *v84;
    v40 = *(*v84 + 16);
    v85 = v24;
    v82 = v39;
    if (v40)
    {
      v91 = MEMORY[0x277D84F90];
      sub_2574836CC(0, v40, 0);
      v41 = v91;
      v42 = v87;
      v43 = v39 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v44 = *(v87 + 72);
      do
      {
        sub_257724438();
        v91 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_2574836CC(v45 > 1, v46 + 1, 1);
          v42 = v87;
          v41 = v91;
        }

        *(v41 + 16) = v46 + 1;
        sub_257724538();
        v43 += v44;
        --v40;
      }

      while (v40);
      v47 = v85;
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
      v42 = v87;
      v47 = v24;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A108(v41, v48, v49, v50);
      v41 = v74;
    }

    if (v47 >= *(v41 + 16))
    {
      goto LABEL_57;
    }

    v51 = v41 + v37;
    sub_2577244E4();
    v52 = *(v41 + 16);
    if (v52)
    {
      v91 = MEMORY[0x277D84F90];
      sub_257483F90(0, v52, 0);
      v42 = v87;
      v53 = v91;
      do
      {
        v54 = v89;
        sub_257724438();
        sub_257724438();
        sub_25772448C(v54, type metadata accessor for DenseSupportVector);
        v91 = v53;
        v56 = *(v53 + 16);
        v55 = *(v53 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_257483F90(v55 > 1, v56 + 1, 1);
          v42 = v87;
          v53 = v91;
        }

        *(v53 + 16) = v56 + 1;
        sub_257724538();
        v51 += v38;
        --v52;
      }

      while (v52);

      v47 = v85;
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    *v84 = v53;
    sub_25772448C(v88, type metadata accessor for DenseSupportVector);
    v57 = *(v53 + 16);
    if (v57)
    {
      v91 = MEMORY[0x277D84F90];
      v58 = v42;
      sub_2574836CC(0, v57, 0);
      v59 = v91;
      v60 = v53 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v61 = *(v58 + 72);
      do
      {
        sub_257724438();
        v91 = v59;
        v63 = *(v59 + 16);
        v62 = *(v59 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_2574836CC(v62 > 1, v63 + 1, 1);
          v59 = v91;
        }

        *(v59 + 16) = v63 + 1;
        sub_257724538();
        v60 += v61;
        --v57;
      }

      while (v57);

      v42 = v87;
    }

    v64 = __OFADD__(v47, 1);
    v65 = v47 + 1;
    if (v64)
    {
      goto LABEL_58;
    }

    v66 = v83;
    v67 = *(v83 + 16);
    if (v67)
    {
      v91 = MEMORY[0x277D84F90];
      v68 = v42;
      sub_2574836CC(0, v67, 0);
      v69 = v91;
      v70 = v66 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v71 = *(v68 + 72);
      do
      {
        sub_257724438();
        v91 = v69;
        v73 = *(v69 + 16);
        v72 = *(v69 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_2574836CC(v72 > 1, v73 + 1, 1);
          v69 = v91;
        }

        *(v69 + 16) = v73 + 1;
        sub_257724538();
        v70 += v71;
        --v67;
      }

      while (v67);
    }

    v24 = v65;
    v27 = v86 + 1;
    a3 = v78;
    v26 = v76;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_59;
    }
  }

  if (v24 != a3)
  {
    goto LABEL_61;
  }

  if (v27 != v26)
  {
    goto LABEL_62;
  }
}

void sub_257722018(uint64_t *a1, unint64_t a2, uint64_t a3, unint64_t *a4)
{
  v80 = a4;
  v7 = type metadata accessor for Proto_SparseVector(0);
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v75[1] = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SparseSupportVector(0);
  v90 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v75[0] = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v75 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v89 = v75 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v75[2] = v75 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v75 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = v75 - v22;
  SparseSupportVectorCollection.vectors.getter();

  v84 = a1;
  v23 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  if ((a2 & 0x8000000000000000) != 0 || v23 < a3)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v24 = a2;
  v25 = *v80;
  v26 = v80[1];
  v78 = a3;
  v79 = v25;
  v27 = v25;
  v81 = v14;
  v76 = v26;
  v77 = v21;
  while (v24 != a3 && v27 != v26)
  {
    if (v27 >= v26)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881838, &unk_2577775F0);
    v30 = *(v80 + *(v29 + 40));
    v31 = *(v30 + 16);
    v86 = v27;
    v83 = v30;
    if (v31)
    {
      v91 = MEMORY[0x277D84F90];
      sub_257483674(0, v31, 0);
      v32 = v91;
      v33 = v30 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v34 = *(v87 + 72);
      do
      {
        sub_257724438();
        v91 = v32;
        v36 = *(v32 + 16);
        v35 = *(v32 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_257483674(v35 > 1, v36 + 1, 1);
          v32 = v91;
        }

        *(v32 + 16) = v36 + 1;
        sub_257724538();
        v33 += v34;
        --v31;
      }

      while (v31);
      v27 = v86;
    }

    else
    {
      v32 = MEMORY[0x277D84F90];
    }

    if ((v79 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    if (v27 >= *(v32 + 16))
    {
      goto LABEL_56;
    }

    v37 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v38 = *(v90 + 72);
    sub_257724438();

    v39 = *v84;
    v40 = *(*v84 + 16);
    v85 = v24;
    v82 = v39;
    if (v40)
    {
      v91 = MEMORY[0x277D84F90];
      sub_257483674(0, v40, 0);
      v41 = v91;
      v42 = v87;
      v43 = v39 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v44 = *(v87 + 72);
      do
      {
        sub_257724438();
        v91 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_257483674(v45 > 1, v46 + 1, 1);
          v42 = v87;
          v41 = v91;
        }

        *(v41 + 16) = v46 + 1;
        sub_257724538();
        v43 += v44;
        --v40;
      }

      while (v40);
      v47 = v85;
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
      v42 = v87;
      v47 = v24;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A120(v41, v48, v49, v50);
      v41 = v74;
    }

    if (v47 >= *(v41 + 16))
    {
      goto LABEL_57;
    }

    v51 = v41 + v37;
    sub_2577244E4();
    v52 = *(v41 + 16);
    if (v52)
    {
      v91 = MEMORY[0x277D84F90];
      sub_257483FE8(0, v52, 0);
      v42 = v87;
      v53 = v91;
      do
      {
        v54 = v89;
        sub_257724438();
        sub_257724438();
        sub_25772448C(v54, type metadata accessor for SparseSupportVector);
        v91 = v53;
        v56 = *(v53 + 16);
        v55 = *(v53 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_257483FE8(v55 > 1, v56 + 1, 1);
          v42 = v87;
          v53 = v91;
        }

        *(v53 + 16) = v56 + 1;
        sub_257724538();
        v51 += v38;
        --v52;
      }

      while (v52);

      v47 = v85;
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    *v84 = v53;
    sub_25772448C(v88, type metadata accessor for SparseSupportVector);
    v57 = *(v53 + 16);
    if (v57)
    {
      v91 = MEMORY[0x277D84F90];
      v58 = v42;
      sub_257483674(0, v57, 0);
      v59 = v91;
      v60 = v53 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
      v61 = *(v58 + 72);
      do
      {
        sub_257724438();
        v91 = v59;
        v63 = *(v59 + 16);
        v62 = *(v59 + 24);
        if (v63 >= v62 >> 1)
        {
          sub_257483674(v62 > 1, v63 + 1, 1);
          v59 = v91;
        }

        *(v59 + 16) = v63 + 1;
        sub_257724538();
        v60 += v61;
        --v57;
      }

      while (v57);

      v42 = v87;
    }

    v64 = __OFADD__(v47, 1);
    v65 = v47 + 1;
    if (v64)
    {
      goto LABEL_58;
    }

    v66 = v83;
    v67 = *(v83 + 16);
    if (v67)
    {
      v91 = MEMORY[0x277D84F90];
      v68 = v42;
      sub_257483674(0, v67, 0);
      v69 = v91;
      v70 = v66 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
      v71 = *(v68 + 72);
      do
      {
        sub_257724438();
        v91 = v69;
        v73 = *(v69 + 16);
        v72 = *(v69 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_257483674(v72 > 1, v73 + 1, 1);
          v69 = v91;
        }

        *(v69 + 16) = v73 + 1;
        sub_257724538();
        v70 += v71;
        --v67;
      }

      while (v67);
    }

    v24 = v65;
    v27 = v86 + 1;
    a3 = v78;
    v26 = v76;
    if (__OFADD__(v86, 1))
    {
      goto LABEL_59;
    }
  }

  if (v24 != a3)
  {
    goto LABEL_61;
  }

  if (v27 != v26)
  {
    goto LABEL_62;
  }
}

void sub_257722898(int **result, unint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if ((a2 & 0x8000000000000000) != 0 || (v8 = *result, *(*result + 2) < a3))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return;
  }

  v11 = a2;
  v12 = *a4;
  v13 = a4[1];
  for (i = *a4; a3 != v11 && v13 != i; ++i)
  {
    if (i >= v13)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    if (v12 < 0)
    {
      goto LABEL_19;
    }

    v17 = *(a4 + *(v16 + 40));
    if (i >= *(v17 + 16))
    {
      goto LABEL_20;
    }

    v18 = *(v17 + 8 * i + 32);

    v22 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25767A0F0(v8, v19, v20, v21);
      v22 = v23;
    }

    if (v11 >= *(v22 + 2))
    {
      goto LABEL_21;
    }

    *&v22[2 * v11 + 8] = v18;

    *result = v22;
    ++v11;
    v8 = v22;
  }

  if (a3 != v11)
  {
    goto LABEL_23;
  }

  if (v13 != i)
  {
    goto LABEL_24;
  }
}

uint64_t type metadata accessor for SupportVectorCoefficients(uint64_t a1)
{
  result = qword_27F881908;
  if (!qword_27F881908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_257722B54(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8818C0, &qword_257777348);
    OUTLINED_FUNCTION_7_49();
    sub_257722C24(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_257722C24(uint64_t a1)
{
  result = OUTLINED_FUNCTION_21_23(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_257722D68(uint64_t a1)
{
  result = type metadata accessor for Proto_Coefficients(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t (*sub_257722DD4(uint64_t (*result)(_BYTE *), uint64_t a2))(_BYTE *)
{
  v35 = a2;
  v4 = result;
  v5 = 0;
  v6 = *(*v2 + 16);
  v7 = 72;
LABEL_2:
  v8 = v7 + 48 * v5;
  for (i = v5; ; ++i)
  {
    if (i >= v6)
    {
      return i;
    }

    if (v5 < 0)
    {
      break;
    }

    v10 = *v28;
    if (i >= *(*v28 + 16))
    {
      goto LABEL_17;
    }

    v11 = *(v10 + v8 - 32);
    v12 = *(v10 + v8 - 24);
    v13 = *(v10 + v8 - 8);
    v14 = *(v10 + v8);
    v15 = *(v10 + v8 - 16);
    v29[0] = *(v10 + v8 - 40);
    v30 = v11;
    v31 = v12;
    v32 = v15;
    v33 = v13;
    v34 = v14;
    sub_257466F40(v11, v12, v15);

    v16 = v4(v29);
    sub_257467018(v30, v31, v32);

    if (v3)
    {
      return i;
    }

    if (v16)
    {
      v17 = v10 + 48 * v6;
      while (1)
      {
        v18 = v6 - 1;
        if (i >= v6 - 1)
        {
          return i;
        }

        if (v6 > *(v10 + 16))
        {
          goto LABEL_18;
        }

        v19 = *(v17 - 8);
        v20 = *v17;
        v21 = *(v17 + 16);
        v22 = *(v17 + 24);
        v23 = *(v17 + 8);
        v29[0] = *(v17 - 16);
        v30 = v19;
        v31 = v20;
        v32 = v23;
        v33 = v21;
        v34 = v22;
        sub_257466F40(v19, v20, v23);

        v24 = v4(v29);
        sub_257467018(v30, v31, v32);

        v17 -= 48;
        --v6;
        if ((v24 & 1) == 0)
        {
          result = sub_2577200E0(i, v18, v25, v26);
          v5 = i + 1;
          v6 = v18;
          v7 = v27;
          goto LABEL_2;
        }
      }
    }

    v8 += 48;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_257722F9C(uint64_t (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v78 = a1;
  v79 = a2;
  v5 = type metadata accessor for DenseSupportVector(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v72[0] = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v72 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v77 = v72 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v76 = v72 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v72 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v72 - v19;
  MEMORY[0x28223BE20](v18);
  v73 = v72 - v21;
  DenseSupportVectorCollection.vectors.getter();

  v74 = v2;
  v22 = *(DenseSupportVectorCollection.vectors.getter() + 16);

  v23 = 0;
  if (v22)
  {
    v80 = v6;
    v72[1] = v17;
    v72[2] = v20;
    while (1)
    {
      v84 = v22;
      v24 = *v74;
      v25 = *(*v74 + 16);
      v81 = v23;
      v82 = v24;
      if (v25)
      {
        v83 = v4;
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v25, 0);
        v26 = v86;
        v27 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v28 = v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v29 = *(v27 + 72);
        do
        {
          sub_257724438();
          v86 = v26;
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_2574836CC(v30 > 1, v31 + 1, 1);
            v26 = v86;
          }

          *(v26 + 16) = v31 + 1;
          sub_257724538();
          v28 += v29;
          --v25;
        }

        while (v25);
        v4 = v83;
        v23 = v81;
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
      }

      v22 = v84;
      if (v23 < 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if (v23 >= *(v26 + 16))
      {
        goto LABEL_55;
      }

      v32 = v73;
      sub_257724438();

      v33 = v78(v32);
      if (v4)
      {
        v56 = v32;
LABEL_51:
        sub_25772448C(v56, type metadata accessor for DenseSupportVector);
        return;
      }

      v34 = v33;
      sub_25772448C(v32, type metadata accessor for DenseSupportVector);
      v35 = *(v82 + 16);
      v85 = v35;
      if (v34)
      {
        break;
      }

      if (v35)
      {
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v35, 0);
        v65 = v86;
        v66 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v67 = v82 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
        v68 = *(v66 + 72);
        do
        {
          sub_257724438();
          v86 = v65;
          v70 = *(v65 + 16);
          v69 = *(v65 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_2574836CC(v69 > 1, v70 + 1, 1);
            v65 = v86;
          }

          *(v65 + 16) = v70 + 1;
          sub_257724538();
          v67 += v68;
          --v85;
        }

        while (v85);

        v23 = v81;
        v22 = v84;
      }

      if (__OFADD__(v23++, 1))
      {
        goto LABEL_56;
      }

LABEL_47:
      if (v23 >= v22)
      {
        return;
      }
    }

    while (1)
    {
      v36 = v85;
      v83 = 0;
      if (v85)
      {
        v84 = v22;
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v85, 0);
        v37 = v86;
        v38 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v39 = v82 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v40 = *(v38 + 72);
        v41 = v36;
        do
        {
          sub_257724438();
          v86 = v37;
          v43 = *(v37 + 16);
          v42 = *(v37 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_2574836CC(v42 > 1, v43 + 1, 1);
            v37 = v86;
          }

          *(v37 + 16) = v43 + 1;
          sub_257724538();
          v39 += v40;
          --v41;
        }

        while (v41);

        v23 = v81;
        v22 = v84;
      }

      v44 = v82;
      if (v23 >= --v22)
      {
        break;
      }

      v45 = *(v82 + 16);
      if (v45)
      {
        v84 = v22;
        v86 = MEMORY[0x277D84F90];
        sub_2574836CC(0, v45, 0);
        v46 = v86;
        v47 = *(type metadata accessor for Proto_DenseVector(0) - 8);
        v48 = v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v49 = *(v47 + 72);
        do
        {
          sub_257724438();
          v86 = v46;
          v51 = *(v46 + 16);
          v50 = *(v46 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_2574836CC(v50 > 1, v51 + 1, 1);
            v46 = v86;
          }

          *(v46 + 16) = v51 + 1;
          sub_257724538();
          v48 += v49;
          --v45;
        }

        while (v45);
        v23 = v81;
        v52 = v77;
        v22 = v84;
      }

      else
      {
        v46 = MEMORY[0x277D84F90];
        v52 = v77;
      }

      v53 = v83;
      if (v22 >= *(v46 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      sub_257724438();

      v54 = v53;
      v55 = v78(v52);
      v56 = v52;
      if (v54)
      {
        goto LABEL_51;
      }

      sub_25772448C(v52, type metadata accessor for DenseSupportVector);
      if ((v55 & 1) == 0)
      {
        v83 = 0;
        v57 = v74;
        sub_25771FF4C();
        v58 = *v57;
        v59 = *(*v57 + 16);
        if (v59)
        {
          v84 = v22;
          v86 = MEMORY[0x277D84F90];
          sub_2574836CC(0, v59, 0);
          v60 = v86;
          v61 = *(type metadata accessor for Proto_DenseVector(0) - 8);
          v62 = v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
          v85 = *(v61 + 72);
          do
          {
            sub_257724438();
            v86 = v60;
            v64 = *(v60 + 16);
            v63 = *(v60 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_2574836CC(v63 > 1, v64 + 1, 1);
              v60 = v86;
            }

            *(v60 + 16) = v64 + 1;
            sub_257724538();
            v62 += v85;
            --v59;
          }

          while (v59);

          v23 = v81;
          v22 = v84;
        }

        ++v23;
        v4 = v83;
        goto LABEL_47;
      }
    }
  }
}

void sub_257723958(uint64_t (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v78 = a1;
  v79 = a2;
  v5 = type metadata accessor for SparseSupportVector(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v72[0] = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v75 = v72 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v77 = v72 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v76 = v72 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v72 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v72 - v19;
  MEMORY[0x28223BE20](v18);
  v73 = v72 - v21;
  SparseSupportVectorCollection.vectors.getter();

  v74 = v2;
  v22 = *(SparseSupportVectorCollection.vectors.getter() + 16);

  v23 = 0;
  if (v22)
  {
    v80 = v6;
    v72[1] = v17;
    v72[2] = v20;
    while (1)
    {
      v84 = v22;
      v24 = *v74;
      v25 = *(*v74 + 16);
      v81 = v23;
      v82 = v24;
      if (v25)
      {
        v83 = v4;
        v86 = MEMORY[0x277D84F90];
        sub_257483674(0, v25, 0);
        v26 = v86;
        v27 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v28 = v24 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
        v29 = *(v27 + 72);
        do
        {
          sub_257724438();
          v86 = v26;
          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_257483674(v30 > 1, v31 + 1, 1);
            v26 = v86;
          }

          *(v26 + 16) = v31 + 1;
          sub_257724538();
          v28 += v29;
          --v25;
        }

        while (v25);
        v4 = v83;
        v23 = v81;
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
      }

      v22 = v84;
      if (v23 < 0)
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      if (v23 >= *(v26 + 16))
      {
        goto LABEL_55;
      }

      v32 = v73;
      sub_257724438();

      v33 = v78(v32);
      if (v4)
      {
        v56 = v32;
LABEL_51:
        sub_25772448C(v56, type metadata accessor for SparseSupportVector);
        return;
      }

      v34 = v33;
      sub_25772448C(v32, type metadata accessor for SparseSupportVector);
      v35 = *(v82 + 16);
      v85 = v35;
      if (v34)
      {
        break;
      }

      if (v35)
      {
        v86 = MEMORY[0x277D84F90];
        sub_257483674(0, v35, 0);
        v65 = v86;
        v66 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v67 = v82 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
        v68 = *(v66 + 72);
        do
        {
          sub_257724438();
          v86 = v65;
          v70 = *(v65 + 16);
          v69 = *(v65 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_257483674(v69 > 1, v70 + 1, 1);
            v65 = v86;
          }

          *(v65 + 16) = v70 + 1;
          sub_257724538();
          v67 += v68;
          --v85;
        }

        while (v85);

        v23 = v81;
        v22 = v84;
      }

      if (__OFADD__(v23++, 1))
      {
        goto LABEL_56;
      }

LABEL_47:
      if (v23 >= v22)
      {
        return;
      }
    }

    while (1)
    {
      v36 = v85;
      v83 = 0;
      if (v85)
      {
        v84 = v22;
        v86 = MEMORY[0x277D84F90];
        sub_257483674(0, v85, 0);
        v37 = v86;
        v38 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v39 = v82 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
        v40 = *(v38 + 72);
        v41 = v36;
        do
        {
          sub_257724438();
          v86 = v37;
          v43 = *(v37 + 16);
          v42 = *(v37 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_257483674(v42 > 1, v43 + 1, 1);
            v37 = v86;
          }

          *(v37 + 16) = v43 + 1;
          sub_257724538();
          v39 += v40;
          --v41;
        }

        while (v41);

        v23 = v81;
        v22 = v84;
      }

      v44 = v82;
      if (v23 >= --v22)
      {
        break;
      }

      v45 = *(v82 + 16);
      if (v45)
      {
        v84 = v22;
        v86 = MEMORY[0x277D84F90];
        sub_257483674(0, v45, 0);
        v46 = v86;
        v47 = *(type metadata accessor for Proto_SparseVector(0) - 8);
        v48 = v44 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
        v49 = *(v47 + 72);
        do
        {
          sub_257724438();
          v86 = v46;
          v51 = *(v46 + 16);
          v50 = *(v46 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_257483674(v50 > 1, v51 + 1, 1);
            v46 = v86;
          }

          *(v46 + 16) = v51 + 1;
          sub_257724538();
          v48 += v49;
          --v45;
        }

        while (v45);
        v23 = v81;
        v52 = v77;
        v22 = v84;
      }

      else
      {
        v46 = MEMORY[0x277D84F90];
        v52 = v77;
      }

      v53 = v83;
      if (v22 >= *(v46 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      sub_257724438();

      v54 = v53;
      v55 = v78(v52);
      v56 = v52;
      if (v54)
      {
        goto LABEL_51;
      }

      sub_25772448C(v52, type metadata accessor for SparseSupportVector);
      if ((v55 & 1) == 0)
      {
        v83 = 0;
        v57 = v74;
        sub_25771FF4C();
        v58 = *v57;
        v59 = *(*v57 + 16);
        if (v59)
        {
          v84 = v22;
          v86 = MEMORY[0x277D84F90];
          sub_257483674(0, v59, 0);
          v60 = v86;
          v61 = *(type metadata accessor for Proto_SparseVector(0) - 8);
          v62 = v58 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
          v85 = *(v61 + 72);
          do
          {
            sub_257724438();
            v86 = v60;
            v64 = *(v60 + 16);
            v63 = *(v60 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_257483674(v63 > 1, v64 + 1, 1);
              v60 = v86;
            }

            *(v60 + 16) = v64 + 1;
            sub_257724538();
            v62 += v85;
            --v59;
          }

          while (v59);

          v23 = v81;
          v22 = v84;
        }

        ++v23;
        v4 = v83;
        goto LABEL_47;
      }
    }
  }
}

unint64_t sub_257724314(unint64_t result, uint64_t a2, uint64_t (*a3)(unint64_t, __n128))
{
  v6 = result;
  v7 = 0;
  v8 = *(*v3 + 16);
LABEL_2:
  for (i = v7; ; ++i)
  {
    if (i >= v8)
    {
      return i;
    }

    if (v7 < 0)
    {
      break;
    }

    v10 = *v13;
    if (i >= *(*v13 + 16))
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_19_35();
    result = v6();
    if (v4)
    {
      return i;
    }

    if (result)
    {
      v12 = a3;
      while (1)
      {
        v11 = v8 - 1;
        if (i >= v8 - 1)
        {
          return i;
        }

        if (v8 > *(v10 + 16))
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_19_35();
        result = v6();
        --v8;
        if ((result & 1) == 0)
        {
          result = sub_25771FDF4(i, v11, v12);
          v7 = i + 1;
          v8 = v11;
          a3 = v12;
          goto LABEL_2;
        }
      }
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_257724438()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t sub_25772448C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2577244E4()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

uint64_t sub_257724538()
{
  v1 = OUTLINED_FUNCTION_0_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_205();
  v4(v3);
  return v0;
}

void OUTLINED_FUNCTION_11_48()
{

  sub_2577215B8(v4, v5, v3, v0, v1, v2);
}

void *OUTLINED_FUNCTION_21_33(void *result)
{
  *v3 = result;
  result[1] = v1;
  result[2] = v2;
  *result = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_22()
{
}

double NeuralNetwork.Layer.FlattenParameters.propertyDescriptions.getter()
{
  v1 = 0xED00007473726946;
  if (*(v0 + 8) == 1 && *v0)
  {
    v1 = 0xEC0000007473614CLL;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_2577442B0;
  *(v2 + 32) = 0xD000000000000015;
  *(v2 + 40) = 0x80000002577814F0;
  *(v2 + 48) = 0x206C656E6E616843;
  *(v2 + 56) = v1;
  return result;
}

uint64_t static NeuralNetwork.Layer.flatten(name:inputName:outputName:targetChannelLayout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a1;
  v29 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v27 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v21 = swift_allocObject();
  v26 = xmmword_2577442B0;
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  *v20 = 0;
  *(v20 + 8) = 1;
  type metadata accessor for Proto_FlattenLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v20 = v27;
  *(v20 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a8 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v22);
  sub_2574897E0(v16);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  sub_25752846C();
  return sub_257634BB4(v20);
}

uint64_t static NeuralNetwork.Layer.Kind.flatten(targetChannelLayout:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_87(a1);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v2;
  *(v1 + 8) = v3;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.FlattenParameters.init(targetChannelLayout:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_1_87(a1);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

unsigned __int8 *NeuralNetwork.Layer.FlattenParameters.targetChannelLayout.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.FlattenParameters.targetChannelLayout.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 8) == 1 && *v1 != 0;
  *(a1 + 8) = v2;
  return sub_2576BFAD8;
}

BOOL static NeuralNetwork.Layer.FlattenParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Proto_FlattenLayerParams(0);
  sub_2577431B4();
  sub_257725074(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.Layer.FlattenParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters(0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_257724F94(v1, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  *(v13 + 32) = 0xD000000000000013;
  *(v13 + 40) = 0x8000000257781910;
  *(v13 + 72) = &type metadata for NeuralNetwork.Layer.FlattenParameters.ChannelLayout;
  v14 = *(v1 + 8) == 1 && *v1 != 0;
  *(v13 + 48) = v14;
  v15 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.FlattenParameters(uint64_t a1)
{
  result = qword_27F881930;
  if (!qword_27F881930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257724F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.FlattenParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NeuralNetwork.Layer.FlattenParameters.ChannelLayout.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257725074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2577250C4@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.FlattenParameters.ChannelLayout.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_2577250F0()
{
  result = qword_27F881918;
  if (!qword_27F881918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881920, &qword_2577776D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881918);
  }

  return result;
}

unint64_t sub_257725168()
{
  result = qword_27F881928;
  if (!qword_27F881928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881928);
  }

  return result;
}

uint64_t sub_2577251E4(uint64_t a1)
{
  result = type metadata accessor for Proto_FlattenLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s17FlattenParametersV13ChannelLayoutOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_1_87@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;

  return type metadata accessor for Proto_FlattenLayerParams(0);
}

uint64_t sub_257725354()
{
  v2 = v0;
  v3 = type metadata accessor for Proto_StringVector(0);
  v4 = OUTLINED_FUNCTION_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_17_3();
  v6 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v28 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FD8, &unk_257744910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257744E70;
  *(inited + 32) = 0x6E6F697369766552;
  *(inited + 40) = 0xE800000000000000;
  v29 = *v0;
  *(inited + 48) = sub_257743674();
  *(inited + 56) = v16;
  *(inited + 64) = 0;
  *(inited + 72) = 0x65676175676E614CLL;
  *(inited + 80) = 0xE800000000000000;
  v17 = *(v0 + 1);
  v18 = *(v0 + 2);
  v29 = 34;
  v30 = 0xE100000000000000;
  MEMORY[0x259C64E90](v17, v18);
  MEMORY[0x259C64E90](34, 0xE100000000000000);
  v19 = v30;
  *(inited + 88) = v29;
  *(inited + 96) = v19;
  *(inited + 104) = 0;
  strcpy((inited + 112), "Class Labels");
  *(inited + 125) = 0;
  *(inited + 126) = -5120;
  v20 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_257725954(v0 + *(v20 + 28), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v14, v10, v22);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v10, v1, v23);
    v21 = *v1;

    sub_25767EE20(v1);
  }

  v28[1] = v21;
  v24 = sub_257689088();

  *(inited + 128) = v24;
  *(inited + 136) = 0;
  *(inited + 144) = 1;
  *(inited + 152) = 0xD000000000000014;
  *(inited + 160) = 0x8000000257780DA0;
  v25 = *(v2 + 4);
  v29 = *(v2 + 3);
  v30 = v25;
  sub_257486740(v29, v25);
  *(inited + 168) = sub_257743674();
  *(inited + 176) = v26;
  *(inited + 184) = 0;
  return sub_2576A6964(inited);
}

uint64_t sub_25772564C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return GazetteerConfiguration.language.setter(v1, v2);
}

uint64_t GazetteerConfiguration.language.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t (*GazetteerConfiguration.language.modify(void *a1))(uint64_t *a1, char a2)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  a1[2] = v1;
  a1[3] = v3;
  *a1 = v4;
  a1[1] = v3;

  return sub_25764FF90;
}

uint64_t GazetteerConfiguration.modelParameterData.getter()
{
  v0 = OUTLINED_FUNCTION_205();
  sub_257486740(v0, v1);
  return OUTLINED_FUNCTION_205();
}

uint64_t sub_257725740(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_257486740(*a1, v2);
  return GazetteerConfiguration.modelParameterData.setter(v1, v2);
}

uint64_t GazetteerConfiguration.modelParameterData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_257486798(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t (*GazetteerConfiguration.modelParameterData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;
  a1[1] = v4;
  sub_257486740(v3, v4);
  return sub_257688698;
}

uint64_t GazetteerConfiguration.classLabels.getter@<X0>(void *a1@<X8>)
{
  v5 = type metadata accessor for Proto_StringVector(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_17_3();
  v8 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_64();
  v16 = type metadata accessor for Proto_CoreMLModels_Gazetteer(v15);
  sub_257725954(v1 + *(v16 + 28), v3);
  result = __swift_getEnumTagSinglePayload(v3, 1, v8);
  if (result == 1)
  {
    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v3, v12, v19);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v12, v2, v20);
    v18 = *v2;

    result = sub_25767EE20(v2);
  }

  *a1 = v18;
  return result;
}

uint64_t sub_257725954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577259C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_205();
  v5(v4);
  return a2;
}

uint64_t sub_257725A20@<X0>(void *a1@<X8>)
{
  result = GazetteerConfiguration.classLabels.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_257725A5C(uint64_t *a1)
{
  v2 = *a1;

  return GazetteerConfiguration.classLabels.setter(&v2);
}

uint64_t GazetteerConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - v5);
  v7 = *a1;
  type metadata accessor for Proto_StringVector(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v6 = v7;
  v8 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v9 = OUTLINED_FUNCTION_12_50(v8);
  return sub_257725B40(v6, v1 + *(v9 + 28));
}

uint64_t sub_257725B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*GazetteerConfiguration.classLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  OUTLINED_FUNCTION_11_49(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v11, v7, v14);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_257725D18;
}

uint64_t GazetteerConfiguration.stringClassLabels.getter()
{
  v1 = type metadata accessor for Proto_StringVector(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v6 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  v15 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  sub_257725954(v0 + *(v15 + 28), v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v6) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_1_88();
  sub_2577259C4(v14, v10, v17);
  OUTLINED_FUNCTION_0_108();
  sub_2577259C4(v10, v5, v18);
  v16 = *v5;

  sub_25767EE20(v5);
  return v16;
}

uint64_t GazetteerConfiguration.stringClassLabels.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for Proto_StringVector(v6);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = a1;
  v7 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v8 = OUTLINED_FUNCTION_12_50(v7);
  return sub_257725B40(v2, v1 + *(v8 + 28));
}

uint64_t (*GazetteerConfiguration.stringClassLabels.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x48uLL);
  v2 = OUTLINED_FUNCTION_18_20(v1);
  v0[2] = v2;
  OUTLINED_FUNCTION_13(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  v0[3] = v4;
  v5 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  v0[4] = v5;
  OUTLINED_FUNCTION_4();
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87ACD8, &unk_25774A7C0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v0[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v0[7] = v11;
  v12 = type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
  OUTLINED_FUNCTION_11_49(v12);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    v13 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_88();
    sub_2577259C4(v11, v7, v14);
    OUTLINED_FUNCTION_0_108();
    sub_2577259C4(v7, v4, v15);
    v13 = *v4;

    sub_25767EE20(v4);
  }

  *v0 = v13;
  return sub_257726738;
}

void sub_2577260A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 40);
  if (a2)
  {

    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_50();
  }

  else
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_7_50();
  }

  free(v5);
  free(v4);
  free(v6);
  free(v3);

  free(v2);
}

uint64_t GazetteerConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = xmmword_257745740;
  v2 = *(type metadata accessor for Proto_CoreMLModels_Gazetteer(0) + 28);
  v3 = type metadata accessor for Proto_CoreMLModels_Gazetteer.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t GazetteerConfiguration.customMirror.getter()
{
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for GazetteerConfiguration(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_2577264BC(v0, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_257744E70;
  *(v13 + 32) = 0x6E6F697369766572;
  *(v13 + 40) = 0xE800000000000000;
  v14 = MEMORY[0x277D83B88];
  *(v13 + 48) = *v0;
  *(v13 + 72) = v14;
  *(v13 + 80) = 0x65676175676E616CLL;
  v16 = v0[1];
  v15 = v0[2];
  v17 = MEMORY[0x277D837D0];
  *(v13 + 88) = 0xE800000000000000;
  *(v13 + 96) = v16;
  *(v13 + 104) = v15;
  *(v13 + 120) = v17;
  *(v13 + 128) = 0xD000000000000012;
  v18 = MEMORY[0x277CC9318];
  v19 = v0[3];
  v20 = v0[4];
  *(v13 + 136) = 0x800000025777AB50;
  *(v13 + 144) = v19;
  *(v13 + 152) = v20;
  *(v13 + 168) = v18;
  *(v13 + 176) = 0x62614C7373616C63;
  *(v13 + 184) = 0xEB00000000736C65;
  *(v13 + 216) = &type metadata for GazetteerConfiguration.Labels;

  sub_257486740(v19, v20);
  GazetteerConfiguration.classLabels.getter((v13 + 192));
  v21 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v21);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for GazetteerConfiguration(uint64_t a1)
{
  result = qword_281537C18;
  if (!qword_281537C18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2577264BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GazetteerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GazetteerConfiguration.Labels.hash(into:)()
{
  MEMORY[0x259C651F0](0);

  sub_2576679DC();
}

uint64_t GazetteerConfiguration.Labels.hashValue.getter()
{
  sub_257743A14();
  MEMORY[0x259C651F0](0);
  sub_2576679DC();
  return sub_257743A64();
}

unint64_t sub_2577265E4()
{
  result = qword_27F87ACE8;
  if (!qword_27F87ACE8)
  {
    type metadata accessor for Proto_CoreMLModels_Gazetteer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87ACE8);
  }

  return result;
}

unint64_t sub_257726640()
{
  result = qword_27F881940;
  if (!qword_27F881940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881940);
  }

  return result;
}

uint64_t sub_2577266BC(uint64_t a1)
{
  result = type metadata accessor for Proto_CoreMLModels_Gazetteer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_50()
{
  *v0 = v2;
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_257725B40(v0, v4 + v3);
}

uint64_t OUTLINED_FUNCTION_11_49(uint64_t a1)
{
  v5 = *(a1 + 28);
  *(v2 + 64) = v5;

  return sub_257725954(v1 + v5, v3);
}

uint64_t OUTLINED_FUNCTION_12_50(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);

  return type metadata accessor for Proto_CoreMLModels_Gazetteer(0);
}

uint64_t NeuralNetwork.Layer.EmbeddingParameters.propertyDescriptions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = OUTLINED_FUNCTION_85_4(v1);
  *(v2 + 16) = xmmword_257743FF0;
  *(v2 + 32) = 0x6953207475706E49;
  *(v2 + 40) = 0xEA0000000000657ALL;
  v3 = *(v0 + *(type metadata accessor for Proto_EmbeddingLayerParams(0) + 20));
  OUTLINED_FUNCTION_296(v3 + 16, v8);
  v7[0] = *(v3 + 16);
  OUTLINED_FUNCTION_263();
  *(v2 + 48) = sub_257743974();
  *(v2 + 56) = v4;
  *(v2 + 64) = 0x432074757074754FLL;
  *(v2 + 72) = 0xEF736C656E6E6168;
  OUTLINED_FUNCTION_296(v3 + 24, v7);
  OUTLINED_FUNCTION_263();
  *(v2 + 80) = sub_257743974();
  *(v2 + 88) = v5;
  return v2;
}

uint64_t NeuralNetwork.Layer.EmbeddingNDParameters.propertyDescriptions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = OUTLINED_FUNCTION_85_4(v1);
  *(v2 + 16) = xmmword_257743FF0;
  *(v2 + 32) = 0x616C756261636F56;
  *(v2 + 40) = 0xEF657A6953207972;
  v3 = *(v0 + *(type metadata accessor for Proto_EmbeddingNDLayerParams(0) + 20));
  OUTLINED_FUNCTION_296(v3 + 16, v8);
  v7[0] = *(v3 + 16);
  OUTLINED_FUNCTION_263();
  *(v2 + 48) = sub_257743974();
  *(v2 + 56) = v4;
  strcpy((v2 + 64), "Embedding Size");
  *(v2 + 79) = -18;
  OUTLINED_FUNCTION_296(v3 + 24, v7);
  OUTLINED_FUNCTION_263();
  *(v2 + 80) = sub_257743974();
  *(v2 + 88) = v5;
  return v2;
}

uint64_t NeuralNetwork.Layer.BiasParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_2577442B0;
  strcpy((v1 + 32), "Target Shape");
  *(v1 + 45) = 0;
  *(v1 + 46) = -5120;
  v3 = *v0;
  v4 = *(*v0 + 16);
  if (v4)
  {
    v16 = v1;
    v17 = MEMORY[0x277D84F90];
    sub_257483754(0, v4, 0);
    v5 = v3 + 32;
    do
    {
      v5 += 8;
      v6 = sub_257743974();
      v8 = v7;
      v10 = *(v17 + 16);
      v9 = *(v17 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257483754((v9 > 1), v10 + 1, 1);
      }

      *(v17 + 16) = v10 + 1;
      v11 = v17 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      --v4;
    }

    while (v4);
    v2 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = sub_257743604();
  v14 = v13;

  *(v2 + 48) = v12;
  *(v2 + 56) = v14;
  return v2;
}

uint64_t NeuralNetwork.Layer.OneHotParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257744E70;
  *(v0 + 32) = 0x5320726F74636556;
  *(v0 + 40) = 0xEB00000000657A69;
  *(v0 + 48) = sub_257743974();
  *(v0 + 56) = v1;
  *(v0 + 64) = 1936291905;
  *(v0 + 72) = 0xE400000000000000;
  *(v0 + 80) = sub_257743974();
  *(v0 + 88) = v2;
  *(v0 + 96) = 0x65756C6156206E4FLL;
  *(v0 + 104) = 0xE800000000000000;
  *(v0 + 112) = sub_257743794();
  *(v0 + 120) = v3;
  *(v0 + 128) = 0x756C61562066664FLL;
  *(v0 + 136) = 0xE900000000000065;
  *(v0 + 144) = sub_257743794();
  *(v0 + 152) = v4;
  return v0;
}

__n128 *NeuralNetwork.Layer.TopKParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_5_20(v2, xmmword_2577442C0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  v2[4].n128_u64[0] = 107;
  v2[4].n128_u64[1] = 0xE100000000000000;
  v2[5].n128_u64[0] = sub_257743974();
  v2[5].n128_u64[1] = v4;
  v2[6].n128_u64[0] = 0x6B206D6F74746F42;
  v2[6].n128_u64[1] = 0xE800000000000000;
  v5 = 1702195828;
  if (!*(v0 + 16))
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (*(v0 + 16))
  {
    v6 = v1;
  }

  v2[7].n128_u64[0] = v5;
  v2[7].n128_u64[1] = v6;
  return v2;
}

__n128 *NeuralNetwork.Layer.ArgSortParameters.propertyDescriptions.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v3 = OUTLINED_FUNCTION_85_4(v2);
  OUTLINED_FUNCTION_5_20(v3, xmmword_257743FF0);
  v3[3].n128_u64[0] = sub_257743974();
  v3[3].n128_u64[1] = v4;
  v3[4].n128_u64[0] = 0x69646E6563736544;
  v3[4].n128_u64[1] = 0xEA0000000000676ELL;
  v5 = 1702195828;
  if (!*(v0 + 8))
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (*(v0 + 8))
  {
    v6 = v1;
  }

  v3[5].n128_u64[0] = v5;
  v3[5].n128_u64[1] = v6;
  return v3;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  strcpy((v1 + 32), "IoU Threshold");
  *(v1 + 46) = -4864;
  *(v1 + 48) = sub_257743794();
  *(v1 + 56) = v2;
  *(v1 + 64) = 0x68542065726F6353;
  *(v1 + 72) = 0xEF646C6F68736572;
  *(v1 + 80) = sub_257743794();
  *(v1 + 88) = v3;
  *(v1 + 96) = 0x786F42202E78614DLL;
  *(v1 + 104) = 0xEA00000000007365;
  *(v1 + 112) = sub_257743974();
  *(v1 + 120) = v4;
  *(v1 + 128) = 0xD000000000000015;
  *(v1 + 136) = 0x80000002577820B0;
  v5 = 1702195828;
  if (!*(v0 + 16))
  {
    v5 = 0x65736C6166;
  }

  v6 = 0xE500000000000000;
  if (*(v0 + 16))
  {
    v6 = 0xE400000000000000;
  }

  *(v1 + 144) = v5;
  *(v1 + 152) = v6;
  return v1;
}

uint64_t NeuralNetwork.Layer.CustomParameters.propertyDescriptions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = OUTLINED_FUNCTION_85_4(v1);
  *(v2 + 16) = xmmword_257743FF0;
  *(v2 + 32) = 0x614E207373616C43;
  *(v2 + 40) = 0xEA0000000000656DLL;
  v3 = v0[1];
  *(v2 + 48) = *v0;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0x7470697263736544;
  *(v2 + 72) = 0xEB000000006E6F69;
  v4 = v0[4];
  v5 = v0[5];
  *(v2 + 80) = v4;
  *(v2 + 88) = v5;

  return v2;
}

void sub_257727114()
{
  OUTLINED_FUNCTION_31();
  v45 = v2;
  v41 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v40 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = (&v40 - v16);
  v44 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v42 = v19 - v20;
  MEMORY[0x28223BE20](v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_12_51();
  v25 = *(v0 + *(v7(v24) + 20));
  OUTLINED_FUNCTION_296(v25 + *v5, &v47);
  sub_2574DA900();
  v26 = type metadata accessor for Proto_WeightParams(0);
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v1, 1, v26);
  v27 = sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
  if (v5 == 1)
  {
    v28 = MEMORY[0x277D84F90];
  }

  else
  {
    v41(v27);
    *v17 = 0x73746867696557;
    v17[1] = 0xE700000000000000;
    OUTLINED_FUNCTION_4_26();
    sub_2577290B0();
    sub_257469D34();
    v28 = v29;
    v30 = *(v29 + 16);
    if (v30 >= *(v29 + 24) >> 1)
    {
      sub_257469D34();
      v28 = v38;
    }

    OUTLINED_FUNCTION_17_32();
    v27 = sub_25749E9A8(v17, v31 + v32 * v30);
  }

  v45(v27);
  if (__swift_getEnumTagSinglePayload(v11, 1, v44) == 1)
  {
    sub_2574695E4(v11, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v33 = v42;
    sub_2577290B0();
    OUTLINED_FUNCTION_296(v25 + 32, &v46);
    if (*(v25 + 32) == 1)
    {
      v34 = v40;
      *v40 = 1935763778;
      *(v34 + 8) = 0xE400000000000000;
      OUTLINED_FUNCTION_4_26();
      sub_25772910C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469D34();
        v28 = v39;
      }

      v35 = *(v28 + 16);
      if (v35 >= *(v28 + 24) >> 1)
      {
        sub_257469D34();
      }

      sub_25763A188(v33);
      OUTLINED_FUNCTION_17_32();
      sub_25749E9A8(v34, v36 + v37 * v35);
    }

    else
    {
      sub_25763A188(v33);
    }
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.BiasParameters.namedWeights.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v20;
  a20 = v21;
  v22 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v28 = OUTLINED_FUNCTION_13(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  type metadata accessor for Proto_BiasLayerParams(0);
  sub_2574DA900();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v22);
  sub_2574695E4(v34, &qword_27F87A1A0, &qword_257745750);
  v36 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
    v38 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_2577442B0;
    v40 = (v39 + v38);
    *v40 = 1935763778;
    v40[1] = 0xE400000000000000;
    sub_2574DA900();
    OUTLINED_FUNCTION_35_0(v31);
    if (v41)
    {
      *v26 = v36;
      *(v26 + 8) = xmmword_257745740;
      *(v26 + 24) = xmmword_257745740;
      *(v26 + 40) = xmmword_257745740;
      *(v26 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
      OUTLINED_FUNCTION_35_0(v31);
      if (!v41)
      {
        sub_2574695E4(v31, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_2577290B0();
    }

    sub_2576FF45C(v26, (v40 + *(v37 + 48)));
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingParameters.weights.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingParameters.weights.getter(v6);
  return OUTLINED_FUNCTION_15_10();
}

void NeuralNetwork.Layer.EmbeddingParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_12_51();
  v10 = type metadata accessor for Proto_WeightParams(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_31();
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v3, 1, v17) == 1)
  {
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
    v19 = *(type metadata accessor for Proto_EmbeddingLayerParams(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v20 = *(v4 + v19);
    }

    else
    {
      type metadata accessor for Proto_EmbeddingLayerParams._StorageClass(0);
      swift_allocObject();

      sub_2575A3534(v21);
      v20 = v22;
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);

      *(v4 + v19) = v20;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v10);
    v26 = OBJC_IVAR____TtCV20MLModelSpecification26Proto_EmbeddingLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    OUTLINED_FUNCTION_20_29();
    sub_25763A1E4(v1, v20 + v26);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2577290B0();
    OUTLINED_FUNCTION_1_5();
    sub_25772910C();
    sub_257531764(v14);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
    sub_25763A188(v2);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingParameters.bias.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingParameters.bias.getter(v6);
  return OUTLINED_FUNCTION_15_10();
}

void sub_257727BD8(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_2574DA900();
    a3(v4);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

void sub_257727CE0()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = *(v0 + *(v4(0) + 20));
  OUTLINED_FUNCTION_296(v15 + *v2, &v27);
  sub_2574DA900();
  OUTLINED_FUNCTION_35_0(v10);
  if (v16)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = xmmword_257745740;
    *(v14 + 24) = xmmword_257745740;
    *(v14 + 40) = xmmword_257745740;
    *(v14 + 56) = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_35_0(v10);
    if (!v16)
    {
      sub_2574695E4(v10, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    sub_2577290B0();
  }

  sub_2576FF45C(v14, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_296(v15 + 24, &v26);
  v22 = *(v15 + 24);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 32) = v22;
    OUTLINED_FUNCTION_296(v15 + 16, &v25);
    v23 = *(v15 + 16);
    if ((v23 & 0x8000000000000000) == 0)
    {
      *(v21 + 40) = v23;

      *v6 = v21;
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

void sub_257727F20()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v37 = v5;
  v6 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v36 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v16 = OUTLINED_FUNCTION_13(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  v23 = *(v0 + *(v4(0) + 20));
  OUTLINED_FUNCTION_296(v23 + *v2, &v39);
  sub_2574DA900();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v6);
  sub_2574695E4(v22, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v11);
LABEL_9:
    OUTLINED_FUNCTION_35();
    return;
  }

  v28 = v37;
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v19, 1, v6) == 1)
  {
    *v10 = MEMORY[0x277D84F90];
    *(v10 + 8) = xmmword_257745740;
    *(v10 + 24) = xmmword_257745740;
    *(v10 + 40) = xmmword_257745740;
    *(v10 + 56) = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    if (__swift_getEnumTagSinglePayload(v19, 1, v6) != 1)
    {
      sub_2574695E4(v19, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    sub_2577290B0();
  }

  v33 = v36;
  sub_2576FF45C(v10, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_296(v23 + 24, &v38);
  v35 = *(v23 + 24);
  if ((v35 & 0x8000000000000000) == 0)
  {
    *(v34 + 32) = v35;

    *v33 = v34;
    OUTLINED_FUNCTION_4_26();
    sub_25772910C();
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v11);
    sub_25763A188(v33);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_25772822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_4_26();
  OUTLINED_FUNCTION_263();
  sub_25772910C();
  return a5(v10);
}

void sub_2577282F8()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v21 = v3;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v15 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_1_5();
  sub_25772910C();
  v17 = *(v7(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_25763A188(v10);
    v18 = *(v0 + v17);
  }

  else
  {
    v5(0);
    swift_allocObject();

    v18 = v21(v19);
    sub_25763A188(v10);

    *(v8 + v17) = v18;
  }

  sub_2577290B0();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  v20 = *v2;
  OUTLINED_FUNCTION_20_29();
  sub_25763A1E4(v14, v18 + v20);
  swift_endAccess();
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingNDParameters.weights.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingNDParameters.weights.getter(v6);
  return OUTLINED_FUNCTION_15_10();
}

void sub_257728538(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_25772910C();
    a3(v4);
    sub_25763A188(v5);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_2577285CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_25_31();
  sub_2574DA900();
  return a5(v5);
}

void NeuralNetwork.Layer.EmbeddingNDParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_12_51();
  v10 = type metadata accessor for Proto_WeightParams(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_32_18();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_25_31();
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v3, 1, v17) == 1)
  {
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
    v19 = *(type metadata accessor for Proto_EmbeddingNDLayerParams(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
      v20 = *(v4 + v19);
    }

    else
    {
      type metadata accessor for Proto_EmbeddingNDLayerParams._StorageClass(0);
      swift_allocObject();

      sub_2575A4548(v21);
      v20 = v22;
      sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);

      *(v4 + v19) = v20;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v10);
    v26 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_EmbeddingNDLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
    OUTLINED_FUNCTION_20_29();
    sub_25763A1E4(v1, v20 + v26);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2577290B0();
    OUTLINED_FUNCTION_1_5();
    sub_25772910C();
    sub_2575317A0(v14);
    sub_2574695E4(v6, &qword_27F880938, &unk_25776E510);
    sub_25763A188(v2);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.EmbeddingNDParameters.bias.modify(void *a1)
{
  OUTLINED_FUNCTION_27_12(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_28_12(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_11_18(v5);
  NeuralNetwork.Layer.EmbeddingNDParameters.bias.getter(v6);
  return OUTLINED_FUNCTION_15_10();
}

uint64_t sub_2577289B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t NeuralNetwork.Layer.BiasParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_BiasLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t NeuralNetwork.Layer.TopKParameters.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_TopKLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.TopKParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v3 + 8) == *(v4 + 8) && *(v1 + 16) == *(v0 + 16))
    {
      type metadata accessor for Proto_TopKLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      v7 = sub_2577293A8(v5, v6, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v7))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.CustomParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_CustomLayerParams.CustomLayerParamValue(0);
  a1[3] = sub_2577435D4();
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  type metadata accessor for Proto_CustomLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

float (*NeuralNetwork.Layer.NonMaximumSuppressionParameters.iouThreshold.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

float (*NeuralNetwork.Layer.NonMaximumSuppressionParameters.scoreThreshold.modify(uint64_t a1))(float *a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 4);
  return sub_25749D38C;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.NonMaximumSuppressionParameters.maximumBoxCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

_BYTE *(*NeuralNetwork.Layer.NonMaximumSuppressionParameters.perClassSuppression.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return sub_25769EA14;
}

uint64_t NeuralNetwork.Layer.NonMaximumSuppressionParameters.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.NonMaximumSuppressionParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v4 + 4) == *(v5 + 4) && *(v3 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16))
    {
      type metadata accessor for Proto_NonMaximumSuppressionLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      v8 = sub_2577293A8(v6, v7, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v8))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.OneHotParameters.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_OneHotLayerParams(0);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.OneHotParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v3 + 8) == *(v4 + 8) && *(v1 + 16) == *(v0 + 16) && *(v1 + 20) == *(v0 + 20))
    {
      type metadata accessor for Proto_OneHotLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      v7 = sub_2577293A8(v5, v6, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v7))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ArgSortParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Proto_ArgSortLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.ArgSortParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v0)
  {
    OUTLINED_FUNCTION_267();
    if (*(v1 + 8) == *(v2 + 8))
    {
      type metadata accessor for Proto_ArgSortLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_1_89();
      v5 = sub_2577293A8(v3, v4, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v5))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2577290B0()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_25772910C()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2577293A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2577296F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_29()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_32_18()
{

  return type metadata accessor for NeuralNetwork.WeightParameters(0);
}

uint64_t static NeuralNetwork.Layer.pool(name:inputName:outputName:kind:kernelSize:strides:padding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11)
{
  v48 = a1;
  v49 = a2;
  v45 = a9;
  *&v56 = a11;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v17 - 8);
  v50 = &v44 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v47 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v44 - v22;
  v46 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v46);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *a7;
  v27 = *a8;
  v26 = a8[1];
  v28 = a10[1];
  v52 = *a10;
  v53 = v26;
  v51 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  OUTLINED_FUNCTION_24_22();
  v29 = swift_allocObject();
  v54 = xmmword_2577442B0;
  *(v29 + 16) = xmmword_2577442B0;
  *(v29 + 32) = a3;
  *(v29 + 40) = a4;
  OUTLINED_FUNCTION_24_22();
  v30 = swift_allocObject();
  *(v30 + 16) = v54;
  *(v30 + 32) = a5;
  *(v30 + 40) = a6;
  v31 = a6;
  sub_257729E24(v56, v23);
  *v25 = 0;
  v25[8] = 1;
  v32 = MEMORY[0x277D84F90];
  *(v25 + 2) = MEMORY[0x277D84F90];
  *(v25 + 3) = v32;
  v33 = type metadata accessor for Proto_PoolingLayerParams(0);
  v34 = v33[7];
  v35 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  __swift_storeEnumTagSinglePayload(&v25[v34], 1, 1, v35);
  v25[v33[8]] = 0;
  v25[v33[9]] = 0;
  v36 = v33[10];

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v25 = v55;
  v25[8] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_257743FF0;
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v37 + 32) = v27;
  if (v53 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v37 + 40) = v53;
  *(v25 + 2) = v37;
  OUTLINED_FUNCTION_24_22();
  v56 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = v56;
  if (v52 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(v39 + 32) = v52;
  if (v51 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v39 + 40) = v51;
  *(v25 + 3) = v39;
  v40 = v47;
  sub_257729E24(v23, v47);
  NeuralNetwork.Layer.PoolParameters.padding.setter(v40);
  sub_257729E94(v23);
  swift_storeEnumTagMultiPayload();
  v31 = v45;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v36 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_11:
    swift_once();
  }

  *(v31 + v36) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v30);
  v41 = v50;
  sub_2574897E0(v50);
  v42 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
  sub_25752846C();
  return sub_257634BB4(v25);
}

uint64_t static NeuralNetwork.Layer.Kind.pool(kind:kernelSize:strides:padding:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = *a1;
  v18 = *a2;
  v17 = a2[1];
  v19 = *a3;
  v27 = a3[1];
  sub_257729E24(a4, &v26 - v14);
  *a5 = 0;
  *(a5 + 8) = 1;
  v20 = MEMORY[0x277D84F90];
  *(a5 + 16) = MEMORY[0x277D84F90];
  *(a5 + 24) = v20;
  v21 = type metadata accessor for Proto_PoolingLayerParams(0);
  v22 = v21[7];
  v23 = type metadata accessor for Proto_PoolingLayerParams.OneOf_PoolingPaddingType(0);
  __swift_storeEnumTagSinglePayload(a5 + v22, 1, 1, v23);
  *(a5 + v21[8]) = 0;
  *(a5 + v21[9]) = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a5 = v16;
  *(a5 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  OUTLINED_FUNCTION_24_22();
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  if (v18 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = v18;
  if (v17 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 40) = v17;
  *(a5 + 16) = result;
  OUTLINED_FUNCTION_24_22();
  v26 = v25;
  result = swift_allocObject();
  *(result + 16) = v26;
  if (v19 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 32) = v19;
  if ((v27 & 0x8000000000000000) == 0)
  {
    *(result + 40) = v27;
    *(a5 + 24) = result;
    sub_257729E24(v15, v13);
    NeuralNetwork.Layer.PoolParameters.padding.setter(v13);
    sub_257729E94(v15);
    type metadata accessor for NeuralNetwork.Layer.Kind(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_257729E24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257729E94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881230, &unk_257773EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeuralNetwork.Layer.SplitParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  result = swift_allocObject();
  *(result + 16) = xmmword_2577442B0;
  *(result + 32) = 0x7374757074754FLL;
  *(result + 40) = 0xE700000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    *(result + 48) = sub_257743974();
    *(v2 + 56) = v3;
    return v2;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442C0;
  *(v1 + 32) = 1936291905;
  *(v1 + 40) = 0xE400000000000000;
  result = sub_257743974();
  *(v1 + 48) = result;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0x7374696C7053;
  *(v1 + 72) = 0xE600000000000000;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 80) = sub_257743974();
    *(v1 + 88) = v4;
    *(v1 + 96) = 0x69532074696C7053;
    *(v1 + 104) = 0xEB0000000073657ALL;
    NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
    v5 = MEMORY[0x259C64F20]();
    v7 = v6;

    *(v1 + 112) = v5;
    *(v1 + 120) = v7;
    return v1;
  }

  return result;
}

void static NeuralNetwork.Layer.split(name:inputName:outputNames:outputCount:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2577442B0;
  *(v14 + 32) = v7;
  *(v14 + 40) = v5;
  type metadata accessor for Proto_SplitLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v12 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v9 + v12) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();

  sub_25752842C(v15);
  sub_2574897E0(v0);
  v16 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v16);
  sub_257634BB4(v1);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.split(outputCount:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_SplitLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
    type metadata accessor for NeuralNetwork.Layer.Kind(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void static NeuralNetwork.Layer.splitND(name:inputName:outputNames:axis:splitCount:)()
{
  OUTLINED_FUNCTION_31();
  v6 = v5;
  OUTLINED_FUNCTION_11_50(v7, v8, v9, v10, v11);
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2577442B0;
  *(v17 + 32) = v1;
  *(v17 + 40) = v4;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = MEMORY[0x277D84F90];
  v18 = *(type metadata accessor for Proto_SplitNDLayerParams(0) + 28);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v2[1] = v6;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v18 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
LABEL_5:
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v13 + v18) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();

  sub_25752842C(v19);
  sub_2574897E0(v0);
  v20 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v20);
  sub_257634BB4(v2);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.splitND(axis:splitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_SplitNDLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    a3[1] = a2;
    type metadata accessor for NeuralNetwork.Layer.Kind(0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

void static NeuralNetwork.Layer.splitND(name:inputName:outputNames:axis:splitSizes:)()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_11_50(v5, v6, v7, v8, v9);
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2577442B0;
  *(v15 + 32) = v1;
  *(v15 + 40) = v4;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_SplitNDLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v3;

  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v16);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v17 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(v11 + v17) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();

  sub_25752842C(v18);
  sub_2574897E0(v0);
  v19 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v19);
  sub_257634BB4(v2);
  OUTLINED_FUNCTION_35();
}

uint64_t static NeuralNetwork.Layer.Kind.splitND(axis:splitSizes:)()
{
  OUTLINED_FUNCTION_267();
  v2 = v1;
  *v1 = 0;
  v1[1] = 0;
  v1[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_SplitNDLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v2 = v0;

  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v3);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.SplitParameters.init(outputCount:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_SplitLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.init(axis:splitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_SplitNDLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    a3[1] = a2;
  }

  return result;
}

void NeuralNetwork.Layer.SplitNDParameters.init(axis:splitSizes:)()
{
  OUTLINED_FUNCTION_267();
  v3 = v2;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = MEMORY[0x277D84F90];
  type metadata accessor for Proto_SplitNDLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v3 = v1;
  NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v0);
}

uint64_t NeuralNetwork.Layer.SplitParameters.outputCount.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitParameters.outputCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.SplitParameters.outputCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

BOOL static NeuralNetwork.Layer.SplitParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    type metadata accessor for Proto_SplitLayerParams(0);
    sub_2577431B4();
    OUTLINED_FUNCTION_2_73();
    v4 = sub_25772ACAC(v2, v3, MEMORY[0x277D216D0]);
    if (OUTLINED_FUNCTION_4_2(v4))
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.splitCount.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257483724(v7 > 1, v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t (*NeuralNetwork.Layer.SplitNDParameters.axis.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_257636A44;
}

uint64_t NeuralNetwork.Layer.SplitNDParameters.splitCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*NeuralNetwork.Layer.SplitNDParameters.splitCount.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

void NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257484698(0, v4, 0);
    v5 = 32;
    v6 = v10;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257484698(v8 > 1, v9 + 1, 1);
      }

      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:

    *(v2 + 16) = v6;
  }
}

uint64_t sub_25772ACAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*NeuralNetwork.Layer.SplitNDParameters.splitSizes.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
  return sub_25772AD3C;
}

void sub_25772AD3C(uint64_t *a1, char a2)
{
  if (a2)
  {

    NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(v2);
  }

  else
  {
    NeuralNetwork.Layer.SplitNDParameters.splitSizes.setter(*a1);
  }
}

BOOL static NeuralNetwork.Layer.SplitNDParameters.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    if (*(v2 + 8) == *(v3 + 8) && (sub_257487374() & 1) != 0)
    {
      type metadata accessor for Proto_SplitNDLayerParams(0);
      sub_2577431B4();
      OUTLINED_FUNCTION_2_73();
      v6 = sub_25772ACAC(v4, v5, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v6))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_25772AE84(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_47();

  return sub_2577435F4();
}

uint64_t sub_25772AF38(uint64_t (*a1)(void))
{
  sub_257743A14();
  a1(0);
  OUTLINED_FUNCTION_8_47();
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25772B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_257743A14();
  a4(0);
  OUTLINED_FUNCTION_8_47();
  sub_2577435F4();
  return sub_257743A64();
}

void NeuralNetwork.Layer.SplitNDParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_6();
  type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_25772B2E8(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 32) = 1936291937;
  *(v12 + 40) = 0xE400000000000000;
  v13 = MEMORY[0x277D83B88];
  v14 = v0[1];
  *(v12 + 48) = *v0;
  *(v12 + 72) = v13;
  *(v12 + 80) = 0x756F4374696C7073;
  *(v12 + 88) = 0xEA0000000000746ELL;
  *(v12 + 16) = xmmword_2577442C0;
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = v12;
    *(v12 + 96) = v14;
    *(v12 + 120) = v13;
    *(v12 + 128) = 0x7A695374696C7073;
    *(v12 + 136) = 0xEA00000000007365;
    v16 = NeuralNetwork.Layer.SplitNDParameters.splitSizes.getter();
    *(v15 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
    *(v15 + 144) = v16;
    v17 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v17);
    (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
    sub_257743AA4();
    OUTLINED_FUNCTION_35();
  }
}

uint64_t sub_25772B2E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.SplitNDParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25772B50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_47()
{

  return sub_25772ACAC(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 96) = result;
  *(v5 - 88) = a5;
  return result;
}

uint64_t sub_25772B5C4()
{
  v2 = type metadata accessor for SizeRange(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  FeatureType.SequenceParameters.elementType.getter(v1);
  v9 = sub_25772C548();
  v11 = v10;
  OUTLINED_FUNCTION_2_74();
  sub_25772C4F0(v1, v12);
  MEMORY[0x259C64E90](v9, v11);

  MEMORY[0x259C64E90](8236, 0xE200000000000000);
  FeatureType.SequenceParameters.sizeRange.getter();
  SizeRange.description.getter();
  MEMORY[0x259C64E90]();

  OUTLINED_FUNCTION_15_32();
  sub_25772C4F0(v6, v13);
  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](60, 0xE100000000000000);

  return 0x65636E6575716553;
}

uint64_t FeatureType.SequenceParameters.init(elementType:optional:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  OUTLINED_FUNCTION_16_34();
  v7 = &a3[v6];
  v8 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = type metadata accessor for Proto_SequenceFeatureType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Proto_SizeRange(0);
  __swift_storeEnumTagSinglePayload(&v7[v10], 1, 1, v11);
  sub_2574695E4(v7, &qword_27F87A898, &unk_257777D20);
  sub_25772BD08();
  OUTLINED_FUNCTION_2_74();
  sub_25772C4F0(a1, v12);
  OUTLINED_FUNCTION_21();
  result = __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
  *a3 = a2;
  return result;
}

uint64_t FeatureType.SequenceParameters.sizeRange.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for Proto_SizeRange(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_16_34();
  type metadata accessor for Proto_SequenceFeatureType(0);
  sub_2574DA900();
  v9 = OUTLINED_FUNCTION_197();
  if (__swift_getEnumTagSinglePayload(v9, v10, v4) == 1)
  {
    *v8 = 0;
    v8[1] = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v11 = OUTLINED_FUNCTION_197();
    if (__swift_getEnumTagSinglePayload(v11, v12, v4) != 1)
    {
      sub_2574695E4(v0, &qword_27F87A8A0, &unk_2577487A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_72();
    OUTLINED_FUNCTION_360();
    sub_25772BE98();
  }

  OUTLINED_FUNCTION_3_72();
  return sub_25772BE98();
}

uint64_t FeatureType.SequenceParameters.elementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A898, &unk_257777D20);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40();
  v5 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v7 = OUTLINED_FUNCTION_38();
  type metadata accessor for FeatureType.SequenceParameters(v7);
  sub_2574DA900();
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    OUTLINED_FUNCTION_360();
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v1, 1, v5) != 1)
    {
      sub_2574695E4(v1, &qword_27F87A898, &unk_257777D20);
    }
  }

  else
  {
    sub_25772BE98();
  }

  OUTLINED_FUNCTION_360();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FeatureType.StringParameters(0);
  }

  else
  {
    type metadata accessor for FeatureType.IntParameters(0);
  }

  sub_25772BE98();
  *a1 = 0;
  type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t FeatureType.SequenceParameters.elementType.setter(uint64_t a1)
{
  type metadata accessor for FeatureType.StringParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_38();
  type metadata accessor for FeatureType.IntParameters(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v5 = type metadata accessor for FeatureType.SequenceParameters(0);
  sub_2574695E4(v1 + *(v5 + 20), &qword_27F87A898, &unk_257777D20);
  type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_62();
    sub_25772BE98();
    OUTLINED_FUNCTION_12_52();
  }

  else
  {
    OUTLINED_FUNCTION_5_61();
    sub_25772BE98();
    OUTLINED_FUNCTION_11_51();
  }

  sub_25772BE98();
  v6 = type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
}

uint64_t sub_25772BD08()
{
  type metadata accessor for FeatureType.StringParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  type metadata accessor for FeatureType.IntParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_38();
  type metadata accessor for FeatureType.SequenceParameters.ElementType(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_66();
  sub_25772C494();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_62();
    sub_25772BE98();
    OUTLINED_FUNCTION_12_52();
  }

  else
  {
    OUTLINED_FUNCTION_5_61();
    sub_25772BE98();
    OUTLINED_FUNCTION_11_51();
  }

  sub_25772BE98();
  type metadata accessor for Proto_SequenceFeatureType.OneOf_Type(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25772BE98()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 32))(v0, v1);
  return v0;
}

void (*FeatureType.SequenceParameters.elementType.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  FeatureType.SequenceParameters.elementType.getter(v6);
  return sub_25772BF80;
}

void sub_25772BF80(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_25772C494();
    FeatureType.SequenceParameters.elementType.setter(v2);
    OUTLINED_FUNCTION_2_74();
    sub_25772C4F0(v3, v4);
  }

  else
  {
    FeatureType.SequenceParameters.elementType.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_25772C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_25772C494();
  return a7(v11);
}

uint64_t FeatureType.SequenceParameters.sizeRange.setter()
{
  v1 = type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  sub_25772BE98();
  OUTLINED_FUNCTION_16_34();
  v4 = v0 + v3;
  v5 = type metadata accessor for Proto_SequenceFeatureType(0);
  sub_2574695E4(v4 + *(v5 + 24), &qword_27F87A8A0, &unk_2577487A0);
  sub_25772BE98();
  OUTLINED_FUNCTION_21();
  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
}

void FeatureType.SequenceParameters.sizeRange.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A0, &unk_2577487A0);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Proto_SizeRange(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_4();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for SizeRange(0);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[5] = __swift_coroFrameAllocStub(v13);
  v3[6] = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_34();
  *(v3 + 14) = v14;
  *(v3 + 15) = *(type metadata accessor for Proto_SequenceFeatureType(0) + 24);
  sub_2574DA900();
  v15 = OUTLINED_FUNCTION_197();
  if (__swift_getEnumTagSinglePayload(v15, v16, v7) == 1)
  {
    *v10 = 0;
    v10[1] = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    v17 = OUTLINED_FUNCTION_197();
    if (__swift_getEnumTagSinglePayload(v17, v18, v7) != 1)
    {
      sub_2574695E4(v6, &qword_27F87A8A0, &unk_2577487A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_72();
    OUTLINED_FUNCTION_360();
    sub_25772BE98();
  }

  OUTLINED_FUNCTION_3_72();
  sub_25772BE98();
  OUTLINED_FUNCTION_35();
}

void sub_25772C344()
{
  OUTLINED_FUNCTION_31();
  v1 = *(*v0 + 60);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 8);
  v7 = *(*v0 + 16);
  v8 = **v0 + *(*v0 + 56);
  if (v9)
  {
    sub_25772C494();
    OUTLINED_FUNCTION_13_36();
    sub_25772BE98();
    sub_2574695E4(v8 + v1, &qword_27F87A8A0, &unk_2577487A0);
    sub_25772BE98();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v7);
    OUTLINED_FUNCTION_15_32();
    sub_25772C4F0(v3, v13);
  }

  else
  {
    OUTLINED_FUNCTION_13_36();
    sub_25772BE98();
    sub_2574695E4(v8 + v1, &qword_27F87A8A0, &unk_2577487A0);
    sub_25772BE98();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v7);
  }

  free(v3);
  free(v2);
  free(v5);
  free(v4);
  free(v6);
  OUTLINED_FUNCTION_35();

  free(v17);
}

uint64_t sub_25772C494()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_25772C4F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25772C548()
{
  v0 = type metadata accessor for FeatureType.StringParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = (v3 - v2);
  v5 = type metadata accessor for FeatureType.IntParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_4_66();
  sub_25772C494();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_6_62();
    sub_25772BE98();
    v11 = *v4;
    OUTLINED_FUNCTION_1_90();
    sub_25772C4F0(v4, v12);
    if (v11)
    {
      return 0x3F676E69727453;
    }

    else
    {
      return 0x676E69727453;
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_61();
    sub_25772BE98();
    v14 = *v9;
    OUTLINED_FUNCTION_0_109();
    sub_25772C4F0(v9, v15);
    if (v14)
    {
      return 1064595017;
    }

    else
    {
      return 7630409;
    }
  }
}

void static FeatureType.SequenceParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    OUTLINED_FUNCTION_267();
    OUTLINED_FUNCTION_16_34();

    sub_2574C4598();
  }
}

void FeatureType.SequenceParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_40();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_38();
  type metadata accessor for FeatureType.SequenceParameters(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  sub_25772C494();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2577442C0;
  *(v8 + 32) = 0x54746E656D656C65;
  *(v8 + 40) = 0xEB00000000657079;
  *(v8 + 72) = type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
  FeatureType.SequenceParameters.elementType.getter(boxed_opaque_existential_0);
  *(v8 + 80) = 0x676E6152657A6973;
  *(v8 + 88) = 0xE900000000000065;
  *(v8 + 120) = type metadata accessor for SizeRange(0);
  __swift_allocate_boxed_opaque_existential_0((v8 + 96));
  FeatureType.SequenceParameters.sizeRange.getter();
  *(v8 + 128) = 0x6E6F6974704F7369;
  *(v8 + 136) = 0xEA00000000006C61;
  v10 = *v0;
  *(v8 + 168) = MEMORY[0x277D839B0];
  *(v8 + 144) = v10;
  sub_257743A74();
  v11 = OUTLINED_FUNCTION_197();
  __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  (*(v3 + 104))(v1, *MEMORY[0x277D84C38], v2);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void static FeatureType.SequenceParameters.ElementType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v29[1] = type metadata accessor for FeatureType.StringParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v3 = (v2 - v1);
  v29[0] = type metadata accessor for FeatureType.IntParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = (v6 - v5);
  type metadata accessor for FeatureType.SequenceParameters.ElementType(0);
  OUTLINED_FUNCTION_4();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8819F8, &qword_257777D30);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = v29 - v16;
  sub_25772C494();
  sub_25772C494();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_4_66();
    sub_25772C494();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_6_62();
      sub_25772BE98();
      if (*v11 == *v3)
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_14_34();
        sub_25772CD80(v22, v23, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_1_90();
      sub_25772C4F0(v3, v18);
      OUTLINED_FUNCTION_1_90();
      v25 = v11;
LABEL_15:
      sub_25772C4F0(v25, v24);
      OUTLINED_FUNCTION_2_74();
      sub_25772C4F0(v17, v28);
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_1_90();
    v20 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_4_66();
    sub_25772C494();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_5_61();
      sub_25772BE98();
      if (*v13 == *v7)
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_14_34();
        sub_25772CD80(v26, v27, MEMORY[0x277D216D0]);
        sub_257743644();
      }

      OUTLINED_FUNCTION_0_109();
      sub_25772C4F0(v7, v21);
      OUTLINED_FUNCTION_0_109();
      v25 = v13;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_0_109();
    v20 = v13;
  }

  sub_25772C4F0(v20, v19);
  sub_2574695E4(v17, &qword_27F8819F8, &qword_257777D30);
LABEL_16:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_25772CD80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25772CDF4(uint64_t a1)
{
  result = type metadata accessor for Proto_SequenceFeatureType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25772CE70(uint64_t a1)
{
  result = type metadata accessor for FeatureType.IntParameters(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FeatureType.StringParameters(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25772D020(uint64_t *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_14();
  v7 = type metadata accessor for FeatureType.DictionaryParameters(v6);
  sub_25772D888(v1 + *(v7 + 20), v2);
  v8 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v8);
  sub_2574695E4(v2, &qword_27F87A8A8, &qword_257777E20);
  v10 = MEMORY[0x277D84F90];
  if (EnumTagSinglePayload == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    v11 = sub_257743604();
    v13 = v12;
    *a1 = v10;
    sub_25767A064();
    v14 = *(*a1 + 16);
    sub_25767A0B0(v14);
    v10 = *a1;
    *(v10 + 16) = v14 + 1;
    v15 = v10 + 48 * v14;
    *(v15 + 32) = 0;
    *(v15 + 40) = 0xD00000000000002BLL;
    *(v15 + 48) = 0x80000002577820D0;
    *(v15 + 56) = 2;
    *(v15 + 64) = v11;
    *(v15 + 72) = v13;
  }

  *a1 = v10;
}

uint64_t sub_25772D19C()
{
  v1 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  if (*v0 == 1)
  {
    MEMORY[0x259C64E90](63, 0xE100000000000000);
  }

  FeatureType.DictionaryParameters.keyType.getter(v5);
  v6 = sub_25772DBD8();
  v8 = v7;
  OUTLINED_FUNCTION_2_75();
  sub_25772DA68(v5, v9);
  MEMORY[0x259C64E90](v6, v8);

  MEMORY[0x259C64E90](62, 0xE100000000000000);
  MEMORY[0x259C64E90](60, 0xE100000000000000);

  return 0x616E6F6974636944;
}

uint64_t FeatureType.DictionaryParameters.init(keyType:optional:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  v7 = OUTLINED_FUNCTION_13(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  type metadata accessor for FeatureType.DictionaryParameters(0);
  v11 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  OUTLINED_FUNCTION_15_7(v11);
  type metadata accessor for Proto_DictionaryFeatureType(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a3 = a2;
  OUTLINED_FUNCTION_3_73();
  sub_25772D950();
  FeatureType.DictionaryParameters.keyType.setter(v10);
  OUTLINED_FUNCTION_2_75();
  return sub_25772DA68(a1, v12);
}

uint64_t FeatureType.DictionaryParameters.keyType.getter@<X0>(_BYTE *a1@<X8>)
{
  v4 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  OUTLINED_FUNCTION_4();
  v6 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A10, &qword_257777E28);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_14();
  v16 = type metadata accessor for FeatureType.DictionaryParameters(v15);
  sub_25772D888(v1 + *(v16 + 20), v12);
  v17 = 1;
  if (__swift_getEnumTagSinglePayload(v12, 1, v4) != 1)
  {
    sub_25772D8F8();
    sub_25772D950();
    sub_25772D9A8(v2);
    sub_25772DA68(v8, type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType);
    v17 = 0;
  }

  v18 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  __swift_storeEnumTagSinglePayload(v2, v17, 1, v18);
  if (__swift_getEnumTagSinglePayload(v2, 1, v18) != 1)
  {
    return sub_25772D8F8();
  }

  type metadata accessor for FeatureType.IntParameters(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = 0;
  swift_storeEnumTagMultiPayload();
  result = __swift_getEnumTagSinglePayload(v2, 1, v18);
  if (result != 1)
  {
    return sub_2574695E4(v2, &qword_27F881A10, &qword_257777E28);
  }

  return result;
}

uint64_t sub_25772D664(uint64_t a1)
{
  v1 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25772D950();
  return FeatureType.DictionaryParameters.keyType.setter(v3);
}

uint64_t FeatureType.DictionaryParameters.keyType.setter(uint64_t a1)
{
  type metadata accessor for FeatureType.StringParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  type metadata accessor for FeatureType.IntParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_14();
  v5 = *(type metadata accessor for FeatureType.DictionaryParameters(v4) + 20);
  sub_2574695E4(v1 + v5, &qword_27F87A8A8, &qword_257777E20);
  type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_7_51();
  }

  else
  {
    OUTLINED_FUNCTION_6_63();
  }

  sub_25772D8F8();
  sub_25772D8F8();
  v6 = type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v1 + v5, 0, 1, v6);
}

uint64_t sub_25772D888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A8A8, &qword_257777E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25772D8F8()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  OUTLINED_FUNCTION_4();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_25772D950()
{
  v2 = OUTLINED_FUNCTION_0_0();
  v3(v2);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_25772D9A8@<X0>(_BYTE *a2@<X8>)
{
  type metadata accessor for Proto_DictionaryFeatureType.OneOf_KeyType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for FeatureType.StringParameters(0);
  }

  else
  {
    type metadata accessor for FeatureType.IntParameters(0);
  }

  sub_25772D8F8();
  *a2 = 0;
  type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25772DA68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void (*FeatureType.DictionaryParameters.keyType.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  FeatureType.DictionaryParameters.keyType.getter(v6);
  return sub_25772DB4C;
}

void sub_25772DB4C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_25772D950();
    FeatureType.DictionaryParameters.keyType.setter(v2);
    OUTLINED_FUNCTION_2_75();
    sub_25772DA68(v3, v4);
  }

  else
  {
    FeatureType.DictionaryParameters.keyType.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t sub_25772DBD8()
{
  v0 = type metadata accessor for FeatureType.StringParameters(0);
  v1 = OUTLINED_FUNCTION_13(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = (v3 - v2);
  v5 = type metadata accessor for FeatureType.IntParameters(0);
  v6 = OUTLINED_FUNCTION_13(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = (v8 - v7);
  type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_73();
  sub_25772D950();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_7_51();
    sub_25772D8F8();
    v11 = *v4;
    OUTLINED_FUNCTION_1_91();
    sub_25772DA68(v4, v12);
    if (v11)
    {
      return 0x3F676E69727453;
    }

    else
    {
      return 0x676E69727453;
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_63();
    sub_25772D8F8();
    v14 = *v9;
    OUTLINED_FUNCTION_0_110();
    sub_25772DA68(v9, v15);
    if (v14)
    {
      return 1064595017;
    }

    else
    {
      return 7630409;
    }
  }
}

void static FeatureType.DictionaryParameters.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = OUTLINED_FUNCTION_0_0();
    type metadata accessor for FeatureType.DictionaryParameters(v3);

    sub_2574C2CDC();
  }
}

uint64_t FeatureType.DictionaryParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  type metadata accessor for FeatureType.DictionaryParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  sub_25772D950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_257743FF0;
  *(v9 + 32) = 0x6570795479656BLL;
  *(v9 + 40) = 0xE700000000000000;
  *(v9 + 72) = type metadata accessor for FeatureType.DictionaryParameters.KeyType(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 48));
  FeatureType.DictionaryParameters.keyType.getter(boxed_opaque_existential_0);
  *(v9 + 80) = 0x6E6F6974704F7369;
  *(v9 + 88) = 0xEA00000000006C61;
  v11 = *v0;
  *(v9 + 120) = MEMORY[0x277D839B0];
  *(v9 + 96) = v11;
  v12 = sub_257743A74();
  OUTLINED_FUNCTION_15_7(v12);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t static FeatureType.DictionaryParameters.KeyType.== infix(_:_:)()
{
  v36[1] = type metadata accessor for FeatureType.StringParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v4 = (v3 - v2);
  v36[0] = type metadata accessor for FeatureType.IntParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_14();
  type metadata accessor for FeatureType.DictionaryParameters.KeyType(v6);
  OUTLINED_FUNCTION_4();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A18, &qword_257777E30);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v36 - v15;
  sub_25772D950();
  sub_25772D950();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_73();
    sub_25772D950();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_7_51();
      sub_25772D8F8();
      if (*v10 != *v4)
      {
        OUTLINED_FUNCTION_1_91();
        sub_25772DA68(v4, v17);
LABEL_13:
        OUTLINED_FUNCTION_1_91();
        v28 = v10;
LABEL_18:
        sub_25772DA68(v28, v27);
        OUTLINED_FUNCTION_2_75();
        sub_25772DA68(v16, v35);
        return 0;
      }

      sub_2577431B4();
      OUTLINED_FUNCTION_8_48();
      sub_25772E3F4(v21, v22, MEMORY[0x277D216D0]);
      v23 = sub_257743644();
      OUTLINED_FUNCTION_1_91();
      sub_25772DA68(v4, v24);
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_1_91();
      v26 = v10;
LABEL_16:
      sub_25772DA68(v26, v25);
      OUTLINED_FUNCTION_2_75();
      sub_25772DA68(v16, v33);
      return 1;
    }

    OUTLINED_FUNCTION_1_91();
    v19 = v10;
  }

  else
  {
    OUTLINED_FUNCTION_3_73();
    sub_25772D950();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_6_63();
      sub_25772D8F8();
      if (*v12 == *v0)
      {
        sub_2577431B4();
        OUTLINED_FUNCTION_8_48();
        sub_25772E3F4(v29, v30, MEMORY[0x277D216D0]);
        v31 = sub_257743644();
        OUTLINED_FUNCTION_0_110();
        sub_25772DA68(v0, v32);
        if (v31)
        {
          OUTLINED_FUNCTION_0_110();
          v26 = v12;
          goto LABEL_16;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_110();
        sub_25772DA68(v0, v20);
      }

      OUTLINED_FUNCTION_0_110();
      v28 = v12;
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_0_110();
    v19 = v12;
  }

  sub_25772DA68(v19, v18);
  sub_2574695E4(v16, &qword_27F881A18, &qword_257777E30);
  return 0;
}

uint64_t sub_25772E3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25772E464(uint64_t a1)
{
  result = type metadata accessor for Proto_DictionaryFeatureType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25772E588(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_2577435D4();
  type metadata accessor for Proto_Int64ToDoubleMap(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(a1 + 16);
  if (v5)
  {
    v30 = a2;
    sub_257484E08(0, v5, 0);
    v7 = sub_25774107C();
    v9 = v8;
    v10 = 0;
    v11 = a1 + 64;
    v12 = 1;
    v13 = -2;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < v12 << *(a1 + 32))
      {
        v14 = v7 >> 6;
        v15 = v12 << v7;
        if ((*(v11 + 8 * (v7 >> 6)) & (v12 << v7)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_26;
        }

        v16 = *(*(a1 + 48) + 8 * v7);
        v17 = *(*(a1 + 56) + 8 * v7);
        v19 = *(v4 + 16);
        v18 = *(v4 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_257484E08(v18 > 1, v19 + 1, 1);
          OUTLINED_FUNCTION_1_92();
        }

        *(v4 + 16) = v19 + 1;
        v20 = v4 + 16 * v19;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        v21 = v12 << *(a1 + 32);
        if (v7 >= v21)
        {
          goto LABEL_27;
        }

        v22 = *(v11 + 8 * v14);
        if ((v22 & v15) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_29;
        }

        if ((v22 & (v13 << (v7 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_3_74();
        }

        else
        {
          v24 = v14 << 6;
          v25 = v14 + 1;
          v26 = (a1 + 72 + 8 * v14);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_257653FC0(v7, v9, v6 & 1);
              OUTLINED_FUNCTION_1_92();
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          sub_257653FC0(v7, v9, v6 & 1);
          OUTLINED_FUNCTION_1_92();
        }

LABEL_18:
        if (++v10 == v23)
        {

          a2 = v30;
          goto LABEL_23;
        }

        v6 = 0;
        v9 = *(a1 + 36);
        v7 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
  }

  else
  {

LABEL_23:
    v29 = sub_25772E85C(v4, &qword_27F881A58, &qword_257777F60, sub_25772F398);

    *a2 = v29;
  }
}

uint64_t sub_25772E85C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_257743904();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_25772E910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2577435D4();
  type metadata accessor for Proto_StringToInt64Map(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A20, &qword_257777F28);
  result = sub_2577438E4();
  v5 = result;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result + 64;
  if (v9)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v15 = OUTLINED_FUNCTION_2_76(v12 | (v6 << 6));
      *(v11 + v17) |= 1 << v16;
      result = OUTLINED_FUNCTION_0_111(v15, v16);
      if (v19)
      {
        break;
      }

      *(v5 + 16) = v18;

      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
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

        *a2 = v5;
        return result;
      }

      v14 = *(a1 + 64 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25772EA84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  sub_2577435D4();
  type metadata accessor for Proto_Int64ToStringMap(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v5 = *(a1 + 16);
  if (v5)
  {
    v28 = a2;
    sub_2574852B8(0, v5, 0);
    v8 = sub_25774107C();
    v9 = 0;
    v10 = a1 + 64;
    v29 = a1 + 72;
    v30 = v5;
    v31 = a1 + 64;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < 1 << *(a1 + 32))
      {
        v11 = v8 >> 6;
        if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
        {
          goto LABEL_25;
        }

        if (*(a1 + 36) != v6)
        {
          goto LABEL_26;
        }

        v32 = v7;
        v33 = v9;
        v34 = v6;
        v35 = *(*(a1 + 48) + 8 * v8);
        v12 = (*(a1 + 56) + 16 * v8);
        v13 = *v12;
        v14 = v12[1];
        v15 = a1;
        v17 = *(v4 + 16);
        v16 = *(v4 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_2574852B8(v16 > 1, v17 + 1, 1);
        }

        *(v4 + 16) = v17 + 1;
        v18 = (v4 + 24 * v17);
        v18[4] = v35;
        v18[5] = v13;
        v18[6] = v14;
        v19 = 1 << *(v15 + 32);
        if (v8 >= v19)
        {
          goto LABEL_27;
        }

        a1 = v15;
        v10 = v31;
        v20 = *(v31 + 8 * v11);
        if ((v20 & (1 << v8)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v34)
        {
          goto LABEL_29;
        }

        if ((v20 & (-2 << (v8 & 0x3F))) != 0)
        {
          OUTLINED_FUNCTION_3_74();
          v21 = v30;
        }

        else
        {
          v22 = v11 << 6;
          v23 = v11 + 1;
          v21 = v30;
          v24 = (v29 + 8 * v11);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_257653FC0(v8, v34, v32 & 1);
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_18;
            }
          }

          sub_257653FC0(v8, v34, v32 & 1);
        }

LABEL_18:
        v9 = v33 + 1;
        if (v33 + 1 == v21)
        {

          a2 = v28;
          goto LABEL_23;
        }

        v7 = 0;
        v6 = *(a1 + 36);
        v8 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

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
    __break(1u);
  }

  else
  {

LABEL_23:
    v27 = sub_25772E85C(v4, &qword_27F881A28, &qword_257777F30, sub_25772F66C);

    *a2 = v27;
  }
}

uint64_t sub_25772ED48()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A40, &qword_257777F48);
  result = sub_2577438E4();
  v3 = result;
  v4 = 0;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = result + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = OUTLINED_FUNCTION_2_76(v10 | (v4 << 6));
      *(v9 + v15) |= 1 << v14;
      result = OUTLINED_FUNCTION_0_111(v13, v14);
      if (v17)
      {
        break;
      }

      *(v3 + 16) = v16;

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return v3;
      }

      v12 = *(v1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25772EE64()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    sub_2574852F8(0, v2, 0);
    v3 = v29;
    v6 = sub_25774107C();
    v7 = 0;
    v8 = v1 + 64;
    v24 = v2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      while (v6 < 1 << *(v1 + 32))
      {
        v9 = v6 >> 6;
        if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
        {
          goto LABEL_23;
        }

        if (*(v1 + 36) != v4)
        {
          goto LABEL_24;
        }

        v25 = v5;
        v26 = v7;
        v27 = v4;
        v28 = *(*(v1 + 48) + 8 * v6);
        v10 = (*(v1 + 56) + 16 * v6);
        v12 = *v10;
        v11 = v10[1];
        v13 = *(v29 + 16);
        v14 = *(v29 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_2574852F8(v14 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v15 = (v29 + 24 * v13);
        v15[4] = v28;
        v15[5] = v12;
        v15[6] = v11;
        v16 = 1 << *(v1 + 32);
        if (v6 >= v16)
        {
          goto LABEL_25;
        }

        v8 = v1 + 64;
        v17 = *(v1 + 64 + 8 * v9);
        if ((v17 & (1 << v6)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v18 = v17 & (-2 << (v6 & 0x3F));
        if (v18)
        {
          v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = v9 << 6;
          v20 = v9 + 1;
          v21 = (v1 + 72 + 8 * v9);
          while (v20 < (v16 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_257653FC0(v6, v27, v25 & 1);
              v16 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_257653FC0(v6, v27, v25 & 1);
        }

LABEL_18:
        v7 = v26 + 1;
        if (v26 + 1 == v24)
        {
          goto LABEL_21;
        }

        v5 = 0;
        v4 = *(v1 + 36);
        v6 = v16;
        if (v16 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_25772E85C(v3, &qword_27F881A48, &qword_257777F50, sub_25772F93C);
  }
}

uint64_t sub_25772F0C4(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    v12 = sub_25765407C(v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A70, &qword_257777F78);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v8;
    *(v19[7] + 8 * v12) = v9;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v6;
    v19[2] = v22;
    a2 = 1;
    if (v25 == v6)
    {
    }
  }

  sub_2577409E0(v15, a2 & 1);
  v17 = sub_25765407C(v8);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v23);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t sub_25772F398(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;
    v12 = sub_25765407C(v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A60, &qword_257777F68);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v8;
    *(v19[7] + 8 * v12) = v9;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v6;
    v19[2] = v22;
    a2 = 1;
    if (v25 == v6)
    {
    }
  }

  sub_2577409F4(v15, a2 & 1);
  v17 = sub_25765407C(v8);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v23);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t sub_25772F66C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v10 = sub_25765407C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A30, &qword_257777F38);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + 8 * v15) = v7;
    v21 = (v20[7] + 16 * v15);
    *v21 = v6;
    v21[1] = v8;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_257740BE4(v14, a2 & 1);
  v18 = sub_25765407C(v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v25);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t sub_25772F93C(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_2577439B4();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;
    v10 = sub_25765407C(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A50, &qword_257777F58);
      sub_2577438A4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + 8 * v15) = v7;
    v21 = (v20[7] + 16 * v15);
    *v21 = v6;
    v21[1] = v8;
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v20[2] = v24;
    ++v4;
    a2 = 1;
  }

  sub_257740BF8(v14, a2 & 1);
  v18 = sub_25765407C(v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  MEMORY[0x259C65590](v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A38, &qword_257777F40);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return MEMORY[0x259C65580](v25);
  }

LABEL_22:
  sub_257743834();
  MEMORY[0x259C64E90](0xD00000000000001BLL, 0x8000000257782140);
  sub_257743884();
  MEMORY[0x259C64E90](39, 0xE100000000000000);
  result = sub_2577438C4();
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_0_111@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(v4 + 48) + 16 * a2);
  *v5 = v3;
  v5[1] = result;
  *(*(v4 + 56) + 8 * a2) = v2;
  return result;
}

void NeuralNetwork.Layer.ConvolutionParameters.init(outputChannelCount:kernelChannelCount:groupCount:kernelSize:strides:padding:)()
{
  OUTLINED_FUNCTION_31();
  v37 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32_3();
  v16 = *v5;
  v17 = v5[1];
  v19 = *v3;
  v18 = v3[1];
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  if (qword_27F879358 != -1)
  {
    swift_once();
  }

  *(v13 + v20) = qword_27F87BEF0;
  if (v11 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v36 = v18;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v13 + v20);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v23);
    OUTLINED_FUNCTION_1_63();
    v22 = v24;
    *(v13 + v20) = v24;
  }

  OUTLINED_FUNCTION_447(v22 + 16, &v40);
  *(v22 + 16) = v11;
  if (v9 < 0)
  {
    goto LABEL_18;
  }

  v25 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v13 + v20);
  if ((v25 & 1) == 0)
  {
    v27 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v27);
    OUTLINED_FUNCTION_1_63();
    v26 = v28;
    *(v13 + v20) = v28;
  }

  OUTLINED_FUNCTION_447(v26 + 24, &v39);
  *(v26 + 24) = v9;
  if (v7 < 0)
  {
    goto LABEL_19;
  }

  v29 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v13 + v20);
  if ((v29 & 1) == 0)
  {
    v31 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v31);
    OUTLINED_FUNCTION_1_63();
    v30 = v32;
    *(v13 + v20) = v32;
  }

  OUTLINED_FUNCTION_447(v30 + 32, &v38);
  *(v30 + 32) = v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  v34 = OUTLINED_FUNCTION_13_6(v33);
  *(v34 + 16) = xmmword_257743FF0;
  if (v16 < 0)
  {
    goto LABEL_20;
  }

  *(v34 + 32) = v16;
  if (v17 < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v34 + 40) = v17;
  sub_257531098(v34);
  v35 = OUTLINED_FUNCTION_13_6(v33);
  *(v35 + 16) = xmmword_257743FF0;
  if (v19 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  *(v35 + 32) = v19;
  if ((v36 & 0x8000000000000000) == 0)
  {
    *(v35 + 40) = v36;
    sub_257531170();
    OUTLINED_FUNCTION_72_4(v37);
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v0);
    sub_2574695E4(v37, &qword_27F8811F8, &unk_257777F90);
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_23:
  __break(1u);
}

void NeuralNetwork.Layer.ConvolutionParameters.propertyDescriptions.getter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v3 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_11();
  v81[2] = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v81[1] = v81 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_28_31();
  v16 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v81[3] = v81 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v23 = swift_allocObject();
  v24 = OUTLINED_FUNCTION_54_8(v23, xmmword_257745520);
  v24[2].n128_u64[0] = v25;
  v24[2].n128_u64[1] = 0xEF736C656E6E6168;
  v26 = *(v2 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_296((v26 + 2), &v90);
  v27 = v26[2];
  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v81[0] = v20;
  v89 = v27;
  v23[3].n128_u64[0] = sub_257743974();
  v23[3].n128_u64[1] = v28;
  OUTLINED_FUNCTION_47_8();
  v23[4].n128_u64[0] = v29 & 0xFFFFFFFFFFFFLL | 0x4320000000000000;
  v23[4].n128_u64[1] = 0xEF736C656E6E6168;
  OUTLINED_FUNCTION_296((v26 + 3), &v89);
  if ((v26[3] & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v88 = v26[3];
  v23[5].n128_u64[0] = sub_257743974();
  v23[5].n128_u64[1] = v30;
  OUTLINED_FUNCTION_63_6();
  v23[6].n128_u64[0] = v31;
  v23[6].n128_u64[1] = v32;
  OUTLINED_FUNCTION_296((v26 + 4), &v88);
  v33 = v26[4];
  if (v33 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    sub_257469388();
    v73 = v78;
    goto LABEL_21;
  }

  v82 = v3;
  v85 = v33;
  v23[7].n128_u64[0] = sub_257743974();
  v23[7].n128_u64[1] = v34;
  OUTLINED_FUNCTION_47_8();
  v23[8].n128_u64[0] = v35 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
  v23[8].n128_u64[1] = 0xEB00000000657A69;
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  v85 = OUTLINED_FUNCTION_14_35(v83);
  v86 = v36;
  v37 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v37);
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  v38 = OUTLINED_FUNCTION_14_35(v84);
  MEMORY[0x259C64E90](v38);

  v39 = v86;
  v23[9].n128_u64[0] = v85;
  v23[9].n128_u64[1] = v39;
  OUTLINED_FUNCTION_28_23();
  v23[10].n128_u64[0] = v40;
  v23[10].n128_u64[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  v85 = OUTLINED_FUNCTION_14_35(v83);
  v86 = v41;
  v42 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v42);
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  v43 = OUTLINED_FUNCTION_14_35(v84);
  MEMORY[0x259C64E90](v43);

  v44 = v86;
  v23[11].n128_u64[0] = v85;
  v23[11].n128_u64[1] = v44;
  OUTLINED_FUNCTION_32_19();
  v23[12].n128_u64[0] = v45;
  v23[12].n128_u64[1] = v46;
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  v85 = OUTLINED_FUNCTION_14_35(v83);
  v86 = v47;
  v48 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v48);
  OUTLINED_FUNCTION_38_12();
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  v49 = OUTLINED_FUNCTION_14_35(v84);
  MEMORY[0x259C64E90](v49);

  v50 = v86;
  v23[13].n128_u64[0] = v85;
  v23[13].n128_u64[1] = v50;
  v91 = v23;
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  if (v87 != 1)
  {
    v51 = v86;
    v83 = v85;
    v85 = sub_257743974();
    v86 = v52;
    v53 = OUTLINED_FUNCTION_20_30();
    MEMORY[0x259C64E90](v53);
    v83 = v51;
    v54 = sub_257743974();
    MEMORY[0x259C64E90](v54);

    v55 = v86;
    sub_257469388();
    v23 = v56;
    v56[1].n128_u64[0] = 7;
    OUTLINED_FUNCTION_30_19();
    v59 = OUTLINED_FUNCTION_56_7(v57, v58);
    v59[15].n128_u64[1] = v55;
    v91 = v59;
  }

  v60 = v82;
  v61 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  OUTLINED_FUNCTION_296(v26 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType, &v85);
  sub_257487308(v26 + v61);
  v62 = 1;
  OUTLINED_FUNCTION_155(v12, 1, v60);
  if (!v63)
  {
    sub_257734A28();
    OUTLINED_FUNCTION_23_31();
    sub_257734A80();
    sub_257732934();
    OUTLINED_FUNCTION_22_28();
    sub_257734AD8();
    v62 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v62, 1, v16);
  v64 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v64, v65, v16);
  if (v63)
  {
    sub_2574695E4(v1, &qword_27F8811F8, &unk_257777F90);
  }

  else
  {
    sub_257734A28();
    OUTLINED_FUNCTION_3_75();
    sub_257734A80();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v67 = 1701667155;
    }

    else
    {
      v67 = 0x64696C6156;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v68 = 0xE400000000000000;
    }

    else
    {
      v68 = 0xE500000000000000;
    }

    sub_257734AD8();
    v69 = v23[1].n128_u64[0];
    if (v69 >= v23[1].n128_u64[1] >> 1)
    {
      sub_257469388();
      v23 = v80;
    }

    v23[1].n128_u64[0] = v69 + 1;
    v70 = &v23[2 * v69];
    v70[2].n128_u64[0] = 0x676E6964646150;
    v70[2].n128_u64[1] = 0xE700000000000000;
    v70[3].n128_u64[0] = v67;
    v70[3].n128_u64[1] = v68;
    v91 = v23;
    v71 = NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.propertyDescriptions.getter();
    sub_25763CEB8(v71);
    OUTLINED_FUNCTION_2_77();
    sub_257734AD8();
  }

  v72 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296(v26 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution, &v83);
  LODWORD(v23) = *(v26 + v72);
  v73 = v91;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v74 = v73[1].n128_u64[0];
  if (v74 >= v73[1].n128_u64[1] >> 1)
  {
    sub_257469388();
    v73 = v79;
  }

  v75 = 0xE500000000000000;
  if (v23)
  {
    v75 = 0xE400000000000000;
  }

  v76 = 1702195828;
  v73[1].n128_u64[0] = v74 + 1;
  v77 = &v73[2 * v74];
  strcpy(&v77[2], "Deconvolution");
  v77[2].n128_u16[7] = -4864;
  if (!v23)
  {
    v76 = 0x65736C6166;
  }

  v77[3].n128_u64[0] = v76;
  v77[3].n128_u64[1] = v75;
  OUTLINED_FUNCTION_35();
}

__n128 *NeuralNetwork.Layer.Convolution3DParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_54_8(v1, xmmword_257745520);
  v2[2].n128_u64[0] = v3;
  v2[2].n128_u64[1] = 0xEF736C656E6E6168;
  v4 = *(v0 + *(type metadata accessor for Proto_Convolution3DLayerParams(0) + 20));
  OUTLINED_FUNCTION_296((v4 + 4), v63);
  v62[0] = v4[4];
  OUTLINED_FUNCTION_263();
  v1[3].n128_u64[0] = sub_257743974();
  v1[3].n128_u64[1] = v5;
  strcpy(&v1[4], "Input Channels");
  v1[4].n128_u8[15] = -18;
  OUTLINED_FUNCTION_296((v4 + 5), v62);
  v61[0] = v4[5];
  OUTLINED_FUNCTION_263();
  v1[5].n128_u64[0] = sub_257743974();
  v1[5].n128_u64[1] = v6;
  OUTLINED_FUNCTION_63_6();
  v1[6].n128_u64[0] = v7;
  v1[6].n128_u64[1] = v8;
  OUTLINED_FUNCTION_296((v4 + 6), v61);
  v60[0] = v4[6];
  OUTLINED_FUNCTION_263();
  v1[7].n128_u64[0] = sub_257743974();
  v1[7].n128_u64[1] = v9;
  OUTLINED_FUNCTION_47_8();
  v1[8].n128_u64[0] = v10 & 0xFFFFFFFFFFFFLL | 0x5320000000000000;
  v1[8].n128_u64[1] = 0xEB00000000657A69;
  OUTLINED_FUNCTION_296((v4 + 7), v60);
  v59[0] = v4[7];
  OUTLINED_FUNCTION_263();
  v56 = sub_257743974();
  v57 = v11;
  v12 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v12);
  OUTLINED_FUNCTION_296((v4 + 8), v59);
  v58[0] = v4[8];
  OUTLINED_FUNCTION_263();
  v13 = sub_257743974();
  MEMORY[0x259C64E90](v13);

  v14 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v14);
  OUTLINED_FUNCTION_296((v4 + 9), v58);
  v55[0] = v4[9];
  OUTLINED_FUNCTION_263();
  v15 = sub_257743974();
  MEMORY[0x259C64E90](v15);

  v16 = v57;
  v1[9].n128_u64[0] = v56;
  v1[9].n128_u64[1] = v16;
  OUTLINED_FUNCTION_28_23();
  v1[10].n128_u64[0] = v17;
  v1[10].n128_u64[1] = 0xE700000000000000;
  OUTLINED_FUNCTION_296((v4 + 10), &v56);
  v55[0] = v4[10];
  OUTLINED_FUNCTION_263();
  v52 = sub_257743974();
  v53 = v18;
  v19 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v19);
  OUTLINED_FUNCTION_296((v4 + 11), v55);
  v54[0] = v4[11];
  OUTLINED_FUNCTION_263();
  v20 = sub_257743974();
  MEMORY[0x259C64E90](v20);

  v21 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v21);
  OUTLINED_FUNCTION_296((v4 + 12), v54);
  v51[0] = v4[12];
  OUTLINED_FUNCTION_263();
  v22 = sub_257743974();
  MEMORY[0x259C64E90](v22);

  v23 = v53;
  v1[11].n128_u64[0] = v52;
  v1[11].n128_u64[1] = v23;
  OUTLINED_FUNCTION_32_19();
  v1[12].n128_u64[0] = v24;
  v1[12].n128_u64[1] = v25;
  OUTLINED_FUNCTION_296((v4 + 13), &v52);
  v51[0] = v4[13];
  OUTLINED_FUNCTION_263();
  v48 = sub_257743974();
  v49 = v26;
  v27 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v27);
  OUTLINED_FUNCTION_296((v4 + 14), v51);
  v50[0] = v4[14];
  OUTLINED_FUNCTION_263();
  v28 = sub_257743974();
  MEMORY[0x259C64E90](v28);

  v29 = OUTLINED_FUNCTION_20_30();
  MEMORY[0x259C64E90](v29);
  OUTLINED_FUNCTION_296((v4 + 15), v50);
  OUTLINED_FUNCTION_263();
  v30 = sub_257743974();
  MEMORY[0x259C64E90](v30);

  v31 = v49;
  v1[13].n128_u64[0] = v48;
  v1[13].n128_u64[1] = v31;
  v32 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  OUTLINED_FUNCTION_296(v4 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape, &v48);
  v33 = *(*(v4 + v32) + 16);
  if (v33)
  {
    v47 = MEMORY[0x277D84F90];

    sub_257483754(0, v33, 0);
    v34 = 32;
    do
    {
      v35 = sub_257743974();
      v37 = v36;
      v39 = *(v47 + 16);
      v38 = *(v47 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_257483754((v38 > 1), v39 + 1, 1);
      }

      *(v47 + 16) = v39 + 1;
      v40 = v47 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
      v34 += 8;
      --v33;
    }

    while (v33);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
    sub_2574A16C8();
    OUTLINED_FUNCTION_20_30();
    sub_257743604();
    v42 = v41;

    sub_257469388();
    v1 = v43;
    v43[1].n128_u64[0] = 7;
    OUTLINED_FUNCTION_30_19();
    OUTLINED_FUNCTION_56_7(v44, v45)[31] = v42;
  }

  return v1;
}

void NeuralNetwork.Layer.ConvolutionParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v3 = *(v44 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v41 = (&v39 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_64();
  v43 = type metadata accessor for NeuralNetwork.WeightParameters(v8);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v42 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_28_31();
  v15 = type metadata accessor for Proto_WeightParams(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3();
  v19 = (v18 - v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v20 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v40 = *(v3 + 72);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2577442B0;
  v39 = v20;
  v22 = (v21 + v20);
  OUTLINED_FUNCTION_48_8();
  *v22 = v23;
  v22[1] = 0xE700000000000000;
  v24 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  v25 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v24 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, &v46);
  sub_257487308(v24 + v25);
  v26 = OUTLINED_FUNCTION_171_1();
  OUTLINED_FUNCTION_155(v26, v27, v15);
  if (v28)
  {
    *v19 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_65_7(xmmword_257745740);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v33 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v33, v34, v15);
    if (!v28)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  sub_2576FF45C(v19, (v22 + *(v44 + 48)));
  NeuralNetwork.Layer.ConvolutionParameters.bias.getter();
  OUTLINED_FUNCTION_155(v1, 1, v43);
  if (v28)
  {
    sub_2574695E4(v1, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_10_50();
    sub_257734A28();
    v35 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
    OUTLINED_FUNCTION_296(v24 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p, &v45);
    if (*(v24 + v35) == 1)
    {
      v36 = v41;
      *v41 = 1935763778;
      *(v36 + 8) = 0xE400000000000000;
      sub_257734A80();
      sub_257469D34();
      v38 = v37;
      OUTLINED_FUNCTION_1_93();
      sub_257734AD8();
      *(v38 + 16) = 2;
      sub_25749E9A8(v36, v38 + v39 + v40);
    }

    else
    {
      OUTLINED_FUNCTION_1_93();
      sub_257734AD8();
    }
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.Convolution3DParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  v1 = *(v54 - 8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v53 = (&v48 - v3);
  v4 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v52 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v9 = OUTLINED_FUNCTION_13(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v51 = v10 - v11;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v48 - v16;
  v18 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11();
  v48 = (v20 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = (&v48 - v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F90, &unk_257775F60);
  v25 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v50 = *(v1 + 72);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2577442B0;
  v49 = v25;
  v27 = (v26 + v25);
  OUTLINED_FUNCTION_48_8();
  *v27 = v28;
  v27[1] = 0xE700000000000000;
  v29 = *(v0 + *(type metadata accessor for Proto_Convolution3DLayerParams(0) + 20));
  v30 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v29 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, &v57);
  sub_257487308(v29 + v30);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    *v24 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
    OUTLINED_FUNCTION_155(v17, 1, v18);
    if (!v35)
    {
      sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  sub_2576FF45C(v24, (v27 + *(v54 + 48)));
  v36 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  OUTLINED_FUNCTION_296(v29 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_Convolution3DLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &v56);
  sub_257487308(v29 + v36);
  v37 = OUTLINED_FUNCTION_171_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v38, v18);
  sub_2574695E4(v15, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_296(v29 + 64, &v55);
    if (*(v29 + 64) == 1)
    {
      v40 = v51;
      sub_257487308(v29 + v36);
      OUTLINED_FUNCTION_155(v40, 1, v18);
      if (v35)
      {
        v45 = v48;
        *v48 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_3_24(xmmword_257745740);
        _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
        type metadata accessor for Proto_QuantizationParams(0);
        OUTLINED_FUNCTION_44();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
        OUTLINED_FUNCTION_155(v40, 1, v18);
        if (!v35)
        {
          sub_2574695E4(v40, &qword_27F87A1A0, &qword_257745750);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_112();
        v45 = v48;
        sub_257734A28();
      }

      sub_2576FF45C(v45, v52);
      v46 = v53;
      *v53 = 1935763778;
      *(v46 + 8) = 0xE400000000000000;
      OUTLINED_FUNCTION_10_50();
      sub_257734A28();
      sub_257469D34();
      *(v47 + 16) = 2;
      sub_25749E9A8(v46, v47 + v49 + v50);
    }
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_18_45(v1 + 16, v2);
  result = *(v1 + 16);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_18_45(v1 + 24, v2);
  result = *(v1 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.groupCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_18_45(v1 + 32, v2);
  result = *(v1 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206();
  result = OUTLINED_FUNCTION_18_45(v1 + 40, v3);
  v5 = *(v1 + 40);
  if (v5[2] != 2)
  {
    goto LABEL_5;
  }

  v6 = v5[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5[5];
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *v0 = v6;
      v0[1] = v7;
      return result;
    }

    __break(1u);
LABEL_5:
    v6 = 3;
    v7 = 3;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.strides.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206();
  result = OUTLINED_FUNCTION_18_45(v1 + 48, v3);
  v5 = *(v1 + 48);
  if (v5[2] != 2)
  {
    goto LABEL_5;
  }

  v6 = v5[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5[5];
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *v0 = v6;
      v0[1] = v7;
      return result;
    }

    __break(1u);
LABEL_5:
    v6 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206();
  result = OUTLINED_FUNCTION_18_45(v1 + 56, v3);
  v5 = *(v1 + 56);
  if (v5[2] != 2)
  {
    goto LABEL_5;
  }

  v6 = v5[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v5[5];
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_6:
      *v0 = v6;
      v0[1] = v7;
      return result;
    }

    __break(1u);
LABEL_5:
    v6 = 1;
    v7 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter()
{
  v2 = OUTLINED_FUNCTION_16_1();
  type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206();
  v3 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
  result = OUTLINED_FUNCTION_18_45(v1 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape, v4);
  v6 = *(v1 + v3);
  if (v6[2] == 2)
  {
    v7 = v6[4];
    if (v7 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = v6[5];
      if ((v8 & 0x8000000000000000) == 0)
      {
        *v0 = v7;
        *(v0 + 8) = v8;
        *(v0 + 16) = 0;
        return result;
      }
    }

    __break(1u);
  }

  else
  {
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
  }

  return result;
}

void NeuralNetwork.Layer.ConvolutionParameters.padding.getter()
{
  OUTLINED_FUNCTION_31();
  v3 = OUTLINED_FUNCTION_16_1();
  v4 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_64();
  type metadata accessor for Proto_ConvolutionLayerParams(v9);
  OUTLINED_FUNCTION_206();
  v10 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType, &v14);
  sub_257487308(v1 + v10);
  v11 = 1;
  OUTLINED_FUNCTION_155(v2, 1, v4);
  if (!v12)
  {
    OUTLINED_FUNCTION_9_47();
    sub_257734A28();
    OUTLINED_FUNCTION_23_31();
    sub_257734A80();
    sub_257732934();
    OUTLINED_FUNCTION_22_28();
    sub_257734AD8();
    v11 = 0;
  }

  v13 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(v0, v11, 1, v13);
  OUTLINED_FUNCTION_35();
}

void *NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.propertyDescriptions.getter()
{
  v1 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v3 = OUTLINED_FUNCTION_35_15();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters(v3);
  v5 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_75();
  sub_257734A80();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_8_49();
    sub_257734A28();
    if (*v0)
    {
      v8 = &unk_2868B32C0;
    }

    else
    {
      v8 = &unk_2868B3300;
    }

    if (*(v0 + 8))
    {
      v9 = v8;
    }

    else
    {
      v9 = &unk_2868B3300;
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_52();
    sub_257734A28();
    v9 = NeuralNetwork.ValidPaddingParameters.propertyDescriptions.getter();
    OUTLINED_FUNCTION_19_36();
  }

  sub_257734AD8();
  return v9;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.weights.getter@<X0>(uint64_t *a1@<X8>)
{
  v5 = OUTLINED_FUNCTION_211();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_19_30();
  v10 = type metadata accessor for Proto_WeightParams(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v12 = OUTLINED_FUNCTION_17_3();
  type metadata accessor for Proto_ConvolutionLayerParams(v12);
  OUTLINED_FUNCTION_206();
  v13 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, v24);
  OUTLINED_FUNCTION_72_4(v1 + v13);
  v14 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v14, v15, v10);
  if (v16)
  {
    *v2 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_50_3();
    OUTLINED_FUNCTION_155(v21, v22, v10);
    if (!v16)
    {
      sub_2574695E4(v3, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  return sub_2576FF45C(v2, a1);
}

void NeuralNetwork.Layer.ConvolutionParameters.bias.getter()
{
  OUTLINED_FUNCTION_31();
  v26 = v2;
  v3 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_211();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_13(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  v16 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  OUTLINED_FUNCTION_296(v15 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &v27);
  OUTLINED_FUNCTION_72_4(v15 + v16);
  v17 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v3);
  sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
  v19 = EnumTagSinglePayload == 1;
  v20 = v26;
  if (!v19)
  {
    sub_257487308(v15 + v16);
    OUTLINED_FUNCTION_155(v1, 1, v3);
    if (v19)
    {
      *v7 = MEMORY[0x277D84F90];
      *(v7 + 8) = xmmword_257745740;
      *(v7 + 24) = xmmword_257745740;
      *(v7 + 40) = xmmword_257745740;
      *(v7 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_155(v1, 1, v3);
      if (!v19)
      {
        sub_2574695E4(v1, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_112();
      sub_257734A28();
    }

    sub_2576FF45C(v7, v20);
    v17 = 0;
  }

  v25 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v20, v17, 1, v25);
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257731C9C()
{
  v2 = OUTLINED_FUNCTION_376();
  type metadata accessor for Proto_ConvolutionLayerParams(v2);
  OUTLINED_FUNCTION_206();
  v3 = *v0;
  OUTLINED_FUNCTION_18_45(v1 + v3, v4);
  return *(v1 + v3);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_376();
    v5 = *(type metadata accessor for Proto_ConvolutionLayerParams(v4) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      OUTLINED_FUNCTION_1_63();
      v8 = v10;
      *(v3 + v5) = v10;
    }

    result = OUTLINED_FUNCTION_237_0(v8 + 16, v7);
    *(v8 + 16) = v1;
  }

  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.outputChannelCount.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = OUTLINED_FUNCTION_37_16(v2);
  OUTLINED_FUNCTION_49_9(v3);
  result = OUTLINED_FUNCTION_296(v0 + 16, v1);
  v5 = *(v0 + 16);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v5;
    return sub_257731DC8;
  }

  return result;
}

void sub_257731DC8()
{
  OUTLINED_FUNCTION_46_13();
  if ((v5 & 1) == 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = v0 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v0 + 24;
LABEL_6:
  v7 = OUTLINED_FUNCTION_58_4();
  v8 = *(v3 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_1_63();
    v8 = v10;
    *(v4 + v3) = v10;
  }

  OUTLINED_FUNCTION_447(v8 + 16, v6);
  *(v8 + 16) = v2;

  free(v0);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_376();
    v5 = *(type metadata accessor for Proto_ConvolutionLayerParams(v4) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      OUTLINED_FUNCTION_1_63();
      v8 = v10;
      *(v3 + v5) = v10;
    }

    result = OUTLINED_FUNCTION_237_0(v8 + 24, v7);
    *(v8 + 24) = v1;
  }

  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.kernelChannelCount.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = OUTLINED_FUNCTION_37_16(v2);
  OUTLINED_FUNCTION_49_9(v3);
  result = OUTLINED_FUNCTION_296(v0 + 24, v1);
  v5 = *(v0 + 24);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v5;
    return sub_257731F48;
  }

  return result;
}

void sub_257731F48()
{
  OUTLINED_FUNCTION_46_13();
  if ((v5 & 1) == 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = v0 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v0 + 24;
LABEL_6:
  v7 = OUTLINED_FUNCTION_58_4();
  v8 = *(v3 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_1_63();
    v8 = v10;
    *(v4 + v3) = v10;
  }

  OUTLINED_FUNCTION_447(v8 + 24, v6);
  *(v8 + 24) = v2;

  free(v0);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.groupCount.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    v4 = OUTLINED_FUNCTION_376();
    v5 = *(type metadata accessor for Proto_ConvolutionLayerParams(v4) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v9);
      OUTLINED_FUNCTION_1_63();
      v8 = v10;
      *(v3 + v5) = v10;
    }

    result = OUTLINED_FUNCTION_237_0(v8 + 32, v7);
    *(v8 + 32) = v1;
  }

  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.groupCount.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = OUTLINED_FUNCTION_37_16(v2);
  OUTLINED_FUNCTION_49_9(v3);
  result = OUTLINED_FUNCTION_296(v0 + 32, v1);
  v5 = *(v0 + 32);
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v5;
    return sub_2577320C8;
  }

  return result;
}

void sub_2577320C8()
{
  OUTLINED_FUNCTION_46_13();
  if ((v5 & 1) == 0)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = v0 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v0 + 24;
LABEL_6:
  v7 = OUTLINED_FUNCTION_58_4();
  v8 = *(v3 + v1);
  if ((v7 & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_57_5();
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_1_63();
    v8 = v10;
    *(v4 + v3) = v10;
  }

  OUTLINED_FUNCTION_447(v8 + 32, v6);
  *(v8 + 32) = v2;

  free(v0);
}

double sub_25773215C@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.kernelSize.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_12(a1);
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  return OUTLINED_FUNCTION_43();
}

double sub_25773223C@<D0>(uint64_t a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_257732280(__int128 *a1)
{
  v1 = *(a1 + 16);
  v3 = *a1;
  v4 = v1;
  return NeuralNetwork.Layer.ConvolutionParameters.outputShape.setter(&v3);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputShape.setter(uint64_t *a1)
{
  v2 = v1;
  if (a1[2])
  {
    v3 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v7);
      OUTLINED_FUNCTION_1_63();
      v6 = v8;
      *(v2 + v3) = v8;
    }

    v9 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape;
    OUTLINED_FUNCTION_237_0(v6 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__outputShape, v5);
    *(v6 + v9) = MEMORY[0x277D84F90];
  }

  v12 = *a1;
  v11 = a1[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6(v13);
  *(result + 16) = xmmword_257743FF0;
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(result + 32) = v12;
  if (v11 < 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(result + 40) = v11;

  return sub_257531298();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.outputShape.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_2577323F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  return NeuralNetwork.Layer.ConvolutionParameters.outputShape.setter(v4);
}

double sub_257732438@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.strides.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_12(a1);
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  return OUTLINED_FUNCTION_43();
}

double sub_257732518@<D0>(_OWORD *a1@<X8>)
{
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2577325A4(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v2 = a1[1];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6(v4);
  *(result + 16) = xmmword_257743FF0;
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = v3;
  if (v2 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(result + 40) = v2;

  return a2();
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_45_12(a1);
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  return OUTLINED_FUNCTION_43();
}

uint64_t sub_257732680(uint64_t *a1, char a2, uint64_t (*a3)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F98, &unk_2577448C8);
  result = OUTLINED_FUNCTION_13_6(v7);
  *(result + 16) = xmmword_257743FF0;
  if (a2)
  {
    if (v6 < 0)
    {
      __break(1u);
      goto LABEL_9;
    }

    *(result + 32) = v6;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_7:
      *(result + 40) = v5;
      return a3();
    }

    __break(1u);
  }

  if (v6 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 32) = v6;
  if ((v5 & 0x8000000000000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.padding.setter(uint64_t a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_211();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_421();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_72_4(a1);
  v11 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  OUTLINED_FUNCTION_155(v1, 1, v11);
  if (v12)
  {
    sub_2574695E4(v1, &qword_27F8811F8, &unk_257777F90);
    v13 = 1;
  }

  else
  {
    sub_2577329D0();
    OUTLINED_FUNCTION_2_77();
    sub_257734AD8();
    v13 = 0;
  }

  v14 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  __swift_storeEnumTagSinglePayload(v2, v13, 1, v14);
  v15 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_2574695E4(a1, &qword_27F8811F8, &unk_257777F90);
  }

  else
  {
    v16 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v16);

    sub_25759AD38();
    v18 = v17;
    sub_2574695E4(a1, &qword_27F8811F8, &unk_257777F90);

    *(v3 + v15) = v18;
  }

  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

uint64_t sub_257732934()
{
  type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_205();
  sub_257734A28();
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2577329D0()
{
  v0 = OUTLINED_FUNCTION_16_1();
  v1 = type metadata accessor for NeuralNetwork.SamePaddingParameters(v0);
  v2 = OUTLINED_FUNCTION_13(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters(0);
  v4 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_75();
  sub_257734A80();
  OUTLINED_FUNCTION_211();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_8_49();
  }

  else
  {
    OUTLINED_FUNCTION_7_52();
  }

  sub_257734A28();
  sub_257734A28();
  type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  return swift_storeEnumTagMultiPayload();
}

void NeuralNetwork.Layer.ConvolutionParameters.padding.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  OUTLINED_FUNCTION_4();
  v3[4] = __swift_coroFrameAllocStub(*(v5 + 64));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v6);
  v3[5] = __swift_coroFrameAllocStub(*(v7 + 64));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[6] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[7] = v11;
  type metadata accessor for Proto_ConvolutionLayerParams(0);
  OUTLINED_FUNCTION_206();
  v12 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType, v3);
  sub_257487308(v0 + v12);
  v13 = 1;
  v14 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v14, v15, v4);
  if (!v16)
  {
    OUTLINED_FUNCTION_9_47();
    sub_257734A28();
    sub_257732934();
    v13 = 0;
  }

  v17 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(v11, v13, 1, v17);
  OUTLINED_FUNCTION_35();
}

void sub_257732CE8()
{
  OUTLINED_FUNCTION_64_7();
  if (v5)
  {
    sub_257487308(v4);
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v3);
    sub_2574695E4(v4, &qword_27F8811F8, &unk_257777F90);
  }

  else
  {
    NeuralNetwork.Layer.ConvolutionParameters.padding.setter(v4);
  }

  free(v4);
  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

void (*NeuralNetwork.Layer.ConvolutionParameters.isDeconvolution.modify())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_71_5(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296(v4 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution, v1);
  *(v1 + 84) = *(v4 + v5);
  return sub_257732E28;
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.weightsShape.getter()
{
  v1 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  v2 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296(v1 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution, v16);
  v3 = *(v1 + v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_257744E70;
  if (v3 != 1)
  {
    result = OUTLINED_FUNCTION_296((v1 + 2), v15);
    v10 = v1[2];
    if ((v10 & 0x8000000000000000) == 0)
    {
      *(v4 + 32) = v10;
      result = OUTLINED_FUNCTION_296((v1 + 3), v14);
      v11 = v1[3];
      if ((v11 & 0x8000000000000000) == 0)
      {
        *(v4 + 40) = v11;
        NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
        *(v4 + 48) = v13[0];
        NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
        v9 = v13[4];
        goto LABEL_10;
      }

      goto LABEL_14;
    }

    goto LABEL_12;
  }

  result = OUTLINED_FUNCTION_296((v1 + 3), v15);
  v6 = v1[3];
  if (v6 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v4 + 32) = v6;
  result = OUTLINED_FUNCTION_296((v1 + 2), v14);
  v7 = v1[2];
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = OUTLINED_FUNCTION_296((v1 + 4), v13);
  v8 = v1[4];
  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    *(v4 + 40) = v7 / v8;
    NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
    *(v4 + 48) = v13[3];
    NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
    v9 = v12;
LABEL_10:
    *(v4 + 56) = v9;
    return v4;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_257732F98(uint64_t a1)
{
  v1 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257734A80();
  return NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v3);
}

uint64_t NeuralNetwork.Layer.ConvolutionParameters.weights.setter(uint64_t a1)
{
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_35_15();
  v7 = type metadata accessor for Proto_WeightParams(v6);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_21_34();
  sub_257734A80();
  v9 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();
  }

  else
  {
    v10 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);

    sub_25759AD38();
    v12 = v11;
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();

    *(v3 + v9) = v12;
  }

  OUTLINED_FUNCTION_0_112();
  sub_257734A28();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v7);
  swift_beginAccess();
  sub_25751BB28();
  return swift_endAccess();
}

void NeuralNetwork.Layer.ConvolutionParameters.weights.modify()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v3[5] = v9;
  v10 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_13(v10);
  v12 = *(v11 + 64);
  v3[6] = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  v3[7] = v13;
  type metadata accessor for Proto_ConvolutionLayerParams(0);
  OUTLINED_FUNCTION_206();
  v14 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, v3);
  sub_257487308(v0 + v14);
  OUTLINED_FUNCTION_155(v6, 1, v7);
  if (v15)
  {
    *v9 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3_24(xmmword_257745740);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_155(v6, 1, v7);
    if (!v15)
    {
      sub_2574695E4(v6, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  sub_2576FF45C(v9, v13);
  OUTLINED_FUNCTION_35();
}

void sub_2577333B0()
{
  OUTLINED_FUNCTION_64_7();
  if (v5)
  {
    sub_257734A80();
    NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v3);
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();
  }

  else
  {
    NeuralNetwork.Layer.ConvolutionParameters.weights.setter(v4);
  }

  free(v4);
  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t sub_257733458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_1();
  v11 = OUTLINED_FUNCTION_211();
  sub_257487308(v11);
  return a7(v7);
}

void NeuralNetwork.Layer.ConvolutionParameters.bias.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32_3();
  v7 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_19_30();
  v12 = type metadata accessor for NeuralNetwork.WeightParameters(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_1();
  sub_257487308(v4);
  v14 = OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_155(v14, v15, v12);
  if (v16)
  {
    sub_2574695E4(v1, &qword_27F880938, &unk_25776E510);
    v17 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
    }

    else
    {
      v18 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v18);

      sub_25759AD38();
      v20 = v19;
      sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);

      *(v2 + v17) = v20;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
    swift_beginAccess();
    sub_25751BB28();
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_10_50();
    sub_257734A28();
    OUTLINED_FUNCTION_21_34();
    sub_257734A80();
    sub_257531250(v0);
    sub_2574695E4(v4, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_1_93();
    sub_257734AD8();
  }

  OUTLINED_FUNCTION_35();
}

void (*NeuralNetwork.Layer.ConvolutionParameters.bias.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.ConvolutionParameters.bias.getter();
  return sub_257733818;
}

void sub_257733818(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_257487308(*(a1 + 16));
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter();
    v4 = OUTLINED_FUNCTION_263();
    sub_2574695E4(v4, v5, &unk_25776E510);
  }

  else
  {
    NeuralNetwork.Layer.ConvolutionParameters.bias.setter();
  }

  free(v3);

  free(v2);
}

uint64_t sub_2577338BC(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v10);
    OUTLINED_FUNCTION_1_63();
    v9 = v11;
    *(v4 + v6) = v11;
  }

  v12 = *a2;
  result = OUTLINED_FUNCTION_237_0(v9 + v12, v8);
  *(v9 + v12) = a1 & 1;
  return result;
}

void (*NeuralNetwork.Layer.ConvolutionParameters.hasBias.modify())(uint64_t *a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  v3 = *(OUTLINED_FUNCTION_71_5(v2) + 20);
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_296(v4 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p, v1);
  *(v1 + 84) = *(v4 + v5);
  return sub_2577339C0;
}

void sub_2577339CC(uint64_t *a1, char a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *(*a1 + 80);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 80);
    v12 = *(v5 + 72);
    v13 = type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v13);
    OUTLINED_FUNCTION_1_63();
    v10 = v14;
    *(v12 + v11) = v14;
  }

  v15 = 48;
  if (a2)
  {
    v15 = 24;
  }

  v16 = *a3;
  OUTLINED_FUNCTION_447(v10 + v16, v5 + v15);
  *(v10 + v16) = v8;

  free(v5);
}

uint64_t sub_257733AF8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a5@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v9 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

void NeuralNetwork.Layer.ConvolutionParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v5 = sub_257743A84();
  v69 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v68 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v67 = v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_28_31();
  v64 = type metadata accessor for Proto_WeightParams(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  v18 = type metadata accessor for Proto_ConvolutionLayerParams.OneOf_ConvolutionPaddingType(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3();
  v62[1] = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87F7A0, &qword_257777FA0);
  OUTLINED_FUNCTION_13(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_32_3();
  v66 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3();
  v65 = v26 - v25;
  sub_257734A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257777F80;
  *(v27 + 32) = 0xD000000000000012;
  *(v27 + 40) = 0x8000000257781DA0;
  v28 = *(v0 + *(type metadata accessor for Proto_ConvolutionLayerParams(0) + 20));
  OUTLINED_FUNCTION_296((v28 + 2), &v76);
  v29 = v28[2];
  if (v29 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v63 = v5;
  v30 = MEMORY[0x277D83B88];
  *(v27 + 48) = v29;
  *(v27 + 72) = v30;
  *(v27 + 80) = 0xD000000000000012;
  *(v27 + 88) = 0x8000000257782160;
  OUTLINED_FUNCTION_296((v28 + 3), &v75);
  v31 = v28[3];
  if (v31 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v27 + 96) = v31;
  *(v27 + 120) = v30;
  *(v27 + 128) = 0x756F4370756F7267;
  *(v27 + 136) = 0xEA0000000000746ELL;
  OUTLINED_FUNCTION_296((v28 + 4), &v74);
  v32 = v28[4];
  if (v32 < 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v62[2] = v4;
  *(v27 + 144) = v32;
  *(v27 + 168) = v30;
  *(v27 + 176) = 0x69536C656E72656BLL;
  *(v27 + 184) = 0xEA0000000000657ALL;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881238, &unk_257773F10);
  *(v27 + 216) = v33;
  NeuralNetwork.Layer.ConvolutionParameters.kernelSize.getter();
  OUTLINED_FUNCTION_30_19();
  *(v27 + 224) = v34;
  *(v27 + 232) = 0xEB00000000657061;
  *(v27 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A78, &qword_257777FA8);
  NeuralNetwork.Layer.ConvolutionParameters.outputShape.getter();
  OUTLINED_FUNCTION_28_23();
  *(v27 + 272) = v35;
  *(v27 + 280) = 0xE700000000000000;
  *(v27 + 312) = v33;
  NeuralNetwork.Layer.ConvolutionParameters.strides.getter();
  strcpy((v27 + 320), "dilationFactor");
  *(v27 + 335) = -18;
  *(v27 + 360) = v33;
  NeuralNetwork.Layer.ConvolutionParameters.dilationFactor.getter();
  *(v27 + 368) = 0x676E6964646170;
  *(v27 + 376) = 0xE700000000000000;
  *(v27 + 408) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8811F8, &unk_257777F90);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v27 + 384));
  v37 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType;
  OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__convolutionPaddingType, &v73);
  sub_257487308(v28 + v37);
  v38 = 1;
  OUTLINED_FUNCTION_155(v1, 1, v18);
  if (!v39)
  {
    OUTLINED_FUNCTION_9_47();
    sub_257734A28();
    sub_257732934();
    v38 = 0;
  }

  v40 = type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  __swift_storeEnumTagSinglePayload(boxed_opaque_existential_0, v38, 1, v40);
  *(v27 + 416) = 0x766E6F6365447369;
  *(v27 + 424) = 0xEF6E6F6974756C6FLL;
  v41 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution;
  OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__isDeconvolution, &v72);
  v42 = *(v28 + v41);
  v43 = MEMORY[0x277D839B0];
  *(v27 + 432) = v42;
  OUTLINED_FUNCTION_48_8();
  *(v27 + 456) = v43;
  *(v27 + 464) = v44;
  *(v27 + 472) = 0xE700000000000000;
  *(v27 + 504) = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v45 = __swift_allocate_boxed_opaque_existential_0((v27 + 480));
  v46 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, &v71);
  sub_257487308(v28 + v46);
  v47 = OUTLINED_FUNCTION_171_1();
  v48 = v64;
  OUTLINED_FUNCTION_155(v47, v49, v64);
  if (v39)
  {
    *v17 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_65_7(xmmword_257745740);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    v54 = OUTLINED_FUNCTION_171_1();
    OUTLINED_FUNCTION_155(v54, v55, v48);
    if (!v39)
    {
      sub_2574695E4(v2, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_112();
    sub_257734A28();
  }

  sub_2576FF45C(v17, v45);
  *(v27 + 512) = 1935763810;
  *(v27 + 520) = 0xE400000000000000;
  *(v27 + 552) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  __swift_allocate_boxed_opaque_existential_0((v27 + 528));
  NeuralNetwork.Layer.ConvolutionParameters.bias.getter();
  *(v27 + 560) = 0x73616942736168;
  *(v27 + 568) = 0xE700000000000000;
  v56 = OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p;
  OUTLINED_FUNCTION_296(v28 + OBJC_IVAR____TtCV20MLModelSpecification28Proto_ConvolutionLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__hasBias_p, &v70);
  v57 = *(v28 + v56);
  *(v27 + 600) = v43;
  *(v27 + 576) = v57;
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  (*(v69 + 104))(v68, *MEMORY[0x277D84C38], v63);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

void static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.valid(leadingHeight:trailingHeight:leadingWidth:trailingWidth:)()
{
  OUTLINED_FUNCTION_31();
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Proto_BorderAmounts(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v13 = OUTLINED_FUNCTION_35_15();
  v14 = type metadata accessor for NeuralNetwork.Border.EdgeSizes(v13);
  v15 = OUTLINED_FUNCTION_13(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v16);
  v33 = v31 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD0, &qword_257777FB0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_1();
  v20 = type metadata accessor for NeuralNetwork.Border(0);
  v21 = OUTLINED_FUNCTION_13(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v24 = (v23 - v22);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v34 = *(type metadata accessor for Proto_ValidPadding(0) + 20);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v11);
  *v24 = MEMORY[0x277D84F90];
  v32 = v24;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_BorderAmounts.EdgeSizes(0);
  *v1 = 0;
  v1[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v8 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *v1 = v8;
  if (v6 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v1[1] = v6;
  v28 = (v1 + *(v18 + 36));
  *v28 = 0;
  v28[1] = 0;
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (v4 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v28 = v4;
  if ((v35 & 0x8000000000000000) == 0)
  {
    v28[1] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AD8, &unk_257744020);
    v31[1] = v0;
    v35 = v11;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_257743FF0;
    sub_257734A80();
    sub_257734A28();
    sub_257734A80();
    sub_257734A28();
    sub_2574695E4(v1, &qword_27F879AD0, &qword_257777FB0);
    *v32 = v29;
    sub_257734A28();
    v30 = v34;
    sub_2574695E4(v10 + v34, &qword_27F879AC8, &unk_257744010);
    sub_257734A28();
    __swift_storeEnumTagSinglePayload(v10 + v30, 0, 1, v35);
    type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_35();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.same(asymmetryMode:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *a2 = 0;
  *(a2 + 8) = 1;
  type metadata accessor for Proto_SamePadding(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  *(a2 + 8) = 1;
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);

  return swift_storeEnumTagMultiPayload();
}

void static NeuralNetwork.Layer.ConvolutionParameters.PaddingKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for NeuralNetwork.SamePaddingParameters(0);
  v25 = OUTLINED_FUNCTION_13(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_3();
  v26 = OUTLINED_FUNCTION_17_3();
  valid = type metadata accessor for NeuralNetwork.ValidPaddingParameters(v26);
  v28 = OUTLINED_FUNCTION_13(valid);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_421();
  type metadata accessor for NeuralNetwork.Layer.ConvolutionParameters.PaddingKind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_329();
  MEMORY[0x28223BE20](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A80, &qword_257777FB8);
  OUTLINED_FUNCTION_13(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  sub_257734A80();
  sub_257734A80();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_3_75();
    sub_257734A80();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_8_49();
      sub_257734A28();
      v35 = *v21;
      v36 = *v20;
      if (*(v21 + 8))
      {
        v35 = *v21 != 0;
      }

      if (*(v20 + 8) == 1)
      {
        if (v36)
        {
          if (v35 != 1)
          {
LABEL_8:
            OUTLINED_FUNCTION_4_67();
            sub_257734AD8();
LABEL_16:
            OUTLINED_FUNCTION_4_67();
            sub_257734AD8();
            OUTLINED_FUNCTION_2_77();
            sub_257734AD8();
            goto LABEL_17;
          }
        }

        else if (v35)
        {
          goto LABEL_8;
        }
      }

      else if (v35 != v36)
      {
        goto LABEL_8;
      }

      type metadata accessor for Proto_SamePadding(0);
      sub_2577431B4();
      sub_257734BDC(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      sub_257743644();
      OUTLINED_FUNCTION_4_67();
      sub_257734AD8();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_4_67();
  }

  else
  {
    OUTLINED_FUNCTION_3_75();
    sub_257734A80();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_7_52();
      sub_257734A28();
      _s20MLModelSpecification13NeuralNetworkV22ValidPaddingParametersV2eeoiySbAE_AEtFZ_0();
      sub_257734AD8();
      sub_257734AD8();
      OUTLINED_FUNCTION_2_77();
      sub_257734AD8();
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_19_36();
  }

  sub_257734AD8();
  sub_2574695E4(v34, &qword_27F881A80, &qword_257777FB8);
LABEL_17:
  OUTLINED_FUNCTION_35();
}

uint64_t sub_257734A28()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_257734A80()
{
  OUTLINED_FUNCTION_267();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_205();
  v3(v2);
  return v0;
}

uint64_t sub_257734AD8()
{
  v1 = OUTLINED_FUNCTION_376();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_257734BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257734CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_257734D34(uint64_t a1)
{
  result = type metadata accessor for NeuralNetwork.ValidPaddingParameters(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NeuralNetwork.SamePaddingParameters(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_35@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_257743974();
}

uint64_t OUTLINED_FUNCTION_18_45(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_37_16(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;

  return type metadata accessor for Proto_ConvolutionLayerParams(0);
}

void *OUTLINED_FUNCTION_56_7@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[28] = a2;
  result[29] = 0xEB00000000657061;
  result[30] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_5()
{

  return type metadata accessor for Proto_ConvolutionLayerParams._StorageClass(0);
}

uint64_t OUTLINED_FUNCTION_58_4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_65_7(__n128 a1)
{
  *(v1 + 8) = a1;
  *(v1 + 24) = a1;
  *(v1 + 40) = a1;
  *(v1 + 56) = 0;
}

uint64_t OUTLINED_FUNCTION_71_5(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Proto_ConvolutionLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_72_4(uint64_t a1)
{

  return sub_257487308(a1);
}

double NeuralNetwork.Layer.GELUParameters.propertyDescriptions.getter()
{
  v1 = 0x7463617845;
  if (*(v0 + 8) == 1)
  {
    v2 = 0x80000002577814C0;
    v3 = 0xD000000000000020;
    if (*v0 != 1)
    {
      v3 = 0xD000000000000015;
      v2 = 0x80000002577814A0;
    }

    if (*v0)
    {
      v1 = v3;
      v4 = v2;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_2577442B0;
  *(v5 + 32) = 1701080909;
  *(v5 + 40) = 0xE400000000000000;
  *(v5 + 48) = v1;
  *(v5 + 56) = v4;
  return result;
}

uint64_t static NeuralNetwork.Layer.gelu(name:inputName:outputName:mode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a1;
  v29 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = type metadata accessor for NeuralNetwork.Layer.Kind(0);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3();
  v20 = v19 - v18;
  v27 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v21 = swift_allocObject();
  v26 = xmmword_2577442B0;
  *(v21 + 16) = xmmword_2577442B0;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = v26;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  *v20 = 0;
  *(v20 + 8) = 1;
  type metadata accessor for Proto_GeluLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v20 = v27;
  *(v20 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v23 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a8 + v23) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v22);
  sub_2574897E0(v16);
  v24 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v24);
  sub_25752846C();
  return sub_257634BB4(v20);
}

uint64_t static NeuralNetwork.Layer.Kind.gelu(mode:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_78(a1);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v2;
  *(v1 + 8) = v3;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NeuralNetwork.Layer.GELUParameters.init(mode:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_78(a1);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

void NeuralNetwork.Layer.GELUParameters.mode.getter(_BYTE *a1@<X8>)
{
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
}

unsigned __int8 *NeuralNetwork.Layer.GELUParameters.mode.setter(unsigned __int8 *result)
{
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

uint64_t *(*NeuralNetwork.Layer.GELUParameters.mode.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (v1[8] == 1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_25749B4B4;
}

BOOL static NeuralNetwork.Layer.GELUParameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Proto_GeluLayerParams(0);
  sub_2577431B4();
  sub_257735B40(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return (sub_257743644() & 1) != 0;
}

uint64_t NeuralNetwork.Layer.GELUParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_GeluLayerParams(0);
  OUTLINED_FUNCTION_0_113();
  sub_257735B40(v1, v2, &unk_257766438);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.GELUParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_GeluLayerParams(0);
  OUTLINED_FUNCTION_0_113();
  sub_257735B40(v0, v1, &unk_257766438);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257735758(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_GeluLayerParams(0);
  sub_257735B40(&qword_27F87D5F8, type metadata accessor for Proto_GeluLayerParams, &unk_257766438);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.GELUParameters.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NeuralNetwork.Layer.GELUParameters(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257735A2C(v0, v11 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2577442B0;
  *(v12 + 32) = 1701080941;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 72) = &type metadata for NeuralNetwork.Layer.GELUParameters.Mode;
  NeuralNetwork.Layer.GELUParameters.mode.getter((v12 + 48));
  v13 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v13);
  (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.GELUParameters(uint64_t a1)
{
  result = qword_27F881AC8;
  if (!qword_27F881AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257735A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.GELUParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t NeuralNetwork.Layer.GELUParameters.Mode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257735B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257735B90@<X0>(uint64_t *a1@<X8>)
{
  result = NeuralNetwork.Layer.GELUParameters.Mode.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_257735BBC()
{
  result = qword_27F881AC0;
  if (!qword_27F881AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881AC0);
  }

  return result;
}

uint64_t sub_257735C38(uint64_t a1)
{
  result = type metadata accessor for Proto_GeluLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s14GELUParametersV4ModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_2_78@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;

  return type metadata accessor for Proto_GeluLayerParams(0);
}

uint64_t static IdentityModelConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2577431B4();
  sub_2577362F8(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_257743644() & 1;
}

uint64_t IdentityModelConfiguration.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_Identity(0);
  OUTLINED_FUNCTION_0_114();
  sub_2577362F8(v1, v2, &unk_25774B59C);

  return sub_2577435F4();
}

uint64_t IdentityModelConfiguration.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_Identity(0);
  OUTLINED_FUNCTION_0_114();
  sub_2577362F8(v0, v1, &unk_25774B59C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_257735F40(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_Identity(0);
  sub_2577362F8(&qword_27F87AE78, type metadata accessor for Proto_Identity, &unk_25774B59C);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t IdentityModelConfiguration.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for IdentityModelConfiguration(0);
  MEMORY[0x28223BE20](v9);
  sub_257736200(v1, v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[1] = MEMORY[0x277D84F90];
  v11 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879C08, &qword_2577709D0);
  sub_25748397C();
  return sub_257743A94();
}

uint64_t type metadata accessor for IdentityModelConfiguration(uint64_t a1)
{
  result = qword_281537970;
  if (!qword_281537970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257736200(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityModelConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577362F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257736368(uint64_t a1)
{
  result = type metadata accessor for Proto_Identity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_257736400(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_257736440(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25773648C(uint64_t a1)
{
  v3 = type metadata accessor for FeatureDescription(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v88 = (&v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v95 = &v87 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v89 = (&v87 - v10);
  MEMORY[0x28223BE20](v9);
  v93 = (&v87 - v11);
  v87 = a1;
  Model.inputs.getter();
  v13 = *(v12 + 16);
  v94 = v4;
  v92 = v13;
  if (v13)
  {
    v14 = 0;
    OUTLINED_FUNCTION_6_64();
    v16 = MEMORY[0x277D84F98];
    v90 = v15;
    v91 = v15 + v17;
    while (v14 < *(v15 + 16))
    {
      v18 = v93;
      sub_2577179F4(v91 + *(v4 + 72) * v14, v93);
      OUTLINED_FUNCTION_14_36();
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);

      OUTLINED_FUNCTION_0_115();
      sub_2577376DC(v18, v21);
      swift_isUniquelyReferenced_nonNull_native();
      v96 = v16;
      v22 = OUTLINED_FUNCTION_292();
      v24 = sub_25765368C(v22, v23);
      if (__OFADD__(v16[2], (v25 & 1) == 0))
      {
        goto LABEL_46;
      }

      v26 = v24;
      v27 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B20, &qword_2577783E0);
      OUTLINED_FUNCTION_8_50();
      if (sub_257743894())
      {
        v28 = OUTLINED_FUNCTION_292();
        sub_25765368C(v28, v29);
        OUTLINED_FUNCTION_7_53();
        if (!v31)
        {
          goto LABEL_54;
        }

        v26 = v30;
      }

      if (v27)
      {

        v16 = v96;
        v32 = (v96[7] + 16 * v26);
        *v32 = v19;
        v32[1] = v20;
      }

      else
      {
        v16 = v96;
        OUTLINED_FUNCTION_5_62(&v96[v26 >> 6]);
        v33 = (v16[6] + 16 * v26);
        *v33 = v1;
        v33[1] = v4;
        v34 = (v16[7] + 16 * v26);
        *v34 = v19;
        v34[1] = v20;
        v35 = v16[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_51;
        }

        v16[2] = v37;
      }

      ++v14;
      v4 = v94;
      v15 = v90;
      if (v92 == v14)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v16 = MEMORY[0x277D84F98];
LABEL_16:
  v93 = v16;
  Model.outputs.getter();
  v92 = *(v38 + 16);
  if (!v92)
  {
    v41 = MEMORY[0x277D84F98];
LABEL_31:

    Model.trainingInput.getter();
    v62 = v93;
    v92 = *(v61 + 16);
    if (!v92)
    {
LABEL_44:

      sub_2577376DC(v87, type metadata accessor for Model);
      return v62;
    }

    v63 = 0;
    OUTLINED_FUNCTION_6_64();
    v65 = MEMORY[0x277D84F98];
    v90 = v64;
    v91 = v64 + v66;
    v89 = v41;
    while (1)
    {
      if (v63 >= *(v64 + 16))
      {
        goto LABEL_49;
      }

      v67 = v91 + *(v4 + 72) * v63;
      v68 = v88;
      sub_2577179F4(v67, v88);
      v69 = *v68;
      v70 = v68[1];
      v71 = v68;
      v72 = v95;
      sub_257737678(v71, v95);
      v73 = *(v72 + 16);
      v74 = *(v72 + 24);

      OUTLINED_FUNCTION_0_115();
      sub_2577376DC(v72, v75);
      swift_isUniquelyReferenced_nonNull_native();
      v96 = v65;
      v76 = sub_25765368C(v69, v70);
      if (__OFADD__(v65[2], (v77 & 1) == 0))
      {
        goto LABEL_50;
      }

      v78 = v76;
      v79 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B20, &qword_2577783E0);
      OUTLINED_FUNCTION_8_50();
      if (sub_257743894())
      {
        sub_25765368C(v69, v70);
        OUTLINED_FUNCTION_7_53();
        v62 = v93;
        if (!v31)
        {
          goto LABEL_54;
        }

        v78 = v80;
        if ((v79 & 1) == 0)
        {
LABEL_39:
          v65 = v96;
          OUTLINED_FUNCTION_5_62(&v96[v78 >> 6]);
          v81 = (v65[6] + 16 * v78);
          *v81 = v69;
          v81[1] = v70;
          v82 = (v65[7] + 16 * v78);
          *v82 = v73;
          v82[1] = v74;
          v83 = v65[2];
          v36 = __OFADD__(v83, 1);
          v84 = v83 + 1;
          if (v36)
          {
            goto LABEL_53;
          }

          v65[2] = v84;
          goto LABEL_43;
        }
      }

      else
      {
        v62 = v93;
        if ((v79 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      v65 = v96;
      v85 = (v96[7] + 16 * v78);
      *v85 = v73;
      v85[1] = v74;

LABEL_43:
      ++v63;
      v4 = v94;
      v64 = v90;
      if (v92 == v63)
      {
        goto LABEL_44;
      }
    }
  }

  v39 = 0;
  OUTLINED_FUNCTION_6_64();
  v41 = MEMORY[0x277D84F98];
  v90 = v40;
  v91 = v40 + v42;
  while (v39 < *(v40 + 16))
  {
    v43 = v89;
    sub_2577179F4(v91 + *(v4 + 72) * v39, v89);
    OUTLINED_FUNCTION_14_36();
    v44 = *(v43 + 16);
    v45 = *(v43 + 24);

    OUTLINED_FUNCTION_0_115();
    sub_2577376DC(v43, v46);
    swift_isUniquelyReferenced_nonNull_native();
    v96 = v41;
    v47 = OUTLINED_FUNCTION_292();
    v49 = sub_25765368C(v47, v48);
    if (__OFADD__(v41[2], (v50 & 1) == 0))
    {
      goto LABEL_48;
    }

    v51 = v49;
    v52 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B20, &qword_2577783E0);
    OUTLINED_FUNCTION_8_50();
    if (sub_257743894())
    {
      v53 = OUTLINED_FUNCTION_292();
      sub_25765368C(v53, v54);
      OUTLINED_FUNCTION_7_53();
      if (!v31)
      {
        goto LABEL_54;
      }

      v51 = v55;
    }

    if (v52)
    {

      v41 = v96;
      v56 = (v96[7] + 16 * v51);
      *v56 = v44;
      v56[1] = v45;
    }

    else
    {
      v41 = v96;
      OUTLINED_FUNCTION_5_62(&v96[v51 >> 6]);
      v57 = (v41[6] + 16 * v51);
      *v57 = v1;
      v57[1] = v4;
      v58 = (v41[7] + 16 * v51);
      *v58 = v44;
      v58[1] = v45;
      v59 = v41[2];
      v36 = __OFADD__(v59, 1);
      v60 = v59 + 1;
      if (v36)
      {
        goto LABEL_52;
      }

      v41[2] = v60;
    }

    ++v39;
    v4 = v94;
    v40 = v90;
    if (v92 == v39)
    {
      goto LABEL_31;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_2577439B4();
  __break(1u);
  return result;
}

unint64_t sub_257736AAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_257743914();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_257736AF8(char a1)
{
  if (!a1)
  {
    return 0x737475706E49;
  }

  if (a1 == 1)
  {
    return 0x7374757074754FLL;
  }

  return 0x676E696E69617254;
}

uint64_t sub_257736B58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881AE0, &qword_2577783C8);
  OUTLINED_FUNCTION_63();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2577370A4();
  sub_257743AC4();
  v17 = a2;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881AF0, &qword_2577783D0);
  sub_25773714C(&qword_27F881AF8, sub_2577370F8, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  OUTLINED_FUNCTION_3_76();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    OUTLINED_FUNCTION_3_76();
    v17 = a4;
    v16 = 2;
    OUTLINED_FUNCTION_3_76();
  }

  return (*(v10 + 8))(v13, v8);
}

uint64_t sub_257736D10(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B08, &qword_2577783D8);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v5 = sub_2577370A4();
  OUTLINED_FUNCTION_10_51(&unk_2868B7DB0, v6, v5);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881AF0, &qword_2577783D0);
    sub_25773714C(&qword_27F881B10, sub_2577371D0, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_1_94();
    v4 = v10;
    OUTLINED_FUNCTION_1_94();
    OUTLINED_FUNCTION_1_94();
    v8 = OUTLINED_FUNCTION_322();
    v9(v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

unint64_t sub_257736F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257736AAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_257736F74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_257736AF8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_257736FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_257736AAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_257736FDC(uint64_t a1)
{
  v2 = sub_2577370A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257737018(uint64_t a1)
{
  v2 = sub_2577370A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257737054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_257736D10(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_2577370A4()
{
  result = qword_27F881AE8;
  if (!qword_27F881AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881AE8);
  }

  return result;
}

unint64_t sub_2577370F8()
{
  result = qword_27F881B00;
  if (!qword_27F881B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B00);
  }

  return result;
}

uint64_t sub_25773714C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F881AF0, &qword_2577783D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2577371D0()
{
  result = qword_27F881B18;
  if (!qword_27F881B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B18);
  }

  return result;
}

BOOL sub_257737224(uint64_t a1, uint64_t a2)
{
  v2 = sub_257743914();

  return v2 != 0;
}

uint64_t sub_257737288(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B40, &qword_2577785B8);
  OUTLINED_FUNCTION_63();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2577379A4();
  sub_257743AC4();
  sub_257743944();
  return (*(v6 + 8))(v9, v4);
}

void *sub_2577373B8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881B50, &qword_2577785C0);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_2577379A4();
  OUTLINED_FUNCTION_10_51(&unk_2868B7EC0, v6, v5);
  if (!v1)
  {
    v4 = sub_257743924();
    v7 = OUTLINED_FUNCTION_322();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

BOOL sub_2577374FC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257737224(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_257737530@<X0>(void *a1@<X8>)
{
  result = sub_25773726C();
  *a1 = 0xD000000000000019;
  a1[1] = v3;
  return result;
}

BOOL sub_257737580@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_257737224(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2577375B8(uint64_t a1)
{
  v2 = sub_2577379A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2577375F4(uint64_t a1)
{
  v2 = sub_2577379A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_257737630@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2577373B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_257737678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2577376DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *sub_25773773C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_257737814(uint64_t a1, int a2)
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

uint64_t sub_257737854(uint64_t result, int a2, int a3)
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

unint64_t sub_2577378A0()
{
  result = qword_27F881B28;
  if (!qword_27F881B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B28);
  }

  return result;
}

unint64_t sub_2577378F8()
{
  result = qword_27F881B30;
  if (!qword_27F881B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B30);
  }

  return result;
}

unint64_t sub_257737950()
{
  result = qword_27F881B38;
  if (!qword_27F881B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B38);
  }

  return result;
}

unint64_t sub_2577379A4()
{
  result = qword_27F881B48;
  if (!qword_27F881B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B48);
  }

  return result;
}

_BYTE *sub_2577379F8(_BYTE *result, int a2, int a3)
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

unint64_t sub_257737AA4()
{
  result = qword_27F881B58;
  if (!qword_27F881B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B58);
  }

  return result;
}

unint64_t sub_257737AFC()
{
  result = qword_27F881B60;
  if (!qword_27F881B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B60);
  }

  return result;
}

unint64_t sub_257737B54()
{
  result = qword_27F881B68;
  if (!qword_27F881B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B68);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_94()
{

  return sub_257743934();
}

uint64_t OUTLINED_FUNCTION_3_76()
{

  return sub_257743954();
}

uint64_t OUTLINED_FUNCTION_10_51(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_257743AB4();
}

uint64_t OUTLINED_FUNCTION_14_36()
{
  v3 = *(v1 - 96);

  return sub_257737678(v0, v3);
}

void sub_257737CA0()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = 0xD000000000000012;
  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v60.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v60.i8[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v60.i8[-v11];
  v13 = LinearClassifierConfiguration.weights.getter();
  v14 = v13;
  if (*(v13 + 16))
  {
    v15 = *(v13 + 32);

    v16 = *(LinearClassifierConfiguration.weights.getter() + 16);

    v61 = v16;
    v62 = sub_257743974();
    v63 = v17;
    MEMORY[0x259C64E90](38851, 0xA200000000000000);
    v18 = *(v15 + 16);

    v61 = v18;
    v19 = sub_257743974();
    MEMORY[0x259C64E90](v19);

    v20 = v62;
    v21 = v63;
    sub_257469AE0();
    v23 = v22;
    v2 = *(v22 + 16);
    v24 = *(v22 + 24);
    v14 = (v2 + 1);
    if (v2 >= v24 >> 1)
    {
      OUTLINED_FUNCTION_174(v24);
      OUTLINED_FUNCTION_8_51();
      sub_257469AE0();
      v23 = v57;
    }

    OUTLINED_FUNCTION_23_7();
    *(v23 + 16) = v14;
    OUTLINED_FUNCTION_19_37();
    *(v26 + 32) = v2 + 2;
    *(v26 + 40) = v25;
    *(v26 + 48) = v20;
    *(v26 + 56) = v21;
    *(v26 + 64) = 0;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  if (*(*(v1 + 8) + 16))
  {
    v62 = *(*(v1 + 8) + 16);
    v14 = sub_257743674();
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_8_51();
      sub_257469AE0();
      v23 = v58;
    }

    v2 = *(v23 + 16);
    v29 = *(v23 + 24);
    if (v2 >= v29 >> 1)
    {
      OUTLINED_FUNCTION_174(v29);
      OUTLINED_FUNCTION_8_51();
      sub_257469AE0();
      v23 = v59;
    }

    OUTLINED_FUNCTION_23_7();
    *(v23 + 16) = v2 + 1;
    OUTLINED_FUNCTION_19_37();
    *(v31 + 32) = v2;
    *(v31 + 40) = v30;
    *(v31 + 48) = v14;
    *(v31 + 56) = v28;
    *(v31 + 64) = 0;
  }

  v32 = type metadata accessor for Proto_GLMClassifier(0);
  sub_2577395B4(v1 + *(v32 + 32), v12);
  OUTLINED_FUNCTION_65(v12);
  if (v33)
  {
    v35 = 0;
    v34 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_95();
    sub_2577399E4(v12, v8);
    OUTLINED_FUNCTION_0_116();
    sub_2577396E0(v8, v6);
    sub_257738900();
    v34 = v62;
    v35 = v63;
    sub_257739A40(v8, v14);
  }

  v62 = v34;
  LOBYTE(v63) = v35;
  v36 = sub_2576603F8();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_51();
    sub_257469AE0();
    v23 = v51;
  }

  v38 = *(v23 + 16);
  v37 = *(v23 + 24);
  v39 = v38 + 1;
  if (v38 >= v37 >> 1)
  {
    OUTLINED_FUNCTION_174(v37);
    OUTLINED_FUNCTION_8_51();
    sub_257469AE0();
    v23 = v52;
  }

  *(v23 + 16) = v39;
  v40 = v23 + 40 * v38;
  strcpy((v40 + 32), "Class Labels");
  *(v40 + 45) = 0;
  *(v40 + 46) = -5120;
  *(v40 + 48) = v36;
  *(v40 + 56) = 0;
  *(v40 + 64) = 1;
  if (*(v1 + 40) == 1)
  {
    *v41.i64 = OUTLINED_FUNCTION_9_48();
    v43 = vbslq_s8(v41, v42[113], xmmword_257778720);
  }

  else
  {
    v43 = xmmword_257778710;
  }

  v44 = *(v23 + 24);
  v45 = v38 + 2;
  if ((v38 + 2) > (v44 >> 1))
  {
    OUTLINED_FUNCTION_174(v44);
    OUTLINED_FUNCTION_8_51();
    v60 = v53;
    sub_257469AE0();
    v43 = v60;
    v23 = v54;
  }

  *(v23 + 16) = v45;
  v46 = (v23 + 40 * v39);
  strcpy(v46[2].i8, "Class Encoding");
  v46[2].i8[15] = -18;
  v46[3] = v43;
  v46[4].i8[0] = 0;
  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_9_48();
  }

  v47 = *(v23 + 24);
  if ((v38 + 3) > (v47 >> 1))
  {
    OUTLINED_FUNCTION_174(v47);
    OUTLINED_FUNCTION_8_51();
    v60 = v55;
    sub_257469AE0();
    v23 = v56;
  }

  OUTLINED_FUNCTION_23_7();
  *(v23 + 16) = v38 + 3;
  v48 = v23 + 40 * v45;
  *(v48 + 32) = v2 + 6;
  *(v48 + 40) = v49;
  *(v48 + 48) = v50;
  *(v48 + 64) = 0;
  sub_2576AACFC(v23);
  OUTLINED_FUNCTION_35();
}

uint64_t LinearClassifierConfiguration.weights.getter()
{
  v1 = type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2574840F8(0, v7, 0);
    v8 = v16;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_2577396E0(v9, v5);
      v11 = *v5;

      sub_257739A40(v5, type metadata accessor for Proto_GLMClassifier.DoubleArray);
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_174(v12);
        sub_2574840F8(v14, v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      *(v16 + 8 * v13 + 32) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

void LinearClassifierConfiguration.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  type metadata accessor for Proto_GLMClassifier.DoubleArray(0);
  OUTLINED_FUNCTION_63();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = *(v2 + 16);
  if (v9)
  {
    v19 = v0;
    v10 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
    sub_257485498(v10, v11, v12);
    v13 = 32;
    v14 = v20;
    do
    {
      v15 = *(v2 + v13);

      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v8 = v15;
      v17 = *(v20 + 16);
      v16 = *(v20 + 24);
      if (v17 >= v16 >> 1)
      {
        v18 = OUTLINED_FUNCTION_174(v16);
        sub_257485498(v18, v17 + 1, 1);
      }

      *(v20 + 16) = v17 + 1;
      sub_2577399E4(v8, v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17);
      v13 += 8;
      --v9;
    }

    while (v9);

    v0 = v19;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  *v0 = v14;
  OUTLINED_FUNCTION_35();
}

void (*LinearClassifierConfiguration.weights.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = LinearClassifierConfiguration.weights.getter();
  return sub_2577384FC;
}

void sub_2577384FC(uint64_t a1, char a2)
{
  if (a2)
  {

    LinearClassifierConfiguration.weights.setter();
  }

  else
  {
    LinearClassifierConfiguration.weights.setter();
  }
}

uint64_t LinearClassifierConfiguration.offset.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*LinearClassifierConfiguration.offset.modify(void *a1))(void *a1, char a2)
{
  v3 = *(v1 + 8);
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return sub_25763F698;
}

uint64_t LinearClassifierConfiguration.classLabels.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = type metadata accessor for Proto_GLMClassifier(0);
  sub_2577395B4(v1 + *(v13 + 32), v12);
  result = OUTLINED_FUNCTION_65(v12);
  if (v15)
  {
    v17 = 0;
    v16 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_95();
    sub_2577399E4(v12, v8);
    OUTLINED_FUNCTION_0_116();
    sub_2577396E0(v8, v6);
    sub_257738900();
    v16 = v18;
    v17 = v19;
    result = sub_257739A40(v8, v1);
  }

  *a1 = v16;
  *(a1 + 8) = v17;
  return result;
}

uint64_t sub_257738764@<X0>(uint64_t a1@<X8>)
{
  result = LinearClassifierConfiguration.classLabels.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2577387A8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;

  return LinearClassifierConfiguration.classLabels.setter(&v3);
}

uint64_t LinearClassifierConfiguration.classLabels.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = (&v15 - v5);
  v7 = *a1;
  if (a1[1])
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v6 = v7;
    v8 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v9);
    v8 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
  v13 = type metadata accessor for Proto_GLMClassifier(0);
  return sub_257739624(v6, v1 + *(v13 + 32));
}

void sub_257738900()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Proto_StringVector(0);
  v5 = OUTLINED_FUNCTION_13(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = (v7 - v6);
  v9 = type metadata accessor for Proto_Int64Vector(0);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_0_116();
  sub_2577396E0(v1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_2577399E4(v17, v13);
    v20 = *v13;
    v21 = *(*v13 + 16);
    if (v21)
    {
      v22 = OUTLINED_FUNCTION_63_2(MEMORY[0x277D84F90]);
      sub_257483724(v22, v23, v24);
      v19 = v31;
      v25 = (v20 + 32);
      v26 = *(v31 + 16);
      do
      {
        v28 = *v25++;
        v27 = v28;
        v29 = *(v31 + 24);
        if (v26 >= v29 >> 1)
        {
          v30 = OUTLINED_FUNCTION_174(v29);
          sub_257483724(v30, v26 + 1, 1);
        }

        *(v31 + 16) = v26 + 1;
        *(v31 + 8 * v26++ + 32) = v27;
        --v21;
      }

      while (v21);
      OUTLINED_FUNCTION_2_79();
      OUTLINED_FUNCTION_5_63();
    }

    else
    {
      OUTLINED_FUNCTION_2_79();
      OUTLINED_FUNCTION_5_63();
      v19 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_79();
    sub_2577399E4(v17, v8);
    v19 = *v8;

    sub_257739A40(v8, type metadata accessor for Proto_StringVector);
  }

  *v3 = v19;
  *(v3 + 8) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_35();
}

void (*LinearClassifierConfiguration.classLabels.modify(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[2] = v1;
  v3[3] = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v6 = __swift_coroFrameAllocStub(v5);
  v3[4] = v6;
  v7 = __swift_coroFrameAllocStub(v5);
  v3[5] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[6] = __swift_coroFrameAllocStub(v10);
  v3[7] = __swift_coroFrameAllocStub(v10);
  v11 = __swift_coroFrameAllocStub(v10);
  v3[8] = v11;
  v12 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  *(v3 + 3) = v12;
  sub_2577395B4(v1 + v12, v11);
  OUTLINED_FUNCTION_65(v11);
  if (v13)
  {
    v15 = 0;
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    OUTLINED_FUNCTION_1_95();
    sub_2577399E4(v11, v7);
    OUTLINED_FUNCTION_0_116();
    sub_2577396E0(v7, v6);
    sub_257738900();
    v14 = v17;
    v15 = v18;
    sub_257739A40(v7, v1);
  }

  *v3 = v14;
  *(v3 + 8) = v15;
  return sub_257738CB8;
}

void sub_257738CB8(void ***a1, char a2)
{
  v6 = *a1;
  v7 = **a1;
  v8 = (*a1)[3];
  if (a2)
  {
    v9 = v6[6];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v10);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    sub_257739624(v9, v5 + v4);
  }

  else
  {
    v9 = v6[7];
    if ((*a1)[1])
    {
      type metadata accessor for Proto_StringVector(0);
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      *v9 = v7;
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    else
    {

      sub_25764CFE8(v15);
      OUTLINED_FUNCTION_176();
      swift_storeEnumTagMultiPayload();
    }

    OUTLINED_FUNCTION_43_6();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    sub_257739624(v8, v5 + v4);
  }

  free(v7);
  free(v8);
  free(v9);
  free(v2);
  free(v3);

  free(v6);
}

unsigned __int8 *LinearClassifierConfiguration.postEvaluationFunction.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*LinearClassifierConfiguration.postEvaluationFunction.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 24) == 1 && *(v1 + 16) != 0;
  *(a1 + 8) = v2;
  return sub_257498D04;
}

unsigned __int8 *LinearClassifierConfiguration.classEncoding.setter(unsigned __int8 *result)
{
  *(v1 + 32) = *result;
  *(v1 + 40) = 1;
  return result;
}

uint64_t *(*LinearClassifierConfiguration.classEncoding.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  v2 = *(v1 + 40) == 1 && *(v1 + 32) != 0;
  *(a1 + 8) = v2;
  return sub_257739010;
}

uint64_t *sub_257739010(uint64_t *result)
{
  v1 = *result;
  *(v1 + 32) = *(result + 8);
  *(v1 + 40) = 1;
  return result;
}

uint64_t LinearClassifierConfiguration.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v3 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v4 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

void LinearClassifierConfiguration.init(weights:offset:classLabels:postEvaluationFunction:classEncoding:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = (&v23 - v12);
  v14 = *v5;
  LOBYTE(v5) = *(v5 + 8);
  v24 = *v3;
  v15 = *v1;
  v16 = MEMORY[0x277D84F90];
  *v9 = MEMORY[0x277D84F90];
  *(v9 + 8) = v16;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  v17 = *(type metadata accessor for Proto_GLMClassifier(0) + 32);
  v18 = type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels(0);
  __swift_storeEnumTagSinglePayload(v9 + v17, 1, 1, v18);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  LinearClassifierConfiguration.weights.setter();
  *(v9 + 8) = v7;
  if (v5)
  {
    type metadata accessor for Proto_StringVector(0);
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    *v13 = v14;
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    sub_25764CFE8(v19);
    OUTLINED_FUNCTION_98_2();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v18);
  sub_257739624(v13, v9 + v17);
  *(v9 + 16) = v24;
  *(v9 + 24) = 1;
  *(v9 + 32) = v15;
  *(v9 + 40) = 1;
  OUTLINED_FUNCTION_35();
}

void LinearClassifierConfiguration.customMirror.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31();
  a19 = v21;
  a20 = v22;
  v23 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v30);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  type metadata accessor for LinearClassifierConfiguration(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  sub_2577396E0(v20, v36 - v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_257744000;
  *(v37 + 32) = 0x73746867696577;
  *(v37 + 40) = 0xE700000000000000;
  v38 = LinearClassifierConfiguration.weights.getter();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880430, &unk_25776C040);
  *(v37 + 48) = v38;
  *(v37 + 72) = v39;
  *(v37 + 80) = 0x74657366666FLL;
  *(v37 + 88) = 0xE600000000000000;
  v40 = *(v20 + 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879F68, &qword_257744890);
  *(v37 + 96) = v40;
  *(v37 + 120) = v41;
  *(v37 + 128) = 0x62614C7373616C63;
  *(v37 + 136) = 0xEB00000000736C65;
  *(v37 + 168) = &type metadata for LinearClassifierConfiguration.ClassLabels;

  LinearClassifierConfiguration.classLabels.getter(v37 + 144);
  OUTLINED_FUNCTION_23_7();
  *(v37 + 176) = 0xD000000000000016;
  *(v37 + 184) = v42;
  *(v37 + 216) = &type metadata for LinearClassifierConfiguration.PostEvaluationFunction;
  v43 = *(v20 + 24) == 1 && *(v20 + 16) != 0;
  *(v37 + 192) = v43;
  strcpy((v37 + 224), "classEncoding");
  *(v37 + 238) = -4864;
  *(v37 + 264) = &type metadata for LinearClassifierConfiguration.ClassEncoding;
  v44 = *(v20 + 40) == 1 && *(v20 + 32) != 0;
  *(v37 + 240) = v44;
  v45 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v45);
  (*(v25 + 104))(v29, *MEMORY[0x277D84C38], v23);
  sub_257743AA4();
  OUTLINED_FUNCTION_35();
}

uint64_t static LinearClassifierConfiguration.ClassLabels.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_257479C78(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_257487374();
}

uint64_t sub_2577395B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257739624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87AD18, &unk_25774A9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for LinearClassifierConfiguration(uint64_t a1)
{
  result = qword_281537760;
  if (!qword_281537760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2577396E0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_257739740()
{
  result = qword_281537D78;
  if (!qword_281537D78)
  {
    type metadata accessor for Proto_GLMClassifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281537D78);
  }

  return result;
}

unint64_t sub_25773979C()
{
  result = qword_27F881B70;
  if (!qword_27F881B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B70);
  }

  return result;
}

unint64_t sub_2577397F4()
{
  result = qword_27F881B78;
  if (!qword_27F881B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B78);
  }

  return result;
}

uint64_t sub_257739870(uint64_t a1)
{
  result = type metadata accessor for Proto_GLMClassifier(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_2577398EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2577399E4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_257739A40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_79()
{

  return sub_257739A40(v0, type metadata accessor for Proto_GLMClassifier.OneOf_ClassLabels);
}

uint64_t OUTLINED_FUNCTION_5_63()
{

  return sub_257739A40(v0, type metadata accessor for Proto_Int64Vector);
}

double OUTLINED_FUNCTION_9_48()
{
  v1 = vdup_n_s32(v0 == 0);
  v2.i64[0] = v1.u32[0];
  v2.i64[1] = v1.u32[1];
  *&result = vcltzq_s64(vshlq_n_s64(v2, 0x3FuLL)).u64[0];
  return result;
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_14_6(v0, 25427);
  *(v0 + 48) = sub_257743794();
  *(v0 + 56) = v1;
  return v0;
}

uint64_t static NeuralNetwork.Layer.multiply(name:inputName:outputName:scalar:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>, float a6@<S0>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2577442B0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  type metadata accessor for Proto_MultiplyLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v17 = a6;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a5 + v20) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v6);
  v21 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v21);
  return sub_257634BB4(v17);
}

uint64_t static NeuralNetwork.Layer.Kind.multiply(scalar:)@<X0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = *&a1;
  }

  type metadata accessor for Proto_MultiplyLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a2 = v3;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.multiply(name:inputNames:outputName:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_257743FF0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2577442B0;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  type metadata accessor for Proto_MultiplyLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *v17 = 1065353216;
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v20 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    OUTLINED_FUNCTION_3_22(&qword_27F879260);
  }

  *(a7 + v20) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v19);
  sub_2574897E0(v7);
  v21 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_11_11(v21);
  return sub_257634BB4(v17);
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.init(scalar:)@<X0>(float *a1@<X8>, float a2@<S0>)
{
  type metadata accessor for Proto_MultiplyLayerParams(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  *a1 = a2;
  return result;
}

float (*NeuralNetwork.Layer.MultiplyParameters.scalar.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_25749D2A8;
}

BOOL static NeuralNetwork.Layer.MultiplyParameters.== infix(_:_:)(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2)
  {
    type metadata accessor for Proto_MultiplyLayerParams(0);
    sub_2577431B4();
    sub_25773A640(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_MultiplyLayerParams(0);
  OUTLINED_FUNCTION_0_117();
  sub_25773A640(v1, v2, &unk_2577663F8);

  return sub_2577435F4();
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_MultiplyLayerParams(0);
  OUTLINED_FUNCTION_0_117();
  sub_25773A640(v0, v1, &unk_2577663F8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25773A284(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_MultiplyLayerParams(0);
  sub_25773A640(&qword_27F87E0D8, type metadata accessor for Proto_MultiplyLayerParams, &unk_2577663F8);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t NeuralNetwork.Layer.MultiplyParameters.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  type metadata accessor for NeuralNetwork.Layer.MultiplyParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  sub_25773A54C(v1, v12 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2577442B0;
  v14 = OUTLINED_FUNCTION_14_6(v13, 25459);
  v15 = *v1;
  *(v14 + 72) = MEMORY[0x277D83A90];
  *(v14 + 48) = v15;
  v16 = sub_257743A74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v16);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);
  return sub_257743AA4();
}

uint64_t type metadata accessor for NeuralNetwork.Layer.MultiplyParameters(uint64_t a1)
{
  result = qword_27F881B88;
  if (!qword_27F881B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25773A54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NeuralNetwork.Layer.MultiplyParameters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25773A640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25773A6B4(uint64_t a1)
{
  result = type metadata accessor for Proto_MultiplyLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t MLProgram.DataType.debugDescription.getter()
{
  result = 1819242306;
  switch(*v0)
  {
    case 1:
      return 0x676E69727453;
    case 2:
      return 0x363174616F6C46;
    case 3:
      return 0x323374616F6C46;
    case 4:
      return 0x343674616F6C46;
    case 5:
      return 0x363174616F6C4642;
    case 6:
      return 947154505;
    case 7:
      v4 = 829713993;
      goto LABEL_21;
    case 8:
      v2 = 863268425;
      goto LABEL_24;
    case 9:
      v3 = 913600073;
      goto LABEL_11;
    case 0xA:
      return 880045641;
    case 0xB:
      return 0x38746E4955;
    case 0xC:
      return 0x3631746E4955;
    case 0xD:
      return 0x3233746E4955;
    case 0xE:
      return 0x3436746E4955;
    case 0xF:
      v3 = 1953384789;
LABEL_11:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x3400000000;
      break;
    case 0x10:
      v2 = 1953384789;
LABEL_24:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x3200000000;
      break;
    case 0x11:
      result = 0x31746E4955;
      break;
    case 0x12:
      v4 = 1953384789;
LABEL_21:
      result = v4 & 0xFFFF0000FFFFFFFFLL | 0x3600000000;
      break;
    case 0x13:
      result = 0x33746E4955;
      break;
    case 0x14:
      result = 0x34453874616F6C46;
      break;
    case 0x15:
      result = 0x35453874616F6C46;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MLProgram.DataType.size.getter()
{
  result = 1;
  switch(*v0)
  {
    case 1:
    case 0xA:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
      result = 0;
      break;
    case 2:
    case 5:
    case 7:
    case 0xC:
      result = 2;
      break;
    case 3:
    case 8:
    case 0xD:
      result = 4;
      break;
    case 4:
    case 9:
    case 0xE:
      result = 8;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25773ABB0@<X0>(uint64_t *a1@<X8>)
{
  result = MLProgram.DataType.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_25773ABDC()
{
  result = qword_27F881B98;
  if (!qword_27F881B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881B98);
  }

  return result;
}

uint64_t _s8DataTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8DataTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

uint64_t SizeRange.lowerBound.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

void sub_25773ADC0(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_6:
    *a1 = v4;
    return;
  }

  if ((*v1 & 0x8000000000000000) == 0)
  {
    v4 = MEMORY[0x277D84F90];
    if (v3 < *v1)
    {
      sub_257743834();
      MEMORY[0x259C64E90](0xD00000000000001FLL, 0x8000000257782180);
      v5 = sub_257743974();
      MEMORY[0x259C64E90](v5);

      MEMORY[0x259C64E90](0xD000000000000025, 0x80000002577821A0);
      v6 = sub_257743974();
      MEMORY[0x259C64E90](v6);

      MEMORY[0x259C64E90](46, 0xE100000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
      sub_2574A16C8();
      v7 = sub_257743604();
      v9 = v8;
      *a1 = v4;
      sub_25767A064();
      v10 = *(*a1 + 16);
      sub_25767A0B0(v10);
      v4 = *a1;
      *(v4 + 16) = v10 + 1;
      v11 = v4 + 48 * v10;
      *(v11 + 32) = 0;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0xE000000000000000;
      *(v11 + 56) = 2;
      *(v11 + 64) = v7;
      *(v11 + 72) = v9;
    }

    goto LABEL_6;
  }

  __break(1u);
}

void SizeRange.description.getter()
{
  if ((v0[1] & 0x8000000000000000) != 0)
  {
    if ((*v0 & 0x8000000000000000) == 0)
    {
      sub_257743974();
      OUTLINED_FUNCTION_1_96();
      return;
    }
  }

  else
  {
    if ((*v0 & 0x8000000000000000) == 0)
    {
      sub_257743974();
      OUTLINED_FUNCTION_1_96();
      v1 = sub_257743974();
      MEMORY[0x259C64E90](v1);

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t SizeRange.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for Proto_SizeRange(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = a1;
    a2[1] = -1;
  }

  return result;
}

uint64_t SizeRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for Proto_SizeRange(0);
  result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = a1;
    a3[1] = a2;
  }

  return result;
}

uint64_t SizeRange.lowerBound.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*SizeRange.lowerBound.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

uint64_t SizeRange.upperBound.setter(uint64_t result, char a2)
{
  if (a2)
  {
    v3 = -1;
  }

  else
  {
    v3 = result;
  }

  *(v2 + 8) = v3;
  return result;
}

uint64_t (*SizeRange.upperBound.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  *a1 = v2 & ~(v2 >> 63);
  *(a1 + 8) = v2 < 0;
  return sub_25773B1C4;
}

uint64_t sub_25773B1C4(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = -1;
  }

  else
  {
    v1 = *result;
  }

  *(*(result + 16) + 8) = v1;
  return result;
}

uint64_t SizeRange.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Proto_SizeRange(0);
  *a1 = 0;
  a1[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static SizeRange.== infix(_:_:)(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    type metadata accessor for Proto_SizeRange(0);
    sub_2577431B4();
    sub_25773B950(&qword_27F879B68, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    if (sub_257743644())
    {
      return 1;
    }
  }

  return result;
}

uint64_t SizeRange.hash(into:)(uint64_t a1)
{
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_0_118();
  sub_25773B950(v1, v2, &unk_25774A380);

  return sub_2577435F4();
}

uint64_t SizeRange.hashValue.getter()
{
  sub_257743A14();
  type metadata accessor for Proto_SizeRange(0);
  OUTLINED_FUNCTION_0_118();
  sub_25773B950(v0, v1, &unk_25774A380);
  sub_2577435F4();
  return sub_257743A64();
}

uint64_t sub_25773B3D8(uint64_t a1)
{
  sub_257743A14();
  type metadata accessor for Proto_SizeRange(0);
  sub_25773B950(&qword_27F87AAA8, type metadata accessor for Proto_SizeRange, &unk_25774A380);
  sub_2577435F4();
  return sub_257743A64();
}

void *SizeRange.relative<A>(to:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((*v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 >= *v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881BA0, &qword_257778D90);
      sub_257743634();
      return v7;
    }

    __break(1u);
    goto LABEL_10;
  }

  v5 = *v3;
  if ((*v3 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_2577437A4();
  if (v7 >= v5)
  {
    return v5;
  }

LABEL_11:
  __break(1u);
  return v6;
}

Swift::Bool __swiftcall SizeRange.contains(_:)(Swift::Int a1)
{
  v2 = *v1;
  v3 = v1[1];
  if ((v3 & 0x8000000000000000) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v3 >= v2)
    {
      if (v3 >= a1)
      {
        v6 = __OFSUB__(v2, a1);
        v4 = v2 == a1;
        v5 = (v2 - a1) < 0;
      }

      else
      {
        v6 = 0;
        v4 = 0;
        v5 = 0;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return a1;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  v6 = __OFSUB__(v2, a1);
  v4 = v2 == a1;
  v5 = (v2 - a1) < 0;
LABEL_9:
  if (v5 ^ v6 | v4)
  {
    LOBYTE(a1) = 1;
  }

  else
  {
    LOBYTE(a1) = 0;
  }

  return a1;
}

void *sub_25773B56C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = SizeRange.relative<A>(to:)(a1, a2, a3);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t SizeRange.customMirror.getter()
{
  v1 = v0;
  v2 = sub_257743A84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SizeRange(0);
  MEMORY[0x28223BE20](v9);
  sub_25773B858(v1, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  result = swift_allocObject();
  *(result + 16) = xmmword_257743FF0;
  *(result + 32) = 0x756F427265776F6CLL;
  *(result + 40) = 0xEA0000000000646ELL;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = MEMORY[0x277D83B88];
    *(result + 48) = *v1;
    *(result + 72) = v13;
    *(result + 80) = 0x756F427265707075;
    *(result + 88) = 0xEA0000000000646ELL;
    v14 = v1[1];
    v15 = v14 < 0;
    v16 = v14 & ~(v14 >> 63);
    *(result + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881BA8, &qword_257778D98);
    *(v12 + 96) = v16;
    *(v12 + 104) = v15;
    v17 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);
    (*(v3 + 104))(v5, *MEMORY[0x277D84C38], v2);
    return sub_257743AA4();
  }

  return result;
}

uint64_t type metadata accessor for SizeRange(uint64_t a1)
{
  result = qword_27F881BB8;
  if (!qword_27F881BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25773B858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25773B950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25773B9C0(uint64_t a1)
{
  result = type metadata accessor for Proto_SizeRange(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_1_96()
{

  JUMPOUT(0x259C64E90);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.init()@<X0>(uint64_t a2@<X8>)
{
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v3 = *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20);
  if (qword_27F8795D0 != -1)
  {
    OUTLINED_FUNCTION_13_37(&qword_27F8795D0);
  }

  *(a2 + v3) = qword_27F87BF40;
}

void static NeuralNetwork.Layer.batchedMatrixMultiply(name:inputNames:outputName:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v27 = v2;
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v29 = v10;
  v30 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257743FF0;
  *(v22 + 32) = v9;
  *(v22 + 40) = v7;
  *(v22 + 48) = v27;
  *(v22 + 56) = v5;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2577442B0;
  *(v23 + 32) = v28;
  *(v23 + 40) = v1;

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v24 = *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20);
  if (qword_27F8795D0 != -1)
  {
    OUTLINED_FUNCTION_13_37(&qword_27F8795D0);
  }

  *(v21 + v24) = qword_27F87BF40;
  swift_storeEnumTagMultiPayload();

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v25 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(v13 + v25) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v23);
  sub_2574897E0(v17);
  v26 = type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v26);
  sub_25752846C();
  sub_25766E598(v21, type metadata accessor for NeuralNetwork.Layer.Kind);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744E70;
  strcpy((v1 + 32), "Transpose Left");
  *(v1 + 47) = -18;
  v2 = *(v0 + *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20));
  OUTLINED_FUNCTION_296(v2 + 16, v15);
  if (*(v2 + 16))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v2 + 16))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  *(v1 + 48) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = 0x736F70736E617254;
  *(v1 + 72) = 0xEF74686769522065;
  OUTLINED_FUNCTION_296(v2 + 17, v14);
  if (*(v2 + 17))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v2 + 17))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  *(v1 + 80) = v5;
  *(v1 + 88) = v6;
  OUTLINED_FUNCTION_23_7();
  *(v1 + 96) = 0xD00000000000001DLL;
  *(v1 + 104) = v7;
  result = OUTLINED_FUNCTION_296(v2 + 24, v13);
  if ((*(v2 + 24) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12[0] = *(v2 + 24);
    *(v1 + 112) = sub_257743974();
    *(v1 + 120) = v9;
    OUTLINED_FUNCTION_23_7();
    *(v1 + 128) = 0xD00000000000001ELL;
    *(v1 + 136) = v10;
    result = OUTLINED_FUNCTION_296(v2 + 32, v12);
    if ((*(v2 + 32) & 0x8000000000000000) == 0)
    {
      *(v1 + 144) = sub_257743974();
      *(v1 + 152) = v11;
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.getter()
{
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_18_45(v0 + 16, v1);
  return *(v0 + 16);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.getter()
{
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_18_45(v0 + 17, v1);
  return *(v0 + 17);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.getter()
{
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_18_45(v0 + 24, v1);
  result = *(v0 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.getter()
{
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_18_45(v0 + 32, v1);
  result = *(v0 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.namedWeights.getter()
{
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  OUTLINED_FUNCTION_63();
  v43 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v5 = (v3 - v4);
  MEMORY[0x28223BE20](v6);
  v8 = (&v41 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  v10 = OUTLINED_FUNCTION_13(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter();
  OUTLINED_FUNCTION_155(v16, 1, v17);
  if (v25)
  {
    sub_2574695E4(v16, &qword_27F880938, &unk_25776E510);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v42 = v5;
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v16, v24);
    *v8 = 0x73746867696557;
    v8[1] = 0xE700000000000000;
    OUTLINED_FUNCTION_3_77();
    sub_25773D9D8(v24, v8 + v27);
    sub_257469D34();
    v26 = v28;
    v29 = *(v28 + 16);
    v0 = v29 + 1;
    if (v29 >= *(v28 + 24) >> 1)
    {
      OUTLINED_FUNCTION_31_19();
      v26 = v39;
    }

    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v24, v30);
    OUTLINED_FUNCTION_8_29();
    sub_25749E9A8(v8, v31 + v32 * v29);
    v5 = v42;
  }

  sub_25773C678();
  OUTLINED_FUNCTION_155(v13, 1, v17);
  if (v25)
  {
    sub_2574695E4(v13, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v13, v21);
    type metadata accessor for Proto_BatchedMatMulLayerParams(0);
    OUTLINED_FUNCTION_328();
    OUTLINED_FUNCTION_296(v0 + 40, &v44);
    if (*(v0 + 40) == 1)
    {
      *v5 = 1935763778;
      v5[1] = 0xE400000000000000;
      OUTLINED_FUNCTION_3_77();
      sub_25773D9D8(v21, v5 + v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257469D34();
        v26 = v40;
      }

      v34 = *(v26 + 16);
      if (v34 >= *(v26 + 24) >> 1)
      {
        OUTLINED_FUNCTION_31_19();
      }

      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v21, v35);
      OUTLINED_FUNCTION_8_29();
      sub_25749E9A8(v5, v36 + v37 * v34);
    }

    else
    {
      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v21, v38);
    }
  }

  OUTLINED_FUNCTION_35();
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter()
{
  OUTLINED_FUNCTION_31();
  v39 = v1;
  v2 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v38 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v12 = OUTLINED_FUNCTION_13(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  v19 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
  OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights, &v42);
  sub_2574A172C(v0 + v19, v18, &qword_27F87A1A0, &qword_257745750);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v2);
  sub_2574695E4(v18, &qword_27F87A1A0, &qword_257745750);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
LABEL_10:
    OUTLINED_FUNCTION_35();
    return;
  }

  v24 = v39;
  sub_2574A172C(v0 + v19, v15, &qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_155(v15, 1, v2);
  if (v25)
  {
    *v6 = MEMORY[0x277D84F90];
    *(v6 + 8) = xmmword_257745740;
    *(v6 + 24) = xmmword_257745740;
    *(v6 + 40) = xmmword_257745740;
    *(v6 + 56) = 0;
    _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
    type metadata accessor for Proto_QuantizationParams(0);
    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_155(v15, 1, v2);
    v30 = v24;
    v31 = v7;
    if (!v25)
    {
      sub_2574695E4(v15, &qword_27F87A1A0, &qword_257745750);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    sub_2576A16F4(v15, v6);
    v30 = v24;
    v31 = v7;
  }

  v32 = v38;
  sub_2576FF45C(v6, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879FB0, &unk_257775E70);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_257743FF0;
  OUTLINED_FUNCTION_296(v0 + 24, &v41);
  v34 = *(v0 + 24);
  if (v34 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v33 + 32) = v34;
    OUTLINED_FUNCTION_296(v0 + 32, &v40);
    v35 = *(v0 + 32);
    if ((v35 & 0x8000000000000000) == 0)
    {
      *(v33 + 40) = v35;

      *v32 = v33;
      OUTLINED_FUNCTION_3_77();
      sub_25773D9D8(v32, v30);
      __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
      OUTLINED_FUNCTION_0_50();
      sub_25766E598(v32, v36);
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_25773C678()
{
  OUTLINED_FUNCTION_31();
  v26 = v1;
  v2 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v8 = OUTLINED_FUNCTION_13(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = *(v0 + *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20));
  v16 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias;
  OUTLINED_FUNCTION_296(v15 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__bias, &v27);
  sub_2574A172C(v15 + v16, v14, &qword_27F87A1A0, &qword_257745750);
  v17 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v2);
  sub_2574695E4(v14, &qword_27F87A1A0, &qword_257745750);
  v19 = EnumTagSinglePayload == 1;
  v20 = v26;
  if (!v19)
  {
    sub_2574A172C(v15 + v16, v11, &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_155(v11, 1, v2);
    if (v19)
    {
      *v6 = MEMORY[0x277D84F90];
      *(v6 + 8) = xmmword_257745740;
      *(v6 + 24) = xmmword_257745740;
      *(v6 + 40) = xmmword_257745740;
      *(v6 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_155(v11, 1, v2);
      if (!v19)
      {
        sub_2574695E4(v11, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      OUTLINED_FUNCTION_1_5();
      sub_2576A16F4(v11, v6);
    }

    sub_2576FF45C(v6, v20);
    v17 = 0;
  }

  v25 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  __swift_storeEnumTagSinglePayload(v20, v17, 1, v25);
  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.getter()
{
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_18_45(v0 + 40, v1);
  return *(v0 + 40);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0(v6 + 16, v5);
  *(v6 + 16) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeLeft.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  OUTLINED_FUNCTION_10_52(v0 + 16);
  *(v1 + 84) = *(v0 + 16);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773C9A8(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_447(v7 + 16, v1 + v10);
  *(v7 + 16) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0(v6 + 17, v5);
  *(v6 + 17) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.transposeRight.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  OUTLINED_FUNCTION_10_52(v0 + 17);
  *(v1 + 84) = *(v0 + 17);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773CAE4(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_447(v7 + 17, v1 + v10);
  *(v7 + 17) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v7 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v8 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v8);
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_355_0(v9);
    }

    result = OUTLINED_FUNCTION_237_0(v7 + 24, v6);
    *(v7 + 24) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixFirstDimension.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_39_15(v2) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_10_52(v4 + 24);
  v6 = *(v4 + 24);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_25773CC48;
  }

  return result;
}

void sub_25773CC48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if ((a2 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v2 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v2 + 24;
LABEL_6:
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v10);
  }

  OUTLINED_FUNCTION_447(v8 + 24, v4);
  *(v8 + 24) = v3;

  free(v2);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = type metadata accessor for Proto_BatchedMatMulLayerParams(0);
    v5 = OUTLINED_FUNCTION_376_0(v4);
    v7 = *(v1 + v2);
    if ((v5 & 1) == 0)
    {
      v8 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v8);
      OUTLINED_FUNCTION_6_65();
      OUTLINED_FUNCTION_355_0(v9);
    }

    result = OUTLINED_FUNCTION_237_0(v7 + 32, v6);
    *(v7 + 32) = v3;
  }

  return result;
}

void (*NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weightMatrixSecondDimension.modify())(uint64_t *a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  v3 = *(OUTLINED_FUNCTION_39_15(v2) + 20);
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  result = OUTLINED_FUNCTION_10_52(v4 + 32);
  v6 = *(v4 + 32);
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 72) = v6;
    return sub_25773CDE0;
  }

  return result;
}

void sub_25773CDE0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if ((a2 & 1) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = v2 + 48;
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v2 + 24;
LABEL_6:
  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v9);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v10);
  }

  OUTLINED_FUNCTION_447(v8 + 32, v4);
  *(v8 + 32) = v3;

  free(v2);
}

void sub_25773CE90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2574A172C(a1, &v4 - v3, &qword_27F880938, &unk_25776E510);
  NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter();
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  OUTLINED_FUNCTION_13(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v32[-v6];
  v8 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v32[-v15];
  v17 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = v20 - v19;
  sub_2574A172C(v3, v16, &qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_155(v16, 1, v17);
  if (v22)
  {
    sub_2574695E4(v16, &qword_27F880938, &unk_25776E510);
    v23 = *(type metadata accessor for Proto_BatchedMatMulLayerParams(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
      v24 = *(v1 + v23);
    }

    else
    {
      v26 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
      OUTLINED_FUNCTION_448(v26);

      sub_2575CB67C();
      v24 = v27;
      sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);

      *(v1 + v23) = v24;
    }

    OUTLINED_FUNCTION_44();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
    v31 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__weights;
    swift_beginAccess();
    sub_25763A1E4(v7, v24 + v31);
    swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_4_26();
    sub_2576A16F4(v16, v21);
    sub_25773D9D8(v21 + *(v17 + 20), v12);
    sub_257533178(v12);
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
    OUTLINED_FUNCTION_0_50();
    sub_25766E598(v21, v25);
  }

  OUTLINED_FUNCTION_35();
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.modify(void *a1)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter();
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773D278(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_2574A172C(*(a1 + 16), v2, &qword_27F880938, &unk_25776E510);
    NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter();
    sub_2574695E4(v3, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.setter();
  }

  free(v3);

  free(v2);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v8);
  }

  result = OUTLINED_FUNCTION_237_0(v6 + 40, v5);
  *(v6 + 40) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.hasBias.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  OUTLINED_FUNCTION_10_52(v0 + 40);
  *(v1 + 84) = *(v0 + 40);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773D3D4(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_447(v7 + 40, v1 + v10);
  *(v7 + 40) = v4;

  free(v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.getter()
{
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  v1 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_18_45(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize, v2);
  return *(v0 + v1);
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.setter()
{
  v3 = OUTLINED_FUNCTION_23_32();
  v4 = OUTLINED_FUNCTION_376_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    v7 = type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
    OUTLINED_FUNCTION_448(v7);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_355_0(v8);
  }

  v9 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  result = OUTLINED_FUNCTION_237_0(v6 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize, v5);
  *(v6 + v9) = v0 & 1;
  return result;
}

uint64_t NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.int8DynamicQuantize.modify()
{
  v2 = OUTLINED_FUNCTION_38_13();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_9_49(v3);
  OUTLINED_FUNCTION_12_53(v4);
  v5 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_10_52(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize);
  *(v1 + 84) = *(v0 + v5);
  return OUTLINED_FUNCTION_15_10();
}

void sub_25773D564(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_21_13(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_25_32();
    OUTLINED_FUNCTION_448(v8);
    OUTLINED_FUNCTION_6_65();
    OUTLINED_FUNCTION_25_26(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  v11 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
  OUTLINED_FUNCTION_447(v7 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize, v1 + v10);
  *(v7 + v11) = v4;

  free(v1);
}

void NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.customMirror.getter()
{
  OUTLINED_FUNCTION_31();
  v32[0] = v2;
  v3 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v32[2] = v32 - v12;
  v32[1] = type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3();
  sub_25773D9D8(v1, v15 - v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2577503A0;
  strcpy((v16 + 32), "transposeLeft");
  *(v16 + 46) = -4864;
  type metadata accessor for Proto_BatchedMatMulLayerParams(0);
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_296(v0 + 16, &v38);
  v17 = MEMORY[0x277D839B0];
  *(v16 + 48) = *(v0 + 16);
  *(v16 + 72) = v17;
  strcpy((v16 + 80), "transposeRight");
  *(v16 + 95) = -18;
  OUTLINED_FUNCTION_296(v0 + 17, &v37);
  *(v16 + 96) = *(v0 + 17);
  OUTLINED_FUNCTION_23_7();
  *(v16 + 120) = v17;
  *(v16 + 128) = 0xD00000000000001ALL;
  *(v16 + 136) = v18;
  OUTLINED_FUNCTION_296(v0 + 24, &v36);
  v19 = *(v0 + 24);
  if (v19 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = MEMORY[0x277D83B88];
    *(v16 + 144) = v19;
    OUTLINED_FUNCTION_23_7();
    *(v16 + 168) = v20;
    *(v16 + 176) = 0xD00000000000001BLL;
    *(v16 + 184) = v21;
    OUTLINED_FUNCTION_296(v0 + 32, &v35);
    v22 = *(v0 + 32);
    if ((v22 & 0x8000000000000000) == 0)
    {
      *(v16 + 192) = v22;
      *(v16 + 216) = v20;
      *(v16 + 224) = 0x73746867696577;
      *(v16 + 232) = 0xE700000000000000;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
      *(v16 + 264) = v23;
      __swift_allocate_boxed_opaque_existential_0((v16 + 240));
      NeuralNetwork.Layer.BatchedMatrixMultiplyParameters.weights.getter();
      *(v16 + 272) = 1935763810;
      *(v16 + 280) = 0xE400000000000000;
      *(v16 + 312) = v23;
      __swift_allocate_boxed_opaque_existential_0((v16 + 288));
      sub_25773C678();
      *(v16 + 320) = 0x73616942736168;
      *(v16 + 328) = 0xE700000000000000;
      OUTLINED_FUNCTION_296(v0 + 40, &v34);
      *(v16 + 336) = *(v0 + 40);
      OUTLINED_FUNCTION_23_7();
      v24 = MEMORY[0x277D839B0];
      *(v16 + 360) = MEMORY[0x277D839B0];
      *(v16 + 368) = 0xD000000000000013;
      *(v16 + 376) = v25;
      v26 = OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize;
      OUTLINED_FUNCTION_296(v0 + OBJC_IVAR____TtCV20MLModelSpecification30Proto_BatchedMatMulLayerParamsP33_FEBA7ED9F351FA7751CD6B489714AC0A13_StorageClass__int8DynamicQuantize, &v33);
      v27 = *(v0 + v26);
      *(v16 + 408) = v24;
      *(v16 + 384) = v27;
      sub_257743A74();
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
      (*(v5 + 104))(v9, *MEMORY[0x277D84C38], v3);
      sub_257743AA4();
      OUTLINED_FUNCTION_35();
      return;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for NeuralNetwork.Layer.BatchedMatrixMultiplyParameters(uint64_t a1)
{
  result = qword_27F881BC8;
  if (!qword_27F881BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25773D9D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_30();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_25773DA38()
{
  result = qword_27F87DE30;
  if (!qword_27F87DE30)
  {
    type metadata accessor for Proto_BatchedMatMulLayerParams(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F87DE30);
  }

  return result;
}

uint64_t sub_25773DAB8(uint64_t a1)
{
  result = type metadata accessor for Proto_BatchedMatMulLayerParams(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_6_65()
{

  sub_2575CB67C();
}

uint64_t OUTLINED_FUNCTION_9_49(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;

  return type metadata accessor for Proto_BatchedMatMulLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_10_52(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_37(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_32()
{

  return type metadata accessor for Proto_BatchedMatMulLayerParams(0);
}

uint64_t OUTLINED_FUNCTION_25_32()
{

  return type metadata accessor for Proto_BatchedMatMulLayerParams._StorageClass(0);
}

void OUTLINED_FUNCTION_31_19()
{

  sub_257469D34();
}

uint64_t OUTLINED_FUNCTION_39_15(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 80) = v2;

  return type metadata accessor for Proto_BatchedMatMulLayerParams(0);
}

__n128 *sub_25773DCAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v10, xmmword_257744E70);
  v10[3].n128_u64[0] = sub_257743974();
  v10[3].n128_u64[1] = v11;
  v10[4].n128_u64[0] = a1;
  v10[4].n128_u64[1] = a2;
  v10[5].n128_u64[0] = sub_257743794();
  v10[5].n128_u64[1] = v12;
  v10[6].n128_u64[0] = a3;
  v10[6].n128_u64[1] = a4;
  v10[7].n128_u64[0] = sub_257743794();
  v10[7].n128_u64[1] = v13;
  OUTLINED_FUNCTION_8_52();
  v10[8].n128_u64[0] = v14;
  v10[8].n128_u64[1] = v15;
  if (*(*(v4 + 16) + 16))
  {
    OUTLINED_FUNCTION_12_54();
    do
    {
      OUTLINED_FUNCTION_14_37();
      OUTLINED_FUNCTION_10_53();
      if (v17)
      {
        sub_257483754((v16 > 1), v5, 1);
      }

      OUTLINED_FUNCTION_16_35();
    }

    while (!v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v19 = OUTLINED_FUNCTION_13_38();
  v21 = v20;

  v10[9].n128_u64[0] = v19;
  v10[9].n128_u64[1] = v21;
  return v10;
}

__n128 *sub_25773DE28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v8, xmmword_2577442C0);
  v8[3].n128_u64[0] = sub_257743974();
  v8[3].n128_u64[1] = v9;
  v8[4].n128_u64[0] = a1;
  v8[4].n128_u64[1] = a2;
  v8[5].n128_u64[0] = sub_257743794();
  v8[5].n128_u64[1] = v10;
  v8[6].n128_u64[0] = a3;
  v8[6].n128_u64[1] = a4;
  v8[7].n128_u64[0] = sub_257743794();
  v8[7].n128_u64[1] = v11;
  return v8;
}

__n128 *NeuralNetwork.Layer.RandomBernoulliStaticParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v2, xmmword_2577442C0);
  v2[3].n128_u64[0] = sub_257743974();
  v2[3].n128_u64[1] = v3;
  OUTLINED_FUNCTION_9_50();
  v2[4].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v5;
  v2[5].n128_u64[0] = sub_257743794();
  v2[5].n128_u64[1] = v6;
  OUTLINED_FUNCTION_8_52();
  v2[6].n128_u64[0] = v7;
  v2[6].n128_u64[1] = v8;
  if (*(*(v0 + 16) + 16))
  {
    OUTLINED_FUNCTION_12_54();
    do
    {
      OUTLINED_FUNCTION_14_37();
      OUTLINED_FUNCTION_10_53();
      if (v10)
      {
        sub_257483754((v9 > 1), v1, 1);
      }

      OUTLINED_FUNCTION_16_35();
    }

    while (!v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v12 = OUTLINED_FUNCTION_13_38();
  v14 = v13;

  v2[7].n128_u64[0] = v12;
  v2[7].n128_u64[1] = v14;
  return v2;
}

__n128 *_s20MLModelSpecification13NeuralNetworkV5LayerV29RandomBernoulliLikeParametersV20propertyDescriptionsSaySS4name_SS5valuetGvg_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_3_78(v0, xmmword_257743FF0);
  v0[3].n128_u64[0] = sub_257743974();
  v0[3].n128_u64[1] = v1;
  OUTLINED_FUNCTION_9_50();
  v0[4].n128_u64[0] = v2;
  v0[4].n128_u64[1] = v3;
  v0[5].n128_u64[0] = sub_257743794();
  v0[5].n128_u64[1] = v4;
  return v0;
}

uint64_t NeuralNetwork.Layer.CategoricalDistributionParameters.propertyDescriptions.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257744000;
  *(v1 + 32) = 1684366675;
  *(v1 + 40) = 0xE400000000000000;
  *(v1 + 48) = sub_257743974();
  *(v1 + 56) = v2;
  strcpy((v1 + 64), "Sample Count");
  *(v1 + 77) = 0;
  *(v1 + 78) = -5120;
  *(v1 + 80) = sub_257743974();
  *(v1 + 88) = v3;
  *(v1 + 96) = 0x737469676F4CLL;
  *(v1 + 104) = 0xE600000000000000;
  v4 = 1702195828;
  if (!*(v0 + 16))
  {
    v4 = 0x65736C6166;
  }

  v5 = 0xE500000000000000;
  if (*(v0 + 16))
  {
    v5 = 0xE400000000000000;
  }

  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 128) = 0x6E6F6C69737045;
  *(v1 + 136) = 0xE700000000000000;
  *(v1 + 144) = sub_257743794();
  *(v1 + 152) = v6;
  *(v1 + 160) = 0x74617265706D6554;
  *(v1 + 168) = 0xEB00000000657275;
  *(v1 + 176) = sub_257743794();
  *(v1 + 184) = v7;
  return v1;
}

BOOL sub_25773E2F4()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v3)
  {
    OUTLINED_FUNCTION_119_0(v2);
    if (v3)
    {
      if (*(v1 + 12) == *(v0 + 12))
      {
        v4(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_119();
        v7 = sub_25773EA90(v5, v6, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v7))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25773E3DC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x277D84F90];
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_25773E440()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v3)
  {
    OUTLINED_FUNCTION_119_0(v2);
    if (v3)
    {
      if (*(v1 + 12) == *(v0 + 12))
      {
        v5 = v4;
        if (sub_257487374())
        {
          v5(0);
          sub_2577431B4();
          OUTLINED_FUNCTION_0_119();
          v8 = sub_25773EA90(v6, v7, MEMORY[0x277D216D0]);
          if (OUTLINED_FUNCTION_4_2(v8))
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25773E508@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a1(0);
  *a2 = 0;
  a2[1] = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t NeuralNetwork.Layer.RandomBernoulliStaticParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL static NeuralNetwork.Layer.RandomBernoulliStaticParameters.== infix(_:_:)()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v1)
  {
    OUTLINED_FUNCTION_119_0(v0);
    if (v1)
    {
      if (sub_257487374())
      {
        type metadata accessor for Proto_RandomBernoulliStaticLayerParams(0);
        sub_2577431B4();
        OUTLINED_FUNCTION_0_119();
        v4 = sub_25773EA90(v2, v3, MEMORY[0x277D216D0]);
        if (OUTLINED_FUNCTION_4_2(v4))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25773E690@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  a1(0);
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

BOOL sub_25773E6EC()
{
  OUTLINED_FUNCTION_104_0();
  result = 0;
  if (v1)
  {
    v3 = OUTLINED_FUNCTION_119_0(v0);
    if (v1)
    {
      v2(0, v3);
      sub_2577431B4();
      OUTLINED_FUNCTION_0_119();
      v6 = sub_25773EA90(v4, v5, MEMORY[0x277D216D0]);
      if (OUTLINED_FUNCTION_4_2(v6))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t NeuralNetwork.Layer.CategoricalDistributionParameters.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  type metadata accessor for Proto_CategoricalDistributionLayerParams(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
}

uint64_t sub_25773EA90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25773EE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_3_78(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1684366675;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

char *OUTLINED_FUNCTION_12_54()
{

  return sub_257483754(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_13_38()
{

  return sub_257743604();
}

uint64_t OUTLINED_FUNCTION_14_37()
{

  return sub_257743974();
}

void OUTLINED_FUNCTION_16_35()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_25773F080(uint64_t a1)
{
  v3 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return v8;
  }

  v30[1] = v1;
  v38 = MEMORY[0x277D84F90];
  v36 = v4;
  sub_2574854F0(0, v7, 0);
  v8 = v38;
  result = sub_25770BCC0(v36);
  v11 = result;
  v12 = v36;
  v14 = v13;
  v15 = 0;
  v37 = v36 + 64;
  v31 = v36 + 72;
  v32 = v7;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < 1 << *(v12 + 32))
    {
      v16 = v11 >> 6;
      if ((*(v37 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v12 + 36) != v14)
      {
        goto LABEL_25;
      }

      v35 = v10;
      v17 = *(*(v12 + 48) + 8 * v11);
      v18 = *(*(v12 + 56) + 8 * v11);
      result = _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      if (v17 < 0)
      {
        goto LABEL_26;
      }

      *v6 = v17;
      v6[1] = v18;
      v38 = v8;
      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2574854F0(v19 > 1, v20 + 1, 1);
        v8 = v38;
      }

      *(v8 + 16) = v20 + 1;
      result = sub_257741018(v6, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20);
      v12 = v36;
      v21 = 1 << *(v36 + 32);
      if (v11 >= v21)
      {
        goto LABEL_27;
      }

      v22 = *(v37 + 8 * v16);
      if ((v22 & (1 << v11)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v36 + 36) != v14)
      {
        goto LABEL_29;
      }

      v23 = v22 & (-2 << (v11 & 0x3F));
      if (v23)
      {
        v21 = __clz(__rbit64(v23)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v24 = v32;
      }

      else
      {
        v25 = v16 << 6;
        v26 = v16 + 1;
        v24 = v32;
        v27 = (v31 + 8 * v16);
        while (v26 < (v21 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_257653FC0(v11, v14, v35 & 1);
            v12 = v36;
            v21 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_257653FC0(v11, v14, v35 & 1);
        v12 = v36;
      }

LABEL_19:
      if (++v15 == v24)
      {
        return v8;
      }

      v10 = 0;
      v14 = *(v12 + 36);
      v11 = v21;
      if (v21 < 0)
      {
        break;
      }
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
  __break(1u);
  return result;
}

uint64_t sub_25773F384()
{
  v58[45] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B28, &unk_257773B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2577503A0;
  v6 = 0xE700000000000000;
  *(inited + 32) = 0x44492065657254;
  *(inited + 40) = 0xE700000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = inited;
  v58[0] = *v0;
  *(inited + 48) = sub_257743674();
  *(v7 + 56) = v8;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0x44492065646F4ELL;
  *(v7 + 80) = 0xE700000000000000;
  if ((*(v0 + 8) & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58[0] = *(v0 + 8);
  *(v7 + 88) = sub_257743674();
  *(v7 + 96) = v9;
  *(v7 + 104) = 0;
  strcpy((v7 + 112), "Node Behavior");
  *(v7 + 126) = -4864;
  if (*(v0 + 24) == 1)
  {
    v10 = *(v0 + 16);
    v11 = qword_257779510[v10];
    v12 = qword_2577794D8[v10];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  *(v7 + 128) = v11;
  *(v7 + 136) = v12;
  *(v7 + 144) = 0;
  strcpy((v7 + 152), "Feature Index");
  *(v7 + 166) = -4864;
  if ((*(v0 + 32) & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v4 = 0xD000000000000011;
  v58[0] = *(v0 + 32);
  *(v7 + 168) = sub_257743674();
  *(v7 + 176) = v13;
  *(v7 + 184) = 0;
  strcpy((v7 + 192), "Branch Value");
  *(v7 + 205) = 0;
  *(v7 + 206) = -5120;
  v58[0] = *(v0 + 40);
  *(v7 + 208) = sub_257743674();
  *(v7 + 216) = v14;
  *(v7 + 224) = 0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 232) = 0xD000000000000012;
  *(v7 + 240) = v15;
  if ((*(v0 + 48) & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v58[0] = *(v0 + 48);
  *(v7 + 248) = sub_257743674();
  *(v7 + 256) = v16;
  *(v7 + 264) = 0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 272) = 0xD000000000000013;
  *(v7 + 280) = v17;
  if ((*(v0 + 56) & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    sub_257469AE0();
    v47 = v52;
    goto LABEL_17;
  }

  v58[0] = *(v0 + 56);
  *(v7 + 288) = sub_257743674();
  *(v7 + 296) = v18;
  *(v7 + 304) = 0;
  OUTLINED_FUNCTION_23_7();
  *(v7 + 312) = 0xD000000000000021;
  *(v7 + 320) = v19;
  LOBYTE(v58[0]) = *(v0 + 64);
  *(v7 + 328) = sub_257743674();
  *(v7 + 336) = v20;
  *(v7 + 344) = 0;
  v21 = TreeEnsemble.TreeNode.leafValue.getter();
  sub_2576A8AF8(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, v56, v57, v58[0], v58[1], v58[2], v58[3], v58[4], v58[5], v58[6], v58[7], v58[8], v58[9], v58[10], v58[11], v58[12]);
  v58[0] = v29;
  sub_257740870(v58);

  v30 = v58[0];
  v31 = *(v58[0] + 16);
  if (v31)
  {
    v58[0] = MEMORY[0x277D84F90];
    sub_257484060(0, v31, 0);
    v32 = v58[0];
    v33 = v30 + 40;
    do
    {
      v34 = sub_257743974();
      v36 = v35;
      v37 = sub_257743674();
      v39 = v38;
      v58[0] = v32;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_257484060(v40 > 1, v41 + 1, 1);
        v32 = v58[0];
      }

      *(v32 + 16) = v41 + 1;
      v42 = v32 + 40 * v41;
      *(v42 + 32) = v34;
      *(v42 + 40) = v36;
      *(v42 + 48) = v37;
      *(v42 + 56) = v39;
      *(v42 + 64) = 0;
      v33 += 16;
      --v31;
    }

    while (v31);

    v4 = 0xD000000000000011;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v43 = sub_2576AACFC(v32);
  v45 = v44;
  sub_257469AE0();
  v47 = v46;
  *(v46 + 16) = 9;
  *(v46 + 352) = 0x6C6156206661654CLL;
  *(v46 + 360) = 0xEB00000000736575;
  *(v46 + 368) = v43;
  *(v46 + 376) = v45;
  *(v46 + 384) = 2;
  v58[0] = *(v0 + 80);
  v6 = sub_257743674();
  v1 = v48;
  v3 = *(v47 + 16);
  v2 = v3 + 1;
  if (v3 >= *(v47 + 24) >> 1)
  {
    goto LABEL_23;
  }

LABEL_17:
  OUTLINED_FUNCTION_23_7();
  *(v47 + 16) = v2;
  v49 = v47 + 40 * v3;
  *(v49 + 32) = v4;
  *(v49 + 40) = v50;
  *(v49 + 48) = v6;
  *(v49 + 56) = v1;
  *(v49 + 64) = 0;
  return sub_2576AACFC(v47);
}

uint64_t TreeEnsemble.TreeNode.treeID.getter()
{
  result = *v0;
  if (*v0 < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.treeID.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.treeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *result = *v1;
    return sub_25763D564;
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.nodeID.getter()
{
  result = *(v0 + 8);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.nodeID.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 8) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.nodeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25763D5CC;
  }

  return result;
}

void TreeEnsemble.TreeNode.nodeBehavior.getter(char *a1@<X8>)
{
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 6;
  }

  *a1 = v2;
}

unsigned __int8 *TreeEnsemble.TreeNode.nodeBehavior.setter(unsigned __int8 *result)
{
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.nodeBehavior.modify(uint64_t a1))(uint64_t *result)
{
  *a1 = v1;
  if (*(v1 + 24) == 1)
  {
    v2 = *(v1 + 16);
  }

  else
  {
    v2 = 6;
  }

  *(a1 + 8) = v2;
  return sub_25763F7F4;
}

uint64_t TreeEnsemble.TreeNode.featureIndex.getter()
{
  result = *(v0 + 32);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.featureIndex.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.featureIndex.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 32);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25773FA48;
  }

  return result;
}

uint64_t *sub_25773FA48(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 32) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double (*TreeEnsemble.TreeNode.branchValue.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 40);
  return sub_25773FAA8;
}

double sub_25773FAA8(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 40) = *a1;
  return result;
}

uint64_t TreeEnsemble.TreeNode.trueChildNodeID.getter()
{
  result = *(v0 + 48);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.trueChildNodeID.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 48) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.trueChildNodeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 48);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25773FB0C;
  }

  return result;
}

uint64_t *sub_25773FB0C(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 48) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t TreeEnsemble.TreeNode.falseChildNodeID.getter()
{
  result = *(v0 + 56);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t TreeEnsemble.TreeNode.falseChildNodeID.setter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 56) = result;
  }

  return result;
}

uint64_t *(*TreeEnsemble.TreeNode.falseChildNodeID.modify(uint64_t *(*result)(uint64_t *result, char a2)))(uint64_t *result, char a2)
{
  *(result + 1) = v1;
  v2 = *(v1 + 56);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *result = v2;
    return sub_25773FB84;
  }

  return result;
}

uint64_t *sub_25773FB84(uint64_t *result, char a2)
{
  v2 = *result;
  if (a2)
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
LABEL_5:
      *(result[1] + 56) = v2;
      return result;
    }

    __break(1u);
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t (*TreeEnsemble.TreeNode.missingValueFollowsTrueBranch.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 64);
  return sub_25773FBE4;
}

uint64_t TreeEnsemble.TreeNode.leafValue.getter()
{
  v1 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_3();
  v5 = (v4 - v3);
  v6 = *(v0 + 72);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    return sub_25773FDF8(v8);
  }

  v17 = MEMORY[0x277D84F90];
  sub_257484D60(0, v7, 0);
  v8 = v17;
  v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10 = *(v2 + 72);
  while (1)
  {
    result = sub_2577405E4(v9, v5, type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo);
    v12 = *v5;
    if (*v5 < 0)
    {
      break;
    }

    v13 = v5[1];
    sub_25774053C(v5);
    v15 = *(v17 + 16);
    v14 = *(v17 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_257484D60(v14 > 1, v15 + 1, 1);
    }

    *(v17 + 16) = v15 + 1;
    v16 = v17 + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13;
    v9 += v10;
    if (!--v7)
    {
      return sub_25773FDF8(v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t TreeEnsemble.TreeNode.leafValue.setter(uint64_t a1)
{
  v2 = sub_25773F080(a1);

  *(v1 + 72) = v2;
  return result;
}

uint64_t sub_25773FDF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A68, &qword_257777F70);
    v3 = sub_257743904();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_257740E6C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t (*TreeEnsemble.TreeNode.leafValue.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = TreeEnsemble.TreeNode.leafValue.getter();
  return sub_25773FED8;
}

uint64_t sub_25773FED8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    v5 = sub_25773F080(v4);

    *(v2 + 72) = v5;
  }

  else
  {
    v7 = sub_25773F080(v3);

    *(v2 + 72) = v7;
  }

  return result;
}

double (*TreeEnsemble.TreeNode.relativeHitRate.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 80);
  return sub_25773FFB8;
}

double sub_25773FFB8(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 80) = *a1;
  return result;
}

uint64_t TreeEnsemble.TreeNode.init(treeID:nodeID:nodeBehavior:featureIndex:branchValue:trueChildNodeID:falseChildNodeID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v15 = *a3;
  result = _s20MLModelSpecification12TreeEnsembleV0C4NodeVAEycfC_0(a7);
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *a7 = a1;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(a7 + 8) = a2;
  *(a7 + 16) = v15;
  *(a7 + 24) = 1;
  if (a4 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(a7 + 32) = a4;
  *(a7 + 40) = a8;
  if (a5 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(a7 + 48) = a5;
  if ((a6 & 0x8000000000000000) == 0)
  {
    *(a7 + 56) = a6;
    *(a7 + 64) = *(a7 + 64);
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t TreeEnsemble.TreeNode.init(treeID:nodeID:leafValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = _s20MLModelSpecification12TreeEnsembleV0C4NodeVAEycfC_0(a4);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = a1;
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(a4 + 8) = a2;
      v9 = sub_25773F080(a3);

      *(a4 + 72) = v9;
      *(a4 + 16) = 6;
      *(a4 + 24) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t TreeEnsemble.TreeNode.customMirror.getter()
{
  v1 = sub_257743A84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for TreeEnsemble.TreeNode(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_2577405E4(v0, v11 - v10, type metadata accessor for TreeEnsemble.TreeNode);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  result = swift_allocObject();
  *(result + 16) = xmmword_257748730;
  *(result + 32) = 0x444965657274;
  *(result + 40) = 0xE600000000000000;
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = result;
  v14 = MEMORY[0x277D83B88];
  *(result + 48) = *v0;
  *(result + 72) = v14;
  *(result + 80) = 0x444965646F6ELL;
  *(result + 88) = 0xE600000000000000;
  v15 = *(v0 + 8);
  if (v15 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 96) = v15;
  *(result + 120) = v14;
  strcpy((result + 128), "featureIndex");
  *(result + 141) = 0;
  *(result + 142) = -5120;
  v16 = *(v0 + 32);
  if (v16 < 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *(result + 144) = v16;
  *(result + 168) = v14;
  *(result + 176) = 0x615668636E617262;
  *(result + 184) = 0xEB0000000065756CLL;
  v17 = MEMORY[0x277D839F8];
  *(result + 192) = *(v0 + 40);
  *(result + 216) = v17;
  *(result + 224) = 0x6C69684365757274;
  *(result + 232) = 0xEF444965646F4E64;
  v18 = *(v0 + 48);
  if (v18 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(result + 240) = v18;
  *(result + 264) = v14;
  *(result + 272) = 0xD000000000000010;
  *(result + 280) = 0x8000000257782210;
  v19 = *(v0 + 56);
  if ((v19 & 0x8000000000000000) == 0)
  {
    *(result + 288) = v19;
    *(result + 312) = v14;
    *(result + 320) = 0xD00000000000001DLL;
    *(result + 328) = 0x8000000257782230;
    v20 = MEMORY[0x277D839B0];
    *(result + 336) = *(v0 + 64);
    *(result + 360) = v20;
    *(result + 368) = 0x756C61566661656CLL;
    *(result + 376) = 0xE900000000000065;
    v21 = TreeEnsemble.TreeNode.leafValue.getter();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881C78, &qword_257779388);
    v13[48] = v21;
    v13[51] = v22;
    v13[52] = 0x65766974616C6572;
    v13[53] = 0xEF65746152746948;
    v23 = *(v0 + 80);
    v13[57] = MEMORY[0x277D839F8];
    v13[54] = v23;
    v24 = sub_257743A74();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v24);
    (*(v2 + 104))(v5, *MEMORY[0x277D84C38], v1);
    return sub_257743AA4();
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t TreeEnsemble.BranchCondition.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_257740514@<X0>(uint64_t *a1@<X8>)
{
  result = TreeEnsemble.BranchCondition.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25774053C(uint64_t a1)
{
  v2 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TreeEnsemble.TreeNode(uint64_t a1)
{
  result = qword_27F881C88;
  if (!qword_27F881C88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2577405E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_257740650()
{
  result = qword_27F880198;
  if (!qword_27F880198)
  {
    type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F880198);
  }

  return result;
}

unint64_t sub_2577406AC()
{
  result = qword_27F881C80;
  if (!qword_27F881C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F881C80);
  }

  return result;
}

uint64_t sub_257740728(uint64_t a1)
{
  result = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15BranchConditionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_257740870(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2576FC214();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2577408DC(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2577408DC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_257743964();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880B68, &unk_25776F930);
        v6 = sub_257743764();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_257682550(v7, v8, a1, v4);
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
    return sub_2576823FC(0, v2, 1, a1);
  }

  return result;
}

void sub_257740A08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_97(a1, a2, a3, a4);
  v8 = sub_2577438F4();
  if (!v5[2])
  {

LABEL_30:
    *v4 = v8;
    return;
  }

  v33 = v4;
  v9 = 0;
  OUTLINED_FUNCTION_3_79();
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if ((v12 & v10) == 0)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v7[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    if (v6)
    {
      OUTLINED_FUNCTION_10_54();
      if (v31 != v32)
      {
        *v7 = -1 << v30;
      }

      else
      {
        OUTLINED_FUNCTION_11_53(v30);
      }

      v5[2] = 0;
    }

    v4 = v33;
    goto LABEL_30;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = v16 | (v9 << 6);
    v20 = *(v5[6] + 8 * v19);
    v21 = *(v5[7] + 8 * v19);
    v22 = sub_257743A04() & ~(-1 << *(v8 + 32));
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_53();
LABEL_21:
    OUTLINED_FUNCTION_5_64();
    *(v15 + v27) |= v28;
    *(*(v8 + 48) + 8 * v29) = v20;
    *(*(v8 + 56) + 8 * v29) = v21;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_54();
  while (++v23 != v25 || (v24 & 1) == 0)
  {
    v26 = v23 == v25;
    if (v23 == v25)
    {
      v23 = 0;
    }

    v24 |= v26;
    if (*(v15 + 8 * v23) != -1)
    {
      OUTLINED_FUNCTION_6_66();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_257740C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_1_97(a1, a2, a3, a4);
  v37 = v6;
  v8 = sub_2577438F4();
  if (!v5[2])
  {
LABEL_31:

LABEL_32:
    *v4 = v8;
    return;
  }

  v36 = v4;
  v9 = 0;
  OUTLINED_FUNCTION_3_79();
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v15 = v8 + 64;
  if ((v12 & v10) == 0)
  {
LABEL_7:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v7[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v36;
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_10_54();
    v4 = v36;
    if (v34 != v35)
    {
      *v7 = -1 << v33;
    }

    else
    {
      OUTLINED_FUNCTION_11_53(v33);
    }

    v5[2] = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_12:
    v19 = v16 | (v9 << 6);
    v20 = *(v5[6] + 8 * v19);
    v21 = (v5[7] + 16 * v19);
    v22 = *v21;
    v23 = v21[1];
    if ((v37 & 1) == 0)
    {
    }

    v24 = sub_257743A04() & ~(-1 << *(v8 + 32));
    if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_53();
LABEL_23:
    OUTLINED_FUNCTION_5_64();
    *(v15 + v29) |= v30;
    *(*(v8 + 48) + 8 * v31) = v20;
    v32 = (*(v8 + 56) + 16 * v31);
    *v32 = v22;
    v32[1] = v23;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_7_54();
  while (++v25 != v27 || (v26 & 1) == 0)
  {
    v28 = v25 == v27;
    if (v25 == v27)
    {
      v25 = 0;
    }

    v26 |= v28;
    if (*(v15 + 8 * v25) != -1)
    {
      OUTLINED_FUNCTION_6_66();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_257740E08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_257774CB0;
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

uint64_t sub_257740E6C(uint64_t a1, char a2, void *a3)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
  }

  v6 = 0;
  v7 = (a1 + 40);
  while (v6 < *(a1 + 16))
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    v10 = *a3;
    v12 = sub_25765407C(v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F881A70, &qword_257777F78);
        sub_2577438A4();
      }
    }

    else
    {
      sub_257740A08(v15, a2 & 1, &qword_27F881A68, &qword_257777F70);
      v17 = sub_25765407C(v8);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      *(v19[7] + 8 * v12) = v9;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      *(v19[6] + 8 * v12) = v8;
      *(v19[7] + 8 * v12) = v9;
      v20 = v19[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v19[2] = v22;
    }

    ++v6;
    v7 += 2;
    a2 = 1;
    if (v24 == v6)
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2577439B4();
  __break(1u);
  return result;
}

uint64_t sub_257741018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Proto_TreeEnsembleParameters.TreeNode.EvaluationInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_97(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_11_53@<X0>(uint64_t a1@<X8>)
{

  return sub_257740E08(0, (a1 + 63) >> 6, v1);
}

uint64_t sub_257741150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B58, &qword_257744130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2577442B0;
  OUTLINED_FUNCTION_16_36(v1, 26707);
  v2 = *v0;
  v3 = *(*v0 + 16);
  if (v3)
  {
    v15 = MEMORY[0x277D84F90];
    sub_257483754(0, v3, 0);
    v4 = v2 + 32;
    do
    {
      v4 += 8;
      v5 = sub_257743974();
      v7 = v6;
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257483754((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1F8, &qword_257770B90);
  sub_2574A16C8();
  v11 = sub_257743604();
  v13 = v12;

  *(v1 + 48) = v11;
  *(v1 + 56) = v13;
  return v1;
}

void sub_257741304(void (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B38, &qword_2577448C0);
  OUTLINED_FUNCTION_63();
  v5 = v4;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_342_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_157_0();
  v9 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  a1();
  if (__swift_getEnumTagSinglePayload(v2, 1, v9) == 1)
  {
    sub_2574695E4(v2, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    sub_2577290B0();
    *v1 = 0x7365756C6156;
    v1[1] = 0xE600000000000000;
    OUTLINED_FUNCTION_1_98();
    sub_257742BD8();
    sub_257469D34();
    v15 = v14;
    v16 = *(v14 + 16);
    if (v16 >= *(v14 + 24) >> 1)
    {
      sub_257469D34();
      v15 = v17;
    }

    sub_257706ADC(v13, type metadata accessor for NeuralNetwork.WeightParameters);
    *(v15 + 16) = v16 + 1;
    sub_25749E9A8(v1, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16);
  }

  OUTLINED_FUNCTION_434();
}

uint64_t static NeuralNetwork.Layer.constant(name:outputName:shape:values:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v37[1] = a6;
  v37[2] = a1;
  v37[3] = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A318, &qword_257745D10);
  OUTLINED_FUNCTION_13(v12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_342_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = v37 - v16;
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3();
  v21 = (v20 - v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879B10, &unk_2577440D0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2577442B0;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  *v21 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_LoadConstantLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  NeuralNetwork.Layer.ConstantParameters.shape.setter(a5);
  NeuralNetwork.WeightParameters.init(_:updatable:)();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  NeuralNetwork.Layer.ConstantParameters.values.setter(v17);
  swift_storeEnumTagMultiPayload();
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  v31 = *(type metadata accessor for Proto_NeuralNetworkLayer(0) + 20);
  if (qword_27F879260 != -1)
  {
    swift_once();
  }

  *(a7 + v31) = qword_27F87BEE8;

  sub_257528334();
  sub_2575283BC();
  sub_25752842C(v22);
  sub_2574897E0(v7);
  type metadata accessor for Proto_NeuralNetworkLayer.OneOf_Layer(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_25752846C();
  return sub_257706ADC(v21, type metadata accessor for NeuralNetwork.Layer.Kind);
}

uint64_t static NeuralNetwork.Layer.Kind.constant(shape:values:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_342_0();
  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_LoadConstantLayerParams(0);

  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  NeuralNetwork.Layer.ConstantParameters.shape.setter(a1);
  NeuralNetwork.WeightParameters.init(_:updatable:)();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  NeuralNetwork.Layer.ConstantParameters.values.setter(v2);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t static NeuralNetwork.Layer.Kind.loadConstant(shape:values:)()
{
  OUTLINED_FUNCTION_267();
  v1 = v0;
  v2 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  v3 = OUTLINED_FUNCTION_13(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_1_98();
  sub_257742BD8();

  NeuralNetwork.Layer.ConstantParameters.init(shape:values:)(v7, v6, v1);
  type metadata accessor for NeuralNetwork.Layer.Kind(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*NeuralNetwork.Layer.ConstantParameters.shape.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ConstantParameters.shape.getter(a1);
  return sub_257741AB8;
}

void (*NeuralNetwork.Layer.ConstantParameters.values.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v0[4] = v7;
  NeuralNetwork.Layer.ConstantParameters.values.getter(v7);
  return sub_257741BAC;
}

uint64_t sub_257741C0C@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v34 = (v6 - v5);
  v7 = type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3();
  v35 = (v10 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F87A1A0, &qword_257745750);
  v12 = OUTLINED_FUNCTION_13(v11);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  a1(0);
  sub_2574DA900();
  LODWORD(a1) = OUTLINED_FUNCTION_18_46(v17);
  sub_2574695E4(v17, &qword_27F87A1A0, &qword_257745750);
  if (a1 == 1)
  {
    OUTLINED_FUNCTION_44();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v7);
  }

  else
  {
    sub_2574DA900();
    if (OUTLINED_FUNCTION_18_46(v15) == 1)
    {
      v22 = v34;
      *v34 = MEMORY[0x277D84F90];
      *(v22 + 8) = xmmword_257745740;
      *(v22 + 24) = xmmword_257745740;
      *(v22 + 40) = xmmword_257745740;
      *(v22 + 56) = 0;
      _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
      type metadata accessor for Proto_QuantizationParams(0);
      OUTLINED_FUNCTION_44();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      if (OUTLINED_FUNCTION_18_46(v15) != 1)
      {
        sub_2574695E4(v15, &qword_27F87A1A0, &qword_257745750);
      }
    }

    else
    {
      v22 = v34;
      sub_2577290B0();
    }

    v27 = v35;
    v28 = sub_2576FF45C(v22, v35);
    v29 = v36(v28);

    *v27 = v29;
    OUTLINED_FUNCTION_1_98();
    sub_257742BD8();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v7);
    OUTLINED_FUNCTION_0_97();
    return sub_257706ADC(v27, v33);
  }
}

uint64_t _s20MLModelSpecification13NeuralNetworkV5LayerV18ConstantParametersV5shapeSaySiGvg_0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_257483724(0, v2, 0);
    result = v9;
    v4 = (v1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 < 0)
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257483724(v7 > 1, v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void _s20MLModelSpecification13NeuralNetworkV5LayerV18ConstantParametersV5shapeSaySiGvs_0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_257484698(0, v4, 0);
    v5 = 32;
    v6 = v10;
    while (1)
    {
      v7 = *(a1 + v5);
      if (v7 < 0)
      {
        break;
      }

      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_257484698(v8 > 1, v9 + 1, 1);
      }

      *(v10 + 16) = v9 + 1;
      *(v10 + 8 * v9 + 32) = v7;
      v5 += 8;
      if (!--v4)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
LABEL_9:

    *v2 = v6;
  }
}

uint64_t (*NeuralNetwork.Layer.ConstantNDParameters.shape.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = NeuralNetwork.Layer.ConstantParameters.shape.getter(a1);
  return sub_2577420E0;
}

uint64_t sub_2577420F8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t sub_257742168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v6);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_2574DA900();
  return a5(v9);
}

void sub_257742228(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  if (OUTLINED_FUNCTION_18_46(a1) == 1)
  {
    sub_2574695E4(a1, &qword_27F880938, &unk_25776E510);
    v11 = a2(0);
    sub_2574695E4(v2 + *(v11 + 24), &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_434();

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  else
  {
    sub_2577290B0();
    OUTLINED_FUNCTION_6_67();
    sub_257742BD8();
    OUTLINED_FUNCTION_0_97();
    sub_257706ADC(v10, v17);
    v18 = a2(0);
    sub_2574695E4(v2 + *(v18 + 24), &qword_27F87A1A0, &qword_257745750);
    OUTLINED_FUNCTION_1_5();
    sub_2577290B0();
    OUTLINED_FUNCTION_21();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v5);
    OUTLINED_FUNCTION_434();
  }
}

void (*NeuralNetwork.Layer.ConstantNDParameters.values.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = OUTLINED_FUNCTION_68_3(v1);
  v0[1] = v2;
  OUTLINED_FUNCTION_13(v2);
  v0[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v4);
  v6 = *(v5 + 64);
  v0[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v0[4] = v7;
  NeuralNetwork.Layer.ConstantNDParameters.values.getter(v7);
  return sub_2577424AC;
}

void sub_2577424D8(uint64_t **a1, char a2, uint64_t (*a3)(void), void (*a4)(void *))
{
  v4 = *a1;
  v5 = (*a1)[4];
  if (a2)
  {
    v8 = v4[2];
    v7 = v4[3];
    sub_2574DA900();
    a4(v7);
    sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
  }

  else
  {
    v10 = type metadata accessor for NeuralNetwork.WeightParameters(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v10) == 1)
    {
      v11 = *v4;
      sub_2574695E4(v5, &qword_27F880938, &unk_25776E510);
      v12 = v11 + *(a3(0) + 24);
      sub_2574695E4(v12, &qword_27F87A1A0, &qword_257745750);
      v13 = 1;
    }

    else
    {
      v14 = *v4;
      OUTLINED_FUNCTION_6_67();
      sub_257742BD8();
      OUTLINED_FUNCTION_0_97();
      sub_257706ADC(v5, v15);
      v12 = v14 + *(a3(0) + 24);
      sub_2574695E4(v12, &qword_27F87A1A0, &qword_257745750);
      OUTLINED_FUNCTION_1_5();
      sub_2577290B0();
      v13 = 0;
    }

    v7 = v4[3];
    v5 = v4[4];
    v8 = v4[2];
    __swift_storeEnumTagSinglePayload(v12, v13, 1, v4[1]);
  }

  free(v5);
  free(v7);
  free(v8);
  OUTLINED_FUNCTION_434();

  free(v16);
}

uint64_t NeuralNetwork.Layer.ConstantNDParameters.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Proto_LoadConstantNDLayerParams(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_257742730(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X4>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v11);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_157_0();
  *a5 = MEMORY[0x277D84F90];
  a2(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  a3(a1);
  NeuralNetwork.WeightParameters.init(_:updatable:)();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  a4(v5);
  OUTLINED_FUNCTION_434();
}

void sub_25774287C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, void (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  OUTLINED_FUNCTION_13(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_157_0();
  *a6 = MEMORY[0x277D84F90];
  a3(0);
  _s20MLModelSpecification13NeuralNetworkV5LayerV14CopyParametersVAGycfC_0();
  type metadata accessor for Proto_WeightParams(0);
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  a4(a1);
  OUTLINED_FUNCTION_1_98();
  sub_257742BD8();
  type metadata accessor for NeuralNetwork.WeightParameters(0);
  OUTLINED_FUNCTION_21();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  a5(v6);
  OUTLINED_FUNCTION_0_97();
  sub_257706ADC(a2, v23);
  OUTLINED_FUNCTION_434();
}

uint64_t NeuralNetwork.Layer.ConstantParameters.customMirror.getter()
{
  v0 = sub_257743A84();
  OUTLINED_FUNCTION_63();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE0, &unk_257744EA0);
  OUTLINED_FUNCTION_13(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  type metadata accessor for NeuralNetwork.Layer.ConstantParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  sub_257742BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879AE8, &qword_257744030);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257743FF0;
  v11 = OUTLINED_FUNCTION_16_36(v10, 26739);
  v12 = NeuralNetwork.Layer.ConstantParameters.shape.getter(v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F879DF8, &qword_25776F230);
  *(v10 + 48) = v12;
  *(v10 + 72) = v13;
  *(v10 + 80) = 0x7365756C6176;
  *(v10 + 88) = 0xE600000000000000;
  *(v10 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F880938, &unk_25776E510);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 96));
  NeuralNetwork.Layer.ConstantParameters.values.getter(boxed_opaque_existential_0);
  sub_257743A74();
  OUTLINED_FUNCTION_44();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  (*(v2 + 104))(v6, *MEMORY[0x277D84C38], v0);
  return sub_257743AA4();
}

uint64_t sub_257742BD8()
{
  OUTLINED_FUNCTION_267();
  v2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_257742CE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_257742DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_36@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = a2 & 0xFFFF00000000FFFFLL | 0x6570610000;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_18_46(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}
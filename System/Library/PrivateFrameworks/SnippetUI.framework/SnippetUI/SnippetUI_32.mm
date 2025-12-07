id sub_26A7DBC10(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_26A852168();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_26A736710();
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x26D6644E0](0, a1);
  }

  else
  {
    return *(a1 + 32);
  }
}

uint64_t sub_26A7DBD00@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

uint64_t sub_26A7DBDD8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  v8 = a2(0);
  if (v7)
  {
    OUTLINED_FUNCTION_63_2();
    sub_26A7E036C(a1 + v9, a4, a3);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a4, v10, 1, v8);
}

uint64_t sub_26A7DBE8C(uint64_t a1, __n128 a2)
{
  v3 = sub_26A84BA88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v22 = MEMORY[0x277D84F90];
    sub_26A7DCB8C(0, v7, 0);
    v8 = v22;
    v11 = *(v4 + 16);
    v9 = v4 + 16;
    v10 = v11;
    v12 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    do
    {
      v10(v6, v12, v3);
      v22 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A7DCB8C((v13 > 1), v14 + 1, 1);
      }

      v20 = v3;
      v21 = MEMORY[0x277D62EB0];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
      v10(boxed_opaque_existential_1, v6, v3);
      v8 = v22;
      *(v22 + 16) = v14 + 1;
      sub_26A4C2314(&v19, v8 + 40 * v14 + 32);
      (*(v9 - 8))(v6, v3);
      v12 += v18;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_26A7DC058(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_26A7DCFA0(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26A7DCFA0(v5 > 1, v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_26A576F3C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_26A7DC158()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v2 = type metadata accessor for VisualPropertyView(0);
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8)
  {
    v19 = MEMORY[0x277D84F90];
    sub_26A7DD144(0, v8, 0);
    v9 = v19;
    OUTLINED_FUNCTION_63_2();
    v11 = v1 + v10;
    v12 = *(v4 + 72);
    do
    {
      sub_26A7E036C(v11, v7, type metadata accessor for VisualPropertyView);
      v19 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26A7DD144((v13 > 1), v14 + 1, 1);
        v9 = v19;
      }

      v17 = v2;
      v18 = sub_26A6DF594();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      sub_26A7E036C(v7, boxed_opaque_existential_1, type metadata accessor for VisualPropertyView);
      *(v9 + 16) = v14 + 1;
      sub_26A4C2314(&v16, v9 + 40 * v14 + 32);
      sub_26A7E03CC(v7);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7DC2F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 width];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 height];
    if (v6)
    {
      v7 = v6;
      sub_26A851CD8();
      sub_26A851CD8();
      sub_26A84B268();

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_26A84B2B8();

  return __swift_storeEnumTagSinglePayload(a1, v8, 1, v9);
}

void sub_26A7DC3D0(uint64_t a1@<X8>)
{
  if ([v1 url])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A67B6BC(v3);
LABEL_15:

    return;
  }

  if ([v1 symbol])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A74DD58(v4);
    goto LABEL_15;
  }

  if ([v1 app_icon])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A5D1E1C(v5);
    goto LABEL_15;
  }

  if ([v1 avatar])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A7627F4(v6);
    goto LABEL_15;
  }

  if ([v1 monogram])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A65F414(v7);
    goto LABEL_15;
  }

  if ([v1 default_browser_app_icon])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A7A5BEC(v8);
    goto LABEL_15;
  }

  if ([v1 badged_image])
  {
    OUTLINED_FUNCTION_9_63();
    sub_26A64E984(v9);
    goto LABEL_15;
  }

  v10 = sub_26A84B718();

  __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
}

uint64_t sub_26A7DC554(uint64_t a1)
{
  switch(a1)
  {
    case 3:
      return sub_26A84FC18();
    case 2:
      return sub_26A84FBF8();
    case 1:
      return sub_26A84FC08();
  }

  return 0;
}

uint64_t SFCommandButtonItem.asActionProperty()()
{
  v1 = [v0 command];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD158, qword_26A886280);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26A8570D0;
  v3 = sub_26A84E278();
  v4 = MEMORY[0x277D63778];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 32));
  if (v1)
  {
    *boxed_opaque_existential_1 = v1;
    *(boxed_opaque_existential_1 + 8) = 0;
  }

  (*(*(v3 - 8) + 104))();

  return sub_26A84BAC8();
}

void *sub_26A7DCB8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DD978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DCC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_32();
  sub_26A7DEE6C(v4, v5, v6, v7, v8, v9, v10);
  *v3 = v11;
}

char *sub_26A7DCCC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DDA90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26A7DCCE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DDB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCD00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DDC98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCD64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DDD98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DCD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_26();
  sub_26A7E0074();
  *v3 = v4;
}

void *sub_26A7DCDCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DE310(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCE88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DE658(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26A7DCEA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DE760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCF20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DE864(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCF40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DE968(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCF60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DEA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DCF80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DEB88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD048(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DECA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD0AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DEF48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD124(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DF6C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD144(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DF7D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD1BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DF8E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD1DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DF9F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26A7DD1FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DFB08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DD2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_23_25();
  sub_26A7DFE18(v8, v9, v10, v11, v12, v13, v14, v15);
  *v7 = v16;
}

char *sub_26A7DD2F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26A7DFD20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_26A7DD490()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DD8, &unk_26A886560);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20, &unk_26A85C550);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD20, &unk_26A85C550);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3730(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DD5E4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7AD8, &qword_26A8863F0);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A4C23DC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86E0, &qword_26A8863F8);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DD6A4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A38, &unk_26A884510);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A4C2444(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2748, &qword_26A870E00);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DD764()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D48, &unk_26A884A40);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08, &qword_26A85C538);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD08, &qword_26A85C538);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3744(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DD8B8()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DA8, &qword_26A884B48);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3758(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8790, &qword_26A886540);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_26A7DD978(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3648, &qword_26A886550);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26A7A5650(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B87A0, &qword_26A886558);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DDA90(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8770, &qword_26A886510);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_26A7A37BC(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 80 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DDB94(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1880, &qword_26A884A60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_26A7A3798(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 72 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DDC98(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86D8, &qword_26A8863E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_26A7A3800((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DDD98(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8678, &qword_26A886360);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8680, &qword_26A886368);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DDEE4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A50, &qword_26A884528);
      v7 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_2_97();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_78();
        sub_26A4C2424(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8688, &unk_26A886380);
    OUTLINED_FUNCTION_6_69(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DDFA8()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DA0, &qword_26A884B38);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18, &qword_26A884B40);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD18, &qword_26A884B40);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3838(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DE0FC()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D20, &unk_26A884A10);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A4C23DC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8748, &qword_26A8864C8);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DE1BC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D50, &unk_26A884A50);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10, &unk_26A85C540);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD10, &unk_26A85C540);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A384C(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void *sub_26A7DE310(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8760, &qword_26A8864E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26A7A3860((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DE418()
{
  OUTLINED_FUNCTION_34_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CA0, &unk_26A884950);
      v7 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_2_97();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_78();
        sub_26A4C2424(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86F0, &qword_26A886418);
    OUTLINED_FUNCTION_6_69(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DE4DC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CF8, &unk_26A8849E0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0, &unk_26A85C520);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF0, &unk_26A85C520);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A38A0(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void *sub_26A7DE658(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7DB0, &qword_26A884B50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26A7A5644(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DE760(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8708, &qword_26A886448);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26A7A3860(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DE864(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = a4[2];
    if (v7 <= v8)
    {
      v9 = a4[2];
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86C0, &qword_26A8863D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26A7A5644((a4 + 4), v8, v10 + 4);
        a4[2] = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 4, a4 + 4, 48 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DE968(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86B0, &qword_26A8863C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A4C2404((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86B8, &qword_26A8863C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DEA78(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A58, &unk_26A884530);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1110, qword_26A86B668);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DEB88(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86C8, &qword_26A8863D8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_26A7A3860((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86D0, &qword_26A8863E0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DECA0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8718, &qword_26A886460);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB670, &unk_26A8849C0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_26A7A38FC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_26A7DEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_81();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_86_1(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_29_6();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_26A7DEF48(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A60, &unk_26A884540);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A68, &unk_26A886500);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DF058()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7C98, &qword_26A886400);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3910(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86E8, &unk_26A886408);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF118()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D30, &unk_26A884A20);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00, &qword_26A85C530);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACD00, &qword_26A85C530);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A3938(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DF26C()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D28, &qword_26A8864D0);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A5654(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8750, &qword_26A8864D8);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF32C()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D18, &qword_26A8864B0);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3964(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8740, &unk_26A8864B8);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF3EC()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D10, &unk_26A884A00);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A398C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8738, &qword_26A8864A8);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DF4AC()
{
  OUTLINED_FUNCTION_66_2();
  OUTLINED_FUNCTION_34_13();
  if (v3)
  {
    OUTLINED_FUNCTION_4_81();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_32_11();
      if (v4)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  OUTLINED_FUNCTION_8_67();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D00, &unk_26A886480);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8, &unk_26A8849F0);
    OUTLINED_FUNCTION_2_5(v6);
    v8 = *(v7 + 72);
    v9 = OUTLINED_FUNCTION_3_90();
    _swift_stdlib_malloc_size(v9);
    if (v8)
    {
      OUTLINED_FUNCTION_12_52();
      v11 = v11 && v8 == -1;
      if (!v11)
      {
        OUTLINED_FUNCTION_11_56(v10);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ACCF8, &unk_26A8849F0);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_10_54(v12);
    sub_26A7A39B4(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_13_48();
  }

  OUTLINED_FUNCTION_61_2();
}

void sub_26A7DF600()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D08, &qword_26A886490);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A3A90(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8730, &unk_26A886498);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_26A7DF6C0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86A0, &qword_26A8863A8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B6680, &qword_26A8863B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DF7D0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8780, &unk_26A886520);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26A7A5650(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7308, qword_26A881F08);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DF8E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8728, &unk_26A886470);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_26A7A5640(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4218, qword_26A877128);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DF9F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8710, &unk_26A886450);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26A4C2424((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFB8, &qword_26A85A410);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_26A7DFB08(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D38, &qword_26A884A30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_26A7A5650(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7D40, &qword_26A884A38);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DFC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_81();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_86_1(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_2_97();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_26A7DFD20(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2870, &unk_26A880190);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_26A7A37E0(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 32 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26A7DFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  v10 = a1;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_81();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_86_1(a1, a2, a3, a4, a5, a6);
      v16 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_20_30();
      v16[2] = v14;
      v16[3] = v17;
      if (v10)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v12)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26A7DFEF0()
{
  OUTLINED_FUNCTION_34_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CA8, &qword_26A886420);
      v7 = OUTLINED_FUNCTION_29_6();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_20_30();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_5_78();
        sub_26A7A37E0(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B86F8, &qword_26A886428);
    OUTLINED_FUNCTION_6_69(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v5)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7DFFB4()
{
  OUTLINED_FUNCTION_34_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_4_81(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_14_43();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7A78, &unk_26A884558);
      v7 = OUTLINED_FUNCTION_16_34(v6);
      OUTLINED_FUNCTION_0_98(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_78();
        sub_26A7A5654(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8698, &qword_26A8863A0);
    OUTLINED_FUNCTION_6_69(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_32_11();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_87();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_26A7E0074()
{
  OUTLINED_FUNCTION_28_0();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_4_81();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_32_11();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_87();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_86_1(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_2_5(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_63_2();
  if (v11)
  {
    v7(v10 + v25, v15, v22 + v25);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_26A7E021C()
{
  result = qword_28157D8D0;
  if (!qword_28157D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8660, &unk_26A886270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157D8D0);
  }

  return result;
}

unint64_t sub_26A7E0280()
{
  result = qword_2803B8670;
  if (!qword_2803B8670)
  {
    sub_26A4EC5B0(255, &qword_2803B8668, 0x277D4C2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8670);
  }

  return result;
}

uint64_t sub_26A7E0304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B1C50, &qword_26A86E648);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26A7E036C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26A7E03CC(uint64_t a1)
{
  v2 = type metadata accessor for VisualPropertyView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

size_t OUTLINED_FUNCTION_0_98(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_90()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_6_69(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_13_48()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_16_34(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_25_26(uint64_t a1)
{

  return MEMORY[0x2821C9E08](v2 - 88, 0, v2 - 128, v2 - 176, v1, a1);
}

BOOL sub_26A7E05B8()
{
  v0 = sub_26A851788();
  sub_26A84F068();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD220, &unk_26A85D940);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_26A8570D0;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D76918];
  v8 = v5;
  v9 = [v6 preferredFontForTextStyle_];
  *(inited + 64) = sub_26A4EC5B0(0, &qword_2803AD228, 0x277D74300);
  *(inited + 40) = v9;
  type metadata accessor for Key(0, v10, v11, v12);
  sub_26A7EA138();
  sub_26A8516A8();
  v13 = sub_26A851688();

  [v0 boundingRectWithSize:1 options:v13 attributes:0 context:{v2, 1.79769313e308}];
  v15 = v14;

  sub_26A84F068();
  v17 = vabdd_f64(v16 + 1.0, v15) >= 0.01;
  return v15 < v16 + 1.0 && v17;
}

void FactItemShortNumberView.init(number:text1:text2:text3:text4:unit:thumbnail:)()
{
  OUTLINED_FUNCTION_28_0();
  v54 = v1;
  v55 = v0;
  v56 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  __swift_project_value_buffer(v9, qword_2803D1A70);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 32)];
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v11, v12, v13, v14);
  sub_26A6AEE74(__src);
  memcpy(v8, __src, 0xBFuLL);
  OUTLINED_FUNCTION_11_57();
  sub_26A7E9ABC(&v10[v15], &v8[v16], v17);
  v18 = type metadata accessor for FactItemShortNumberView(0);
  v19 = &v8[v18[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v65[0] = xmmword_281588758;
  v65[1] = unk_281588768;
  v65[2] = xmmword_281588778;
  v65[3] = xmmword_281588788;
  v66 = xmmword_281588758;
  v67 = unk_281588768;
  v68 = xmmword_281588778;
  v69 = xmmword_281588788;
  v52 = xmmword_281588788;
  v53 = xmmword_281588778;
  sub_26A505CD4(v65, __dst, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v70);
  memcpy(v19, v70, 0xC0uLL);
  *(v19 + 12) = v53;
  *(v19 + 13) = v52;
  v20 = v67;
  *(v19 + 14) = v66;
  *(v19 + 15) = v20;
  v21 = v69;
  *(v19 + 16) = v68;
  *(v19 + 17) = v21;
  v22 = &v8[v18[6]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v8[v18[7]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v18[8];
  *&v8[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v25 = v18[9];
  *&v8[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v26 = &v8[v18[17]];
  v61[0] = 0;
  sub_26A851048();
  v27 = *(&__dst[0] + 1);
  *v26 = __dst[0];
  *(v26 + 1) = v27;
  sub_26A50429C(v6, __dst);
  OUTLINED_FUNCTION_80();
  v28 = swift_allocObject();
  sub_26A4C2314(__dst, v28 + 16);
  v29 = &v8[v18[10]];
  *v29 = sub_26A7EA310;
  *(v29 + 1) = v28;
  sub_26A50429C(v4, __dst);
  OUTLINED_FUNCTION_80();
  v30 = swift_allocObject();
  sub_26A4C2314(__dst, v30 + 16);
  v31 = &v8[v18[11]];
  *v31 = sub_26A7E20F4;
  v31[1] = v30;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v32, v33, v34, v35);
  OUTLINED_FUNCTION_80();
  v36 = swift_allocObject();
  v37 = __dst[1];
  *(v36 + 16) = __dst[0];
  *(v36 + 32) = v37;
  *(v36 + 48) = *&__dst[2];
  v38 = &v8[v18[12]];
  *v38 = sub_26A616E10;
  v38[1] = v36;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v39, v40, v41, v42);
  if (v62[3])
  {
    OUTLINED_FUNCTION_59_0(v62);
    v43 = OUTLINED_FUNCTION_13_3();
    v44(v43);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v62);
    memcpy(__dst, v61, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(__dst);
  }

  memcpy(&v8[v18[13]], __dst, 0xFAuLL);
  sub_26A505CD4(v56, v60, &qword_2803AB700, &unk_26A86AA40);
  if (v60[3])
  {
    OUTLINED_FUNCTION_59_0(v60);
    v45 = OUTLINED_FUNCTION_13_3();
    v46(v45);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v60);
    memcpy(v61, v59, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(v61);
  }

  memcpy(&v8[v18[14]], v61, 0xFAuLL);
  sub_26A505CD4(v55, v58, &qword_2803AB700, &unk_26A86AA40);
  if (v58[3])
  {
    OUTLINED_FUNCTION_59_0(v58);
    v47 = OUTLINED_FUNCTION_13_3();
    v48(v47);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_1(v58);
    memcpy(v59, v57, 0xFAuLL);
  }

  else
  {
    sub_26A505D1C();
    sub_26A504324(v59);
  }

  memcpy(&v8[v18[15]], v59, 0xFAuLL);
  sub_26A505CD4(v54, v57, &qword_2803A91B8, &qword_26A8575C0);
  if (v57[3])
  {
    __swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v49 = OUTLINED_FUNCTION_13_3();
    v51 = v50(v49);
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    OUTLINED_FUNCTION_7_0();
    sub_26A505D1C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    OUTLINED_FUNCTION_24_27();
    sub_26A505D1C();
    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_111();
    sub_26A505D1C();
    v51 = 0;
  }

  *&v8[v18[16]] = v51;
  OUTLINED_FUNCTION_27_0();
}

uint64_t type metadata accessor for FactItemShortNumberView(uint64_t a1)
{
  result = qword_2803B89A8;
  if (!qword_2803B89A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7E0E6C()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = v0 + *(type metadata accessor for FactItemShortNumberView(0) + 24);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v8, &dword_26A48D000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v4 + 8))(v1, v2);
    return v13;
  }

  return v7;
}

uint64_t sub_26A7E0F98()
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v6 = v0 + *(type metadata accessor for FactItemShortNumberView(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_26A851EA8();
    v8 = sub_26A8501F8();
    OUTLINED_FUNCTION_55(v8, &dword_26A48D000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v10, v11, MEMORY[0x277D84F90]);

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v7, 0);
    (*(v4 + 8))(v1, v2);
    LOBYTE(v7) = v13;
  }

  return v7 & 1;
}

uint64_t sub_26A7E10C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemShortNumberView(0);
  sub_26A505CD4(v1 + *(v10 + 32), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A505C8C(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A7E12B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemShortNumberView(0);
  sub_26A505CD4(v1 + *(v10 + 36), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_26A7E14B8()
{
  OUTLINED_FUNCTION_28_0();
  v91 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAD50, &unk_26A857890);
  OUTLINED_FUNCTION_79(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v4);
  v88 = v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838, &unk_26A856770);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v87 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_27_1();
  v86 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  OUTLINED_FUNCTION_79(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v12);
  v85 = v83 - v13;
  OUTLINED_FUNCTION_25_2();
  sub_26A84CCD8();
  OUTLINED_FUNCTION_15();
  v89 = v15;
  v90 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = v16;
  v18 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2803A8A80 != -1)
  {
    OUTLINED_FUNCTION_18_1(&qword_2803A8A80);
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v20 = __swift_project_value_buffer(v19, qword_2803D1A70);
  v21 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 32)];
  sub_26A505CD4(v20, v21, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(v109);
  memcpy(v2, v109, 0xBFuLL);
  OUTLINED_FUNCTION_11_57();
  sub_26A7E9ABC(v21 + v22, &v2[v23], v24);
  v25 = type metadata accessor for FactItemShortNumberView(0);
  v26 = &v2[v25[5]];
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v111[0] = xmmword_281588758;
  v111[1] = unk_281588768;
  v111[2] = xmmword_281588778;
  v111[3] = xmmword_281588788;
  v112 = xmmword_281588758;
  v113 = unk_281588768;
  v114 = xmmword_281588778;
  v115 = xmmword_281588788;
  v92 = xmmword_281588788;
  v93 = xmmword_281588778;
  sub_26A505CD4(v111, v110, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v116);
  memcpy(v26, v116, 0xC0uLL);
  v27 = v92;
  *(v26 + 12) = v93;
  *(v26 + 13) = v27;
  v28 = v113;
  *(v26 + 14) = v112;
  *(v26 + 15) = v28;
  v29 = v115;
  *(v26 + 16) = v114;
  *(v26 + 17) = v29;
  v30 = &v2[v25[6]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v2[v25[7]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v25[8];
  *&v2[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v33 = v25[9];
  *&v2[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v34 = &v2[v25[17]];
  LOBYTE(v104[0]) = 0;
  sub_26A851048();
  v35 = v110[1];
  *v34 = v110[0];
  *(v34 + 1) = v35;
  v36 = v89;
  v84 = *(v89 + 16);
  v37 = v18;
  *&v92 = v2;
  v38 = v18;
  v39 = v90;
  v84(v37, v91, v90);
  v40 = *(v36 + 80);
  *&v93 = v25;
  v41 = (v40 + 16) & ~v40;
  v83[1] = v17;
  v42 = swift_allocObject();
  v83[0] = *(v36 + 32);
  (v83[0])(v42 + v41, v38, v39);
  v43 = v91;
  v44 = (v92 + *(v93 + 40));
  *v44 = sub_26A7EA17C;
  v44[1] = v42;
  v45 = v84;
  v84(v38, v43, v39);
  v46 = swift_allocObject();
  v47 = v83[0];
  (v83[0])(v46 + v41, v38, v39);
  v48 = (v92 + *(v93 + 44));
  *v48 = sub_26A7EA194;
  v48[1] = v46;
  v49 = v91;
  v45(v38, v91, v39);
  v50 = v49;
  v51 = v92;
  v52 = swift_allocObject();
  v53 = v52 + v41;
  v54 = v93;
  v47(v53, v38, v39);
  v55 = v51;
  v56 = (v51 + v54[12]);
  *v56 = sub_26A7EA29C;
  v56[1] = v52;
  OUTLINED_FUNCTION_43_9();
  sub_26A84CC98();
  sub_26A84D098();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    sub_26A505D1C();
    sub_26A504324(v110);
  }

  else
  {
    v58 = MultilineTextProperty.asAnyView()();
    v59 = sub_26A84B878();
    KeyPath = swift_getKeyPath();
    v108 = 0;
    v61 = swift_getKeyPath();
    v107 = 0;
    v62 = swift_getKeyPath();
    v106 = 0;
    v105 = 1;
    OUTLINED_FUNCTION_4_11();
    v63 = OUTLINED_FUNCTION_31_11();
    v64(v63);
    v104[0] = KeyPath;
    v54 = v93;
    LOBYTE(v104[1]) = v108;
    v104[2] = v61;
    LOBYTE(v104[3]) = v107;
    v104[4] = v62;
    LOBYTE(v104[5]) = v106;
    memset(&v104[6], 0, 32);
    v104[10] = v58;
    LOBYTE(v104[11]) = v59 & 1;
    memset(&v104[12], 0, 128);
    LOBYTE(v104[28]) = v105;
    memset(&v104[29], 0, 18);
    nullsub_1();
    memcpy(v110, v104, 0xFAuLL);
  }

  memcpy((v55 + v54[13]), v110, 0xFAuLL);
  OUTLINED_FUNCTION_43_9();
  sub_26A84CCA8();
  sub_26A84B888();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    sub_26A505D1C();
    sub_26A504324(v104);
  }

  else
  {
    v65 = TextProperty.asAnyView()();
    v66 = sub_26A84B878();
    v67 = swift_getKeyPath();
    v103 = 0;
    v68 = swift_getKeyPath();
    v102 = 0;
    v69 = swift_getKeyPath();
    v101 = 0;
    v100 = 1;
    OUTLINED_FUNCTION_4_11();
    v70 = OUTLINED_FUNCTION_31_11();
    v71(v70);
    v99[0] = v67;
    v54 = v93;
    LOBYTE(v99[1]) = v103;
    v99[2] = v68;
    LOBYTE(v99[3]) = v102;
    v99[4] = v69;
    LOBYTE(v99[5]) = v101;
    memset(&v99[6], 0, 32);
    v99[10] = v65;
    LOBYTE(v99[11]) = v66 & 1;
    memset(&v99[12], 0, 128);
    LOBYTE(v99[28]) = v100;
    memset(&v99[29], 0, 18);
    nullsub_1();
    memcpy(v104, v99, 0xFAuLL);
  }

  memcpy((v55 + v54[14]), v104, 0xFAuLL);
  OUTLINED_FUNCTION_43_9();
  sub_26A84CC68();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    sub_26A505D1C();
    sub_26A504324(v99);
  }

  else
  {
    v72 = TextProperty.asAnyView()();
    v73 = sub_26A84B878();
    v74 = swift_getKeyPath();
    v98 = 0;
    v75 = swift_getKeyPath();
    v97 = 0;
    v76 = swift_getKeyPath();
    v96 = 0;
    v95 = 1;
    OUTLINED_FUNCTION_4_11();
    v77 = OUTLINED_FUNCTION_31_11();
    v78(v77);
    v94[0] = v74;
    v54 = v93;
    LOBYTE(v94[1]) = v98;
    v94[2] = v75;
    LOBYTE(v94[3]) = v97;
    v94[4] = v76;
    LOBYTE(v94[5]) = v96;
    memset(&v94[6], 0, 32);
    v94[10] = v72;
    LOBYTE(v94[11]) = v73 & 1;
    memset(&v94[12], 0, 128);
    LOBYTE(v94[28]) = v95;
    memset(&v94[29], 0, 18);
    nullsub_1();
    memcpy(v99, v94, 0xFAuLL);
  }

  v79 = v88;
  memcpy((v55 + v54[15]), v99, 0xFAuLL);
  OUTLINED_FUNCTION_43_9();
  sub_26A84CCC8();
  v80 = sub_26A84BD28();
  OUTLINED_FUNCTION_12_53();
  if (v57)
  {
    (*(v89 + 8))(v50, v90);
    sub_26A505D1C();
    v81 = 0;
  }

  else
  {
    v81 = VisualProperty.asAnyView()();
    (*(v89 + 8))(v50, v90);
    OUTLINED_FUNCTION_4_11();
    (*(v82 + 8))(v79, v80);
  }

  *(v55 + v54[16]) = v81;
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7E1EC4@<X0>(void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v5 = sub_26A84B888();
  OUTLINED_FUNCTION_15();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_41();
  v11 = v10 - v9;
  a2();
  v12 = sub_26A6E3188(a3);
  return (*(v7 + 8))(v11, v5, v12);
}

void *sub_26A7E1FA4@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA830, &unk_26A856FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_26A84CC88();
  v7 = sub_26A84D098();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26A505D1C();
    sub_26A504324(v10);
  }

  else
  {
    v8 = sub_26A6E3398(v11, a2);
    (*(*(v7 - 8) + 8))(v6, v7, v8);
    memcpy(v10, v11, 0xFAuLL);
    nullsub_1();
  }

  return memcpy(a1, v10, 0xFAuLL);
}

uint64_t FactItemShortNumberView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  OUTLINED_FUNCTION_79(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_0();
  sub_26A7E10C8(v2);
  sub_26A7E23B8(v22);
  sub_26A7E0E6C();
  sub_26A7E12B0(v7);
  v10 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
  v21 = v1;
  sub_26A4CFA3C();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_26A68CCBC;
  *(v11 + 24) = 0;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8988, &unk_26A886630) + 36);
  *(v12 + 16) = swift_getKeyPath();
  *(v12 + 24) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v14 = *(v13 + 40);
  *(v12 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v15 = v12 + *(v13 + 44);
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  *v12 = sub_26A4D1F7C;
  *(v12 + 8) = v11;
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8990, &qword_26A886668) + 36)) = 2;
  KeyPath = swift_getKeyPath();
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  v17 = byte_2803B0441;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8998, &qword_26A886698);
  v19 = a1 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v17;
  return result;
}

void sub_26A7E23B8(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_2803A8BF8 != -1)
  {
    swift_once();
  }

  if (byte_2803B0441 == 1 && (v4 = sub_26A7E0E6C(), sub_26A61B05C(v4, &unk_287B131A0)))
  {
    sub_26A4EC5B0(0, &qword_28157D880, 0x277CCAC38);
    switch(sub_26A63CD18(v5))
    {
      case 1u:
      case 2u:
      case 3u:
        v6 = sub_26A852598();

        if ((v6 & 1) == 0)
        {
          goto LABEL_9;
        }

        break;
      case 4u:
        goto LABEL_9;
      default:

        break;
    }

    v7 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28);
    v8 = *(v7 + *(type metadata accessor for FactItemConstants(0) + 60));
    v9 = type metadata accessor for FactItemShortNumberView(0);
    v10 = 0;
    v11 = v2 + *(v9 + 20);
    v12.f64[0] = *(v11 + 192) + -5.0;
    v13.f64[0] = *(v11 + 208) + -5.0;
    v12.f64[1] = v8;
    v13.f64[1] = v8;
  }

  else
  {
LABEL_9:
    if (qword_2803A8BF0 != -1)
    {
      swift_once();
    }

    v12 = 0uLL;
    if (byte_2803B0440 == 1)
    {
      v14 = sub_26A7E0E6C();
      if (sub_26A61B05C(v14, &unk_287B13090))
      {
        v15 = type metadata accessor for FactItemShortNumberView(0);
        v10 = 0;
        v16 = (v1 + *(v15 + 20));
        __asm { FMOV            V0.2D, #10.0 }

        v12 = vaddq_f64(v16[12], _Q0);
        v13 = vaddq_f64(v16[13], _Q0);
      }

      else
      {
        v10 = 1;
        v13 = 0uLL;
        v12 = 0uLL;
      }
    }

    else
    {
      v10 = 1;
      v13 = 0uLL;
    }
  }

  *a1 = v12;
  *(a1 + 16) = v13;
  *(a1 + 32) = v10;
}

uint64_t sub_26A7E2610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96B0, &qword_26A855708);
  MEMORY[0x28223BE20](v43);
  v38 = (v35 - v3);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89D8, &unk_26A886730);
  MEMORY[0x28223BE20](v41);
  v42 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96A0, &qword_26A855700);
  MEMORY[0x28223BE20](v5 - 8);
  v36 = (v35 - v6);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9690, &unk_26A886740);
  MEMORY[0x28223BE20](v39);
  v37 = v35 - v7;
  v8 = sub_26A84F3A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9680, &unk_26A8556F0);
  MEMORY[0x28223BE20](v12);
  v40 = v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89E0, &unk_26A886750);
  MEMORY[0x28223BE20](v14);
  v16 = v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9640, &unk_26A8556D0);
  MEMORY[0x28223BE20](v17);
  v19 = v35 - v18;
  v20 = a1;
  if (sub_26A7E0F98())
  {
    sub_26A7E2CEC(v19);
    sub_26A505CD4(v19, v16, &qword_2803A9640, &unk_26A8556D0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D3B98();
    sub_26A4D3D68();
    sub_26A84FDF8();
  }

  else
  {
    v35[1] = v14;
    v35[2] = v17;
    v35[3] = v12;
    sub_26A7E12B0(v11);
    v21 = sub_26A84F388();
    (*(v9 + 8))(v11, v8);
    if (v21)
    {
      v22 = sub_26A84FC08();
      v23 = v36;
      *v36 = v22;
      *(v23 + 8) = 0;
      *(v23 + 16) = 0;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89E8, &qword_26A8867D8);
      sub_26A7E55E8(v20, v23 + *(v24 + 44));
      sub_26A851458();
      sub_26A84F628();
      v25 = v37;
      sub_26A505C8C(v23, v37, &qword_2803A96A0, &qword_26A855700);
      memcpy((v25 + *(v39 + 36)), __src, 0x70uLL);
      sub_26A505CD4(v25, v42, &qword_2803A9690, &unk_26A886740);
    }

    else
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
      v28 = v38;
      *v38 = *(v20 + *(v27 + 28) + 32);
      *(v28 + 8) = 0;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96D0, &unk_26A886760);
      sub_26A7E315C(v20, v28 + *(v29 + 44));
      *(v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A96C0, &unk_26A855710) + 36)) = 256;
      KeyPath = swift_getKeyPath();
      v31 = swift_getKeyPath();
      v32 = v42;
      v33 = v28 + *(v43 + 36);
      *v33 = KeyPath;
      *(v33 + 8) = 0;
      *(v33 + 16) = v31;
      *(v33 + 24) = 256;
      sub_26A505CD4(v28, v32, &qword_2803A96B0, &qword_26A855708);
    }

    swift_storeEnumTagMultiPayload();
    sub_26A4D3DF4();
    sub_26A4D3EAC();
    v26 = v40;
    sub_26A84FDF8();
    sub_26A505D1C();
    sub_26A505CD4(v26, v16, &qword_2803A9680, &unk_26A8556F0);
    swift_storeEnumTagMultiPayload();
    sub_26A4D3B98();
    sub_26A4D3D68();
    sub_26A84FDF8();
  }

  return sub_26A505D1C();
}

uint64_t sub_26A7E2CEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9670, &qword_26A8867D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __src - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9660, &unk_26A8556E0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = __src - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9650, &unk_26A8867C0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = __src - v13;
  *v6 = sub_26A84FC08();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89F0, &qword_26A8867E0) + 44)];
  v16 = sub_26A84FA78();
  v17 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
  *v15 = v16;
  *(v15 + 1) = v17;
  v15[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B89F8, &qword_26A8867E8);
  sub_26A7E4288(v2, &v15[*(v18 + 44)]);
  sub_26A851458();
  sub_26A84F628();
  sub_26A505C8C(v6, v10, &qword_2803A9670, &qword_26A8867D0);
  memcpy(&v10[*(v8 + 44)], __src, 0x70uLL);
  sub_26A505C8C(v10, v14, &qword_2803A9660, &unk_26A8556E0);
  *&v14[*(v12 + 44)] = 256;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  sub_26A505C8C(v14, a1, &qword_2803A9650, &unk_26A8867C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9640, &unk_26A8556D0);
  v22 = a1 + *(result + 36);
  *v22 = KeyPath;
  *(v22 + 8) = 0;
  *(v22 + 16) = v20;
  *(v22 + 24) = 256;
  return result;
}

uint64_t sub_26A7E315C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A00, &qword_26A8867F0);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = (&v57 - v4);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AF0, &qword_26A8869C8) - 8;
  MEMORY[0x28223BE20](v66);
  v67 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v64 = &v57 - v7;
  MEMORY[0x28223BE20](v8);
  v65 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AF8, &qword_26A8869D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B00, &qword_26A8869D8) - 8;
  MEMORY[0x28223BE20](v60);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v59 = &v57 - v15;
  MEMORY[0x28223BE20](v16);
  v69 = &v57 - v17;
  v18 = sub_26A84B1D8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488, &qword_26A8560C0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v61 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v57 - v26);
  v28 = *(a1 + *(type metadata accessor for FactItemShortNumberView(0) + 64));
  (*(v19 + 104))(v21, *MEMORY[0x277D62B38], v18);
  KeyPath = swift_getKeyPath();
  v30 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0) + 36));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v19 + 32))(v30 + v31, v21, v18);
  __swift_storeEnumTagSinglePayload(v30 + v31, 0, 1, v18);
  *v30 = KeyPath;
  *v27 = v28;
  v32 = swift_getKeyPath();
  v33 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448, &qword_26A885F60) + 36);
  *v33 = v32;
  v33[8] = 1;
  v34 = swift_getKeyPath();
  v35 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430, &qword_26A855F90) + 36);
  *v35 = v34;
  v35[8] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v37 = v58;
  v38 = *(v58 + *(v36 + 28) + 32);
  v39 = swift_getKeyPath();
  v40 = v27 + *(v23 + 44);
  *v40 = v39;
  v40[8] = 0;
  *(v40 + 2) = v38;

  *v12 = sub_26A84FC08();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B08, &qword_26A8869E0);
  sub_26A7E38EC(v37, &v12[*(v41 + 44)]);
  sub_26A851448();
  sub_26A84F628();
  v42 = v59;
  sub_26A505C8C(v12, v59, &qword_2803B8AF8, &qword_26A8869D0);
  memcpy((v42 + *(v60 + 44)), __src, 0x70uLL);
  v43 = v69;
  sub_26A505C8C(v42, v69, &qword_2803B8B00, &qword_26A8869D8);
  v44 = sub_26A84FC18();
  v45 = v63;
  *v63 = v44;
  v45[1] = 0;
  *(v45 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A20, &qword_26A8868C8);
  sub_26A7E51EC();
  v46 = sub_26A7E0E6C();
  if (sub_26A61B05C(v46, &unk_287B13248))
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  v48 = v45;
  v49 = v64;
  sub_26A505C8C(v48, v64, &qword_2803B8A00, &qword_26A8867F0);
  v50 = v65;
  *(v49 + *(v66 + 44)) = v47;
  sub_26A505C8C(v49, v50, &qword_2803B8AF0, &qword_26A8869C8);
  v51 = v61;
  sub_26A505CD4(v27, v61, &qword_2803AA488, &qword_26A8560C0);
  v52 = v62;
  sub_26A505CD4(v43, v62, &qword_2803B8B00, &qword_26A8869D8);
  v53 = v67;
  sub_26A505CD4(v50, v67, &qword_2803B8AF0, &qword_26A8869C8);
  v54 = v68;
  sub_26A505CD4(v51, v68, &qword_2803AA488, &qword_26A8560C0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B10, &qword_26A8869E8);
  sub_26A505CD4(v52, v54 + *(v55 + 48), &qword_2803B8B00, &qword_26A8869D8);
  sub_26A505CD4(v53, v54 + *(v55 + 64), &qword_2803B8AF0, &qword_26A8869C8);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E38EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38, &qword_26A8868E0);
  MEMORY[0x28223BE20](v80);
  v74 = v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30, &qword_26A8868D8);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = v66 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A80, &qword_26A886930);
  MEMORY[0x28223BE20](v70);
  v77 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = v66 - v10;
  MEMORY[0x28223BE20](v11);
  v68 = v66 - v12;
  MEMORY[0x28223BE20](v13);
  v75 = v66 - v14;
  MEMORY[0x28223BE20](v15);
  v81 = v66 - v16;
  v17 = sub_26A84B058();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A70, &qword_26A886920);
  MEMORY[0x28223BE20](v21);
  v73 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v66 - v24;
  v79 = type metadata accessor for FactItemShortNumberView(0);
  v26 = *(a1 + v79[11]);
  sub_26A7E70C0(v20);
  v26(v93, v20);
  v27 = *(v18 + 8);
  v27(v20, v17);
  memcpy(v91, v93, 0xFAuLL);
  memcpy(v93, v91, 0xFAuLL);
  sub_26A4EC4B4();
  sub_26A850AF8();
  if (qword_2803A8FD8 != -1)
  {
    swift_once();
  }

  v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58, &qword_26A886900) + 36)];
  sub_26A505CD4(&unk_2803B87F8, (v28 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v88);
  sub_26A4EC508(v91);
  memcpy(v28, v88, 0xBFuLL);
  *(v28 + 34) = sub_26A80A810;
  *(v28 + 35) = 0;
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v29 = *(v21 + 36);
  v82 = v25;
  v30 = &v25[v29];
  *v30 = qword_28157FC80;
  *(v30 + 1) = sub_26A4D82F0;
  *(v30 + 2) = 0;
  v31 = *(a1 + v79[12]);
  sub_26A7E70C0(v20);
  v31(v93, v20);
  v27(v20, v17);
  memcpy(v92, v93, sizeof(v92));
  memcpy(v87, v92, sizeof(v87));
  memcpy(v93, v92, 0xFAuLL);
  sub_26A505008(v93);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870, &unk_26A859000);
  v33 = sub_26A7E82CC();
  v34 = v67;
  v66[1] = v33;
  v66[2] = v32;
  sub_26A850AF8();
  if (qword_2803A8FE0 != -1)
  {
    swift_once();
  }

  v35 = v81;
  v36 = (v81 + *(v80 + 36));
  sub_26A505CD4(&unk_2803B8848, (v36 + 24), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v89);
  sub_26A505D1C();
  memcpy(v36, v89, 0xBFuLL);
  v36[34] = sub_26A80A810;
  v36[35] = 0;
  v37 = v72;
  v38 = *(v71 + 32);
  v38(v35, v34, v72);
  LOBYTE(v36) = sub_26A850258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  sub_26A84ED48();
  v39 = v70;
  v40 = v35 + *(v70 + 36);
  *v40 = v36;
  *(v40 + 8) = v41;
  *(v40 + 16) = v42;
  *(v40 + 24) = v43;
  *(v40 + 32) = v44;
  *(v40 + 40) = 0;
  v45 = v79[13];
  memcpy(v85, (a1 + v45), 0xFAuLL);
  memcpy(v84, (a1 + v45), sizeof(v84));
  memcpy(v86, (a1 + v45), 0xFAuLL);
  sub_26A505008(v86);
  sub_26A505CD4(v85, v83, &qword_2803AB870, &unk_26A859000);
  v46 = v69;
  sub_26A850AF8();
  memcpy(v83, v84, 0xFAuLL);
  sub_26A505D1C();
  if (qword_2803A8FE8 != -1)
  {
    swift_once();
  }

  v47 = v74;
  v48 = &v74[*(v80 + 36)];
  sub_26A505CD4(&unk_2803B8898, (v48 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v90);
  memcpy(v48, v90, 0xBFuLL);
  *(v48 + 34) = sub_26A80A810;
  *(v48 + 35) = 0;
  v38(v47, v46, v37);
  LOBYTE(v48) = sub_26A850258();
  sub_26A84ED48();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v68;
  sub_26A505C8C(v47, v68, &qword_2803B8A38, &qword_26A8868E0);
  v58 = v57 + *(v39 + 36);
  *v58 = v48;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v56;
  *(v58 + 40) = 0;
  v59 = v75;
  sub_26A505C8C(v57, v75, &qword_2803B8A80, &qword_26A886930);
  v60 = v73;
  sub_26A505CD4(v82, v73, &qword_2803B8A70, &qword_26A886920);
  v61 = v76;
  sub_26A505CD4(v81, v76, &qword_2803B8A80, &qword_26A886930);
  v62 = v77;
  sub_26A505CD4(v59, v77, &qword_2803B8A80, &qword_26A886930);
  v63 = v78;
  sub_26A505CD4(v60, v78, &qword_2803B8A70, &qword_26A886920);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B18, &unk_26A8869F0);
  sub_26A505CD4(v61, v63 + *(v64 + 48), &qword_2803B8A80, &qword_26A886930);
  sub_26A505CD4(v62, v63 + *(v64 + 64), &qword_2803B8A80, &qword_26A886930);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A00, &qword_26A8867F0);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = (v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A08, &qword_26A8867F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v55 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A10, &unk_26A886800) - 8;
  MEMORY[0x28223BE20](v58);
  v59 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = v55 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = v55 - v14;
  v15 = sub_26A84B1D8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA488, &qword_26A8560C0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v63 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = (v55 - v23);
  v25 = *(a1 + *(type metadata accessor for FactItemShortNumberView(0) + 64));
  (*(v16 + 104))(v18, *MEMORY[0x277D62B38], v15);
  KeyPath = swift_getKeyPath();
  v27 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0) + 36));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v16 + 32))(v27 + v28, v18, v15);
  __swift_storeEnumTagSinglePayload(v27 + v28, 0, 1, v15);
  *v27 = KeyPath;
  v29 = v24;
  *v24 = v25;
  v30 = swift_getKeyPath();
  v31 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448, &qword_26A885F60) + 36);
  *v31 = v30;
  v31[8] = 1;
  v32 = swift_getKeyPath();
  v33 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430, &qword_26A855F90) + 36);
  *v33 = v32;
  v33[8] = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v35 = v56;
  v36 = (v56 + *(v34 + 28));
  v37 = v36[4];
  v38 = swift_getKeyPath();
  v39 = v24 + *(v20 + 44);
  v55[1] = v24;
  *v39 = v38;
  v39[8] = 0;
  *(v39 + 2) = v37;

  v40 = sub_26A84FC08();
  v41 = *v36;
  *v9 = v40;
  *(v9 + 1) = v41;
  v9[16] = 0;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A18, &qword_26A8868C0);
  sub_26A7E4920(v35, &v9[*(v42 + 44)]);
  sub_26A851458();
  sub_26A84F628();
  v43 = v57;
  sub_26A505C8C(v9, v57, &qword_2803B8A08, &qword_26A8867F8);
  memcpy((v43 + *(v58 + 44)), __src, 0x70uLL);
  v44 = v64;
  sub_26A505C8C(v43, v64, &qword_2803B8A10, &unk_26A886800);
  v45 = sub_26A84FC18();
  v46 = v60;
  *v60 = v45;
  *(v46 + 8) = 0;
  *(v46 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A20, &qword_26A8868C8);
  sub_26A7E51EC();
  v47 = v29;
  v48 = v63;
  sub_26A505CD4(v47, v63, &qword_2803AA488, &qword_26A8560C0);
  v49 = v59;
  sub_26A505CD4(v44, v59, &qword_2803B8A10, &unk_26A886800);
  v50 = v61;
  sub_26A505CD4(v46, v61, &qword_2803B8A00, &qword_26A8867F0);
  v51 = v48;
  v52 = v62;
  sub_26A505CD4(v51, v62, &qword_2803AA488, &qword_26A8560C0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A28, &qword_26A8868D0);
  sub_26A505CD4(v49, v52 + *(v53 + 48), &qword_2803B8A10, &unk_26A886800);
  sub_26A505CD4(v50, v52 + *(v53 + 64), &qword_2803B8A00, &qword_26A8867F0);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E4920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30, &qword_26A8868D8);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = v56 - v7;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38, &qword_26A8868E0);
  MEMORY[0x28223BE20](v59);
  v68 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v67 = v56 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = v56 - v12;
  MEMORY[0x28223BE20](v13);
  v66 = v56 - v14;
  MEMORY[0x28223BE20](v15);
  v71 = v56 - v16;
  v17 = sub_26A84B058();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A68, &qword_26A886918);
  MEMORY[0x28223BE20](v21);
  v62 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v56 - v24;
  v70 = type metadata accessor for FactItemShortNumberView(0);
  v26 = *(a1 + v70[11]);
  v58 = a1;
  sub_26A7E70C0(v20);
  v26(v82, v20);
  v27 = *(v18 + 8);
  v27(v20, v17);
  memcpy(v80, v82, 0xFAuLL);
  memcpy(v82, v80, 0xFAuLL);
  sub_26A4EC4B4();
  sub_26A850AF8();
  if (qword_2803A8FD8 != -1)
  {
    swift_once();
  }

  v28 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58, &qword_26A886900) + 36)];
  sub_26A505CD4(&unk_2803B87F8, (v28 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v77);
  sub_26A4EC508(v80);
  memcpy(v28, v77, 0xBFuLL);
  *(v28 + 34) = sub_26A80A810;
  *(v28 + 35) = 0;
  if (qword_28157FC78 != -1)
  {
    swift_once();
  }

  v63 = v5;
  v29 = qword_28157FC80;
  v30 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A70, &qword_26A886920) + 36)];
  *v30 = v29;
  v30[1] = sub_26A4D82F0;
  v30[2] = 0;
  v31 = sub_26A84FBD8();
  v32 = *(v21 + 36);
  v61 = v25;
  v33 = &v25[v32];
  *v33 = v31;
  v33[1] = sub_26A4D82F0;
  v33[2] = 0;
  v34 = v58;
  v35 = *(v58 + v70[12]);
  sub_26A7E70C0(v20);
  v35(v82, v20);
  v27(v20, v17);
  memcpy(v81, v82, sizeof(v81));
  memcpy(v76, v81, sizeof(v76));
  memcpy(v82, v81, 0xFAuLL);
  sub_26A505008(v82);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870, &unk_26A859000);
  v37 = sub_26A7E82CC();
  v38 = v57;
  v56[0] = v37;
  v56[1] = v36;
  sub_26A850AF8();
  if (qword_2803A8FE0 != -1)
  {
    swift_once();
  }

  v39 = v59;
  v40 = v71;
  v41 = &v71[*(v59 + 36)];
  sub_26A505CD4(&unk_2803B8848, (v41 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v78);
  sub_26A505D1C();
  memcpy(v41, v78, 0xBFuLL);
  *(v41 + 34) = sub_26A80A810;
  *(v41 + 35) = 0;
  v42 = *(v64 + 32);
  v43 = v38;
  v44 = v65;
  v42(v40, v43, v65);
  v45 = v70[13];
  memcpy(v74, (v34 + v45), 0xFAuLL);
  memcpy(v73, (v34 + v45), sizeof(v73));
  memcpy(v75, (v34 + v45), 0xFAuLL);
  sub_26A505008(v75);
  sub_26A505CD4(v74, v72, &qword_2803AB870, &unk_26A859000);
  v46 = v63;
  sub_26A850AF8();
  memcpy(v72, v73, 0xFAuLL);
  sub_26A505D1C();
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  v47 = v60;
  v48 = &v60[*(v39 + 36)];
  sub_26A505CD4(&unk_2815887F8, (v48 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v79);
  memcpy(v48, v79, 0xBFuLL);
  *(v48 + 34) = sub_26A80A810;
  *(v48 + 35) = 0;
  v42(v47, v46, v44);
  v49 = v66;
  sub_26A505C8C(v47, v66, &qword_2803B8A38, &qword_26A8868E0);
  v50 = v62;
  sub_26A505CD4(v61, v62, &qword_2803B8A68, &qword_26A886918);
  v51 = v67;
  sub_26A505CD4(v40, v67, &qword_2803B8A38, &qword_26A8868E0);
  v52 = v68;
  sub_26A505CD4(v49, v68, &qword_2803B8A38, &qword_26A8868E0);
  v53 = v69;
  sub_26A505CD4(v50, v69, &qword_2803B8A68, &qword_26A886918);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A78, &qword_26A886928);
  sub_26A505CD4(v51, v53 + *(v54 + 48), &qword_2803B8A38, &qword_26A8868E0);
  sub_26A505CD4(v52, v53 + *(v54 + 64), &qword_2803B8A38, &qword_26A8868E0);
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

void sub_26A7E51EC()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v43 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30, &qword_26A8868D8);
  OUTLINED_FUNCTION_15();
  v41 = v5;
  v42 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_74_0();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38, &qword_26A8868E0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v40 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_27_1();
  v39 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A40, &qword_26A8868E8);
  v15 = OUTLINED_FUNCTION_79(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v37 - v19);
  v21 = sub_26A84FA28();
  v22 = sub_26A7E2FAC();
  *v20 = v21;
  v20[1] = v22;
  *(v20 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A48, &qword_26A8868F0);
  sub_26A7E6098();
  v23 = *(type metadata accessor for FactItemShortNumberView(0) + 56);
  memcpy(v47, (v2 + v23), 0xFAuLL);
  memcpy(v45, (v2 + v23), sizeof(v45));
  memcpy(v48, (v2 + v23), 0xFAuLL);
  sub_26A505008(v48);
  sub_26A505CD4(v47, v44, &qword_2803AB870, &unk_26A859000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870, &unk_26A859000);
  sub_26A7E82CC();
  sub_26A850AF8();
  memcpy(v44, v45, 0xFAuLL);
  sub_26A505D1C();
  if (qword_2803A8FF0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B88E8, &v11[*(v38 + 36) + 192], &qword_2803AA880, &unk_26A8567F0);
  v24 = sub_26A6AEE74(v46);
  OUTLINED_FUNCTION_51_8(v24, v46);
  OUTLINED_FUNCTION_1_101();
  (*(v41 + 32))(v11, v0, v42);
  OUTLINED_FUNCTION_46_0();
  sub_26A505C8C(v25, v26, v27, v28);
  sub_26A505CD4(v20, v17, &qword_2803B8A40, &qword_26A8868E8);
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v29, v30, v31, v32);
  sub_26A505CD4(v17, v43, &qword_2803B8A40, &qword_26A8868E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A50, &qword_26A8868F8);
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v33, v34, v35, v36);
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  sub_26A505D1C();
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7E55E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a1;
  v83 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A80, &qword_26A886930);
  MEMORY[0x28223BE20](v79);
  v84 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v72 - v5;
  MEMORY[0x28223BE20](v6);
  v81 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A40, &qword_26A8868E8);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = (&v72 - v11);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30, &qword_26A8868D8);
  v92 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v86 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v72 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38, &qword_26A8868E0);
  MEMORY[0x28223BE20](v85);
  v80 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v72 - v17;
  MEMORY[0x28223BE20](v18);
  v76 = &v72 - v19;
  MEMORY[0x28223BE20](v20);
  v90 = &v72 - v21;
  v22 = sub_26A84B1D8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA430, &qword_26A855F90);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v89 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v72 - v30);
  v32 = type metadata accessor for FactItemShortNumberView(0);
  v72 = *(a1 + *(v32 + 64));
  (*(v23 + 104))(v25, *MEMORY[0x277D62B38], v22);
  KeyPath = swift_getKeyPath();
  v34 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0) + 36));
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v23 + 32))(v34 + v35, v25, v22);
  __swift_storeEnumTagSinglePayload(v34 + v35, 0, 1, v22);
  *v34 = KeyPath;
  *v31 = v72;
  v36 = swift_getKeyPath();
  v37 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA448, &qword_26A885F60) + 36);
  *v37 = v36;
  v37[8] = 1;
  v38 = swift_getKeyPath();
  v39 = *(v27 + 44);
  v88 = v31;
  v40 = v31 + v39;
  v41 = v73;
  *v40 = v38;
  v40[8] = 0;
  v75 = v32;
  v42 = *(v32 + 56);
  memcpy(v101, (v41 + v42), 0xFAuLL);
  memcpy(v98, (v41 + v42), sizeof(v98));
  memcpy(v102, (v41 + v42), 0xFAuLL);
  sub_26A505008(v102);

  sub_26A505CD4(v101, v97, &qword_2803AB870, &unk_26A859000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB870, &unk_26A859000);
  sub_26A7E82CC();
  v43 = v74;
  sub_26A850AF8();
  memcpy(v95, v98, sizeof(v95));
  sub_26A505D1C();
  if (qword_2803A8FF0 != -1)
  {
    swift_once();
  }

  v44 = v76;
  v45 = &v76[*(v85 + 36)];
  sub_26A505CD4(&unk_2803B88E8, (v45 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v99);
  memcpy(v45, v99, 0xBFuLL);
  *(v45 + 34) = sub_26A80A810;
  *(v45 + 35) = 0;
  v46 = *(v92 + 32);
  v92 += 32;
  v46(v44, v43, v87);
  sub_26A505C8C(v44, v90, &qword_2803B8A38, &qword_26A8868E0);
  v47 = sub_26A84FA28();
  v48 = v91;
  *v91 = v47;
  v48[1] = 0x3FF0000000000000;
  *(v48 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A48, &qword_26A8868F0);
  sub_26A7E6098();
  sub_26A7E6580();
  v76 = v49;
  v50 = *(v75 + 52);
  memcpy(v96, (v41 + v50), 0xFAuLL);
  memcpy(v94, (v41 + v50), sizeof(v94));
  memcpy(v97, (v41 + v50), 0xFAuLL);
  sub_26A505008(v97);
  sub_26A505CD4(v96, v93, &qword_2803AB870, &unk_26A859000);
  sub_26A850AF8();
  memcpy(v93, v94, 0xFAuLL);
  sub_26A505D1C();
  if (qword_2803A8FE8 != -1)
  {
    swift_once();
  }

  v51 = v77;
  v52 = &v77[*(v85 + 36)];
  sub_26A505CD4(&unk_2803B8898, (v52 + 192), &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v100);
  memcpy(v52, v100, 0xBFuLL);
  *(v52 + 34) = sub_26A80A810;
  *(v52 + 35) = 0;
  v46(v51, v86, v87);
  v53 = sub_26A850258();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  sub_26A84ED48();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v78;
  sub_26A505C8C(v51, v78, &qword_2803B8A38, &qword_26A8868E0);
  v63 = v62 + *(v79 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = v81;
  sub_26A505C8C(v62, v81, &qword_2803B8A80, &qword_26A886930);
  v65 = v89;
  sub_26A505CD4(v88, v89, &qword_2803AA430, &qword_26A855F90);
  v66 = v80;
  sub_26A505CD4(v90, v80, &qword_2803B8A38, &qword_26A8868E0);
  v67 = v82;
  sub_26A505CD4(v91, v82, &qword_2803B8A40, &qword_26A8868E8);
  v68 = v84;
  sub_26A505CD4(v64, v84, &qword_2803B8A80, &qword_26A886930);
  v69 = v83;
  sub_26A505CD4(v65, v83, &qword_2803AA430, &qword_26A855F90);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A88, &unk_26A886938);
  sub_26A505CD4(v66, v69 + v70[12], &qword_2803B8A38, &qword_26A8868E0);
  sub_26A505CD4(v67, v69 + v70[16], &qword_2803B8A40, &qword_26A8868E8);
  *(v69 + v70[20]) = v76;
  sub_26A505CD4(v68, v69 + v70[24], &qword_2803B8A80, &qword_26A886930);

  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();
  sub_26A505D1C();

  sub_26A505D1C();
  sub_26A505D1C();
  return sub_26A505D1C();
}

void sub_26A7E6098()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  v49 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A30, &qword_26A8868D8);
  OUTLINED_FUNCTION_15();
  v45 = v5;
  v46 = v4;
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v6);
  v42 = &v41 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A38, &qword_26A8868E0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v48 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_1();
  v47 = v11;
  OUTLINED_FUNCTION_25_2();
  v12 = sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_74_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58, &qword_26A886900);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v44 = v18;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  v21 = &v41 - v20;
  v41 = type metadata accessor for FactItemShortNumberView(0);
  v22 = *(v2 + *(v41 + 40));
  sub_26A7E70C0(v0);
  v22(v56, v0);
  (*(v14 + 8))(v0, v12);
  memcpy(v54, v56, 0xFAuLL);
  memcpy(v56, v54, 0xFAuLL);
  sub_26A4EC4B4();
  sub_26A850AF8();
  if (qword_2803A8FF8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2803B8938, &v21[*(v16 + 36) + 192], &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v52);
  v23 = sub_26A4EC508(v54);
  OUTLINED_FUNCTION_51_8(v23, v52);
  OUTLINED_FUNCTION_1_101();
  v24 = *(v41 + 60);
  memcpy(v55, (v2 + v24), 0xFAuLL);
  memcpy(v51, (v2 + v24), sizeof(v51));
  memcpy(v56, (v2 + v24), 0xFAuLL);
  sub_26A505008(v56);
  sub_26A505CD4(v55, v50, &qword_2803AB870, &unk_26A859000);
  v25 = OUTLINED_FUNCTION_8_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  sub_26A7E82CC();
  v27 = v42;
  sub_26A850AF8();
  memcpy(v50, v51, 0xFAuLL);
  OUTLINED_FUNCTION_7_0();
  sub_26A505D1C();
  if (qword_2803A8FD0 != -1)
  {
    swift_once();
  }

  v28 = v47;
  sub_26A505CD4(qword_2803B87A8, v47 + *(v43 + 36) + 192, &qword_2803AA880, &unk_26A8567F0);
  v29 = sub_26A6AEE74(v53);
  OUTLINED_FUNCTION_51_8(v29, v53);
  OUTLINED_FUNCTION_1_101();
  (*(v45 + 32))(v28, v27, v46);
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v30, v31, v32, v33);
  v34 = v48;
  sub_26A505CD4(v28, v48, &qword_2803B8A38, &qword_26A8868E0);
  v35 = v49;
  OUTLINED_FUNCTION_46_0();
  sub_26A505CD4(v36, v37, v38, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A60, &unk_26A886908);
  sub_26A505CD4(v34, v35 + *(v40 + 48), &qword_2803B8A38, &qword_26A8868E0);
  OUTLINED_FUNCTION_22_33();
  sub_26A505D1C();
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  OUTLINED_FUNCTION_24_27();
  sub_26A505D1C();
  OUTLINED_FUNCTION_111();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7E6580()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8A58, &qword_26A886900);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v116 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_27_1();
  v117 = v5;
  v6 = OUTLINED_FUNCTION_25_2();
  v7 = type metadata accessor for FactItemShortNumberView(v6);
  OUTLINED_FUNCTION_15();
  v109 = v8;
  MEMORY[0x28223BE20](v9);
  v110 = v10;
  v111 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB8E8, &qword_26A859060);
  OUTLINED_FUNCTION_15();
  v114 = v12;
  v115 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v112 = v13;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_27_1();
  v113 = v15;
  OUTLINED_FUNCTION_25_2();
  sub_26A84B058();
  OUTLINED_FUNCTION_15();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_41();
  v21 = v20 - v19;
  if (qword_2803A8BD8 != -1)
  {
    swift_once();
  }

  *&v121 = *(&xmmword_2803B00A0 + 1);
  *&v122 = xmmword_2803B00A0;
  v120 = byte_2803B00B0;
  v119 = qword_2803B00B8;
  v22 = *(v0 + v7[12]);
  sub_26A7E70C0(v21);
  v22(v129, v21);
  v23 = *(v17 + 8);
  v24 = OUTLINED_FUNCTION_22_33();
  v23(v24);
  memcpy(v130, v129, sizeof(v130));
  memcpy(v131, v129, 0xFAuLL);
  if (sub_26A505008(v131) == 1)
  {
    goto LABEL_8;
  }

  if (!v131[9])
  {
    sub_26A505D1C();
LABEL_8:
    sub_26A7E70C0(v21);
    v22(v128, v21);
    v35 = OUTLINED_FUNCTION_22_33();
    v23(v35);
    memcpy(v126, v128, sizeof(v126));
    memcpy(v127, v128, 0xFAuLL);
    if (sub_26A505008(v127) == 1)
    {
      OUTLINED_FUNCTION_33_17();
      v22(v125, v21);
      v36 = OUTLINED_FUNCTION_22_33();
      v23(v36);
      memcpy(v129, v125, 0xFAuLL);
      memcpy(v125, v129, 0xFAuLL);
      sub_26A4EC4B4();
      v37 = v117;
      sub_26A850AF8();
      if (qword_2803A8FD8 != -1)
      {
        swift_once();
      }

      sub_26A505CD4(&unk_2803B87F8, v37 + *(v118 + 36) + 192, &qword_2803AA880, &unk_26A8567F0);
      sub_26A6AEE74(v125);
      v38 = sub_26A4EC508(v129);
      OUTLINED_FUNCTION_51_8(v38, v125);
      OUTLINED_FUNCTION_1_101();
      OUTLINED_FUNCTION_111();
      sub_26A505CD4(v39, v40, v41, &qword_26A886900);
      sub_26A7E99D8();
      OUTLINED_FUNCTION_31_11();
      sub_26A851248();
      OUTLINED_FUNCTION_7_0();
      sub_26A505D1C();
    }

    else
    {
      memcpy(v129, v127, 0xFAuLL);
      v42 = *(v0 + v7[11]);
      sub_26A7E70C0(v21);
      v42(v125, v21);
      v43 = OUTLINED_FUNCTION_22_33();
      v23(v43);
      memcpy(v128, v125, 0xFAuLL);
      v44 = v0 + v7[17];
      v45 = *v44;
      v46 = *(v44 + 8);
      LOBYTE(v125[0]) = v45;
      *(&v125[0] + 1) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
      sub_26A851058();
      if (v124[0] == 1)
      {
        v47 = sub_26A84FC08();
        sub_26A7E72B8(v128, v129, v125);
        v48 = v125[0];
        v125[0] = v47;
        LOBYTE(v125[1]) = 0;
        *(&v125[1] + 8) = v48;

        v49 = OUTLINED_FUNCTION_31_11();
        __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
        sub_26A506A30();
        sub_26A851248();
        sub_26A4EC508(v128);
        sub_26A505D1C();
      }

      else
      {
        v51 = sub_26A84FA78();
        v124[0] = 0;
        sub_26A7E7678(v128, v122, v121, v120, v119, v129, v125);
        v52 = *&v125[1];
        v53 = BYTE8(v125[1]);
        v121 = v125[2];
        v122 = v125[0];
        LOBYTE(v125[0]) = BYTE8(v125[1]);
        v54 = v124[0];
        v55 = v111;
        sub_26A7E9ABC(v1, v111, type metadata accessor for FactItemShortNumberView);
        v56 = (*(v109 + 80) + 16) & ~*(v109 + 80);
        v57 = swift_allocObject();
        sub_26A7E9B18(v55, v57 + v56);
        v58 = sub_26A851448();
        v125[0] = v51;
        LOBYTE(v125[1]) = v54;
        *(&v125[1] + 8) = v122;
        *(&v125[2] + 1) = v52;
        LOBYTE(v125[3]) = v53;
        *(&v125[3] + 8) = v121;
        *(&v125[4] + 1) = sub_26A7E9B7C;
        *&v125[5] = v57;
        *(&v125[5] + 1) = v58;
        *&v125[6] = v59;
        memcpy(v124, v125, sizeof(v124));
        sub_26A505CD4(v125, &v123, &qword_2803B8A98, &qword_26A886948);
        v60 = OUTLINED_FUNCTION_8_30();
        __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
        sub_26A7E9BF0();
        sub_26A851248();
        sub_26A4EC508(v128);
        sub_26A505D1C();
        OUTLINED_FUNCTION_7_0();
        sub_26A505D1C();
      }
    }

    goto LABEL_26;
  }

  v110 = v131[9];
  v108 = v131[7];
  v109 = v131[6];
  v107 = v131[8];
  OUTLINED_FUNCTION_33_17();
  v22(v128, v21);
  v25 = OUTLINED_FUNCTION_22_33();
  v23(v25);
  memcpy(v129, v128, 0xFAuLL);
  v26 = v129[6];
  v27 = v129[7];
  v28 = v129[8];
  if (v129[9])
  {
    sub_26A4EF6C0(v129[6], v129[7], v129[8] & 1);

    sub_26A8504A8();
    v29 = sub_26A850738();
    v31 = v30;
    v33 = v32;
    v118 = v34;

    sub_26A4EC448(v26, v27, v28 & 1);

    v116 = v33 & 1;
    v117 = v29;
    v111 = v31;
  }

  else
  {
    v117 = v129[6];
    v118 = 0;
    v116 = v129[8];
    v111 = v129[7];
  }

  v63 = v107;
  v62 = v108;
  v64 = v109;
  sub_26A4EF6C0(v109, v108, v107 & 1);

  sub_26A8502F8();
  v65 = sub_26A850738();
  v67 = v66;
  v69 = v68;
  v71 = v70;

  sub_26A4EC448(v64, v62, v63 & 1);

  LODWORD(v107) = v69;
  v72 = v69 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB910, &qword_26A859080);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_26A8570F0;
  v75 = v116;
  v74 = v117;
  v76 = v111;
  *(v73 + 32) = v117;
  *(v73 + 40) = v76;
  v77 = v118;
  *(v73 + 48) = v75;
  *(v73 + 56) = v77;
  *(v73 + 64) = v65;
  *(v73 + 72) = v67;
  *(v73 + 80) = v72;
  *(v73 + 88) = v71;
  sub_26A505318(v74, v76, v75, v77);
  v108 = v67;
  v109 = v65;
  sub_26A4EF6C0(v65, v67, v72);
  v110 = v71;

  v78 = 0;
  v79 = MEMORY[0x277D84F90];
LABEL_17:
  v80 = 32 * v78 + 56;
  while (++v78 != 3)
  {
    v81 = v80 + 32;
    v82 = *(v73 + v80);
    v80 += 32;
    if (v82)
    {
      v118 = v77;
      v84 = *(v73 + v81 - 56);
      v83 = *(v73 + v81 - 48);
      v85 = *(v73 + v81 - 40);
      sub_26A4EF6C0(v84, v83, v85 & 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26A7A11D4();
        v79 = v88;
      }

      v86 = *(v79 + 16);
      if (v86 >= *(v79 + 24) >> 1)
      {
        sub_26A7A11D4();
        v79 = v89;
      }

      *(v79 + 16) = v86 + 1;
      v87 = v79 + 32 * v86;
      *(v87 + 32) = v84;
      *(v87 + 40) = v83;
      *(v87 + 48) = v85 & 1;
      *(v87 + 56) = v82;
      v77 = v118;
      goto LABEL_17;
    }
  }

  swift_setDeallocating();
  sub_26A7A0D60();
  sub_26A503434(v122, v121, v120, v119, v79);
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;

  v128[0] = v91;
  v128[1] = v93;
  LOBYTE(v128[2]) = v95 & 1;
  v128[3] = v97;
  v98 = MEMORY[0x277CE0BD8];
  v99 = MEMORY[0x277CE0BC8];
  v100 = v113;
  sub_26A850AF8();
  v101 = OUTLINED_FUNCTION_8_30();
  sub_26A4EC448(v101, v102, v95 & 1);

  v104 = v114;
  v103 = v115;
  v105 = OUTLINED_FUNCTION_31_11();
  v106(v105);
  v128[0] = v98;
  v128[1] = v99;
  swift_getOpaqueTypeConformance2();
  sub_26A851248();
  sub_26A4EC508(v129);
  sub_26A505D1C();
  sub_26A4EC448(v109, v108, v107 & 1);

  sub_26A506720(v117, v111, v116, v77);
  (*(v104 + 8))(v100, v103);
LABEL_26:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7E70C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(type metadata accessor for FactItemShortNumberView(0) + 24);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v15[1];
  }

  if ((v8 - 1) >= 8)
  {
    v11 = sub_26A851E98();
    sub_26A7A6570(v11, 1, "SnippetUI/Context.swift", 23, 2, 635, "idiom", 5, 2);
    v10 = MEMORY[0x277D62A18];
  }

  else
  {
    v10 = qword_279CA2BF8[v8 - 1];
  }

  v12 = *v10;
  v13 = sub_26A84B058();
  return (*(*(v13 - 8) + 104))(a1, v12, v13);
}

uint64_t sub_26A7E72B8@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a2;
  v35 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AC8, &qword_26A886970);
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v30 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AD0, &qword_26A886978);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v15 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v37, a1, 0xFAuLL);
  v37[32] = KeyPath;
  v37[33] = v15;
  sub_26A4EC458(a1, v38);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB918, &unk_26A8869B0);
  v18 = sub_26A7E9CD4();
  sub_26A850AF8();
  memcpy(v38, v37, 0x110uLL);
  sub_26A505D1C();
  (*(v9 + 16))(v11, v14, v8);
  v37[0] = v17;
  v37[1] = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_26A851248();
  (*(v9 + 8))(v14, v8);
  LODWORD(a1) = sub_26A84FED8();
  memcpy(v36, v31, 0xFAuLL);
  HIDWORD(v36[31]) = a1;
  sub_26A4EC458(v31, v37);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AE0, &qword_26A8869C0);
  v21 = sub_26A7E9D8C();
  v22 = v30;
  sub_26A850AF8();
  memcpy(v37, v36, 0x100uLL);
  sub_26A505D1C();
  v23 = v33;
  v24 = v34;
  (*(v33 + 16))(v32, v22, v34);
  v36[0] = v20;
  v36[1] = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v24;
  v26 = sub_26A851248();
  result = (*(v23 + 8))(v22, v25);
  v28 = v35;
  *v35 = v19;
  v28[1] = v26;
  return result;
}

double sub_26A7E7678@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a6;
  v45 = a5;
  v44 = a4;
  v42 = a2;
  v43 = a3;
  v41 = a7;
  v46 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AC8, &qword_26A886970);
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AD0, &qword_26A886978);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = sub_26A8504A8();
  KeyPath = swift_getKeyPath();
  memcpy(v48, a1, 0xFAuLL);
  v48[32] = KeyPath;
  v48[33] = v19;
  sub_26A4EC458(a1, v49);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB918, &unk_26A8869B0);
  v22 = sub_26A7E9CD4();
  sub_26A850AF8();
  memcpy(v49, v48, 0x110uLL);
  sub_26A505D1C();
  (*(v13 + 16))(v15, v18, v12);
  v48[0] = v21;
  v48[1] = v22;
  swift_getOpaqueTypeConformance2();
  v23 = sub_26A851248();
  (*(v13 + 8))(v18, v12);
  LODWORD(a1) = sub_26A84FED8();
  memcpy(v47, v37, 0xFAuLL);
  HIDWORD(v47[31]) = a1;
  sub_26A4EC458(v37, v48);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8AE0, &qword_26A8869C0);
  v25 = sub_26A7E9D8C();
  v26 = v36;
  sub_26A850AF8();
  memcpy(v48, v47, 0x100uLL);
  sub_26A505D1C();
  v27 = v39;
  v28 = v40;
  (*(v39 + 16))(v38, v26, v40);
  v47[0] = v24;
  v47[1] = v25;
  swift_getOpaqueTypeConformance2();
  v29 = v28;
  v30 = sub_26A851248();
  (*(v27 + 8))(v26, v29);
  LOBYTE(v29) = v46;
  v31 = v41;
  v32 = v42;
  *v41 = v23;
  v31[1] = v32;
  v33 = v43;
  v31[2] = v43;
  *(v31 + 24) = v29;
  v31[4] = v45;
  v31[5] = v30;
  v34 = v33;
  sub_26A4EF6C0(v32, v33, v44 & 1);

  sub_26A4EF6C0(v32, v34, v29);

  sub_26A4EC448(v32, v34, v29);

  return result;
}

uint64_t sub_26A7E7ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v5 = sub_26A84F088();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FactItemShortNumberView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_26A850DF8();
  sub_26A7E9ABC(a2, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FactItemShortNumberView);
  (*(v6 + 16))(v8, v18, v5);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (v11 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_26A7E9B18(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v13);
  result = (*(v6 + 32))(v15 + v14, v8, v5);
  *a3 = v12;
  a3[1] = sub_26A7E9E44;
  a3[2] = v15;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_26A7E7CB8(uint64_t a1)
{
  sub_26A7E05B8();
  type metadata accessor for FactItemShortNumberView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC190, &qword_26A85A9E0);
  return sub_26A851068();
}

unint64_t sub_26A7E7D3C(uint64_t a1)
{
  result = sub_26A7EA138();
  *(a1 + 8) = result;
  return result;
}

void sub_26A7E7DBC(uint64_t a1)
{
  sub_26A504650(319, &qword_2803AB738, type metadata accessor for FactItemConstants, type metadata accessor for EnvironmentConstant);
  if (v1 <= 0x3F)
  {
    sub_26A7E8054(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v2 <= 0x3F)
    {
      sub_26A504650(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26A7E8054(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_26A4D27F4(319);
          if (v5 <= 0x3F)
          {
            sub_26A504650(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_26A5046B4();
              if (v7 <= 0x3F)
              {
                sub_26A7E8054(319, &qword_2803AB748, &type metadata for PartialText, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_26A7E8054(319, &qword_2803A9240, MEMORY[0x277CE11C8], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_26A7E8054(319, &qword_2803B3840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
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
  }
}

void sub_26A7E8054(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26A7E80A4()
{
  result = qword_2803B89B8;
  if (!qword_2803B89B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8998, &qword_26A886698);
    sub_26A7E815C();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B89B8);
  }

  return result;
}

unint64_t sub_26A7E815C()
{
  result = qword_2803B89C0;
  if (!qword_2803B89C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8990, &qword_26A886668);
    sub_26A7E81E8();
    sub_26A4DBA00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B89C0);
  }

  return result;
}

unint64_t sub_26A7E81E8()
{
  result = qword_2803B89C8;
  if (!qword_2803B89C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8988, &unk_26A886630);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B89C8);
  }

  return result;
}

unint64_t sub_26A7E82CC()
{
  result = qword_2803AB898;
  if (!qword_2803AB898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB870, &unk_26A859000);
    sub_26A4EC4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803AB898);
  }

  return result;
}

void sub_26A7E8350()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  sub_26A84BAB8();
  OUTLINED_FUNCTION_15();
  v50 = v3;
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v49 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3800, &unk_26A856760);
  v7 = OUTLINED_FUNCTION_79(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = sub_26A84CCD8();
  OUTLINED_FUNCTION_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v19 = v18 - v17;
  v20 = type metadata accessor for FactItemShortNumberView(0);
  v21 = OUTLINED_FUNCTION_79(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA20, &qword_26A856B00);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v26);
  v28 = &v48 - v27;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AAA28, &qword_26A856B08);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v53 = v30;
  OUTLINED_FUNCTION_92();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v48 - v33;
  (*(v15 + 16))(v19, v1, v13, v32);
  v52 = v24;
  sub_26A7E14B8();
  v55 = v1;
  v35 = v51;
  sub_26A84CCB8();
  sub_26A505C8C(v12, v9, &qword_2803B3800, &unk_26A856760);
  if (__swift_getEnumTagSinglePayload(v9, 1, v35) == 1)
  {
    sub_26A505D1C();
    KeyPath = swift_getKeyPath();
    v37 = &v28[*(v25 + 36)];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v39 = type metadata accessor for ActionType(0);
    __swift_storeEnumTagSinglePayload(v37 + v38, 1, 1, v39);
    *v37 = KeyPath;
  }

  else
  {
    v40 = v49;
    v41 = *(v50 + 32);
    v41(v49, v9, v35);
    v42 = swift_getKeyPath();
    v43 = &v28[*(v25 + 36)];
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803B36A0, &qword_26A859400) + 28);
    v41(v43 + v44, v40, v35);
    v45 = type metadata accessor for ActionType(0);
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v43 + v44, 0, 1, v45);
    *v43 = v42;
  }

  sub_26A7E9B18(v52, v28);
  v46 = sub_26A84CC48();
  sub_26A4DD7EC(v46, v47);

  sub_26A505D1C();
  sub_26A84CC58();

  sub_26A505CD4(v34, v53, &qword_2803AAA28, &qword_26A856B08);
  sub_26A7E9F0C();
  sub_26A851248();
  sub_26A505D1C();
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7E87C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208, &qword_26A857FD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v39 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A86D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v4 = swift_initStackObject();
  v39 = xmmword_26A8570D0;
  *(v4 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v5 = qword_281588968;
  *(v4 + 32) = qword_281588968;
  v6 = byte_281588970;
  *(v4 + 40) = byte_281588970;
  sub_26A4E324C(v5, v6);
  sub_26A621A9C(v4);
  *(inited + 32) = v7;
  sub_26A850408();
  sub_26A8503B8();
  v8 = sub_26A850428();

  v9 = sub_26A84FED8();
  v10 = MEMORY[0x277CE04F8];
  v11 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v11;
  *(inited + 48) = v9;
  *(inited + 40) = v8;
  v12 = swift_initStackObject();
  *(v12 + 16) = v39;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v13 = qword_281588998;
  *(v12 + 32) = qword_281588998;
  v14 = byte_2815889A0;
  *(v12 + 40) = byte_2815889A0;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(v12);
  *(inited + 88) = v15;
  v16 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v16);
  sub_26A8503E8();
  sub_26A505D1C();
  sub_26A8504C8();

  sub_26A8503A8();
  v17 = sub_26A850428();

  v18 = sub_26A84FEA8();
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v18;
  *(inited + 96) = v17;
  v19 = swift_initStackObject();
  *(v19 + 16) = v39;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(inited + 144) = v22;
  sub_26A850468();
  v23 = sub_26A8504C8();

  v24 = sub_26A84FEC8();
  *(inited + 184) = v10;
  *(inited + 192) = v11;
  *(inited + 160) = v24;
  *(inited + 152) = v23;
  v25 = swift_initStackObject();
  v39 = xmmword_26A8570F0;
  *(v25 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v26 = qword_281588978;
  *(v25 + 32) = qword_281588978;
  v27 = byte_281588980;
  *(v25 + 40) = byte_281588980;
  *(v25 + 48) = 1;
  *(v25 + 56) = 3;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *(inited + 200) = v28;
  sub_26A850408();
  sub_26A8504C8();

  sub_26A8503A8();
  v29 = sub_26A850428();

  *(inited + 240) = &type metadata for TextVibrancyShapeStyle;
  v30 = sub_26A573830();
  *(inited + 248) = v30;
  *(inited + 216) = 1;
  *(inited + 208) = v29;
  v31 = swift_initStackObject();
  *(v31 + 16) = v39;
  v32 = qword_281588968;
  *(v31 + 32) = qword_281588968;
  v33 = byte_281588970;
  *(v31 + 40) = byte_281588970;
  *(v31 + 48) = 1;
  *(v31 + 56) = 3;
  sub_26A4E324C(v32, v33);
  sub_26A621A9C(v31);
  *(inited + 256) = v34;
  sub_26A850328();
  sub_26A8504C8();

  sub_26A8503B8();
  v35 = sub_26A850428();

  *(inited + 296) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 304) = v30;
  *(inited + 272) = 1;
  *(inited + 264) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A506A30();
  v36 = sub_26A8516A8();
  sub_26A850408();
  sub_26A8504C8();

  sub_26A8503A8();
  v37 = sub_26A850428();

  v38 = sub_26A84FED8();
  v42 = MEMORY[0x277CE04F8];
  v43 = MEMORY[0x277CE04E8];
  v41 = v38;
  v40 = v37;
  sub_26A80D690(v36);
}

uint64_t sub_26A7E8D08()
{
  if (qword_28157E6C0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815888E8, v10, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850408();
  v6 = sub_26A84FEA8();
  v7 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v7;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A506A30();
  v8 = sub_26A8516A8();
  sub_26A66DDEC(v8, &unk_2803B87F8);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E8F38()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v23, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  v6 = sub_26A84FEC8();
  v7 = MEMORY[0x277CE04E8];
  *(inited + 72) = MEMORY[0x277CE04F8];
  *(inited + 80) = v7;
  *(inited + 48) = v6;
  *(inited + 40) = v5;
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v9 = qword_281588998;
  *(v8 + 32) = qword_281588998;
  v10 = byte_2815889A0;
  *(v8 + 40) = byte_2815889A0;
  sub_26A4E324C(v9, v10);
  sub_26A621A9C(v8);
  *(inited + 88) = v11;
  if (qword_28157E6B0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588898, v21, &qword_2803AA880, &unk_26A8567F0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_26A8570D0;
  v13 = qword_281588998;
  *(v12 + 32) = qword_281588998;
  v14 = byte_2815889A0;
  *(v12 + 40) = byte_2815889A0;
  sub_26A4E324C(v13, v14);

  sub_26A58787C(v15);
  sub_26A5075B0();

  if (v18)
  {
    *(inited + 96) = v18;
    *(inited + 112) = v19;
    *(inited + 128) = v20;
  }

  else
  {
    sub_26A4F20CC(v22, inited + 96);
  }

  sub_26A505D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A506A30();
  v16 = sub_26A8516A8();
  v22[0] = 0u;
  memset(v21, 0, sizeof(v21));
  sub_26A66DDEC(v16, &unk_2803B8848);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E92DC()
{
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v16, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v2 = qword_281588998;
  *(v1 + 32) = qword_281588998;
  v3 = byte_2815889A0;
  *(v1 + 40) = byte_2815889A0;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v14, &qword_2803AA880, &unk_26A8567F0);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_26A8570D0;
  v6 = qword_281588998;
  *(v5 + 32) = qword_281588998;
  v7 = byte_2815889A0;
  *(v5 + 40) = byte_2815889A0;
  sub_26A4E324C(v6, v7);

  sub_26A58787C(v8);
  sub_26A5075B0();

  if (v11)
  {
    *(inited + 40) = v11;
    *(inited + 56) = v12;
    *(inited + 72) = v13;
  }

  else
  {
    sub_26A4F20CC(v15, inited + 40);
  }

  sub_26A505D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A506A30();
  v9 = sub_26A8516A8();
  v15[0] = 0u;
  memset(v14, 0, sizeof(v14));
  sub_26A66DDEC(v9, &unk_2803B8898);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E95CC()
{
  if (qword_28157E6A8 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_281588848, v21, &qword_2803AA880, &unk_26A8567F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803AB310, &unk_26A85AF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A857110;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v2 = qword_281588968;
  *(v1 + 32) = qword_281588968;
  v3 = byte_281588970;
  *(v1 + 40) = byte_281588970;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 1;
  *(v1 + 72) = 4;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  v5 = sub_26A850418();
  *(inited + 72) = &type metadata for TextVibrancyShapeStyle;
  *(inited + 80) = sub_26A573830();
  *(inited + 48) = 2;
  *(inited + 40) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_26A8570D0;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v7 = qword_281588998;
  *(v6 + 32) = qword_281588998;
  v8 = byte_2815889A0;
  *(v6 + 40) = byte_2815889A0;
  sub_26A4E324C(v7, v8);
  sub_26A621A9C(v6);
  *(inited + 88) = v9;
  if (qword_28157E6A0 != -1)
  {
    swift_once();
  }

  sub_26A505CD4(&unk_2815887F8, v19, &qword_2803AA880, &unk_26A8567F0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_26A8570D0;
  v11 = qword_281588998;
  *(v10 + 32) = qword_281588998;
  v12 = byte_2815889A0;
  *(v10 + 40) = byte_2815889A0;
  sub_26A4E324C(v11, v12);

  sub_26A58787C(v13);
  sub_26A5075B0();

  if (v16)
  {
    *(inited + 96) = v16;
    *(inited + 112) = v17;
    *(inited + 128) = v18;
  }

  else
  {
    sub_26A4F20CC(v20, inited + 96);
  }

  sub_26A505D1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A506A30();
  v14 = sub_26A8516A8();
  v20[0] = 0u;
  memset(v19, 0, sizeof(v19));
  sub_26A66DDEC(v14, &unk_2803B88E8);

  sub_26A505D1C();
  return sub_26A505D1C();
}

uint64_t sub_26A7E9970()
{
  if (qword_2803A9048 != -1)
  {
    swift_once();
  }

  return sub_26A505CD4(&unk_2803D28A0, &unk_2803B8938, &qword_2803AA880, &unk_26A8567F0);
}

unint64_t sub_26A7E99D8()
{
  result = qword_2803B8A90;
  if (!qword_2803B8A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8A58, &qword_26A886900);
    sub_26A4EC4B4();
    swift_getOpaqueTypeConformance2();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8A90);
  }

  return result;
}

uint64_t sub_26A7E9ABC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_46();
  v4 = OUTLINED_FUNCTION_211();
  v5(v4);
  return a2;
}

uint64_t sub_26A7E9B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FactItemShortNumberView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A7E9B7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FactItemShortNumberView(0);
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_33_0();

  return sub_26A7E7ABC(a1, v5, a2);
}

unint64_t sub_26A7E9BF0()
{
  result = qword_2803B8AA0;
  if (!qword_2803B8AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8A98, &qword_26A886948);
    sub_26A506A30();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8AA0);
  }

  return result;
}

unint64_t sub_26A7E9CD4()
{
  result = qword_2803B8AD8;
  if (!qword_2803B8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AB918, &unk_26A8869B0);
    sub_26A4EC4B4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8AD8);
  }

  return result;
}

unint64_t sub_26A7E9D8C()
{
  result = qword_2803B8AE8;
  if (!qword_2803B8AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8AE0, &qword_26A8869C0);
    sub_26A4EC4B4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8AE8);
  }

  return result;
}

uint64_t sub_26A7E9E44()
{
  v1 = *(type metadata accessor for FactItemShortNumberView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_26A84F088();
  OUTLINED_FUNCTION_79(v3);

  return sub_26A7E7CB8(v0 + v2);
}

unint64_t sub_26A7E9F0C()
{
  result = qword_2803B8B20;
  if (!qword_2803B8B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA28, &qword_26A856B08);
    sub_26A7E9FC4();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8B20);
  }

  return result;
}

unint64_t sub_26A7E9FC4()
{
  result = qword_2803B8B28;
  if (!qword_2803B8B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA18, &qword_26A856AF8);
    sub_26A7EA050();
    sub_26A4D31BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8B28);
  }

  return result;
}

unint64_t sub_26A7EA050()
{
  result = qword_2803B8B30;
  if (!qword_2803B8B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AAA20, &qword_26A856B00);
    sub_26A7EA138();
    sub_26A506A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8B30);
  }

  return result;
}

unint64_t sub_26A7EA138()
{
  OUTLINED_FUNCTION_196();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

uint64_t sub_26A7EA1AC@<X0>(void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_26A84CCD8();
  OUTLINED_FUNCTION_79(v5);
  OUTLINED_FUNCTION_33_0();
  return sub_26A7E1EC4(a2, a3);
}

uint64_t objectdestroy_70Tm()
{
  sub_26A84CCD8();
  OUTLINED_FUNCTION_46();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void *sub_26A7EA29C@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_26A84CCD8();
  OUTLINED_FUNCTION_79(v4);
  OUTLINED_FUNCTION_33_0();

  return sub_26A7E1FA4(a1, a2);
}

uint64_t OUTLINED_FUNCTION_5_79()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_26A49035C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_6_70()
{
  sub_26A49035C(*v0, *(v0 + 8));
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_26A49035C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return sub_26A7E70C0(v0);
}

double OUTLINED_FUNCTION_35_13()
{
  sub_26A4EC448(*(v0 + 168), *(v0 + 176), *(v0 + 184));

  return result;
}

double OUTLINED_FUNCTION_37_17()
{
  sub_26A4EC448(*(v0 + 136), *(v0 + 144), *(v0 + 152));

  return result;
}

double OUTLINED_FUNCTION_39_10()
{
  sub_26A4EC448(*(v0 + 104), *(v0 + 112), *(v0 + 120));

  return result;
}

double OUTLINED_FUNCTION_41_14()
{
  sub_26A4EC448(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  return result;
}

uint64_t OUTLINED_FUNCTION_48_7()
{
}

uint64_t OUTLINED_FUNCTION_50_8()
{
}

void *OUTLINED_FUNCTION_51_8(uint64_t a1, const void *a2)
{

  return memcpy(v2, a2, 0xBFuLL);
}

double sub_26A7EA624()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B38, &unk_26A886AF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A8570D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0, &unk_26A857190);
  v1 = swift_initStackObject();
  *(v1 + 16) = xmmword_26A8570D0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v2 = qword_281588988;
  *(v1 + 32) = qword_281588988;
  v3 = byte_281588990;
  *(v1 + 40) = byte_281588990;
  sub_26A4E324C(v2, v3);
  sub_26A621A9C(v1);
  *(inited + 32) = v4;
  *(inited + 40) = 0x4034000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4E325C();
  v5 = sub_26A8516A8();
  sub_26A80DECC(v5, v7, 0.0);
  result = *v7;
  xmmword_2803D2728 = v7[0];
  *&qword_2803D2738 = v7[1];
  qword_2803D2748 = v8;
  return result;
}

uint64_t FactItemImageRightView.init(number:text1:thumbnail:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  if (qword_2803A8A80 != -1)
  {
    swift_once();
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F0, &qword_26A86A0B0);
  v8 = __swift_project_value_buffer(v7, qword_2803D1A70);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30);
  v10 = &a4[*(v9 + 32)];
  sub_26A4DBD68(v8, v10, &qword_2803AB6F0, &qword_26A86A0B0);
  sub_26A6AEE74(__src);
  memcpy(a4, __src, 0xBFuLL);
  sub_26A60E54C(&v10[*(v7 + 36)], &a4[*(v9 + 28)]);
  v11 = type metadata accessor for FactItemImageRightView(0);
  v12 = &a4[v11[5]];
  if (qword_28157E660 != -1)
  {
    swift_once();
  }

  v34[0] = xmmword_281588758;
  v34[1] = unk_281588768;
  v34[2] = xmmword_281588778;
  v34[3] = xmmword_281588788;
  v35 = xmmword_281588758;
  v36 = unk_281588768;
  v37 = xmmword_281588778;
  v38 = xmmword_281588788;
  v28 = xmmword_281588788;
  v29 = xmmword_281588778;
  sub_26A4DBD68(v34, v39, &qword_2803A91B0, &unk_26A854CA0);
  sub_26A6AEE74(v39);
  memcpy(v12, v39, 0xC0uLL);
  *(v12 + 12) = v29;
  *(v12 + 13) = v28;
  v13 = v36;
  *(v12 + 14) = v35;
  *(v12 + 15) = v13;
  v14 = v38;
  *(v12 + 16) = v37;
  *(v12 + 17) = v14;
  v15 = v11[6];
  *&a4[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v16 = v11[7];
  *&a4[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  v17 = &a4[v11[8]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  sub_26A4DBD68(a1, v31, &qword_2803A91B8, &qword_26A8575C0);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v18 = OUTLINED_FUNCTION_16_5();
    v20 = v19(v18);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_26A4DBD10(v31, &qword_2803A91B8, &qword_26A8575C0);
    v20 = 0;
  }

  *&a4[v11[9]] = v20;
  sub_26A4DBD68(a2, v31, &qword_2803A91B8, &qword_26A8575C0);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v21 = OUTLINED_FUNCTION_16_5();
    v23 = v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_26A4DBD10(v31, &qword_2803A91B8, &qword_26A8575C0);
    v23 = 0;
  }

  *&a4[v11[10]] = v23;
  sub_26A4DBD68(a3, v31, &qword_2803A91B8, &qword_26A8575C0);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v24 = OUTLINED_FUNCTION_16_5();
    v26 = v25(v24);
    sub_26A4DBD10(a3, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a2, &qword_2803A91B8, &qword_26A8575C0);
    sub_26A4DBD10(a1, &qword_2803A91B8, &qword_26A8575C0);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    OUTLINED_FUNCTION_4_84(a3);
    OUTLINED_FUNCTION_4_84(a2);
    OUTLINED_FUNCTION_4_84(a1);
    result = OUTLINED_FUNCTION_4_84(v31);
    v26 = 0;
  }

  *&a4[v11[11]] = v26;
  return result;
}

uint64_t type metadata accessor for FactItemImageRightView(uint64_t a1)
{
  result = qword_2803B8B98;
  if (!qword_2803B8B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A7EABC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for FactItemImageRightView(0);
  sub_26A4DBD68(v1 + *(v10 + 24), v9, &unk_2803A9190, &unk_26A854C50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26A4DBDB4(v9, a1, &qword_2803A91C8, &unk_26A856820);
  }

  sub_26A851EA8();
  v12 = sub_26A8501F8();
  sub_26A84EA78();

  sub_26A84F978();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_26A7EADAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26A84F988();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for FactItemImageRightView(0);
  sub_26A4DBD68(v1 + *(v10 + 28), v9, &qword_2803A91A8, &qword_26A857040);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26A84F3A8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26A7EAFB4()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for FactItemImageRightView(0) + 32);
  v6 = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A4D82E8(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v6;
}

uint64_t FactItemImageRightView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C0, &unk_26A854CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8, &unk_26A856820);
  MEMORY[0x28223BE20](v6 - 8);
  sub_26A7EABC4(&v15[-v7]);
  sub_26A7EB338(v17);
  sub_26A7EAFB4();
  sub_26A7EADAC(v5);
  v8 = sub_26A84F3A8();
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  v16 = v1;
  sub_26A4CFAAC();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_26A68CCBC;
  *(v9 + 24) = 0;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8B90, &unk_26A886BA0) + 36);
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8, &qword_26A8575D0);
  v12 = *(v11 + 40);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190, &unk_26A854C50);
  swift_storeEnumTagMultiPayload();
  v13 = v10 + *(v11 + 44);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *v10 = sub_26A4D1F7C;
  *(v10 + 8) = v9;
  return result;
}

void sub_26A7EB338(uint64_t a1@<X8>)
{
  if (qword_2803A8BF0 != -1)
  {
    swift_once();
  }

  v3 = 0uLL;
  if (byte_2803B0440 == 1)
  {
    v4 = sub_26A7EAFB4();
    if (sub_26A61B05C(v4, &unk_287B13090))
    {
      v5 = type metadata accessor for FactItemImageRightView(0);
      v6 = 0;
      v7 = (v1 + *(v5 + 20));
      __asm { FMOV            V0.2D, #10.0 }

      v3 = vaddq_f64(v7[12], _Q0);
      v13 = vaddq_f64(v7[13], _Q0);
    }

    else
    {
      v6 = 1;
      v13 = 0uLL;
      v3 = 0uLL;
    }
  }

  else
  {
    v6 = 1;
    v13 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
}

uint64_t sub_26A7EB3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9600, &qword_26A886C50);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BB8, &qword_26A886C58);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A95F0, &unk_26A8556A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A95E0, &qword_26A855698);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = sub_26A84F3A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A7EADAC(v16);
  v17 = sub_26A84F388();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    *v9 = sub_26A84FC08();
    *(v9 + 1) = 0;
    v9[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BC8, &qword_26A886CC0);
    sub_26A7EBD58(a1, &v9[*(v18 + 44)]);
    sub_26A851458();
    sub_26A84F628();
    sub_26A4DBDB4(v9, v12, &qword_2803A95F0, &unk_26A8556A0);
    memcpy(&v12[*(v10 + 36)], __src, 0x70uLL);
    v19 = &qword_2803A95E0;
    v20 = &qword_26A855698;
    sub_26A4DBD68(v12, v6, &qword_2803A95E0, &qword_26A855698);
    swift_storeEnumTagMultiPayload();
    sub_26A4D399C();
    sub_26A4D3A54();
    sub_26A84FDF8();
    v21 = v12;
  }

  else
  {
    *v4 = sub_26A84FA78();
    *(v4 + 1) = 0;
    v4[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BC0, &qword_26A886C60);
    sub_26A7EB840(a1, &v4[*(v22 + 44)]);
    KeyPath = swift_getKeyPath();
    v24 = swift_getKeyPath();
    v25 = &v4[*(v29 + 36)];
    *v25 = KeyPath;
    v25[8] = 0;
    *(v25 + 2) = v24;
    *(v25 + 12) = 256;
    v19 = &qword_2803A9600;
    v20 = &qword_26A886C50;
    sub_26A4DBD68(v4, v6, &qword_2803A9600, &qword_26A886C50);
    swift_storeEnumTagMultiPayload();
    sub_26A4D399C();
    sub_26A4D3A54();
    sub_26A84FDF8();
    v21 = v4;
  }

  return sub_26A4DBD10(v21, v19, v20);
}

uint64_t sub_26A7EB840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v21 - v12);
  v25[0] = sub_26A84FC08();
  v25[1] = 0;
  v26 = 0;
  sub_26A7EBB40(a1, v27);
  v22 = *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB6F8, &qword_26A858D30) + 28) + 32);
  v14 = *(a1 + *(type metadata accessor for FactItemImageRightView(0) + 44));
  (*(v4 + 104))(v6, *MEMORY[0x277D62B38], v3);
  KeyPath = swift_getKeyPath();
  v16 = (v13 + *(v8 + 44));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v4 + 32))(v16 + v17, v6, v3);
  __swift_storeEnumTagSinglePayload(v16 + v17, 0, 1, v3);
  *v16 = KeyPath;
  *v13 = v14;
  sub_26A4DBD68(v25, v24, &qword_2803B8BD8, &qword_26A886D00);
  sub_26A4DBD68(v13, v10, &qword_2803AA438, &unk_26A855FC0);
  v18 = v23;
  sub_26A4DBD68(v24, v23, &qword_2803B8BD8, &qword_26A886D00);
  *(v18 + 616) = v22;
  *(v18 + 624) = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BE0, &qword_26A886D08);
  sub_26A4DBD68(v10, v18 + *(v19 + 64), &qword_2803AA438, &unk_26A855FC0);

  sub_26A4DBD10(v13, &qword_2803AA438, &unk_26A855FC0);
  sub_26A4DBD10(v25, &qword_2803B8BD8, &qword_26A886D00);
  sub_26A4DBD10(v10, &qword_2803AA438, &unk_26A855FC0);
  return sub_26A4DBD10(v24, &qword_2803B8BD8, &qword_26A886D00);
}

uint64_t sub_26A7EBB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FactItemImageRightView(0);
  v5 = *(a1 + *(v4 + 40));
  if (qword_2803A9008 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(qword_2803B8B40, v16, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(__src);
  memcpy(v15, __src, sizeof(v15));
  v16[11] = 0;
  v16[10] = sub_26A80A810;
  v14 = v5;
  v6 = *(a1 + *(v4 + 36));
  v7 = qword_2803A9048;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28A0, v13, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v18);
  memcpy(v12, v18, sizeof(v12));
  v13[11] = 0;
  v13[10] = sub_26A80A810;
  v11 = v6;
  sub_26A4DBD68(&v14, v10, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(&v11, v9, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(v10, a2, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(v9, a2 + 296, &qword_2803AAFE0, &qword_26A857AA0);

  sub_26A4DBD10(&v11, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v14, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v9, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A4DBD10(v10, &qword_2803AAFE0, &qword_26A857AA0);
}

uint64_t sub_26A7EBD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_26A84B1D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA438, &unk_26A855FC0);
  MEMORY[0x28223BE20](v23);
  v24 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v23 - v9);
  v11 = type metadata accessor for FactItemImageRightView(0);
  v12 = *(a1 + v11[10]);
  if (qword_2803A9008 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(qword_2803B8B40, v33, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v34);
  memcpy(v32, v34, sizeof(v32));
  v33[11] = 0;
  v33[10] = sub_26A80A810;
  v31 = v12;
  v13 = *(a1 + v11[9]);
  v14 = qword_2803A9048;

  if (v14 != -1)
  {
    swift_once();
  }

  sub_26A4DBD68(&unk_2803D28A0, v30, &qword_2803AA880, &unk_26A8567F0);
  sub_26A6AEE74(v35);
  memcpy(v29, v35, sizeof(v29));
  v30[11] = 0;
  v30[10] = sub_26A80A810;
  v28 = v13;
  v15 = *(a1 + v11[11]);
  (*(v4 + 104))(v6, *MEMORY[0x277D62B38], v3);
  KeyPath = swift_getKeyPath();
  v17 = (v10 + *(v23 + 36));
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA440, &qword_26A856F40) + 28);
  (*(v4 + 32))(v17 + v18, v6, v3);
  __swift_storeEnumTagSinglePayload(v17 + v18, 0, 1, v3);
  *v17 = KeyPath;
  *v10 = v15;
  sub_26A4DBD68(&v31, v27, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(&v28, v26, &qword_2803AAFE0, &qword_26A857AA0);
  v19 = v24;
  sub_26A4DBD68(v10, v24, &qword_2803AA438, &unk_26A855FC0);
  v20 = v25;
  sub_26A4DBD68(v27, v25, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD68(v26, v20 + 296, &qword_2803AAFE0, &qword_26A857AA0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BD0, &unk_26A886CF0);
  sub_26A4DBD68(v19, v20 + *(v21 + 64), &qword_2803AA438, &unk_26A855FC0);

  sub_26A4DBD10(v10, &qword_2803AA438, &unk_26A855FC0);
  sub_26A4DBD10(&v28, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(&v31, &qword_2803AAFE0, &qword_26A857AA0);
  sub_26A4DBD10(v19, &qword_2803AA438, &unk_26A855FC0);
  sub_26A4DBD10(v26, &qword_2803AAFE0, &qword_26A857AA0);
  return sub_26A4DBD10(v27, &qword_2803AAFE0, &qword_26A857AA0);
}

unint64_t sub_26A7EC1C0()
{
  result = qword_2803B8BA8;
  if (!qword_2803B8BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B8B90, &unk_26A886BA0);
    sub_26A4DBCC8(&qword_2803B8BB0, &qword_2803A95C8, &qword_26A855690, &protocol conformance descriptor for ComponentWithAction<A>);
    sub_26A4DBCC8(qword_28157DD90, &qword_2803A91D8, &qword_26A8575D0, &unk_26A869CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B8BA8);
  }

  return result;
}

void sub_26A7EC2A4(uint64_t a1)
{
  sub_26A8502D8();
  sub_26A8503C8();
  sub_26A850428();

  sub_26A84FEA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80, &qword_26A8593E0);
  sub_26A4DBCC8(&qword_28157D8B8, &qword_2803B1D80, &qword_26A8593E0, MEMORY[0x277D83B58]);
  v1 = sub_26A8516A8();
  sub_26A80D690(v1);
}

uint64_t OUTLINED_FUNCTION_4_84(uint64_t a1)
{

  return sub_26A4DBD10(a1, v1, v2);
}

uint64_t sub_26A7EC39C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v14 = *v6;

      a1(&v15, &v14);
      if (v3)
      {
        break;
      }

      v8 = v15;
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A1AC0(0, *(v7 + 16) + 1, 1, v7);
          v7 = v11;
        }

        v10 = *(v7 + 16);
        v9 = *(v7 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_26A7A1AC0(v9 > 1, v10 + 1, 1, v7);
          v7 = v12;
        }

        *(v7 + 16) = v10 + 1;
        *(v7 + 8 * v10 + 32) = v8;
      }

      ++v6;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_26A7EC4D0(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  if (v5)
  {
    while (1)
    {
      v8 = *v6;
      v15[0] = *(v6 - 1);
      v15[1] = v8;

      (a1)(&v16, v15);
      if (v3)
      {
        break;
      }

      v9 = v16;
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A2668(0, *(v7 + 16) + 1, 1, v7);
          v7 = v12;
        }

        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_26A7A2668(v10 > 1, v11 + 1, 1, v7);
          v7 = v13;
        }

        *(v7 + 16) = v11 + 1;
        *(v7 + 8 * v11 + 32) = v9;
      }

      v6 += 2;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_26A7EC600()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  v3 = v2;
  v4 = sub_26A84AF58();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_41();
  v10 = v9 - v8;
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v28 = xmmword_281588758;
  v29 = unk_281588768;
  v30 = xmmword_281588778;
  v31 = xmmword_281588788;
  v26 = xmmword_281588788;
  v27 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(v32);
  memcpy((v3 + 16), v32, 0xC0uLL);
  *(v3 + 208) = v27;
  *(v3 + 224) = v26;
  *(v3 + 240) = v28;
  *(v3 + 256) = v29;
  *(v3 + 272) = v30;
  *(v3 + 288) = v31;
  *(v3 + 304) = swift_getKeyPath();
  *(v3 + 312) = 0;
  v11 = type metadata accessor for RichTextView(0);
  v12 = v11[7];
  *(v3 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_162(KeyPath);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v14);
  v15 = v3 + v11[10];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v16);
  v17 = swift_getKeyPath();
  OUTLINED_FUNCTION_162(v17);
  v18 = v11[13];
  *(v3 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  sub_26A84AF68();
  sub_26A84AF48();
  (*(v6 + 8))(v10, v4);
  type metadata accessor for RichTextView.ViewModel();
  v19 = swift_allocObject();
  sub_26A7EFF40();
  v21 = v20;

  *(v19 + 16) = v21;
  OUTLINED_FUNCTION_16_35();
  sub_26A7F50E8(v22);
  *v3 = sub_26A84F258();
  *(v3 + 8) = v23;
  v24 = v11[14];
  sub_26A84AFA8();
  OUTLINED_FUNCTION_46();
  (*(v25 + 32))(v3 + v24, v1);
  OUTLINED_FUNCTION_27_0();
}

id sub_26A7EC91C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26A851788();

  v4 = [swift_getObjCClassFromMetadata(v3) bundleWithIdentifier_];

  return v4;
}

double RichTextView.init(_:)@<D0>(uint64_t a3@<X8>)
{
  if (qword_28157E660 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_28157E660);
  }

  v19 = xmmword_281588758;
  v20 = unk_281588768;
  v21 = xmmword_281588778;
  v22 = xmmword_281588788;
  v17 = xmmword_281588788;
  v18 = xmmword_281588778;
  sub_26A4D7E54();
  sub_26A6AEE74(__src);
  memcpy((a3 + 16), __src, 0xC0uLL);
  *(a3 + 208) = v18;
  *(a3 + 224) = v17;
  *(a3 + 240) = v19;
  *(a3 + 256) = v20;
  *(a3 + 272) = v21;
  *(a3 + 288) = v22;
  *(a3 + 304) = swift_getKeyPath();
  *(a3 + 312) = 0;
  v4 = type metadata accessor for RichTextView(0);
  v5 = v4[7];
  *(a3 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(KeyPath);
  v7 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v7);
  v8 = a3 + v4[10];
  *v8 = swift_getKeyPath();
  *(v8 + 8) = 0;
  v9 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v9);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_9_48(v10);
  v11 = v4[13];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RichTextView.ViewModel();
  v12 = swift_allocObject();
  sub_26A7EFF40();
  *(v12 + 16) = v13;
  OUTLINED_FUNCTION_16_35();
  sub_26A7F50E8(v14);
  *a3 = sub_26A84F258();
  *(a3 + 8) = v15;
  sub_26A8517E8();

  return result;
}

uint64_t sub_26A7ECBE4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A711488();
  *v0 = result;
  return result;
}

uint64_t sub_26A7ECC30()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A7115F4();
  *v0 = result;
  return result;
}

uint64_t sub_26A7ECC7C()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A71186C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_26A7ECCDC()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_26A5DA688();
  *v0 = result;
  return result;
}

uint64_t sub_26A7ECD28()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for RichTextView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26A851EA8();
    v7 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t sub_26A7ECE80()
{
  v1 = sub_26A84F988();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for RichTextView(0) + 48));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26A851EA8();
    v8 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_26A7ECFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430, &qword_26A85B010);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for RichTextView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26A84EE68();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_26A851EA8();
    v11 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void RichTextView.body.getter()
{
  OUTLINED_FUNCTION_28_0();
  v37 = v1;
  sub_26A84EE68();
  OUTLINED_FUNCTION_15();
  v35 = v3;
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v34 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8BF8, &qword_26A886EA8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C00, &qword_26A886EB0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  sub_26A7ED4B8();
  if (v16)
  {
    v17 = v13;
    v18 = v14;
    v19 = v15 & 1;
    v38 = v15 & 1;
    sub_26A7EDB70(v12);
    sub_26A7F3BE4();
    v20 = sub_26A851248();
    sub_26A4EC448(v17, v18, v19);
  }

  else
  {
    *v9 = sub_26A7EDFC4();
    *(v9 + 1) = 0;
    sub_26A7EE3C0(v0);
    OUTLINED_FUNCTION_26_20();
    sub_26A4D7E54();
    sub_26A7F3AB0();
    v20 = sub_26A851248();
    OUTLINED_FUNCTION_14_5();
    sub_26A4DBD10(v21, v22, v23);
  }

  KeyPath = swift_getKeyPath();
  v25 = sub_26A7ECD28();
  v27 = v35;
  v26 = v36;
  v28 = v34;
  if (v25 == 2 || (v25 & 1) == 0)
  {
    sub_26A7ECFD4(v34);
  }

  else
  {
    (*(v35 + 104))(v34, *MEMORY[0x277CDF3D0], v36);
  }

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C30, &qword_26A886EC8);
  v30 = v37;
  v31 = (v37 + *(v29 + 36));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48, &unk_26A855BA0);
  (*(v27 + 32))(v31 + *(v32 + 28), v28, v26);
  *v31 = KeyPath;
  *v30 = v20;
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7ED4B8()
{
  OUTLINED_FUNCTION_28_0();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D70, &qword_26A8870B8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_19();
  v79 = v2;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_27_1();
  v95 = v4;
  OUTLINED_FUNCTION_25_2();
  v93 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v92 = v8;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_23();
  v91 = v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  v14 = type metadata accessor for RichTextView.Tokenizer.Token(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = *(v0 + 16);
  v21 = *(v20 + 16);
  v81 = v6;
  if (v21)
  {
    v22 = *(v18 + 80);
    v87 = v20;
    v23 = v20 + ((v22 + 32) & ~v22);
    v24 = *(v18 + 72);
    v25 = (v6 + 32);
    v26 = MEMORY[0x277D84F90];
    v89 = &v71 - v19;
    v90 = v14;
    v88 = v24;
    do
    {
      sub_26A7F46AC();
      OUTLINED_FUNCTION_9_64();
      sub_26A7F4FF8();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_26A7F43B4(v16);
      }

      else
      {
        v27 = *v25;
        v28 = v13;
        v29 = v92;
        v30 = v26;
        v31 = v93;
        (*v25)(v92, v16, v93);
        v32 = v91;
        v33 = v29;
        v13 = v28;
        v27(v91, v33, v31);
        v34 = v31;
        v35 = v30;
        v27(v28, v32, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26A7A2B7C();
          v35 = v38;
        }

        v36 = *(v35 + 16);
        v37 = v35;
        v24 = v88;
        if (v36 >= *(v35 + 24) >> 1)
        {
          sub_26A7A2B7C();
          v37 = v39;
        }

        *(v37 + 16) = v36 + 1;
        v26 = v37;
        v27(v37 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v36, v13, v93);
      }

      v23 += v24;
      --v21;
    }

    while (v21);
    v40 = *(v87 + 16);
    v6 = v81;
  }

  else
  {
    v40 = 0;
    v26 = MEMORY[0x277D84F90];
  }

  if (*(v26 + 16) == v40)
  {
    v76 = v40;
    v80 = v40;
    if (qword_2803A8BD0 != -1)
    {
LABEL_27:
      swift_once();
      v80 = *(v26 + 16);
    }

    v42 = *(&xmmword_2803B0080 + 1);
    v41 = xmmword_2803B0080;
    v43 = byte_2803B0090;
    v44 = qword_2803B0098;
    v45 = OUTLINED_FUNCTION_52_8();
    sub_26A4EF6C0(v45, v46, v43);
    v77 = v6 + 16;

    v47 = 0;
    v75 = v41;
    v74 = v42;
    v73 = v43;
    v72 = v44;
    v78 = v26;
    while (v80 != v47)
    {
      if (v47 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_22_34();
      v49 = v48 + *(v6 + 72) * v47;
      v50 = v95;
      v51 = *(v94 + 48);
      *v95 = v47;
      (*(v6 + 16))(&v50[v51], v49, v93);
      v92 = v47;
      if (v47 && v47 < v76)
      {
        if (qword_2803A8BE8 != -1)
        {
          swift_once();
        }

        v52 = *(&xmmword_2803B00E0 + 1);
        v53 = xmmword_2803B00E0;
        v54 = byte_2803B00F0;
        v55 = qword_2803B00F8;
        sub_26A4EF6C0(xmmword_2803B00E0, *(&xmmword_2803B00E0 + 1), byte_2803B00F0);
      }

      else
      {
        v53 = v75;
        v52 = v74;
        v54 = v73;
        sub_26A4EF6C0(v75, v74, v73);
        v55 = v72;
      }

      v82 = v54;
      v83 = v55;

      OUTLINED_FUNCTION_52_8();
      v56 = sub_26A8506F8();
      v90 = v43;
      v91 = v44;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      sub_26A4D7E54();
      v62 = sub_26A850888();
      v88 = v42;
      v89 = v41;
      v64 = v63;
      v66 = v65;
      v67 = sub_26A8506F8();
      v86 = v68;
      v87 = v67;
      v84 = v69;
      v85 = v70;
      sub_26A4EC448(v53, v52, v82);

      sub_26A4EC448(v62, v64, v66 & 1);

      sub_26A4EC448(v57, v59, v61 & 1);

      sub_26A4EC448(v89, v88, v90 & 1);

      sub_26A4DBD10(v95, &qword_2803B8D70, &qword_26A8870B8);
      v47 = v92 + 1;
      v42 = v86;
      v41 = v87;
      v43 = v84;
      v44 = v85;
      v6 = v81;
      v26 = v78;
    }
  }

  OUTLINED_FUNCTION_52_8();
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_26A7EDB70@<X0>(uint64_t a5@<X8>)
{
  v48 = a5;
  v6 = sub_26A84EE68();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_26A84B048();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C48, &qword_26A886ED0);
  MEMORY[0x28223BE20](v43);
  v15 = &v41 - v14;
  sub_26A7EFC8C();
  v16 = sub_26A850738();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  type metadata accessor for RichTextView(0);
  v44 = v5;
  sub_26A84AF88();
  v23 = sub_26A84DFA8();
  if (__swift_getEnumTagSinglePayload(v13, 1, v23) == 1)
  {
    sub_26A4DBD10(v13, &qword_2803AD038, &qword_26A872050);
LABEL_5:
    sub_26A4EF6C0(v16, v18, v20 & 1);

    v25 = v16;
    v27 = v18;
    v29 = v20;
    v31 = v22;
    goto LABEL_6;
  }

  sub_26A84DF78();
  v24 = _ProtoColor.swiftValue.getter();
  (*(v8 + 8))(v10, v42);
  (*(*(v23 - 8) + 8))(v13, v23);
  if (!v24)
  {
    goto LABEL_5;
  }

  v25 = sub_26A8506A8();
  v27 = v26;
  v29 = v28;
  v31 = v30;

LABEL_6:
  sub_26A4EC448(v16, v18, v20 & 1);

  KeyPath = swift_getKeyPath();
  v33 = sub_26A7ECD28();
  if (v33 == 2 || (v33 & 1) == 0)
  {
    v35 = v45;
    sub_26A7ECFD4(v45);
    v34 = v46;
    v36 = v47;
  }

  else
  {
    v35 = v45;
    v34 = v46;
    v36 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x277CDF3D0], v47);
  }

  v37 = &v15[*(v43 + 36)];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48, &unk_26A855BA0);
  (*(v34 + 32))(v37 + *(v38 + 28), v35, v36);
  *v37 = KeyPath;
  *v15 = v25;
  *(v15 + 1) = v27;
  v15[16] = v29 & 1;
  *(v15 + 3) = v31;
  v39 = v48;
  sub_26A4D7EA8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8C00, &qword_26A886EB0);
  *(v39 + *(result + 36)) = 0;
  return result;
}

double sub_26A7EDFC4()
{
  v14 = sub_26A84F988();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8, &qword_26A857040);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  v6 = sub_26A84F3A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RichTextView(0);
  sub_26A4D7E54();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    sub_26A851EA8();
    v10 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    (*(v0 + 8))(v2, v14);
  }

  v11 = (*(v7 + 88))(v9, v6);
  if (v11 == *MEMORY[0x277CDF9F8])
  {
    return 3.6;
  }

  if (v11 == *MEMORY[0x277CDF9E0])
  {
    return 3.86;
  }

  result = 4.0;
  if (v11 != *MEMORY[0x277CDF9E8])
  {
    if (v11 == *MEMORY[0x277CDF9D8])
    {
      return 4.1;
    }

    else if (v11 == *MEMORY[0x277CDF9F0])
    {
      return 4.6;
    }

    else if (v11 == *MEMORY[0x277CDFA00])
    {
      return 4.8;
    }

    else
    {
      result = 5.0;
      if (v11 != *MEMORY[0x277CDFA10])
      {
        result = 6.0;
        if (v11 != *MEMORY[0x277CDF988])
        {
          result = 7.0;
          if (v11 != *MEMORY[0x277CDF998])
          {
            if (v11 == *MEMORY[0x277CDF9A8])
            {
              return 8.4;
            }

            else if (v11 == *MEMORY[0x277CDF9B8])
            {
              return 9.8;
            }

            else if (v11 == *MEMORY[0x277CDF9D0])
            {
              return 10.9;
            }

            else
            {
              (*(v7 + 8))(v9, v6, 7.0);
              return 5.0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A7EE3C0(uint64_t a1)
{
  v1 = type metadata accessor for RichTextView(0);
  MEMORY[0x28223BE20](v1 - 8);

  sub_26A56CB40();

  swift_getKeyPath();
  sub_26A7F46AC();
  swift_allocObject();
  sub_26A7F4FF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CE0, &qword_26A887010);
  sub_26A7F504C(&unk_2803B8CE8);
  return sub_26A8512F8();
}

void *sub_26A7EE5A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD968, &qword_26A85F378);
  result = sub_26A7EE608(a1 + *(v4 + 48), &v6);
  *a2 = v6;
  return result;
}

uint64_t sub_26A7EE608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v89 = a1;
  v90 = a2;
  v78 = type metadata accessor for AppIconView(0);
  MEMORY[0x28223BE20](v78);
  v76 = (&v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CF0, &qword_26A887018);
  MEMORY[0x28223BE20](v85);
  v80 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v79 = &v69 - v5;
  v88 = sub_26A84A9C8();
  v77 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v69 - v9;
  v11 = type metadata accessor for RichTextView(0);
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v74 = &v69 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v15 - 8);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v83 = &v69 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CF8, &qword_26A887020);
  MEMORY[0x28223BE20](v86);
  v81 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v69 - v21;
  v87 = sub_26A84AB98();
  v22 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  v72 = *(v25 - 8);
  MEMORY[0x28223BE20](v25 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v69 - v27;
  v29 = type metadata accessor for RichTextView.Tokenizer.Token(0);
  MEMORY[0x28223BE20](v29);
  v31 = (&v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A7F46AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v89 = *(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD8, &qword_26A886FE8) + 48));
      v71 = v22;
      v58 = *(v22 + 32);
      v59 = v24;
      v60 = v24;
      v70 = v24;
      v61 = v87;
      v58(v60, v31, v87);
      v69 = v28;
      sub_26A4D7EA8();
      v62 = *(v22 + 16);
      v63 = v83;
      v62(v83, v59, v61);
      __swift_storeEnumTagSinglePayload(v63, 0, 1, v61);
      v88 = type metadata accessor for RichTextView;
      sub_26A7F46AC();
      sub_26A4D7E54();
      v64 = (((*(v73 + 80) + 16) & ~*(v73 + 80)) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
      v65 = swift_allocObject();
      sub_26A7F4FF8();
      *(v65 + v64) = v89;
      sub_26A4D7EA8();
      sub_26A7F46AC();
      v66 = swift_allocObject();
      sub_26A7F4FF8();
      sub_26A4D7E54();
      v67 = swift_allocObject();
      v67[2] = sub_26A7F49C8;
      v67[3] = v65;
      v67[4] = sub_26A7F4D58;
      v67[5] = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D38, &qword_26A887040);
      sub_26A7F4DD0();
      v68 = v84;
      sub_26A84ED28();
      sub_26A4DBD10(v63, &qword_2803AF0D0, &qword_26A872080);
      *(v68 + *(v86 + 36)) = 1;
      sub_26A4D7E54();
      sub_26A7F4F14();
      v40 = sub_26A851248();

      sub_26A4DBD10(v68, &qword_2803B8CF8, &qword_26A887020);
      sub_26A4DBD10(v69, &qword_2803AC918, &qword_26A85DBA0);
      result = (*(v71 + 8))(v70, v87);
      goto LABEL_7;
    case 2u:
      v42 = v31[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD0, &qword_26A886FE0);
      sub_26A4D7EA8();
      v43 = sub_26A850F08();
      sub_26A7EF31C(v43, v42, &v93);

      v44 = v93;
      v45 = v94;
      v46 = v95;
      v47 = v96;
      LOBYTE(v92[0]) = v96;
      v100 = v98;
      v99 = 1;
      sub_26A7F477C(v93, v94, v95, v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D08, &qword_26A887028);
      sub_26A7F47CC(&unk_2803B8D10);
      v48 = sub_26A851248();

      sub_26A7F4964(v44, v45, v46, v47);
      result = sub_26A4DBD10(v28, &qword_2803AC918, &qword_26A85DBA0);
      *v90 = v48;
      break;
    case 3u:
      v49 = v31[2];
      v50 = v31[3];
      v51 = v31[4];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC8, &qword_26A886FD8);
      v52 = v28;
      sub_26A4D7EA8();
      sub_26A5B9068();
      sub_26A7EC91C(v49, v50);
      v53 = sub_26A850FB8();
      sub_26A7EF31C(v53, v51, &v93);
      v54 = v93;
      v55 = v94;
      v56 = v95;
      LOBYTE(v50) = v96;
      v100 = v96;
      v91 = v98;
      *v97 = v92[0];
      *&v97[3] = *(v92 + 3);
      v99 = 1;
      sub_26A7F477C(v93, v94, v95, v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D08, &qword_26A887028);
      sub_26A7F47CC(&unk_2803B8D10);
      v57 = sub_26A851248();

      sub_26A7F4964(v54, v55, v56, v50);
      result = sub_26A4DBD10(v52, &qword_2803AC918, &qword_26A85DBA0);
      *v90 = v57;
      break;
    case 4u:
      sub_26A83115C(*v31, v31[1], 0, 0, 1, v76);
      sub_26A7F50E8(&qword_28157F9B0);
      result = sub_26A851248();
      *v90 = result;
      break;
    default:
      v32 = v77;
      v33 = v88;
      (*(v77 + 32))(v10, v31, v88);
      (*(v32 + 16))(v7, v10, v33);
      v34 = sub_26A850888();
      v36 = v35;
      v38 = v37;
      v39 = v79;
      sub_26A7EDB70(v79);
      sub_26A4EC448(v34, v36, v38 & 1);

      *(v39 + *(v85 + 36)) = 0;
      sub_26A4D7E54();
      sub_26A7F47CC(&unk_2803B8D00);
      v40 = sub_26A851248();
      sub_26A4DBD10(v39, &qword_2803B8CF0, &qword_26A887018);
      result = (*(v32 + 8))(v10, v88);
LABEL_7:
      *v90 = v40;
      break;
  }

  return result;
}

double sub_26A7EF31C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v22[1] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = sub_26A850F28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26A850F68();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A7EFB28(a2, v16);
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  sub_26A850F98();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 16))(v8, v16, v13);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  v17 = sub_26A850F38();

  sub_26A4DBD10(v8, &qword_2803AC918, &qword_26A85DBA0);
  if (a2)
  {
    KeyPath = swift_getKeyPath();
    v23 = v17;
    v24 = KeyPath;
    v25 = a2;
    v26 = 0;
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v23 = v17;
    v26 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE10, &unk_26A860110);
  sub_26A57E8FC();
  sub_26A84FDF8();
  (*(v14 + 8))(v16, v13);
  result = *&v27;
  v20 = v28;
  v21 = v29;
  *a4 = v27;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  return result;
}

double sub_26A7EF634@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  sub_26A7EF31C(a1, a2, &v11);
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  result = *&v11;
  *a4 = v11;
  *(a4 + 16) = v5;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 41) = v9;
  return result;
}

double sub_26A7EF6A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v32 = sub_26A850F28();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26A850F68();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  *&v35 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v31 = sub_26A850F08();
  v30 = sub_26A850DF8();
  v17 = *MEMORY[0x277CE1020];
  v18 = *(v6 + 104);
  v18(v16, v17, v5);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v5);
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v13, 1, v5) == 1)
  {
    sub_26A4DBD10(v13, &qword_2803AC918, &qword_26A85DBA0);
    v18(v35, v17, v5);
  }

  else
  {
    (*(v6 + 32))(v35, v13, v5);
  }

  v19 = v32;
  (*(v2 + 104))(v4, *MEMORY[0x277CE0FE0], v32);
  sub_26A850F98();
  (*(v2 + 8))(v4, v19);
  v20 = v35;
  (*(v6 + 16))(v10, v35, v5);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v5);
  v21 = sub_26A850F38();

  sub_26A4DBD10(v10, &qword_2803AC918, &qword_26A85DBA0);
  KeyPath = swift_getKeyPath();
  v36 = v21;
  v37 = KeyPath;
  v38 = v30;
  v39 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ADE10, &unk_26A860110);
  sub_26A57E8FC();
  sub_26A84FDF8();
  (*(v6 + 8))(v20, v5);

  v35 = v40;
  v23 = v41;
  v24 = v42;
  sub_26A4DBD10(v16, &qword_2803AC918, &qword_26A85DBA0);
  v25 = sub_26A7ECE80();
  v26 = swift_getKeyPath();
  v27 = v34;
  result = *&v35;
  *v34 = v35;
  *(v27 + 2) = v23;
  *(v27 + 24) = v24;
  *(v27 + 4) = 0;
  *(v27 + 20) = 1;
  *(v27 + 6) = v26;
  *(v27 + 7) = v25;
  return result;
}

uint64_t sub_26A7EFB28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_26A4D7E54();
  v7 = sub_26A850F68();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v6, v7);
  }

  sub_26A4DBD10(v6, &qword_2803AC918, &qword_26A85DBA0);
  if (a1)
  {
    v8 = MEMORY[0x277CE1020];
  }

  else
  {
    v8 = MEMORY[0x277CE1010];
  }

  return (*(*(v7 - 8) + 104))(a2, *v8, v7);
}

uint64_t sub_26A7EFC8C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD040, &qword_26A85D010);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD048, &unk_26A885460);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  type metadata accessor for RichTextView(0);
  sub_26A84AF28();
  v6 = sub_26A84AEF8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_26A4DBD10(v5, &qword_2803AD048, &unk_26A885460);
  }

  else
  {
    v7 = sub_26A5500C8();
    (*(*(v6 - 8) + 8))(v5, v6);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  v8 = sub_26A7ECE80();
  if (!v8)
  {
    v8 = sub_26A8502F8();
  }

  v7 = v8;
LABEL_7:
  v9 = sub_26A84AF18();
  if (v9 == 2 || (v9 & 1) == 0)
  {

    v10 = v7;
  }

  else
  {
    v10 = sub_26A850308();
  }

  v11 = sub_26A84AF78();
  if (v11 != 2 && (v11 & 1) != 0)
  {
    v12 = sub_26A8503D8();

    v10 = v12;
  }

  sub_26A84AED8();
  v13 = sub_26A84C858();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v13);
  if (EnumTagSinglePayload == 1)
  {

    sub_26A4DBD10(v2, &qword_2803AD040, &qword_26A85D010);
  }

  else
  {
    sub_26A5506E0(EnumTagSinglePayload);
    v16 = v15;
    (*(*(v13 - 8) + 8))(v2, v13);
    if (v16)
    {
    }

    else
    {
      v17 = sub_26A850428();

      return v17;
    }
  }

  return v10;
}

void sub_26A7EFF40()
{
  OUTLINED_FUNCTION_28_0();
  v114 = v0;
  v127 = v1;
  v2 = sub_26A84AA38();
  v3 = OUTLINED_FUNCTION_79(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v112 = v5 - v4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8D78, &qword_26A8870C0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v115 = v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_27_1();
  v126 = v9;
  OUTLINED_FUNCTION_25_2();
  v118 = sub_26A84AA98();
  OUTLINED_FUNCTION_15();
  v108 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  v117 = v13 - v12;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278, &qword_26A8852B8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v106 = v15;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_27_1();
  v125 = v17;
  OUTLINED_FUNCTION_25_2();
  v124 = sub_26A84A978();
  OUTLINED_FUNCTION_15();
  v111 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v123 = v21 - v20;
  OUTLINED_FUNCTION_25_2();
  v128 = sub_26A84A958();
  OUTLINED_FUNCTION_15();
  v107 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_19();
  v129 = v24;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_27_1();
  v119 = v26;
  OUTLINED_FUNCTION_25_2();
  v122 = sub_26A84A988();
  OUTLINED_FUNCTION_15();
  v110 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_41();
  v105 = v30 - v29;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B82A0, &unk_26A8852D0);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v31);
  v121 = &v104 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  OUTLINED_FUNCTION_79(v33);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v34);
  v35 = sub_26A84A8F8();
  OUTLINED_FUNCTION_15();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_41();
  v41 = v40 - v39;
  v42 = sub_26A84A908();
  OUTLINED_FUNCTION_15();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_41();
  v48 = v47 - v46;
  v49 = sub_26A84A928();
  v50 = OUTLINED_FUNCTION_79(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_41();
  v120 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_41();
  v56 = v55 - v54;
  v131[5] = MEMORY[0x277D84F90];
  KeyPath = swift_getKeyPath();
  (*(v44 + 104))(v48, *MEMORY[0x277CC8BB0], v42);
  (*(v37 + 104))(v41, *MEMORY[0x277CC8B98], v35);

  OUTLINED_FUNCTION_17_15();
  sub_26A84A918();
  sub_26A84AB98();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  _s26RichTextViewAttributeScopeVMa(0);
  sub_26A7F50E8(&unk_2803B20C8);
  sub_26A84A9B8();
  v127 = 0;
  v104 = v52;
  v61 = v105;
  v112 = v56;
  sub_26A84A998();
  v62 = v110;
  v64 = v121;
  v63 = v122;
  (*(v110 + 16))(v121, v61, v122);
  v65 = *(v109 + 36);
  v66 = sub_26A7F50E8(&qword_2803B82B0);
  v114 = v65;
  sub_26A851D88();
  (*(v62 + 8))(v61, v63);
  KeyPath = v111 + 8;
  v111 = v107 + 16;
  v110 = v107 + 32;
  v108 += 8;
  v107 += 8;
  v67 = v106;
  v68 = v125;
  v69 = v120;
  v109 = v66;
  while (1)
  {
    sub_26A851DD8();
    sub_26A7F50E8(&qword_2803B82B8);
    v70 = sub_26A851758();
    OUTLINED_FUNCTION_33_1();
    v71 = OUTLINED_FUNCTION_5_62();
    v72(v71);
    v73 = v126;
    if (v70)
    {
      sub_26A4DBD10(v64, &qword_2803B82A0, &unk_26A8852D0);
      (*(v104 + 8))(v112, v69);
      OUTLINED_FUNCTION_27_0();
      return;
    }

    v74 = v67;
    v75 = sub_26A851E18();
    OUTLINED_FUNCTION_33_1();
    v76 = v119;
    v77 = v128;
    v78(v119);
    v75(v131, 0);
    sub_26A851DE8();
    OUTLINED_FUNCTION_33_1();
    v79(v129, v76, v77);
    sub_26A84A948();
    v80 = *(v130 + 36);
    v81 = sub_26A84A9A8();
    sub_26A7F50E8(&unk_2803B8D80);
    if ((sub_26A851738() & 1) == 0)
    {
      break;
    }

    v82 = *(v81 - 8);
    v83 = v82[2];
    v84 = OUTLINED_FUNCTION_22_4();
    v83(v84);
    v85 = v116;
    (v83)(v73 + *(v116 + 48), v68 + v80, v81);
    v86 = v115;
    sub_26A4D7E54();
    v87 = *(v85 + 48);
    v88 = v82[4];
    v67 = v74;
    OUTLINED_FUNCTION_14_5();
    v88();
    v89 = v85;
    v90 = v82[1];
    v90(v86 + v87, v81);
    sub_26A4D7EA8();
    (v88)(v67 + *(v130 + 36), v86 + *(v89 + 48), v81);
    v91 = OUTLINED_FUNCTION_211();
    (v90)(v91);
    sub_26A7F504C(&qword_2803B82A8);
    v92 = v117;
    sub_26A84AA08();
    OUTLINED_FUNCTION_17_15();
    v96 = sub_26A4DBD10(v93, v94, v95);
    v97 = qword_2803B8BE8;
    MEMORY[0x28223BE20](v96);
    *(&v104 - 2) = v129;
    *(&v104 - 1) = v92;

    v98 = v127;
    v99 = sub_26A7EC39C(sub_26A7F5080, (&v104 - 4), v97);

    v100 = *(v99 + 16);
    v127 = v98;
    if (v100)
    {
      v101 = *(v99 + 32);

      sub_26A614B00(v101);
    }

    else
    {
    }

    v64 = v121;
    v69 = v120;
    v68 = v125;
    sub_26A4DBD10(v125, &qword_2803B8278, &qword_26A8852B8);
    OUTLINED_FUNCTION_33_1();
    v102(v92, v118);
    OUTLINED_FUNCTION_33_1();
    v103(v129, v128);
  }

  __break(1u);
}

uint64_t sub_26A7F0BEC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_26A7F0C24()
{
  OUTLINED_FUNCTION_28_0();
  v252 = v0;
  v253 = v1;
  v239 = sub_26A850F68();
  OUTLINED_FUNCTION_15();
  v235 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_41();
  v233 = v5 - v4;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC948, &qword_26A85BD08);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v237 = v7;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_23();
  v234 = v9;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_27_1();
  v236 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AC918, &qword_26A85DBA0);
  v13 = OUTLINED_FUNCTION_79(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v231 = v14;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_23();
  v242 = v16;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_23();
  v249 = v18;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_23();
  v240 = v20;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_23();
  v247 = v22;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15_23();
  v248 = v24;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15_23();
  v232 = v26;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_15_23();
  v244 = v28;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_27_1();
  v241 = v30;
  OUTLINED_FUNCTION_25_2();
  sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v250 = v31;
  v251 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_41();
  v243 = v34 - v33;
  OUTLINED_FUNCTION_25_2();
  sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v245 = v36;
  v246 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_41();
  v39 = v38 - v37;
  type metadata accessor for RichTextView.Tokenizer.Token(0);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v43 = (v41 - v42);
  MEMORY[0x28223BE20](v44);
  v46 = (&v231 - v45);
  MEMORY[0x28223BE20](v47);
  v49 = (&v231 - v48);
  MEMORY[0x28223BE20](v50);
  v52 = &v231 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v231 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC0, &qword_26A886FD0);
  OUTLINED_FUNCTION_79(v56);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v57);
  v59 = &v231 - v58;
  v61 = (&v231 + *(v60 + 56) - v58);
  sub_26A7F46AC();
  sub_26A7F46AC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A7F46AC();
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD8, &qword_26A886FE8);
      v95 = *(v94 + 48);
      v96 = *&v52[v95];
      v97 = *(v94 + 64);
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_26A4DBD10(&v52[v97], &qword_2803AC918, &qword_26A85DBA0);

        (*(v251 + 8))(v52, v250);
        goto LABEL_36;
      }

      v252 = *(v61 + v95);
      v253 = v96;
      v98 = v250;
      v99 = v251;
      v100 = v243;
      (*(v251 + 32))(v243, v61, v250);
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7EA8();
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7EA8();
      v101 = sub_26A84AB68();
      v104 = *(v99 + 8);
      v103 = v99 + 8;
      v102 = v104;
      v104(v52, v98);
      if ((v101 & 1) == 0)
      {

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v118, v119, v120);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v121, v122, v123);
        v102(v100, v98);
        goto LABEL_97;
      }

      v251 = v103;
      if (v253)
      {
        v105 = v236;
        if (!v252)
        {
LABEL_79:

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v155, v156, v157);
          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v158, v159, v160);
          v102(v243, v98);
          goto LABEL_97;
        }

        v106 = sub_26A850D58();

        if ((v106 & 1) == 0)
        {

          goto LABEL_79;
        }
      }

      else
      {
        v105 = v236;
        if (v252)
        {
          goto LABEL_79;
        }
      }

      v161 = *(v238 + 48);
      OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7E54();
      OUTLINED_FUNCTION_26_20();
      sub_26A4D7E54();
      v162 = v239;
      OUTLINED_FUNCTION_29_21(v105, 1);
      if (v64)
      {

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v163, v164, v165);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v166, v167, v168);
        v102(v243, v250);
        OUTLINED_FUNCTION_6_20(v105 + v161, 1, v162);
        if (v64)
        {
          sub_26A4DBD10(v105, &qword_2803AC918, &qword_26A85DBA0);
          goto LABEL_39;
        }
      }

      else
      {
        v186 = v232;
        sub_26A4D7E54();
        OUTLINED_FUNCTION_29_21(v105 + v161, 1);
        if (!v187)
        {
          OUTLINED_FUNCTION_39_11();
          v217 = v105 + v161;
          v218 = v233;
          v219(v233, v217, v162);
          OUTLINED_FUNCTION_8_68();
          sub_26A7F50E8(v220);
          LODWORD(v249) = sub_26A851758();

          v221 = *(v186 + 8);
          v221(v218, v162);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v222, v223, v224);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v225, v226, v227);
          v102(v243, v250);
          v221(v232, v162);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v228, v229, v230);
          if ((v249 & 1) == 0)
          {
            goto LABEL_97;
          }

LABEL_39:
          v111 = v59;
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v188, v189, v190);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v191, v192, v193);
        v102(v243, v250);
        v194 = OUTLINED_FUNCTION_22_4();
        v195(v194);
      }

      sub_26A4DBD10(v105, &qword_2803AC948, &qword_26A85BD08);
LABEL_97:
      v111 = v59;
LABEL_98:
      sub_26A7F43B4(v111);
      goto LABEL_99;
    case 2u:
      sub_26A7F46AC();
      v67 = *v49;
      v66 = v49[1];
      v68 = v49[2];
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD0, &qword_26A886FE0) + 64);
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_26A4DBD10(v49 + v69, &qword_2803AC918, &qword_26A85DBA0);
        goto LABEL_34;
      }

      v253 = v68;
      v71 = *v61;
      v70 = v61[1];
      v252 = v61[2];
      sub_26A4D7EA8();
      sub_26A4D7EA8();
      if (v67 == v71 && v66 == v70)
      {

        v74 = v59;
      }

      else
      {
        v73 = sub_26A852598();

        v74 = v59;
        if ((v73 & 1) == 0)
        {

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v75, v76, v77);
LABEL_60:
          OUTLINED_FUNCTION_14_5();
LABEL_61:
          sub_26A4DBD10(v129, v130, v131);
LABEL_62:
          v111 = v74;
          goto LABEL_98;
        }
      }

      if (v253)
      {
        v112 = v240;
        if (!v252)
        {
LABEL_59:

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v126, v127, v128);
          goto LABEL_60;
        }

        v113 = sub_26A850D58();

        if ((v113 & 1) == 0)
        {

          goto LABEL_59;
        }
      }

      else
      {
        v112 = v240;
        if (v252)
        {
          goto LABEL_59;
        }
      }

      v132 = *(v238 + 48);
      v133 = v234;
      OUTLINED_FUNCTION_14_5();
      sub_26A4D7E54();
      sub_26A4D7E54();
      v134 = v239;
      OUTLINED_FUNCTION_29_21(v133, 1);
      if (v64)
      {

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v135, v136, v137);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v138, v139, v140);
        OUTLINED_FUNCTION_6_20(v133 + v132, 1, v134);
        if (v64)
        {
          sub_26A4DBD10(v133, &qword_2803AC918, &qword_26A85DBA0);
          goto LABEL_101;
        }
      }

      else
      {
        sub_26A4D7E54();
        OUTLINED_FUNCTION_29_21(v133 + v132, 1);
        if (!v169)
        {
          OUTLINED_FUNCTION_39_11();
          v196 = v133 + v132;
          v197 = v233;
          v198(v233, v196, v134);
          OUTLINED_FUNCTION_8_68();
          sub_26A7F50E8(v199);
          v200 = v134;
          v201 = sub_26A851758();

          v202 = *(v112 + 8);
          v202(v197, v200);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v203, v204, v205);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v206, v207, v208);
          v202(v240, v200);
          OUTLINED_FUNCTION_17_15();
          sub_26A4DBD10(v209, v210, v211);
          if ((v201 & 1) == 0)
          {
            goto LABEL_62;
          }

LABEL_101:
          v111 = v74;
          goto LABEL_98;
        }

        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v170, v171, v172);
        OUTLINED_FUNCTION_14_5();
        sub_26A4DBD10(v173, v174, v175);
        v176 = OUTLINED_FUNCTION_22_4();
        v177(v176);
      }

      v130 = &qword_2803AC948;
      v131 = &qword_26A85BD08;
      v129 = v133;
      goto LABEL_61;
    case 3u:
      sub_26A7F46AC();
      v79 = *v46;
      v78 = v46[1];
      v80 = v46[3];
      v253 = v46[2];
      v81 = v46[4];
      v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC8, &qword_26A886FD8) + 80);
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v250 = v59;
        v251 = v80;
        v248 = v81;
        v83 = *v61;
        v84 = v61[1];
        v85 = v61[3];
        v247 = v61[2];
        v252 = v61[4];
        sub_26A4D7EA8();
        v86 = v242;
        sub_26A4D7EA8();
        if (v79 == v83 && v78 == v84)
        {

          v89 = v250;
          v90 = v248;
        }

        else
        {
          OUTLINED_FUNCTION_5_62();
          v88 = sub_26A852598();

          v89 = v250;
          v90 = v248;
          if ((v88 & 1) == 0)
          {

            OUTLINED_FUNCTION_14_5();
            sub_26A4DBD10(v91, v92, v93);
LABEL_70:
            OUTLINED_FUNCTION_14_5();
LABEL_71:
            sub_26A4DBD10(v144, v145, v146);
LABEL_72:
            v111 = v89;
            goto LABEL_98;
          }
        }

        v114 = v252;
        v115 = v253 == v247 && v251 == v85;
        v116 = v249;
        if (v115)
        {
        }

        else
        {
          v117 = sub_26A852598();

          if ((v117 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        if (v90)
        {
          v124 = v237;
          if (!v114)
          {
            goto LABEL_69;
          }

          OUTLINED_FUNCTION_5_62();
          v125 = sub_26A850D58();

          if ((v125 & 1) == 0)
          {
LABEL_51:

LABEL_69:

            OUTLINED_FUNCTION_14_5();
            sub_26A4DBD10(v141, v142, v143);
            goto LABEL_70;
          }
        }

        else
        {
          v124 = v237;
          if (v114)
          {
            goto LABEL_69;
          }
        }

        v147 = *(v238 + 48);
        OUTLINED_FUNCTION_26_20();
        sub_26A4D7E54();
        OUTLINED_FUNCTION_26_20();
        sub_26A4D7E54();
        v148 = v239;
        OUTLINED_FUNCTION_29_21(v124, 1);
        if (v64)
        {

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v149, v150, v151);
          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v152, v153, v154);
          OUTLINED_FUNCTION_6_20(v124 + v147, 1, v148);
          if (v64)
          {
            sub_26A4DBD10(v124, &qword_2803AC918, &qword_26A85DBA0);
            goto LABEL_103;
          }
        }

        else
        {
          v178 = v231;
          sub_26A4D7E54();
          OUTLINED_FUNCTION_29_21(v124 + v147, 1);
          if (!v179)
          {
            OUTLINED_FUNCTION_39_11();
            v212 = v124 + v147;
            v213 = v233;
            v214(v233, v212, v148);
            OUTLINED_FUNCTION_8_68();
            sub_26A7F50E8(v215);
            LODWORD(v253) = sub_26A851758();

            v216 = *(v114 + 8);
            v216(v213, v148);
            sub_26A4DBD10(v86, &qword_2803AC918, &qword_26A85DBA0);
            sub_26A4DBD10(v116, &qword_2803AC918, &qword_26A85DBA0);
            v216(v178, v148);
            sub_26A4DBD10(v124, &qword_2803AC918, &qword_26A85DBA0);
            if ((v253 & 1) == 0)
            {
              goto LABEL_72;
            }

LABEL_103:
            v111 = v89;
            goto LABEL_98;
          }

          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v180, v181, v182);
          OUTLINED_FUNCTION_14_5();
          sub_26A4DBD10(v183, v184, v185);
          (*(v235 + 8))(v178, v148);
        }

        v145 = &qword_2803AC948;
        v146 = &qword_26A85BD08;
        v144 = v124;
        goto LABEL_71;
      }

      sub_26A4DBD10(v46 + v82, &qword_2803AC918, &qword_26A85DBA0);

LABEL_34:

LABEL_36:
      sub_26A4DBD10(v59, &qword_2803B8CC0, &qword_26A886FD0);
LABEL_99:
      OUTLINED_FUNCTION_27_0();
      return;
    case 4u:
      sub_26A7F46AC();
      v63 = *v43;
      v62 = v43[1];
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload() != 4)
      {

        goto LABEL_36;
      }

      v64 = v63 == *v61 && v62 == v61[1];
      if (v64)
      {

        goto LABEL_39;
      }

      v65 = sub_26A852598();

      if (v65)
      {
        goto LABEL_39;
      }

      goto LABEL_97;
    default:
      sub_26A7F46AC();
      OUTLINED_FUNCTION_34_15();
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v245 + 8))(v55, v246);
        goto LABEL_36;
      }

      v108 = v245;
      v107 = v246;
      (*(v245 + 32))(v39, v61, v246);
      OUTLINED_FUNCTION_5_62();
      sub_26A84A938();
      v109 = *(v108 + 8);
      v110 = OUTLINED_FUNCTION_22_4();
      v109(v110);
      (v109)(v55, v107);
      sub_26A7F43B4(v59);
      goto LABEL_99;
  }
}

uint64_t sub_26A7F1F38@<X0>(uint64_t *a1@<X8>)
{
  nullsub_1();
  result = _s26RichTextViewAttributeScopeVMa(0);
  *a1 = result;
  return result;
}

void sub_26A7F1F68()
{
  OUTLINED_FUNCTION_28_0();
  sub_26A84B048();
  OUTLINED_FUNCTION_15();
  v114 = v1;
  v115 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_41();
  v113 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  v5 = OUTLINED_FUNCTION_79(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v112 = v6;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v7);
  v9 = &v110 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v110 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  OUTLINED_FUNCTION_79(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v14);
  v16 = &v110 - v15;
  v17 = sub_26A84AB98();
  OUTLINED_FUNCTION_15();
  v116 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_41();
  v22 = v21 - v20;
  sub_26A84A8D8();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_41();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8278, &qword_26A8852B8);
  OUTLINED_FUNCTION_79(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x28223BE20](v28);
  v117 = &v110 - v29;
  sub_26A84A948();
  sub_26A84AA78();
  OUTLINED_FUNCTION_7_73();
  sub_26A7F50E8(v30);
  v32 = sub_26A851958() == 33 && v31 == 0xE100000000000000;
  if (v32)
  {
  }

  else
  {
    v33 = sub_26A852598();

    if ((v33 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  v34 = sub_26A65E004();
  OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV17ImageUrlAttributeON, v35, v34);
  if (v119)
  {
    sub_26A84AB88();

    OUTLINED_FUNCTION_6_20(v16, 1, v17);
    if (!v32)
    {
      v49 = v116;
      (*(v116 + 32))(v22, v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8, &qword_26A886570);
      type metadata accessor for RichTextView.Tokenizer.Token(0);
      OUTLINED_FUNCTION_33_10();
      OUTLINED_FUNCTION_31_20();
      v52 = v51 & ~v50;
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_26A8570D0;
      v54 = v53 + v52;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD8, &qword_26A886FE8);
      v112 = *(v55 + 48);
      (*(v49 + 16))(v53 + v52, v22, v17);
      v56 = sub_26A84DFA8();
      OUTLINED_FUNCTION_6_71();
      sub_26A7F50E8(v57);
      sub_26A84A968();
      OUTLINED_FUNCTION_6_20(v12, 1, v56);
      if (v58)
      {
        sub_26A4DBD10(v12, &qword_2803AD038, &qword_26A872050);
        *(v54 + v112) = 0;
      }

      else
      {
        v111 = v55;
        v70 = v113;
        sub_26A84DF78();
        _ProtoColor.swiftValue.getter();
        OUTLINED_FUNCTION_40_13();
        v55 = v111;
        v71(v70);
        *(v54 + v112) = v70;
        OUTLINED_FUNCTION_4_11();
        (*(v72 + 8))(v12, v56);
      }

      v73 = *(v55 + 64);
      v74 = sub_26A65E154();
      OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV19RenderModeAttributeON, v75, v74);
      if (v118 == 2)
      {
        sub_26A850F68();
        OUTLINED_FUNCTION_81();
      }

      else
      {
        sub_26A850F68();
        OUTLINED_FUNCTION_46();
        OUTLINED_FUNCTION_37_18();
        v80(v54 + v73);
        OUTLINED_FUNCTION_38_13();
      }

      __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
      OUTLINED_FUNCTION_5_62();
      swift_storeEnumTagMultiPayload();
      (*(v116 + 8))(v22, v17);
      goto LABEL_46;
    }

    sub_26A4DBD10(v16, &qword_2803AF0D0, &qword_26A872080);
  }

  v36 = sub_26A65E058();
  OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV17BundleIdAttributeON, v37, v36);
  v38 = v119;
  if (!v119)
  {
LABEL_21:
    v59 = sub_26A65E0AC();
    OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV15SymbolAttributeON, v60, v59);
    v61 = v119;
    if (v119)
    {
      v62 = v118;
      v63 = HIBYTE(v119) & 0xF;
      if ((v119 & 0x2000000000000000) == 0)
      {
        v63 = v118 & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8, &qword_26A886570);
        v64 = OUTLINED_FUNCTION_35_14();
        type metadata accessor for RichTextView.Tokenizer.Token(v64);
        OUTLINED_FUNCTION_33_10();
        OUTLINED_FUNCTION_31_20();
        v65 = OUTLINED_FUNCTION_55_5();
        *(v65 + 16) = xmmword_26A8570D0;
        v66 = (v65 + v26);
        *v66 = v62;
        *(v66 + 1) = v61;
        v67 = sub_26A84DFA8();
        OUTLINED_FUNCTION_6_71();
        sub_26A7F50E8(v68);
        v69 = v112;
        sub_26A84A968();
        OUTLINED_FUNCTION_6_20(v69, 1, v67);
        if (v32)
        {
          sub_26A4DBD10(v69, &qword_2803AD038, &qword_26A872050);
          *(v66 + 2) = 0;
        }

        else
        {
          v103 = v113;
          sub_26A84DF78();
          _ProtoColor.swiftValue.getter();
          OUTLINED_FUNCTION_40_13();
          v104(v103);
          *(v66 + 2) = v103;
          OUTLINED_FUNCTION_4_11();
          (*(v105 + 8))(v69, v67);
        }

        v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CD0, &qword_26A886FE0) + 64);
        v107 = sub_26A65E154();
        OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV19RenderModeAttributeON, v108, v107);
        if (v118 != 2)
        {
          sub_26A850F68();
          OUTLINED_FUNCTION_46();
          OUTLINED_FUNCTION_37_18();
          v109(&v66[v106]);
          OUTLINED_FUNCTION_38_13();
          goto LABEL_44;
        }

        goto LABEL_42;
      }
    }

    v92 = sub_26A65E100();
    OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV20AppBundleIdAttributeON, v93, v92);
    v94 = v119;
    if (!v119)
    {
      goto LABEL_46;
    }

    v95 = v118;
    v96 = HIBYTE(v119) & 0xF;
    if ((v119 & 0x2000000000000000) == 0)
    {
      v96 = v118 & 0xFFFFFFFFFFFFLL;
    }

    if (!v96)
    {
      sub_26A4DBD10(v117, &qword_2803B8278, &qword_26A8852B8);

      goto LABEL_47;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8, &qword_26A886570);
    v97 = OUTLINED_FUNCTION_35_14();
    type metadata accessor for RichTextView.Tokenizer.Token(v97);
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_31_20();
    v100 = v99 & ~v98;
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_26A8570D0;
    v102 = (v101 + v100);
    *v102 = v95;
    v102[1] = v94;
    goto LABEL_45;
  }

  v39 = v118;
  v40 = sub_26A65E1A8();
  OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV13NameAttributeON, v41, v40);
  v42 = v119;
  if (!v119)
  {

    goto LABEL_21;
  }

  v43 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8, &qword_26A886570);
  v44 = OUTLINED_FUNCTION_35_14();
  type metadata accessor for RichTextView.Tokenizer.Token(v44);
  OUTLINED_FUNCTION_33_10();
  OUTLINED_FUNCTION_31_20();
  v45 = OUTLINED_FUNCTION_55_5();
  *(v45 + 16) = xmmword_26A8570D0;
  v46 = (v45 + v26);
  *v46 = v43;
  *(v46 + 1) = v42;
  *(v46 + 2) = v39;
  *(v46 + 3) = v38;
  v47 = sub_26A84DFA8();
  OUTLINED_FUNCTION_6_71();
  sub_26A7F50E8(v48);
  sub_26A84A968();
  OUTLINED_FUNCTION_6_20(v9, 1, v47);
  if (v32)
  {
    sub_26A4DBD10(v9, &qword_2803AD038, &qword_26A872050);
    *(v46 + 4) = 0;
  }

  else
  {
    v81 = v113;
    sub_26A84DF78();
    _ProtoColor.swiftValue.getter();
    OUTLINED_FUNCTION_40_13();
    v82(v81);
    *(v46 + 4) = v81;
    OUTLINED_FUNCTION_4_11();
    (*(v83 + 8))(v9, v47);
  }

  v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B8CC8, &qword_26A886FD8) + 80);
  v85 = sub_26A65E154();
  OUTLINED_FUNCTION_14_46(&_s26RichTextViewAttributeScopeV19RenderModeAttributeON, v86, v85);
  if (v118 == 2)
  {
LABEL_42:
    sub_26A850F68();
    OUTLINED_FUNCTION_81();
    goto LABEL_44;
  }

  sub_26A850F68();
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_37_18();
  v87(&v46[v84]);
  OUTLINED_FUNCTION_38_13();
LABEL_44:
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
LABEL_45:
  swift_storeEnumTagMultiPayload();
LABEL_46:
  sub_26A4DBD10(v117, &qword_2803B8278, &qword_26A8852B8);
LABEL_47:
  OUTLINED_FUNCTION_27_0();
}

void sub_26A7F2B0C()
{
  OUTLINED_FUNCTION_28_0();
  v39 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B4AB8, &qword_26A8786F8);
  v2 = OUTLINED_FUNCTION_79(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_19();
  v40 = v3;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - v5;
  v7 = sub_26A84AA98();
  OUTLINED_FUNCTION_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_41();
  v13 = v12 - v11;
  sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v41 = v15;
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_41();
  v18 = v17 - v16;
  v19 = sub_26A850668();
  OUTLINED_FUNCTION_15();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v38 - v27;
  sub_26A65E1FC();
  sub_26A84A968();
  if (v43 != 2)
  {
    sub_26A65D6FC(v43 & 1);
    (*(v21 + 32))(v28, v25, v19);
    (*(v9 + 16))(v13, v39, v7);
    sub_26A84AA18();
    (*(v21 + 16))(v6, v28, v19);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v19);
    sub_26A4D7E54();
    sub_26A6ED544();
    sub_26A84A9E8();
    sub_26A4DBD10(v6, &qword_2803B4AB8, &qword_26A8786F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7CC8, &qword_26A886570);
    v29 = OUTLINED_FUNCTION_35_14();
    type metadata accessor for RichTextView.Tokenizer.Token(v29);
    OUTLINED_FUNCTION_33_10();
    OUTLINED_FUNCTION_31_20();
    v32 = v31 & ~v30;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26A8570D0;
    (*(v41 + 16))(v33 + v32, v18, v42);
    swift_storeEnumTagMultiPayload();
    v34 = OUTLINED_FUNCTION_34_15();
    v35(v34);
    v36 = OUTLINED_FUNCTION_22_4();
    v37(v36);
  }

  OUTLINED_FUNCTION_27_0();
}

void sub_26A7F2EDC()
{
  OUTLINED_FUNCTION_28_0();
  v1 = v0;
  type metadata accessor for RichTextView.Tokenizer.Token(0);
  OUTLINED_FUNCTION_15();
  v53 = v3;
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_41();
  v49 = v5 - v4;
  OUTLINED_FUNCTION_25_2();
  v6 = sub_26A84A9C8();
  OUTLINED_FUNCTION_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v52 = v10;
  OUTLINED_FUNCTION_92();
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v14 = sub_26A84A838();
  OUTLINED_FUNCTION_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_41();
  v20 = v19 - v18;
  sub_26A84A8D8();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_41();
  sub_26A84AA78();
  OUTLINED_FUNCTION_7_73();
  sub_26A7F50E8(v22);
  v55 = sub_26A851958();
  v56 = v23;
  sub_26A84A828();
  sub_26A53ACC8();
  v24 = sub_26A8520A8();
  (*(v16 + 8))(v20, v14);
  v25 = v24;

  v26 = *(v24 + 16);
  if (v26)
  {
    v51 = v1;
    v27 = OUTLINED_FUNCTION_44_11();
    sub_26A7DD3B8(v27, v28, v29);
    v30 = v55;
    v31 = v25 + 40;
    do
    {

      sub_26A84A8E8();
      v55 = v30;
      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_26A7DD3B8(v32 > 1, v33 + 1, 1);
        v30 = v55;
      }

      *(v30 + 16) = v33 + 1;
      OUTLINED_FUNCTION_22_34();
      (*(v8 + 32))(v34 + *(v8 + 72) * v33, v13, v6);
      v31 += 16;
      --v26;
    }

    while (v26);

    v1 = v51;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v35);
  *(&v48 - 2) = v1;
  v36 = sub_26A4F9380(sub_26A7F50C8, (&v48 - 4), v30);

  v37 = *(v36 + 16);
  v38 = v49;
  if (v37)
  {
    v39 = OUTLINED_FUNCTION_44_11();
    sub_26A7DD360(v39, v40, v41);
    v42 = 0;
    v43 = v55;
    v51 = v36 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v50 = v8 + 8;
    while (v42 < *(v36 + 16))
    {
      v44 = v52;
      v45 = *(v8 + 16);
      v45(v52, v51 + *(v8 + 72) * v42, v6);
      v45(v38, v44, v6);
      swift_storeEnumTagMultiPayload();
      (*(v8 + 8))(v44, v6);
      OUTLINED_FUNCTION_49_7();
      if (v47)
      {
        sub_26A7DD360(v46 > 1, v44, 1);
        v43 = v55;
      }

      ++v42;
      *(v43 + 16) = v44;
      OUTLINED_FUNCTION_22_34();
      OUTLINED_FUNCTION_9_64();
      sub_26A7F4FF8();
      if (v37 == v42)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_27_0();
  }
}

uint64_t sub_26A7F3394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0D0, &qword_26A872080);
  MEMORY[0x28223BE20](v4 - 8);
  v21[1] = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = sub_26A84B048();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038, &qword_26A872050);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  v16 = sub_26A84A9C8();
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  sub_26A65DF5C();
  sub_26A84A968();
  v17 = 1;
  switch(v22)
  {
    case 1:
      v17 = 2;
      goto LABEL_4;
    case 2:
      v17 = 32;
      goto LABEL_4;
    case 3:
      goto LABEL_5;
    default:
LABEL_4:
      v22 = v17;
      LOBYTE(v23) = 0;
      sub_26A7F51D0();
      sub_26A84A9E8();
LABEL_5:
      v18 = sub_26A84DFA8();
      sub_26A7F50E8(&unk_2803B8D90);
      sub_26A84A968();
      if (__swift_getEnumTagSinglePayload(v15, 1, v18) == 1)
      {
        sub_26A4DBD10(v15, &qword_2803AD038, &qword_26A872050);
      }

      else
      {
        sub_26A84DF78();
        v19 = _ProtoColor.swiftValue.getter();
        (*(v10 + 8))(v12, v9);
        (*(*(v18 - 8) + 8))(v15, v18);
        if (v19)
        {
          v22 = v19;
          sub_26A7F517C();
          sub_26A84A9E8();
        }
      }

      sub_26A65DFB0();
      result = sub_26A84A968();
      if (v23)
      {
        sub_26A84AB88();

        sub_26A4D7E54();
        sub_26A7F5128();
        sub_26A84A9E8();
        return sub_26A4DBD10(v8, &qword_2803AF0D0, &qword_26A872080);
      }

      return result;
  }
}
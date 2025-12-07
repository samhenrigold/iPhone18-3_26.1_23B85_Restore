void sub_226C9DEF0(void *a1)
{
  v2 = sub_226D6952C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D694FC();
  sub_226D6943C();
  if (a1)
  {
    v3 = [a1 fullName];
    if (v3)
    {
      v4 = v3;
      sub_226D6E39C();
    }

    sub_226D6944C();
    v5 = [a1 phoneNumber];
    if (v5)
    {
      v6 = v5;
      sub_226D6E39C();
    }

    sub_226D6940C();
    v7 = [a1 emailAddress];
    if (v7)
    {
      v8 = v7;
      sub_226D6E39C();
    }

    sub_226D6941C();
    v9 = [a1 billingAddress];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 street];

      if (v11)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    sub_226D6944C();
    sub_226D6940C();
    sub_226D6941C();
  }

  v12 = sub_226D6968C();
  sub_226D6950C();
  v12(v31, 0);
  if (a1)
  {
    v13 = [a1 billingAddress];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 city];

      if (v15)
      {
        sub_226D6E39C();
      }
    }

    v16 = sub_226D6968C();
    sub_226D694DC();
    v16(v31, 0);
    v17 = [a1 billingAddress];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 state];

      if (v19)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v20 = sub_226D6968C();
    sub_226D694DC();
    v20(v31, 0);
  }

  v21 = sub_226D6968C();
  sub_226D694EC();
  v21(v31, 0);
  if (a1)
  {
    v22 = [a1 billingAddress];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 postalCode];

      if (v24)
      {
        sub_226D6E39C();
      }
    }

    v25 = sub_226D6968C();
    sub_226D694CC();
    v25(v31, 0);
    v26 = [a1 billingAddress];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 country];

      if (v28)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v29 = sub_226D6968C();
    sub_226D694CC();
    v29(v31, 0);
  }

  v30 = sub_226D6968C();
  sub_226D6951C();
  v30(v31, 0);
}

void sub_226C9E430(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = sub_226D695EC();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D84F90];
  sub_226D695FC();
  if (a1)
  {
    v8 = [a1 totalAmount];
    if (v8)
    {
      v9 = v8;
      sub_226D6E39C();
    }

    sub_226D6960C();
    v10 = [a1 totalIsoCurrencyCode];
    if (v10)
    {
      v11 = v10;
      sub_226D6E39C();
    }

    sub_226D6963C();
    v12 = [a1 transactions];
    if (v12)
    {
      v13 = v12;
      sub_226AE59B4(0, &qword_27D7A8988, 0x277D211A8);
      v14 = sub_226D6E5EC();

      if (v14 >> 62)
      {
        goto LABEL_9;
      }

LABEL_12:
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  else
  {
    sub_226D6960C();
    sub_226D6963C();
  }

  v14 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_12;
  }

LABEL_9:
  v15 = sub_226D6EDFC();
  if (!v15)
  {
LABEL_10:

LABEL_22:
    sub_226D6962C();

    return;
  }

LABEL_13:
  v24 = v7;
  sub_226AE25D4(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v21 = a2;
    v22 = a1;
    v16 = 0;
    v17 = v24;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x22AA8AFD0](v16, v14);
      }

      else
      {
        v18 = *(v14 + 8 * v16 + 32);
      }

      sub_226C9EEEC(v18);
      v24 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226AE25D4((v19 > 1), v20 + 1, 1);
        v17 = v24;
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v23);
    }

    while (v15 != v16);

    a1 = v22;
    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_226C9E760@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 9)
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_2785C8A90 + a1);
    v4 = sub_226D693BC();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t sub_226C9E824@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_2785C8AD8 + a1);
    v4 = sub_226D6946C();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

uint64_t sub_226C9E8E8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 >= 0xA)
  {
    result = sub_226D6F0AC();
    __break(1u);
  }

  else
  {
    v3 = **(&unk_2785C8AD8 + a1);
    v4 = sub_226D6946C();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  return result;
}

void sub_226C9E9AC(void *a1)
{
  v2 = sub_226D6952C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D694FC();
  sub_226D6943C();
  if (a1)
  {
    v3 = [a1 fullName];
    if (v3)
    {
      v4 = v3;
      sub_226D6E39C();
    }

    sub_226D6944C();
    v5 = [a1 phoneNumber];
    if (v5)
    {
      v6 = v5;
      sub_226D6E39C();
    }

    sub_226D6940C();
    v7 = [a1 emailAddress];
    if (v7)
    {
      v8 = v7;
      sub_226D6E39C();
    }

    sub_226D6941C();
    v9 = [a1 address];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 street];

      if (v11)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    sub_226D6944C();
    sub_226D6940C();
    sub_226D6941C();
  }

  v12 = sub_226D6942C();
  sub_226D6950C();
  v12(v31, 0);
  if (a1)
  {
    v13 = [a1 address];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 city];

      if (v15)
      {
        sub_226D6E39C();
      }
    }

    v16 = sub_226D6942C();
    sub_226D694DC();
    v16(v31, 0);
    v17 = [a1 address];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 state];

      if (v19)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v20 = sub_226D6942C();
    sub_226D694DC();
    v20(v31, 0);
  }

  v21 = sub_226D6942C();
  sub_226D694EC();
  v21(v31, 0);
  if (a1)
  {
    v22 = [a1 address];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 postalCode];

      if (v24)
      {
        sub_226D6E39C();
      }
    }

    v25 = sub_226D6942C();
    sub_226D694CC();
    v25(v31, 0);
    v26 = [a1 address];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 country];

      if (v28)
      {
        sub_226D6E39C();
      }
    }
  }

  else
  {
    v29 = sub_226D6942C();
    sub_226D694CC();
    v29(v31, 0);
  }

  v30 = sub_226D6942C();
  sub_226D6951C();
  v30(v31, 0);
}

void sub_226C9EEEC(void *a1)
{
  v2 = sub_226D6957C();
  MEMORY[0x28223BE20](v2 - 8);
  sub_226D6954C();
  sub_226D695CC();
  v3 = [a1 amount];
  if (v3)
  {
    v4 = v3;
    sub_226D6E39C();
  }

  sub_226D695DC();
  v5 = [a1 isoCurrencyCode];
  if (v5)
  {
    v6 = v5;
    sub_226D6E39C();
  }

  sub_226D6958C();
  v7 = [a1 paymentMethod];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 displayName];

    if (v9)
    {
      sub_226D6E39C();
    }
  }

  v10 = sub_226D6959C();
  sub_226D6955C();
  v10(v20, 0);
  v11 = [a1 paymentMethod];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 lastFourDigits];

    if (v13)
    {
      sub_226D6E39C();
    }
  }

  v14 = sub_226D6959C();
  sub_226D6956C();
  v14(v20, 0);
  v15 = [a1 paymentMethod];
  if (v15)
  {
    v16 = v15;
    [v15 isApplePay];
  }

  v17 = sub_226D6959C();
  sub_226D6953C();
  v17(v20, 0);
  v18 = [a1 transactionIdenifier];
  if (v18)
  {
    v19 = v18;
    sub_226D6E39C();
  }

  sub_226D695BC();
}

void sub_226C9F234(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A08, qword_226D7A708);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = [objc_opt_self() defaultWorkspace];
  if (v6)
  {
    v7 = v6;
    v8 = *(v3 + 16);
    v8(v5, a1, v2);
    v9 = type metadata accessor for ApplicationWorkspaceObserver(0);
    v10 = objc_allocWithZone(v9);
    v8(&v10[OBJC_IVAR____TtC13FinanceDaemonP33_00696368646FB3072A3FCAFA2C38021D28ApplicationWorkspaceObserver_continuation], v5, v2);
    v15.receiver = v10;
    v15.super_class = v9;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    (*(v3 + 8))(v5, v2);
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v11;
    v13 = v7;
    v14 = v11;
    sub_226D6E7BC();
    [v13 addObserver_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226C9F41C(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for ApplicationWorkspaceEvent(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A00, &qword_226D7A700);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = sub_226D67F1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226CA0208(a1);
  v16 = v15[2];
  if (v16)
  {
    v30 = a2;
    v17 = v12 + 16;
    v18 = *(v12 + 16);
    v19 = *(v12 + 80);
    v24 = v15;
    v25 = v8;
    v20 = v15 + ((v19 + 32) & ~v19);
    v28 = *(v17 + 56);
    v29 = OBJC_IVAR____TtC13FinanceDaemonP33_00696368646FB3072A3FCAFA2C38021D28ApplicationWorkspaceObserver_continuation;
    v26 = v5;
    v27 = v2;
    v21 = (v31 + 8);
    v31 = v17;
    v22 = (v17 - 8);
    do
    {
      v18(v14, v20, v11);
      v18(v7, v14, v11);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A08, qword_226D7A708);
      sub_226D6E7CC();
      (*v21)(v10, v25);
      (*v22)(v14, v11);
      v20 += v28;
      --v16;
    }

    while (v16);
  }
}

uint64_t sub_226C9F6F4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a3)
  {
    v6 = sub_226D6E5EC();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  sub_226C9F41C(v6, a4);
}

uint64_t sub_226C9F770(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_226D6EF8C();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_226AC4708(i, v5);
    sub_226CA0534();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_226D6EF6C();
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

uint64_t sub_226C9F85C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v11 = MEMORY[0x277D84F90];
  sub_226AE2980(0, v3 & ~(v3 >> 63), 0);
  v4 = v11;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AA8AFD0](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_226D6EDFC();
          goto LABEL_3;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CD0, &qword_226D7AE80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6260, &qword_226D70C80);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v11 + 16);
      v7 = *(v11 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_226AE2980((v7 > 1), v8 + 1, 1);
      }

      *(v11 + 16) = v8 + 1;
      *(v11 + 8 * v8 + 32) = v10;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_226D6EDFC();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

void sub_226C9FAE0(uint64_t a1)
{
  sub_226C9FB70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_226C9FB70(uint64_t a1)
{
  if (!qword_28105F4F0)
  {
    type metadata accessor for ApplicationWorkspaceEvent(255);
    v1 = sub_226D6E7DC();
    if (!v2)
    {
      atomic_store(v1, &qword_28105F4F0);
    }
  }
}

uint64_t sub_226C9FBE8(uint64_t a1)
{
  result = sub_226D67F1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_226C9FC48(uint64_t a1, uint64_t a2)
{
  v31 = sub_226D67F1C();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ApplicationWorkspaceEvent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A89F0, &qword_226D7A6F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  v20 = *(v19 + 56);
  sub_226CA0088(a1, &v30 - v17);
  sub_226CA0088(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_226CA0088(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v31;
      (*(v4 + 32))(v6, &v18[v20], v31);
      sub_226CA0154();
      sub_226D6E53C();
      sub_226D6E53C();
      if (v34 == v32 && v35 == v33)
      {
        v22 = *(v4 + 8);
        v22(v6, v21);

        v22(v12, v21);
        goto LABEL_11;
      }

      v26 = sub_226D6F21C();
      v27 = *(v4 + 8);
      v27(v6, v21);

      v27(v12, v21);
      if (v26)
      {
        goto LABEL_11;
      }

LABEL_19:
      sub_226CA01AC(v18);
      return 0;
    }

    v15 = v12;
  }

  else
  {
    sub_226CA0088(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v23 = v31;
      (*(v4 + 32))(v9, &v18[v20], v31);
      sub_226CA0154();
      sub_226D6E53C();
      sub_226D6E53C();
      if (v34 == v32 && v35 == v33)
      {
        v24 = *(v4 + 8);
        v24(v9, v23);

        v24(v15, v23);
        goto LABEL_11;
      }

      v28 = sub_226D6F21C();
      v29 = *(v4 + 8);
      v29(v9, v23);

      v29(v15, v23);
      if (v28)
      {
LABEL_11:
        sub_226CA01AC(v18);
        return 1;
      }

      goto LABEL_19;
    }
  }

  (*(v4 + 8))(v15, v31);
  sub_226CA00EC(v18);
  return 0;
}

uint64_t sub_226CA0088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ApplicationWorkspaceEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CA00EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A89F0, &qword_226D7A6F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226CA0154()
{
  result = qword_281062BC8;
  if (!qword_281062BC8)
  {
    sub_226D67F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062BC8);
  }

  return result;
}

uint64_t sub_226CA01AC(uint64_t a1)
{
  v2 = type metadata accessor for ApplicationWorkspaceEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_226CA0208(uint64_t a1)
{
  v26 = sub_226D67F1C();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v5 = sub_226C9F770(a1);
    if (v5)
    {
      v6 = v5;
      v7 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v5 >> 62)
      {
        v8 = sub_226D6EDFC();
        if (v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
LABEL_5:
          v23[0] = v7;
          v27 = MEMORY[0x277D84F90];
          result = sub_226AE23C4(0, v8 & ~(v8 >> 63), 0);
          if (v8 < 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            return result;
          }

          v10 = 0;
          v11 = v27;
          v24 = v8;
          v25 = v6 & 0xC000000000000001;
          v23[1] = v2 + 32;
          while (1)
          {
            v12 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v25)
            {
              v13 = MEMORY[0x22AA8AFD0](v10, v6);
            }

            else
            {
              if (v10 >= *(v23[0] + 16))
              {
                goto LABEL_24;
              }

              v13 = *(v6 + 8 * v10 + 32);
            }

            v14 = v13;
            v15 = v6;
            result = [v13 bundleIdentifier];
            if (!result)
            {
              goto LABEL_29;
            }

            v16 = result;
            sub_226D6E39C();

            sub_226D67EFC();
            v27 = v11;
            v18 = *(v11 + 16);
            v17 = *(v11 + 24);
            if (v18 >= v17 >> 1)
            {
              sub_226AE23C4((v17 > 1), v18 + 1, 1);
              v11 = v27;
            }

            *(v11 + 16) = v18 + 1;
            (*(v2 + 32))(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18, v4, v26);
            ++v10;
            v6 = v15;
            if (v12 == v24)
            {

              return v11;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      return MEMORY[0x277D84F90];
    }
  }

  if (qword_28105F5D8 != -1)
  {
LABEL_25:
    swift_once();
  }

  v19 = sub_226D6E07C();
  __swift_project_value_buffer(v19, qword_28105F5E0);
  v20 = sub_226D6E05C();
  v21 = sub_226D6E9CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_226AB4000, v20, v21, "Unable to cast appProxies to LSApplicationProxy!", v22, 2u);
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_226CA0534()
{
  result = qword_28105F460;
  if (!qword_28105F460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105F460);
  }

  return result;
}

void sub_226CA0590(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 labRequestObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 failedAttemptCount];

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v4 == 0;
}

uint64_t sub_226CA0628@<X0>(void *a1@<X0>, SEL *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = [a1 labRequestObject];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 *a2];

    if (v12)
    {
      sub_226D6D45C();

      v13 = sub_226D6D4AC();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v17 = sub_226D6D4AC();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    return sub_226B72784(v9, a3);
  }

  else
  {
    v14 = sub_226D6D4AC();
    v15 = *(*(v14 - 8) + 56);

    return v15(a3, 1, 1, v14);
  }
}

unint64_t sub_226CA07D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v66 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A10, qword_226D7A750);
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v62 - v17;
  v19 = sub_226D6D52C();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 publicAccountObject];
  v24 = [v23 id];

  sub_226D6D4FC();
  sub_226CA0628(a1, &selRef_lastSuccessDate, v6);
  v25 = (*(v8 + 48))(v6, 1, v7);
  v79 = v22;
  if (v25 == 1)
  {
    v26 = sub_226B905C4(v6);
    MEMORY[0x28223BE20](v26);
    *(&v62 - 2) = v22;
    v73 = sub_226D6737C();
    v81 = v73;
    sub_226D6D72C();
  }

  else
  {
    v27 = (*(v8 + 32))(v14, v6, v7);
    MEMORY[0x28223BE20](v27);
    *(&v62 - 2) = v22;
    *(&v62 - 1) = v14;
    v73 = sub_226D6737C();
    v81 = v73;
    sub_226D6D72C();
    (*(v8 + 8))(v14, v7);
  }

  v75 = v18;
  v28 = sub_226D6845C();
  v29 = sub_226D6844C();
  [v29 setFetchLimit_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v30 = swift_allocObject();
  v72 = xmmword_226D71F20;
  *(v30 + 16) = xmmword_226D71F20;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  swift_getKeyPath();
  *(v30 + 32) = sub_226D6E9FC();
  v31 = sub_226D6E5CC();

  v69 = v29;
  [v29 setSortDescriptors_];

  v32 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v33 = *(v80 + 16);
  v70 = v32;
  v71 = v33;
  v34 = v74;
  v35 = v78;
  v33(v74, v18, v78);
  sub_226D6737C();
  v36 = sub_226D6E90C();
  [v29 setPredicate_];

  v37 = v28;
  v38 = sub_226D6844C();
  [v38 setFetchLimit_];
  v39 = swift_allocObject();
  *(v39 + 16) = v72;
  swift_getKeyPath();
  *(v39 + 32) = sub_226D6E9FC();
  v40 = sub_226D6E5CC();
  v41 = v35;
  v42 = v75;

  [v38 setSortDescriptors_];

  v71(v34, v42, v35);
  v43 = v69;
  v44 = sub_226D6E90C();
  [v38 setPredicate_];

  v45 = v76;
  result = sub_226D6EBBC();
  if (v45)
  {
    (*(v80 + 8))(v42, v41);
    v47 = v79;

    return (*(v67 + 8))(v47, v68);
  }

  v48 = v42;
  if (!(result >> 62))
  {
    v50 = v79;
    v49 = v80;
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_20:
    (*(v49 + 8))(v48, v41);

LABEL_26:

    v56 = 1;
    goto LABEL_27;
  }

  v37 = v38;
  v57 = result;
  v58 = sub_226D6EDFC();
  result = v57;
  v38 = v37;
  v50 = v79;
  v49 = v80;
  if (!v58)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((result & 0xC000000000000001) != 0)
  {
    v51 = v38;
    v52 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }

    v51 = v38;
    v52 = *(result + 32);
  }

  v37 = v52;

  v38 = v51;
  result = sub_226D6EBBC();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_24:
    (*(v80 + 8))(v48, v41);

LABEL_25:
    v43 = v38;
    v38 = v37;
    v50 = v79;
    goto LABEL_26;
  }

LABEL_23:
  v59 = result;
  v60 = sub_226D6EDFC();
  result = v59;
  if (!v60)
  {
    goto LABEL_24;
  }

LABEL_13:
  v63 = v38;
  if ((result & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x22AA8AFD0](0);
    goto LABEL_16;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(result + 32);
LABEL_16:
    v38 = v53;

    if ((sub_226D6EC3C() & 1) == 0)
    {
      v54 = [v37 transactionDate];
      sub_226D6D45C();

      v55 = [v38 transactionDate];
      sub_226D6D45C();

      sub_226D6CD3C();
      (*(v80 + 8))(v48, v41);
      v56 = 0;
      v50 = v79;
LABEL_27:
      v61 = sub_226D6CD7C();
      (*(*(v61 - 8) + 56))(v66, v56, 1, v61);
      return (*(v67 + 8))(v50, v68);
    }

    (*(v80 + 8))(v48, v41);

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CA1174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v47 = a2;
  v68 = a4;
  v5 = sub_226D6CFFC();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v58 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A18, &qword_226D7A798);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  MEMORY[0x28223BE20](v7);
  v57 = v45 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A20, &qword_226D7A7A0);
  v63 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A28, &qword_226D7A7A8);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  MEMORY[0x28223BE20](v11);
  v55 = v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A30, &qword_226D7A7B0);
  v15 = *(v14 - 8);
  v51 = v14;
  v52 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A38, &qword_226D7A7B8);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v45 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A40, &qword_226D7A7C0);
  v23 = *(v22 - 8);
  v48 = v22;
  v49 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = v45 - v24;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A48, &qword_226D7A7C8);
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v50 = v45 - v26;
  v45[1] = *a1;
  sub_226AC4194(&qword_27D7A8A50, &qword_27D7A8A38, &qword_226D7A7B8, MEMORY[0x277CC90F8]);
  sub_226D6D01C();
  swift_getKeyPath();
  sub_226D6CFCC();

  v27 = v19 + 8;
  v28 = *(v19 + 8);
  v45[0] = v27;
  v28(v21, v18);
  sub_226D6D52C();
  sub_226D6D00C();
  v47 = MEMORY[0x277CC90C0];
  sub_226AC4194(&qword_27D7A8A58, &qword_27D7A8A40, &qword_226D7A7C0, MEMORY[0x277CC90C0]);
  v46 = MEMORY[0x277CC9080];
  sub_226AC4194(&qword_27D7A8A60, &qword_27D7A8A30, &qword_226D7A7B0, MEMORY[0x277CC9080]);
  sub_226CA22A4(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v29 = v48;
  v30 = v51;
  sub_226D6CFBC();
  (*(v52 + 8))(v17, v30);
  (*(v49 + 8))(v25, v29);
  sub_226D6D01C();
  swift_getKeyPath();
  v31 = v53;
  sub_226D6CFCC();

  v28(v21, v18);
  sub_226D6D4AC();
  v32 = v57;
  sub_226D6D00C();
  v34 = v60;
  v33 = v61;
  v35 = v58;
  (*(v60 + 104))(v58, *MEMORY[0x277CC8FC0], v61);
  sub_226AC4194(&qword_27D7A8A68, &qword_27D7A8A20, &qword_226D7A7A0, v47);
  sub_226AC4194(&qword_27D7A8A70, &qword_27D7A8A18, &qword_226D7A798, v46);
  sub_226CA22A4(&qword_27D7A66D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v36 = v55;
  v37 = v59;
  v38 = v64;
  sub_226D6CFDC();
  (*(v34 + 8))(v35, v33);
  (*(v65 + 8))(v32, v38);
  (*(v63 + 8))(v31, v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A78, &qword_226D7A830);
  v40 = v68;
  v68[3] = v39;
  v40[4] = sub_226CA1E68();
  __swift_allocate_boxed_opaque_existential_1(v40);
  sub_226AC4194(&qword_27D7A8AD0, &qword_27D7A8A48, &qword_226D7A7C8, MEMORY[0x277CC9070]);
  sub_226AC4194(&qword_27D7A8AD8, &qword_27D7A8A28, &qword_226D7A7A8, MEMORY[0x277CC8EB0]);
  v41 = v50;
  v42 = v54;
  v43 = v66;
  sub_226D6CFEC();
  (*(v67 + 8))(v36, v43);
  return (*(v56 + 8))(v41, v42);
}

uint64_t sub_226CA1A50@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A30, &qword_226D7A7B0);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A38, &qword_226D7A7B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A40, &qword_226D7A7C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  sub_226AC4194(&qword_27D7A8A50, &qword_27D7A8A38, &qword_226D7A7B8, MEMORY[0x277CC90F8]);
  sub_226D6D01C();
  swift_getKeyPath();
  sub_226D6CFCC();

  (*(v9 + 8))(v11, v8);
  sub_226D6D52C();
  sub_226D6D00C();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8A48, &qword_226D7A7C8);
  a3[4] = sub_226CA1EF4();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_226AC4194(&qword_27D7A8A58, &qword_27D7A8A40, &qword_226D7A7C0, MEMORY[0x277CC90C0]);
  sub_226AC4194(&qword_27D7A8A60, &qword_27D7A8A30, &qword_226D7A7B0, MEMORY[0x277CC9080]);
  sub_226CA22A4(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v16 = v19;
  sub_226D6CFBC();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

void sub_226CA1E00(id *a1)
{
  v1 = [*a1 transactionDate];
  sub_226D6D45C();
}

unint64_t sub_226CA1E68()
{
  result = qword_27D7A8A80;
  if (!qword_27D7A8A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A78, &qword_226D7A830);
    sub_226CA1EF4();
    sub_226CA2080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8A80);
  }

  return result;
}

unint64_t sub_226CA1EF4()
{
  result = qword_27D7A8A88;
  if (!qword_27D7A8A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A48, &qword_226D7A7C8);
    sub_226CA2124(&qword_27D7A8A90, &qword_27D7A8A40, &qword_226D7A7C0);
    sub_226CA1F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8A88);
  }

  return result;
}

unint64_t sub_226CA1F98()
{
  result = qword_27D7A8AA0;
  if (!qword_27D7A8AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A30, &qword_226D7A7B0);
    v1 = MEMORY[0x277CC95F0];
    sub_226CA22A4(&qword_27D7A7DE8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_226CA22A4(&qword_27D7A7DD8, v1, MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8AA0);
  }

  return result;
}

unint64_t sub_226CA2080()
{
  result = qword_27D7A8AA8;
  if (!qword_27D7A8AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A28, &qword_226D7A7A8);
    sub_226CA2124(&qword_27D7A8AB0, &qword_27D7A8A20, &qword_226D7A7A0);
    sub_226CA21BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8AA8);
  }

  return result;
}

uint64_t sub_226CA2124(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_226AC4194(&qword_27D7A8A98, &qword_27D7A8A38, &qword_226D7A7B8, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226CA21BC()
{
  result = qword_27D7A8AB8;
  if (!qword_27D7A8AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7A8A18, &qword_226D7A798);
    v1 = MEMORY[0x277CC9578];
    sub_226CA22A4(&qword_27D7A8AC0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_226CA22A4(&qword_27D7A8AC8, v1, MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8AB8);
  }

  return result;
}

uint64_t sub_226CA22A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CA22EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_226CA2334(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_226CA2380()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE0, &qword_226D7A898);
  sub_226D6EB8C();
  return v1;
}

uint64_t BackgroundDeliveryRegistrationManager.__allocating_init(context:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_226CA24D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6C35C();
  v11 = *(a2 + 16);
  v12 = sub_226D6C34C();
  if (!v4)
  {
    v13 = v8;
    v21 = v12;
    v14 = *(a3 + 16);
    if (v14)
    {
      v20 = v7;
      v15 = *(sub_226D66F6C() - 8);
      v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v17 = *(v15 + 72);
      sub_226D6C44C();
      do
      {
        sub_226D6D46C();

        (*(v13 + 8))(v10, v20);
        v16 += v17;
        --v14;
      }

      while (v14);
    }

    v22[0] = 0;
    if ([v11 save_])
    {
      v18 = v22[0];
    }

    else
    {
      v19 = v22[0];
      sub_226D6D04C();

      swift_willThrow();
    }
  }
}

id sub_226CA278C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  while (v6 != v5)
  {
    sub_226D66F6C();
    sub_226D6C44C();
    result = sub_226D6C3EC();
    ++v5;
    if (v3)
    {
      return result;
    }
  }

  v8 = *(a3 + 16);
  v10[0] = 0;
  if ([v8 save_])
  {
    return v10[0];
  }

  v9 = v10[0];
  sub_226D6D04C();

  return swift_willThrow();
}

id sub_226CA2968(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  sub_226D6C35C();
  v4 = *(a2 + 16);
  result = sub_226D6C33C();
  if (!v2)
  {
    v7[0] = 0;
    if ([v4 save_])
    {
      return v7[0];
    }

    else
    {
      v6 = v7[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t BackgroundDeliveryRegistrationManager.getAllPendingRegistrations(newestDeliveryDate:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v2;
}

void sub_226CA2B48(void *a3@<X8>)
{
  v5 = sub_226D6B64C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v33 - v10;
  sub_226D6C44C();
  v12 = sub_226D6C42C();
  if (v3)
  {
    if (qword_28105F680 != -1)
    {
      swift_once();
    }

    v13 = sub_226D6E07C();
    __swift_project_value_buffer(v13, qword_28105F688);
    v14 = v3;
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9CC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v3;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_226AB4000, v15, v16, "Error fetching pending registrations: %@", v17, 0xCu);
      sub_226B17298(v18);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
      MEMORY[0x22AA8BEE0](v17, -1, -1);
    }

    v21 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v34 = a3;
  if (!(v12 >> 62))
  {
    v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_22:

    v21 = MEMORY[0x277D84F90];
    a3 = v34;
LABEL_23:
    *a3 = v21;
    return;
  }

  v32 = v12;
  v22 = sub_226D6EDFC();
  v12 = v32;
  if (!v22)
  {
    goto LABEL_22;
  }

LABEL_9:
  v23 = v12;
  v36 = MEMORY[0x277D84F90];
  sub_226AE293C(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v33[1] = 0;
    v21 = v36;
    v24 = v23;
    v35 = v5;
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v25, v24);
        sub_226D6B65C();
        v36 = v21;
        v27 = *(v21 + 16);
        v26 = *(v21 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_226AE293C((v26 > 1), v27 + 1, 1);
          v21 = v36;
        }

        ++v25;
        *(v21 + 16) = v27 + 1;
        (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v11, v35);
        v24 = v23;
      }

      while (v22 != v25);
    }

    else
    {
      v28 = 32;
      do
      {
        v29 = *(v24 + v28);
        sub_226D6B65C();
        v36 = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_226AE293C((v30 > 1), v31 + 1, 1);
          v21 = v36;
        }

        *(v21 + 16) = v31 + 1;
        (*(v6 + 32))(v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v31, v8, v35);
        v28 += 8;
        --v22;
        v24 = v23;
      }

      while (v22);
    }

    a3 = v34;
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_226CA2F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v4;
}

void sub_226CA2FF4(const char *a1@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, void *a5@<X3>, uint64_t *a6@<X8>, ...)
{
  v50 = a1;
  v55 = a5;
  v10 = sub_226D66F5C();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_226D6B64C();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - v17;
  sub_226D6C44C();
  v19 = v54;
  v20 = (v55)(a2, a3, *(a4 + 16));
  if (v19)
  {
    v54 = a6;
    if (qword_28105F680 != -1)
    {
      swift_once();
    }

    v21 = sub_226D6E07C();
    __swift_project_value_buffer(v21, qword_28105F688);
    v23 = v51;
    v22 = v52;
    v24 = a2;
    v25 = v53;
    (*(v52 + 16))(v51, v24, v53);
    v26 = v19;
    v27 = sub_226D6E05C();
    v28 = sub_226D6E9CC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v23;
      v55 = swift_slowAlloc();
      v56 = v55;
      *v29 = 136315394;
      sub_226CA4238();
      v32 = sub_226D6F1CC();
      v33 = v25;
      v35 = v34;
      (*(v22 + 8))(v31, v33);
      v36 = sub_226AC4530(v32, v35, &v56);

      *(v29 + 4) = v36;
      *(v29 + 12) = 2112;
      v37 = v19;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 14) = v38;
      *v30 = v38;
      _os_log_impl(&dword_226AB4000, v27, v28, v50, v29, 0x16u);
      sub_226B17298(v30);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
      v39 = v55;
      __swift_destroy_boxed_opaque_existential_0Tm(v55);
      MEMORY[0x22AA8BEE0](v39, -1, -1);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v23, v25);
    }

    a6 = v54;

    goto LABEL_17;
  }

  v40 = v20;
  v55 = v12;
  if (!(v20 >> 62))
  {
    v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v41)
    {
      goto LABEL_8;
    }

LABEL_25:

LABEL_17:
    v42 = MEMORY[0x277D84F90];
LABEL_23:
    *a6 = v42;
    return;
  }

  v41 = sub_226D6EDFC();
  if (!v41)
  {
    goto LABEL_25;
  }

LABEL_8:
  v56 = MEMORY[0x277D84F90];
  sub_226AE293C(0, v41 & ~(v41 >> 63), 0);
  if ((v41 & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = a6;
    v42 = v56;
    if ((v40 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v41; ++i)
      {
        MEMORY[0x22AA8AFD0](i, v40);
        sub_226D6B65C();
        v56 = v42;
        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_226AE293C((v44 > 1), v45 + 1, 1);
          v42 = v56;
        }

        *(v42 + 16) = v45 + 1;
        (*(v13 + 32))(v42 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v45, v18, v55);
      }
    }

    else
    {
      v46 = 32;
      do
      {
        v47 = *(v40 + v46);
        sub_226D6B65C();
        v56 = v42;
        v49 = *(v42 + 16);
        v48 = *(v42 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_226AE293C((v48 > 1), v49 + 1, 1);
          v42 = v56;
        }

        *(v42 + 16) = v49 + 1;
        (*(v13 + 32))(v42 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v49, v15, v55);
        v46 += 8;
        --v41;
      }

      while (v41);
    }

    a6 = v54;
    goto LABEL_23;
  }

  __break(1u);
}

id sub_226CA35FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25[1] = *MEMORY[0x277D85DE8];
  v22 = sub_226D67F1C();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_226D66F6C();
  v8 = *(v21 - 8);
  v9 = MEMORY[0x28223BE20](v21);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(sub_226D6B64C() - 8);
    v14 = (v5 + 8);
    v15 = (v8 + 8);
    v16 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v20[0] = *(v13 + 72);
    v20[1] = sub_226D6C44C();
    while (1)
    {
      sub_226D6B63C();
      sub_226D6B62C();
      sub_226D6B61C();
      sub_226D6C40C();
      if (v3)
      {
        break;
      }

      (*v14)(v7, v22);
      (*v15)(v11, v21);
      v16 += v20[0];
      if (!--v12)
      {
        goto LABEL_5;
      }
    }

    (*v14)(v7, v22);
    return (*v15)(v11, v21);
  }

  else
  {
LABEL_5:
    v17 = *(v24 + 16);
    v25[0] = 0;
    if ([v17 save_])
    {
      return v25[0];
    }

    else
    {
      v19 = v25[0];
      sub_226D6D04C();

      return swift_willThrow();
    }
  }
}

uint64_t BackgroundDeliveryRegistrationManager.updateScheduledRegistrations(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  result = sub_226D6EB7C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_226CA3988@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6B64C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v36 - v11;
  sub_226D6C44C();
  v13 = *(a2 + 16);
  result = sub_226D6C41C();
  if (v3)
  {
    return result;
  }

  v15 = result;
  v37 = v9;
  v38 = 0;
  v39 = result >> 62;
  v40 = a3;
  v41 = v6;
  if (result >> 62)
  {
    goto LABEL_31;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16)
  {
    while (v16 >= 1)
    {
      v17 = 0;
      while (1)
      {
        v18 = (v15 & 0xC000000000000001) != 0 ? MEMORY[0x22AA8AFD0](v17, v15) : *(v15 + 8 * v17 + 32);
        v19 = v18;
        if (__OFADD__([v18 scheduleSequenceNumber], 1))
        {
          break;
        }

        ++v17;
        sub_226D6C43C();

        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_31:
      v16 = sub_226D6EDFC();
      if (!v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

LABEL_11:
  v42[0] = 0;
  v20 = [v13 save_];
  v21 = v42[0];
  if (!v20)
  {
    v30 = v42[0];

    sub_226D6D04C();

    return swift_willThrow();
  }

  if (v39)
  {
    v22 = sub_226D6EDFC();
    v23 = v40;
    if (v22)
    {
      goto LABEL_14;
    }

LABEL_23:
    v31 = v21;

    *v23 = MEMORY[0x277D84F90];
    return result;
  }

  v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = v40;
  if (!v22)
  {
    goto LABEL_23;
  }

LABEL_14:
  v42[0] = MEMORY[0x277D84F90];
  v24 = v21;
  sub_226AE293C(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    goto LABEL_34;
  }

  v25 = v42[0];
  v26 = v37;
  if ((v15 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v22; ++i)
    {
      MEMORY[0x22AA8AFD0](i, v15);
      sub_226D6B65C();
      v42[0] = v25;
      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        sub_226AE293C((v28 > 1), v29 + 1, 1);
        v25 = v42[0];
      }

      v25[2] = v29 + 1;
      (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v29, v12, v41);
    }
  }

  else
  {
    v32 = 32;
    do
    {
      v33 = *(v15 + v32);
      sub_226D6B65C();
      v42[0] = v25;
      v35 = v25[2];
      v34 = v25[3];
      if (v35 >= v34 >> 1)
      {
        sub_226AE293C((v34 > 1), v35 + 1, 1);
        v25 = v42[0];
      }

      v25[2] = v35 + 1;
      (*(v7 + 32))(v25 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v35, v26, v41);
      v32 += 8;
      --v22;
    }

    while (v22);
  }

  *v40 = v25;
  return result;
}

uint64_t BackgroundDeliveryRegistrationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_226CA3EF0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v2;
}

uint64_t sub_226CA3F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  sub_226D6EB8C();
  return v6;
}

uint64_t sub_226CA4068()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AE8, &qword_226D7A8F0);
  result = sub_226D6EB7C();
  if (!v0)
  {
    return v2;
  }

  return result;
}

unint64_t sub_226CA4238()
{
  result = qword_281062C38;
  if (!qword_281062C38)
  {
    sub_226D66F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281062C38);
  }

  return result;
}

uint64_t sub_226CA4350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  if (!a2)
  {
    v4 = sub_226B31FA8();
    v5 = type metadata accessor for WalletMessageUpdater();
    v6 = swift_allocObject();
    v7 = sub_226D69BFC();

    v9 = MEMORY[0x22AA85C90](v8);
    *(&v29 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v30[0] = &off_283A6D820;
    sub_226C02324(v30 + 8);
    v10 = sub_226D6B5EC();
    v11 = MEMORY[0x277CC7F68];
    v26 = v10;
    v27 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v25);
    sub_226D6B58C();
    v23 = v10;
    v24 = v11;
    __swift_allocate_boxed_opaque_existential_1(&v22);
    sub_226D6B5AC();
    v12 = sub_226D6827C();
    v20 = v5;
    v21 = sub_226CA9294(&qword_281062070, 255, type metadata accessor for WalletMessageUpdater, &protocol conformance descriptor for WalletMessageUpdater);
    *&v19 = v6;
    type metadata accessor for ManagedOrderImporter();
    v13 = swift_allocObject();

    *(v13 + 312) = 0xD000000000000018;
    *(v13 + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v25, v13 + 232);
    sub_226AC484C(&v22, v13 + 272);
    v14 = MEMORY[0x277CC7238];
    *(v13 + 16) = v12;
    *(v13 + 24) = v14;
    *(v13 + 96) = &type metadata for WidgetRefresher;
    *(v13 + 104) = v4;
    sub_226AC484C(&v19, v13 + 112);
    a2 = v13;
    *(v13 + 32) = v9;
    v15 = MEMORY[0x277CC79A8];
    *(v13 + 56) = v7;
    *(v13 + 64) = v15;
    v16 = v30[0];
    *(v13 + 168) = v29;
    *(v13 + 184) = v16;
    v17 = v30[2];
    *(v13 + 200) = v30[1];
    *(v13 + 216) = v17;
    *(v13 + 152) = v28;
  }

  *(v3 + 24) = a2;
  return v3;
}

unint64_t sub_226CA4544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_226D6D52C();
  v4 = *(v3 - 8);
  v79 = v3;
  v80 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v74[-v8];
  sub_226D6AF5C();
  v10 = sub_226D6AF3C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_226D70840;
  *(v11 + 56) = sub_226AE59B4(0, &qword_27D7A6370, 0x277CBE448);
  *(v11 + 64) = sub_226CA93D4();
  *(v11 + 32) = a1;
  v12 = a1;
  v13 = sub_226D6E91C();
  [v10 setPredicate_];

  [v10 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71840;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 32) = 0x616D656863536B63;
  *(v14 + 40) = 0xEF6E6F6973726556;
  *(v14 + 88) = v15;
  *(v14 + 56) = v15;
  *(v14 + 64) = 0xD000000000000014;
  *(v14 + 72) = 0x8000000226D86940;
  v16 = sub_226D6E5CC();

  [v10 setPropertiesToFetch_];

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v17 = sub_226D6E07C();
  __swift_project_value_buffer(v17, qword_28105F5C0);
  v18 = v12;
  v19 = sub_226D6E05C();
  v20 = sub_226D6E9EC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v77 = v10;
    v22 = v21;
    v23 = v6;
    v24 = v9;
    v25 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v25 = v18;
    v26 = v18;
    _os_log_impl(&dword_226AB4000, v19, v20, "Fetching metadata for dropbox order %@", v22, 0xCu);
    sub_226AC47B0(v25, &qword_27D7A5FB0, &qword_226D70870);
    v27 = v25;
    v9 = v24;
    v6 = v23;
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    v10 = v77;
    MEMORY[0x22AA8BEE0](v22, -1, -1);
  }

  result = sub_226D6EBBC();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_23:

    v65 = v18;
    v66 = sub_226D6E05C();
    v67 = sub_226D6E9CC();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      *(v68 + 4) = v65;
      *v69 = v65;
      v70 = v65;
      _os_log_impl(&dword_226AB4000, v66, v67, "Dropbox order %@ not found", v68, 0xCu);
      sub_226AC47B0(v69, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v69, -1, -1);
      MEMORY[0x22AA8BEE0](v68, -1, -1);
    }

    goto LABEL_26;
  }

  v63 = result;
  v64 = sub_226D6EDFC();
  result = v63;
  if (!v64)
  {
    goto LABEL_23;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v29 = *(result + 32);
  }

  v30 = v29;

  v31 = [v30 ckSchemaVersion];
  if (v31 == 1)
  {
    v32 = [v30 credentialIdentifier];
    if (v32)
    {
      v33 = v32;
      sub_226D6D4FC();

      v34 = v79;
      (*(v80 + 16))(v6, v9, v79);
      v35 = v18;
      v36 = sub_226D6E05C();
      v37 = sub_226D6E9EC();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v76 = v39;
        v77 = swift_slowAlloc();
        v81 = v77;
        *v38 = 138412546;
        *(v38 + 4) = v35;
        *v39 = v35;
        *(v38 + 12) = 2080;
        sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v75 = v37;
        v40 = v35;
        v41 = sub_226D6F1CC();
        v43 = v42;
        (*(v80 + 8))(v6, v34);
        v44 = sub_226AC4530(v41, v43, &v81);

        *(v38 + 14) = v44;
        _os_log_impl(&dword_226AB4000, v36, v75, "Dropbox order %@ requires credential %s", v38, 0x16u);
        v45 = v76;
        sub_226AC47B0(v76, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v45, -1, -1);
        v46 = v77;
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
        MEMORY[0x22AA8BEE0](v38, -1, -1);
      }

      else
      {

        (*(v80 + 8))(v6, v34);
      }

      v62 = v78;
      (*(v80 + 32))(v78, v9, v34);
      return (*(v80 + 56))(v62, 0, 1, v34);
    }

    v59 = v18;
    v49 = sub_226D6E05C();
    v60 = sub_226D6E9CC();

    if (!os_log_type_enabled(v49, v60))
    {
      goto LABEL_19;
    }

    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412290;
    *(v51 + 4) = v59;
    *v52 = v59;
    v61 = v59;
    v54 = "Dropbox order %@ without credential identifier is invalid";
    v55 = v60;
    v56 = v49;
    v57 = v51;
    v58 = 12;
    goto LABEL_18;
  }

  v47 = v31;
  v48 = v18;
  v49 = sub_226D6E05C();
  v50 = sub_226D6E9CC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *v51 = 138412546;
    *(v51 + 4) = v48;
    *v52 = v48;
    *(v51 + 12) = 512;
    *(v51 + 14) = v47;
    v53 = v48;
    v54 = "Dropbox order %@ with CloudKit schema version %hd not supported";
    v55 = v50;
    v56 = v49;
    v57 = v51;
    v58 = 16;
LABEL_18:
    _os_log_impl(&dword_226AB4000, v56, v55, v54, v57, v58);
    sub_226AC47B0(v52, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v52, -1, -1);
    MEMORY[0x22AA8BEE0](v51, -1, -1);
  }

LABEL_19:

LABEL_26:
  v71 = v79;
  v72 = *(v80 + 56);
  v73 = v78;

  return v72(v73, 1, 1, v71);
}

id sub_226CA4F9C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18) + 48);
  v7 = sub_226D6D52C();
  (*(*(v7 - 8) + 16))(a3, a2, v7);
  *(a3 + v6) = v5;
  return v5;
}

void sub_226CA5038(uint64_t a1, void (*a2)(void, void), void *a3)
{
  v390 = a3;
  v403 = a2;
  v406 = a1;
  v408[6] = *MEMORY[0x277D85DE8];
  v344 = sub_226D67C7C();
  v343 = *(v344 - 8);
  MEMORY[0x28223BE20](v344);
  v342 = &v333 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v347 = &v333 - v5;
  v358 = sub_226D6B34C();
  v346 = *(v358 - 8);
  MEMORY[0x28223BE20](v358);
  v357 = &v333 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = sub_226D6CBBC();
  v380 = *(v381 - 8);
  MEMORY[0x28223BE20](v381);
  v379 = &v333 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v378 = &v333 - v9;
  v388 = sub_226D6CBCC();
  v385 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v387 = (&v333 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v386 = &v333 - v12;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  MEMORY[0x28223BE20](v338);
  v337 = (&v333 - v13);
  v14 = type metadata accessor for OrderNotificationCenter.Continuation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v336 = &v333 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult(0);
  MEMORY[0x28223BE20](updated);
  v340 = (&v333 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v355 = (&v333 - v18);
  v356 = sub_226D6D4AC();
  v351 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v354 = &v333 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v361 = &v333 - v21;
  MEMORY[0x28223BE20](v22);
  v349 = &v333 - v23;
  v360 = sub_226D67CEC();
  v365 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v359 = &v333 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = sub_226D6B49C();
  v366 = *(v367 - 8);
  MEMORY[0x28223BE20](v367);
  v345 = &v333 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v335 = &v333 - v27;
  MEMORY[0x28223BE20](v28);
  v341 = &v333 - v29;
  MEMORY[0x28223BE20](v30);
  v353 = &v333 - v31;
  MEMORY[0x28223BE20](v32);
  v350 = &v333 - v33;
  MEMORY[0x28223BE20](v34);
  v348 = &v333 - v35;
  MEMORY[0x28223BE20](v36);
  v368 = &v333 - v37;
  v364 = sub_226D6D1AC();
  v363 = *(v364 - 8);
  MEMORY[0x28223BE20](v364);
  v362 = &v333 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v375 = sub_226D6E23C();
  v374 = *(v375 - 8);
  MEMORY[0x28223BE20](v375);
  v373 = &v333 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = sub_226D6B3BC();
  v369 = *(v370 - 8);
  MEMORY[0x28223BE20](v370);
  v352 = &v333 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v372 = &v333 - v42;
  MEMORY[0x28223BE20](v43);
  v371 = &v333 - v44;
  v377 = sub_226D6912C();
  v376 = *(v377 - 8);
  MEMORY[0x28223BE20](v377);
  v382 = &v333 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v384 = &v333 - v47;
  v392 = sub_226D6C3BC();
  v393 = *(v392 - 8);
  MEMORY[0x28223BE20](v392);
  v391 = &v333 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AF8, &qword_226D7A9F8);
  MEMORY[0x28223BE20](v49 - 8);
  v397 = (&v333 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v51);
  v396 = (&v333 - v52);
  MEMORY[0x28223BE20](v53);
  v395 = &v333 - v54;
  v55 = sub_226D6D52C();
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v394 = &v333 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v389 = &v333 - v59;
  MEMORY[0x28223BE20](v60);
  v399 = (&v333 - v61);
  MEMORY[0x28223BE20](v62);
  v405 = (&v333 - v63);
  MEMORY[0x28223BE20](v64);
  v66 = &v333 - v65;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6110, &qword_226D70B18);
  v68 = v67 - 8;
  MEMORY[0x28223BE20](v67);
  v70 = &v333 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v71);
  v74 = &v333 - v73;
  v76 = (v56 + 16);
  v75 = *(v56 + 16);
  v75(&v333 - v73, v406, v55, v72);
  v77 = v403;
  *&v74[*(v68 + 56)] = v403;
  v401 = v74;
  sub_226AC40E8(v74, v70, &qword_27D7A6110, &qword_226D70B18);
  v78 = v66;
  v79 = *&v70[*(v68 + 56)];
  v406 = v56;
  v407 = v55;
  (*(v56 + 32))(v66, v70, v55);
  v80 = qword_28105F5B8;
  v81 = v77;
  if (v80 != -1)
  {
    swift_once();
  }

  v82 = sub_226D6E07C();
  v83 = __swift_project_value_buffer(v82, qword_28105F5C0);
  (v75)(v405, v78, v407);
  v84 = v79;
  v85 = sub_226D6E05C();
  v86 = v78;
  v87 = sub_226D6E9EC();

  v88 = os_log_type_enabled(v85, v87);
  v89 = v76;
  v90 = v75;
  v404 = v86;
  v398 = v84;
  if (v88)
  {
    v91 = swift_slowAlloc();
    v383 = v83;
    v92 = v91;
    v333 = swift_slowAlloc();
    v334 = swift_slowAlloc();
    v408[0] = v334;
    *v92 = 136315394;
    sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v93 = v84;
    v94 = v405;
    v95 = v75;
    v96 = v407;
    v97 = v89;
    v98 = sub_226D6F1CC();
    v99 = v96;
    v101 = v100;
    v403 = *(v406 + 8);
    v403(v94, v99);
    v102 = sub_226AC4530(v98, v101, v408);
    v90 = v95;
    v89 = v97;

    *(v92 + 4) = v102;
    *(v92 + 12) = 2112;
    *(v92 + 14) = v93;
    v103 = v333;
    *v333 = v93;
    v104 = v93;
    _os_log_impl(&dword_226AB4000, v85, v87, "Retrieving credential %s for dropbox order %@", v92, 0x16u);
    sub_226AC47B0(v103, &qword_27D7A5FB0, &qword_226D70870);
    v86 = v404;
    MEMORY[0x22AA8BEE0](v103, -1, -1);
    v105 = v334;
    __swift_destroy_boxed_opaque_existential_0Tm(v334);
    MEMORY[0x22AA8BEE0](v105, -1, -1);
    v106 = v92;
    v83 = v383;
    MEMORY[0x22AA8BEE0](v106, -1, -1);
  }

  else
  {

    v403 = *(v406 + 8);
    v403(v405, v407);
  }

  v108 = v399;
  v107 = v400;
  v109 = v396;
  v110 = v397;
  sub_226D6C74C();
  if (v107)
  {
    v111 = v394;
    v90(v394, v86, v407);
    v112 = v107;
    v113 = sub_226D6E05C();
    v114 = sub_226D6E9CC();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v405 = v107;
      v116 = v115;
      v117 = swift_slowAlloc();
      v402 = swift_slowAlloc();
      v408[0] = v402;
      *v116 = 136315394;
      sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v118 = v407;
      v119 = sub_226D6F1CC();
      v121 = v120;
      v122 = v111;
      v123 = v403;
      v403(v122, v118);
      v124 = sub_226AC4530(v119, v121, v408);

      *(v116 + 4) = v124;
      *(v116 + 12) = 2112;
      v125 = v405;
      v126 = v405;
      v127 = _swift_stdlib_bridgeErrorToNSError();
      *(v116 + 14) = v127;
      *v117 = v127;
      _os_log_impl(&dword_226AB4000, v113, v114, "Failed to retrieve credential %s with error: %@", v116, 0x16u);
      sub_226AC47B0(v117, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v117, -1, -1);
      v128 = v402;
      __swift_destroy_boxed_opaque_existential_0Tm(v402);
      MEMORY[0x22AA8BEE0](v128, -1, -1);
      MEMORY[0x22AA8BEE0](v116, -1, -1);

      v123(v404, v118);
    }

    else
    {

      v146 = v407;
      v147 = v403;
      v403(v111, v407);
      v147(v86, v146);
    }

LABEL_17:
    sub_226AC47B0(v401, &qword_27D7A6110, &qword_226D70B18);
    return;
  }

  v129 = v109;
  v130 = v395;
  sub_226CA92DC(v129, v395);
  sub_226AC40E8(v130, v110, &qword_27D7A8AF8, &qword_226D7A9F8);
  v131 = v393;
  v132 = v392;
  if ((*(v393 + 48))(v110, 1, v392) == 1)
  {
    sub_226AC47B0(v110, &qword_27D7A8AF8, &qword_226D7A9F8);
    v133 = v389;
    v90(v389, v86, v407);
    v134 = sub_226D6E05C();
    v135 = sub_226D6E9CC();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      v405 = 0;
      v137 = v136;
      v138 = swift_slowAlloc();
      v408[0] = v138;
      *v137 = 136315138;
      sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v139 = v407;
      v140 = sub_226D6F1CC();
      v142 = v141;
      v143 = v133;
      v144 = v403;
      v403(v143, v139);
      v145 = sub_226AC4530(v140, v142, v408);

      *(v137 + 4) = v145;
      _os_log_impl(&dword_226AB4000, v134, v135, "Credential %s not found", v137, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v138);
      MEMORY[0x22AA8BEE0](v138, -1, -1);
      MEMORY[0x22AA8BEE0](v137, -1, -1);

      sub_226AC47B0(v395, &qword_27D7A8AF8, &qword_226D7A9F8);
      v144(v404, v139);
    }

    else
    {

      v155 = v407;
      v156 = v403;
      v403(v133, v407);
      sub_226AC47B0(v395, &qword_27D7A8AF8, &qword_226D7A9F8);
      v156(v86, v155);
    }

    goto LABEL_17;
  }

  v405 = v89;
  (*(v131 + 32))(v391, v110, v132);
  v148 = v398;
  v149 = sub_226D6E05C();
  v150 = sub_226D6E9EC();

  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    v400 = v90;
    v152 = v151;
    v153 = swift_slowAlloc();
    *v152 = 138412290;
    *(v152 + 4) = v148;
    *v153 = v148;
    v154 = v148;
    _os_log_impl(&dword_226AB4000, v149, v150, "Fetching dropbox order %@", v152, 0xCu);
    sub_226AC47B0(v153, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v153, -1, -1);
    v90 = v400;
    MEMORY[0x22AA8BEE0](v152, -1, -1);
  }

  sub_226D6AF5C();
  v157 = sub_226D6AF4C();
  v158 = v148;
  v400 = v157;
  v159 = sub_226D6E05C();
  v160 = sub_226D6E9EC();

  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    v162 = v83;
    v163 = swift_slowAlloc();
    *v161 = 138412290;
    *(v161 + 4) = v158;
    *v163 = v158;
    v164 = v158;
    _os_log_impl(&dword_226AB4000, v159, v160, "Validating dropbox order %@", v161, 0xCu);
    sub_226AC47B0(v163, &qword_27D7A5FB0, &qword_226D70870);
    v165 = v163;
    v83 = v162;
    MEMORY[0x22AA8BEE0](v165, -1, -1);
    MEMORY[0x22AA8BEE0](v161, -1, -1);
  }

  v166 = v382;
  sub_226D690FC();
  (*(v376 + 32))(v384, v166, v377);
  v90(v108, v404, v407);
  v167 = v158;
  v383 = v83;
  v168 = sub_226D6E05C();
  v169 = sub_226D6E9EC();

  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    v171 = swift_slowAlloc();
    v399 = v171;
    v405 = swift_slowAlloc();
    v408[0] = v405;
    *v170 = 138412546;
    *(v170 + 4) = v167;
    *v171 = v167;
    *(v170 + 12) = 2080;
    sub_226CA9294(&qword_27D7A6648, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v172 = v407;
    v173 = v108;
    v174 = v167;
    v175 = sub_226D6F1CC();
    v177 = v176;
    v403(v173, v172);
    v178 = sub_226AC4530(v175, v177, v408);

    *(v170 + 14) = v178;
    _os_log_impl(&dword_226AB4000, v168, v169, "Decrypting dropbox order %@ using credential %s", v170, 0x16u);
    v179 = v399;
    sub_226AC47B0(v399, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v179, -1, -1);
    v180 = v405;
    __swift_destroy_boxed_opaque_existential_0Tm(v405);
    MEMORY[0x22AA8BEE0](v180, -1, -1);
    MEMORY[0x22AA8BEE0](v170, -1, -1);
  }

  else
  {

    v403(v108, v407);
  }

  v181 = v372;
  v182 = v373;
  sub_226D6C3AC();
  v183 = sub_226D6910C();
  v398 = v184;
  v399 = v183;
  (*(v374 + 8))(v182, v375);
  (*(v369 + 32))(v371, v181, v370);
  v185 = v167;
  v186 = sub_226D6E05C();
  v187 = sub_226D6E9EC();

  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *v188 = 138412290;
    *(v188 + 4) = v185;
    *v189 = v185;
    v190 = v185;
    _os_log_impl(&dword_226AB4000, v186, v187, "Opening dropbox order %@", v188, 0xCu);
    sub_226AC47B0(v189, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v189, -1, -1);
    MEMORY[0x22AA8BEE0](v188, -1, -1);
  }

  sub_226D6727C();
  v191 = [objc_opt_self() defaultManager];
  v192 = [v191 temporaryDirectory];

  v193 = v362;
  sub_226D6D14C();

  sub_226D6827C();
  v408[3] = sub_226D6920C();
  v408[4] = MEMORY[0x277CC77F0];
  __swift_allocate_boxed_opaque_existential_1(v408);
  sub_226D691FC();
  v194 = sub_226D6724C();
  (*(v363 + 8))(v193, v364);
  __swift_destroy_boxed_opaque_existential_0Tm(v408);

  v195 = v359;
  v396 = v194;
  sub_226D6726C();
  v196 = v368;
  sub_226D67C4C();
  v197 = *(v365 + 8);
  v365 += 8;
  v385 = v197;
  v197(v195, v360);
  v198 = v366;
  v199 = *(v366 + 16);
  v200 = v348;
  v201 = v367;
  v394 = (v366 + 16);
  v389 = v199;
  (v199)(v348, v196, v367);
  v202 = v185;
  v203 = sub_226D6E05C();
  v204 = sub_226D6E9EC();

  v205 = os_log_type_enabled(v203, v204);
  v386 = v202;
  v405 = 0;
  if (v205)
  {
    v206 = swift_slowAlloc();
    LODWORD(v388) = v204;
    v207 = v206;
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v408[0] = v209;
    *v207 = 138412546;
    *(v207 + 4) = v202;
    *v208 = v202;
    *(v207 + 12) = 2080;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v210 = v202;
    v211 = sub_226D6F1CC();
    v213 = v212;
    v397 = *(v198 + 8);
    v397(v200, v201);
    v214 = sub_226AC4530(v211, v213, v408);

    *(v207 + 14) = v214;
    _os_log_impl(&dword_226AB4000, v203, v388, "Dropbox order %@ is order %s", v207, 0x16u);
    sub_226AC47B0(v208, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v208, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v209);
    MEMORY[0x22AA8BEE0](v209, -1, -1);
    MEMORY[0x22AA8BEE0](v207, -1, -1);
  }

  else
  {

    v397 = *(v198 + 8);
    v397(v200, v201);
  }

  v215 = v201;
  v216 = v354;
  v217 = v349;
  sub_226D6D46C();
  v218 = sub_226D6911C();
  v219 = v351;
  v220 = *(v351 + 8);
  v221 = v356;
  v388 = v351 + 8;
  v387 = v220;
  v220(v217, v356);
  v222 = v353;
  v223 = v350;
  LODWORD(v382) = v218;
  if (v218)
  {
    (v389)(v350, v368, v215);
    v224 = sub_226D6E05C();
    v225 = sub_226D6E9AC();
    if (os_log_type_enabled(v224, v225))
    {
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v408[0] = v227;
      *v226 = 136315138;
      sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v228 = sub_226D6F1CC();
      v230 = v229;
      v397(v223, v367);
      v231 = sub_226AC4530(v228, v230, v408);
      v215 = v367;

      *(v226 + 4) = v231;
      _os_log_impl(&dword_226AB4000, v224, v225, "Enabling import notifications for order %s", v226, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v227);
      v232 = v227;
      v222 = v353;
      MEMORY[0x22AA8BEE0](v232, -1, -1);
      v233 = v226;
      v216 = v354;
      MEMORY[0x22AA8BEE0](v233, -1, -1);
    }

    else
    {

      v397(v223, v215);
    }
  }

  v234 = v359;
  sub_226D6726C();
  v235 = v361;
  sub_226D67CDC();
  v385(v234, v360);
  (v389)(v222, v368, v215);
  (*(v219 + 16))(v216, v235, v221);
  v236 = sub_226D6E05C();
  v237 = sub_226D6E9EC();
  if (os_log_type_enabled(v236, v237))
  {
    v238 = v216;
    v239 = swift_slowAlloc();
    v240 = swift_slowAlloc();
    v408[0] = v240;
    *v239 = 136315394;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v241 = sub_226D6F1CC();
    v243 = v242;
    v397(v222, v367);
    v244 = sub_226AC4530(v241, v243, v408);

    *(v239 + 4) = v244;
    *(v239 + 12) = 2080;
    sub_226CA9294(&qword_281062B80, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v245 = sub_226D6F1CC();
    v247 = v246;
    v387(v238, v221);
    v248 = sub_226AC4530(v245, v247, v408);
    v215 = v367;

    *(v239 + 14) = v248;
    _os_log_impl(&dword_226AB4000, v236, v237, "Importing order %s updated at %s", v239, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v240, -1, -1);
    MEMORY[0x22AA8BEE0](v239, -1, -1);
  }

  else
  {

    v387(v216, v221);
    v397(v222, v215);
  }

  v249 = v390;
  v250 = v355;
  v251 = v402[3];
  v252 = v405;
  sub_226BBC0D4(v396, v399, v398, v382 & 1 | 0x100, v390, v355);
  v253 = v352;
  v405 = v252;
  if (v252)
  {

LABEL_57:
    v387(v361, v221);
    v310 = v345;
    (v389)(v345, v368, v215);
    v311 = v405;
    v312 = v405;
    v313 = sub_226D6E05C();
    v314 = sub_226D6E9CC();

    v315 = os_log_type_enabled(v313, v314);
    v316 = v400;
    if (v315)
    {
      v317 = swift_slowAlloc();
      v318 = swift_slowAlloc();
      v402 = swift_slowAlloc();
      v408[0] = v402;
      *v317 = 136315394;
      sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
      v319 = sub_226D6F1CC();
      v321 = v320;
      v322 = v310;
      v323 = v397;
      v397(v322, v367);
      v324 = sub_226AC4530(v319, v321, v408);
      v215 = v367;

      *(v317 + 4) = v324;
      *(v317 + 12) = 2112;
      v325 = v311;
      v326 = _swift_stdlib_bridgeErrorToNSError();
      *(v317 + 14) = v326;
      *v318 = v326;
      _os_log_impl(&dword_226AB4000, v313, v314, "Failed to import order %s with error: %@", v317, 0x16u);
      sub_226AC47B0(v318, &qword_27D7A5FB0, &qword_226D70870);
      v327 = v318;
      v316 = v400;
      MEMORY[0x22AA8BEE0](v327, -1, -1);
      v328 = v402;
      __swift_destroy_boxed_opaque_existential_0Tm(v402);
      MEMORY[0x22AA8BEE0](v328, -1, -1);
      MEMORY[0x22AA8BEE0](v317, -1, -1);
    }

    else
    {

      v329 = v310;
      v323 = v397;
      v397(v329, v215);
    }

    v330 = v407;
    v331 = v401;
    v332 = v403;
    swift_willThrow();
    v323(v368, v215);
    sub_226CA8C50(v396);

    sub_226B11B98(v399, v398);
    (*(v369 + 8))(v371, v370);
    (*(v376 + 8))(v384, v377);
    (*(v393 + 8))(v391, v392);
    sub_226AC47B0(v395, &qword_27D7A8AF8, &qword_226D7A9F8);
    v332(v404, v330);
    sub_226AC47B0(v331, &qword_27D7A6110, &qword_226D70B18);
    return;
  }

  v382 = v251;

  v254 = v340;
  sub_226CA934C(v250, v340, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v402 = *v254;
  v256 = v370;
  v257 = v369;
  if (EnumCaseMultiPayload <= 1)
  {
    v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
    sub_226AC47B0(v254 + *(v258 + 48), &qword_27D7A7798, &unk_226D75570);
  }

  v259 = v341;
  (v389)(v341, v368, v215);
  (*(v257 + 16))(v253, v371, v256);
  v260 = v257;
  v261 = sub_226D6E05C();
  v262 = sub_226D6E9EC();
  if (os_log_type_enabled(v261, v262))
  {
    v263 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    v408[0] = v264;
    *v263 = 136315394;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v265 = v260;
    v266 = sub_226D6F1CC();
    v267 = v259;
    v269 = v268;
    v397(v267, v367);
    v270 = sub_226AC4530(v266, v269, v408);

    *(v263 + 4) = v270;
    *(v263 + 12) = 2080;
    sub_226CA9294(&qword_27D7A8B08, 255, MEMORY[0x277CC7ED0], MEMORY[0x277CC7EE0]);
    v271 = sub_226D6F1CC();
    v273 = v272;
    v385 = *(v265 + 8);
    v385(v253, v256);
    v274 = sub_226AC4530(v271, v273, v408);

    *(v263 + 14) = v274;
    _os_log_impl(&dword_226AB4000, v261, v262, "Relating order %s to transaction %s", v263, 0x16u);
    swift_arrayDestroy();
    v275 = v264;
    v215 = v367;
    v249 = v390;
    MEMORY[0x22AA8BEE0](v275, -1, -1);
    v276 = v263;
    v250 = v355;
    MEMORY[0x22AA8BEE0](v276, -1, -1);
  }

  else
  {

    v385 = *(v260 + 8);
    v385(v253, v256);
    v397(v259, v215);
  }

  sub_226D6B38C();
  v277 = sub_226D6E36C();

  [v402 setApplePayTransactionIdentifier_];

  v278 = [v249 transactionAuthor];
  if (v278)
  {
    v279 = v278;
    v280 = sub_226D6E39C();
    v282 = v281;
  }

  else
  {
    v280 = 0;
    v282 = 0;
  }

  v283 = sub_226D6E36C();
  [v249 setTransactionAuthor_];

  v408[0] = 0;
  if (![v249 save_])
  {
    v302 = v408[0];
    v303 = sub_226D6D04C();

    v405 = v303;
    swift_willThrow();
    if (v282)
    {
      v304 = sub_226D6E36C();
    }

    else
    {
      v304 = 0;
    }

    v221 = v356;
    [v249 setTransactionAuthor_];

    sub_226BB3720(v250, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    goto LABEL_57;
  }

  v284 = qword_281061980;
  v285 = v408[0];
  if (v284 != -1)
  {
    swift_once();
  }

  v286 = v338;
  v287 = __swift_project_value_buffer(v338, qword_281064538);
  v288 = v337;
  sub_226AE532C(v287, v337);
  sub_226CA934C(v287 + *(v286 + 48), v288 + *(v286 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
  v289 = v288 + *(v286 + 48);
  v290 = v336;
  sub_226BB36BC(v289, v336);
  __swift_destroy_boxed_opaque_existential_0Tm(v288);
  sub_226BE7E54(v250, v290);
  sub_226BB3720(v290, type metadata accessor for OrderNotificationCenter.Continuation);
  v291 = v335;
  (v389)(v335, v368, v215);
  v292 = sub_226D6E05C();
  v293 = sub_226D6E9EC();
  v294 = os_log_type_enabled(v292, v293);
  v381 = v280;
  if (v294)
  {
    v295 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    v408[0] = v296;
    *v295 = 136315138;
    sub_226CA9294(&qword_27D7A6658, 255, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
    v297 = sub_226D6F1CC();
    v298 = v291;
    v300 = v299;
    v397(v298, v215);
    v301 = sub_226AC4530(v297, v300, v408);

    *(v295 + 4) = v301;
    _os_log_impl(&dword_226AB4000, v292, v293, "Imported order %s", v295, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v296);
    MEMORY[0x22AA8BEE0](v296, -1, -1);
    MEMORY[0x22AA8BEE0](v295, -1, -1);
  }

  else
  {

    v397(v291, v215);
  }

  v305 = v407;
  v306 = v401;
  v307 = v403;
  v308 = v390;
  if (v282)
  {
    v309 = sub_226D6E36C();
  }

  else
  {
    v309 = 0;
  }

  [v308 setTransactionAuthor_];

  sub_226BB3720(v355, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
  v387(v361, v356);
  [v308 reset];
  v397(v368, v215);
  sub_226CA8C50(v396);

  sub_226B11B98(v399, v398);
  v385(v371, v370);
  (*(v376 + 8))(v384, v377);
  (*(v393 + 8))(v391, v392);
  sub_226AC47B0(v395, &qword_27D7A8AF8, &qword_226D7A9F8);
  v307(v404, v305);
  sub_226AC47B0(v306, &qword_27D7A6110, &qword_226D70B18);
}

uint64_t sub_226CA8E04()
{

  return swift_deallocClassInstance();
}

id sub_226CA8E68@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_226CA943C(a2);
  *a1 = result;
  return result;
}

double sub_226CA8EC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8B10, &unk_226D7AA00) + 48);
  v7 = sub_226D6D52C();
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  *(a3 + v6) = a2;

  return result;
}

uint64_t sub_226CA8F64(uint64_t a1)
{
  v2 = sub_226D6D52C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8B10, &unk_226D7AA00);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  v14 = *(a1 + *(v7 + 56));
  (*(v3 + 16))(&v19[-v12], a1, v2, v11);
  *&v13[*(v7 + 56)] = v14;
  sub_226AC40E8(v13, v9, &qword_27D7A8B10, &unk_226D7AA00);
  v15 = *&v9[*(v7 + 56)];
  (*(v3 + 32))(v5, v9, v2);
  v20 = v5;

  sub_226C412CC(sub_226CA93B4, v19, v15);
  v17 = v16;

  sub_226AC47B0(v13, &qword_27D7A8B10, &unk_226D7AA00);
  (*(v3 + 8))(v5, v2);
  return v17;
}

uint64_t sub_226CA923C(uint64_t a1, uint64_t a2)
{
  result = sub_226CA9294(&qword_27D7A8AF0, a2, type metadata accessor for DropboxApplePayOrderMappingModel, &unk_226D7A9B4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CA9294(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_226CA92DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8AF8, &qword_226D7A9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CA934C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_226CA93D4()
{
  result = qword_27D7A8B18;
  if (!qword_27D7A8B18)
  {
    sub_226AE59B4(255, &qword_27D7A6370, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8B18);
  }

  return result;
}

id sub_226CA943C(void *a1)
{
  if ([a1 changeType])
  {
    return 0;
  }

  v3 = [a1 changedObjectID];
  v4 = [v3 entity];
  v5 = [v4 name];

  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = sub_226D6E39C();
  v8 = v7;

  if (v6 == 0xD000000000000014 && 0x8000000226D86960 == v8)
  {
  }

  else
  {
    v10 = sub_226D6F21C();

    if ((v10 & 1) == 0)
    {
LABEL_9:

      return 0;
    }
  }

  return v3;
}

uint64_t type metadata accessor for OrderWebServicePropagateUpdateTask(uint64_t a1)
{
  result = qword_27D7A8B20;
  if (!qword_27D7A8B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226CA95C4(uint64_t a1)
{
  result = type metadata accessor for TokenBucket.State(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_226CA9648(void *a1)
{
  v2 = v1;
  v21[33] = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277CBE380]);
  v5 = sub_226D6E36C();
  v6 = [v4 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86E0, &unk_226D7AAB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D72130;
  v8 = MEMORY[0x277D837D0];
  sub_226D6EE8C();
  v9 = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  v10 = sub_226D6E92C();
  *(inited + 96) = v9;
  *(inited + 72) = v10;
  sub_226D6EE8C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 0;
  v21[0] = 0xD000000000000016;
  v21[1] = 0x8000000226D85790;
  sub_226D6EE8C();
  v11 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 240) = sub_226AE59B4(0, &qword_27D7A86E8, 0x277CBEB68);
  *(inited + 216) = v11;
  sub_226B229F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AB0, &unk_226D79520);
  swift_arrayDestroy();
  v12 = sub_226D6E2AC();

  [v6 setPropertiesToUpdate_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_226D70840;
  v15 = *v2;
  v14 = v2[1];
  *(v13 + 56) = v8;
  *(v13 + 64) = sub_226B16404();
  *(v13 + 32) = v15;
  *(v13 + 40) = v14;

  v16 = sub_226D6E91C();
  [v6 setPredicate_];

  v21[0] = 0;
  v17 = [a1 executeRequest:v6 error:v21];
  if (v17)
  {
    v18 = v17;
    v19 = v21[0];
  }

  else
  {
    v20 = v21[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226CA9A00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6D4AC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for TokenBucket.State(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for OrderWebServicePropagateUpdateTask(0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CA9B28, 0, 0);
}

uint64_t sub_226CA9B28()
{
  v28 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[3];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CAA854(v2, v1, type metadata accessor for OrderWebServicePropagateUpdateTask);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27 = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_226CAA8FC(v7, type metadata accessor for OrderWebServicePropagateUpdateTask);
    v12 = sub_226AC4530(v10, v11, &v27);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v5, "Starting propagate update task for order type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226CAA8FC(v7, type metadata accessor for OrderWebServicePropagateUpdateTask);
  }

  v13 = v0[8];
  v15 = v0[5];
  v14 = v0[6];
  v16 = v0[4];
  sub_226CAA854(v0[3] + *(v0[9] + 24), v13, type metadata accessor for TokenBucket.State);
  sub_226D6D46C();
  sub_226D3DB10(v13, v14, 12, 0.00166666667);
  (*(v15 + 8))(v14, v16);
  v17 = *v13;
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v19 < 0 == v18)
  {
    *v0[8] = v19;
  }

  v20 = v0[7];
  v21 = v0[8];
  v22 = v0[3];
  v23 = sub_226D676AC();
  sub_226CAA854(v21, v20, type metadata accessor for TokenBucket.State);
  v24 = swift_task_alloc();
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = v20;
  sub_226D6EB8C();
  sub_226CAA8FC(v21, type metadata accessor for TokenBucket.State);

  sub_226CAA8FC(v20, type metadata accessor for TokenBucket.State);

  v25 = v0[1];

  return v25();
}

void sub_226CA9E84(uint64_t a1, void *a2)
{
  sub_226CA9648(a2);
  if (!v2)
  {
    MEMORY[0x28223BE20](v3);
    sub_226D6EB7C();
  }
}

void sub_226CA9F1C(void *a1, void *a2, __int16 *a3)
{
  v29[1] = *MEMORY[0x277D85DE8];
  updated = type metadata accessor for OrderWebServicePropagateUpdateTask(0);
  MEMORY[0x28223BE20](updated - 8);
  v9 = (v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v29 - v11;
  sub_226D67FDC();
  v13 = sub_226D67FBC();
  if (!v3)
  {
    v14 = v13;
    if (v13)
    {
      [v13 setPropagateUpdateSequenceNumber_];
      [v14 setUpdateTokenCount_];
      v15 = type metadata accessor for TokenBucket.State(0);
      sub_226AF265C(a3 + *(v15 + 20), v12);
      v16 = sub_226D6D4AC();
      v17 = *(v16 - 8);
      v18 = 0;
      if ((*(v17 + 48))(v12, 1, v16) != 1)
      {
        v18 = sub_226D6D3EC();
        (*(v17 + 8))(v12, v16);
      }

      [v14 setUpdateTokenRefillDate_];

      v29[0] = 0;
      if ([a2 save_])
      {
        v19 = v29[0];
      }

      else
      {
        v28 = v29[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v20 = sub_226D6E07C();
      __swift_project_value_buffer(v20, qword_28105F5C0);
      sub_226CAA854(a1, v9, type metadata accessor for OrderWebServicePropagateUpdateTask);
      v21 = sub_226D6E05C();
      v22 = sub_226D6E9AC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29[0] = v24;
        *v23 = 136315138;
        v25 = *v9;
        v26 = v9[1];

        sub_226CAA8FC(v9, type metadata accessor for OrderWebServicePropagateUpdateTask);
        v27 = sub_226AC4530(v25, v26, v29);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_226AB4000, v21, v22, "Order type %s doesn't exist", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        MEMORY[0x22AA8BEE0](v24, -1, -1);
        MEMORY[0x22AA8BEE0](v23, -1, -1);
      }

      else
      {

        sub_226CAA8FC(v9, type metadata accessor for OrderWebServicePropagateUpdateTask);
      }
    }
  }
}

double sub_226CAA2FC@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226CAA350()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;
  v4 = (v3 + v2);
  v5 = *v0;
  v6 = v0[1];
  *v4 = v5;
  v4[1] = v6;
  swift_storeEnumTagMultiPayload();

  v7 = sub_226B1FBC0(v3);
  swift_setDeallocating();
  sub_226CAA8FC(v4, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_226CAA470@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_226D6D4AC();
  v12 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PKDisableRateLimiting())
  {
    v8 = *(v12 + 56);

    return v8(a2, 1, 1, v5);
  }

  else
  {
    v10 = *(a1 + 24);
    sub_226D6D46C();
    sub_226D3D740((v2 + v10), a2);
    return (*(v12 + 8))(v7, v5);
  }
}

uint64_t sub_226CAA5B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226CA9A00(a1);
}

unint64_t sub_226CAA64C()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

uint64_t sub_226CAA6CC(uint64_t a1)
{
  result = sub_226CAA80C(&qword_27D7A8928, type metadata accessor for OrderWebServicePropagateUpdateTask, &unk_226D7AA80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CAA7B4(uint64_t a1)
{
  result = sub_226CAA80C(&qword_27D7A8B30, type metadata accessor for OrderWebServicePropagateUpdateTask, &unk_226D7AA34);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CAA80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CAA854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CAA8FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CAA96C()
{
  sub_226D69F6C();
  v0 = sub_226D69F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_226D72B90;
  sub_226B2A4F4();
  *(v1 + 32) = sub_226D6E91C();
  *(v1 + 40) = sub_226D6E91C();
  *(v1 + 48) = sub_226D6E91C();
  *(v1 + 56) = sub_226D6E91C();
  v2 = sub_226D6E5CC();

  v3 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v0 setPredicate_];
  v4 = sub_226D6EBBC();

  return v4;
}

uint64_t type metadata accessor for OrderWebServiceRegisterTask(uint64_t a1)
{
  result = qword_27D7A8B38;
  if (!qword_27D7A8B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CAAB88(uint64_t a1)
{
  sub_226D6D1AC();
  if (v1 <= 0x3F)
  {
    sub_226B20350(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226CAAC38()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000023, 0x8000000226D869D0);
  v2 = type metadata accessor for OrderWebServiceRegisterTask(0);
  MEMORY[0x22AA8A510](*(v1 + v2[6]), *(v1 + v2[6] + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + v2[7]), *(v1 + v2[7] + 8));
  MEMORY[0x22AA8A510](0xD000000000000013, 0x8000000226D85820);
  MEMORY[0x22AA8A510](*(v1 + v2[5]), *(v1 + v2[5] + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226CAD0D4(&qword_27D7A7018, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226CAADC0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6B00C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = type metadata accessor for OrderWebServiceRegisterTask(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAAEB0, 0, 0);
}

uint64_t sub_226CAAEB0()
{
  v27 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CAD034(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v24 = v5;
    v8 = v0[6];
    v20 = v0[4];
    v21 = v0[5];
    buf = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *buf = 136315138;

    sub_226D6AFFC();
    sub_226CAD0D4(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    (*(v21 + 8))(v8, v20);
    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
    v12 = sub_226AC4530(v9, v11, &v26);

    *(buf + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v24, "Attempting to establish order registration %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
  }

  v13 = v0[3];
  v14 = sub_226C0B798(v13);
  v0[9] = v14;
  v15 = swift_task_alloc();
  v0[10] = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v25 = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v16 = swift_task_alloc();
  v0[11] = v16;
  v17 = sub_226D6BA4C();
  *v16 = v0;
  v16[1] = sub_226CAB20C;
  v18 = v0[2];

  return v25(v18, &unk_226D7AC20, v15, v17);
}

uint64_t sub_226CAB20C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226CAB3A0;
  }

  else
  {

    v2 = sub_226CAB328;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CAB328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CAB3A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CAB42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_226D6B7DC();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAB4F0, 0, 0);
}

uint64_t sub_226CAB4F0()
{
  v1 = v0[4];
  v2 = (v1 + *(type metadata accessor for OrderWebServiceRegisterTask(0) + 36));
  v4 = *v2;
  v3 = v2[1];

  sub_226B11B44(v4, v3);
  sub_226D6B7CC();
  v9 = (*MEMORY[0x277CC7918] + MEMORY[0x277CC7918]);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_226B4BF14;
  v6 = v0[7];
  v7 = v0[2];

  return v9(v7, v6);
}

uint64_t sub_226CAB65C(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v4 = sub_226D6B00C();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for OrderWebServiceRegisterTask(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAB74C, 0, 0);
}

uint64_t sub_226CAB74C()
{
  v24 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[3];
  v3 = sub_226D6E07C();
  __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CAD034(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v22 = v5;
    v8 = v0[6];
    v18 = v0[4];
    v19 = v0[5];
    buf = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v23 = v21;
    *buf = 136315138;

    sub_226D6AFFC();
    sub_226CAD0D4(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
    v9 = sub_226D6F1CC();
    v11 = v10;
    (*(v19 + 8))(v8, v18);
    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
    v12 = sub_226AC4530(v9, v11, &v23);

    *(buf + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v22, "Successfully established order registration %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    MEMORY[0x22AA8BEE0](v21, -1, -1);
    MEMORY[0x22AA8BEE0](buf, -1, -1);
  }

  else
  {

    sub_226CAD1C8(v7, type metadata accessor for OrderWebServiceRegisterTask);
  }

  v13 = v0[3];
  v14 = sub_226D676AC();
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  sub_226D6EB7C();

  v16 = v0[1];

  return v16();
}

void sub_226CABA88(void *a1, void *a2)
{
  v59[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for OrderWebServiceRegisterTask(0);
  MEMORY[0x28223BE20](v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6B49C();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  sub_226D6A47C();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_226D67FDC();
  v55 = v4;
  v56 = a2;
  v13 = a2 + *(v4 + 24);
  v15 = *v13;
  v14 = *(v13 + 1);
  v57 = a1;
  v16 = v58;
  v17 = sub_226D67FCC();
  if (v16)
  {

    return;
  }

  v18 = v17;
  v50 = v14;
  v51 = v15;
  v58 = v11;
  v49 = v8;
  v52 = v6;
  [v12 setOrderType_];
  v19 = [v18 orderTypeIdentifier];
  [v12 setOrderTypeIdentifier_];

  v20 = v56;
  v21 = v57;
  v22 = sub_226D6E36C();
  [v12 setOrderIdentifier_];

  sub_226D69F6C();
  v23 = sub_226D69F3C();
  v48 = v18;
  [v12 setOrderWebService_];
  v24 = sub_226D6E36C();
  [v12 setDeviceLibraryIdentifier_];

  v25 = sub_226D6E36C();
  [v12 setAuthenticationToken_];

  sub_226D6751C();

  v26 = v58;
  sub_226D6B45C();
  v27 = sub_226D6745C();
  v28 = v21;
  v51 = v12;
  v30 = v54 + 8;
  v29 = *(v54 + 8);
  v29(v26, v52);
  if (!v27)
  {
    v58 = v23;
    if (qword_28105F5B8 == -1)
    {
LABEL_7:
      v32 = sub_226D6E07C();
      __swift_project_value_buffer(v32, qword_28105F5C0);
      v33 = v53;
      sub_226CAD034(v20, v53);
      v34 = sub_226D6E05C();
      v35 = sub_226D6E9AC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v59[0] = v56;
        *v36 = 136315138;
        v37 = v34;
        v54 = v30;

        LODWORD(v55) = v35;
        v38 = v49;
        sub_226D6B45C();
        sub_226CAD0D4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v39 = v52;
        v40 = sub_226D6F1CC();
        v42 = v41;
        v29(v38, v39);
        sub_226CAD1C8(v33, type metadata accessor for OrderWebServiceRegisterTask);
        v43 = sub_226AC4530(v40, v42, v59);

        *(v36 + 4) = v43;
        _os_log_impl(&dword_226AB4000, v37, v55, "Order %s doesn't exist", v36, 0xCu);
        v44 = v56;
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        MEMORY[0x22AA8BEE0](v44, -1, -1);
        MEMORY[0x22AA8BEE0](v36, -1, -1);
      }

      else
      {

        sub_226CAD1C8(v33, type metadata accessor for OrderWebServiceRegisterTask);
      }

      v28 = v57;
      v23 = v58;
      goto LABEL_11;
    }

LABEL_15:
    swift_once();
    goto LABEL_7;
  }

  v31 = [v27 updateSequenceNumber];
  if (__OFADD__(v31, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  [v27 setUpdateSequenceNumber_];
  [v27 setRequestAttemptCount_];
  [v27 setLastRequestAttemptDate_];
  [v27 setOrderRegistration_];

LABEL_11:
  v59[0] = 0;
  if ([v28 save_])
  {
    v45 = v59[0];
  }

  else
  {
    v46 = v59[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226CAC154(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6B00C();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for OrderWebServiceRegisterTask(0);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAC248, 0, 0);
}

uint64_t sub_226CAC248()
{
  v39 = v0;
  v1 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v3 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v3;
  v4 = sub_226C778C0();
  v5 = sub_226C6E1E0(v1);
  sub_226BA21B0(v4, v5);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F5C0);
  sub_226CAD034(v7, v6);
  v10 = v8;
  v11 = sub_226D6E05C();
  v12 = sub_226D6E9CC();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 112);
  if (!v13)
  {

    sub_226CAD1C8(v14, type metadata accessor for OrderWebServiceRegisterTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v36 = v12;
  log = v11;
  v15 = *(v0 + 96);
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  v34 = *(v0 + 56);
  v16 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v38 = v35;
  *v16 = 136315394;

  sub_226D6AFFC();
  sub_226CAD0D4(&qword_27D7A8B68, MEMORY[0x277CC7DD8], MEMORY[0x277CC7DE0]);
  v17 = sub_226D6F1CC();
  v19 = v18;
  (*(v32 + 8))(v15, v31);
  sub_226CAD1C8(v14, type metadata accessor for OrderWebServiceRegisterTask);
  v20 = sub_226AC4530(v17, v19, &v38);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2112;
  v21 = v34;
  v22 = _swift_stdlib_bridgeErrorToNSError();
  *(v16 + 14) = v22;
  *v33 = v22;
  _os_log_impl(&dword_226AB4000, log, v36, "Failed to establish order registration %s with error: %@", v16, 0x16u);
  sub_226B17298(v33);
  MEMORY[0x22AA8BEE0](v33, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v35);
  MEMORY[0x22AA8BEE0](v35, -1, -1);
  MEMORY[0x22AA8BEE0](v16, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v23 = *(v0 + 72);
    v24 = *(v0 + 56);
    v25 = sub_226D676AC();
    v26 = swift_task_alloc();
    v26[2] = v23;
    v26[3] = v25;
    v26[4] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v27 = *(v0 + 64);
    v28 = *(v0 + 56);

    sub_226C6EB80(v28, *(v0 + 40), *(v0 + 48), v27 + 136);
  }

LABEL_8:

  v29 = *(v0 + 8);

  return v29();
}

void sub_226CAC6D0(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v51 = a3;
  v49 = a4;
  v55[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OrderWebServiceRegisterTask(0);
  MEMORY[0x28223BE20](v7);
  v52 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B49C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  sub_226D6751C();
  v50 = a1;

  sub_226D6B45C();
  v16 = v53;
  v17 = sub_226D6745C();
  v53 = v16;
  if (v16)
  {
    (*(v10 + 8))(v15, v9);
    return;
  }

  v18 = v17;
  v19 = v50;
  v20 = v51;
  v45 = v12;
  v21 = v52;
  v22 = *(v10 + 8);
  v22(v15, v9);
  if (!v18)
  {
    v51 = v9;
    v54 = 0;
    v9 = v19;
    if (qword_28105F5B8 == -1)
    {
LABEL_8:
      v29 = sub_226D6E07C();
      __swift_project_value_buffer(v29, qword_28105F5C0);
      v30 = v21;
      sub_226CAD034(v9, v21);
      v31 = sub_226D6E05C();
      v32 = sub_226D6E9AC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v55[0] = v50;
        *v33 = 136315138;
        v34 = v32;

        v35 = v45;
        sub_226D6B45C();
        sub_226CAD0D4(&qword_27D7A6658, MEMORY[0x277CC7F28], MEMORY[0x277CC7F38]);
        v36 = v22;
        v37 = v51;
        v38 = sub_226D6F1CC();
        v40 = v39;
        v36(v35, v37);
        sub_226CAD1C8(v52, type metadata accessor for OrderWebServiceRegisterTask);
        v41 = sub_226AC4530(v38, v40, v55);

        *(v33 + 4) = v41;
        _os_log_impl(&dword_226AB4000, v31, v34, "Order %s doesn't exist", v33, 0xCu);
        v42 = v50;
        __swift_destroy_boxed_opaque_existential_0Tm(v50);
        MEMORY[0x22AA8BEE0](v42, -1, -1);
        MEMORY[0x22AA8BEE0](v33, -1, -1);
      }

      else
      {

        sub_226CAD1C8(v30, type metadata accessor for OrderWebServiceRegisterTask);
      }

      v27 = 0;
      v28 = v49;
      v18 = v54;
      goto LABEL_13;
    }

LABEL_15:
    swift_once();
    goto LABEL_8;
  }

  v21 = [v18 orderWebService];
  sub_226C6EAE0(v20, v21);

  v23 = [v18 requestAttemptCount];
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  [v18 setRequestAttemptCount_];
  v24 = v46;
  sub_226D6D46C();
  v25 = sub_226D6D3EC();
  (*(v47 + 8))(v24, v48);
  [v18 setLastRequestAttemptDate_];

  v55[0] = 0;
  if (![v54 save_])
  {
    v43 = v55[0];
    v44 = sub_226D6D04C();

    v53 = v44;
    swift_willThrow();

    return;
  }

  v26 = v55[0];
  v27 = [v18 requestAttemptCount];

  v28 = v49;
LABEL_13:
  *v28 = v27;
  *(v28 + 8) = v18 == 0;
}

uint64_t sub_226CACC9C()
{

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226CACD2C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  v4 = sub_226B1FBC0(v3);
  swift_setDeallocating();
  sub_226CAD1C8(v3 + v2, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_226CACECC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  *(a1 + 8) = sub_226CAD0D4(&qword_27D7A8B48, type metadata accessor for OrderWebServiceRegisterTask, &unk_226D7AB8C);
  result = sub_226CAD0D4(a4, type metadata accessor for OrderWebServiceRegisterTask, a5);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226CACFDC(uint64_t a1)
{
  result = sub_226CAD0D4(&qword_27D7A8B60, type metadata accessor for OrderWebServiceRegisterTask, &unk_226D7AB2C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CAD034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceRegisterTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CAD0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CAD11C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226CAB42C(a1, v5, v4);
}

uint64_t sub_226CAD1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_226CAD27C()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_226D6EDFC())
  {
    if (sub_226D6EDFC())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x22AA8AFD0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_226D6EDFC();
LABEL_13:
      if (v3)
      {
        sub_226CBD494(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_226CAD354()
{
  __swift_project_boxed_opaque_existential_1((v0 + 112), *(v0 + 136));
  sub_226D6BAAC();
  v1 = sub_226D676AC();

  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_226CBED50;
  *(v3 + 24) = v2;
  v8[4] = sub_226B2A194;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_226CAD254;
  v8[3] = &block_descriptor_198;
  v4 = _Block_copy(v8);
  v5 = v1;

  [v5 performBlockAndWait_];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226CAD510()
{
  v1 = v0[2];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_226CBEF1C;

    return sub_226CAE190();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_226CBEF20;

    return sub_226CAFB00();
  }
}

uint64_t sub_226CAD670()
{
  v1 = v0[2];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[3] = v2;
    *v2 = v0;
    v2[1] = sub_226CAD7B0;

    return sub_226CAE4F0();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_226B6507C;

    return sub_226CB04E0();
  }
}

uint64_t sub_226CAD7B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226CAD8A4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + *(*v1 + 144));
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 0xD00000000000001FLL;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      if (v3 == 1)
      {
        v9 = "com.apple.financed.orders.tasks";
        v6 = 0xD000000000000025;
      }

      else
      {
        v9 = "ed.bankconnect.reboot";
        v6 = 0xD000000000000024;
      }
    }

    else
    {
      v9 = "com.apple.springboard";
    }

    v10 = sub_226AC4530(v6, v9 | 0x8000000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Registering for pending tasks activity with identifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *v11;
  v14 = *(*v11 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v3;
  *(v15 + 32) = sub_226CBE4B4;
  *(v15 + 40) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_226CBEF24;
  *(v16 + 24) = v15;
  v19[4] = sub_226CBEEEC;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_226CAD254;
  v19[3] = &block_descriptor_183;
  v17 = _Block_copy(v19);
  swift_retain_n();

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226CADBA4(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + *(*v1 + 144));
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = 0xD00000000000001FLL;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    if (v3)
    {
      if (v3 == 1)
      {
        v9 = "com.apple.financed.orders.tasks";
        v6 = 0xD000000000000025;
      }

      else
      {
        v9 = "ed.bankconnect.reboot";
        v6 = 0xD000000000000024;
      }
    }

    else
    {
      v9 = "com.apple.springboard";
    }

    v10 = sub_226AC4530(v6, v9 | 0x8000000000000000, v19);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_226AB4000, v4, v5, "Registering for pending tasks activity with identifier %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v11 = __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *v11;
  v14 = *(*v11 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v3;
  *(v15 + 32) = sub_226CBE224;
  *(v15 + 40) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_226CBE25C;
  *(v16 + 24) = v15;
  v19[4] = sub_226CBEEEC;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_226CAD254;
  v19[3] = &block_descriptor_132;
  v17 = _Block_copy(v19);
  swift_retain_n();

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_226CADEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Running pending tasks activity", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    v12 = sub_226D6E79C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v8;

    sub_226B60364(0, 0, v6, a3, v13);
  }

  return result;
}

uint64_t sub_226CAE070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226CAE190();
}

uint64_t sub_226CAE100()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AD827C;

  return sub_226CAE4F0();
}

uint64_t sub_226CAE1B0(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(*v2 + 160);
  v1[3] = v3;
  if (*(v2 + v3))
  {
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226AB4000, v4, v5, "Performing pending tasks already, skipping", v6, 2u);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    v7 = v1[1];

    return v7();
  }

  else
  {
    *(v2 + v3) = 1;
    v9 = swift_task_alloc();
    v1[4] = v9;
    *v9 = v1;
    v9[1] = sub_226CAE348;

    return sub_226CAE850();
  }
}

uint64_t sub_226CAE348()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CAE458, v1, 0);
}

uint64_t sub_226CAE458()
{
  *(v0[2] + v0[3]) = 0;
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_226CBEEDC;

  return sub_226CAFB00();
}

uint64_t sub_226CAE510(uint64_t a1)
{
  v2 = v1[2];
  v3 = *(*v2 + 160);
  v1[3] = v3;
  if (*(v2 + v3))
  {
    v4 = sub_226D6E05C();
    v5 = sub_226D6E9BC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226AB4000, v4, v5, "Performing pending tasks already, skipping", v6, 2u);
      MEMORY[0x22AA8BEE0](v6, -1, -1);
    }

    v7 = v1[1];

    return v7();
  }

  else
  {
    *(v2 + v3) = 1;
    v9 = swift_task_alloc();
    v1[4] = v9;
    *v9 = v1;
    v9[1] = sub_226CAE6A8;

    return sub_226CAF148();
  }
}

uint64_t sub_226CAE6A8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CAE7B8, v1, 0);
}

uint64_t sub_226CAE7B8()
{
  *(v0[2] + v0[3]) = 0;
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_226AD4F38;

  return sub_226CB04E0();
}

uint64_t sub_226CAE850()
{
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAE91C, v0, 0);
}

uint64_t sub_226CAE91C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(*v2 + 136);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "Creating transaction for pending tasks activity", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  sub_226D6E40C();
  *(v1 + 64) = os_transaction_create();

  *(v1 + 144) = 0;
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Creating power assertion for pending tasks activity", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v10 = sub_226D6E36C();
  v11 = sub_226D6E36C();
  v12 = IOPMAssertionCreateWithDescription(v10, v11, 0, 0, 0, 60.0, 0, (v1 + 144));

  if (v12)
  {
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v13, v14, "Failed to create power assertion for pending tasks activity", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    *(v1 + 144) = 0;
  }

  v17 = *(v1 + 48);
  v16 = *(v1 + 56);
  v18 = *(v1 + 40);
  v19 = *(v18 + 152);
  sub_226AE532C(v18 + 160, (v16 + 8));
  v20 = *(v17 + 40);
  v21 = sub_226D6E07C();
  (*(*(v21 - 8) + 16))(&v16[v20], v2 + v3, v21);
  *v16 = v19;

  v22 = sub_226D6E05C();
  v23 = sub_226D6E9EC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_226AB4000, v22, v23, "Starting pending tasks activity", v24, 2u);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
  }

  v25 = *(v1 + 40);

  v26 = *(*v25 + 152);
  *(v1 + 72) = v26;
  v27 = (v25 + v26);
  *(v1 + 80) = *v27;
  *(v1 + 88) = v27[1];
  *(v1 + 96) = v27[2];

  return MEMORY[0x2822009F8](sub_226CAECE4, 0, 0);
}

uint64_t sub_226CAECE4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BF0, &qword_226D7AE10);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_226CAEE38;

  return MEMORY[0x282200600](v0 + 2, v5);
}

uint64_t sub_226CAEE38()
{

  return MEMORY[0x2822009F8](sub_226CAEFA0, 0, 0);
}

uint64_t sub_226CAEFA0()
{
  v1 = *(v0 + 40);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 128) = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_226CAF03C, v1, 0);
}

uint64_t sub_226CAF03C()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = (v5 + *(v0 + 72));
  sub_226AC47B0(*(v0 + 56), &qword_27D7A8BE8, &qword_226D7AE08);
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v1;

  sub_226CAFA40(v5, (v0 + 144));
  sub_226CB2D3C(v5, v4, "Releasing transaction for pending tasks activity");
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226CAF148()
{
  v1[5] = v0;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAF214, v0, 0);
}

uint64_t sub_226CAF214(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(*v2 + 136);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9AC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "Creating transaction for pending tasks activity", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  sub_226D6E40C();
  *(v1 + 64) = os_transaction_create();

  *(v1 + 144) = 0;
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Creating power assertion for pending tasks activity", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v10 = sub_226D6E36C();
  v11 = sub_226D6E36C();
  v12 = IOPMAssertionCreateWithDescription(v10, v11, 0, 0, 0, 60.0, 0, (v1 + 144));

  if (v12)
  {
    v13 = sub_226D6E05C();
    v14 = sub_226D6E9CC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_226AB4000, v13, v14, "Failed to create power assertion for pending tasks activity", v15, 2u);
      MEMORY[0x22AA8BEE0](v15, -1, -1);
    }

    *(v1 + 144) = 0;
  }

  v17 = *(v1 + 48);
  v16 = *(v1 + 56);
  v18 = *(v1 + 40);
  v19 = *(v18 + 152);
  sub_226AE532C(v18 + 160, (v16 + 8));
  v20 = *(v17 + 40);
  v21 = sub_226D6E07C();
  (*(*(v21 - 8) + 16))(&v16[v20], v2 + v3, v21);
  *v16 = v19;

  v22 = sub_226D6E05C();
  v23 = sub_226D6E9EC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_226AB4000, v22, v23, "Starting pending tasks activity", v24, 2u);
    MEMORY[0x22AA8BEE0](v24, -1, -1);
  }

  v25 = *(v1 + 40);

  v26 = *(*v25 + 152);
  *(v1 + 72) = v26;
  v27 = (v25 + v26);
  *(v1 + 80) = *v27;
  *(v1 + 88) = v27[1];
  *(v1 + 96) = v27[2];

  return MEMORY[0x2822009F8](sub_226CAF5DC, 0, 0);
}

uint64_t sub_226CAF5DC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC8, &qword_226D7AD60);
  v6 = swift_task_alloc();
  v0[13] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_226CAF730;

  return MEMORY[0x282200600](v0 + 2, v5);
}

uint64_t sub_226CAF730()
{

  return MEMORY[0x2822009F8](sub_226CAF898, 0, 0);
}

uint64_t sub_226CAF898()
{
  v1 = *(v0 + 40);
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 128) = *(v0 + 24);

  return MEMORY[0x2822009F8](sub_226CAF934, v1, 0);
}

uint64_t sub_226CAF934()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = (v5 + *(v0 + 72));
  sub_226AC47B0(*(v0 + 56), &qword_27D7A8BC0, &unk_226D7AD50);
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v1;

  sub_226CAFA40(v5, (v0 + 144));
  sub_226CB2D3C(v5, v4, "Releasing transaction for pending tasks activity");
  swift_unknownObjectRelease();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226CAFA40(uint64_t a1, IOPMAssertionID *a2)
{
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Releasing power assertion for pending tasks activity", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *a2;

  return IOPMAssertionRelease(v6);
}

uint64_t sub_226CAFB00()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CAFB9C, v0, 0);
}

uint64_t sub_226CAFB9C()
{
  v1 = v0[2];
  v2 = *(*v1 + 168);
  v0[4] = v2;
  *(v1 + v2) = 1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v0[5] = v4;
  v5 = *(v1 + v4);
  v0[6] = v5;
  if (v5)
  {
    v0[7] = *(v3 + 136);

    v6 = sub_226D6E05C();
    v7 = sub_226D6E9BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Awaiting concurrent pending tasks scheduling", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v10 = sub_226CAFE58;
  }

  else
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_226D6E79C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = sub_226AC4194(&qword_281061838, &unk_27D7A8C10, &qword_226D775A8, &unk_226D763A8);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v14;
    v15[4] = v12;
    swift_retain_n();
    v16 = sub_226B60364(0, 0, v11, &unk_226D7AE48, v15);
    v0[11] = v16;
    *(v12 + v4) = v16;

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v10 = sub_226CB03D0;
  }

  v9[1] = v10;

  return MEMORY[0x282200460]();
}

uint64_t sub_226CAFE58()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CAFF68, v1, 0);
}

uint64_t sub_226CAFF68(uint64_t a1)
{
  v2 = v1[2];
  if (*(v2 + v1[4]) == 1)
  {
    v3 = *(v2 + v1[5]);
    v1[9] = v3;
    if (v3)
    {

      v4 = sub_226D6E05C();
      v5 = sub_226D6E9BC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "Awaiting another concurrent pending tasks scheduling", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = swift_task_alloc();
      v1[10] = v7;
      *v7 = v1;
      v8 = sub_226CB02C0;
    }

    else
    {

      v14 = v1[5];
      v16 = v1[2];
      v15 = v1[3];
      v17 = sub_226D6E79C();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      v18 = sub_226AC4194(&qword_281061838, &unk_27D7A8C10, &qword_226D775A8, &unk_226D763A8);
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = v18;
      v19[4] = v16;
      swift_retain_n();
      v20 = sub_226B60364(0, 0, v15, &unk_226D7AE48, v19);
      v1[11] = v20;
      *(v16 + v14) = v20;

      v7 = swift_task_alloc();
      v1[12] = v7;
      *v7 = v1;
      v8 = sub_226CB03D0;
    }

    v7[1] = v8;

    return MEMORY[0x282200460]();
  }

  else
  {
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Pending tasks scheduling no longer needed, skipping", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    else
    {
    }

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_226CB02C0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CBEF28, v1, 0);
}

uint64_t sub_226CB03D0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CBEEE0, v1, 0);
}

uint64_t sub_226CB04E0()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB057C, v0, 0);
}

uint64_t sub_226CB057C()
{
  v1 = v0[2];
  v2 = *(*v1 + 168);
  v0[4] = v2;
  *(v1 + v2) = 1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  v0[5] = v4;
  v5 = *(v1 + v4);
  v0[6] = v5;
  if (v5)
  {
    v0[7] = *(v3 + 136);

    v6 = sub_226D6E05C();
    v7 = sub_226D6E9BC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Awaiting concurrent pending tasks scheduling", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }

    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v10 = sub_226CB0838;
  }

  else
  {
    v12 = v0[2];
    v11 = v0[3];
    v13 = sub_226D6E79C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    v14 = sub_226AC4194(qword_281061840, &qword_27D7A8BD8, &qword_226D7AD98, &unk_226D763A8);
    v15 = swift_allocObject();
    v15[2] = v12;
    v15[3] = v14;
    v15[4] = v12;
    swift_retain_n();
    v16 = sub_226B60364(0, 0, v11, &unk_226D7ADA8, v15);
    v0[11] = v16;
    *(v12 + v4) = v16;

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v10 = sub_226CB0EC8;
  }

  v9[1] = v10;

  return MEMORY[0x282200460]();
}

uint64_t sub_226CB0838()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CB0948, v1, 0);
}

uint64_t sub_226CB0948(uint64_t a1)
{
  v2 = v1[2];
  if (*(v2 + v1[4]) == 1)
  {
    v3 = *(v2 + v1[5]);
    v1[9] = v3;
    if (v3)
    {

      v4 = sub_226D6E05C();
      v5 = sub_226D6E9BC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_226AB4000, v4, v5, "Awaiting another concurrent pending tasks scheduling", v6, 2u);
        MEMORY[0x22AA8BEE0](v6, -1, -1);
      }

      v7 = swift_task_alloc();
      v1[10] = v7;
      *v7 = v1;
      v8 = sub_226CB0CA0;
    }

    else
    {

      v14 = v1[5];
      v16 = v1[2];
      v15 = v1[3];
      v17 = sub_226D6E79C();
      (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
      v18 = sub_226AC4194(qword_281061840, &qword_27D7A8BD8, &qword_226D7AD98, &unk_226D763A8);
      v19 = swift_allocObject();
      v19[2] = v16;
      v19[3] = v18;
      v19[4] = v16;
      swift_retain_n();
      v20 = sub_226B60364(0, 0, v15, &unk_226D7ADA8, v19);
      v1[11] = v20;
      *(v16 + v14) = v20;

      v7 = swift_task_alloc();
      v1[12] = v7;
      *v7 = v1;
      v8 = sub_226CB0EC8;
    }

    v7[1] = v8;

    return MEMORY[0x282200460]();
  }

  else
  {
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9BC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Pending tasks scheduling no longer needed, skipping", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    else
    {
    }

    v12 = v1[1];

    return v12();
  }
}

uint64_t sub_226CB0CA0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CB0DB0, v1, 0);
}

uint64_t sub_226CB0DB0(uint64_t a1)
{
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Pending tasks scheduled already, skipping", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_226CB0EC8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CB0FD8, v1, 0);
}

uint64_t sub_226CB0FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CB1060()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 168)) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226CB110C;

  return sub_226CB1474();
}

uint64_t sub_226CB110C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CBEF2C, v1, 0);
}

uint64_t sub_226CB123C()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 168)) = 0;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_226CB12E8;

  return sub_226CB1FFC();
}

uint64_t sub_226CB12E8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_226CB13F8, v1, 0);
}

uint64_t sub_226CB13F8()
{
  *(*(v0 + 16) + *(**(v0 + 16) + 176)) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CB1474()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for ActivityRequest(0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v1[11] = swift_task_alloc();
  v2 = sub_226D6D4AC();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB15B4, v0, 0);
}

uint64_t sub_226CB15B4(uint64_t a1)
{
  *(v1 + 136) = *(**(v1 + 64) + 136);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Creating transaction for scheduling pending tasks", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v1 + 64);

  *(v1 + 144) = *(*v5 + 144);
  sub_226D6E40C();
  v6 = os_transaction_create();
  *(v1 + 152) = v6;

  v7 = *(*v5 + 160);
  *(v1 + 160) = v7;
  v8 = *(v5 + v7);
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9BC();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Performing pending tasks already, not scheduling now (before fetch)", v12, 2u);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    v13 = *(v1 + 64);

    sub_226CB2D3C(v13, v6, "Releasing transaction for scheduling pending tasks");
    swift_unknownObjectRelease();

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Retrieving pending tasks from source", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v1 + 168) = v17;
    *v17 = v1;
    v17[1] = sub_226CB1890;

    return sub_226C8FC00();
  }
}

uint64_t sub_226CB1890(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_226CBEF18;
  }

  else
  {
    v4[23] = a1;
    v6 = sub_226CB19CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226CB19CC()
{
  v53 = v0;
  v1 = v0[20];
  v2 = v0[8];
  v3 = sub_226CB2DFC(v0[23], &unk_27D7A8C00, &qword_226D70BE0);

  if ((*(v2 + v1) & 1) == 0)
  {
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    v13 = *(v0[8] + *(*v0[8] + 152));

    sub_226D6D46C();
    sub_226C97E78(v3, v9, v13, v12);

    v14 = *(v11 + 8);
    (v14)(v9, v10);
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_226AC47B0(v0[11], &qword_27D7A8BE0, &unk_226D718F0);
      v15 = sub_226D6E05C();
      v16 = sub_226D6E9EC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_226AB4000, v15, v16, "Cancelling any previous pending tasks activity request", v17, 2u);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
      }

      v18 = v0[18];
      v19 = v0[8];

      v20 = __swift_project_boxed_opaque_existential_1((v19 + 112), *(v19 + 136));
      LOBYTE(v19) = *(v19 + v18);
      v21 = *v20;
      v22 = *(*v20 + 16);
      v14 = swift_allocObject();
      *(v14 + 16) = v21;
      *(v14 + 24) = v19;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_226CBEEF0;
      *(v23 + 24) = v14;
      v0[6] = sub_226CBEEEC;
      v0[7] = v23;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_226CAD254;
      v0[5] = &block_descriptor_167;
      v24 = _Block_copy(v0 + 2);

      dispatch_sync(v22, v24);
      _Block_release(v24);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    v25 = v0[18];
    v51 = v14;
    v26 = v0[16];
    v27 = v0[13];
    v49 = v0[14];
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[10];
    v31 = v0[8];
    (*(v27 + 32))(v26, v0[11], v28);
    LOBYTE(v25) = *(v31 + v25);
    v32 = *(v27 + 16);
    v32(&v30[*(v29 + 20)], v26, v28);
    *v30 = v25;
    v30[*(v29 + 24)] = 5;
    v32(v49, v26, v28);
    v33 = sub_226D6E05C();
    v34 = sub_226D6E9EC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[14];
    v37 = v0[12];
    if (v35)
    {
      v38 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v38 = 136315138;
      sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v39 = sub_226D6F1CC();
      v41 = v40;
      v42 = v51;
      v51(v36, v37);
      v43 = sub_226AC4530(v39, v41, &v52);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_226AB4000, v33, v34, "Submitting pending tasks activity request for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x22AA8BEE0](v50, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {

      v42 = v51;
      v51(v36, v37);
    }

    v44 = v0[16];
    v45 = v0[12];
    v46 = v0[10];
    __swift_project_boxed_opaque_existential_1((v0[8] + 112), *(v0[8] + 136));
    sub_226B26CC0(v46);
    sub_226CBE058(v46);
    v42(v44, v45);
LABEL_14:
    v7 = v0[19];
    v8 = v0[8];
    goto LABEL_15;
  }

  v4 = sub_226D6E05C();
  v5 = sub_226D6E9BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "Performing pending tasks already, not scheduling now (after fetch)", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v7 = v0[19];
  v8 = v0[8];

LABEL_15:
  sub_226CB2D3C(v8, v7, "Releasing transaction for scheduling pending tasks");
  swift_unknownObjectRelease();

  v47 = v0[1];

  return v47();
}

uint64_t sub_226CB1FFC()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for ActivityRequest(0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v1[11] = swift_task_alloc();
  v2 = sub_226D6D4AC();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB213C, v0, 0);
}

uint64_t sub_226CB213C(uint64_t a1)
{
  *(v1 + 136) = *(**(v1 + 64) + 136);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9AC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Creating transaction for scheduling pending tasks", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = *(v1 + 64);

  *(v1 + 144) = *(*v5 + 144);
  sub_226D6E40C();
  v6 = os_transaction_create();
  *(v1 + 152) = v6;

  v7 = *(*v5 + 160);
  *(v1 + 160) = v7;
  v8 = *(v5 + v7);
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9BC();
  v11 = os_log_type_enabled(v9, v10);
  if (v8)
  {
    if (v11)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Performing pending tasks already, not scheduling now (before fetch)", v12, 2u);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
    }

    v13 = *(v1 + 64);

    sub_226CB2D3C(v13, v6, "Releasing transaction for scheduling pending tasks");
    swift_unknownObjectRelease();

    v14 = *(v1 + 8);

    return v14();
  }

  else
  {
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Retrieving pending tasks from source", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v1 + 168) = v17;
    *v17 = v1;
    v17[1] = sub_226CB2418;

    return sub_226B86C9C();
  }
}

uint64_t sub_226CB2418(uint64_t a1)
{
  v4 = *v2;
  v4[22] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_226CB2B84;
  }

  else
  {
    v4[23] = a1;
    v6 = sub_226CB2554;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_226CB2554()
{
  v53 = v0;
  v1 = v0[20];
  v2 = v0[8];
  v3 = sub_226CB2DFC(v0[23], &qword_27D7A6160, &qword_226D70BA0);

  if ((*(v2 + v1) & 1) == 0)
  {
    v9 = v0[15];
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[11];
    v13 = *(v0[8] + *(*v0[8] + 152));

    sub_226D6D46C();
    sub_226C97E78(v3, v9, v13, v12);

    v14 = *(v11 + 8);
    (v14)(v9, v10);
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_226AC47B0(v0[11], &qword_27D7A8BE0, &unk_226D718F0);
      v15 = sub_226D6E05C();
      v16 = sub_226D6E9EC();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_226AB4000, v15, v16, "Cancelling any previous pending tasks activity request", v17, 2u);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
      }

      v18 = v0[18];
      v19 = v0[8];

      v20 = __swift_project_boxed_opaque_existential_1((v19 + 112), *(v19 + 136));
      LOBYTE(v19) = *(v19 + v18);
      v21 = *v20;
      v22 = *(*v20 + 16);
      v14 = swift_allocObject();
      *(v14 + 16) = v21;
      *(v14 + 24) = v19;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_226CBE04C;
      *(v23 + 24) = v14;
      v0[6] = sub_226B2A000;
      v0[7] = v23;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_226CAD254;
      v0[5] = &block_descriptor_104;
      v24 = _Block_copy(v0 + 2);

      dispatch_sync(v22, v24);
      _Block_release(v24);
      LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    v25 = v0[18];
    v51 = v14;
    v26 = v0[16];
    v27 = v0[13];
    v49 = v0[14];
    v28 = v0[12];
    v29 = v0[9];
    v30 = v0[10];
    v31 = v0[8];
    (*(v27 + 32))(v26, v0[11], v28);
    LOBYTE(v25) = *(v31 + v25);
    v32 = *(v27 + 16);
    v32(&v30[*(v29 + 20)], v26, v28);
    *v30 = v25;
    v30[*(v29 + 24)] = 5;
    v32(v49, v26, v28);
    v33 = sub_226D6E05C();
    v34 = sub_226D6E9EC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[14];
    v37 = v0[12];
    if (v35)
    {
      v38 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v52 = v50;
      *v38 = 136315138;
      sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v39 = sub_226D6F1CC();
      v41 = v40;
      v42 = v51;
      v51(v36, v37);
      v43 = sub_226AC4530(v39, v41, &v52);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_226AB4000, v33, v34, "Submitting pending tasks activity request for %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x22AA8BEE0](v50, -1, -1);
      MEMORY[0x22AA8BEE0](v38, -1, -1);
    }

    else
    {

      v42 = v51;
      v51(v36, v37);
    }

    v44 = v0[16];
    v45 = v0[12];
    v46 = v0[10];
    __swift_project_boxed_opaque_existential_1((v0[8] + 112), *(v0[8] + 136));
    sub_226B26CC0(v46);
    sub_226CBE058(v46);
    v42(v44, v45);
LABEL_14:
    v7 = v0[19];
    v8 = v0[8];
    goto LABEL_15;
  }

  v4 = sub_226D6E05C();
  v5 = sub_226D6E9BC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_226AB4000, v4, v5, "Performing pending tasks already, not scheduling now (after fetch)", v6, 2u);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v7 = v0[19];
  v8 = v0[8];

LABEL_15:
  sub_226CB2D3C(v8, v7, "Releasing transaction for scheduling pending tasks");
  swift_unknownObjectRelease();

  v47 = v0[1];

  return v47();
}

uint64_t sub_226CB2B84()
{
  v1 = v0[22];
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[22];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to retrieve pending tasks with error %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  sub_226CB2D3C(v0[8], v0[19], "Releasing transaction for scheduling pending tasks");
  swift_unknownObjectRelease();

  v11 = v0[1];

  return v11();
}

void sub_226CB2D3C(uint64_t a1, uint64_t a2, const char *a3)
{
  oslog = sub_226D6E05C();
  v4 = sub_226D6E9AC();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, oslog, v4, a3, v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }
}

uint64_t sub_226CB2DFC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v14 = MEMORY[0x277D84F90];
    sub_226AE244C(0, v3, 0);
    v4 = v14;
    v8 = a1 + 32;
    do
    {
      sub_226AE532C(v8, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6140, &qword_226D70B40);
      swift_dynamicCast();
      v14 = v4;
      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226AE244C((v9 > 1), v10 + 1, 1);
        v4 = v14;
      }

      *(v4 + 16) = v10 + 1;
      sub_226AC484C(&v13, v4 + 40 * v10 + 32);
      v8 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_226CB2F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_226AE28BC(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8880, &qword_226D7A040);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226AE28BC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_226B24A98(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_226CB303C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_226AE2A48(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA8AFD0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_226AE2A48((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
        v16 = &off_283A6AF18;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_226AC484C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_226AE2A48((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
        v16 = &off_283A6AF18;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_226AC484C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_226CB321C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_226AE2A48(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AA8AFD0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_226AE2A48((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_226D6A26C();
        v16 = &off_283A6AF40;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_226AC484C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_226AE2A48((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_226D6A26C();
        v16 = &off_283A6AF40;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_226AC484C(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CB33D4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_226CB33F8, 0, 0);
}

uint64_t sub_226CB33F8(uint64_t a1)
{
  if (sub_226D6E82C())
  {
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 120) = v4;
    *v4 = v1;
    v4[1] = sub_226CB34C4;

    return sub_226C8FC00();
  }
}

uint64_t sub_226CB34C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_226CB3924;
  }

  else
  {
    v4 = sub_226CB35D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CB35D8()
{
  v1 = v0[13];
  v2 = sub_226CB2DFC(v0[16], &unk_27D7A8C00, &qword_226D70BE0);
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v1;
    v27 = MEMORY[0x277D84F90];
    sub_226AE248C(0, v3, 0);
    v4 = v27;
    v5 = v2 + 32;
    do
    {
      sub_226AE532C(v5, (v0 + 2));
      v7 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      swift_getAssociatedTypeWitness();
      swift_task_alloc();
      (*(v6 + 56))(v7, v6);
      swift_getAssociatedConformanceWitness();
      sub_226D6EE8C();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v9 = *(v27 + 16);
      v8 = *(v27 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_226AE248C((v8 > 1), v9 + 1, 1);
      }

      *(v27 + 16) = v9 + 1;
      v10 = v27 + 40 * v9;
      *(v10 + 64) = v30;
      *(v10 + 32) = v28;
      *(v10 + 48) = v29;
      v5 += 40;
      --v3;
    }

    while (v3);

    v1 = v26;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v11 = v0[16];
  v12 = sub_226AE4B40(v4);

  v13 = *(v1 + 24);

  v14 = sub_226CBDDD8(v13, v12);
  swift_bridgeObjectRelease_n();

  *(v1 + 24) = v14;
  v15 = *(v11 + 16);
  v0[18] = v15;
  v16 = v0[16];
  if (v15)
  {
    v0[19] = 0;
    sub_226AE532C(v16 + 32, (v0 + 7));
    v18 = v0[10];
    v17 = v0[11];
    v19 = __swift_project_boxed_opaque_existential_1(v0 + 7, v18);
    v20 = swift_task_alloc();
    v0[20] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
    *v20 = v0;
    v20[1] = sub_226CB3AA0;
    v22 = v0[13];
    v23 = v0[12];

    return sub_226C9A388(v19, v23, v22, v21, v18, v17);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_226CB3924()
{
  v1 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to retrieve pending tasks with error %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226CB3AA0()
{

  return MEMORY[0x2822009F8](sub_226CB3B9C, 0, 0);
}

uint64_t sub_226CB3B9C()
{
  v1 = v0[18];
  v2 = v0[19] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v2 == v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[19];
    v0[19] = v5 + 1;
    sub_226AE532C(v0[16] + 40 * v5 + 72, (v0 + 7));
    v7 = v0[10];
    v6 = v0[11];
    v8 = __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
    v9 = swift_task_alloc();
    v0[20] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE8, &qword_226D7AE08);
    *v9 = v0;
    v9[1] = sub_226CB3AA0;
    v11 = v0[13];
    v12 = v0[12];

    return sub_226C9A388(v8, v12, v11, v10, v7, v6);
  }
}

uint64_t sub_226CB3CF8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_226CB3D1C, 0, 0);
}

uint64_t sub_226CB3D1C(uint64_t a1)
{
  if (sub_226D6E82C())
  {
    v2 = *(v1 + 8);

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v1 + 120) = v4;
    *v4 = v1;
    v4[1] = sub_226CB3DE8;

    return sub_226B86C9C();
  }
}

uint64_t sub_226CB3DE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_226CB4248;
  }

  else
  {
    v4 = sub_226CB3EFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226CB3EFC()
{
  v1 = v0[13];
  v2 = sub_226CB2DFC(v0[16], &qword_27D7A6160, &qword_226D70BA0);
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v1;
    v27 = MEMORY[0x277D84F90];
    sub_226AE248C(0, v3, 0);
    v4 = v27;
    v5 = v2 + 32;
    do
    {
      sub_226AE532C(v5, (v0 + 2));
      v7 = v0[5];
      v6 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
      swift_getAssociatedTypeWitness();
      swift_task_alloc();
      (*(v6 + 56))(v7, v6);
      swift_getAssociatedConformanceWitness();
      sub_226D6EE8C();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      v9 = *(v27 + 16);
      v8 = *(v27 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_226AE248C((v8 > 1), v9 + 1, 1);
      }

      *(v27 + 16) = v9 + 1;
      v10 = v27 + 40 * v9;
      *(v10 + 64) = v30;
      *(v10 + 32) = v28;
      *(v10 + 48) = v29;
      v5 += 40;
      --v3;
    }

    while (v3);

    v1 = v26;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v11 = v0[16];
  v12 = sub_226AE4B40(v4);

  v13 = *(v1 + 24);

  v14 = sub_226CBDDD8(v13, v12);
  swift_bridgeObjectRelease_n();

  *(v1 + 24) = v14;
  v15 = *(v11 + 16);
  v0[18] = v15;
  v16 = v0[16];
  if (v15)
  {
    v0[19] = 0;
    sub_226AE532C(v16 + 32, (v0 + 7));
    v18 = v0[10];
    v17 = v0[11];
    v19 = __swift_project_boxed_opaque_existential_1(v0 + 7, v18);
    v20 = swift_task_alloc();
    v0[20] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
    *v20 = v0;
    v20[1] = sub_226CB43C4;
    v22 = v0[13];
    v23 = v0[12];

    return sub_226C9A388(v19, v23, v22, v21, v18, v17);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_226CB4248()
{
  v1 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 136);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to retrieve pending tasks with error %@", v7, 0xCu);
    sub_226AC47B0(v8, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_226CB43C4()
{

  return MEMORY[0x2822009F8](sub_226CB44C0, 0, 0);
}

uint64_t sub_226CB44C0()
{
  v1 = v0[18];
  v2 = v0[19] + 1;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (v2 == v1)
  {

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[19];
    v0[19] = v5 + 1;
    sub_226AE532C(v0[16] + 40 * v5 + 72, (v0 + 7));
    v7 = v0[10];
    v6 = v0[11];
    v8 = __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
    v9 = swift_task_alloc();
    v0[20] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC0, &unk_226D7AD50);
    *v9 = v0;
    v9[1] = sub_226CB43C4;
    v11 = v0[13];
    v12 = v0[12];

    return sub_226C9A388(v8, v12, v11, v10, v7, v6);
  }
}

uint64_t sub_226CB461C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 192) = a3;
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = sub_226D6D4AC();
  *(v5 + 200) = v6;
  *(v5 + 208) = *(v6 - 8);
  *(v5 + 216) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BF8, &qword_226D7AE30);
  *(v5 + 224) = v7;
  *(v5 + 232) = *(v7 - 8);
  *(v5 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB474C, 0, 0);
}

uint64_t sub_226CB474C()
{
  v1 = *(v0 + 168);
  *(v0 + 72) = xmmword_226D7AC30;
  *(v0 + 88) = MEMORY[0x277D84FA0];
  *(v0 + 96) = v1;
  *(v0 + 104) = *(v0 + 176);

  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_226CB4820;
  v3 = *(v0 + 160);

  return sub_226CB33D4(v3, v0 + 72);
}

uint64_t sub_226CB4820()
{

  return MEMORY[0x2822009F8](sub_226CB491C, 0, 0);
}

uint64_t sub_226CB491C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BF0, &qword_226D7AE10);
  sub_226D6E71C();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_226CB49F4;
  v2 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_226CB49F4()
{

  return MEMORY[0x2822009F8](sub_226CB4AF0, 0, 0);
}

uint64_t sub_226CB4AF0()
{
  if (*(v0 + 40))
  {
    *(v0 + 264) = *(v0 + 56);
    v1 = *(v0 + 64);
    *(v0 + 65) = v1;
    sub_226AC484C((v0 + 16), v0 + 120);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 120), v2);
    if (v1)
    {
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v7 = *(v0 + 200);
      v8 = v4;
      sub_226D6D46C();
      sub_226C99D50(v8, v5, v2, v3);
      (*(v6 + 8))(v5, v7);
    }

    else
    {
      sub_226C99C2C(v4, v2, v3);
    }

    v16 = swift_task_alloc();
    *(v0 + 272) = v16;
    *v16 = v0;
    v16[1] = sub_226CB4CC0;
    v17 = *(v0 + 160);

    return sub_226CB33D4(v17, v0 + 72);
  }

  else
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    v12 = *(v0 + 8);
    v13.n128_u64[0] = v9;
    v14.n128_u64[0] = v10;

    return v12(v11, v13, v14);
  }
}

uint64_t sub_226CB4CC0()
{

  return MEMORY[0x2822009F8](sub_226CB4DBC, 0, 0);
}

uint64_t sub_226CB4DBC()
{
  sub_226CBDBE8(*(v0 + 264), *(v0 + 65));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_226CB49F4;
  v2 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_226CB4E78(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 192) = a3;
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = sub_226D6D4AC();
  *(v5 + 200) = v6;
  *(v5 + 208) = *(v6 - 8);
  *(v5 + 216) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BD0, &qword_226D7AD80);
  *(v5 + 224) = v7;
  *(v5 + 232) = *(v7 - 8);
  *(v5 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB4FA8, 0, 0);
}

uint64_t sub_226CB4FA8()
{
  v1 = *(v0 + 168);
  *(v0 + 72) = xmmword_226D7AC30;
  *(v0 + 88) = MEMORY[0x277D84FA0];
  *(v0 + 96) = v1;
  *(v0 + 104) = *(v0 + 176);

  v2 = swift_task_alloc();
  *(v0 + 248) = v2;
  *v2 = v0;
  v2[1] = sub_226CB507C;
  v3 = *(v0 + 160);

  return sub_226CB3CF8(v3, v0 + 72);
}

uint64_t sub_226CB507C()
{

  return MEMORY[0x2822009F8](sub_226CB5178, 0, 0);
}

uint64_t sub_226CB5178()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BC8, &qword_226D7AD60);
  sub_226D6E71C();
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_226CB5250;
  v2 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_226CB5250()
{

  return MEMORY[0x2822009F8](sub_226CB534C, 0, 0);
}

uint64_t sub_226CB534C()
{
  if (*(v0 + 40))
  {
    *(v0 + 264) = *(v0 + 56);
    v1 = *(v0 + 64);
    *(v0 + 65) = v1;
    sub_226AC484C((v0 + 16), v0 + 120);
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 120), v2);
    if (v1)
    {
      v6 = *(v0 + 208);
      v5 = *(v0 + 216);
      v7 = *(v0 + 200);
      v8 = v4;
      sub_226D6D46C();
      sub_226C99D50(v8, v5, v2, v3);
      (*(v6 + 8))(v5, v7);
    }

    else
    {
      sub_226C99C2C(v4, v2, v3);
    }

    v16 = swift_task_alloc();
    *(v0 + 272) = v16;
    *v16 = v0;
    v16[1] = sub_226CB551C;
    v17 = *(v0 + 160);

    return sub_226CB3CF8(v17, v0 + 72);
  }

  else
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = *(v0 + 96);

    v12 = *(v0 + 8);
    v13.n128_u64[0] = v9;
    v14.n128_u64[0] = v10;

    return v12(v11, v13, v14);
  }
}

uint64_t sub_226CB551C()
{

  return MEMORY[0x2822009F8](sub_226CB5618, 0, 0);
}

uint64_t sub_226CB5618()
{
  sub_226CBDBE8(*(v0 + 264), *(v0 + 65));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 120));
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_226CB5250;
  v2 = *(v0 + 224);

  return MEMORY[0x2822002E8](v0 + 16, 0, 0, v2);
}

uint64_t sub_226CB56D4()
{
  v1 = v0;
  v2 = sub_226D6E07C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_226D6D6DC();
  MEMORY[0x28223BE20](v6 - 8);
  if (v0[34])
  {
    v7 = v0[34];
  }

  else
  {
    sub_226AE532C((v0 + 19), v26);
    __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
    v8 = sub_226D6BAAC();
    v24 = sub_226D6BFCC();
    v25 = MEMORY[0x277CC81C8];
    __swift_allocate_boxed_opaque_existential_1(&v23);
    sub_226D6BFBC();
    v21 = sub_226D67F7C();
    v22 = MEMORY[0x277CC70E0];
    __swift_allocate_boxed_opaque_existential_1(&v20);
    sub_226D67F6C();
    v19[3] = sub_226D6B5EC();
    v19[4] = MEMORY[0x277CC7F70];
    __swift_allocate_boxed_opaque_existential_1(v19);
    sub_226D6B58C();
    type metadata accessor for BankConnectWebServiceTaskSource();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &type metadata for WalletInfo;
    v9[4] = &protocol witness table for WalletInfo;
    v9[20] = sub_226B906C8;
    v9[21] = 0;
    sub_226AE532C(v19, v18);
    sub_226D6D66C();
    v10 = sub_226D6B11C();
    swift_allocObject();
    v11 = sub_226D6B10C();
    v12 = MEMORY[0x277CC7E08];
    v9[8] = v10;
    v9[9] = v12;
    v9[5] = v11;
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    sub_226AC484C(&v23, (v9 + 10));
    sub_226AC484C(&v20, (v9 + 15));
    v17 = *(v1 + 12);
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v2, qword_28105F710);
    (*(v3 + 16))(v5, v13, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BD8, &qword_226D7AD98);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    v14 = v7 + *(*v7 + 152);
    *v14 = sub_226B239BC(MEMORY[0x277D84F90]);
    *(v14 + 8) = xmmword_226D77480;
    *(v7 + *(*v7 + 160)) = 0;
    *(v7 + *(*v7 + 168)) = 0;
    *(v7 + *(*v7 + 176)) = 0;
    sub_226AE532C(v26, v7 + 112);
    *(v7 + 152) = v9;
    v24 = type metadata accessor for BankConnectWebServiceCoordinator();
    v25 = &off_28183DDB8;
    *&v23 = v1;

    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    sub_226AC484C(&v23, v7 + 160);
    *(v7 + 200) = v17;
    (*(v3 + 32))(v7 + *(*v7 + 136), v5, v2);
    v15 = v7 + *(*v7 + 144);
    *v15 = 2;
    *(v15 + 8) = 0xD00000000000001CLL;
    *(v15 + 16) = 0x8000000226D86D00;
    *(v15 + 24) = 0xD00000000000002CLL;
    *(v15 + 32) = 0x8000000226D86D20;
    *(v15 + 40) = 1;
    v1[34] = v7;
  }

  return v7;
}

uint64_t sub_226CB5B5C()
{
  if (v0[33])
  {

    sub_226D6E80C();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 26);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_226CB5C18()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB5CB4, v0, 0);
}

uint64_t sub_226CB5CB4()
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F710);
  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226AB4000, v2, v3, "Starting BankConnect web service coordinator", v4, 2u);
    MEMORY[0x22AA8BEE0](v4, -1, -1);
  }

  v5 = sub_226CB56D4();
  *(v0 + 32) = v5;

  return MEMORY[0x2822009F8](sub_226CB5DDC, v5, 0);
}

uint64_t sub_226CB5DDC(uint64_t a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  sub_226CADBA4(a1);
  v5 = sub_226D6E79C();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_226AC4194(qword_281061840, &qword_27D7A8BD8, &qword_226D7AD98, &unk_226D763A8);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v6;
  v7[4] = v2;

  sub_226B60364(0, 0, v3, &unk_226D7ADD8, v7);

  return MEMORY[0x2822009F8](sub_226CB5F20, v4, 0);
}

uint64_t sub_226CB5F20()
{
  sub_226CB5F8C();
  sub_226CB6518();

  v1 = *(v0 + 8);

  return v1();
}

void sub_226CB5F8C()
{
  v1 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_226AC4530(0xD000000000000025, 0x8000000226D7E820, v9);
    _os_log_impl(&dword_226AB4000, v3, v4, "Registering for reboot activity with identifier %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v7 = *MEMORY[0x277D86238];
  v9[4] = sub_226CBE0B4;
  v9[5] = v1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226B27F7C;
  v9[3] = &block_descriptor_107;
  v8 = _Block_copy(v9);

  xpc_activity_register("com.apple.financed.bankconnect.reboot", v7, v8);
  _Block_release(v8);
}

xpc_activity_state_t sub_226CB6170(_xpc_activity_s *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v8 = sub_226D6E07C();
    __swift_project_value_buffer(v8, qword_28105F710);
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_226AB4000, v9, v10, "Running reboot activity", v11, 2u);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    v12 = sub_226D6E79C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a2;

    sub_226B60364(0, 0, v6, &unk_226D7ADC8, v13);
  }

  return result;
}

uint64_t sub_226CB636C()
{
  v1 = sub_226CB56D4();
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_226CB63D8, v1, 0);
}

uint64_t sub_226CB63D8()
{
  v1 = v0[3];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_226CBEEE4;

    return sub_226CAE4F0();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_226CBEEE8;

    return sub_226CB04E0();
  }
}

uint64_t sub_226CB6518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F710);
  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_226AB4000, v6, v7, "Starting to observe persistent store remote change notifications", v8, 2u);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  if (*(v1 + 264))
  {

    sub_226D6E80C();
  }

  v9 = sub_226D6E79C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  *(v1 + 264) = sub_226B60364(0, 0, v4, &unk_226D7AD08, v11);
}

uint64_t sub_226CB673C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v5 = sub_226D6B70C();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = sub_226D6CD9C();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A67B8, &unk_226D71D80);
  v4[32] = swift_task_alloc();
  v7 = sub_226D6EAEC();
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CB6930, 0, 0);
}

uint64_t sub_226CB6930()
{
  *(v0 + 288) = [objc_opt_self() defaultCenter];
  *(v0 + 296) = sub_226D6EAFC();

  sub_226D6EADC();
  swift_beginAccess();
  *(v0 + 304) = *MEMORY[0x277CBE300];
  *(v0 + 328) = *MEMORY[0x277CC7FF0];
  v1 = sub_226CBDA0C(&qword_28105F440, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_226CB6A9C;
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_226CB6A9C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_226C0EB50;
  }

  else
  {
    v2 = sub_226CB6BB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CB6BCC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));

LABEL_18:

    v34 = *(v0 + 8);

    return v34();
  }

  (*(v3 + 32))(*(v0 + 248), v1, v2);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v29 = *(v0 + 272);
    v28 = *(v0 + 280);
    v30 = *(v0 + 264);
    v32 = *(v0 + 240);
    v31 = *(v0 + 248);
    v33 = *(v0 + 232);

    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v28, v30);
    goto LABEL_18;
  }

  v6 = Strong;
  v7 = sub_226D6CD8C();
  if (!v7)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_24;
  }

  v8 = v7;
  *(v0 + 144) = sub_226D6E39C();
  *(v0 + 152) = v9;
  sub_226D6EE8C();
  if (!*(v8 + 16) || (v10 = sub_226C2FE4C(v0 + 16), (v11 & 1) == 0))
  {

    sub_226AE5030(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_22;
  }

  sub_226AC4708(*(v8 + 56) + 32 * v10, v0 + 56);
  sub_226AE5030(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_22:
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

LABEL_24:
    sub_226AC47B0(v0 + 56, &unk_27D7A8BB0, &unk_226D74340);
    goto LABEL_25;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
LABEL_30:

    goto LABEL_25;
  }

  v12 = *(v0 + 328);
  v13 = *(v0 + 216);
  v14 = *(v0 + 224);
  v15 = *(v0 + 208);
  v16 = *(v0 + 168);
  v62 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v6 + 112), *(v6 + 136));
  sub_226D6BAAC();
  v17 = sub_226D6769C();

  v18 = [v17 persistentStoreCoordinator];

  v19 = [v18 persistentStores];
  sub_226AE59B4(0, &unk_28105F480, 0x277CBE4D0);
  sub_226D6E5EC();

  (*(v13 + 104))(v14, v12, v15);
  v20 = sub_226D6E5AC();

  (*(v13 + 8))(v14, v15);
  if (!v20)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    goto LABEL_30;
  }

  v21 = [v20 identifier];
  if (v21)
  {
    v22 = v21;
    v23 = sub_226D6E39C();
    v25 = v24;

    if (v62 == v23 && v16 == v25)
    {

LABEL_34:
      if (qword_28105F708 != -1)
      {
        swift_once();
      }

      v43 = sub_226D6E07C();
      __swift_project_value_buffer(v43, qword_28105F710);
      v44 = sub_226D6E05C();
      v45 = sub_226D6E9EC();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_226AB4000, v44, v45, "Received remote change notification for local persistent store", v46, 2u);
        MEMORY[0x22AA8BEE0](v46, -1, -1);
      }

      v47 = *(v0 + 192);
      v48 = *(v0 + 200);

      v49 = sub_226D6E79C();
      v50 = *(v49 - 8);
      (*(v50 + 56))(v48, 1, 1, v49);
      v51 = swift_allocObject();
      swift_weakInit();
      v52 = swift_allocObject();
      v52[2] = 0;
      v52[3] = 0;
      v52[4] = v51;
      sub_226B6F240(v48, v47);
      LODWORD(v48) = (*(v50 + 48))(v47, 1, v49);

      v53 = *(v0 + 192);
      if (v48 == 1)
      {
        sub_226AC47B0(*(v0 + 192), &unk_27D7A8BA0, &qword_226D734E0);
      }

      else
      {
        sub_226D6E78C();
        (*(v50 + 8))(v53, v49);
      }

      v54 = v52[2];
      swift_unknownObjectRetain();

      if (v54)
      {
        swift_getObjectType();
        v55 = sub_226D6E6CC();
        v57 = v56;
        swift_unknownObjectRelease();
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      sub_226AC47B0(*(v0 + 200), &unk_27D7A8BA0, &qword_226D734E0);
      v58 = swift_allocObject();
      *(v58 + 16) = &unk_226D7AD20;
      *(v58 + 24) = v52;
      if (v57 | v55)
      {
        *(v0 + 88) = 0;
        *(v0 + 96) = 0;
        *(v0 + 104) = v55;
        *(v0 + 112) = v57;
      }

      v60 = *(v0 + 240);
      v59 = *(v0 + 248);
      v61 = *(v0 + 232);
      swift_task_create();

      (*(v60 + 8))(v59, v61);
      goto LABEL_25;
    }

    v27 = sub_226D6F21C();

    if (v27)
    {
      goto LABEL_34;
    }
  }

  else
  {
  }

  v41 = *(v0 + 240);
  v40 = *(v0 + 248);
  v42 = *(v0 + 232);

  (*(v41 + 8))(v40, v42);
LABEL_25:
  v36 = sub_226CBDA0C(&qword_28105F440, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v37 = swift_task_alloc();
  *(v0 + 312) = v37;
  *v37 = v0;
  v37[1] = sub_226CB6A9C;
  v38 = *(v0 + 256);
  v39 = *(v0 + 264);

  return MEMORY[0x282200308](v38, v39, v36);
}

uint64_t sub_226CB745C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_226CB7514, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_226CB7514()
{
  v1 = sub_226CB56D4();
  *(v0 + 56) = v1;

  return MEMORY[0x2822009F8](sub_226CB7580, v1, 0);
}

uint64_t sub_226CB7580()
{
  v1 = v0[7];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_226C0EE60;

    return sub_226CAE4F0();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_226C0EFD8;

    return sub_226CB04E0();
  }
}

void sub_226CB76C0(uint64_t a1)
{
  v21 = a1;
  v2 = sub_226D6D61C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_226D6D6DC();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226D6D4AC();
  v9 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_226D6BAAC();
  v22 = sub_226D676AC();

  sub_226CBC8AC(v22);
  sub_226CBCBD4(v21, v22);
  sub_226CB84CC();
  sub_226CBD1D8();
  if (sub_226CB7B4C())
  {
    sub_226D6D46C();
    (*(v3 + 104))(v5, *MEMORY[0x277CC9810], v2);
    sub_226D6D62C();
    (*(v3 + 8))(v5, v2);
    sub_226D6D23C();
    (*(v18 + 8))(v8, v19);
    v15 = *(v9 + 8);
    v16 = v20;
    v15(v11, v20);
    sub_226CB7C98(v14);
    v15(v14, v16);
  }

  else
  {
    v17 = v22;
  }
}

uint64_t sub_226CB7B4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B90, &unk_226D71900);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v6[-v3];
  v6[47] = 1;
  v6[46] = 0;
  sub_226AE532C(v0 + 208, v6);
  sub_226D6700C();
  sub_226D66FEC();
  (*(v2 + 8))(v4, v1);
  return v6[0];
}

uint64_t sub_226CB7C98(uint64_t a1)
{
  v4 = sub_226D6D4AC();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  v10 = sub_226D6BAAC();
  v46 = &type metadata for FinanceKitCloudSyncDateProvider;
  v47 = &off_283A70C00;
  type metadata accessor for PersistentHistoryPruner();
  inited = swift_initStackObject();
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  inited[6] = &type metadata for FinanceKitCloudSyncDateProvider;
  inited[7] = &off_283A70C00;
  inited[2] = v10;
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  sub_226D676CC();
  v12 = sub_226D676BC();
  sub_226CC6678(7776000.0, v12, a1, 60);
  v14 = v13;

  if (v2)
  {
    swift_setDeallocating();

    return __swift_destroy_boxed_opaque_existential_0Tm(inited + 3);
  }

  v16 = v44;
  v43 = v14;
  if (v14)
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v17 = sub_226D6E07C();
    __swift_project_value_buffer(v17, qword_28105F710);
    v18 = v4;
    (*(v16 + 16))(v6, a1, v4);
    v19 = sub_226D6E05C();
    v20 = sub_226D6E9AC();
    if (!os_log_type_enabled(v19, v20))
    {

      (*(v16 + 8))(v6, v18);
      return v43 & 1;
    }

    v21 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v21 = 136315394;
    sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v22 = sub_226D6F1CC();
    v23 = v16;
    v25 = v24;
    (*(v23 + 8))(v6, v18);
    v26 = sub_226AC4530(v22, v25, &v48);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_226AC4530(0xD000000000000029, 0x8000000226D86BE0, &v48);
    _os_log_impl(&dword_226AB4000, v19, v20, "History pruning at date %s skipped, reason: %s", v21, 0x16u);
    v27 = v42;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v27, -1, -1);
    v28 = v21;
  }

  else
  {
    if (qword_28105F708 != -1)
    {
      swift_once();
    }

    v29 = sub_226D6E07C();
    __swift_project_value_buffer(v29, qword_28105F710);
    v30 = v9;
    v31 = v9;
    v32 = v4;
    (*(v16 + 16))(v31, a1, v4);
    v19 = sub_226D6E05C();
    v33 = v16;
    v34 = sub_226D6E9AC();
    if (!os_log_type_enabled(v19, v34))
    {

      (*(v33 + 8))(v30, v32);
      return v43 & 1;
    }

    v35 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v48 = v42;
    *v35 = 136315138;
    sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v36 = sub_226D6F1CC();
    v37 = v32;
    v39 = v38;
    (*(v33 + 8))(v30, v37);
    v40 = sub_226AC4530(v36, v39, &v48);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_226AB4000, v19, v34, "History pruning before date %s successful", v35, 0xCu);
    v41 = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x22AA8BEE0](v41, -1, -1);
    v28 = v35;
  }

  MEMORY[0x22AA8BEE0](v28, -1, -1);

  return v43 & 1;
}

void sub_226CB8218(void *a1, uint64_t (*a2)(void), const char *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  a2(0);
  v5 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v6 = sub_226D6E91C();
  [v5 setPredicate:v6];

  v7 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v20[0] = 0;
  v8 = [a1 executeRequest:v7 error:v20];
  if (v8)
  {
    v9 = v8;
    v10 = v20[0];

LABEL_8:
    v5 = v9;
    goto LABEL_9;
  }

  v11 = v20[0];
  v12 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F710);
  v14 = v12;
  v9 = sub_226D6E05C();
  v15 = sub_226D6E9CC();

  if (!os_log_type_enabled(v9, v15))
  {

    goto LABEL_8;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  *v16 = 138412290;
  v18 = v12;
  v19 = _swift_stdlib_bridgeErrorToNSError();
  *(v16 + 4) = v19;
  *v17 = v19;
  _os_log_impl(&dword_226AB4000, v9, v15, a3, v16, 0xCu);
  sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v17, -1, -1);
  MEMORY[0x22AA8BEE0](v16, -1, -1);

LABEL_9:
}

uint64_t sub_226CB84CC()
{
  v1 = v0;
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Pruning invalid transaction objects.", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  MEMORY[0x28223BE20](v6);
  sub_226D6EB7C();
  v7 = v16;
  v11 = v15;
  v12 = v14;
  v8 = __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_226AE532C((v8 + 41), &v14);
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v13[3] = &type metadata for InvalidObjectsPrunedEvent;
  v13[4] = sub_226CBB898();
  v9 = swift_allocObject();
  v13[0] = v9;
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  *(v9 + 48) = v7;
  sub_226D69AFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v14);
}

void sub_226CB87A0(void (*a1)(char *, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v96 = a1;
  v85 = a2;
  v101[1] = *MEMORY[0x277D85DE8];
  v2 = sub_226D6823C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v92 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v80 - v6;
  v99 = sub_226D6AC0C();
  v98 = sub_226D6AAFC();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v8 = swift_allocObject();
  v94 = xmmword_226D71F40;
  *(v8 + 16) = xmmword_226D71F40;
  v100 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v90 = "nator";
  *(v8 + 32) = sub_226D6E91C();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v9 = swift_allocObject();
  v88 = xmmword_226D70840;
  *(v9 + 16) = xmmword_226D70840;
  v10 = *MEMORY[0x277CC71E0];
  v87 = *(v3 + 104);
  v87(v7, v10, v2);
  v11 = sub_226D6822C();
  v12 = *(v3 + 8);
  v13 = v7;
  v93 = v2;
  v14 = v96;
  v86 = v3 + 8;
  v12(v13, v2);
  v15 = MEMORY[0x277D849A0];
  *(v9 + 56) = MEMORY[0x277D84958];
  *(v9 + 64) = v15;
  *(v9 + 32) = v11;
  v91 = "accountObject == nil";
  *(v8 + 40) = sub_226D6E91C();
  v16 = sub_226D6E5CC();
  v17 = v98;

  v18 = objc_opt_self();
  v19 = [v18 andPredicateWithSubpredicates_];

  [v17 setPredicate_];
  v20 = v97;
  v21 = sub_226D6EBBC();
  if (v20)
  {
    goto LABEL_26;
  }

  v22 = v21;
  v82 = v3 + 104;
  v97 = v18;
  v23 = v14;
  v83 = v12;
  v84 = 0;
  if (v21 >> 62)
  {
    v81 = sub_226D6EDFC();
    v24 = sub_226D6EDFC();
    v25 = v95;
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v81 = v24;
    v25 = v95;
    if (!v24)
    {
      goto LABEL_11;
    }
  }

  if (v24 < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v24; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x22AA8AFD0](i, v22);
    }

    else
    {
      v27 = *(v22 + 8 * i + 32);
    }

    v28 = v27;
    [v23 deleteObject_];
  }

LABEL_11:

  v17 = sub_226D6AAFC();
  v30 = v92;
  v29 = v93;
  v87(v92, *MEMORY[0x277CC71E8], v93);
  v31 = swift_allocObject();
  *(v31 + 16) = v94;
  v25 = v100;
  *(v31 + 32) = sub_226D6E91C();
  v32 = swift_allocObject();
  *(v32 + 16) = v88;
  v33 = sub_226D6822C();
  *(v32 + 56) = MEMORY[0x277D84958];
  *(v32 + 64) = MEMORY[0x277D849A0];
  *(v32 + 32) = v33;
  *(v31 + 40) = sub_226D6E91C();
  v34 = sub_226D6E5CC();

  v35 = [v97 andPredicateWithSubpredicates_];

  [v17 setPredicate_];
  v36 = v84;
  v37 = sub_226D6EBBC();
  if (v36)
  {
    v83(v30, v29);
    v38 = v98;
LABEL_25:

LABEL_26:
    return;
  }

  v22 = v37;
  v14 = v30;
  v12 = 0;
  v96 = v17;
  if (v37 >> 62)
  {
LABEL_22:
    v99 = sub_226D6EDFC();
    v39 = sub_226D6EDFC();
    if (!v39)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v99 = v39;
  if (!v39)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v39 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  for (j = 0; j != v39; ++j)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x22AA8AFD0](j, v22);
    }

    else
    {
      v41 = *(v22 + 8 * j + 32);
    }

    v42 = v41;
    [v23 deleteObject_];
  }

LABEL_23:

  sub_226D6845C();
  v17 = sub_226D6844C();
  v43 = swift_allocObject();
  *(v43 + 16) = v94;
  *(v43 + 32) = sub_226D6E91C();
  *(v43 + 40) = sub_226D6E91C();
  v44 = sub_226D6E5CC();

  v25 = &selRef_setSortDescriptors_;
  v45 = [v97 orPredicateWithSubpredicates_];

  [v17 setPredicate_];
  v46 = sub_226D6EBBC();
  if (v12)
  {
    v83(v14, v93);

    v38 = v96;
    goto LABEL_25;
  }

  v22 = v46;
  v84 = 0;
  if (v46 >> 62)
  {
LABEL_36:
    v90 = sub_226D6EDFC();
    v47 = sub_226D6EDFC();
    v91 = v17;
    if (!v47)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v90 = v47;
  v91 = v17;
  if (!v47)
  {
    goto LABEL_37;
  }

LABEL_29:
  if (v47 < 1)
  {
    __break(1u);
    goto LABEL_48;
  }

  for (k = 0; k != v47; ++k)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x22AA8AFD0](k, v22);
    }

    else
    {
      v49 = *(v22 + 8 * k + 32);
    }

    v50 = v49;
    [v23 deleteObject_];
  }

LABEL_37:

  sub_226D6A74C();
  v51 = sub_226D6A73C();
  v52 = swift_allocObject();
  *(v52 + 16) = v94;
  v17 = 0xD000000000000011;
  *(v52 + 32) = sub_226D6E91C();
  *(v52 + 40) = sub_226D6E91C();
  v53 = sub_226D6E5CC();

  v54 = [v97 v25[2]];

  [v51 setPredicate_];
  v55 = v84;
  v56 = sub_226D6EBBC();
  if (v55)
  {
    v83(v14, v93);

    return;
  }

  v22 = v56;
  v47 = 0;
  v89 = v51;
  if (v56 >> 62)
  {
LABEL_48:
    v97 = sub_226D6EDFC();
    v57 = sub_226D6EDFC();
    if (!v57)
    {
      goto LABEL_49;
    }

    goto LABEL_41;
  }

  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v97 = v57;
  if (!v57)
  {
    goto LABEL_49;
  }

LABEL_41:
  if (v57 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  v58 = 0;
  v17 = (v22 & 0xC000000000000001);
  do
  {
    if (v17)
    {
      v59 = MEMORY[0x22AA8AFD0](v58, v22);
    }

    else
    {
      v59 = *(v22 + 8 * v58 + 32);
    }

    v60 = v59;
    ++v58;
    [v23 deleteObject_];
  }

  while (v57 != v58);
LABEL_49:

  sub_226D6AC5C();
  v57 = sub_226D6AC4C();
  v61 = sub_226D6E91C();
  [v57 setPredicate_];

  v62 = sub_226D6EBBC();
  if (v47)
  {
    v83(v14, v93);

    return;
  }

  v22 = v62;
  if (v62 >> 62)
  {
LABEL_60:
    v100 = sub_226D6EDFC();
    v63 = sub_226D6EDFC();
    if (!v63)
    {
      goto LABEL_61;
    }

    goto LABEL_53;
  }

  v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v100 = v63;
  if (!v63)
  {
    goto LABEL_61;
  }

LABEL_53:
  if (v63 < 1)
  {
    __break(1u);
LABEL_68:
    swift_once();
    goto LABEL_63;
  }

  for (m = 0; m != v63; ++m)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x22AA8AFD0](m, v22);
    }

    else
    {
      v65 = *(v22 + 8 * m + 32);
    }

    v66 = v65;
    [v23 deleteObject_];
  }

LABEL_61:

  v101[0] = 0;
  if (![v23 save_])
  {
    v79 = v101[0];
    sub_226D6D04C();

    swift_willThrow();
    v83(v92, v93);
    return;
  }

  v67 = qword_28105F708;
  v68 = v101[0];
  v17 = v92;
  v23 = v83;
  if (v67 != -1)
  {
    goto LABEL_68;
  }

LABEL_63:
  v69 = sub_226D6E07C();
  __swift_project_value_buffer(v69, qword_28105F710);
  v70 = sub_226D6E05C();
  v71 = sub_226D6E9EC();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v85;
  v74 = v81;
  if (v72)
  {
    v75 = swift_slowAlloc();
    *v75 = 134218752;
    *(v75 + 4) = v74;
    *(v75 + 12) = 2048;
    *(v75 + 14) = v90;
    *(v75 + 22) = 2048;
    *(v75 + 24) = v97;
    *(v75 + 32) = 2048;
    *(v75 + 34) = v100;
    _os_log_impl(&dword_226AB4000, v70, v71, "Successfully pruned: %ld invalid PassKit transaction(s) and %ld dangling public transaction(s). and %ld dangling action(s). and %ld dangling insight(s).", v75, 0x2Au);
    v76 = v75;
    v23 = v83;
    MEMORY[0x22AA8BEE0](v76, -1, -1);
  }

  v23(v17, v93);
  v77 = v99;
  *v73 = v74;
  v73[1] = v77;
  v78 = v97;
  v73[2] = v90;
  v73[3] = v78;
  v73[4] = v100;
}

void sub_226CB950C(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_226D6E36C();
  v5 = [v3 initWithEntityName_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = sub_226D6D3EC();
  *(v6 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v6 + 64) = sub_226C19454();
  *(v6 + 32) = v7;
  v8 = sub_226D6E91C();
  [v5 setPredicate:v8];

  v9 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v22[0] = 0;
  v10 = [a2 executeRequest:v9 error:v22];
  if (v10)
  {
    v11 = v10;
    v12 = v22[0];

LABEL_8:
    v5 = v11;
    goto LABEL_9;
  }

  v13 = v22[0];
  v14 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F710);
  v16 = v14;
  v11 = sub_226D6E05C();
  v17 = sub_226D6E9CC();

  if (!os_log_type_enabled(v11, v17))
  {

    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 138412290;
  v20 = v14;
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 4) = v21;
  *v19 = v21;
  _os_log_impl(&dword_226AB4000, v11, v17, "Failed to prune debug entities with error: %@", v18, 0xCu);
  sub_226AC47B0(v19, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v19, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

LABEL_9:
}

void sub_226CB9850(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v4 = sub_226D6E36C();
  v5 = [v3 initWithEntityName_];

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = sub_226D6D3EC();
  *(v6 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v6 + 64) = sub_226C19454();
  *(v6 + 32) = v7;
  v8 = sub_226D6E91C();
  [v5 setPredicate:v8];

  v9 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v22[0] = 0;
  v10 = [a2 executeRequest:v9 error:v22];
  if (v10)
  {
    v11 = v10;
    v12 = v22[0];

LABEL_8:
    v5 = v11;
    goto LABEL_9;
  }

  v13 = v22[0];
  v14 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F710);
  v16 = v14;
  v11 = sub_226D6E05C();
  v17 = sub_226D6E9CC();

  if (!os_log_type_enabled(v11, v17))
  {

    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  *v18 = 138412290;
  v20 = v14;
  v21 = _swift_stdlib_bridgeErrorToNSError();
  *(v18 + 4) = v21;
  *v19 = v21;
  _os_log_impl(&dword_226AB4000, v11, v17, "Failed to prune debug map lookup requests with error: %@", v18, 0xCu);
  sub_226AC47B0(v19, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v19, -1, -1);
  MEMORY[0x22AA8BEE0](v18, -1, -1);

LABEL_9:
}

void sub_226CB9B8C(void *a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  sub_226D6842C();
  v3 = sub_226D6840C();
  v4 = MEMORY[0x22AA84480]();
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D71F20;
  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = sub_226D6E36C();
  v8 = [v6 initWithKey:v7 ascending:0];

  *(v5 + 32) = v8;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v9 = sub_226D6E5CC();

  [v3 setSortDescriptors_];

  v10 = a1;
  v11 = sub_226D6EBBC();
  if (v1)
  {

    return;
  }

  v40 = v3;
  v12 = sub_226CBD56C(v11);

  v13 = 0;
  v14 = v12 + 8;
  v15 = 1 << *(v12 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12[8];
  v18 = (v15 + 63) >> 6;
  v44 = v10;
  v42 = v12;
  v38 = v18;
  v39 = v12 + 8;
LABEL_6:
  if (v17)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = v14[v19];
    ++v13;
    if (v17)
    {
      v13 = v19;
LABEL_11:
      v20 = *(v12[7] + ((v13 << 9) | (8 * __clz(__rbit64(v17)))));
      v46[0] = v20;
      if (v20 >> 62)
      {
        v21 = sub_226D6EDFC();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 &= v17 - 1;
      if (v21 <= 1)
      {
        goto LABEL_6;
      }

      sub_226CAD27C();
      v23 = v22;
      v24 = v46[0];
      if (!(v46[0] >> 62))
      {
        v25 = *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        v41 = v17;
        if (v25)
        {
          goto LABEL_16;
        }

LABEL_35:

        v17 = v41;
        v12 = v42;
        v18 = v38;
        v14 = v39;
        goto LABEL_6;
      }

      v25 = sub_226D6EDFC();
      v41 = v17;
      if (!v25)
      {
        goto LABEL_35;
      }

LABEL_16:
      v26 = 0;
      v43 = v25;
      while (2)
      {
        if ((v46[0] & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x22AA8AFD0](v26, v24);
        }

        else
        {
          if (v26 >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v27 = *(v46[0] + v26 + 4);
        }

        v28 = v27;
        if (__OFADD__(v26++, 1))
        {
          goto LABEL_41;
        }

        sub_226D6794C();
        v30 = [v28 objectID];
        v31 = sub_226D6792C();

        v45 = v28;
        if (v31 >> 62)
        {
          v32 = sub_226D6EDFC();
          if (v32)
          {
LABEL_24:
            if (v32 < 1)
            {
              goto LABEL_43;
            }

            for (i = 0; i != v32; ++i)
            {
              if ((v31 & 0xC000000000000001) != 0)
              {
                v34 = MEMORY[0x22AA8AFD0](i, v31);
              }

              else
              {
                v34 = *(v31 + 8 * i + 32);
              }

              v35 = v34;
              [v34 setInstitutionObject_];
            }
          }
        }

        else
        {
          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
            goto LABEL_24;
          }
        }

        v10 = v44;
        [v44 deleteObject_];

        v24 = v46[0];
        if (v26 == v43)
        {
          goto LABEL_35;
        }

        continue;
      }
    }
  }

  v46[0] = 0;
  if ([v10 save_])
  {
    v36 = v46[0];
  }

  else
  {
    v37 = v46[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

uint64_t sub_226CBA070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, BOOL *a5@<X8>)
{
  v98 = a4;
  v99 = a3;
  *&v101 = a2;
  v96 = a5;
  v100 = sub_226D67C0C();
  v95 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D52C();
  v104 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v82 - v12;
  v14 = sub_226D69FCC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v82 - v19;
  v21 = v102;
  result = sub_226CBE5E0(a1);
  if (v21)
  {
    return result;
  }

  v103 = v13;
  v87 = v10;
  v88 = v20;
  v97 = v17;
  v89 = v7;
  v90 = v14;
  v94 = v15;
  v23 = result;
  v24 = sub_226CBE88C(result, a1);
  v85 = v23;
  v102 = v8;
  MEMORY[0x28223BE20](v24);
  v25 = v101;
  v82[-2] = v101;
  v82[-1] = a1;
  v27 = v26;

  v28 = sub_226B906B0(sub_226B9062C, &v82[-4], v27);
  v84 = v27;
  v83 = 0;
  v82[1] = a1;
  if (v28 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_226D6EDFC())
  {

    if (i > 0)
    {
      __swift_project_boxed_opaque_existential_1(v99, *(v99 + 24));
      v30 = sub_226D6B7EC();
      v99 = *(v30 + 16);
      if (v99)
      {
        v31 = 0;
        v32 = v94;
        v86 = (v94 + 8);
        v92 = (v94 + 32);
        v93 = v94 + 16;
        v33 = MEMORY[0x277D84F90];
        v34 = v90;
        v35 = v88;
        while (v31 < *(v30 + 16))
        {
          v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v37 = v30;
          v38 = *(v32 + 72);
          (*(v32 + 16))(v35, v30 + v36 + v38 * v31, v34);
          v25 = v34;
          if (sub_226D69FBC())
          {
            v91 = *v92;
            v91(v97, v35, v34);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v33;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_226AE2590(0, *(v33 + 16) + 1, 1);
              v34 = v90;
              v33 = v105;
            }

            v25 = *(v33 + 16);
            v40 = *(v33 + 24);
            if (v25 >= v40 >> 1)
            {
              sub_226AE2590((v40 > 1), v25 + 1, 1);
              v34 = v90;
              v33 = v105;
            }

            *(v33 + 16) = v25 + 1;
            v91((v33 + v36 + v25 * v38), v97, v34);
            v32 = v94;
          }

          else
          {
            (*v86)(v35, v34);
          }

          ++v31;
          v30 = v37;
          if (v99 == v31)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

      v33 = MEMORY[0x277D84F90];
LABEL_17:

      v41 = *(v33 + 16);

      v25 = v101;
      if (!v41)
      {

        *v96 = 0;
        return result;
      }
    }

    __swift_project_boxed_opaque_existential_1(v25, *(v25 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68C8, &qword_226D74270);
    v42 = sub_226D6B7FC();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v45 = swift_allocObject();
    v101 = xmmword_226D70840;
    *(v45 + 16) = xmmword_226D70840;
    (*(v43 + 104))(v45 + v44, *MEMORY[0x277CC8008], v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C20, &qword_226D72160);
    v46 = sub_226D6B81C();
    v47 = *(v46 - 8);
    v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = v101;
    (*(v47 + 104))(v49 + v48, *MEMORY[0x277CC8028], v46);
    v50 = v83;
    v51 = sub_226D6C13C();

    if (v50)
    {
    }

    __swift_project_boxed_opaque_existential_1(v25, *(v25 + 24));
    v52 = sub_226D6C14C();
    v83 = 0;
    v53 = v52;

    v105 = v51;
    sub_226CEE14C(v53);
    v54 = v105;
    v55 = *(v105 + 16);
    v56 = MEMORY[0x277D84F90];
    if (v55)
    {
      v105 = MEMORY[0x277D84F90];
      sub_226AE20D4(0, v55, 0);
      v57 = v105;
      v58 = v95 + 16;
      *&v101 = *(v95 + 16);
      v59 = &v54[(*(v95 + 80) + 32) & ~*(v95 + 80)];
      v99 = *(v95 + 72);
      v60 = (v95 + 8);
      v97 = v54;
      v98 = v104 + 32;
      v61 = v87;
      v62 = v89;
      do
      {
        v63 = v100;
        v64 = v62;
        v65 = v58;
        (v101)();
        sub_226D67BDC();
        (*v60)(v64, v63);
        v105 = v57;
        v67 = *(v57 + 16);
        v66 = *(v57 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_226AE20D4((v66 > 1), v67 + 1, 1);
          v57 = v105;
        }

        *(v57 + 16) = v67 + 1;
        v68 = v104;
        (*(v104 + 32))(v57 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v67, v61, v102);
        v59 += v99;
        --v55;
        v58 = v65;
        v62 = v89;
      }

      while (v55);

      v56 = MEMORY[0x277D84F90];
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
      v68 = v104;
    }

    v105 = v56;
    v69 = v84;
    if (!(v84 >> 62))
    {
      v25 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        break;
      }

      goto LABEL_31;
    }

    v79 = sub_226D6EDFC();
    v69 = v84;
    v25 = v79;
    if (!v79)
    {
      break;
    }

LABEL_31:
    v70 = 0;
    v100 = v69 & 0xFFFFFFFFFFFFFF8;
    *&v101 = v69 & 0xC000000000000001;
    v99 = v69 + 32;
    v71 = (v68 + 8);
    while (1)
    {
      if (v101)
      {
        v72 = MEMORY[0x22AA8AFD0](v70);
      }

      else
      {
        if (v70 >= *(v100 + 16))
        {
          goto LABEL_45;
        }

        v72 = *(v99 + 8 * v70);
      }

      v73 = v72;
      if (__OFADD__(v70++, 1))
      {
        break;
      }

      sub_226D69EBC();
      v75 = 0;
      v76 = *(v57 + 16);
      do
      {
        if (v76 == v75)
        {
          (*v71)(v103, v102);

          goto LABEL_33;
        }

        v77 = v75 + 1;
        sub_226CBDA0C(&qword_27D7A6DA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v78 = sub_226D6E35C();
        v75 = v77;
      }

      while ((v78 & 1) == 0);
      (*v71)(v103, v102);
      sub_226D6EF6C();
      sub_226D6EF9C();
      sub_226D6EFAC();
      sub_226D6EF7C();
LABEL_33:
      if (v70 == v25)
      {
        goto LABEL_48;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_48:

  if (v105 < 0 || (v105 & 0x4000000000000000) != 0)
  {
    v80 = sub_226D6EDFC();
  }

  else
  {
    v80 = *(v105 + 16);
  }

  v81 = v96;

  *v81 = v80 != 0;
  return result;
}

uint64_t sub_226CBAB54()
{
  v1 = sub_226CB56D4();
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_226CBABC0, v1, 0);
}

uint64_t sub_226CBABC0()
{
  v1 = v0[3];
  if (*(v1 + *(*v1 + 144) + 40) == 1 && ((*(v1[26] + 16))() & 1) != 0)
  {
    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_226C0D0E4;

    return sub_226CAE4F0();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_226C0D1F4;

    return sub_226CB04E0();
  }
}

uint64_t sub_226CBAD00@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 136);
  v5 = *(v3 + 144);
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 112), v4);
  a1[3] = v4;
  a1[4] = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v8 = *(*(v4 - 8) + 16);

  return v8(boxed_opaque_existential_1, v6, v4);
}

unint64_t sub_226CBADAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D750B0;
  strcpy((inited + 32), "passKitCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_226D6E8EC();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000226D86DF0;
  *(inited + 72) = sub_226D6E8EC();
  *(inited + 80) = 0xD000000000000017;
  *(inited + 88) = 0x8000000226D86E10;
  *(inited + 96) = sub_226D6E8EC();
  strcpy((inited + 104), "actionsCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  *(inited + 120) = sub_226D6E8EC();
  strcpy((inited + 128), "insightsCount");
  *(inited + 142) = -4864;
  *(inited + 144) = sub_226D6E8EC();
  v1 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v1;
}

void sub_226CBAF70(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D6EB1C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  sub_226D6EB0C();
  sub_226D6EBDC();
  v4 = v3;
  v5 = sub_226D6E36C();
  [v4 setName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = sub_226D6E36C();
  v8 = objc_opt_self();
  v9 = [v8 expressionForKeyPath_];

  *(v6 + 56) = sub_226AE59B4(0, &unk_27D7A8C60, 0x277CCA9C0);
  *(v6 + 32) = v9;
  v10 = sub_226D6E36C();
  v11 = sub_226D6E5CC();

  v12 = [v8 expressionForFunction:v10 arguments:v11];

  [v4 setExpression_];
  sub_226D6AC0C();
  v13 = [swift_getObjCClassFromMetadata() entityName];
  if (!v13)
  {
    sub_226D6E39C();
    v13 = sub_226D6E36C();
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_226D70840;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 32) = 0xD00000000000004ELL;
  *(v15 + 40) = 0x8000000226D86D70;
  v17 = sub_226D6E5CC();

  [v14 setPropertiesToGroupBy_];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_226D71840;
  *(v18 + 56) = v16;
  *(v18 + 32) = 0xD00000000000004ELL;
  *(v18 + 40) = 0x8000000226D86D70;
  *(v18 + 88) = sub_226AE59B4(0, &qword_27D7A8948, 0x277CBE410);
  *(v18 + 64) = v4;
  v19 = v4;
  v20 = sub_226D6E5CC();

  [v14 setPropertiesToFetch_];

  [v14 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CD0, &qword_226D7AE80);
  v21 = sub_226D6EBBC();
  v30 = sub_226C9F85C(v21);

  if (v30)
  {
    v31 = v30[2];
    if (v31)
    {
      v52 = v19;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 1;
      v37 = 4;
      do
      {
        v38 = v30[v37];
        if (*(v38 + 16))
        {

          v39 = sub_226C2FDD4(0x746E756F63, 0xE500000000000000);
          if (v40)
          {
            sub_226AC4708(*(v38 + 56) + 32 * v39, v54);

            if (swift_dynamicCast())
            {
              v41 = __OFADD__(v35++, 1);
              if (v41)
              {
                __break(1u);
LABEL_39:
                __break(1u);
                swift_once();
                v22 = sub_226D6E07C();
                __swift_project_value_buffer(v22, qword_28105F5E0);
                v23 = v30;
                v24 = sub_226D6E05C();
                v25 = sub_226D6E9CC();

                if (os_log_type_enabled(v24, v25))
                {
                  v26 = swift_slowAlloc();
                  v27 = swift_slowAlloc();
                  *v26 = 138412290;
                  v28 = v30;
                  v29 = _swift_stdlib_bridgeErrorToNSError();
                  *(v26 + 4) = v29;
                  *v27 = v29;
                  _os_log_impl(&dword_226AB4000, v24, v25, "Unable to log transaction group insights with error: %@", v26, 0xCu);
                  sub_226AC47B0(v27, &qword_27D7A5FB0, &qword_226D70870);
                  MEMORY[0x22AA8BEE0](v27, -1, -1);
                  MEMORY[0x22AA8BEE0](v26, -1, -1);
                }

                else
                {
                }

                return;
              }

              v41 = __OFADD__(v34, v53[0]);
              v34 += v53[0];
              if (v41)
              {
                goto LABEL_39;
              }

              if (v53[0] >= v33)
              {
                v42 = v33;
              }

              else
              {
                v42 = v53[0];
              }

              v43 = (v36 & 1) == 0;
              v36 = 0;
              if (v43)
              {
                v33 = v42;
              }

              else
              {
                v33 = v53[0];
              }

              if (v53[0] > v32)
              {
                v32 = v53[0];
              }
            }
          }

          else
          {
          }
        }

        ++v37;
        --v31;
      }

      while (v31);

      if (v35)
      {
        v44 = v34 / v35;
      }

      else
      {
        v44 = 0.0;
      }

      v45 = __swift_project_boxed_opaque_existential_1((a2 + 112), *(a2 + 136));
      sub_226AE532C((v45 + 41), v54);
      __swift_project_boxed_opaque_existential_1(v54, v54[3]);
      if (v36)
      {
        v33 = 0;
      }

      v53[3] = &type metadata for TransactionGroupInsightsEvent;
      v53[4] = sub_226CBED58();
      v46 = swift_allocObject();
      v53[0] = v46;
      *(v46 + 16) = 0xD000000000000020;
      *(v46 + 24) = 0x8000000226D86DC0;
      *(v46 + 32) = v35;
      *(v46 + 40) = v44;
      *(v46 + 48) = v33;
      *(v46 + 56) = v32;
      sub_226D69AFC();

      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
    }

    else
    {

      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v47 = sub_226D6E07C();
      __swift_project_value_buffer(v47, qword_28105F5E0);
      v48 = sub_226D6E05C();
      v49 = sub_226D6E9CC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_226AB4000, v48, v49, "No transaction groups, unable to log insights.", v50, 2u);
        MEMORY[0x22AA8BEE0](v50, -1, -1);
      }
    }
  }

  else
  {
  }
}
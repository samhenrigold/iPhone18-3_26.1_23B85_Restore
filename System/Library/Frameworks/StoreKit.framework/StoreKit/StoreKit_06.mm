uint64_t sub_1B24A98D8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_2(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_2(v8);
}

_BYTE *sub_1B24A995C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_45_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_43_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_2(result, v6);
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
          result = OUTLINED_FUNCTION_26_5(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B24A9AC8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_46_2(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 7);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_46_2((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_46_2(v8);
}

_BYTE *sub_1B24A9B4C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_45_1(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_43_1(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_44_2(result, v6);
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
          result = OUTLINED_FUNCTION_26_5(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B24A9C1C()
{
  result = qword_1EB7D1738;
  if (!qword_1EB7D1738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1738);
  }

  return result;
}

unint64_t sub_1B24A9C74()
{
  result = qword_1EB7D1740;
  if (!qword_1EB7D1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1740);
  }

  return result;
}

unint64_t sub_1B24A9CCC()
{
  result = qword_1EB7D1748;
  if (!qword_1EB7D1748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1748);
  }

  return result;
}

unint64_t sub_1B24A9D24()
{
  result = qword_1EB7D1750;
  if (!qword_1EB7D1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1750);
  }

  return result;
}

unint64_t sub_1B24A9D7C()
{
  result = qword_1EB7D1758;
  if (!qword_1EB7D1758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1758);
  }

  return result;
}

unint64_t sub_1B24A9DD4()
{
  result = qword_1EB7D1760;
  if (!qword_1EB7D1760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1760);
  }

  return result;
}

unint64_t sub_1B24A9E2C()
{
  result = qword_1EB7D1768;
  if (!qword_1EB7D1768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7D1768);
  }

  return result;
}

unint64_t sub_1B24A9E84()
{
  result = qword_1EB7CD890;
  if (!qword_1EB7CD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD890);
  }

  return result;
}

unint64_t sub_1B24A9EDC()
{
  result = qword_1EB7CD898;
  if (!qword_1EB7CD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD898);
  }

  return result;
}

unint64_t sub_1B24A9F34()
{
  result = qword_1EB7CD880;
  if (!qword_1EB7CD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD880);
  }

  return result;
}

unint64_t sub_1B24A9F8C()
{
  result = qword_1EB7CD888;
  if (!qword_1EB7CD888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD888);
  }

  return result;
}

unint64_t sub_1B24A9FE4()
{
  result = qword_1EB7CD8A8;
  if (!qword_1EB7CD8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8A8);
  }

  return result;
}

unint64_t sub_1B24AA03C()
{
  result = qword_1EB7CD8B0;
  if (!qword_1EB7CD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8B0);
  }

  return result;
}

unint64_t sub_1B24AA094()
{
  result = qword_1EB7CD8E0;
  if (!qword_1EB7CD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8E0);
  }

  return result;
}

unint64_t sub_1B24AA0EC()
{
  result = qword_1EB7CD8E8;
  if (!qword_1EB7CD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8E8);
  }

  return result;
}

unint64_t sub_1B24AA144()
{
  result = qword_1EB7CD8F0;
  if (!qword_1EB7CD8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8F0);
  }

  return result;
}

unint64_t sub_1B24AA19C()
{
  result = qword_1EB7CD8F8;
  if (!qword_1EB7CD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8F8);
  }

  return result;
}

unint64_t sub_1B24AA1F4()
{
  result = qword_1EB7CD900;
  if (!qword_1EB7CD900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD900);
  }

  return result;
}

unint64_t sub_1B24AA24C()
{
  result = qword_1EB7CD908;
  if (!qword_1EB7CD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD908);
  }

  return result;
}

unint64_t sub_1B24AA2A4()
{
  result = qword_1EB7CD910;
  if (!qword_1EB7CD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD910);
  }

  return result;
}

unint64_t sub_1B24AA2FC()
{
  result = qword_1EB7CD918;
  if (!qword_1EB7CD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD918);
  }

  return result;
}

unint64_t sub_1B24AA354()
{
  result = qword_1EB7CD838;
  if (!qword_1EB7CD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD838);
  }

  return result;
}

unint64_t sub_1B24AA3AC()
{
  result = qword_1EB7CD840;
  if (!qword_1EB7CD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD840);
  }

  return result;
}

unint64_t sub_1B24AA404()
{
  result = qword_1EB7CD850;
  if (!qword_1EB7CD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD850);
  }

  return result;
}

unint64_t sub_1B24AA45C()
{
  result = qword_1EB7CD858;
  if (!qword_1EB7CD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD858);
  }

  return result;
}

unint64_t sub_1B24AA4B4()
{
  result = qword_1EB7CD860;
  if (!qword_1EB7CD860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD860);
  }

  return result;
}

unint64_t sub_1B24AA50C()
{
  result = qword_1EB7CD868;
  if (!qword_1EB7CD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD868);
  }

  return result;
}

unint64_t sub_1B24AA564()
{
  result = qword_1EB7CD778;
  if (!qword_1EB7CD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD778);
  }

  return result;
}

unint64_t sub_1B24AA5BC()
{
  result = qword_1EB7CD780;
  if (!qword_1EB7CD780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD780);
  }

  return result;
}

unint64_t sub_1B24AA614()
{
  result = qword_1EB7CD7C0;
  if (!qword_1EB7CD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7C0);
  }

  return result;
}

unint64_t sub_1B24AA66C()
{
  result = qword_1EB7CD7C8;
  if (!qword_1EB7CD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7C8);
  }

  return result;
}

unint64_t sub_1B24AA6C4()
{
  result = qword_1EB7CD7A0;
  if (!qword_1EB7CD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7A0);
  }

  return result;
}

unint64_t sub_1B24AA71C()
{
  result = qword_1EB7CD7A8;
  if (!qword_1EB7CD7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7A8);
  }

  return result;
}

unint64_t sub_1B24AA774()
{
  result = qword_1EB7CD7D0;
  if (!qword_1EB7CD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7D0);
  }

  return result;
}

unint64_t sub_1B24AA7CC()
{
  result = qword_1EB7CD7D8;
  if (!qword_1EB7CD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7D8);
  }

  return result;
}

unint64_t sub_1B24AA824()
{
  result = qword_1EB7CD790;
  if (!qword_1EB7CD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD790);
  }

  return result;
}

unint64_t sub_1B24AA87C()
{
  result = qword_1EB7CD798;
  if (!qword_1EB7CD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD798);
  }

  return result;
}

unint64_t sub_1B24AA8D4()
{
  result = qword_1EB7CD7E0;
  if (!qword_1EB7CD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7E0);
  }

  return result;
}

unint64_t sub_1B24AA92C()
{
  result = qword_1EB7CD7E8;
  if (!qword_1EB7CD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7E8);
  }

  return result;
}

unint64_t sub_1B24AA984()
{
  result = qword_1EB7CD7B0;
  if (!qword_1EB7CD7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7B0);
  }

  return result;
}

unint64_t sub_1B24AA9DC()
{
  result = qword_1EB7CD7B8;
  if (!qword_1EB7CD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7B8);
  }

  return result;
}

unint64_t sub_1B24AAA34()
{
  result = qword_1EB7CD7F0;
  if (!qword_1EB7CD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7F0);
  }

  return result;
}

unint64_t sub_1B24AAA8C()
{
  result = qword_1EB7CD7F8;
  if (!qword_1EB7CD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD7F8);
  }

  return result;
}

unint64_t sub_1B24AAAE4()
{
  result = qword_1EB7CD8C0;
  if (!qword_1EB7CD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8C0);
  }

  return result;
}

unint64_t sub_1B24AAB3C()
{
  result = qword_1EB7CD8C8;
  if (!qword_1EB7CD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7CD8C8);
  }

  return result;
}

uint64_t sub_1B24AAB90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t OUTLINED_FUNCTION_1_23(uint64_t a1, uint64_t a2)
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_5_17(uint64_t a1, uint64_t a2)
{

  return sub_1B256E9EC();
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1)
{

  return sub_1B256E54C();
}

unint64_t OUTLINED_FUNCTION_15_12(uint64_t a1)
{

  return sub_1B24A95D8(a1);
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1)
{

  return sub_1B256E9AC();
}

unint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return sub_1B24A95D8(a1);
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_1B256E9AC();
}

uint64_t OUTLINED_FUNCTION_42_2(uint64_t a1, uint64_t a2)
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_50_2(uint64_t a1, uint64_t a2)
{

  return sub_1B256E92C();
}

uint64_t OUTLINED_FUNCTION_51_2()
{

  return swift_getWitnessTable();
}

void sub_1B24AB0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_244();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = *(v29 + 16);
  v31 = (v29 + 56);
  if (v30)
  {
    while (1)
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 8);
      v34 = *v31;
      a9 = *(v31 - 3);
      a10 = v32;
      a11 = v33;
      a12 = v34;

      v35 = v28(&a9);
      if (v24)
      {
        break;
      }

      if ((v35 & 1) == 0)
      {

        v31 += 4;
        if (--v30)
        {
          continue;
        }
      }

      goto LABEL_7;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_190();
}

void sub_1B24AB1E4()
{
  OUTLINED_FUNCTION_25_7();
  v17[1] = v1;
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v19 = v7;
  v18 = v8(0);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  v12 = 0;
  v13 = *(v4 + 16);
  while (1)
  {
    if (v13 == v12)
    {
      v15 = 1;
      v16 = v19;
      goto LABEL_9;
    }

    sub_1B24C5E6C();
    v14 = v6(v11);
    if (v0)
    {
      sub_1B24C4368(v11, v20);
      goto LABEL_10;
    }

    if (v14)
    {
      break;
    }

    sub_1B24C4368(v11, v20);
    ++v12;
  }

  v16 = v19;
  sub_1B24C52C8();
  v15 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v16, v15, 1, v18);
LABEL_10:
  OUTLINED_FUNCTION_24_6();
}

uint64_t sub_1B24AB34C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D17C8, &qword_1B2580B48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18E8, &qword_1B2581618);
  swift_allocBox();
  sub_1B24C5C14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18F0, &qword_1B2581620);
  sub_1B256DE1C();
  sub_1B243E88C(v4, &qword_1EB7D17C8, &qword_1B2580B48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7D0DF0, &qword_1B257AF80);
  sub_1B256DF4C();
  sub_1B243E88C(a1, &qword_1EB7D17C8, &qword_1B2580B48);
}

uint64_t sub_1B24AB498(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1B24AB508, 0, 0);
}

uint64_t sub_1B24AB508()
{
  OUTLINED_FUNCTION_4_0();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D18F8, &qword_1B2581638);
  *v1 = v0;
  v1[1] = sub_1B24AB5C8;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6DB98](v3, v2);
}

uint64_t sub_1B24AB5C8()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6_1();
  v3 = v2;
  OUTLINED_FUNCTION_3_10();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_0_8();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9_2();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_7_2();

    return v10();
  }
}

uint64_t sub_1B24AB6E8()
{
  OUTLINED_FUNCTION_4_0();
  swift_endAccess();
  OUTLINED_FUNCTION_7_2();

  return v0();
}

void sub_1B24AB744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_244();
  v10 = v9;
  OUTLINED_FUNCTION_140();
  if (v8)
  {
    OUTLINED_FUNCTION_104();
    v12 = (v11 + 32);
    v13 = OUTLINED_FUNCTION_103_0();
    sub_1B24472B8(v13, v14, v10);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    while (1)
    {
      v15 = *v12++;
      v16 = v4;
      switch(v15)
      {
        case 1:
          break;
        case 2:
          v16 = v4;
          break;
        case 3:
          v16 = OUTLINED_FUNCTION_36_2();
          break;
        case 4:
          v16 = 0x736D657469;
          break;
        case 5:
          v16 = OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          v16 = OUTLINED_FUNCTION_34_3();
          break;
        case 7:
          v16 = 0x65646F43786174;
          break;
        default:
          v16 = OUTLINED_FUNCTION_137_0();
          break;
      }

      if (v10 == 5)
      {
        break;
      }

      OUTLINED_FUNCTION_182();
      v18 = 6;
LABEL_20:
      v21 = OUTLINED_FUNCTION_103_0();
      sub_1B24C52B4(v21, v22, v10);
      OUTLINED_FUNCTION_192();
      v10 = v18;
      if (!--v8)
      {
        goto LABEL_23;
      }
    }

    if (*(v5 + 16))
    {
      sub_1B2455488(v16);
      OUTLINED_FUNCTION_195();
      if (v10)
      {
        OUTLINED_FUNCTION_58_1();
        v7 = *(v17 + 8);
        v18 = *(v17 + 16);
        v19 = OUTLINED_FUNCTION_29_1();
        sub_1B24472B8(v19, v20, v18);
LABEL_19:
        v10 = 5;
        goto LABEL_20;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_182();
    v18 = 6;
    goto LABEL_19;
  }

  v23 = OUTLINED_FUNCTION_103_0();
  sub_1B24472B8(v23, v24, v10);
  v7 = v6;
  v18 = v10;
LABEL_23:
  switch(v18)
  {
    case 1:
      v37 = OUTLINED_FUNCTION_29_1();
      v32 = OUTLINED_FUNCTION_3_22(v37, v38, 1);
      v33 = v7;
      v34 = 1;
      goto LABEL_29;
    case 2:
      v30 = OUTLINED_FUNCTION_29_1();
      v32 = OUTLINED_FUNCTION_3_22(v30, v31, 2);
      v33 = v7;
      v34 = 2;
      goto LABEL_29;
    case 3:
      v35 = OUTLINED_FUNCTION_29_1();
      v32 = OUTLINED_FUNCTION_3_22(v35, v36, 3);
      v33 = v7;
      v34 = 3;
LABEL_29:
      sub_1B24C52B4(v32, v33, v34);
      goto LABEL_32;
    case 4:
      v27 = OUTLINED_FUNCTION_29_1();
      v29 = 4;
      goto LABEL_31;
    case 5:
      v27 = OUTLINED_FUNCTION_29_1();
      v29 = 5;
LABEL_31:
      OUTLINED_FUNCTION_2_14(v27, v28, v29);
LABEL_32:
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
      OUTLINED_FUNCTION_0_29();
      v44 = sub_1B248D0F8(v41, v42, &unk_1B257BB20, v43);
      OUTLINED_FUNCTION_62_1(v44);
      OUTLINED_FUNCTION_6_17(v45, MEMORY[0x1E69E6158]);
      goto LABEL_33;
    case 6:
      v46 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v46, v47);
      v48 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
      OUTLINED_FUNCTION_0_29();
      v53 = sub_1B248D0F8(v50, v51, &unk_1B257BB20, v52);
      OUTLINED_FUNCTION_62_1(v53);
      OUTLINED_FUNCTION_20_9(v54, &type metadata for BackingValue);
LABEL_33:
      swift_willThrow();

      break;
    default:

      v25 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_50_3(v25, v26);
      break;
  }

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_190();
}

void sub_1B24ABD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_52_2();
  if (v11)
  {
    OUTLINED_FUNCTION_104();
    v16 = (v15 + 32);
    v17 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v17, v18, v19);
    OUTLINED_FUNCTION_112_0();
    v35 = v20;
    OUTLINED_FUNCTION_112_0();
    v34 = v21;
    while (1)
    {
      v22 = *v16++;
      v12 = 0xEB000000006E6F69;
      switch(v22)
      {
        case 1:
          break;
        case 2:
          v12 = 7565935;
          goto LABEL_8;
        case 3:
          OUTLINED_FUNCTION_12_15();
LABEL_8:
          v12 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 4:
          OUTLINED_FUNCTION_99_1();
          break;
        case 5:
          v12 = 0xE600000000000000;
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_34_3();
          v12 = v35;
          break;
        case 7:
          OUTLINED_FUNCTION_98_1();
          break;
        default:
          OUTLINED_FUNCTION_137_0();
          v12 = v34;
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v24)
      {
        if (!*(v10 + 16))
        {

LABEL_18:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_19;
        }

        sub_1B2455488(v23);
        OUTLINED_FUNCTION_160_0();
        if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_19:
      OUTLINED_FUNCTION_7_18();
      if (v24)
      {
        goto LABEL_23;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_23:
  switch(v14)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_25;
    case 6:
      v25 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v25, v26);
      v27 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      OUTLINED_FUNCTION_0_29();
      v32 = sub_1B248D0F8(v29, v30, &unk_1B257BB20, v31);
      OUTLINED_FUNCTION_62_1(v32);
      OUTLINED_FUNCTION_20_9(v33, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_25:
      OUTLINED_FUNCTION_43_2();
      *a10 = v12;
      *(a10 + 8) = v13;
      *(a10 + 16) = v14;
      break;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1B24ABF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_140();
  if (v7)
  {
    OUTLINED_FUNCTION_104();
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v10, v11, v12);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    while (1)
    {
      v13 = *v9++;
      switch(v13)
      {
        case 2:
          OUTLINED_FUNCTION_36_2();
          break;
        case 5:
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          break;
        case 8:
          OUTLINED_FUNCTION_233();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v15)
      {
        if (!*(v4 + 16))
        {

LABEL_14:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_15;
        }

        sub_1B2455488(v14);
        OUTLINED_FUNCTION_185();
        if ((v5 & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_15:
      OUTLINED_FUNCTION_14_12();
      if (v15)
      {
        goto LABEL_19;
      }
    }
  }

  v16 = OUTLINED_FUNCTION_60_2();
  sub_1B24472B8(v16, v17, v18);
  OUTLINED_FUNCTION_259();
LABEL_19:
  switch(v6)
  {
    case 1:
      v31 = OUTLINED_FUNCTION_153();
      v26 = OUTLINED_FUNCTION_8_18(v31, v32, 1);
      v27 = v5;
      v28 = 1;
      goto LABEL_25;
    case 2:
      v24 = OUTLINED_FUNCTION_153();
      v26 = OUTLINED_FUNCTION_8_18(v24, v25, 2);
      v27 = v5;
      v28 = 2;
      goto LABEL_25;
    case 3:
      v29 = OUTLINED_FUNCTION_153();
      v26 = OUTLINED_FUNCTION_8_18(v29, v30, 3);
      v27 = v5;
      v28 = 3;
LABEL_25:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_28;
    case 4:
      v21 = OUTLINED_FUNCTION_153();
      v23 = 4;
      goto LABEL_27;
    case 5:
      v21 = OUTLINED_FUNCTION_153();
      v23 = 5;
LABEL_27:
      OUTLINED_FUNCTION_2_14(v21, v22, v23);
LABEL_28:
      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
      OUTLINED_FUNCTION_0_29();
      v38 = sub_1B248D0F8(v35, v36, &qword_1B257BB58, v37);
      OUTLINED_FUNCTION_62_1(v38);
      OUTLINED_FUNCTION_6_17(v39, MEMORY[0x1E69E6158]);
      goto LABEL_29;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v40 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_0_29();
      v45 = sub_1B248D0F8(v42, v43, &qword_1B257BB58, v44);
      OUTLINED_FUNCTION_62_1(v45);
      OUTLINED_FUNCTION_20_9(v46, &type metadata for BackingValue);
LABEL_29:
      swift_willThrow();

      break;
    default:

      v19 = OUTLINED_FUNCTION_153();
      OUTLINED_FUNCTION_50_3(v19, v20);
      break;
  }

  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_190();
}

void sub_1B24AC208(uint64_t a1)
{
  OUTLINED_FUNCTION_52_2();
  v46 = v6;
  if (v2)
  {
    OUTLINED_FUNCTION_145_0();
    v8 = (v7 + 32);
    v9 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v9, v10, v11);
    OUTLINED_FUNCTION_112_0();
    v50 = v12;
    OUTLINED_FUNCTION_112_0();
    v47 = v13;
    while (1)
    {
      v14 = *v8++;
      v3 = 0xEB000000006E6F69;
      switch(v14)
      {
        case 1:
          OUTLINED_FUNCTION_266();
          goto LABEL_8;
        case 2:
          OUTLINED_FUNCTION_12_15();
LABEL_8:
          v3 = 0xEB000000006E6F69;
          break;
        case 3:
          OUTLINED_FUNCTION_118();
          break;
        case 4:
          OUTLINED_FUNCTION_99_1();
          break;
        case 5:
          v3 = 0xE600000000000000;
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          v3 = v47;
          break;
        case 7:
          OUTLINED_FUNCTION_98_1();
          break;
        case 8:
          OUTLINED_FUNCTION_233();
          v3 = v50;
          break;
        case 9:
          OUTLINED_FUNCTION_208();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v16)
      {
        if (!*(v1 + 16))
        {

LABEL_21:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_22;
        }

        sub_1B2455488(v15);
        OUTLINED_FUNCTION_160_0();
        if ((v4 & 1) == 0)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_22:
      OUTLINED_FUNCTION_7_18();
      if (v16)
      {
        goto LABEL_26;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_26:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_28;
    case 6:
      v35 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v35, v36);
      v37 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      OUTLINED_FUNCTION_0_29();
      v42 = sub_1B248D0F8(v39, v40, &qword_1B257BB58, v41);
      OUTLINED_FUNCTION_62_1(v42);
      OUTLINED_FUNCTION_20_9(v43, &type metadata for BackingValue);
      goto LABEL_32;
    default:

LABEL_28:
      OUTLINED_FUNCTION_43_2();
      v48[0] = v3;
      v48[1] = v4;
      v49 = v5;
      v17 = NSDecimal.init(_:)(v48);
      if ((v19 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v26 = v25;
        v27 = OUTLINED_FUNCTION_103_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
        OUTLINED_FUNCTION_0_29();
        v32 = sub_1B248D0F8(v29, v30, &qword_1B257BB58, v31);
        v33 = OUTLINED_FUNCTION_4_6(v32);
        *v34 = v46;
        v34[1] = v26;
        OUTLINED_FUNCTION_24_7(v33, v34);
LABEL_32:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_165_0(v17, v18, v19, v20, v21, v22, v23, v24, v44, v45);
      }

      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24AC758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_244();
  OUTLINED_FUNCTION_52_2();
  if (v11)
  {
    OUTLINED_FUNCTION_104();
    v16 = (v15 + 32);
    v17 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v17, v18, v19);
    OUTLINED_FUNCTION_112_0();
    v35 = v20;
    OUTLINED_FUNCTION_112_0();
    v34 = v21;
    while (1)
    {
      v22 = *v16++;
      v12 = 0xEB000000006E6F69;
      switch(v22)
      {
        case 1:
          v12 = 7565935;
          goto LABEL_8;
        case 2:
          OUTLINED_FUNCTION_12_15();
LABEL_8:
          v12 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 3:
          OUTLINED_FUNCTION_118();
          break;
        case 4:
          OUTLINED_FUNCTION_99_1();
          break;
        case 5:
          v12 = 0xE600000000000000;
          OUTLINED_FUNCTION_83_1();
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          v12 = v34;
          break;
        case 7:
          OUTLINED_FUNCTION_98_1();
          break;
        case 8:
          OUTLINED_FUNCTION_233();
          v12 = v35;
          break;
        case 9:
          OUTLINED_FUNCTION_208();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v24)
      {
        if (!*(v10 + 16))
        {

LABEL_21:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_22;
        }

        sub_1B2455488(v23);
        OUTLINED_FUNCTION_160_0();
        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_22:
      OUTLINED_FUNCTION_7_18();
      if (v24)
      {
        goto LABEL_26;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_26:
  switch(v14)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_28;
    case 6:
      v25 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v25, v26);
      v27 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      OUTLINED_FUNCTION_0_29();
      v32 = sub_1B248D0F8(v29, v30, &qword_1B257BB58, v31);
      OUTLINED_FUNCTION_62_1(v32);
      OUTLINED_FUNCTION_20_9(v33, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_28:
      OUTLINED_FUNCTION_43_2();
      *a10 = v12;
      *(a10 + 8) = v13;
      *(a10 + 16) = v14;
      break;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1B24AC998(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v11 = OUTLINED_FUNCTION_84_1();
    sub_1B24472B8(v11, v12, v13);
    while (1)
    {
      v14 = *v10++;
      switch(v14)
      {
        case 1:
        case 2:
        case 3:
          OUTLINED_FUNCTION_90_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v16)
      {
        if (!*(a2 + 16))
        {

LABEL_11:
          v22 = 0;
          v23 = 0;
          v24 = 6;
          goto LABEL_12;
        }

        sub_1B2455488(v15);
        v18 = v17;

        if ((v18 & 1) == 0)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_101_1();
        v22 = *v19;
        v23 = *(v19 + 8);
        v24 = *(v19 + 16);
        v20 = OUTLINED_FUNCTION_136();
        sub_1B24472B8(v20, v21, v24);
      }

      else
      {

        v22 = 0;
        v23 = 0;
        v24 = 6;
      }

LABEL_12:
      v25 = OUTLINED_FUNCTION_84_1();
      sub_1B24C52B4(v25, v26, v27);
      a2 = v22;
      if (!--v9)
      {
        goto LABEL_15;
      }
    }
  }

  v28 = OUTLINED_FUNCTION_84_1();
  sub_1B24472B8(v28, v29, v30);
  v22 = a2;
  v23 = a3;
  v24 = a4;
LABEL_15:
  switch(v24)
  {
    case 1:
      v43 = OUTLINED_FUNCTION_136();
      v38 = OUTLINED_FUNCTION_10_12(v43, v44, 1);
      v40 = 1;
      goto LABEL_21;
    case 2:
      v36 = OUTLINED_FUNCTION_136();
      v38 = OUTLINED_FUNCTION_10_12(v36, v37, 2);
      v40 = 2;
      goto LABEL_21;
    case 3:
      v41 = OUTLINED_FUNCTION_136();
      v38 = OUTLINED_FUNCTION_10_12(v41, v42, 3);
      v40 = 3;
LABEL_21:
      sub_1B24C52B4(v38, v39, v40);
      goto LABEL_24;
    case 4:
      v33 = OUTLINED_FUNCTION_136();
      v35 = 4;
      goto LABEL_23;
    case 5:
      v33 = OUTLINED_FUNCTION_136();
      v35 = 5;
LABEL_23:
      OUTLINED_FUNCTION_2_14(v33, v34, v35);
LABEL_24:
      v45 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
      OUTLINED_FUNCTION_0_29();
      v50 = sub_1B248D0F8(v47, v48, &qword_1B2581728, v49);
      OUTLINED_FUNCTION_4_6(v50);
      OUTLINED_FUNCTION_6_17(v51, a5);
      goto LABEL_25;
    case 6:
      v52 = OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_21_10(v52, v53);
      v54 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
      OUTLINED_FUNCTION_0_29();
      v59 = sub_1B248D0F8(v56, v57, &qword_1B2581728, v58);
      OUTLINED_FUNCTION_62_1(v59);
      OUTLINED_FUNCTION_20_9(v60, &type metadata for BackingValue);
LABEL_25:
      swift_willThrow();

      break;
    default:

      v31 = OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_50_3(v31, v32);
      *a6 = v22;
      a6[1] = v23;
      break;
  }

  OUTLINED_FUNCTION_190();
}

void sub_1B24ACE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_140();
  if (v7)
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v10, v11, v12);
    while (1)
    {
      v13 = *v9++;
      switch(v13)
      {
        case 1:
        case 2:
        case 3:
          OUTLINED_FUNCTION_90_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v15)
      {
        if (!*(v4 + 16))
        {

LABEL_11:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_12;
        }

        sub_1B2455488(v14);
        OUTLINED_FUNCTION_185();
        if ((v5 & 1) == 0)
        {
          goto LABEL_11;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_12:
      OUTLINED_FUNCTION_14_12();
      if (v15)
      {
        goto LABEL_16;
      }
    }
  }

  v16 = OUTLINED_FUNCTION_60_2();
  sub_1B24472B8(v16, v17, v18);
  OUTLINED_FUNCTION_259();
LABEL_16:
  switch(v6)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_18;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v30 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
      OUTLINED_FUNCTION_0_29();
      v35 = sub_1B248D0F8(v32, v33, &qword_1B2581728, v34);
      OUTLINED_FUNCTION_62_1(v35);
      OUTLINED_FUNCTION_20_9(v36, &type metadata for BackingValue);
      goto LABEL_22;
    default:

LABEL_18:
      v19 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v19, v20, v21);
      OUTLINED_FUNCTION_269();
      OUTLINED_FUNCTION_153();
      sub_1B24B6BE8();
      if ((v22 & 1) == 0)
      {
        goto LABEL_23;
      }

      v23 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
      OUTLINED_FUNCTION_0_29();
      v28 = sub_1B248D0F8(v25, v26, &qword_1B2581728, v27);
      OUTLINED_FUNCTION_62_1(v28);
      OUTLINED_FUNCTION_6_17(v29, MEMORY[0x1E69E7360]);
LABEL_22:
      swift_willThrow();

LABEL_23:
      OUTLINED_FUNCTION_229();
      return;
  }
}

void sub_1B24AD2A0(char a4@<W3>, uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_188();
  if (*(v8 + 16))
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_156();
    sub_1B24472B8(v10, v11, a4);
    OUTLINED_FUNCTION_224();
    while (1)
    {
      v12 = *v9++;
      switch(v12)
      {
        case 1:
          v13 = OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_223(v13);
          break;
        case 2:
          OUTLINED_FUNCTION_55_1();
          break;
        case 3:
          OUTLINED_FUNCTION_201();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v15)
      {
        break;
      }

      OUTLINED_FUNCTION_206();
LABEL_15:
      v19 = OUTLINED_FUNCTION_156();
      sub_1B24C52B4(v19, v20, a4);
      OUTLINED_FUNCTION_297();
      if (v15)
      {
        goto LABEL_19;
      }
    }

    if (*(v5 + 16))
    {
      sub_1B2455488(v14);
      OUTLINED_FUNCTION_196();
      if (a4)
      {
        OUTLINED_FUNCTION_101_1();
        v6 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_132_0();
        sub_1B24472B8(v17, v18, v6);
LABEL_14:
        a4 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_206();
    goto LABEL_14;
  }

  v21 = OUTLINED_FUNCTION_156();
  sub_1B24472B8(v21, v22, a4);
  v6 = a4;
LABEL_19:
  switch(v6)
  {
    case 1:
      v38 = OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_9_17(v38, v39, 1);
      v35 = 1;
      goto LABEL_26;
    case 2:
      v31 = OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_9_17(v31, v32, 2);
      v35 = 2;
      goto LABEL_26;
    case 3:
      v36 = OUTLINED_FUNCTION_132_0();
      v33 = OUTLINED_FUNCTION_9_17(v36, v37, 3);
      v35 = 3;
LABEL_26:
      sub_1B24C52B4(v33, v34, v35);
      goto LABEL_29;
    case 4:
      v28 = OUTLINED_FUNCTION_132_0();
      v30 = 4;
      goto LABEL_28;
    case 5:
      v28 = OUTLINED_FUNCTION_132_0();
      v30 = 5;
LABEL_28:
      OUTLINED_FUNCTION_2_14(v28, v29, v30);
      goto LABEL_29;
    case 6:
      v47 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_21_10(v47, v48);
      v49 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_0_29();
      v54 = sub_1B248D0F8(v51, v52, &qword_1B25815F0, v53);
      OUTLINED_FUNCTION_62_1(v54);
      OUTLINED_FUNCTION_20_9(v55, &type metadata for BackingValue);
      goto LABEL_30;
    default:

      v23 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_50_3(v23, v24);
      v25 = OUTLINED_FUNCTION_132_0();
      Product.SubscriptionPeriod.init(from8601String:)(v25, v26, v27);
      if (v57)
      {

LABEL_29:
        v40 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
        OUTLINED_FUNCTION_0_29();
        v45 = sub_1B248D0F8(v42, v43, &qword_1B25815F0, v44);
        OUTLINED_FUNCTION_62_1(v45);
        OUTLINED_FUNCTION_6_17(v46, &type metadata for Product.SubscriptionPeriod);
LABEL_30:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_260(v58, x8_0);
      }

      OUTLINED_FUNCTION_190();
      return;
  }
}

void sub_1B24AD53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_245();
  v9 = v8;
  OUTLINED_FUNCTION_188();
  v57 = v11;
  if (*(v10 + 16))
  {
    v12 = (v10 + 32);
    v13 = OUTLINED_FUNCTION_156();
    sub_1B24472B8(v13, v14, v9);
    OUTLINED_FUNCTION_224();
    while (1)
    {
      v15 = *v12++;
      v16 = 0xE600000000000000;
      switch(v15)
      {
        case 1:
          v17 = OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_223(v17);
          break;
        case 2:
          OUTLINED_FUNCTION_55_1();
          break;
        case 3:
          OUTLINED_FUNCTION_201();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v19)
      {
        break;
      }

      OUTLINED_FUNCTION_206();
LABEL_15:
      v23 = OUTLINED_FUNCTION_156();
      sub_1B24C52B4(v23, v24, v9);
      OUTLINED_FUNCTION_297();
      if (v19)
      {
        goto LABEL_19;
      }
    }

    if (*(v4 + 16))
    {
      sub_1B2455488(v18);
      OUTLINED_FUNCTION_196();
      if (v9)
      {
        OUTLINED_FUNCTION_101_1();
        v6 = *v20;
        v16 = v20[1];
        v7 = *(v20 + 16);
        v21 = OUTLINED_FUNCTION_132_0();
        sub_1B24472B8(v21, v22, v7);
LABEL_14:
        v9 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_206();
    goto LABEL_14;
  }

  v25 = OUTLINED_FUNCTION_156();
  sub_1B24472B8(v25, v26, v9);
  v6 = v4;
  v16 = v5;
  v7 = v9;
LABEL_19:
  switch(v7)
  {
    case 1:
      v39 = OUTLINED_FUNCTION_132_0();
      v34 = OUTLINED_FUNCTION_9_17(v39, v40, 1);
      v36 = 1;
      goto LABEL_25;
    case 2:
      v32 = OUTLINED_FUNCTION_132_0();
      v34 = OUTLINED_FUNCTION_9_17(v32, v33, 2);
      v36 = 2;
      goto LABEL_25;
    case 3:
      v37 = OUTLINED_FUNCTION_132_0();
      v34 = OUTLINED_FUNCTION_9_17(v37, v38, 3);
      v36 = 3;
LABEL_25:
      sub_1B24C52B4(v34, v35, v36);
      goto LABEL_28;
    case 4:
      v29 = OUTLINED_FUNCTION_132_0();
      v31 = 4;
      goto LABEL_27;
    case 5:
      v29 = OUTLINED_FUNCTION_132_0();
      v31 = 5;
LABEL_27:
      OUTLINED_FUNCTION_2_14(v29, v30, v31);
LABEL_28:
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      OUTLINED_FUNCTION_0_29();
      v46 = sub_1B248D0F8(v43, v44, &qword_1B25815F0, v45);
      OUTLINED_FUNCTION_62_1(v46);
      OUTLINED_FUNCTION_6_17(v47, &type metadata for Transaction.AdvancedCommerceInfo.Offer.Reason);
      goto LABEL_29;
    case 6:
      v48 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_21_10(v48, v49);
      v50 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
      OUTLINED_FUNCTION_0_29();
      v55 = sub_1B248D0F8(v52, v53, &qword_1B25815F0, v54);
      OUTLINED_FUNCTION_62_1(v55);
      OUTLINED_FUNCTION_20_9(v56, &type metadata for BackingValue);
LABEL_29:
      swift_willThrow();

      break;
    default:

      v27 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_50_3(v27, v28);
      *v57 = v6;
      v57[1] = v16;
      break;
  }

  OUTLINED_FUNCTION_229();
}

void sub_1B24AD7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_140();
  if (v7)
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v10, v11, v12);
    OUTLINED_FUNCTION_224();
    while (1)
    {
      v13 = *v9++;
      switch(v13)
      {
        case 1:
          v14 = OUTLINED_FUNCTION_83_1();
          OUTLINED_FUNCTION_223(v14);
          break;
        case 2:
          OUTLINED_FUNCTION_55_1();
          break;
        case 3:
          OUTLINED_FUNCTION_201();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v16)
      {
        if (!*(v4 + 16))
        {

LABEL_13:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_14;
        }

        sub_1B2455488(v15);
        OUTLINED_FUNCTION_185();
        if ((v5 & 1) == 0)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_14:
      OUTLINED_FUNCTION_14_12();
      if (v16)
      {
        goto LABEL_18;
      }
    }
  }

  v17 = OUTLINED_FUNCTION_60_2();
  sub_1B24472B8(v17, v18, v19);
  OUTLINED_FUNCTION_259();
LABEL_18:
  switch(v6)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_20;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v31 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      OUTLINED_FUNCTION_0_29();
      v36 = sub_1B248D0F8(v33, v34, &qword_1B25815F0, v35);
      OUTLINED_FUNCTION_62_1(v36);
      OUTLINED_FUNCTION_20_9(v37, &type metadata for BackingValue);
      goto LABEL_24;
    default:

LABEL_20:
      v20 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_8_18(v20, v21, v22);
      OUTLINED_FUNCTION_283();
      if ((v23 & 1) == 0)
      {
        goto LABEL_25;
      }

      v24 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
      OUTLINED_FUNCTION_0_29();
      v29 = sub_1B248D0F8(v26, v27, &qword_1B25815F0, v28);
      OUTLINED_FUNCTION_62_1(v29);
      OUTLINED_FUNCTION_6_17(v30, MEMORY[0x1E69E6530]);
LABEL_24:
      swift_willThrow();

LABEL_25:
      OUTLINED_FUNCTION_229();
      return;
  }
}

void sub_1B24AD990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_245();
  v9 = v8;
  OUTLINED_FUNCTION_140();
  if (v7)
  {
    v11 = (v10 + 32);
    v12 = OUTLINED_FUNCTION_103_0();
    sub_1B24472B8(v12, v13, v9);
    while (1)
    {
      v14 = *v11++;
      v15 = 0x7470697263736564;
      switch(v14)
      {
        case 1:
          v15 = OUTLINED_FUNCTION_36_2();
          break;
        case 2:
          v15 = OUTLINED_FUNCTION_265();
          break;
        case 3:
          v15 = OUTLINED_FUNCTION_87_0();
          break;
        case 4:
          v15 = 5589843;
          break;
        default:
          break;
      }

      if (v9 == 5)
      {
        break;
      }

      OUTLINED_FUNCTION_182();
      v17 = 6;
LABEL_16:
      v20 = OUTLINED_FUNCTION_103_0();
      sub_1B24C52B4(v20, v21, v9);
      OUTLINED_FUNCTION_192();
      v9 = v17;
      if (!--v7)
      {
        goto LABEL_19;
      }
    }

    if (*(v4 + 16))
    {
      sub_1B2455488(v15);
      OUTLINED_FUNCTION_195();
      if (v9)
      {
        OUTLINED_FUNCTION_58_1();
        v6 = *(v16 + 8);
        v17 = *(v16 + 16);
        v18 = OUTLINED_FUNCTION_29_1();
        sub_1B24472B8(v18, v19, v17);
LABEL_15:
        v9 = 5;
        goto LABEL_16;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_182();
    v17 = 6;
    goto LABEL_15;
  }

  v22 = OUTLINED_FUNCTION_103_0();
  sub_1B24472B8(v22, v23, v9);
  v6 = v5;
  v17 = v9;
LABEL_19:
  switch(v17)
  {
    case 1:
      v36 = OUTLINED_FUNCTION_29_1();
      v31 = OUTLINED_FUNCTION_3_22(v36, v37, 1);
      v32 = v6;
      v33 = 1;
      goto LABEL_25;
    case 2:
      v29 = OUTLINED_FUNCTION_29_1();
      v31 = OUTLINED_FUNCTION_3_22(v29, v30, 2);
      v32 = v6;
      v33 = 2;
      goto LABEL_25;
    case 3:
      v34 = OUTLINED_FUNCTION_29_1();
      v31 = OUTLINED_FUNCTION_3_22(v34, v35, 3);
      v32 = v6;
      v33 = 3;
LABEL_25:
      sub_1B24C52B4(v31, v32, v33);
      goto LABEL_28;
    case 4:
      v26 = OUTLINED_FUNCTION_29_1();
      v28 = 4;
      goto LABEL_27;
    case 5:
      v26 = OUTLINED_FUNCTION_29_1();
      v28 = 5;
LABEL_27:
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
LABEL_28:
      v38 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_0_29();
      v43 = sub_1B248D0F8(v40, v41, &qword_1B257E270, v42);
      OUTLINED_FUNCTION_62_1(v43);
      OUTLINED_FUNCTION_6_17(v44, MEMORY[0x1E69E6158]);
      goto LABEL_29;
    case 6:
      v45 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v45, v46);
      v47 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
      OUTLINED_FUNCTION_0_29();
      v52 = sub_1B248D0F8(v49, v50, &qword_1B257E270, v51);
      OUTLINED_FUNCTION_62_1(v52);
      OUTLINED_FUNCTION_20_9(v53, &type metadata for BackingValue);
LABEL_29:
      swift_willThrow();

      break;
    default:

      v24 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_50_3(v24, v25);
      break;
  }

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_229();
}

uint64_t sub_1B24ADE48(uint64_t a1)
{
  OUTLINED_FUNCTION_188();
  v33 = v6;
  if (*(v5 + 16))
  {
    v7 = (v5 + 32);
    v8 = OUTLINED_FUNCTION_40_5();
    sub_1B24472B8(v8, v9, v10);
    OUTLINED_FUNCTION_145_0();
    while (1)
    {
      v11 = *v7++;
      v2 = 0xEB000000006E6F69;
      switch(v11)
      {
        case 1:
          OUTLINED_FUNCTION_12_15();
          v2 = 0xEB000000006E6F69;
          break;
        case 2:
          v2 = 0xE500000000000000;
          OUTLINED_FUNCTION_265();
          break;
        case 3:
          v2 = 0xE500000000000000;
          OUTLINED_FUNCTION_87_0();
          break;
        case 4:
          v2 = 0xE300000000000000;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v13)
      {
        if (!*(v1 + 16))
        {

LABEL_14:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_15;
        }

        sub_1B2455488(v12);
        OUTLINED_FUNCTION_160_0();
        if ((v3 & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_15:
      OUTLINED_FUNCTION_7_18();
      if (v13)
      {
        goto LABEL_19;
      }
    }
  }

  OUTLINED_FUNCTION_30_6();
LABEL_19:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_21;
    case 6:
      v24 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v24, v25);
      v26 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
      OUTLINED_FUNCTION_0_29();
      v31 = sub_1B248D0F8(v28, v29, &qword_1B257E270, v30);
      OUTLINED_FUNCTION_62_1(v31);
      OUTLINED_FUNCTION_20_9(v32, &type metadata for BackingValue);
      goto LABEL_25;
    default:

LABEL_21:
      OUTLINED_FUNCTION_43_2();
      *&v34 = v2;
      *(&v34 + 1) = v3;
      LOBYTE(v35) = v4;
      result = sub_1B249ACA0(&v38, &v34);
      if (*(&v41 + 1))
      {
        v15 = v39;
        *v33 = v38;
        v33[1] = v15;
        v16 = v41;
        v33[2] = v40;
        v33[3] = v16;
      }

      else
      {
        v34 = v38;
        v35 = v39;
        v36 = v40;
        v37 = v41;
        sub_1B243E88C(&v34, &qword_1EB7D1220, &qword_1B257DD20);
        v17 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v17, v18);
        OUTLINED_FUNCTION_0_29();
        v22 = sub_1B248D0F8(v19, v20, &qword_1B257E270, v21);
        OUTLINED_FUNCTION_62_1(v22);
        OUTLINED_FUNCTION_6_17(v23, &type metadata for Transaction.AdvancedCommerceInfo.Offer);
LABEL_25:
        swift_willThrow();
      }

      return result;
  }
}

void sub_1B24AE0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_245();
  v8 = v7;
  OUTLINED_FUNCTION_140();
  if (v6)
  {
    v10 = v9 + 32;
    v11 = OUTLINED_FUNCTION_85_0();
    sub_1B24472B8(v11, v12, v13);
    while (1)
    {
      OUTLINED_FUNCTION_194();
      if (v15)
      {
        if (!*(v4 + 16))
        {

LABEL_9:
          OUTLINED_FUNCTION_86();
          goto LABEL_10;
        }

        sub_1B2455488(v14);
        OUTLINED_FUNCTION_195();
        if ((v5 & 1) == 0)
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_58_1();
        v5 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v17, v18, v19);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_10:
      v20 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v20, v21, v22);
      ++v10;
      OUTLINED_FUNCTION_100_1();
      if (v15)
      {
        goto LABEL_14;
      }
    }
  }

  v23 = OUTLINED_FUNCTION_85_0();
  sub_1B24472B8(v23, v24, v25);
  v5 = v8;
LABEL_14:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      v37 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v37, v38);
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
      OUTLINED_FUNCTION_0_29();
      v44 = sub_1B248D0F8(v41, v42, &qword_1B257BB70, v43);
      OUTLINED_FUNCTION_62_1(v44);
      OUTLINED_FUNCTION_20_9(v45, &type metadata for BackingValue);
      goto LABEL_20;
    default:

LABEL_16:
      v26 = OUTLINED_FUNCTION_54_2();
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
      OUTLINED_FUNCTION_269();
      OUTLINED_FUNCTION_29_1();
      sub_1B24B6BE8();
      if ((v29 & 1) == 0)
      {
        goto LABEL_21;
      }

      v30 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
      OUTLINED_FUNCTION_0_29();
      v35 = sub_1B248D0F8(v32, v33, &qword_1B257BB70, v34);
      OUTLINED_FUNCTION_62_1(v35);
      OUTLINED_FUNCTION_6_17(v36, MEMORY[0x1E69E7360]);
LABEL_20:
      swift_willThrow();

LABEL_21:
      OUTLINED_FUNCTION_229();
      return;
  }
}

void sub_1B24AE2CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_188();
  v38 = v10;
  if (*(v9 + 16))
  {
    v11 = (v9 + 32);
    v12 = OUTLINED_FUNCTION_124_0();
    sub_1B24472B8(v12, v13, v14);
    while (1)
    {
      if (*v11)
      {
        v15 = 0xEE00657461446E6FLL;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      OUTLINED_FUNCTION_232();
      if (v17)
      {
        if (!*(v4 + 16))
        {

LABEL_12:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_13;
        }

        sub_1B2455488(v16);
        OUTLINED_FUNCTION_196();
        if ((v7 & 1) == 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_101_1();
        v15 = *v18;
        v6 = *(v18 + 8);
        v7 = *(v18 + 16);
        v19 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v19, v20, v21);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_13:
      v22 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v22, v23, v24);
      ++v11;
      OUTLINED_FUNCTION_143_0();
      if (v17)
      {
        goto LABEL_17;
      }
    }
  }

  v25 = OUTLINED_FUNCTION_124_0();
  sub_1B24472B8(v25, v26, v27);
  v15 = v4;
  v6 = v5;
  v7 = a4;
LABEL_17:
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_19;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v31 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
      OUTLINED_FUNCTION_0_29();
      v36 = sub_1B248D0F8(v33, v34, &qword_1B257BB70, v35);
      OUTLINED_FUNCTION_62_1(v36);
      OUTLINED_FUNCTION_20_9(v37, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_19:
      v28 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v28, v29, v30);
      *v38 = v15;
      *(v38 + 8) = v6;
      *(v38 + 16) = v7;
      break;
  }

  OUTLINED_FUNCTION_229();
}

void sub_1B24AE498()
{
  OUTLINED_FUNCTION_25_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v7, v8, v1);
    v9 = (v5 + 40);
    v10 = v3;
    v11 = v1;
    do
    {
      if (v11 == 5 && *(v10 + 16) && (v12 = *(v9 - 1), v3 = *v9, , sub_1B2455488(v12), OUTLINED_FUNCTION_285(), (v1 & 1) != 0))
      {
        OUTLINED_FUNCTION_173();
        v3 = *v13;
        v1 = *(v13 + 16);
        v14 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v14, v15, v1);
      }

      else
      {
        OUTLINED_FUNCTION_227();
        v1 = 6;
      }

      v16 = OUTLINED_FUNCTION_153();
      sub_1B24C52B4(v16, v17, v18);
      v9 += 2;
      v10 = v3;
      v11 = v1;
      --v6;
    }

    while (v6);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v19, v20, v1);
  }

  switch(v1)
  {
    case 1:
      v35 = OUTLINED_FUNCTION_107_1();
      v29 = OUTLINED_FUNCTION_4_18(v35, v36, v37);
      v31 = 1;
      goto LABEL_17;
    case 2:
      v26 = OUTLINED_FUNCTION_106_1();
      v29 = OUTLINED_FUNCTION_4_18(v26, v27, v28);
      v31 = 2;
      goto LABEL_17;
    case 3:
      v32 = OUTLINED_FUNCTION_108_1();
      v29 = OUTLINED_FUNCTION_4_18(v32, v33, v34);
      v31 = 3;
LABEL_17:
      sub_1B24C52B4(v29, v30, v31);
      goto LABEL_20;
    case 4:
      v23 = OUTLINED_FUNCTION_25_1();
      v25 = 4;
      goto LABEL_19;
    case 5:
      v23 = OUTLINED_FUNCTION_25_1();
      v25 = 5;
LABEL_19:
      OUTLINED_FUNCTION_2_14(v23, v24, v25);
LABEL_20:
      v38 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_0_29();
      v43 = sub_1B248D0F8(v40, v41, &qword_1B25815F8, v42);
      OUTLINED_FUNCTION_62_1(v43);
      OUTLINED_FUNCTION_6_17(v44, MEMORY[0x1E69E6158]);
      goto LABEL_21;
    case 6:
      v45 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v45, v46);
      v47 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
      OUTLINED_FUNCTION_0_29();
      v52 = sub_1B248D0F8(v49, v50, &qword_1B25815F8, v51);
      OUTLINED_FUNCTION_62_1(v52);
      OUTLINED_FUNCTION_20_9(v53, &type metadata for BackingValue);
LABEL_21:
      swift_willThrow();

      break;
    default:

      v21 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v21, v22);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_24_6();
}

void sub_1B24AE6C8()
{
  OUTLINED_FUNCTION_25_7();
  v3 = v2;
  OUTLINED_FUNCTION_253();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v6, v7, v8);
    v9 = v0 + 40;
    v10 = v1;
    v11 = v3;
    do
    {
      if (v11 == 5 && *(v10 + 16) && (v12 = *(v9 - 8), , v1 = v10, sub_1B2455488(v12), OUTLINED_FUNCTION_285(), (v3 & 1) != 0))
      {
        OUTLINED_FUNCTION_173();
        v1 = *v13;
        v3 = *(v13 + 16);
        v14 = OUTLINED_FUNCTION_60_2();
        sub_1B24472B8(v14, v15, v16);
      }

      else
      {
        OUTLINED_FUNCTION_310();
        v3 = 6;
      }

      v17 = OUTLINED_FUNCTION_153();
      sub_1B24C52B4(v17, v18, v19);
      v9 += 16;
      v10 = v1;
      v11 = v3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_60_2();
    sub_1B24472B8(v20, v21, v22);
  }

  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_13;
    case 6:
      v34 = OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_21_10(v34, v35);
      v36 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
      OUTLINED_FUNCTION_0_29();
      v41 = sub_1B248D0F8(v38, v39, &qword_1B25815F8, v40);
      OUTLINED_FUNCTION_62_1(v41);
      OUTLINED_FUNCTION_20_9(v42, &type metadata for BackingValue);
      goto LABEL_16;
    default:

LABEL_13:
      v23 = OUTLINED_FUNCTION_60_2();
      OUTLINED_FUNCTION_2_14(v23, v24, v25);
      OUTLINED_FUNCTION_103_0();
      sub_1B24B6BE8();
      if ((v26 & 1) == 0)
      {
        goto LABEL_17;
      }

      v27 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      OUTLINED_FUNCTION_0_29();
      v32 = sub_1B248D0F8(v29, v30, &qword_1B25815F8, v31);
      OUTLINED_FUNCTION_62_1(v32);
      OUTLINED_FUNCTION_6_17(v33, MEMORY[0x1E69E6530]);
LABEL_16:
      swift_willThrow();

LABEL_17:
      OUTLINED_FUNCTION_24_6();
      return;
  }
}

void sub_1B24AE8B4(uint64_t a1)
{
  OUTLINED_FUNCTION_105_1();
  if (*(v4 + 16))
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_276();
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v11)
      {
        if (!*(v1 + 16))
        {

LABEL_37:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_38;
        }

        sub_1B2455488(v10);
        OUTLINED_FUNCTION_185();
        if ((v2 & 1) == 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_38:
      OUTLINED_FUNCTION_14_12();
      if (v11)
      {
        goto LABEL_42;
      }
    }
  }

  v12 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v12, v13, v14);
LABEL_42:
  switch(v3)
  {
    case 1:
      v26 = OUTLINED_FUNCTION_153();
      v21 = OUTLINED_FUNCTION_8_18(v26, v27, 1);
      v22 = v2;
      v23 = 1;
      goto LABEL_48;
    case 2:
      v19 = OUTLINED_FUNCTION_153();
      v21 = OUTLINED_FUNCTION_8_18(v19, v20, 2);
      v22 = v2;
      v23 = 2;
      goto LABEL_48;
    case 3:
      v24 = OUTLINED_FUNCTION_153();
      v21 = OUTLINED_FUNCTION_8_18(v24, v25, 3);
      v22 = v2;
      v23 = 3;
LABEL_48:
      sub_1B24C52B4(v21, v22, v23);
      goto LABEL_51;
    case 4:

      OUTLINED_FUNCTION_2_14(v18, v2, 4);
      goto LABEL_53;
    case 5:
      v15 = OUTLINED_FUNCTION_153();
      v17 = 5;
      goto LABEL_50;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v38 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_0_29();
      v43 = sub_1B248D0F8(v40, v41, &unk_1B25815B0, v42);
      OUTLINED_FUNCTION_62_1(v43);
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
      goto LABEL_52;
    default:
      v15 = OUTLINED_FUNCTION_153();
      v17 = 0;
LABEL_50:
      OUTLINED_FUNCTION_2_14(v15, v16, v17);
LABEL_51:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D03E8, &qword_1B2578FC8);
      v29 = OUTLINED_FUNCTION_89();
      __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
      OUTLINED_FUNCTION_1_24();
      OUTLINED_FUNCTION_9_9();
      v35 = sub_1B248D0F8(v31, v32, v33, v34);
      v36 = OUTLINED_FUNCTION_4_6(v35);
      *v37 = a1;
      v37[1] = v28;
      OUTLINED_FUNCTION_24_7(v36, v37);
LABEL_52:
      swift_willThrow();

LABEL_53:
      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24AEC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 32);
    v8 = OUTLINED_FUNCTION_132_0();
    sub_1B24472B8(v8, v9, a4);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_276();
    v10 = a2;
    v11 = a4;
    while (1)
    {
      v12 = *v7++;
      switch(v12)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v14)
      {
        if (!*(v10 + 16))
        {

LABEL_37:
          a2 = 0;
          a4 = 6;
          goto LABEL_38;
        }

        sub_1B2455488(v13);
        OUTLINED_FUNCTION_185();
        if ((a2 & 1) == 0)
        {
          goto LABEL_37;
        }

        v15 = *(v10 + 56) + 24 * v11;
        a2 = *v15;
        a4 = *(v15 + 16);
        v16 = OUTLINED_FUNCTION_132_0();
        sub_1B24472B8(v16, v17, a4);
      }

      else
      {

        a2 = 0;
        a4 = 6;
      }

LABEL_38:
      v18 = OUTLINED_FUNCTION_60_2();
      sub_1B24C52B4(v18, v19, v20);
      v10 = a2;
      v11 = a4;
      if (!--v6)
      {
        goto LABEL_41;
      }
    }
  }

  v21 = OUTLINED_FUNCTION_132_0();
  sub_1B24472B8(v21, v22, a4);
LABEL_41:
  switch(a4)
  {
    case 1:
      v35 = OUTLINED_FUNCTION_132_0();
      v30 = OUTLINED_FUNCTION_9_17(v35, v36, 1);
      v32 = 1;
      goto LABEL_47;
    case 2:
      v28 = OUTLINED_FUNCTION_132_0();
      v30 = OUTLINED_FUNCTION_9_17(v28, v29, 2);
      v32 = 2;
      goto LABEL_47;
    case 3:
      v33 = OUTLINED_FUNCTION_132_0();
      v30 = OUTLINED_FUNCTION_9_17(v33, v34, 3);
      v32 = 3;
LABEL_47:
      sub_1B24C52B4(v30, v31, v32);
      goto LABEL_50;
    case 4:
      v25 = OUTLINED_FUNCTION_132_0();
      v27 = 4;
      goto LABEL_49;
    case 5:
      v25 = OUTLINED_FUNCTION_132_0();
      v27 = 5;
LABEL_49:
      OUTLINED_FUNCTION_2_14(v25, v26, v27);
LABEL_50:
      v37 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      OUTLINED_FUNCTION_0_29();
      v42 = sub_1B248D0F8(v39, v40, &unk_1B25815B0, v41);
      OUTLINED_FUNCTION_62_1(v42);
      OUTLINED_FUNCTION_6_17(v43, MEMORY[0x1E69E6158]);
      goto LABEL_51;
    case 6:
      v44 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_21_10(v44, v45);
      v46 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
      OUTLINED_FUNCTION_0_29();
      v51 = sub_1B248D0F8(v48, v49, &unk_1B25815B0, v50);
      OUTLINED_FUNCTION_62_1(v51);
      OUTLINED_FUNCTION_20_9(v52, &type metadata for BackingValue);
LABEL_51:
      swift_willThrow();

      break;
    default:

      v23 = OUTLINED_FUNCTION_132_0();
      OUTLINED_FUNCTION_50_3(v23, v24);
      break;
  }

  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_240();
}

void sub_1B24AF05C()
{
  OUTLINED_FUNCTION_105_1();
  if (*(v3 + 16))
  {
    v4 = (v3 + 32);
    v5 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v5, v6, v7);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_119_0();
    while (1)
    {
      v8 = *v4++;
      switch(v8)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v10)
      {
        if (!*(v0 + 16))
        {

LABEL_37:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_38;
        }

        sub_1B2455488(v9);
        OUTLINED_FUNCTION_185();
        if ((v1 & 1) == 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_38:
      OUTLINED_FUNCTION_14_12();
      if (v10)
      {
        goto LABEL_42;
      }
    }
  }

  v11 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v11, v12, v13);
LABEL_42:
  switch(v2)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_44;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v25 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
      OUTLINED_FUNCTION_0_29();
      v30 = sub_1B248D0F8(v27, v28, &unk_1B25815B0, v29);
      OUTLINED_FUNCTION_62_1(v30);
      OUTLINED_FUNCTION_20_9(v31, &type metadata for BackingValue);
      goto LABEL_48;
    default:

LABEL_44:
      v14 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_8_18(v14, v15, v16);
      OUTLINED_FUNCTION_283();
      if ((v17 & 1) == 0)
      {
        goto LABEL_49;
      }

      v18 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
      OUTLINED_FUNCTION_0_29();
      v23 = sub_1B248D0F8(v20, v21, &unk_1B25815B0, v22);
      OUTLINED_FUNCTION_62_1(v23);
      OUTLINED_FUNCTION_6_17(v24, MEMORY[0x1E69E6530]);
LABEL_48:
      swift_willThrow();

LABEL_49:
      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24AF3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_320();
  a31 = v32;
  a32 = v34;
  v86 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = *(v33 + 16);
  a22 = v33;
  if (v42)
  {
    v43 = (v33 + 32);
    v44 = OUTLINED_FUNCTION_33();
    sub_1B24472B8(v44, v45, v46);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v84 = v47;
    v85 = v48;
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v82 = v49;
    v83 = v50;
    OUTLINED_FUNCTION_112_0();
    v81 = v51;
    v52 = v41;
    while (1)
    {
      v53 = *v43++;
      v41 = 0xE700000000000000;
      switch(v53)
      {
        case 1:
          v41 = 0xEA00000000007365;
          OUTLINED_FUNCTION_74_1();
          break;
        case 2:
          v41 = 0xEC00000065646F43;
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          v41 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_71_1();
          break;
        case 4:
          v41 = 0xE900000000000073;
          OUTLINED_FUNCTION_73_1();
          break;
        case 5:
          v41 = 0xE400000000000000;
          break;
        case 6:
          v41 = 0xEE0064657474616DLL;
          OUTLINED_FUNCTION_78_1();
          break;
        case 7:
          v41 = 0xED0000746E65746ELL;
          OUTLINED_FUNCTION_70_1();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          v41 = 0xE400000000000000;
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          v41 = v81;
          break;
        case 11:
          v41 = 0xE200000000000000;
          break;
        case 12:
          v41 = 0xE400000000000000;
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_301();
          break;
        case 15:
          v41 = 0xE800000000000000;
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          v41 = v82;
          break;
        case 17:
          v41 = 0xEC00000073646F69;
          OUTLINED_FUNCTION_69_1();
          break;
        case 18:
          v41 = 0xE500000000000000;
          OUTLINED_FUNCTION_87_0();
          break;
        case 19:
          v41 = 0xEB00000000676E69;
          OUTLINED_FUNCTION_77_1();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_22;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_22:
          v41 = 0xE900000000000065;
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          v41 = v83;
          break;
        case 23:
          v41 = 0xE800000000000000;
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
          OUTLINED_FUNCTION_156_0();
          v41 = v84;
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          v41 = v85;
          break;
        case 26:
          OUTLINED_FUNCTION_156_0();
          v41 = a14;
          break;
        case 27:
          OUTLINED_FUNCTION_156_0();
          v41 = a15;
          break;
        case 28:
          v41 = 0xE400000000000000;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v55)
      {
        if (!*(v52 + 16))
        {

LABEL_39:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_40;
        }

        sub_1B2455488(v54);
        OUTLINED_FUNCTION_160_0();
        if ((v39 & 1) == 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_40:
      OUTLINED_FUNCTION_7_18();
      if (v55)
      {
        goto LABEL_44;
      }
    }
  }

  v56 = OUTLINED_FUNCTION_33();
  sub_1B24472B8(v56, v57, v58);
LABEL_44:
  switch(v37)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_46;
    case 6:
      v72 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v72, v73);
      v74 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
      OUTLINED_FUNCTION_0_29();
      v79 = sub_1B248D0F8(v76, v77, &unk_1B25815B0, v78);
      OUTLINED_FUNCTION_62_1(v79);
      OUTLINED_FUNCTION_20_9(v80, &type metadata for BackingValue);
      goto LABEL_50;
    default:

LABEL_46:
      OUTLINED_FUNCTION_43_2();
      a18 = v41;
      a19 = v39;
      a20 = v37;
      v59 = NSDecimal.init(_:)(&a18);
      if ((v61 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v63 = v62;
        v64 = OUTLINED_FUNCTION_103_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
        OUTLINED_FUNCTION_0_29();
        v69 = sub_1B248D0F8(v66, v67, &unk_1B25815B0, v68);
        v70 = OUTLINED_FUNCTION_4_6(v69);
        *v71 = a22;
        v71[1] = v63;
        OUTLINED_FUNCTION_24_7(v70, v71);
LABEL_50:
        swift_willThrow();
      }

      else
      {
        *v86 = v59;
        *(v86 + 8) = v60;
        *(v86 + 16) = v61;
      }

      OUTLINED_FUNCTION_319();
      return;
  }
}

void sub_1B24AF79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_320();
  a31 = v36;
  a32 = v37;
  OUTLINED_FUNCTION_105_1();
  v39 = *(v38 + 16);
  a22 = v38;
  if (v39)
  {
    v40 = (v38 + 32);
    v41 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v41, v42, v43);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v71 = v44;
    v72 = v45;
    OUTLINED_FUNCTION_112_0();
    v70 = v46;
    OUTLINED_FUNCTION_119_0();
    while (1)
    {
      v47 = *v40++;
      v33 = 0xE700000000000000;
      switch(v47)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          v33 = 0xEC00000065646F43;
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          v33 = v70;
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          v33 = 0xE800000000000000;
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          v33 = v71;
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_22;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_22:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          v33 = v72;
          break;
        case 23:
          v33 = 0xE800000000000000;
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
          OUTLINED_FUNCTION_156_0();
          v33 = a13;
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          v33 = a14;
          break;
        case 26:
          OUTLINED_FUNCTION_156_0();
          v33 = a15;
          break;
        case 27:
          OUTLINED_FUNCTION_156_0();
          v33 = a16;
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v49)
      {
        if (!*(v32 + 16))
        {

LABEL_39:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_40;
        }

        sub_1B2455488(v48);
        OUTLINED_FUNCTION_185();
        if ((v34 & 1) == 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_40:
      OUTLINED_FUNCTION_14_12();
      if (v49)
      {
        goto LABEL_44;
      }
    }
  }

  v50 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v50, v51, v52);
LABEL_44:
  switch(v35)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_46;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v63 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
      OUTLINED_FUNCTION_0_29();
      v68 = sub_1B248D0F8(v65, v66, &unk_1B25815B0, v67);
      OUTLINED_FUNCTION_62_1(v68);
      OUTLINED_FUNCTION_20_9(v69, &type metadata for BackingValue);
      goto LABEL_50;
    default:

LABEL_46:
      v53 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v53, v54, v55);
      a18 = v33;
      a19 = v34;
      a20 = v35;
      if (Bool.init(_:)(&a18) != 2)
      {
        goto LABEL_51;
      }

      v56 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
      OUTLINED_FUNCTION_0_29();
      v61 = sub_1B248D0F8(v58, v59, &unk_1B25815B0, v60);
      OUTLINED_FUNCTION_62_1(v61);
      OUTLINED_FUNCTION_6_17(v62, MEMORY[0x1E69E6370]);
LABEL_50:
      swift_willThrow();

LABEL_51:
      OUTLINED_FUNCTION_319();
      return;
  }
}

void sub_1B24AFAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15)
{
  OUTLINED_FUNCTION_205();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v53 = v22;
  if (*(v15 + 16))
  {
    v23 = (v15 + 32);
    v24 = OUTLINED_FUNCTION_33();
    sub_1B24472B8(v24, v25, v26);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v51 = v27;
    v52 = v28;
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v49 = v29;
    v50 = v30;
    OUTLINED_FUNCTION_112_0();
    v48 = v31;
    v32 = v21;
    while (1)
    {
      v33 = *v23++;
      v21 = 0xE700000000000000;
      switch(v33)
      {
        case 1:
          v21 = 0xEA00000000007365;
          OUTLINED_FUNCTION_74_1();
          break;
        case 2:
          v21 = 0xEC00000065646F43;
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          v21 = 0xEB000000006E6F69;
          OUTLINED_FUNCTION_71_1();
          break;
        case 4:
          v21 = 0xE900000000000073;
          OUTLINED_FUNCTION_73_1();
          break;
        case 5:
          v21 = 0xE400000000000000;
          break;
        case 6:
          v21 = 0xEE0064657474616DLL;
          OUTLINED_FUNCTION_78_1();
          break;
        case 7:
          v21 = 0xED0000746E65746ELL;
          OUTLINED_FUNCTION_70_1();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          v21 = 0xE400000000000000;
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          v21 = v48;
          break;
        case 11:
          v21 = 0xE200000000000000;
          break;
        case 12:
          v21 = 0xE400000000000000;
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_301();
          break;
        case 15:
          v21 = 0xE800000000000000;
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          v21 = v49;
          break;
        case 17:
          v21 = 0xEC00000073646F69;
          OUTLINED_FUNCTION_69_1();
          break;
        case 18:
          v21 = 0xE500000000000000;
          OUTLINED_FUNCTION_87_0();
          break;
        case 19:
          v21 = 0xEB00000000676E69;
          OUTLINED_FUNCTION_77_1();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_22;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_22:
          v21 = 0xE900000000000065;
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          v21 = v50;
          break;
        case 23:
          v21 = 0xE800000000000000;
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
          OUTLINED_FUNCTION_156_0();
          v21 = a14;
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          v21 = a15;
          break;
        case 26:
          OUTLINED_FUNCTION_156_0();
          v21 = v51;
          break;
        case 27:
          OUTLINED_FUNCTION_156_0();
          v21 = v52;
          break;
        case 28:
          v21 = 0xE400000000000000;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v35)
      {
        if (!*(v32 + 16))
        {

LABEL_39:
          OUTLINED_FUNCTION_57_2();
          goto LABEL_40;
        }

        sub_1B2455488(v34);
        OUTLINED_FUNCTION_160_0();
        if ((v19 & 1) == 0)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_11_13();
      }

      else
      {

        OUTLINED_FUNCTION_57_2();
      }

LABEL_40:
      OUTLINED_FUNCTION_7_18();
      if (v35)
      {
        goto LABEL_44;
      }
    }
  }

  v36 = OUTLINED_FUNCTION_33();
  sub_1B24472B8(v36, v37, v38);
LABEL_44:
  switch(v17)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_46;
    case 6:
      v39 = OUTLINED_FUNCTION_138_0();
      OUTLINED_FUNCTION_21_10(v39, v40);
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      OUTLINED_FUNCTION_0_29();
      v46 = sub_1B248D0F8(v43, v44, &unk_1B25815B0, v45);
      OUTLINED_FUNCTION_62_1(v46);
      OUTLINED_FUNCTION_20_9(v47, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_46:
      OUTLINED_FUNCTION_43_2();
      *v53 = v21;
      *(v53 + 8) = v19;
      *(v53 + 16) = v17;
      break;
  }

  OUTLINED_FUNCTION_204();
}

void sub_1B24AFE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_322();
  v7 = v6;
  OUTLINED_FUNCTION_262();
  if (v5)
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v10, v11, v7);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_294();
    OUTLINED_FUNCTION_246();
    v12 = v7;
    while (1)
    {
      v13 = *v9++;
      switch(v13)
      {
        case 2:
          OUTLINED_FUNCTION_233();
          break;
        case 3:
        case 7:
        case 8:
          break;
        case 4:
          OUTLINED_FUNCTION_202();
          break;
        default:
          OUTLINED_FUNCTION_161_0();
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v15)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
LABEL_15:
      v19 = OUTLINED_FUNCTION_29_1();
      sub_1B24C52B4(v19, v20, v12);
      OUTLINED_FUNCTION_246();
      v12 = v7;
      if (!--v5)
      {
        goto LABEL_18;
      }
    }

    if (*(v4 + 16))
    {
      sub_1B2455488(v14);
      OUTLINED_FUNCTION_286();
      if (v7)
      {
        OUTLINED_FUNCTION_189();
        v7 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v17, v18, v7);
LABEL_14:
        v12 = 5;
        goto LABEL_15;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_222();
    goto LABEL_14;
  }

  v21 = OUTLINED_FUNCTION_25_1();
  sub_1B24472B8(v21, v22, v7);
LABEL_18:
  switch(v7)
  {
    case 1:
      v37 = OUTLINED_FUNCTION_107_1();
      v31 = OUTLINED_FUNCTION_4_18(v37, v38, v39);
      v33 = 1;
      goto LABEL_24;
    case 2:
      v28 = OUTLINED_FUNCTION_106_1();
      v31 = OUTLINED_FUNCTION_4_18(v28, v29, v30);
      v33 = 2;
      goto LABEL_24;
    case 3:
      v34 = OUTLINED_FUNCTION_108_1();
      v31 = OUTLINED_FUNCTION_4_18(v34, v35, v36);
      v33 = 3;
LABEL_24:
      sub_1B24C52B4(v31, v32, v33);
      goto LABEL_27;
    case 4:
      v25 = OUTLINED_FUNCTION_25_1();
      v27 = 4;
      goto LABEL_26;
    case 5:
      v25 = OUTLINED_FUNCTION_25_1();
      v27 = 5;
LABEL_26:
      OUTLINED_FUNCTION_2_14(v25, v26, v27);
LABEL_27:
      v40 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_0_29();
      v45 = sub_1B248D0F8(v42, v43, &unk_1B2581730, v44);
      OUTLINED_FUNCTION_62_1(v45);
      OUTLINED_FUNCTION_6_17(v46, MEMORY[0x1E69E6158]);
      goto LABEL_28;
    case 6:
      v47 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v47, v48);
      v49 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_0_29();
      v54 = sub_1B248D0F8(v51, v52, &unk_1B2581730, v53);
      OUTLINED_FUNCTION_62_1(v54);
      OUTLINED_FUNCTION_20_9(v55, &type metadata for BackingValue);
LABEL_28:
      swift_willThrow();

      break;
    default:

      v23 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v23, v24);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_228();
}

void sub_1B24B01A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, char a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_205();
  a29 = v34;
  a30 = v35;
  v81 = v36;
  OUTLINED_FUNCTION_105_1();
  v82 = v37;
  if (*(v37 + 16))
  {
    v38 = (v37 + 32);
    v39 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v39, v40, v41);
    OUTLINED_FUNCTION_112_0();
    a20 = v42;
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    v83 = v43;
    v84 = v44;
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v45 = *v38++;
      v31 = 0xED0000746375646FLL;
      switch(v45)
      {
        case 1:
          OUTLINED_FUNCTION_161_0();
          v31 = v84;
          break;
        case 2:
          OUTLINED_FUNCTION_233();
          v31 = a14;
          break;
        case 3:
          break;
        case 4:
          OUTLINED_FUNCTION_202();
          OUTLINED_FUNCTION_304();
          break;
        case 5:
          OUTLINED_FUNCTION_161_0();
          v31 = a15;
          break;
        case 6:
          OUTLINED_FUNCTION_161_0();
          v31 = a20;
          break;
        case 7:
          OUTLINED_FUNCTION_234();
          break;
        case 8:
          v31 = 0xE400000000000000;
          break;
        default:
          OUTLINED_FUNCTION_161_0();
          v31 = v83;
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v47)
      {
        if (!*(v30 + 16))
        {

LABEL_18:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_19;
        }

        sub_1B2455488(v46);
        OUTLINED_FUNCTION_196();
        if ((v33 & 1) == 0)
        {
          goto LABEL_18;
        }

        OUTLINED_FUNCTION_101_1();
        v31 = *v48;
        v32 = *(v48 + 8);
        v33 = *(v48 + 16);
        v49 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v49, v50, v51);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_19:
      v52 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v52, v53, v54);
      OUTLINED_FUNCTION_143_0();
      if (v47)
      {
        goto LABEL_23;
      }
    }
  }

  v55 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v55, v56, v57);
LABEL_23:
  switch(v33)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_25;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v74 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
      OUTLINED_FUNCTION_0_29();
      v79 = sub_1B248D0F8(v76, v77, &unk_1B2581730, v78);
      OUTLINED_FUNCTION_62_1(v79);
      OUTLINED_FUNCTION_20_9(v80, &type metadata for BackingValue);
      goto LABEL_29;
    default:

LABEL_25:
      v58 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v58, v59, v60);
      a16 = v31;
      a17 = v32;
      a18 = v33;
      v61 = NSDecimal.init(_:)(&a16);
      if ((v63 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v65 = v64;
        v66 = OUTLINED_FUNCTION_103_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v66, v67);
        OUTLINED_FUNCTION_0_29();
        v71 = sub_1B248D0F8(v68, v69, &unk_1B2581730, v70);
        v72 = OUTLINED_FUNCTION_4_6(v71);
        *v73 = v82;
        v73[1] = v65;
        OUTLINED_FUNCTION_24_7(v72, v73);
LABEL_29:
        swift_willThrow();
      }

      else
      {
        *v81 = v61;
        *(v81 + 8) = v62;
        *(v81 + 16) = v63;
      }

      OUTLINED_FUNCTION_204();
      return;
  }
}

void sub_1B24B0474()
{
  OUTLINED_FUNCTION_25_7();
  v54 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770, &unk_1B257C310);
  OUTLINED_FUNCTION_2_2(v5);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_6();
  v55 = v7;
  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = (v0 + 32);
    v10 = OUTLINED_FUNCTION_34();
    sub_1B24472B8(v10, v11, v4);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_294();
    v12 = v1;
    v13 = v4;
    while (1)
    {
      v14 = *v9++;
      switch(v14)
      {
        case 2:
          OUTLINED_FUNCTION_233();
          break;
        case 3:
        case 8:
          break;
        case 4:
          OUTLINED_FUNCTION_202();
          OUTLINED_FUNCTION_304();
          break;
        case 7:
          OUTLINED_FUNCTION_234();
          break;
        default:
          OUTLINED_FUNCTION_161_0();
          break;
      }

      OUTLINED_FUNCTION_290();
      if (v16)
      {
        if (!*(v12 + 16))
        {

LABEL_14:
          v1 = 0;
          v4 = 6;
          goto LABEL_15;
        }

        sub_1B2455488(v15);
        OUTLINED_FUNCTION_249();
        if ((v13 & 1) == 0)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_189();
        v1 = *v17;
        v4 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_34();
        sub_1B24472B8(v18, v19, v4);
      }

      else
      {

        v1 = 0;
        v4 = 6;
      }

LABEL_15:
      v20 = OUTLINED_FUNCTION_167_0();
      sub_1B24C52B4(v20, v21, v22);
      v12 = v1;
      v13 = v4;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }
  }

  v23 = OUTLINED_FUNCTION_34();
  sub_1B24472B8(v23, v24, v4);
LABEL_18:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_20;
    case 4:
    case 5:

LABEL_20:
      v25 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_2_14(v25, v26, v4);
      v27 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v27, v28, v4);
      goto LABEL_21;
    case 6:
      v44 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_21_10(v44, v45);
      v46 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
      OUTLINED_FUNCTION_0_29();
      v51 = sub_1B248D0F8(v48, v49, &unk_1B2581730, v50);
      OUTLINED_FUNCTION_62_1(v51);
      OUTLINED_FUNCTION_20_9(v52, &type metadata for BackingValue);
      goto LABEL_22;
    default:

      v39 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_50_3(v39, v40);
      OUTLINED_FUNCTION_34();
      sub_1B256D37C();
      v41 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v41, v42, 0);
      v43 = sub_1B256D3CC();
      OUTLINED_FUNCTION_238(v43);
      if (v16)
      {
        sub_1B243E88C(v55, &qword_1EB7D1770, &unk_1B257C310);
LABEL_21:
        v29 = sub_1B256D3CC();
        v30 = OUTLINED_FUNCTION_89();
        __swift_instantiateConcreteTypeFromMangledNameV2(v30, v31);
        OUTLINED_FUNCTION_1_24();
        OUTLINED_FUNCTION_9_9();
        v36 = sub_1B248D0F8(v32, v33, v34, v35);
        v37 = OUTLINED_FUNCTION_4_6(v36);
        *v38 = v0;
        v38[1] = v29;
        OUTLINED_FUNCTION_24_7(v37, v38);
LABEL_22:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
        (*(v53 + 32))(v54, v55, v1);
      }

      OUTLINED_FUNCTION_24_6();
      return;
  }
}

uint64_t sub_1B24B083C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v9 = v6;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      v12 = *v8++;
      v13 = sub_1B24BB0F0(v12);
      if (v11 == 5)
      {
        break;
      }

      v6 = 0;
      v5 = 0;
      v4 = 6;
LABEL_11:
      sub_1B24C52B4(v9, v10, v11);
      v9 = v6;
      v10 = v5;
      v11 = v4;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + 16))
    {
      v14 = sub_1B2455488(v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(v9 + 56) + 24 * v14;
        v6 = *v17;
        v5 = *(v17 + 8);
        v4 = *(v17 + 16);
        sub_1B24472B8(*v17, v5, v4);
LABEL_10:
        v11 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = 0;
    v5 = 0;
    v4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v4)
  {
    case 1:
      sub_1B24472E0(v6, v5, 1);
      sub_1B24472E0(0, 0, 6);
      v21 = v6;
      v22 = v5;
      v23 = 1;
      goto LABEL_20;
    case 2:
      sub_1B24472E0(v6, v5, 2);
      sub_1B24472E0(0, 0, 6);
      v21 = v6;
      v22 = v5;
      v23 = 2;
      goto LABEL_20;
    case 3:
      sub_1B24472E0(v6, v5, 3);
      sub_1B24472E0(0, 0, 6);
      v21 = v6;
      v22 = v5;
      v23 = 3;
LABEL_20:
      sub_1B24C52B4(v21, v22, v23);
      goto LABEL_23;
    case 4:
      v18 = v6;
      v19 = v5;
      v20 = 4;
      goto LABEL_22;
    case 5:
      v18 = v6;
      v19 = v5;
      v20 = 5;
LABEL_22:
      sub_1B24472E0(v18, v19, v20);
      sub_1B24472E0(0, 0, 6);
LABEL_23:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      v24 = MEMORY[0x1E69E6158];
      *v25 = a1;
      *(v25 + 8) = v24;
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 1;
      goto LABEL_24;
    case 6:
      sub_1B24472E0(v6, v5, 6);
      sub_1B24472E0(0, 0, 6);
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v27 = a1;
      *(v27 + 8) = &type metadata for BackingValue;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
LABEL_24:
      swift_willThrow();

      break;
    default:

      sub_1B24472E0(v6, v5, 0);
      sub_1B24472E0(0, 0, 6);
      break;
  }

  return v6;
}

unsigned __int8 *sub_1B24B0BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v33 = a1;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      v14 = sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v15 = sub_1B2455488(v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(v10 + 56) + 24 * v15;
        v7 = *v18;
        v6 = *(v18 + 8);
        v5 = *(v18 + 16);
        sub_1B24472B8(*v18, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
      sub_1B24472E0(v7, v6, 1);
      sub_1B24472E0(0, 0, 6);
      v23 = v7;
      v24 = v6;
      v25 = 1;
      goto LABEL_21;
    case 2:
      sub_1B24472E0(v7, v6, 2);
      sub_1B24472E0(0, 0, 6);
      v23 = v7;
      v24 = v6;
      v25 = 2;
      goto LABEL_21;
    case 3:
      sub_1B24472E0(v7, v6, 3);
      sub_1B24472E0(0, 0, 6);
      v23 = v7;
      v24 = v6;
      v25 = 3;
LABEL_21:
      sub_1B24C52B4(v23, v24, v25);
      goto LABEL_24;
    case 4:
      v20 = v7;
      v21 = v6;
      v22 = 4;
      goto LABEL_23;
    case 5:
      v20 = v7;
      v21 = v6;
      v22 = 5;
LABEL_23:
      sub_1B24472E0(v20, v21, v22);
      sub_1B24472E0(0, 0, 6);
      goto LABEL_24;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v27 = v33;
      *(v27 + 8) = &type metadata for BackingValue;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      goto LABEL_25;
    default:

      sub_1B24472E0(v7, v6, 0);
      sub_1B24472E0(0, 0, 6);
      result = Product.SubscriptionPeriod.init(from8601String:)(v7, v6, v31);
      if (v30)
      {

LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
        sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
        swift_allocError();
        *v26 = v33;
        *(v26 + 8) = &type metadata for Product.SubscriptionPeriod;
        *(v26 + 16) = 0;
        *(v26 + 24) = 0;
        *(v26 + 32) = 1;
LABEL_25:
        swift_willThrow();
      }

      else
      {
        v28 = v32;
        *a5 = v31[0];
        *(a5 + 8) = v28;
      }

      return result;
  }
}

uint64_t sub_1B24B0F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v9 = v6;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      v12 = *v8++;
      v13 = sub_1B24BB0F0(v12);
      if (v11 == 5)
      {
        break;
      }

      v6 = 0;
      v5 = 0;
      v4 = 6;
LABEL_11:
      sub_1B24C52B4(v9, v10, v11);
      v9 = v6;
      v10 = v5;
      v11 = v4;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + 16))
    {
      v14 = sub_1B2455488(v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(v9 + 56) + 24 * v14;
        v6 = *v17;
        v5 = *(v17 + 8);
        v4 = *(v17 + 16);
        sub_1B24472B8(*v17, v5, v4);
LABEL_10:
        v11 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = 0;
    v5 = 0;
    v4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v6, v5, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v23 = a1;
      *(v23 + 8) = &type metadata for BackingValue;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v6, v5, v4);
      sub_1B24472E0(0, 0, 6);
      result = sub_1B24B6FD8(v6, v5, v4, v18);
      if ((v20 & 1) == 0)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      v21 = MEMORY[0x1E69E76D8];
      *v22 = a1;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 1;
LABEL_20:
      swift_willThrow();
  }
}

uint64_t sub_1B24B1270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      v14 = sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v15 = sub_1B2455488(v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(v10 + 56) + 24 * v15;
        v7 = *v18;
        v6 = *(v18 + 8);
        v5 = *(v18 + 16);
        sub_1B24472B8(*v18, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
      sub_1B24472E0(v7, v6, 1);
      sub_1B24472E0(0, 0, 6);
      v26 = v7;
      v27 = v6;
      v28 = 1;
      goto LABEL_21;
    case 2:
      sub_1B24472E0(v7, v6, 2);
      sub_1B24472E0(0, 0, 6);
      v26 = v7;
      v27 = v6;
      v28 = 2;
      goto LABEL_21;
    case 3:
      sub_1B24472E0(v7, v6, 3);
      sub_1B24472E0(0, 0, 6);
      v26 = v7;
      v27 = v6;
      v28 = 3;
LABEL_21:
      sub_1B24C52B4(v26, v27, v28);
      goto LABEL_24;
    case 4:
      v23 = v7;
      v24 = v6;
      v25 = 4;
      goto LABEL_23;
    case 5:
      v23 = v7;
      v24 = v6;
      v25 = 5;
LABEL_23:
      sub_1B24472E0(v23, v24, v25);
      sub_1B24472E0(0, 0, 6);
      goto LABEL_24;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v31 = a1;
      *(v31 + 8) = &type metadata for BackingValue;
      *(v31 + 16) = 0;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0;
      goto LABEL_25;
    default:

      sub_1B24472E0(v7, v6, 0);
      sub_1B24472E0(0, 0, 6);
      v19 = sub_1B256D1AC();
      v21 = v20;
      result = sub_1B24C52B4(v7, v6, 0);
      if (v21 >> 60 == 15)
      {
LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
        sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
        swift_allocError();
        v29 = MEMORY[0x1E6969080];
        *v30 = a1;
        *(v30 + 8) = v29;
        *(v30 + 16) = 0;
        *(v30 + 24) = 0;
        *(v30 + 32) = 1;
LABEL_25:
        swift_willThrow();
      }

      else
      {
        *a5 = v19;
        a5[1] = v21;
      }

      return result;
  }
}

uint64_t sub_1B24B163C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770, &unk_1B257C310);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = &v28 - v10;
  v11 = *(a1 + 16);
  v30 = a1;
  if (v11)
  {
    v12 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v13 = a2;
    v14 = a3;
    v15 = a4;
    while (1)
    {
      v16 = *v12++;
      v17 = sub_1B24BB0F0(v16);
      if (v15 == 5)
      {
        break;
      }

      a2 = 0;
      a3 = 0;
      a4 = 6;
LABEL_11:
      sub_1B24C52B4(v13, v14, v15);
      v13 = a2;
      v14 = a3;
      v15 = a4;
      if (!--v11)
      {
        goto LABEL_14;
      }
    }

    if (*(v13 + 16))
    {
      v18 = sub_1B2455488(v17);
      v20 = v19;

      if (v20)
      {
        v21 = *(v13 + 56) + 24 * v18;
        a2 = *v21;
        a3 = *(v21 + 8);
        a4 = *(v21 + 16);
        sub_1B24472B8(*v21, a3, a4);
LABEL_10:
        v15 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    a2 = 0;
    a3 = 0;
    a4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 4:
    case 5:

LABEL_16:
      sub_1B24472E0(a2, a3, a4);
      sub_1B24472E0(0, 0, 6);
      sub_1B24C52B4(a2, a3, a4);
      goto LABEL_17;
    case 6:
      sub_1B24472E0(a2, a3, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v27 = v30;
      *(v27 + 8) = &type metadata for BackingValue;
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0;
      goto LABEL_18;
    default:

      sub_1B24472E0(a2, a3, 0);
      sub_1B24472E0(0, 0, 6);
      v25 = v29;
      sub_1B256D37C();
      sub_1B24C52B4(a2, a3, 0);
      v26 = sub_1B256D3CC();
      if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
      {
        return (*(*(v26 - 8) + 32))(v28, v25, v26);
      }

      sub_1B243E88C(v25, &qword_1EB7D1770, &unk_1B257C310);
LABEL_17:
      v22 = sub_1B256D3CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v23 = v30;
      *(v23 + 8) = v22;
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 1;
LABEL_18:
      swift_willThrow();
  }
}

void sub_1B24B1A34(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, void *a6@<X8>)
{
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (a1 + 32);
    v11 = OUTLINED_FUNCTION_11_6();
    sub_1B24472B8(v11, v12, a4);
    v13 = a2;
    v14 = a4;
    while (1)
    {
      v15 = *v10++;
      sub_1B24BB0F0(v15);
      OUTLINED_FUNCTION_290();
      if (v17)
      {
        break;
      }

      a2 = 0;
      a3 = 0;
      a4 = 6;
LABEL_11:
      v21 = OUTLINED_FUNCTION_138_0();
      sub_1B24C52B4(v21, v22, v14);
      v13 = a2;
      v14 = a4;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }

    if (*(v13 + 16))
    {
      sub_1B2455488(v16);
      OUTLINED_FUNCTION_249();
      if (v14)
      {
        v18 = *(v13 + 56) + 24 * v13;
        a2 = *v18;
        a3 = *(v18 + 8);
        a4 = *(v18 + 16);
        v19 = OUTLINED_FUNCTION_11_6();
        sub_1B24472B8(v19, v20, a4);
LABEL_10:
        v14 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    a2 = 0;
    a3 = 0;
    a4 = 6;
    goto LABEL_10;
  }

  v23 = OUTLINED_FUNCTION_11_6();
  sub_1B24472B8(v23, v24, a4);
LABEL_14:
  switch(a4)
  {
    case 1:
      OUTLINED_FUNCTION_159_0();
      OUTLINED_FUNCTION_8_18(v39, v40, v41);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_162_0();
      OUTLINED_FUNCTION_8_18(v30, v31, v32);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_20;
    case 3:
      OUTLINED_FUNCTION_163_0();
      OUTLINED_FUNCTION_8_18(v36, v37, v38);
      OUTLINED_FUNCTION_163_0();
LABEL_20:
      sub_1B24C52B4(v33, v34, v35);
      goto LABEL_23;
    case 4:
      v27 = OUTLINED_FUNCTION_11_6();
      v29 = 4;
      goto LABEL_22;
    case 5:
      v27 = OUTLINED_FUNCTION_11_6();
      v29 = 5;
LABEL_22:
      OUTLINED_FUNCTION_2_14(v27, v28, v29);
LABEL_23:
      v42 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      OUTLINED_FUNCTION_0_29();
      v47 = sub_1B248D0F8(v44, v45, &unk_1B2580AD0, v46);
      OUTLINED_FUNCTION_4_6(v47);
      OUTLINED_FUNCTION_6_17(v48, a5);
      goto LABEL_24;
    case 6:
      v49 = OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_21_10(v49, v50);
      v51 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
      OUTLINED_FUNCTION_0_29();
      v56 = sub_1B248D0F8(v53, v54, &unk_1B2580AD0, v55);
      OUTLINED_FUNCTION_62_1(v56);
      OUTLINED_FUNCTION_20_9(v57, &type metadata for BackingValue);
LABEL_24:
      swift_willThrow();

      break;
    default:

      v25 = OUTLINED_FUNCTION_11_6();
      OUTLINED_FUNCTION_50_3(v25, v26);
      *a6 = a2;
      a6[1] = a3;
      break;
  }

  OUTLINED_FUNCTION_190();
}

uint64_t sub_1B24B1C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v29 = a1;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      v14 = sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v15 = sub_1B2455488(v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(v10 + 56) + 24 * v15;
        v7 = *v18;
        v6 = *(v18 + 8);
        v5 = *(v18 + 16);
        sub_1B24472B8(*v18, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v25 = v29;
      *(v25 + 8) = &type metadata for BackingValue;
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v7, v6, v5);
      sub_1B24472E0(0, 0, 6);
      v27[0] = v7;
      v27[1] = v6;
      v28 = v5;
      result = NSDecimal.init(_:)(v27);
      if ((v21 & 0x100000000) != 0)
      {
        type metadata accessor for Decimal(0);
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
        sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
        swift_allocError();
        *v24 = v29;
        *(v24 + 8) = v23;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = 1;
LABEL_20:
        swift_willThrow();
      }

      else
      {
        *a5 = result;
        *(a5 + 8) = v20;
        *(a5 + 16) = v21;
      }

      return result;
  }
}

uint64_t sub_1B24B1F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = sub_1B256D45C();
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v12 = a2;
    v13 = a3;
    v14 = a4;
    while (1)
    {
      v15 = *v11++;
      v16 = sub_1B24BB0F0(v15);
      if (v14 == 5)
      {
        break;
      }

      a2 = 0;
      a3 = 0;
      a4 = 6;
LABEL_11:
      sub_1B24C52B4(v12, v13, v14);
      v12 = a2;
      v13 = a3;
      v14 = a4;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    if (*(v12 + 16))
    {
      v17 = sub_1B2455488(v16);
      v19 = v18;

      if (v19)
      {
        v20 = *(v12 + 56) + 24 * v17;
        a2 = *v20;
        a3 = *(v20 + 8);
        a4 = *(v20 + 16);
        sub_1B24472B8(*v20, a3, a4);
LABEL_10:
        v14 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    a2 = 0;
    a3 = 0;
    a4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 4:
    case 5:

LABEL_16:
      sub_1B24472E0(a2, a3, a4);
      sub_1B24472E0(0, 0, 6);
      sub_1B24C52B4(a2, a3, a4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      v21 = v29;
      *v22 = a1;
      *(v22 + 8) = v21;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      *(v22 + 32) = 1;
      goto LABEL_17;
    case 6:
      sub_1B24472E0(a2, a3, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v25 = a1;
      *(v25 + 8) = &type metadata for BackingValue;
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0;
LABEL_17:
      swift_willThrow();

      break;
    default:

      sub_1B24472E0(a2, a3, 0);
      sub_1B24472E0(0, 0, 6);
      v24 = v26;
      sub_1B256D44C();
      result = (*(v27 + 32))(v28, v24, v29);
      break;
  }

  return result;
}

uint64_t sub_1B24B2334(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v25 = a1;
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v9 = v6;
    v10 = v5;
    v11 = v4;
    while (1)
    {
      v12 = *v8++;
      v13 = sub_1B24BB0F0(v12);
      if (v11 == 5)
      {
        break;
      }

      v6 = 0;
      v5 = 0;
      v4 = 6;
LABEL_11:
      sub_1B24C52B4(v9, v10, v11);
      v9 = v6;
      v10 = v5;
      v11 = v4;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    if (*(v9 + 16))
    {
      v14 = sub_1B2455488(v13);
      v16 = v15;

      if (v16)
      {
        v17 = *(v9 + 56) + 24 * v14;
        v6 = *v17;
        v5 = *(v17 + 8);
        v4 = *(v17 + 16);
        sub_1B24472B8(*v17, v5, v4);
LABEL_10:
        v11 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v6 = 0;
    v5 = 0;
    v4 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v6, v5, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v21 = v25;
      *(v21 + 8) = &type metadata for BackingValue;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v6, v5, v4);
      sub_1B24472E0(0, 0, 6);
      v23[0] = v6;
      v23[1] = v5;
      v24 = v4;
      v18 = Bool.init(_:)(v23);
      if (v18 != 2)
      {
        return v18 & 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      v19 = MEMORY[0x1E69E6370];
      *v20 = v25;
      *(v20 + 8) = v19;
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 1;
LABEL_20:
      swift_willThrow();

      return v18 & 1;
  }
}

void *sub_1B24B2624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = *(a1 + 16);
  v26 = a1;
  if (v8)
  {
    v9 = (a1 + 32);
    sub_1B24472B8(a2, a3, a4);
    v10 = v7;
    v11 = v6;
    v12 = v5;
    while (1)
    {
      v13 = *v9++;
      v14 = sub_1B24BB0F0(v13);
      if (v12 == 5)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v5 = 6;
LABEL_11:
      sub_1B24C52B4(v10, v11, v12);
      v10 = v7;
      v11 = v6;
      v12 = v5;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    if (*(v10 + 16))
    {
      v15 = sub_1B2455488(v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(v10 + 56) + 24 * v15;
        v7 = *v18;
        v6 = *(v18 + 8);
        v5 = *(v18 + 16);
        sub_1B24472B8(*v18, v6, v5);
LABEL_10:
        v12 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 0;
    v6 = 0;
    v5 = 6;
    goto LABEL_10;
  }

  sub_1B24472B8(a2, a3, a4);
LABEL_14:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      sub_1B24472E0(v7, v6, 6);
      sub_1B24472E0(0, 0, 6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v21 = v26;
      *(v21 + 8) = &type metadata for BackingValue;
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0;
      goto LABEL_20;
    default:

LABEL_16:
      sub_1B24472E0(v7, v6, v5);
      sub_1B24472E0(0, 0, 6);
      v23[0] = v7;
      v23[1] = v6;
      LOBYTE(v23[2]) = v5;
      sub_1B2499E2C();
      memcpy(__dst, __src, 0x98uLL);
      if (sub_1B249EA84(__dst) != 1)
      {
        return memcpy(a5, __src, 0x98uLL);
      }

      memcpy(v23, __src, sizeof(v23));
      sub_1B243E88C(v23, &qword_1EB7D17A8, &qword_1B2580AE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1798, &unk_1B2580AD0);
      sub_1B248D0F8(&unk_1EB7D1970, &qword_1EB7D1798, &unk_1B2580AD0, &unk_1B2578494);
      swift_allocError();
      *v19 = v26;
      *(v19 + 8) = &type metadata for Transaction.AdvancedCommerceInfo;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 1;
LABEL_20:
      swift_willThrow();
  }
}

void sub_1B24B2960(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = OUTLINED_FUNCTION_85_0();
    sub_1B24472B8(v12, v13, v14);
    v15 = a2;
    v16 = a3;
    v17 = a4;
    while (1)
    {
      v18 = *v11++;
      sub_1B24BB0F0(v18);
      v20 = v19;
      OUTLINED_FUNCTION_197();
      if (v22)
      {
        break;
      }

      OUTLINED_FUNCTION_310();
      a4 = 6;
LABEL_11:
      sub_1B24C52B4(v15, v16, v17);
      v15 = a2;
      v16 = v20;
      v17 = a4;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    if (*(v15 + 16))
    {
      a2 = v15;
      sub_1B2455488(v21);
      OUTLINED_FUNCTION_285();
      if (v17)
      {
        v23 = *(v15 + 56) + 24 * v15;
        a2 = *v23;
        v20 = *(v23 + 8);
        a4 = *(v23 + 16);
        v24 = OUTLINED_FUNCTION_85_0();
        sub_1B24472B8(v24, v25, v26);
LABEL_10:
        v17 = 5;
        goto LABEL_11;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_310();
    a4 = 6;
    goto LABEL_10;
  }

  v27 = OUTLINED_FUNCTION_85_0();
  sub_1B24472B8(v27, v28, v29);
LABEL_14:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_16;
    case 6:
      v41 = OUTLINED_FUNCTION_103_0();
      OUTLINED_FUNCTION_21_10(v41, v42);
      v43 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
      OUTLINED_FUNCTION_0_29();
      v48 = sub_1B248D0F8(v45, v46, &unk_1B2580AD0, v47);
      OUTLINED_FUNCTION_62_1(v48);
      OUTLINED_FUNCTION_20_9(v49, &type metadata for BackingValue);
      goto LABEL_20;
    default:

LABEL_16:
      v30 = OUTLINED_FUNCTION_85_0();
      OUTLINED_FUNCTION_2_14(v30, v31, v32);
      OUTLINED_FUNCTION_103_0();
      sub_1B24B6BE8();
      if ((v33 & 1) == 0)
      {
        goto LABEL_21;
      }

      v34 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
      OUTLINED_FUNCTION_0_29();
      v39 = sub_1B248D0F8(v36, v37, &unk_1B2580AD0, v38);
      OUTLINED_FUNCTION_62_1(v39);
      OUTLINED_FUNCTION_6_17(v40, a7);
LABEL_20:
      swift_willThrow();

LABEL_21:
      OUTLINED_FUNCTION_190();
      return;
  }
}

void sub_1B24B2B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_144_0();
  if (v7)
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v10, v11, v12);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v13 = *v9++;
      switch(v13)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_267();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_268();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v15)
      {
        if (!*(v4 + 16))
        {

LABEL_19:
          OUTLINED_FUNCTION_86();
          goto LABEL_20;
        }

        sub_1B2455488(v14);
        OUTLINED_FUNCTION_195();
        if ((v6 & 1) == 0)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_58_1();
        v5 = *(v16 + 8);
        v6 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v17, v18, v19);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_20:
      v20 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v20, v21, v22);
      OUTLINED_FUNCTION_100_1();
      if (v15)
      {
        goto LABEL_24;
      }
    }
  }

  v23 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v23, v24, v25);
LABEL_24:
  switch(v6)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_26;
    case 6:
      v39 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v39, v40);
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      OUTLINED_FUNCTION_0_29();
      v46 = sub_1B248D0F8(v43, v44, &qword_1B2581720, v45);
      OUTLINED_FUNCTION_62_1(v46);
      OUTLINED_FUNCTION_20_9(v47, &type metadata for BackingValue);
      goto LABEL_30;
    default:

LABEL_26:
      v26 = OUTLINED_FUNCTION_54_2();
      v29 = OUTLINED_FUNCTION_3_22(v26, v27, v28);
      sub_1B24B6FD8(v29, v5, v6, v30);
      if ((v31 & 1) == 0)
      {
        goto LABEL_31;
      }

      v32 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
      OUTLINED_FUNCTION_0_29();
      v37 = sub_1B248D0F8(v34, v35, &qword_1B2581720, v36);
      OUTLINED_FUNCTION_62_1(v37);
      OUTLINED_FUNCTION_6_17(v38, MEMORY[0x1E69E76D8]);
LABEL_30:
      swift_willThrow();

LABEL_31:
      OUTLINED_FUNCTION_204();
      return;
  }
}

void sub_1B24B2E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_205();
  v7 = v6;
  OUTLINED_FUNCTION_262();
  if (v5)
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v10, v11, v7);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_246();
    v12 = v7;
    while (1)
    {
      v13 = *v9++;
      switch(v13)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v15)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
LABEL_21:
      v19 = OUTLINED_FUNCTION_29_1();
      sub_1B24C52B4(v19, v20, v12);
      OUTLINED_FUNCTION_246();
      v12 = v7;
      if (!--v5)
      {
        goto LABEL_24;
      }
    }

    if (*(v4 + 16))
    {
      sub_1B2455488(v14);
      OUTLINED_FUNCTION_286();
      if (v7)
      {
        OUTLINED_FUNCTION_189();
        v7 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v17, v18, v7);
LABEL_20:
        v12 = 5;
        goto LABEL_21;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_222();
    goto LABEL_20;
  }

  v21 = OUTLINED_FUNCTION_25_1();
  sub_1B24472B8(v21, v22, v7);
LABEL_24:
  switch(v7)
  {
    case 1:
      v37 = OUTLINED_FUNCTION_107_1();
      v31 = OUTLINED_FUNCTION_4_18(v37, v38, v39);
      v33 = 1;
      goto LABEL_30;
    case 2:
      v28 = OUTLINED_FUNCTION_106_1();
      v31 = OUTLINED_FUNCTION_4_18(v28, v29, v30);
      v33 = 2;
      goto LABEL_30;
    case 3:
      v34 = OUTLINED_FUNCTION_108_1();
      v31 = OUTLINED_FUNCTION_4_18(v34, v35, v36);
      v33 = 3;
LABEL_30:
      sub_1B24C52B4(v31, v32, v33);
      goto LABEL_33;
    case 4:
      v25 = OUTLINED_FUNCTION_25_1();
      v27 = 4;
      goto LABEL_32;
    case 5:
      v25 = OUTLINED_FUNCTION_25_1();
      v27 = 5;
LABEL_32:
      OUTLINED_FUNCTION_2_14(v25, v26, v27);
LABEL_33:
      v40 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_0_29();
      v45 = sub_1B248D0F8(v42, v43, &qword_1B2581720, v44);
      OUTLINED_FUNCTION_62_1(v45);
      OUTLINED_FUNCTION_6_17(v46, MEMORY[0x1E69E6158]);
      goto LABEL_34;
    case 6:
      v47 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v47, v48);
      v49 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_0_29();
      v54 = sub_1B248D0F8(v51, v52, &qword_1B2581720, v53);
      OUTLINED_FUNCTION_62_1(v54);
      OUTLINED_FUNCTION_20_9(v55, &type metadata for BackingValue);
LABEL_34:
      swift_willThrow();

      break;
    default:

      v23 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v23, v24);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_204();
}

void sub_1B24B31F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_320();
  v59 = v6;
  v8 = v7;
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = (v5 + 32);
    v11 = OUTLINED_FUNCTION_30_0();
    sub_1B24472B8(v11, v12, v8);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_252();
    v13 = v8;
    while (1)
    {
      v14 = *v10++;
      switch(v14)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_267();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_268();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v16)
      {
        break;
      }

      v8 = 6;
LABEL_21:
      v20 = OUTLINED_FUNCTION_153();
      sub_1B24C52B4(v20, v21, v13);
      OUTLINED_FUNCTION_252();
      v13 = v8;
      if (!--v9)
      {
        goto LABEL_24;
      }
    }

    if (*(v4 + 16))
    {
      sub_1B2455488(v15);
      OUTLINED_FUNCTION_287();
      if (v8)
      {
        OUTLINED_FUNCTION_173();
        v8 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_30_0();
        sub_1B24472B8(v18, v19, v8);
LABEL_20:
        v13 = 5;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v8 = 6;
    goto LABEL_20;
  }

  v22 = OUTLINED_FUNCTION_30_0();
  sub_1B24472B8(v22, v23, v8);
LABEL_24:
  switch(v8)
  {
    case 1:
      v41 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v41, v42, 1);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_31;
    case 2:
      v34 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v34, v35, 2);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_31;
    case 3:
      v39 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v39, v40, 3);
      OUTLINED_FUNCTION_163_0();
LABEL_31:
      sub_1B24C52B4(v36, v37, v38);
      goto LABEL_34;
    case 4:
      v31 = OUTLINED_FUNCTION_30_0();
      v33 = 4;
      goto LABEL_33;
    case 5:
      v31 = OUTLINED_FUNCTION_30_0();
      v33 = 5;
LABEL_33:
      OUTLINED_FUNCTION_2_14(v31, v32, v33);
      goto LABEL_34;
    case 6:
      v50 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_10(v50, v51);
      v52 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v52, v53);
      OUTLINED_FUNCTION_0_29();
      v57 = sub_1B248D0F8(v54, v55, &qword_1B2581720, v56);
      OUTLINED_FUNCTION_62_1(v57);
      OUTLINED_FUNCTION_20_9(v58, &type metadata for BackingValue);
      goto LABEL_35;
    default:

      v24 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v24, v25, 0);
      v26 = sub_1B256D1AC();
      v28 = v27;
      v29 = OUTLINED_FUNCTION_30_0();
      sub_1B24C52B4(v29, v30, 0);
      if (v28 >> 60 == 15)
      {
LABEL_34:
        v43 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
        OUTLINED_FUNCTION_0_29();
        v48 = sub_1B248D0F8(v45, v46, &qword_1B2581720, v47);
        OUTLINED_FUNCTION_62_1(v48);
        OUTLINED_FUNCTION_6_17(v49, MEMORY[0x1E6969080]);
LABEL_35:
        swift_willThrow();
      }

      else
      {
        *v59 = v26;
        v59[1] = v28;
      }

      OUTLINED_FUNCTION_319();
      return;
  }
}

void sub_1B24B35B4()
{
  OUTLINED_FUNCTION_25_7();
  v57 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_253();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770, &unk_1B257C310);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_6();
  v58 = v8;
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = (v0 + 32);
    v11 = OUTLINED_FUNCTION_84_1();
    sub_1B24472B8(v11, v12, v13);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_315();
    OUTLINED_FUNCTION_296();
    v14 = v5;
    while (1)
    {
      v15 = *v10++;
      switch(v15)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_290();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_215();
LABEL_21:
      v22 = OUTLINED_FUNCTION_138_0();
      sub_1B24C52B4(v22, v23, v14);
      OUTLINED_FUNCTION_296();
      v14 = v5;
      if (!--v9)
      {
        goto LABEL_24;
      }
    }

    if (*(v2 + 16))
    {
      v1 = v2;
      sub_1B2455488(v16);
      OUTLINED_FUNCTION_249();
      if (v14)
      {
        OUTLINED_FUNCTION_189();
        v1 = *v18;
        v5 = *(v18 + 16);
        v19 = OUTLINED_FUNCTION_84_1();
        sub_1B24472B8(v19, v20, v21);
LABEL_20:
        v14 = 5;
        goto LABEL_21;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_215();
    goto LABEL_20;
  }

  v24 = OUTLINED_FUNCTION_84_1();
  sub_1B24472B8(v24, v25, v26);
LABEL_24:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_26;
    case 4:
    case 5:

LABEL_26:
      v27 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_2_14(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v30, v31, v5);
      goto LABEL_27;
    case 6:
      v47 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_21_10(v47, v48);
      v49 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_0_29();
      v54 = sub_1B248D0F8(v51, v52, &qword_1B2581720, v53);
      OUTLINED_FUNCTION_62_1(v54);
      OUTLINED_FUNCTION_20_9(v55, &type metadata for BackingValue);
      goto LABEL_28;
    default:

      v42 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_50_3(v42, v43);
      OUTLINED_FUNCTION_34();
      sub_1B256D37C();
      v44 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v44, v45, 0);
      v46 = sub_1B256D3CC();
      OUTLINED_FUNCTION_238(v46);
      if (v17)
      {
        sub_1B243E88C(v58, &qword_1EB7D1770, &unk_1B257C310);
LABEL_27:
        v32 = sub_1B256D3CC();
        v33 = OUTLINED_FUNCTION_89();
        __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
        OUTLINED_FUNCTION_1_24();
        OUTLINED_FUNCTION_9_9();
        v39 = sub_1B248D0F8(v35, v36, v37, v38);
        v40 = OUTLINED_FUNCTION_4_6(v39);
        *v41 = v0;
        v41[1] = v32;
        OUTLINED_FUNCTION_24_7(v40, v41);
LABEL_28:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
        (*(v56 + 32))(v57, v58, v1);
      }

      OUTLINED_FUNCTION_24_6();
      return;
  }
}

void sub_1B24B39C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_144_0();
  if (v6)
  {
    v8 = (v7 + 32);
    v9 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v9, v10, v11);
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v12 = *v8++;
      switch(v12)
      {
        case 1:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 2:
        case 6:
          OUTLINED_FUNCTION_137_0();
          break;
        case 3:
          OUTLINED_FUNCTION_135_0();
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          break;
        case 7:
          OUTLINED_FUNCTION_64_1();
          break;
        case 8:
        case 12:
          OUTLINED_FUNCTION_111_0();
          break;
        case 9:
          OUTLINED_FUNCTION_109_1();
          OUTLINED_FUNCTION_267();
          break;
        case 10:
          OUTLINED_FUNCTION_63_1();
          break;
        case 11:
          OUTLINED_FUNCTION_93_1();
          OUTLINED_FUNCTION_268();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v14)
      {
        if (!*(v4 + 16))
        {

LABEL_19:
          OUTLINED_FUNCTION_86();
          goto LABEL_20;
        }

        sub_1B2455488(v13);
        OUTLINED_FUNCTION_195();
        if ((v5 & 1) == 0)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_58_1();
        v5 = *(v15 + 16);
        v16 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v16, v17, v18);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_20:
      v19 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v19, v20, v21);
      OUTLINED_FUNCTION_100_1();
      if (v14)
      {
        goto LABEL_24;
      }
    }
  }

  v22 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v22, v23, v24);
LABEL_24:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_26;
    case 6:
      v36 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v36, v37);
      v38 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_0_29();
      v43 = sub_1B248D0F8(v40, v41, &qword_1B2581720, v42);
      OUTLINED_FUNCTION_62_1(v43);
      OUTLINED_FUNCTION_20_9(v44, &type metadata for BackingValue);
      goto LABEL_30;
    default:

LABEL_26:
      v25 = OUTLINED_FUNCTION_54_2();
      OUTLINED_FUNCTION_2_14(v25, v26, v27);
      OUTLINED_FUNCTION_269();
      OUTLINED_FUNCTION_29_1();
      sub_1B24B6BE8();
      if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

      v29 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
      OUTLINED_FUNCTION_0_29();
      v34 = sub_1B248D0F8(v31, v32, &qword_1B2581720, v33);
      OUTLINED_FUNCTION_62_1(v34);
      OUTLINED_FUNCTION_6_17(v35, MEMORY[0x1E69E7360]);
LABEL_30:
      swift_willThrow();

LABEL_31:
      OUTLINED_FUNCTION_204();
      return;
  }
}

void sub_1B24B3CD4(uint64_t a1)
{
  OUTLINED_FUNCTION_105_1();
  if (*(v4 + 16))
  {
    v5 = (v4 + 32);
    v6 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v6, v7, v8);
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_129_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_119_0();
    while (1)
    {
      v9 = *v5++;
      switch(v9)
      {
        case 1:
          OUTLINED_FUNCTION_53_0();
          break;
        case 2:
          OUTLINED_FUNCTION_15_13();
          break;
        case 3:
          OUTLINED_FUNCTION_32_3();
          break;
        case 4:
          OUTLINED_FUNCTION_35_5();
          break;
        case 5:
          OUTLINED_FUNCTION_170();
          break;
        case 6:
          OUTLINED_FUNCTION_16_15();
          break;
        case 7:
          OUTLINED_FUNCTION_17_10();
          break;
        case 8:
          OUTLINED_FUNCTION_67_1();
          break;
        case 9:
          OUTLINED_FUNCTION_168();
          break;
        case 10:
          OUTLINED_FUNCTION_122_0();
          break;
        case 11:
          OUTLINED_FUNCTION_234();
          break;
        case 12:
          OUTLINED_FUNCTION_169();
          break;
        case 13:
          OUTLINED_FUNCTION_75_1();
          break;
        case 14:
          OUTLINED_FUNCTION_95_1();
          break;
        case 15:
          OUTLINED_FUNCTION_72_0();
          break;
        case 16:
          OUTLINED_FUNCTION_123_0();
          break;
        case 17:
          OUTLINED_FUNCTION_33_4();
          break;
        case 18:
          OUTLINED_FUNCTION_55_1();
          break;
        case 19:
          OUTLINED_FUNCTION_31_6();
          break;
        case 20:
          OUTLINED_FUNCTION_68_1();
          goto LABEL_20;
        case 21:
          OUTLINED_FUNCTION_76_0();
LABEL_20:
          OUTLINED_FUNCTION_274();
          break;
        case 22:
          OUTLINED_FUNCTION_120_0();
          break;
        case 23:
          OUTLINED_FUNCTION_66_0();
          break;
        case 24:
        case 26:
        case 27:
          OUTLINED_FUNCTION_156_0();
          break;
        case 25:
          OUTLINED_FUNCTION_121_0();
          break;
        case 28:
          OUTLINED_FUNCTION_171();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v11)
      {
        if (!*(v1 + 16))
        {

LABEL_37:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_38;
        }

        sub_1B2455488(v10);
        OUTLINED_FUNCTION_185();
        if ((v2 & 1) == 0)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_27_6();
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_38:
      OUTLINED_FUNCTION_14_12();
      if (v11)
      {
        goto LABEL_42;
      }
    }
  }

  v12 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v12, v13, v14);
LABEL_42:
  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_44;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v28 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
      OUTLINED_FUNCTION_0_29();
      v33 = sub_1B248D0F8(v30, v31, &unk_1B25815B0, v32);
      OUTLINED_FUNCTION_62_1(v33);
      OUTLINED_FUNCTION_20_9(v34, &type metadata for BackingValue);
      goto LABEL_48;
    default:

LABEL_44:
      v15 = OUTLINED_FUNCTION_29_7();
      v18 = OUTLINED_FUNCTION_8_18(v15, v16, v17);
      sub_1B24B6FD8(v18, v2, v3, v19);
      if ((v20 & 1) == 0)
      {
        goto LABEL_49;
      }

      v21 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      OUTLINED_FUNCTION_0_29();
      v26 = sub_1B248D0F8(v23, v24, &unk_1B25815B0, v25);
      OUTLINED_FUNCTION_62_1(v26);
      OUTLINED_FUNCTION_6_17(v27, MEMORY[0x1E69E76D8]);
LABEL_48:
      swift_willThrow();

LABEL_49:
      OUTLINED_FUNCTION_240();
      return;
  }
}

void sub_1B24B4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_144_0();
  if (v7)
  {
    v9 = (v8 + 32);
    v10 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v10, v11, v12);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_307(v13 - 32);
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_151_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v14 = *v9++;
      switch(v14)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v16)
      {
        if (!*(v4 + 16))
        {

LABEL_26:
          OUTLINED_FUNCTION_86();
          goto LABEL_27;
        }

        sub_1B2455488(v15);
        OUTLINED_FUNCTION_195();
        if ((v6 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_58_1();
        v5 = *(v17 + 8);
        v6 = *(v17 + 16);
        v18 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v18, v19, v20);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_27:
      v21 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v21, v22, v23);
      OUTLINED_FUNCTION_100_1();
      if (v16)
      {
        goto LABEL_31;
      }
    }
  }

  v24 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v24, v25, v26);
LABEL_31:
  switch(v6)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_33;
    case 6:
      v40 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v40, v41);
      v42 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
      OUTLINED_FUNCTION_0_29();
      v47 = sub_1B248D0F8(v44, v45, &qword_1B2584480, v46);
      OUTLINED_FUNCTION_62_1(v47);
      OUTLINED_FUNCTION_20_9(v48, &type metadata for BackingValue);
      goto LABEL_37;
    default:

LABEL_33:
      v27 = OUTLINED_FUNCTION_54_2();
      v30 = OUTLINED_FUNCTION_3_22(v27, v28, v29);
      sub_1B24B6FD8(v30, v5, v6, v31);
      if ((v32 & 1) == 0)
      {
        goto LABEL_38;
      }

      v33 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
      OUTLINED_FUNCTION_0_29();
      v38 = sub_1B248D0F8(v35, v36, &qword_1B2584480, v37);
      OUTLINED_FUNCTION_62_1(v38);
      OUTLINED_FUNCTION_6_17(v39, MEMORY[0x1E69E76D8]);
LABEL_37:
      swift_willThrow();

LABEL_38:
      OUTLINED_FUNCTION_241();
      return;
  }
}

void sub_1B24B43B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_243();
  v8 = v7;
  OUTLINED_FUNCTION_262();
  if (v6)
  {
    v10 = (v9 + 32);
    v11 = OUTLINED_FUNCTION_25_1();
    sub_1B24472B8(v11, v12, v8);
    OUTLINED_FUNCTION_307("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_246();
    v13 = v8;
    while (1)
    {
      v14 = *v10++;
      v15 = v4;
      switch(v14)
      {
        case 1:
        case 7:
          v15 = OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_308();
          break;
        case 3:
        case 4:
          v15 = OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          v15 = OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          v15 = OUTLINED_FUNCTION_47_3();
          break;
        case 8:
        case 9:
          v15 = OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          v15 = OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          v15 = OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          v15 = OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          v15 = OUTLINED_FUNCTION_22_7();
          break;
        case 14:
          v15 = OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          v15 = OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          v15 = OUTLINED_FUNCTION_23_6();
          break;
        case 17:
          v15 = OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          v15 = OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      if (v13 == 5)
      {
        if (!*(v5 + 16))
        {

LABEL_26:
          OUTLINED_FUNCTION_227();
          v8 = 6;
          goto LABEL_27;
        }

        sub_1B2455488(v15);
        OUTLINED_FUNCTION_286();
        if ((v13 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_189();
        v8 = *(v16 + 16);
        v17 = OUTLINED_FUNCTION_25_1();
        sub_1B24472B8(v17, v18, v8);
      }

      else
      {

        OUTLINED_FUNCTION_227();
        v8 = 6;
      }

LABEL_27:
      v19 = OUTLINED_FUNCTION_54_2();
      sub_1B24C52B4(v19, v20, v21);
      OUTLINED_FUNCTION_246();
      v13 = v8;
      if (!--v6)
      {
        goto LABEL_30;
      }
    }
  }

  v22 = OUTLINED_FUNCTION_25_1();
  sub_1B24472B8(v22, v23, v8);
LABEL_30:
  switch(v8)
  {
    case 1:
      v38 = OUTLINED_FUNCTION_107_1();
      v32 = OUTLINED_FUNCTION_4_18(v38, v39, v40);
      v34 = 1;
      goto LABEL_36;
    case 2:
      v29 = OUTLINED_FUNCTION_106_1();
      v32 = OUTLINED_FUNCTION_4_18(v29, v30, v31);
      v34 = 2;
      goto LABEL_36;
    case 3:
      v35 = OUTLINED_FUNCTION_108_1();
      v32 = OUTLINED_FUNCTION_4_18(v35, v36, v37);
      v34 = 3;
LABEL_36:
      sub_1B24C52B4(v32, v33, v34);
      goto LABEL_39;
    case 4:
      v26 = OUTLINED_FUNCTION_25_1();
      v28 = 4;
      goto LABEL_38;
    case 5:
      v26 = OUTLINED_FUNCTION_25_1();
      v28 = 5;
LABEL_38:
      OUTLINED_FUNCTION_2_14(v26, v27, v28);
LABEL_39:
      v41 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      OUTLINED_FUNCTION_0_29();
      v46 = sub_1B248D0F8(v43, v44, &qword_1B2584480, v45);
      OUTLINED_FUNCTION_62_1(v46);
      OUTLINED_FUNCTION_6_17(v47, MEMORY[0x1E69E6158]);
      goto LABEL_40;
    case 6:
      v48 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_21_10(v48, v49);
      v50 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v50, v51);
      OUTLINED_FUNCTION_0_29();
      v55 = sub_1B248D0F8(v52, v53, &qword_1B2584480, v54);
      OUTLINED_FUNCTION_62_1(v55);
      OUTLINED_FUNCTION_20_9(v56, &type metadata for BackingValue);
LABEL_40:
      swift_willThrow();

      break;
    default:

      v24 = OUTLINED_FUNCTION_25_1();
      OUTLINED_FUNCTION_50_3(v24, v25);
      break;
  }

  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_241();
}

uint64_t sub_1B24B47C0()
{
  OUTLINED_FUNCTION_144_0();
  if (v4)
  {
    v6 = (v5 + 32);
    v7 = OUTLINED_FUNCTION_54_2();
    sub_1B24472B8(v7, v8, v9);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v60 = v10;
    v61 = v11;
    OUTLINED_FUNCTION_51_3();
    v58 = v12;
    v59 = v13;
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    v52 = v14;
    v53 = v15;
    OUTLINED_FUNCTION_112_0();
    v51 = v16;
    OUTLINED_FUNCTION_151_0();
    OUTLINED_FUNCTION_192();
    while (1)
    {
      v17 = *v6++;
      v1 = 0xEF6E656B6F54746ELL;
      switch(v17)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v1 = v51;
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v1 = v52;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v1 = v53;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v1 = v54;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v1 = v55;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v1 = v56;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v1 = v57;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v1 = v58;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v1 = v59;
          break;
        case 12:
          v1 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          v1 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v1 = v60;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
LABEL_19:
          v1 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v1 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v1 = v61;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v1 = v64;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v19)
      {
        if (!*(v0 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_86();
          goto LABEL_31;
        }

        sub_1B2455488(v18);
        OUTLINED_FUNCTION_195();
        if ((v3 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_58_1();
        v1 = *v20;
        v2 = *(v20 + 8);
        v3 = *(v20 + 16);
        v21 = OUTLINED_FUNCTION_54_2();
        sub_1B24472B8(v21, v22, v23);
      }

      else
      {

        OUTLINED_FUNCTION_86();
      }

LABEL_31:
      v24 = OUTLINED_FUNCTION_85_0();
      sub_1B24C52B4(v24, v25, v26);
      OUTLINED_FUNCTION_100_1();
      if (v19)
      {
        goto LABEL_35;
      }
    }
  }

  v27 = OUTLINED_FUNCTION_54_2();
  sub_1B24472B8(v27, v28, v29);
LABEL_35:
  switch(v3)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_37;
    case 6:
      v41 = OUTLINED_FUNCTION_29_1();
      OUTLINED_FUNCTION_21_10(v41, v42);
      v43 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
      OUTLINED_FUNCTION_0_29();
      v48 = sub_1B248D0F8(v45, v46, &qword_1B2584480, v47);
      OUTLINED_FUNCTION_62_1(v48);
      OUTLINED_FUNCTION_20_9(v49, &type metadata for BackingValue);
      goto LABEL_41;
    default:

LABEL_37:
      v30 = OUTLINED_FUNCTION_54_2();
      OUTLINED_FUNCTION_2_14(v30, v31, v32);
      v62[0] = v1;
      v62[1] = v2;
      v63 = v3;
      v33 = Bool.init(_:)(v62);
      if (v33 != 2)
      {
        return v33 & 1;
      }

      v34 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
      OUTLINED_FUNCTION_0_29();
      v39 = sub_1B248D0F8(v36, v37, &qword_1B2584480, v38);
      OUTLINED_FUNCTION_62_1(v39);
      OUTLINED_FUNCTION_6_17(v40, MEMORY[0x1E69E6370]);
LABEL_41:
      swift_willThrow();

      return v33 & 1;
  }
}

void sub_1B24B4B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  OUTLINED_FUNCTION_243();
  v13 = OUTLINED_FUNCTION_248(v12);
  if (v9)
  {
    v14 = (v13 + 32);
    v15 = OUTLINED_FUNCTION_30_0();
    sub_1B24472B8(v15, v16, v11);
    OUTLINED_FUNCTION_307("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_252();
    v17 = v11;
    while (1)
    {
      v18 = *v14++;
      switch(v18)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v20)
      {
        if (!*(v10 + 16))
        {

LABEL_26:
          OUTLINED_FUNCTION_221();
          goto LABEL_27;
        }

        sub_1B2455488(v19);
        OUTLINED_FUNCTION_287();
        if ((v17 & 1) == 0)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_173();
        v11 = *(v21 + 16);
        v22 = OUTLINED_FUNCTION_30_0();
        sub_1B24472B8(v22, v23, v11);
      }

      else
      {

        OUTLINED_FUNCTION_221();
      }

LABEL_27:
      v24 = OUTLINED_FUNCTION_29_7();
      sub_1B24C52B4(v24, v25, v26);
      OUTLINED_FUNCTION_252();
      v17 = v11;
      if (!--v9)
      {
        goto LABEL_30;
      }
    }
  }

  v27 = OUTLINED_FUNCTION_30_0();
  sub_1B24472B8(v27, v28, v11);
LABEL_30:
  switch(v11)
  {
    case 1:
      v46 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v46, v47, 1);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_37;
    case 2:
      v39 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v39, v40, 2);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_37;
    case 3:
      v44 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v44, v45, 3);
      OUTLINED_FUNCTION_163_0();
LABEL_37:
      sub_1B24C52B4(v41, v42, v43);
      goto LABEL_40;
    case 4:
      v36 = OUTLINED_FUNCTION_30_0();
      v38 = 4;
      goto LABEL_39;
    case 5:
      v36 = OUTLINED_FUNCTION_30_0();
      v38 = 5;
LABEL_39:
      OUTLINED_FUNCTION_2_14(v36, v37, v38);
      goto LABEL_40;
    case 6:
      v55 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_10(v55, v56);
      v57 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
      OUTLINED_FUNCTION_0_29();
      v62 = sub_1B248D0F8(v59, v60, &qword_1B2584480, v61);
      OUTLINED_FUNCTION_62_1(v62);
      OUTLINED_FUNCTION_20_9(v63, &type metadata for BackingValue);
      goto LABEL_41;
    default:

      v29 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v29, v30, 0);
      v31 = sub_1B256D1AC();
      v33 = v32;
      v34 = OUTLINED_FUNCTION_30_0();
      sub_1B24C52B4(v34, v35, 0);
      if (v33 >> 60 == 15)
      {
LABEL_40:
        v48 = OUTLINED_FUNCTION_116_0();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
        OUTLINED_FUNCTION_0_29();
        v53 = sub_1B248D0F8(v50, v51, &qword_1B2584480, v52);
        OUTLINED_FUNCTION_62_1(v53);
        OUTLINED_FUNCTION_6_17(v54, MEMORY[0x1E6969080]);
LABEL_41:
        swift_willThrow();
      }

      else
      {
        *a9 = v31;
        a9[1] = v33;
      }

      OUTLINED_FUNCTION_241();
      return;
  }
}

void sub_1B24B4F84()
{
  OUTLINED_FUNCTION_25_7();
  v57 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_253();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7D1770, &unk_1B257C310);
  OUTLINED_FUNCTION_2_2(v6);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_6();
  v58 = v8;
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = (v0 + 32);
    v11 = OUTLINED_FUNCTION_84_1();
    sub_1B24472B8(v11, v12, v13);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_296();
    v14 = v5;
    while (1)
    {
      v15 = *v10++;
      switch(v15)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_290();
      if (v17)
      {
        break;
      }

      OUTLINED_FUNCTION_215();
LABEL_28:
      v22 = OUTLINED_FUNCTION_138_0();
      sub_1B24C52B4(v22, v23, v14);
      OUTLINED_FUNCTION_296();
      v14 = v5;
      if (!--v9)
      {
        goto LABEL_31;
      }
    }

    if (*(v2 + 16))
    {
      v1 = v2;
      sub_1B2455488(v16);
      OUTLINED_FUNCTION_249();
      if (v14)
      {
        OUTLINED_FUNCTION_189();
        v1 = *v18;
        v5 = *(v18 + 16);
        v19 = OUTLINED_FUNCTION_84_1();
        sub_1B24472B8(v19, v20, v21);
LABEL_27:
        v14 = 5;
        goto LABEL_28;
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_215();
    goto LABEL_27;
  }

  v24 = OUTLINED_FUNCTION_84_1();
  sub_1B24472B8(v24, v25, v26);
LABEL_31:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_33;
    case 4:
    case 5:

LABEL_33:
      v27 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_2_14(v27, v28, v29);
      v30 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v30, v31, v5);
      goto LABEL_34;
    case 6:
      v47 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_21_10(v47, v48);
      v49 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_0_29();
      v54 = sub_1B248D0F8(v51, v52, &qword_1B2584480, v53);
      OUTLINED_FUNCTION_62_1(v54);
      OUTLINED_FUNCTION_20_9(v55, &type metadata for BackingValue);
      goto LABEL_35;
    default:

      v42 = OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_50_3(v42, v43);
      OUTLINED_FUNCTION_34();
      sub_1B256D37C();
      v44 = OUTLINED_FUNCTION_34();
      sub_1B24C52B4(v44, v45, 0);
      v46 = sub_1B256D3CC();
      OUTLINED_FUNCTION_238(v46);
      if (v17)
      {
        sub_1B243E88C(v58, &qword_1EB7D1770, &unk_1B257C310);
LABEL_34:
        v32 = sub_1B256D3CC();
        v33 = OUTLINED_FUNCTION_89();
        __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
        OUTLINED_FUNCTION_1_24();
        OUTLINED_FUNCTION_9_9();
        v39 = sub_1B248D0F8(v35, v36, v37, v38);
        v40 = OUTLINED_FUNCTION_4_6(v39);
        *v41 = v0;
        v41[1] = v32;
        OUTLINED_FUNCTION_24_7(v40, v41);
LABEL_35:
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_57_1();
        (*(v56 + 32))(v57, v58, v1);
      }

      OUTLINED_FUNCTION_24_6();
      return;
  }
}

void sub_1B24B5414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22)
{
  OUTLINED_FUNCTION_243();
  v28 = OUTLINED_FUNCTION_248(v27);
  if (v23)
  {
    v29 = (v28 + 32);
    v30 = OUTLINED_FUNCTION_30_0();
    sub_1B24472B8(v30, v31, v26);
    OUTLINED_FUNCTION_307("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v86 = v32;
    v87 = v33;
    OUTLINED_FUNCTION_51_3();
    v84 = v34;
    v85 = v35;
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_147_0();
    OUTLINED_FUNCTION_91_0();
    OUTLINED_FUNCTION_51_3();
    v82 = v36;
    v83 = v37;
    OUTLINED_FUNCTION_112_0();
    v81 = v38;
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_252();
    v39 = v26;
    while (1)
    {
      v40 = *v29++;
      v24 = 0xEF6E656B6F54746ELL;
      switch(v40)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v24 = v81;
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v24 = v82;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v24 = v83;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v24 = a14;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v24 = a15;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v24 = a16;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v24 = a17;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v24 = v84;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v24 = v85;
          break;
        case 12:
          v24 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          v24 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v24 = v86;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
LABEL_19:
          v24 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v24 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v24 = v87;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v24 = a22;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_194();
      if (v42)
      {
        if (!*(v25 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_221();
          goto LABEL_31;
        }

        v22 = v25;
        sub_1B2455488(v41);
        OUTLINED_FUNCTION_287();
        if ((v39 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_173();
        v24 = *v43;
        v22 = *(v43 + 8);
        v26 = *(v43 + 16);
        v44 = OUTLINED_FUNCTION_30_0();
        sub_1B24472B8(v44, v45, v26);
      }

      else
      {

        OUTLINED_FUNCTION_221();
      }

LABEL_31:
      v46 = OUTLINED_FUNCTION_29_7();
      sub_1B24C52B4(v46, v47, v48);
      OUTLINED_FUNCTION_252();
      v39 = v26;
      if (!--v23)
      {
        goto LABEL_34;
      }
    }
  }

  v49 = OUTLINED_FUNCTION_30_0();
  sub_1B24472B8(v49, v50, v26);
LABEL_34:
  switch(v26)
  {
    case 1:
      v63 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v63, v64, 1);
      OUTLINED_FUNCTION_159_0();
      goto LABEL_40;
    case 2:
      v56 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v56, v57, 2);
      OUTLINED_FUNCTION_162_0();
      goto LABEL_40;
    case 3:
      v61 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_3_22(v61, v62, 3);
      OUTLINED_FUNCTION_163_0();
LABEL_40:
      sub_1B24C52B4(v58, v59, v60);
      goto LABEL_43;
    case 4:
      v53 = OUTLINED_FUNCTION_30_0();
      v55 = 4;
      goto LABEL_42;
    case 5:
      v53 = OUTLINED_FUNCTION_30_0();
      v55 = 5;
LABEL_42:
      OUTLINED_FUNCTION_2_14(v53, v54, v55);
LABEL_43:
      v65 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      OUTLINED_FUNCTION_0_29();
      v70 = sub_1B248D0F8(v67, v68, &qword_1B2584480, v69);
      OUTLINED_FUNCTION_62_1(v70);
      OUTLINED_FUNCTION_6_17(v71, &type metadata for AppStore.Environment);
      goto LABEL_44;
    case 6:
      v72 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_21_10(v72, v73);
      v74 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v74, v75);
      OUTLINED_FUNCTION_0_29();
      v79 = sub_1B248D0F8(v76, v77, &qword_1B2584480, v78);
      OUTLINED_FUNCTION_62_1(v79);
      OUTLINED_FUNCTION_20_9(v80, &type metadata for BackingValue);
LABEL_44:
      swift_willThrow();

      break;
    default:

      v51 = OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_50_3(v51, v52);
      *a9 = v24;
      a9[1] = v22;
      break;
  }

  OUTLINED_FUNCTION_241();
}

uint64_t sub_1B24B581C@<X0>(uint64_t x8_0@<X8>)
{
  OUTLINED_FUNCTION_105_1();
  v65 = v6;
  if (*(v6 + 16))
  {
    v7 = (v6 + 32);
    v8 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v8, v9, v10);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v74 = v11;
    v75 = v12;
    OUTLINED_FUNCTION_51_3();
    v72 = v13;
    v73 = v14;
    OUTLINED_FUNCTION_172();
    v71 = v15;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v69 = v16;
    v70 = v17;
    OUTLINED_FUNCTION_51_3();
    v67 = v18;
    v68 = v19;
    OUTLINED_FUNCTION_112_0();
    v66 = v20;
    OUTLINED_FUNCTION_149_0();
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v21 = *v7++;
      v3 = 0xEF6E656B6F54746ELL;
      switch(v21)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v3 = v66;
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v3 = v67;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v3 = v68;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v3 = v69;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v3 = v70;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v3 = 0x80000001B258E170;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v3 = v71;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v3 = v72;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v3 = v73;
          break;
        case 12:
          v3 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          v3 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v3 = v74;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
LABEL_19:
          v3 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v3 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v3 = v75;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v3 = v78;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v23)
      {
        if (!*(v2 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_31;
        }

        sub_1B2455488(v22);
        OUTLINED_FUNCTION_196();
        if ((v5 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_101_1();
        v3 = *v24;
        v4 = *(v24 + 8);
        v5 = *(v24 + 16);
        v25 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v25, v26, v27);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_31:
      v28 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v28, v29, v30);
      OUTLINED_FUNCTION_143_0();
      if (v23)
      {
        goto LABEL_35;
      }
    }
  }

  v31 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v31, v32, v33);
LABEL_35:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_37;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v56 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
      OUTLINED_FUNCTION_0_29();
      v61 = sub_1B248D0F8(v58, v59, &qword_1B2584480, v60);
      OUTLINED_FUNCTION_62_1(v61);
      OUTLINED_FUNCTION_20_9(v62, &type metadata for BackingValue);
      goto LABEL_41;
    default:

LABEL_37:
      v34 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v34, v35, v36);
      v76[0] = v3;
      v76[1] = v4;
      v77 = v5;
      v37 = NSDecimal.init(_:)(v76);
      if ((v39 & 0x100000000) == 0)
      {
        return OUTLINED_FUNCTION_165_0(v37, v38, v39, v40, v41, v42, v43, v44, v63, x8_0);
      }

      type metadata accessor for Decimal(0);
      v47 = v46;
      v48 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
      OUTLINED_FUNCTION_0_29();
      v53 = sub_1B248D0F8(v50, v51, &qword_1B2584480, v52);
      v54 = OUTLINED_FUNCTION_4_6(v53);
      *v55 = v65;
      v55[1] = v47;
      OUTLINED_FUNCTION_24_7(v54, v55);
LABEL_41:
      swift_willThrow();
  }
}

void sub_1B24B5BDC()
{
  OUTLINED_FUNCTION_25_7();
  v58 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_253();
  v59 = sub_1B256D45C();
  OUTLINED_FUNCTION_1_1();
  v57 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v56 = v10 - v9;
  v11 = *(v0 + 16);
  if (v11)
  {
    v12 = (v0 + 32);
    v13 = OUTLINED_FUNCTION_175();
    sub_1B24472B8(v13, v14, v15);
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_149_0();
    v16 = v1;
    v17 = v6;
    v18 = v4;
    while (1)
    {
      v19 = *v12++;
      switch(v19)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_18_8();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_278();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_174();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_280();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_187();
      if (v21)
      {
        break;
      }

      v28 = 0;
      v29 = 0;
      v4 = 6;
LABEL_28:
      sub_1B24C52B4(v16, v17, v18);
      v16 = v28;
      v17 = v29;
      v18 = v4;
      if (!--v11)
      {
        goto LABEL_31;
      }
    }

    if (*(v16 + 16))
    {
      sub_1B2455488(v20);
      v23 = v22;

      if (v23)
      {
        OUTLINED_FUNCTION_189();
        v28 = *v24;
        v29 = *(v24 + 8);
        v4 = *(v24 + 16);
        v25 = OUTLINED_FUNCTION_175();
        sub_1B24472B8(v25, v26, v27);
LABEL_27:
        v18 = 5;
        goto LABEL_28;
      }
    }

    else
    {
    }

    v28 = 0;
    v29 = 0;
    v4 = 6;
    goto LABEL_27;
  }

  v30 = OUTLINED_FUNCTION_175();
  sub_1B24472B8(v30, v31, v32);
LABEL_31:
  switch(v4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_33;
    case 4:
    case 5:

LABEL_33:
      v33 = OUTLINED_FUNCTION_175();
      OUTLINED_FUNCTION_2_14(v33, v34, v35);
      v36 = OUTLINED_FUNCTION_198();
      sub_1B24C52B4(v36, v37, v4);
      v38 = OUTLINED_FUNCTION_103_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_0_29();
      v43 = sub_1B248D0F8(v40, v41, &qword_1B2584480, v42);
      OUTLINED_FUNCTION_4_6(v43);
      OUTLINED_FUNCTION_6_17(v44, v59);
      goto LABEL_34;
    case 6:
      v47 = OUTLINED_FUNCTION_198();
      OUTLINED_FUNCTION_21_10(v47, v48);
      v49 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
      OUTLINED_FUNCTION_0_29();
      v54 = sub_1B248D0F8(v51, v52, &qword_1B2584480, v53);
      OUTLINED_FUNCTION_62_1(v54);
      OUTLINED_FUNCTION_20_9(v55, &type metadata for BackingValue);
LABEL_34:
      swift_willThrow();

      break;
    default:

      v45 = OUTLINED_FUNCTION_198();
      OUTLINED_FUNCTION_50_3(v45, v46);
      OUTLINED_FUNCTION_198();
      sub_1B256D44C();
      (*(v57 + 32))(v58, v56, v59);
      break;
  }

  OUTLINED_FUNCTION_24_6();
}

void *sub_1B24B605C@<X0>(void *a2@<X8>)
{
  OUTLINED_FUNCTION_105_1();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v9, v10, v11);
    OUTLINED_FUNCTION_193("webOrderLineItemId");
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v62 = v12;
    v63 = v13;
    OUTLINED_FUNCTION_51_3();
    v60 = v14;
    v61 = v15;
    OUTLINED_FUNCTION_172();
    v59 = v16;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v57 = v17;
    v58 = v18;
    OUTLINED_FUNCTION_51_3();
    v55 = v19;
    v56 = v20;
    OUTLINED_FUNCTION_112_0();
    v54 = v21;
    OUTLINED_FUNCTION_151_0();
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v22 = *v8++;
      v3 = 0xEF6E656B6F54746ELL;
      switch(v22)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v3 = v54;
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v3 = v55;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v3 = v56;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v3 = v57;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v3 = v58;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v3 = 0x80000001B258E170;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v3 = v59;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v3 = v60;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v3 = v61;
          break;
        case 12:
          v3 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          v3 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v3 = v62;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
LABEL_19:
          v3 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v3 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v3 = v63;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v3 = __src[15];
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v24)
      {
        if (!*(v2 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_31;
        }

        sub_1B2455488(v23);
        OUTLINED_FUNCTION_196();
        if ((v5 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_101_1();
        v3 = *v25;
        v4 = *(v25 + 8);
        v5 = *(v25 + 16);
        v26 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v26, v27, v28);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_31:
      v29 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v29, v30, v31);
      OUTLINED_FUNCTION_203();
      if (!--v7)
      {
        goto LABEL_34;
      }
    }
  }

  v32 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v32, v33, v34);
LABEL_34:
  switch(v5)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_36;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v46 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v46, v47);
      OUTLINED_FUNCTION_0_29();
      v51 = sub_1B248D0F8(v48, v49, &qword_1B2584480, v50);
      OUTLINED_FUNCTION_62_1(v51);
      OUTLINED_FUNCTION_20_9(v52, &type metadata for BackingValue);
      goto LABEL_40;
    default:

LABEL_36:
      v35 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v35, v36, v37);
      v64[0] = v3;
      v64[1] = v4;
      LOBYTE(v64[2]) = v5;
      sub_1B246DCC0(__src);
      if (__src[1])
      {
        return memcpy(a2, __src, 0x68uLL);
      }

      memcpy(v64, __src, sizeof(v64));
      sub_1B243E88C(v64, &unk_1EB7D1870, &unk_1B25815E0);
      v39 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
      OUTLINED_FUNCTION_0_29();
      v44 = sub_1B248D0F8(v41, v42, &qword_1B2584480, v43);
      OUTLINED_FUNCTION_62_1(v44);
      OUTLINED_FUNCTION_6_17(v45, &type metadata for Product.SubscriptionInfo.RenewalInfo.AdvancedCommerceInfo);
LABEL_40:
      swift_willThrow();
  }
}

void sub_1B24B645C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_105_1();
  v57 = v9;
  if (*(v8 + 16))
  {
    v10 = (v8 + 32);
    v11 = OUTLINED_FUNCTION_29_7();
    sub_1B24472B8(v11, v12, v13);
    OUTLINED_FUNCTION_51_3();
    v55 = v14;
    v56 = v15;
    OUTLINED_FUNCTION_172();
    v54 = v16;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v52 = v17;
    v53 = v18;
    OUTLINED_FUNCTION_51_3();
    v50 = v19;
    v51 = v20;
    OUTLINED_FUNCTION_172();
    v49 = v21;
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    v47 = v22;
    v48 = v23;
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_203();
    while (1)
    {
      v24 = *v10++;
      v5 = 0xEF6E656B6F54746ELL;
      switch(v24)
      {
        case 1:
          OUTLINED_FUNCTION_137_0();
          v5 = v47;
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_146_0();
          break;
        case 3:
          OUTLINED_FUNCTION_34_3();
          v5 = v48;
          break;
        case 4:
          OUTLINED_FUNCTION_34_3();
          v5 = 0x80000001B258DEB0;
          break;
        case 5:
          OUTLINED_FUNCTION_41_4();
          v5 = v49;
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          OUTLINED_FUNCTION_303();
          goto LABEL_19;
        case 7:
          OUTLINED_FUNCTION_137_0();
          v5 = v50;
          break;
        case 8:
          OUTLINED_FUNCTION_46_3();
          v5 = v51;
          break;
        case 9:
          OUTLINED_FUNCTION_46_3();
          v5 = v52;
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          v5 = v53;
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          v5 = 0x80000001B258E1B0;
          break;
        case 12:
          v5 = 0xE900000000000064;
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          OUTLINED_FUNCTION_211();
          break;
        case 14:
          v5 = 0xE800000000000000;
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          v5 = v54;
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          OUTLINED_FUNCTION_305();
LABEL_19:
          v5 = 0xEB00656B6F54746ELL;
          break;
        case 17:
          v5 = 0xEA00000000006574;
          OUTLINED_FUNCTION_48_3();
          break;
        case 18:
          OUTLINED_FUNCTION_41_4();
          v5 = v55;
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          v5 = v56;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_232();
      if (v26)
      {
        if (!*(v4 + 16))
        {

LABEL_30:
          OUTLINED_FUNCTION_44_3();
          goto LABEL_31;
        }

        sub_1B2455488(v25);
        OUTLINED_FUNCTION_196();
        if ((v7 & 1) == 0)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_101_1();
        v5 = *v27;
        v6 = *(v27 + 8);
        v7 = *(v27 + 16);
        v28 = OUTLINED_FUNCTION_29_7();
        sub_1B24472B8(v28, v29, v30);
      }

      else
      {

        OUTLINED_FUNCTION_44_3();
      }

LABEL_31:
      v31 = OUTLINED_FUNCTION_124_0();
      sub_1B24C52B4(v31, v32, v33);
      OUTLINED_FUNCTION_143_0();
      if (v26)
      {
        goto LABEL_35;
      }
    }
  }

  v34 = OUTLINED_FUNCTION_29_7();
  sub_1B24472B8(v34, v35, v36);
LABEL_35:
  switch(v7)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_37;
    case 6:
      OUTLINED_FUNCTION_19_12();
      v40 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
      OUTLINED_FUNCTION_0_29();
      v45 = sub_1B248D0F8(v42, v43, &qword_1B2584480, v44);
      OUTLINED_FUNCTION_62_1(v45);
      OUTLINED_FUNCTION_20_9(v46, &type metadata for BackingValue);
      swift_willThrow();

      break;
    default:

LABEL_37:
      v37 = OUTLINED_FUNCTION_29_7();
      OUTLINED_FUNCTION_2_14(v37, v38, v39);
      *v57 = v5;
      *(v57 + 8) = v6;
      *(v57 + 16) = v7;
      break;
  }

  OUTLINED_FUNCTION_241();
}

uint64_t sub_1B24B67D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    v12 = OUTLINED_FUNCTION_167_0();
    sub_1B24472B8(v12, v13, v14);
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_172();
    OUTLINED_FUNCTION_153_0();
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_112_0();
    OUTLINED_FUNCTION_151_0();
    v15 = a2;
    while (1)
    {
      v16 = *v11++;
      switch(v16)
      {
        case 1:
        case 7:
          OUTLINED_FUNCTION_137_0();
          break;
        case 2:
          OUTLINED_FUNCTION_25_8();
          OUTLINED_FUNCTION_308();
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_34_3();
          break;
        case 5:
        case 18:
          OUTLINED_FUNCTION_41_4();
          break;
        case 6:
          OUTLINED_FUNCTION_47_3();
          break;
        case 8:
        case 9:
          OUTLINED_FUNCTION_46_3();
          break;
        case 10:
          OUTLINED_FUNCTION_82_1();
          break;
        case 11:
          OUTLINED_FUNCTION_63_1();
          break;
        case 12:
          OUTLINED_FUNCTION_49_3();
          break;
        case 13:
          OUTLINED_FUNCTION_22_7();
          break;
        case 14:
          OUTLINED_FUNCTION_15_13();
          break;
        case 15:
          OUTLINED_FUNCTION_81_1();
          break;
        case 16:
          OUTLINED_FUNCTION_23_6();
          break;
        case 17:
          OUTLINED_FUNCTION_48_3();
          break;
        case 19:
          OUTLINED_FUNCTION_64_1();
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_197();
      if (v18)
      {
        if (!*(v15 + 16))
        {

LABEL_26:
          a2 = 0;
          a3 = 0;
          a4 = 6;
          goto LABEL_27;
        }

        v19 = sub_1B2455488(v17);
        v21 = v20;

        if ((v21 & 1) == 0)
        {
          goto LABEL_26;
        }

        v22 = *(v15 + 56) + 24 * v19;
        a2 = *v22;
        a3 = *(v22 + 8);
        a4 = *(v22 + 16);
        v23 = OUTLINED_FUNCTION_167_0();
        sub_1B24472B8(v23, v24, v25);
      }

      else
      {

        a2 = 0;
        a3 = 0;
        a4 = 6;
      }

LABEL_27:
      v26 = OUTLINED_FUNCTION_175();
      sub_1B24C52B4(v26, v27, v28);
      v15 = a2;
      if (!--v10)
      {
        goto LABEL_30;
      }
    }
  }

  v29 = OUTLINED_FUNCTION_167_0();
  sub_1B24472B8(v29, v30, v31);
LABEL_30:
  switch(a4)
  {
    case 1:
    case 2:
    case 3:
      goto LABEL_32;
    case 6:
      OUTLINED_FUNCTION_21_10(a2, a3);
      v44 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
      OUTLINED_FUNCTION_0_29();
      v49 = sub_1B248D0F8(v46, v47, &qword_1B2584480, v48);
      OUTLINED_FUNCTION_62_1(v49);
      OUTLINED_FUNCTION_20_9(v50, &type metadata for BackingValue);
      goto LABEL_36;
    default:

LABEL_32:
      v32 = OUTLINED_FUNCTION_167_0();
      OUTLINED_FUNCTION_2_14(v32, v33, v34);
      result = sub_1B24B6BE8();
      if ((v36 & 1) == 0)
      {
        return result;
      }

      v37 = OUTLINED_FUNCTION_116_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      OUTLINED_FUNCTION_0_29();
      v42 = sub_1B248D0F8(v39, v40, &qword_1B2584480, v41);
      OUTLINED_FUNCTION_62_1(v42);
      OUTLINED_FUNCTION_6_17(v43, a7);
LABEL_36:
      swift_willThrow();
  }
}

uint64_t sub_1B24B6BE8()
{
  OUTLINED_FUNCTION_253();
  switch(v7)
  {
    case 0:
      v8 = HIBYTE(v1) & 0xF;
      v9 = v0 & 0xFFFFFFFFFFFFLL;
      if ((v1 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v1) & 0xF;
      }

      else
      {
        v10 = v0 & 0xFFFFFFFFFFFFLL;
      }

      if (!v10)
      {
        goto LABEL_79;
      }

      if ((v1 & 0x1000000000000000) != 0)
      {
        v41 = OUTLINED_FUNCTION_22_1();
        sub_1B24472B8(v41, v42, 0);
        OUTLINED_FUNCTION_22_1();
        v43 = sub_1B243FC04();
        if (v44)
        {
          while (1)
          {
LABEL_75:
            v35 = OUTLINED_FUNCTION_22_1();
            v13 = sub_1B246A434(v35, v36);
            v38 = v37;
            v39 = OUTLINED_FUNCTION_22_1();
            sub_1B24472E0(v39, v40, 0);
            if (v38)
            {
              return 0;
            }

            if ((v13 & 0x8000000000000000) == 0)
            {
              break;
            }

            __break(1u);
LABEL_79:
          }

          return v13;
        }

        v13 = v43;
LABEL_82:
        v45 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v45, v46, 0);
        v47 = OUTLINED_FUNCTION_22_1();
        sub_1B24472E0(v47, v48, 0);
        return v13;
      }

      if ((v1 & 0x2000000000000000) == 0)
      {
        if ((v0 & 0x1000000000000000) != 0)
        {
          v11 = ((v1 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          OUTLINED_FUNCTION_22_1();
          v11 = sub_1B256E5FC();
        }

        v12 = *v11;
        if (v12 == 43)
        {
          if (v9 >= 1)
          {
            if (v9 != 1)
            {
              v13 = 0;
              if (v11)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_9_0();
                  if (!v15 & v14)
                  {
                    goto LABEL_73;
                  }

                  OUTLINED_FUNCTION_96_1();
                  if (!v15)
                  {
                    goto LABEL_73;
                  }

                  v13 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_73;
                  }

                  OUTLINED_FUNCTION_22();
                  if (v15)
                  {
                    goto LABEL_74;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_73;
          }

          goto LABEL_88;
        }

        if (v12 != 45)
        {
          if (v9)
          {
            v13 = 0;
            if (v11)
            {
              while (1)
              {
                v28 = *v11 - 48;
                if (v28 > 9)
                {
                  goto LABEL_73;
                }

                v29 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_73;
                }

                v13 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  goto LABEL_73;
                }

                ++v11;
                if (!--v9)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_64;
          }

LABEL_73:
          v13 = 0;
          v18 = 1;
LABEL_74:
          v32 = v18;
          v33 = OUTLINED_FUNCTION_22_1();
          sub_1B24472B8(v33, v34, 0);
          if (v32)
          {
            goto LABEL_75;
          }

          goto LABEL_82;
        }

        if (v9 >= 1)
        {
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              while (1)
              {
                OUTLINED_FUNCTION_9_0();
                if (!v15 & v14)
                {
                  goto LABEL_73;
                }

                OUTLINED_FUNCTION_96_1();
                if (!v15)
                {
                  goto LABEL_73;
                }

                v13 = v17 - v16;
                if (__OFSUB__(v17, v16))
                {
                  goto LABEL_73;
                }

                OUTLINED_FUNCTION_22();
                if (v15)
                {
                  goto LABEL_74;
                }
              }
            }

LABEL_64:
            v18 = 0;
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v50 = v0;
      v51 = v1 & 0xFFFFFFFFFFFFFFLL;
      if (v0 != 43)
      {
        if (v0 != 45)
        {
          if (v8)
          {
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v15 & v14)
              {
                break;
              }

              OUTLINED_FUNCTION_96_1();
              if (!v15)
              {
                break;
              }

              v13 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v15)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

        if (v8)
        {
          if (v8 != 1)
          {
            OUTLINED_FUNCTION_295();
            while (1)
            {
              OUTLINED_FUNCTION_9_0();
              if (!v15 & v14)
              {
                break;
              }

              OUTLINED_FUNCTION_96_1();
              if (!v15)
              {
                break;
              }

              v13 = v23 - v22;
              if (__OFSUB__(v23, v22))
              {
                break;
              }

              OUTLINED_FUNCTION_22();
              if (v15)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

        goto LABEL_87;
      }

      if (v8)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_295();
          while (1)
          {
            OUTLINED_FUNCTION_9_0();
            if (!v15 & v14)
            {
              break;
            }

            OUTLINED_FUNCTION_96_1();
            if (!v15)
            {
              break;
            }

            v13 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              break;
            }

            OUTLINED_FUNCTION_22();
            if (v15)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

LABEL_89:
      __break(1u);
LABEL_90:
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1B256E4FC();
      MEMORY[0x1B2749D50](0x656C62756F44, 0xE600000000000000);
      MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258FED0);
      MEMORY[0x1B2749D50](v3, v2);
      MEMORY[0x1B2749D50](0xD00000000000002ELL, 0x80000001B258FEF0);
      result = sub_1B256E83C();
      __break(1u);
      return result;
    case 1:
      v2 = v5;
      v3 = v4;
      v6.n128_u64[0] = v0;
      sub_1B24C3A70(&v50, v6);
      if (v51)
      {
        goto LABEL_90;
      }

      return v50;
    case 2:
      return v0;
    case 3:
      return v0 & 1;
    default:
      v19 = OUTLINED_FUNCTION_22_1();
      sub_1B24472E0(v19, v20, v21);
      return 0;
  }
}

uint64_t sub_1B24B6FD8(uint64_t a1, unint64_t a2, char a3, __n128 a4)
{
  v5 = a1;
  switch(a3)
  {
    case 0:
      v6 = HIBYTE(a2) & 0xF;
      v7 = a1 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v8 = a1 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        goto LABEL_73;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_1B24472B8(a1, a2, 0);
        v32 = sub_1B243FC04();
        if (v33)
        {
          goto LABEL_70;
        }

        v11 = v32;
        goto LABEL_76;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v35 = a1;
        v36 = a2 & 0xFFFFFFFFFFFFFFLL;
        if (a1 != 43)
        {
          if (a1 != 45)
          {
            if (v6)
            {
              v11 = 0;
              v26 = &v35;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                v28 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  break;
                }

                v11 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  break;
                }

                v26 = (v26 + 1);
                if (!--v6)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

          if (v6)
          {
            if (--v6)
            {
              v11 = 0;
              v15 = &v35 + 1;
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  break;
                }

                v17 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  break;
                }

                v11 = v17 - v16;
                if (__OFSUB__(v17, v16))
                {
                  break;
                }

                ++v15;
                if (!--v6)
                {
                  goto LABEL_69;
                }
              }
            }

            goto LABEL_68;
          }

          goto LABEL_82;
        }

        if (v6)
        {
          if (--v6)
          {
            v11 = 0;
            v21 = &v35 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v6)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      if ((a1 & 0x1000000000000000) == 0)
      {
        goto LABEL_80;
      }

      v9 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      break;
    case 1:
      a4.n128_u64[0] = a1;
      sub_1B24C3C5C(&v35, a4);
      if (v36)
      {
LABEL_85:
        v35 = 0;
        v36 = 0xE000000000000000;
        sub_1B256E4FC();
        MEMORY[0x1B2749D50](0x656C62756F44, 0xE600000000000000);
        MEMORY[0x1B2749D50](0xD00000000000001ELL, 0x80000001B258FED0);
        MEMORY[0x1B2749D50](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x1B2749D50](0xD00000000000002ELL, 0x80000001B258FEF0);
        result = sub_1B256E83C();
        __break(1u);
      }

      else
      {
        return v35;
      }

      return result;
    case 2:
      if ((a1 & 0x8000000000000000) == 0)
      {
        return v5;
      }

      __break(1u);
LABEL_73:

LABEL_70:
      v11 = sub_1B246A434(v5, a2);
      v31 = v30;
      sub_1B24472E0(v5, a2, 0);
      if (v31)
      {
        return 0;
      }

      else
      {
        return v11;
      }

    case 3:
      return a1 & 1;
    default:
      sub_1B24472E0(a1, a2, a3);
      return 0;
  }

  while (1)
  {
    v10 = *v9;
    if (v10 == 43)
    {
      if (v7 < 1)
      {
        goto LABEL_83;
      }

      v6 = v7 - 1;
      if (v7 == 1)
      {
        goto LABEL_68;
      }

      v11 = 0;
      if (v9)
      {
        v18 = v9 + 1;
        while (1)
        {
          v19 = *v18 - 48;
          if (v19 > 9)
          {
            goto LABEL_68;
          }

          v20 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            goto LABEL_68;
          }

          v11 = v20 + v19;
          if (__OFADD__(v20, v19))
          {
            goto LABEL_68;
          }

          ++v18;
          if (!--v6)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v10 == 45)
    {
      if (v7 < 1)
      {
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v6 = v7 - 1;
      if (v7 == 1)
      {
        goto LABEL_68;
      }

      v11 = 0;
      if (v9)
      {
        v12 = v9 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            break;
          }

          v11 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v6)
          {
            goto LABEL_69;
          }
        }

LABEL_68:
        v11 = 0;
        LOBYTE(v6) = 1;
        goto LABEL_69;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_68;
      }

      v11 = 0;
      if (v9)
      {
        do
        {
          v24 = *v9 - 48;
          if (v24 > 9)
          {
            goto LABEL_68;
          }

          v25 = 10 * v11;
          if ((v11 * 10) >> 64 != (10 * v11) >> 63)
          {
            goto LABEL_68;
          }

          v11 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            goto LABEL_68;
          }

          ++v9;
        }

        while (--v7);
      }
    }

    LOBYTE(v6) = 0;
LABEL_69:
    v29 = v6;
    sub_1B24472B8(v5, a2, 0);
    if (v29)
    {
      goto LABEL_70;
    }

LABEL_76:
    sub_1B24472E0(v5, a2, 0);
    sub_1B24472E0(v5, a2, 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      return v11;
    }

    __break(1u);
LABEL_80:
    v9 = sub_1B256E5FC();
  }
}
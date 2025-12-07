char *TextCompositionClient.init()()
{
  *&v0[OBJC_IVAR___TextCompositionClient_client] = 0;
  v1 = sub_1B5EA4470();
  sub_1B5E5FE38(v1);
  *&v0[OBJC_IVAR___TextCompositionClient_tcClient] = sub_1B5EA4460();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TextCompositionClient();
  v2 = objc_msgSendSuper2(&v7, sel_init);
  sub_1B5DEEE50(&qword_1ED7D2D40, v3, type metadata accessor for TextCompositionClient);
  v4 = sub_1B5DF33E0(&qword_1EB90F7B0, &unk_1B5EBAFE0);
  sub_1B5E5FE38(v4);
  v5 = v2;
  *&v5[OBJC_IVAR___TextCompositionClient_client] = sub_1B5EA4DA0();

  return v5;
}

uint64_t sub_1B5DEEE50(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    sub_1B5E5F3AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *ExternalTextCompositionClient.init()()
{
  *&v0[OBJC_IVAR___ExternalTextCompositionClient_client] = 0;
  v1 = sub_1B5EA43C0();
  sub_1B5E5FE38(v1);
  *&v0[OBJC_IVAR___ExternalTextCompositionClient_tcClient] = sub_1B5EA43B0();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ExternalTextCompositionClient();
  v2 = objc_msgSendSuper2(&v7, sel_init);
  sub_1B5DEEE50(&qword_1ED7D2D38, v3, type metadata accessor for ExternalTextCompositionClient);
  v4 = sub_1B5DF33E0(&qword_1EB90F820, qword_1B5EBB098);
  sub_1B5E5FE38(v4);
  v5 = v2;
  *&v5[OBJC_IVAR___ExternalTextCompositionClient_client] = sub_1B5EA4DA0();

  return v5;
}

uint64_t sub_1B5DEF00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 4);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v11 = a1 + *(a3 + 24);

    return sub_1B5DF46E0(v11, a2, v10);
  }
}

uint64_t sub_1B5DEF0A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 4) = a2 + 1;
  }

  else
  {
    v7 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v8 = v5 + *(a4 + 24);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

void sub_1B5DEF198(uint64_t a1@<X8>)
{
  sub_1B5DEF150();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_1B5DEF2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DEF28C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5DEF328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
    v10 = a1 + *(a3 + 52);

    return sub_1B5DF46E0(v10, a2, v9);
  }
}

uint64_t sub_1B5DEF3C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
    v8 = v5 + *(a4 + 52);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DEF4B0(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1B5EA4930();
  sub_1B5DFD8F0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[5];
LABEL_5:

    return sub_1B5DF46E0(a1 + v9, a2, v8);
  }

  sub_1B5EA5450();
  sub_1B5DFD8F0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1B5DEF5A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1B5EA4930();
  sub_1B5DFD8F0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[5];
  }

  else
  {
    sub_1B5EA5450();
    sub_1B5DFD8F0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[8] + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[6];
  }

  sub_1B5DF3658(a1 + v11, a2, a2, v10);
}

uint64_t sub_1B5DEF718()
{
  v1 = sub_1B5E01D1C();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B5DEF748()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DEF7A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B5E028D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B5DEF808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA42F0();
    v9 = a1 + *(a3 + 28);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DEF890(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA42F0();
    v8 = v5 + *(a4 + 28);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DEFAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1B5E0A864(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1B5DEFB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B5DEFB90(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001CLL;
  }

  return 0xD000000000000010;
}

uint64_t sub_1B5DEFBEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B5E0BEC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B5DEFD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA42F0();
    v9 = a1 + *(a3 + 28);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DEFD88(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA42F0();
    v8 = v5 + *(a4 + 28);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1B5DEFEF0(char a1)
{
  result = 0xD000000000000011;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  return result;
}

uint64_t sub_1B5DEFF50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B5E14380(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B5DEFFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA42F0();
    v9 = a1 + *(a3 + 40);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DF004C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA42F0();
    v8 = v5 + *(a4 + 40);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DF0148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E1A084();
  v6 = sub_1B5EA4DF0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1B5DF46E0(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1B5DF0200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B5EA4DF0();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1B5DF3658(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1B5DF02F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B5E1A200(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B5DF03F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5DF33E0(&qword_1EB90E368, &qword_1B5EB42C0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_1B5DF46E0(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v8 = a1 + *(a3 + 44);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1B5DF04DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B5DF33E0(&qword_1EB90E368, &qword_1B5EB42C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v9 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
    v10 = a1 + *(a4 + 44);
  }

  return sub_1B5DF3658(v10, a2, a2, v9);
}

uint64_t sub_1B5DF0638(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B5DF0694@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B5E200E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF0828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriorityResult(0);
  v5 = sub_1B5DF46E0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DF0870(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for PriorityResult(0);

  return sub_1B5DF3658(a1, v5, a3, v6);
}

uint64_t sub_1B5DF095C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF0AB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF0AF8()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF0B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5EA5450();
  sub_1B5DFD8F0();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return sub_1B5DF46E0(v9, a2, v8);
  }

  sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
  sub_1B5DFD8F0();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1B5DF0C34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1B5EA5450();
  sub_1B5DFD8F0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_1B5DF33E0(&qword_1EB90E5C0, &unk_1B5EB6EB0);
    sub_1B5DFD8F0();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 20);
  }

  sub_1B5DF3658(v11, a2, a2, v10);
}

uint64_t sub_1B5DF0D2C()
{
  v1 = sub_1B5EA4EE0();
  sub_1B5DF5DA8();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF0DEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF0EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B5EA5450();
    v9 = a1 + *(a3 + 24);

    return sub_1B5DF46E0(v9, a2, v8);
  }
}

uint64_t sub_1B5DF0F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B5EA5450();
    v8 = v5 + *(a4 + 24);

    return sub_1B5DF3658(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B5DF1040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA42B0();

  return sub_1B5DF46E0(a1, a2, v4);
}

uint64_t sub_1B5DF1088(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA42B0();

  return sub_1B5DF3658(a1, a2, a2, v4);
}

uint64_t sub_1B5DF10FC()
{
  MEMORY[0x1B8C8B3E0](v0 + 16);
  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B5DF1130()
{
  sub_1B5EA4E90();
  sub_1B5DF5EB8();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 17) & ~*(v1 + 80)));

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF11B0()
{
  swift_unknownObjectRelease();

  sub_1B5E5FB08();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B5DF11FC()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF123C()
{

  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1278()
{
  v1 = sub_1B5EA5160();
  sub_1B5DF5DA8();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1450()
{
  v33 = sub_1B5EA5470();
  sub_1B5DF5DA8();
  v2 = v1;
  v28 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v4;
  v30 = sub_1B5EA4820();
  sub_1B5DF5DA8();
  v6 = v5;
  v7 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v9 = *(v8 + 64);
  v10 = sub_1B5DF33E0(&qword_1EB90E6A0, &qword_1B5EB60D8);
  sub_1B5E01C50(v10);
  v12 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v31 = *(v13 + 64);
  v32 = sub_1B5EA4D20();
  sub_1B5DF5DA8();
  v15 = v14;
  v16 = *(v14 + 80);
  v27 = *(v17 + 64);
  v29 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v19 = v18;
  v20 = *(v18 + 80);
  (*(v2 + 8))(v0 + v28, v33);

  (*(v6 + 8))(v0 + v7, v30);
  v21 = sub_1B5EA5290();
  if (!sub_1B5DF46E0(v0 + v12, 1, v21))
  {
    sub_1B5E2D1D8();
    (*(v22 + 8))(v0 + v12, v21);
  }

  v23 = (v12 + v31 + v16) & ~v16;
  v24 = (v23 + v27 + v20) & ~v20;
  (*(v15 + 8))(v0 + v23, v32);
  (*(v19 + 8))(v0 + v24, v29);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1774()
{

  sub_1B5E5F8F8();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF17A8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B5DF17F8()
{
  sub_1B5E638E0();
  sub_1B5EA4990();
  v0 = sub_1B5E5F324();

  return sub_1B5DF46E0(v0, v1, v2);
}

uint64_t sub_1B5DF1834()
{
  sub_1B5E638E0();
  sub_1B5EA4990();
  v1 = sub_1B5E5F324();

  return sub_1B5DF3658(v1, v2, v0, v3);
}

uint64_t sub_1B5DF1874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5E638E0();
  sub_1B5EA4950();
  sub_1B5DFD8F0();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return sub_1B5DF46E0(v9, v3, v8);
  }

  sub_1B5EA46F0();
  sub_1B5DFD8F0();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 24) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_1B5DF195C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1B5E638E0();
  sub_1B5EA4950();
  sub_1B5DFD8F0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    sub_1B5EA46F0();
    sub_1B5DFD8F0();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 24) + 8) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 20);
  }

  sub_1B5DF3658(v11, v4, v4, v10);
}

uint64_t sub_1B5DF1A90()
{
  v1 = sub_1B5DF33E0(&qword_1EB90EE90, &qword_1B5EB7430);
  sub_1B5DF5DA8();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1B5C()
{
  sub_1B5E6FB9C();
  v2 = type metadata accessor for Field.FieldType(0);

  return sub_1B5DF46E0(v1, v0, v2);
}

uint64_t sub_1B5DF1BA0()
{
  sub_1B5E6FB9C();
  type metadata accessor for Field.FieldType(0);
  v0 = sub_1B5E6FBBC();

  return sub_1B5DF3658(v0, v1, v2, v3);
}

uint64_t sub_1B5DF1BDC()
{
  sub_1B5E6FB9C();
  v2 = sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);

  return sub_1B5DF46E0(v1, v0, v2);
}

uint64_t sub_1B5DF1C2C()
{
  sub_1B5E6FB9C();
  sub_1B5DF33E0(&qword_1EB90EEA0, qword_1B5EB7458);
  v0 = sub_1B5E6FBBC();

  return sub_1B5DF3658(v0, v1, v2, v3);
}

uint64_t sub_1B5DF1CB8()
{
  swift_weakDestroy();
  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1CEC()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1D24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF1D74()
{
  sub_1B5E5F910();

  return MEMORY[0x1EEE6BDD0](v1);
}

uint64_t sub_1B5DF1DA8()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF2448(char a1)
{
  if (!a1)
  {
    return 0x746E65746E6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0xD000000000000018;
}

uint64_t sub_1B5DF2500@<X0>(_BYTE *a4@<X8>)
{
  result = sub_1B5E86E10();
  *a4 = result;
  return result;
}

uint64_t sub_1B5DF25A4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF2604()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF263C()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF286C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF28B4()
{

  v0 = sub_1B5E907FC();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF2920(uint64_t a1, char a2)
{
  sub_1B5EA5710();
}

uint64_t sub_1B5DF2A0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1B5EA5B40();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1B5DF2A88@<X0>(uint64_t *a1@<X8>)
{
  result = TextCompositionClient.TCDocumentType.rawValue.getter();
  *a1 = result;
  a1[1] = 0xEB00000000656761;
  return result;
}

uint64_t sub_1B5DF300C()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF305C()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF3094()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF30F4()
{

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t sub_1B5DF3158()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0);
}

uint64_t PriorityResult.inferenceEnvironmentInfo.getter()
{
  v2 = sub_1B5DF5E80();
  v3 = type metadata accessor for PriorityResult(v2);
  return sub_1B5DF43C8(v1 + *(v3 + 24), v0, &qword_1EB90D990, &qword_1B5EAE990);
}

uint64_t type metadata accessor for PriorityResult(uint64_t a1)
{
  result = qword_1EB90D7D8;
  if (!qword_1EB90D7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B5DF33E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t PriorityResult.inferenceEnvironmentInfo.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PriorityResult(0) + 24);

  return sub_1B5DF346C(a1, v3);
}

uint64_t sub_1B5DF346C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PriorityResult.importance.setter(float a1)
{
  result = type metadata accessor for PriorityResult(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PriorityResult.init(urgency:llmClassifierWasInvoked:inferenceEnvironmentInfo:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v8 = type metadata accessor for PriorityResult(0);
  v9 = *(v8 + 24);
  type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v10, v11, v12, v13);
  *(a3 + *(v8 + 28)) = -1082130432;
  *a3 = a4;
  *(a3 + 4) = a1;

  return sub_1B5DF346C(a2, a3 + v9);
}

uint64_t sub_1B5DF3680(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79636E65677275 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001B5EA7820 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001B5EA7840 == a2;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B5EA5F00();

        if (v9)
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

uint64_t sub_1B5DF37F4(unsigned __int8 a1)
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](a1);
  return sub_1B5EA6020();
}

unint64_t sub_1B5DF3848(char a1)
{
  result = 0x79636E65677275;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6174726F706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5DF38E4(uint64_t a1)
{
  v2 = *v1;
  sub_1B5EA5FD0();
  sub_1B5DF3210(v4, v2);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF3930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF3680(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF3978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF37EC();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF39A0(uint64_t a1)
{
  v2 = sub_1B5DF3C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF39DC(uint64_t a1)
{
  v2 = sub_1B5DF3C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PriorityResult.encode(to:)(void *a1)
{
  v3 = sub_1B5DF33E0(&qword_1EB90D998, &qword_1B5EAE998);
  sub_1B5DF5DA8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF3C40();
  sub_1B5EA6040();
  v12[15] = 0;
  sub_1B5DF5EC8();
  sub_1B5EA5E80();
  if (!v1)
  {
    v12[14] = 1;
    sub_1B5DF5EC8();
    sub_1B5EA5E60();
    type metadata accessor for PriorityResult(0);
    v12[13] = 2;
    type metadata accessor for InferenceEnvironmentInfo(0);
    sub_1B5DF5DFC();
    sub_1B5DF4004(v9, v10, &protocol conformance descriptor for InferenceEnvironmentInfo);
    sub_1B5DF5EC8();
    sub_1B5EA5E40();
    v12[12] = 3;
    sub_1B5DF5EC8();
    sub_1B5EA5E80();
  }

  return (*(v5 + 8))(v8, v3);
}

void *sub_1B5DF3BFC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B5DF3C40()
{
  result = qword_1EB90D7F8;
  if (!qword_1EB90D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7F8);
  }

  return result;
}

uint64_t PriorityResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = sub_1B5DF33E0(&qword_1EB90D990, &qword_1B5EAE990);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v29 - v5;
  v34 = sub_1B5DF33E0(&qword_1EB90D9A0, &qword_1B5EAE9A0);
  sub_1B5DF5DA8();
  v31 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for PriorityResult(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DF5DBC();
  v13 = *(v12 + 24);
  v14 = type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v15, v16, v17, v14);
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF3C40();
  v33 = v9;
  v18 = v35;
  sub_1B5EA6030();
  if (v18)
  {
    sub_1B5DF3FB8(a1);
    return sub_1B5DF4428(v2 + v13, &qword_1EB90D990, &qword_1B5EAE990);
  }

  else
  {
    v29 = a1;
    v19 = v32;
    v35 = v13;
    v39 = 0;
    sub_1B5EA5DA0();
    *v2 = v20;
    v38 = 1;
    *(v2 + 4) = sub_1B5EA5D80() & 1;
    v37 = 2;
    sub_1B5DF5DFC();
    sub_1B5DF4004(v21, v22, &protocol conformance descriptor for InferenceEnvironmentInfo);
    sub_1B5EA5D60();
    sub_1B5DF346C(v19, v2 + v35);
    v36 = 3;
    sub_1B5EA5DA0();
    v24 = v23;
    v25 = *(v10 + 28);
    v26 = sub_1B5DF5EA8();
    v27(v26);
    *(v2 + v25) = v24;
    sub_1B5DF404C(v2, v30);
    sub_1B5DF3FB8(v29);
    return sub_1B5DF40B0(v2);
  }
}

uint64_t sub_1B5DF3FB8(void *a1)
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

uint64_t sub_1B5DF4004(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5DF404C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PriorityResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5DF40B0(uint64_t a1)
{
  v2 = type metadata accessor for PriorityResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PriorityResult.init(urgency:llmClassifierWasInvoked:)@<X0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = type metadata accessor for PriorityResult(0);
  v7 = *(v6 + 24);
  v8 = type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  sub_1B5DF3658(v9, v10, v11, v8);
  *(a2 + *(v6 + 28)) = -1082130432;
  *a2 = a3;
  *(a2 + 4) = a1;
  sub_1B5DF4428(a2 + v7, &qword_1EB90D990, &qword_1B5EAE990);
  sub_1B5DF5DF0();

  return sub_1B5DF3658(v12, v13, v14, v8);
}

uint64_t PriorityResult.init(urgency:importance:)(float a1, float a2)
{
  v5 = sub_1B5DF5E80();
  v6 = type metadata accessor for PriorityResult(v5);
  type metadata accessor for InferenceEnvironmentInfo(0);
  sub_1B5DF5DF0();
  result = sub_1B5DF3658(v7, v8, v9, v10);
  v12 = *(v6 + 28);
  *v2 = a1;
  *(v2 + v12) = a2;
  *(v2 + 4) = 0;
  return result;
}

uint64_t _s4Sage34GenerativeExperiencesSessionClientC8complete5query10parameters15promptSanitizer08responseJ015clientRequestID15TokenGeneration0O6StreamVySSG9PromptKit012ChatMessagesR0V_AJ18SamplingParametersV0B6Models014StringRenderedrJ0VAS0y8ResponseJ0VSSSgtFfA2__0()
{
  sub_1B5DF5E80();
  sub_1B5EA4C90();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B5DF5DD4();
  sub_1B5EA4C80();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DF5DBC();
  sub_1B5EA4CA0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v2, v3, v4, v5);
  v6 = sub_1B5DF5E70();
  v7(v6);
  sub_1B5EA4C70();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v8, v9, v10, v11);
  v12 = sub_1B5DF5E60();
  v13(v12);
  sub_1B5DF5E50();
  return sub_1B5EA4CB0();
}

uint64_t sub_1B5DF43C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1B5DF33E0(a3, a4);
  sub_1B5DF5EB8();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B5DF4428(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1B5DF33E0(a2, a3);
  sub_1B5DF5EB8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s4Sage34GenerativeExperiencesSessionClientC8complete10generating5query10parameters15promptSanitizer08responseK015clientRequestID15TokenGeneration0P6StreamVyxGxm_9PromptKit012ChatMessagesS0VAK18SamplingParametersV0B6Models014StringRenderedsK0VAT0z8ResponseK0VSSSgt0B19FunctionsFoundation9GenerableRzlFfA2__0()
{
  sub_1B5DF5E80();
  sub_1B5EA4CF0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B5DF5DD4();
  sub_1B5EA4CE0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1B5DF5DBC();
  sub_1B5EA4D00();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v2, v3, v4, v5);
  v6 = sub_1B5DF5E70();
  v7(v6);
  sub_1B5EA4CD0();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v8, v9, v10, v11);
  v12 = sub_1B5DF5E60();
  v13(v12);
  sub_1B5DF5E50();
  return sub_1B5EA4D10();
}

uint64_t _s4Sage34GenerativeExperiencesSessionClientC8complete5query10parameters15promptSanitizer08responseJ015clientRequestID15TokenGeneration0O6StreamVySSG9PromptKit012ChatMessagesR0V_AJ18SamplingParametersV0B6Models014StringRenderedrJ0VAS0y8ResponseJ0VSSSgtFfA0__0()
{
  v1 = sub_1B5DF33E0(&qword_1EB90D9A8, &qword_1B5EAE9A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B5DF5E8C();
  MEMORY[0x1EEE9AC00](v2);
  sub_1B5DF5F08();
  sub_1B5DF5DF0();
  sub_1B5DF3658(v3, v4, v5, v6);
  sub_1B5DF5EE8();
  sub_1B5DF5ED4();
  sub_1B5DF5E14(MEMORY[0x1E69E7CD0], v8);
  sub_1B5EA4800();
  sub_1B5EA47E0();
  sub_1B5EA47F0();
  return sub_1B5DF4428(v0, &qword_1EB90D9A8, &qword_1B5EAE9A8);
}

void sub_1B5DF471C(uint64_t a1)
{
  sub_1B5DF47A0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B5DF47A0(uint64_t a1)
{
  if (!qword_1ED7D2C08[0])
  {
    type metadata accessor for InferenceEnvironmentInfo(255);
    v1 = sub_1B5EA5AD0();
    if (!v2)
    {
      atomic_store(v1, qword_1ED7D2C08);
    }
  }
}

__n128 sub_1B5DF47F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B5DF4808(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B5DF4828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1B5DF4870(uint64_t a1, int a2)
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

uint64_t sub_1B5DF4890(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PriorityResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PriorityResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5DF4A68()
{
  result = qword_1EB90D9B8;
  if (!qword_1EB90D9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D9B8);
  }

  return result;
}

uint64_t sub_1B5DF4AE4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1B5DF5CFC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF4B2C(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError, &unk_1B5EAEF2C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B5DF4B98(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError, &unk_1B5EAEF2C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B5DF4C04(void *a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError, &unk_1B5EAEF2C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B5DF4C94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError, &unk_1B5EAEF2C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B5DF4D40(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B5DF4DAC(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B5DF4E18(void *a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B5DF4EA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B5DF4F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B5EA5FD0();
  sub_1B5EA5600();
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF4F84@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B5EA5670();

  *a2 = v3;
  return result;
}

uint64_t sub_1B5DF4FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B5DF4FF8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B5DF4FFC(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA20, type metadata accessor for ClassificationClientError, &unk_1B5EAECAC);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B5DF5068(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA20, type metadata accessor for ClassificationClientError, &unk_1B5EAECAC);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B5DF50D4(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError, &unk_1B5EAEF2C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B5DF5140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5DF4004(&qword_1EB90DA50, type metadata accessor for ClassificationClientError, &unk_1B5EAEF2C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B5DF5218(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90D9E0, type metadata accessor for SummarizationClientError, &unk_1B5EAEDD8);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B5DF5284(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90D9E0, type metadata accessor for SummarizationClientError, &unk_1B5EAEDD8);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B5DF52F0(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B5DF535C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B5DF4004(&qword_1EB90DA18, type metadata accessor for SummarizationClientError, &unk_1B5EAEE1C);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1B5DF55A4()
{
  result = qword_1EB90DA08;
  if (!qword_1EB90DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA08);
  }

  return result;
}

unint64_t sub_1B5DF5898()
{
  result = qword_1EB90D7E8;
  if (!qword_1EB90D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7E8);
  }

  return result;
}

unint64_t sub_1B5DF58F0()
{
  result = qword_1EB90D7F0;
  if (!qword_1EB90D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D7F0);
  }

  return result;
}

uint64_t sub_1B5DF5944(uint64_t a1)
{
  v2 = sub_1B5DF4004(&qword_1EB90D1E0, type metadata accessor for TCTextCompositionAssistantResponseType, &unk_1B5EAF254);
  v3 = sub_1B5DF4004(&qword_1EB90DA78, type metadata accessor for TCTextCompositionAssistantResponseType, &unk_1B5EAF1A8);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1B5DF5A14(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B5DF5B38(uint64_t a1, uint64_t a2)
{
  sub_1B5EA56A0();
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  v2 = sub_1B5EA6020();

  return v2;
}

uint64_t sub_1B5DF5BAC(uint64_t a1, uint64_t a2)
{
  sub_1B5EA56A0();
  sub_1B5EA5710();
}

uint64_t sub_1B5DF5C00(uint64_t a1, id *a2)
{
  v3 = sub_1B5EA5690();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B5DF5C84(uint64_t a1, id *a2)
{
  result = sub_1B5EA5680();
  *a2 = 0;
  return result;
}

uint64_t sub_1B5DF5CFC(uint64_t a1)
{
  sub_1B5EA56A0();
  v1 = sub_1B5EA5670();

  return v1;
}

uint64_t sub_1B5DF5D34(uint64_t a1)
{
  v1 = sub_1B5EA56A0();
  v2 = MEMORY[0x1B8C8A3C0](v1);

  return v2;
}

uint64_t sub_1B5DF5E14@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  LOBYTE(a2) = v3;

  return MEMORY[0x1EEE49F08](v2, 0, 1, 0, 1, 0, 1, 0, a2, a1, 0);
}

uint64_t sub_1B5DF5EE8()
{

  return sub_1B5DF43C8(v2, v3, v0, v1);
}

uint64_t sub_1B5DF5F08()
{

  return MEMORY[0x1EEE49E70](0);
}

uint64_t ClientProcessInfo.applicationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void ClientProcessInfo.init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B5DF7168();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v39 = v13;
  sub_1B5EA4110();
  sub_1B5DF5DA8();
  v37 = v14;
  v38 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B5EA4100();
  sub_1B5DF5DA8();
  v40 = v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  v26 = v12;
  v27 = v10;
  v28 = v8;
  v29 = sub_1B5EA53C0();
  if (!v4)
  {
    v31 = v40;
    if (v30)
    {
      *v41.val = v26;
      *&v41.val[2] = v27;
      *&v41.val[4] = v28;
      *&v41.val[6] = v6;
      v32 = v29;
      v33 = v30;
      v34 = audit_token_to_pid(&v41);
      v35 = v39;
      *v39 = v32;
      v35[1] = v33;
      *(v35 + 4) = v34;
    }

    else
    {
      sub_1B5EA40F0();
      (*(v31 + 16))(v23, v25, v18);
      sub_1B5DF6A60(MEMORY[0x1E69E7CC0]);
      sub_1B5DF6B98();
      v36 = v37;
      sub_1B5EA4220();
      sub_1B5EA40C0();
      (*(v38 + 8))(v17, v36);
      swift_willThrow();
      (*(v31 + 8))(v25, v18);
    }
  }

  sub_1B5DF7180();
}

uint64_t ClientProcessInfo.init(applicationIdentifier:processIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void ClientProcessInfo.init(processIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DF7168();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1B5EA53B0();
  sub_1B5DF5DA8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1B5EA53D0();
  if (!v20)
  {
    if (!v34)
    {
      sub_1B5EA4E10();
      v35 = sub_1B5EA5380();
      v36 = sub_1B5EA5A40();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 67109120;
        *(v37 + 4) = v24;
        _os_log_impl(&dword_1B5DED000, v35, v36, "Could not look up bundle identifier for pid %d", v37, 8u);
        MEMORY[0x1B8C8B330](v37, -1, -1);
      }

      (*(v29 + 8))(v32, v27);
      v34 = 0xE700000000000000;
      v33 = 0x6E776F6E6B6E75;
    }

    *v26 = v33;
    *(v26 + 8) = v34;
    *(v26 + 16) = v24;
  }

  sub_1B5DF7180();
}

BOOL static ClientProcessInfo.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1B5EA5F00();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1B5DF63B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001B5EA8830 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B5EA8850 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

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

uint64_t sub_1B5DF6498(char a1)
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](a1 & 1);
  return sub_1B5EA6020();
}

unint64_t sub_1B5DF64E0(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1B5DF6520(uint64_t a1)
{
  v2 = *v1;
  sub_1B5EA5FD0();
  sub_1B5DF3250(v4, v2);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF656C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF63B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF6594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF6490();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF65BC(uint64_t a1)
{
  v2 = sub_1B5DF6D1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF65F8(uint64_t a1)
{
  v2 = sub_1B5DF6D1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ClientProcessInfo.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  v34 = v23;
  v25 = v24;
  v26 = sub_1B5DF33E0(&qword_1EB90DA88, &qword_1B5EAF2A0);
  sub_1B5DF5DA8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v33 - v30;
  sub_1B5DF3BFC(v25, v25[3]);
  sub_1B5DF6D1C();
  sub_1B5EA6040();
  v32 = v34;
  sub_1B5EA5E50();
  if (!v32)
  {
    sub_1B5EA5EB0();
  }

  (*(v28 + 8))(v31, v26);
  sub_1B5DF7180();
}

uint64_t ClientProcessInfo.hashValue.getter()
{
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  sub_1B5EA6000();
  return sub_1B5EA6020();
}

void ClientProcessInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  v25 = v24;
  v27 = v26;
  sub_1B5DF33E0(&qword_1EB90DA90, &qword_1B5EAF2A8);
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5DF3BFC(v25, v25[3]);
  sub_1B5DF6D1C();
  sub_1B5EA6030();
  if (v23)
  {
    sub_1B5DF3FB8(v25);
  }

  else
  {
    v29 = sub_1B5EA5D70();
    v31 = v30;
    v32 = sub_1B5EA5DD0();
    v33 = sub_1B5DF7158();
    v34(v33);
    *v27 = v29;
    *(v27 + 8) = v31;
    *(v27 + 16) = v32;

    sub_1B5DF3FB8(v25);
  }

  sub_1B5DF7180();
}

uint64_t sub_1B5DF6A0C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v5[10] = v2;
  v6 = v3;
  sub_1B5EA5FD0();
  ClientProcessInfo.hash(into:)(v5);
  return sub_1B5EA6020();
}

unint64_t sub_1B5DF6A60(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_1B5DF33E0(&qword_1EB90DAA8, &qword_1B5EAF4C8);
  v2 = sub_1B5EA5CE0();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1B5DF70D8(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1B5DF6BF0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1B5DF7148(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1B5DF6B98()
{
  result = qword_1EB90DA80;
  if (!qword_1EB90DA80)
  {
    sub_1B5EA4110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA80);
  }

  return result;
}

unint64_t sub_1B5DF6BF0(uint64_t a1, uint64_t a2)
{
  sub_1B5EA5FD0();
  sub_1B5EA5710();
  v4 = sub_1B5EA6020();

  return sub_1B5DF6C68(a1, a2, v4);
}

unint64_t sub_1B5DF6C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1B5EA5F00() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1B5DF6D1C()
{
  result = qword_1EB90D098;
  if (!qword_1EB90D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D098);
  }

  return result;
}

unint64_t sub_1B5DF6D74()
{
  result = qword_1EB90DA98;
  if (!qword_1EB90DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DA98);
  }

  return result;
}

__n128 sub_1B5DF6DC8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF6DDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_1B5DF6E1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientProcessInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ClientProcessInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5DF6FD4()
{
  result = qword_1EB90DAA0;
  if (!qword_1EB90DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DAA0);
  }

  return result;
}

unint64_t sub_1B5DF702C()
{
  result = qword_1EB90D088;
  if (!qword_1EB90D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D088);
  }

  return result;
}

unint64_t sub_1B5DF7084()
{
  result = qword_1EB90D090;
  if (!qword_1EB90D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D090);
  }

  return result;
}

uint64_t sub_1B5DF70D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DAB0, &unk_1B5EAF4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B5DF7148(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B5DF71AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697665446E6FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B5EA88A0 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000001B5EA88C0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

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

uint64_t sub_1B5DF72D0(char a1)
{
  if (!a1)
  {
    return 0x6563697665446E6FLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000014;
}

uint64_t sub_1B5DF735C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF71AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF7384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF72C8();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF73AC(uint64_t a1)
{
  v2 = sub_1B5DF78CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF73E8(uint64_t a1)
{
  v2 = sub_1B5DF78CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5DF7444@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF7328();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B5DF7470(uint64_t a1)
{
  v2 = sub_1B5DF7920();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF74AC(uint64_t a1)
{
  v2 = sub_1B5DF7920();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5DF74E8(uint64_t a1)
{
  v2 = sub_1B5DF79C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF7524(uint64_t a1)
{
  v2 = sub_1B5DF79C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B5DF7560(uint64_t a1)
{
  v2 = sub_1B5DF7974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF759C(uint64_t a1)
{
  v2 = sub_1B5DF7974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceEnvironmentInfo.ExecutionEnvironment.encode(to:)(void *a1)
{
  sub_1B5DF33E0(&qword_1EB90DAB8, &qword_1B5EAF4E0);
  sub_1B5DF5DA8();
  v33 = v4;
  v34 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFA50C();
  v32 = v6;
  sub_1B5DF33E0(&qword_1EB90DAC0, &qword_1B5EAF4E8);
  sub_1B5DF5DA8();
  v30 = v8;
  v31 = v7;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFA50C();
  v29 = v10;
  sub_1B5DF33E0(&qword_1EB90DAC8, &qword_1B5EAF4F0);
  sub_1B5DF5DA8();
  v27 = v12;
  v28 = v11;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = sub_1B5DF33E0(&qword_1EB90DAD0, &qword_1B5EAF4F8);
  sub_1B5DF5DA8();
  v18 = v17;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  v22 = *v1;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF78CC();
  sub_1B5EA6040();
  if (v22)
  {
    if (v22 == 1)
    {
      v36 = 1;
      sub_1B5DF7974();
      v15 = v29;
      sub_1B5DFA494(&type metadata for InferenceEnvironmentInfo.ExecutionEnvironment.PrivateCloudComputeCodingKeys, &v36);
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v37 = 2;
      sub_1B5DF7920();
      v15 = v32;
      sub_1B5DFA494(&type metadata for InferenceEnvironmentInfo.ExecutionEnvironment.ExternalIntelligenceCodingKeys, &v37);
      v24 = v33;
      v23 = v34;
    }
  }

  else
  {
    v35 = 0;
    sub_1B5DF79C8();
    sub_1B5DFA494(&type metadata for InferenceEnvironmentInfo.ExecutionEnvironment.OnDeviceCodingKeys, &v35);
    v24 = v27;
    v23 = v28;
  }

  (*(v24 + 8))(v15, v23);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_1B5DF78CC()
{
  result = qword_1EB90D2D8;
  if (!qword_1EB90D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2D8);
  }

  return result;
}

unint64_t sub_1B5DF7920()
{
  result = qword_1EB90DAD8;
  if (!qword_1EB90DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DAD8);
  }

  return result;
}

unint64_t sub_1B5DF7974()
{
  result = qword_1EB90DAE0;
  if (!qword_1EB90DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DAE0);
  }

  return result;
}

unint64_t sub_1B5DF79C8()
{
  result = qword_1EB90D2C0;
  if (!qword_1EB90D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2C0);
  }

  return result;
}

uint64_t InferenceEnvironmentInfo.ExecutionEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](v1);
  return sub_1B5EA6020();
}

void InferenceEnvironmentInfo.ExecutionEnvironment.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v60 = a2;
  v64 = sub_1B5DF33E0(&qword_1EB90DAE8, &qword_1B5EAF500);
  sub_1B5DF5DA8();
  v61 = v3;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFA50C();
  v63 = v5;
  sub_1B5DF33E0(&qword_1EB90DAF0, &qword_1B5EAF508);
  sub_1B5DF5DA8();
  v58 = v7;
  v59 = v6;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = sub_1B5DF33E0(&qword_1EB90DAF8, &qword_1B5EAF510);
  sub_1B5DF5DA8();
  v57 = v12;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v52 - v14;
  v16 = sub_1B5DF33E0(&qword_1EB90DB00, &qword_1B5EAF518);
  sub_1B5DF5DA8();
  v62 = v17;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - v19;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF78CC();
  v21 = v65;
  sub_1B5EA6030();
  if (v21)
  {
    goto LABEL_11;
  }

  v54 = v11;
  v55 = v15;
  v56 = v10;
  v23 = v63;
  v22 = v64;
  v65 = a1;
  v24 = sub_1B5EA5DE0();
  sub_1B5DF9704(v24, 0);
  if (v27 != v28 >> 1)
  {
    v53 = 0;
    if (v27 >= (v28 >> 1))
    {
      __break(1u);
      return;
    }

    LODWORD(v29) = *(v26 + v27);
    sub_1B5DFA3A8(v27 + 1, v28 >> 1, v25, v26, v27, v28);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = v31 == v33 >> 1;
    v35 = v61;
    if (v34)
    {
      if (v29)
      {
        if (v29 == 1)
        {
          v67 = 1;
          sub_1B5DF7974();
          v36 = v56;
          sub_1B5DFA500();
          v37 = v53;
          sub_1B5EA5D10();
          v38 = v60;
          v39 = v16;
          v40 = v62;
          if (v37)
          {
            (*(v62 + 8))(v20, v39);
LABEL_17:
            swift_unknownObjectRelease();
            a1 = v65;
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*(v58 + 8))(v36, v59);
          (*(v40 + 8))(v20, v39);
        }

        else
        {
          LODWORD(v59) = v29;
          v68 = 2;
          sub_1B5DF7920();
          sub_1B5DFA500();
          v48 = v53;
          sub_1B5EA5D10();
          v38 = v60;
          v29 = v16;
          v49 = v62;
          if (v48)
          {
            (*(v62 + 8))(v20, v29);
            goto LABEL_17;
          }

          swift_unknownObjectRelease();
          (*(v35 + 8))(v23, v22);
          (*(v49 + 8))(v20, v29);
          LOBYTE(v29) = v59;
        }
      }

      else
      {
        v66 = 0;
        sub_1B5DF79C8();
        v44 = v55;
        sub_1B5DFA500();
        v45 = v53;
        sub_1B5EA5D10();
        if (v45)
        {
          v46 = sub_1B5DFA4CC();
          v47(v46);
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        (*(v57 + 8))(v44, v54);
        v50 = sub_1B5DFA4CC();
        v51(v50);
        v38 = v60;
      }

      *v38 = v29;
      sub_1B5DF3FB8(v65);
      return;
    }
  }

  v41 = sub_1B5EA5BF0();
  swift_allocError();
  v43 = v42;
  sub_1B5DF33E0(&qword_1EB90DB08, &qword_1B5EAF520);
  *v43 = &type metadata for InferenceEnvironmentInfo.ExecutionEnvironment;
  sub_1B5EA5D20();
  sub_1B5EA5BE0();
  (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v62 + 8))(v20, v16);
  a1 = v65;
LABEL_11:
  sub_1B5DF3FB8(a1);
}

uint64_t sub_1B5DF8060(uint64_t a1)
{
  v2 = *v1;
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](v2);
  return sub_1B5EA6020();
}

uint64_t InferenceEnvironmentInfo.modelIdentifier.setter()
{
  sub_1B5DFA47C();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.modelVersion.setter()
{
  sub_1B5DFA47C();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.tokenizerIdentifier.setter()
{
  sub_1B5DFA47C();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.tokenizerVersion.setter()
{
  sub_1B5DFA47C();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.baseModelIdentifier.setter()
{
  sub_1B5DFA47C();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.baseModelVersion.setter()
{
  sub_1B5DFA47C();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.draftModelIdentifier.setter()
{
  sub_1B5DFA47C();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.draftModelVersion.setter()
{
  sub_1B5DFA47C();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t InferenceEnvironmentInfo.detectedLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceEnvironmentInfo(0) + 52);

  return sub_1B5DF9788(v3, a1);
}

uint64_t InferenceEnvironmentInfo.detectedLanguage.setter()
{
  v2 = v1 + *(sub_1B5DFA518() + 52);

  return sub_1B5DF97F8(v0, v2);
}

uint64_t InferenceEnvironmentInfo.init(builder:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 3;
  v4 = type metadata accessor for InferenceEnvironmentInfo(0);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  v5 = v4[13];
  v6 = sub_1B5EA4350();
  sub_1B5DF3658(a2 + v5, 1, 1, v6);
  v7 = a2 + v4[14];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v4[15];
  *v8 = 0;
  *(v8 + 8) = 1;
  return a1(a2);
}

__n128 InferenceEnvironmentInfo.init(modelIdentifier:modelVersion:tokenizerIdentifier:tokenizerVersion:baseModelIdentifier:baseModelVersion:draftModelIdentifier:draftModelVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = 3;
  v20 = type metadata accessor for InferenceEnvironmentInfo(0);
  v21 = v20[13];
  v22 = sub_1B5EA4350();
  sub_1B5DF3658(a9 + v21, 1, 1, v22);
  v23 = a9 + v20[14];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = a9 + v20[15];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 88) = a11;
  result = a12;
  *(a9 + 104) = a12;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14;
  return result;
}

uint64_t sub_1B5DF88E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001B5EA88E0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001B5EA8900 == a2;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001B5EA8920 == a2;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x80000001B5EA8940 == a2;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001B5EA8960 == a2;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001B5EA8980 == a2;
                if (v12 || (sub_1B5EA5F00() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000011 && 0x80000001B5EA89A0 == a2;
                  if (v13 || (sub_1B5EA5F00() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x80000001B5EA89C0 == a2;
                    if (v14 || (sub_1B5EA5F00() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000018 && 0x80000001B5EA89E0 == a2;
                      if (v15 || (sub_1B5EA5F00() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000019 && 0x80000001B5EA8A00 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_1B5EA5F00();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1B5DF8C98(char a1)
{
  result = 0x6564496C65646F6DLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7265566C65646F6DLL;
      break;
    case 3:
    case 5:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1B5DF8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DF8E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5DF88E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5DF8E7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5DF8C90();
  *a1 = result;
  return result;
}

uint64_t sub_1B5DF8EA4(uint64_t a1)
{
  v2 = sub_1B5DF9868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5DF8EE0(uint64_t a1)
{
  v2 = sub_1B5DF9868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t InferenceEnvironmentInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1B5DF33E0(&qword_1EB90DB18, &qword_1B5EAF530);
  sub_1B5DF5DA8();
  v7 = v6;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF9868();
  sub_1B5EA6040();
  v13[15] = *v3;
  v13[14] = 0;
  sub_1B5DF98BC();
  sub_1B5EA5E40();
  if (!v2)
  {
    v13[13] = 1;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[12] = 2;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[11] = 3;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[10] = 4;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[9] = 5;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[8] = 6;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[7] = 7;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v13[6] = 8;
    sub_1B5DFA44C();
    sub_1B5EA5E10();
    v11 = type metadata accessor for InferenceEnvironmentInfo(0);
    v13[5] = 9;
    sub_1B5EA4350();
    sub_1B5DF99C0(&qword_1EB90D910, MEMORY[0x1E6969728]);
    sub_1B5EA5E40();
    sub_1B5DFA4E0(&v3[*(v11 + 56)]);
    v13[4] = 10;
    sub_1B5DFA44C();
    sub_1B5EA5E30();
    sub_1B5DFA4E0(&v3[*(v11 + 60)]);
    v13[3] = 11;
    sub_1B5DFA44C();
    sub_1B5EA5E30();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t InferenceEnvironmentInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v3);
  sub_1B5DFA50C();
  v47 = v4;
  v49 = sub_1B5DF33E0(&qword_1EB90DB20, &qword_1B5EAF538);
  sub_1B5DF5DA8();
  v46 = v5;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for InferenceEnvironmentInfo(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 3;
  *(v12 + 40) = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0u;
  *(v12 + 104) = 0u;
  *(v12 + 120) = 0u;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  v13 = v10[15];
  v14 = sub_1B5EA4350();
  sub_1B5DF3658(&v12[v13], 1, 1, v14);
  v15 = &v12[v10[16]];
  *v15 = 0;
  v15[8] = 1;
  v16 = v10[17];
  v51 = a1;
  v52 = v12;
  v17 = &v12[v16];
  *v17 = 0;
  v17[8] = 1;
  sub_1B5DF3BFC(a1, a1[3]);
  sub_1B5DF9868();
  v48 = v8;
  v18 = v50;
  sub_1B5EA6030();
  if (v18)
  {
    v21 = v52;
    sub_1B5DF3FB8(v51);
    v43 = v21;
  }

  else
  {
    v50 = v13;
    v44 = v15;
    v19 = v46;
    v20 = v47;
    v63[1] = 0;
    sub_1B5DF996C();
    sub_1B5DFA500();
    sub_1B5EA5D60();
    v23 = v52;
    *v52 = v63[2];
    v63[0] = 1;
    v23[1] = sub_1B5DFA4B4(v63);
    v23[2] = v24;
    v62 = 2;
    v23[3] = sub_1B5DFA4B4(&v62);
    v23[4] = v25;
    v61 = 3;
    v23[5] = sub_1B5DFA4B4(&v61);
    v23[6] = v26;
    v60 = 4;
    v23[7] = sub_1B5DFA4B4(&v60);
    v23[8] = v27;
    v59 = 5;
    v23[9] = sub_1B5DFA4B4(&v59);
    v23[10] = v28;
    v58 = 6;
    v23[11] = sub_1B5DFA4B4(&v58);
    v23[12] = v29;
    v57 = 7;
    v30 = sub_1B5DFA4B4(&v57);
    v31 = v52;
    v52[13] = v30;
    *(v31 + 112) = v32;
    v56 = 8;
    v33 = sub_1B5DFA4B4(&v56);
    v34 = v52;
    v52[15] = v33;
    *(v34 + 128) = v35;
    v55 = 9;
    sub_1B5DF99C0(&qword_1EB90D908, MEMORY[0x1E6969740]);
    sub_1B5EA5D60();
    sub_1B5DF97F8(v20, v52 + v50);
    v54 = 10;
    v36 = sub_1B5EA5D50();
    v37 = v44;
    *v44 = v36;
    *(v37 + 8) = v38 & 1;
    v53 = 11;
    v39 = sub_1B5EA5D50();
    v41 = v40;
    (*(v19 + 8))(v48, v49);
    *v17 = v39;
    v17[8] = v41 & 1;
    v42 = v52;
    sub_1B5DF9A04(v52, v45);
    sub_1B5DF3FB8(v51);
    v43 = v42;
  }

  return sub_1B5DF9910(v43);
}

void sub_1B5DF9704(uint64_t result, uint64_t a2)
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

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1B5DFA45C();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t type metadata accessor for InferenceEnvironmentInfo(uint64_t a1)
{
  result = qword_1ED7D2C60;
  if (!qword_1ED7D2C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B5DF9788(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5DF97F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DB10, &qword_1B5EAF528);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5DF9868()
{
  result = qword_1ED7D1F58;
  if (!qword_1ED7D1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F58);
  }

  return result;
}

unint64_t sub_1B5DF98BC()
{
  result = qword_1EB90CF10;
  if (!qword_1EB90CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF10);
  }

  return result;
}

uint64_t sub_1B5DF9910(uint64_t a1)
{
  v2 = type metadata accessor for InferenceEnvironmentInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5DF996C()
{
  result = qword_1EB90CF08;
  if (!qword_1EB90CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CF08);
  }

  return result;
}

uint64_t sub_1B5DF99C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B5EA4350();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B5DF9A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceEnvironmentInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B5DF9A6C()
{
  result = qword_1EB90DB28;
  if (!qword_1EB90DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB28);
  }

  return result;
}

void sub_1B5DF9AE8(uint64_t a1)
{
  sub_1B5DF9C34(319, qword_1ED7D2C70, &type metadata for InferenceEnvironmentInfo.ExecutionEnvironment);
  if (v1 <= 0x3F)
  {
    sub_1B5DF9C34(319, &qword_1ED7D2D00, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1B5DF9BDC(319);
      if (v3 <= 0x3F)
      {
        sub_1B5DF9C34(319, &qword_1ED7D2BA0, MEMORY[0x1E69E6530]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B5DF9BDC(uint64_t a1)
{
  if (!qword_1ED7D2CF8)
  {
    sub_1B5EA4350();
    v1 = sub_1B5EA5AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7D2CF8);
    }
  }
}

void sub_1B5DF9C34(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B5EA5AD0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for InferenceEnvironmentInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for InferenceEnvironmentInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for NoteMessage.VisualPromptOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_1B5DF9E7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B5DF9F8C()
{
  result = qword_1EB90DB30;
  if (!qword_1EB90DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB30);
  }

  return result;
}

unint64_t sub_1B5DF9FE4()
{
  result = qword_1EB90DB38;
  if (!qword_1EB90DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB38);
  }

  return result;
}

unint64_t sub_1B5DFA03C()
{
  result = qword_1ED7D1F48;
  if (!qword_1ED7D1F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F48);
  }

  return result;
}

unint64_t sub_1B5DFA094()
{
  result = qword_1ED7D1F50;
  if (!qword_1ED7D1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7D1F50);
  }

  return result;
}

unint64_t sub_1B5DFA0EC()
{
  result = qword_1EB90D2B0;
  if (!qword_1EB90D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2B0);
  }

  return result;
}

unint64_t sub_1B5DFA144()
{
  result = qword_1EB90D2B8;
  if (!qword_1EB90D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2B8);
  }

  return result;
}

unint64_t sub_1B5DFA19C()
{
  result = qword_1EB90D2A0;
  if (!qword_1EB90D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2A0);
  }

  return result;
}

unint64_t sub_1B5DFA1F4()
{
  result = qword_1EB90D2A8;
  if (!qword_1EB90D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2A8);
  }

  return result;
}

unint64_t sub_1B5DFA24C()
{
  result = qword_1EB90D290;
  if (!qword_1EB90D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D290);
  }

  return result;
}

unint64_t sub_1B5DFA2A4()
{
  result = qword_1EB90D298;
  if (!qword_1EB90D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D298);
  }

  return result;
}

unint64_t sub_1B5DFA2FC()
{
  result = qword_1EB90D2C8;
  if (!qword_1EB90D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2C8);
  }

  return result;
}

unint64_t sub_1B5DFA354()
{
  result = qword_1EB90D2D0;
  if (!qword_1EB90D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D2D0);
  }

  return result;
}

uint64_t sub_1B5DFA3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_1B5DFA494(uint64_t a1, uint64_t a2)
{

  return sub_1B5EA5E00();
}

uint64_t sub_1B5DFA4B4(uint64_t a1)
{

  return sub_1B5EA5D30();
}

void sub_1B5DFA4EC(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t sub_1B5DFA518()
{

  return type metadata accessor for InferenceEnvironmentInfo(0);
}

uint64_t SessionConfiguration.tokenGeneratorConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionConfiguration(0) + 20);
  sub_1B5EA4930();
  sub_1B5DF5EB8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SessionConfiguration(uint64_t a1)
{
  result = qword_1EB90D4B0;
  if (!qword_1EB90D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SessionConfiguration.tokenGeneratorConfig.setter()
{
  v2 = *(sub_1B5DFD878() + 20);
  sub_1B5EA4930();
  sub_1B5DF5EB8();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t SessionConfiguration.instructions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SessionConfiguration(0) + 24);
  sub_1B5EA5450();
  sub_1B5DF5EB8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SessionConfiguration.instructions.setter()
{
  v2 = *(sub_1B5DFD878() + 24);
  sub_1B5EA5450();
  sub_1B5DF5EB8();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t SessionConfiguration.templateID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionConfiguration(0) + 28));

  return v1;
}

uint64_t SessionConfiguration.templateID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionConfiguration(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionConfiguration.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SessionConfiguration(0) + 32));

  return v1;
}

uint64_t SessionConfiguration.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SessionConfiguration(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SessionConfiguration.variableBindings.getter()
{
  type metadata accessor for SessionConfiguration(0);
}

uint64_t SessionConfiguration.variableBindings.setter()
{
  v2 = *(sub_1B5DFD878() + 36);

  *(v1 + v2) = v0;
  return result;
}

void sub_1B5DFAA14(unint64_t a1, char a2, __n128 a3)
{
  if ((a2 & 1) == 0 && (*&a1 < 0.0 || *&a1 > 600.0))
  {
    if (qword_1EB90D178 != -1)
    {
      swift_once();
    }

    v3 = sub_1B5EA53B0();
    sub_1B5DFD794(v3, qword_1EB90D180);
    v4 = sub_1B5EA5380();
    v5 = sub_1B5EA5A40();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B5DED000, v4, v5, "Invalid time to live provided, ignoring passed in value", v6, 2u);
      MEMORY[0x1B8C8B330](v6, -1, -1);
    }
  }
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:identifier:instructions:templateID:)()
{
  sub_1B5DFD840();
  v52 = v1;
  v53 = v2;
  v55 = v3;
  v56 = v4;
  v54 = v5;
  v7 = v6;
  v46 = v8;
  v47 = v9;
  v51 = v10;
  v11 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  v17 = (v16 - v15);
  v18 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7CC();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v41 - v23;
  v25 = *(v20 + 16);
  v49 = v7;
  v25(&v41 - v23, v7, v18);
  v48 = v13;
  v26 = *(v13 + 16);
  v45 = v17;
  v50 = v11;
  v43 = v26;
  v26(v17, v56, v11);
  v44 = v24;
  v25(v0, v24, v18);
  sub_1B5EA4900();
  if (!v27)
  {
  }

  v28 = type metadata accessor for SessionConfiguration(0);
  v29 = v51;
  v41 = &v51[v28[7]];
  v42 = v28[9];
  sub_1B5EA4910();
  v25(&v29[v28[5]], v0, v18);
  v30 = v45;
  v31 = v50;
  v32.n128_f64[0] = v43(&v29[v28[6]], v45, v50);
  v33 = &v29[v28[8]];
  v34 = v55;
  *v33 = v54;
  *(v33 + 1) = v34;
  sub_1B5DFAA14(v47, v46 & 1, v32);
  v36 = v35;
  v37 = *(v48 + 8);
  v37(v56, v31);
  v38 = *(v20 + 8);
  v38(v49, v18);
  v38(v0, v18);
  v37(v30, v31);
  v38(v44, v18);
  *v29 = v36;
  v39 = v53;
  v40 = v41;
  *v41 = v52;
  *(v40 + 1) = v39;
  *&v29[v42] = 0;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:identifier:instructions:templateID:variableBindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DFD840();
  v63 = v23;
  v64 = v24;
  v60 = v25;
  v61 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v59 = v33;
  v35 = v34;
  v36 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1B5DFD7E8();
  v42 = v41 - v40;
  v43 = *(v38 + 16);
  v62 = v32;
  v43(v41 - v40, v32, v36);
  sub_1B5EA4900();
  v56 = v30;
  v57 = v28;
  if (!v44)
  {
  }

  v45 = type metadata accessor for SessionConfiguration(0);
  v46 = &v35[v45[7]];
  v58 = v45[9];
  sub_1B5EA4910();
  v43(&v35[v45[5]], v42, v36);
  v47 = v45[6];
  v48 = sub_1B5EA5450();
  sub_1B5DFD8F0();
  v50 = v49;
  v51.n128_f64[0] = (*(v49 + 16))(&v35[v47], v61, v48);
  v52 = &v35[v45[8]];
  *v52 = v56;
  *(v52 + 1) = v57;
  sub_1B5DFAA14(v60, v59 & 1, v51);
  v54 = v53;
  (*(v50 + 8))(v61, v48);
  v55 = *(v38 + 8);
  v55(v62, v36);
  v55(v42, v36);
  *v35 = v54;
  *v46 = v63;
  *(v46 + 1) = v64;
  *&v35[v58] = a23;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:identifier:instructions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B5DFD840();
  v62 = v8;
  v63 = v7;
  v51 = v9;
  v59 = v11;
  v60 = v10;
  v54 = v12;
  v55 = v13;
  v14 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFD7F8();
  v61 = (v18 - v19);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  v23 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFD7CC();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v48 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v48 - v31;
  v53 = v25;
  v33 = *(v25 + 16);
  v33(&v48 - v31, v63, v23);
  v57 = v16;
  v34 = *(v16 + 16);
  v34(v22, v62, v14);
  v52 = v32;
  v33(v30, v32, v23);
  v56 = v22;
  v58 = v14;
  v49 = v34;
  v34(v61, v22, v14);
  v50 = v30;
  v33(v6, v30, v23);
  sub_1B5EA4900();
  if (v35)
  {
    v36 = v51;
  }

  else
  {
  }

  v37 = type metadata accessor for SessionConfiguration(0);
  v38 = v59;
  v48 = &v59[v37[7]];
  v51 = v37[9];
  sub_1B5EA4910();
  v33(&v38[v37[5]], v6, v23);
  v39 = v61;
  v40 = v58;
  v41.n128_f64[0] = v49(&v38[v37[6]], v61, v58);
  v42 = &v38[v37[8]];
  *v42 = v60;
  *(v42 + 1) = v36;
  sub_1B5DFAA14(v55, v54 & 1, v41);
  v44 = v43;
  v45 = *(v57 + 8);
  v45(v62, v40);
  v46 = *(v53 + 8);
  v46(v63, v23);
  v46(v6, v23);
  v45(v39, v40);
  v46(v50, v23);
  v45(v56, v40);
  v46(v52, v23);
  *v38 = v44;
  v47 = v48;
  *v48 = 0;
  *(v47 + 1) = 0;
  *&v38[v51] = 0;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B5DFD8A8();
  v51 = v7;
  v52 = v8;
  v54 = v9;
  v55 = v10;
  v53 = v11;
  v13 = v12;
  v50 = v14;
  v15 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  v21 = (v20 - v19);
  v22 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1B5DFD7CC();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v42 - v27;
  v29 = *(v24 + 16);
  v48 = v13;
  v29(&v42 - v27, v13, v22);
  v46 = v21;
  v47 = v17;
  v30 = *(v17 + 16);
  v49 = v15;
  v44 = v30;
  v30(v21, v55, v15);
  v45 = v28;
  v29(v6, v28, v22);
  sub_1B5EA4900();
  if (!v31)
  {
  }

  v32 = type metadata accessor for SessionConfiguration(0);
  v33 = v50;
  v42 = &v50[v32[7]];
  v43 = v32[9];
  sub_1B5EA4910();
  v29(&v33[v32[5]], v6, v22);
  v34 = v46;
  v35 = v49;
  v44(&v33[v32[6]], v46, v49);
  v36 = &v33[v32[8]];
  v37 = v54;
  *v36 = v53;
  *(v36 + 1) = v37;
  v38 = *(v47 + 8);
  v38(v55, v35);
  v39 = *(v24 + 8);
  v39(v48, v22);
  v39(v6, v22);
  v38(v34, v35);
  v39(v45, v22);
  *v33 = 0x4082C00000000000;
  v40 = v52;
  v41 = v42;
  *v42 = v51;
  *(v41 + 1) = v40;
  *&v33[v43] = 0;
  sub_1B5DFD8C0();
}

void SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:templateID:variableBindings:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B5DFD8A8();
  v56 = v8;
  v57 = v9;
  v54 = v11;
  v55 = v10;
  v59 = v12;
  v60 = v13;
  v58 = v14;
  v16 = v15;
  v17 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7E8();
  v23 = (v22 - v21);
  v24 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1B5DFD7CC();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - v29;
  v31 = *(v26 + 16);
  v52 = v16;
  v31(&v45 - v29, v16, v24);
  v50 = v23;
  v51 = v19;
  v32 = *(v19 + 16);
  v53 = v17;
  v48 = v32;
  v32(v23, v60, v17);
  v49 = v30;
  v31(v7, v30, v24);
  sub_1B5EA4900();
  if (!v33)
  {
  }

  v34 = type metadata accessor for SessionConfiguration(0);
  v35 = v54;
  v46 = &v54[v34[7]];
  v47 = v34[9];
  sub_1B5EA4910();
  v31(&v35[v34[5]], v7, v24);
  v36 = v50;
  v37 = v53;
  v48(&v35[v34[6]], v50, v53);
  v38 = &v35[v34[8]];
  v39 = v59;
  *v38 = v58;
  *(v38 + 1) = v39;
  v40 = *(v51 + 8);
  v40(v60, v37);
  v41 = *(v26 + 8);
  v41(v52, v24);
  v41(v7, v24);
  v40(v36, v37);
  v41(v49, v24);
  *v35 = 0x4082C00000000000;
  v42 = v56;
  v44 = v46;
  v43 = v47;
  *v46 = v55;
  *(v44 + 1) = v42;
  *&v35[v43] = v57;
  sub_1B5DFD8C0();
}

void SessionConfiguration.init(tokenGeneratorConfig:identifier:instructions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B5DFD8A8();
  v72 = v7;
  v66 = v9;
  v67 = v8;
  v11 = v10;
  v65 = v12;
  v73 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7F8();
  v70 = (v16 - v17);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v18);
  v71 = &v56 - v19;
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  v23 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1B5DFD7F8();
  v68 = (v27 - v28);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v29);
  v69 = &v56 - v30;
  sub_1B5DFD824();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v56 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v56 - v35;
  v61 = v25;
  v37 = *(v25 + 16);
  v63 = v11;
  v37(&v56 - v35, v11, v23);
  v64 = v14;
  v38 = *(v14 + 16);
  v39 = v73;
  v38(v22, v72, v73);
  v60 = v36;
  v37(v34, v36, v23);
  v40 = v71;
  v62 = v22;
  v38(v71, v22, v39);
  v41 = v69;
  v59 = v34;
  v37(v69, v34, v23);
  v58 = v38;
  v38(v70, v40, v39);
  v42 = v37;
  v43 = v23;
  v42(v68, v41, v23);
  sub_1B5EA4900();
  if (!v44)
  {
  }

  v45 = type metadata accessor for SessionConfiguration(0);
  v46 = v65;
  v56 = &v65[v45[7]];
  v57 = v45[9];
  v47 = v68;
  sub_1B5EA4910();
  v42(&v46[v45[5]], v47, v43);
  v48 = v70;
  v49 = v73;
  v58(&v46[v45[6]], v70, v73);
  v50 = &v46[v45[8]];
  v51 = v66;
  *v50 = v67;
  *(v50 + 1) = v51;
  v52 = *(v64 + 8);
  v52(v72, v49);
  v53 = *(v61 + 8);
  v53(v63, v43);
  v53(v47, v43);
  v52(v48, v49);
  v53(v69, v43);
  v52(v71, v49);
  v53(v59, v43);
  v52(v62, v49);
  v53(v60, v43);
  *v46 = 0x4082C00000000000;
  v55 = v56;
  v54 = v57;
  *v56 = 0;
  *(v55 + 1) = 0;
  *&v46[v54] = 0;
  sub_1B5DFD8C0();
}

void SessionConfiguration.init(timeToLive:tokenGeneratorConfig:instructions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B5DFD840();
  v79 = v8;
  v80 = v7;
  v70 = v9;
  v71 = v10;
  v73 = v11;
  sub_1B5EA5450();
  sub_1B5DF5DA8();
  v81 = v13;
  v82 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFD7F8();
  v77 = (v14 - v15);
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v64 - v17;
  sub_1B5DFD824();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v64 - v19;
  v21 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1B5DFD7E8();
  v27 = v26 - v25;
  v28 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5DFD7F8();
  v76 = (v32 - v33);
  sub_1B5DFD824();
  v35 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v64 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v64 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v42 = &v64 - v41;
  v66 = v30;
  v43 = *(v30 + 16);
  v43(&v64 - v41, v80, v28);
  sub_1B5EA4330();
  v44 = sub_1B5EA4300();
  v74 = v45;
  v75 = v44;
  (*(v23 + 8))(v27, v21);
  v46 = v82;
  v47 = *(v81 + 16);
  v47(v20, v79, v82);
  v69 = v42;
  v43(v40, v42, v28);
  v48 = v78;
  v72 = v20;
  v47(v78, v20, v46);
  v68 = v40;
  v43(v37, v40, v28);
  v47(v77, v48, v46);
  v67 = v37;
  v43(v76, v37, v28);
  sub_1B5EA4900();
  if (!v49)
  {
  }

  v50 = type metadata accessor for SessionConfiguration(0);
  v51 = v73;
  v64 = &v73[v50[7]];
  v65 = v50[9];
  v52 = v76;
  sub_1B5EA4910();
  v43(&v51[v50[5]], v52, v28);
  v53 = v77;
  v54 = v82;
  v55.n128_f64[0] = v47(&v51[v50[6]], v77, v82);
  v56 = &v51[v50[8]];
  v57 = v74;
  *v56 = v75;
  v56[1] = v57;
  sub_1B5DFAA14(v71, v70 & 1, v55);
  v59 = v58;
  v60 = *(v81 + 8);
  v60(v79, v54);
  v61 = *(v66 + 8);
  v61(v80, v28);
  v61(v52, v28);
  v60(v53, v54);
  v61(v67, v28);
  v60(v78, v54);
  v61(v68, v28);
  v60(v72, v54);
  v61(v69, v28);
  *v51 = v59;
  v63 = v64;
  v62 = v65;
  *v64 = 0;
  *(v63 + 1) = 0;
  *&v51[v62] = 0;
  sub_1B5DFD85C();
}

void SessionConfiguration.init(tokenGeneratorConfig:instructions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B5DFD8A8();
  v8 = v7;
  v10 = v9;
  v11 = sub_1B5EA5450();
  sub_1B5DF5DA8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  v17 = v16 - v15;
  v18 = sub_1B5EA4930();
  sub_1B5DF5DA8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7E8();
  v24 = v23 - v22;
  (*(v20 + 16))(v23 - v22, v10, v18);
  (*(v13 + 16))(v17, v8, v11);
  SessionConfiguration.init(timeToLive:tokenGeneratorConfig:instructions:)(0, 1, v24, v17, v25, v26, v27);
  (*(v13 + 8))(v8, v11);
  (*(v20 + 8))(v10, v18);
  sub_1B5DFD8C0();
}

void SessionConfiguration.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B5DFD8A8();
  v9 = v8;
  sub_1B5EA5520();
  sub_1B5DF5DA8();
  v42 = v10;
  v43 = v11;
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  v41 = v13 - v12;
  v14 = *v7;
  if (*v7 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1B8C8AC30](*&v14);
  v15 = type metadata accessor for SessionConfiguration(0);
  sub_1B5EA4930();
  v16 = sub_1B5DFD74C(&qword_1EB90DB40, MEMORY[0x1E69DA580], MEMORY[0x1E69DA588]);
  sub_1B5DFD91C(v16);
  sub_1B5EA5450();
  v17 = sub_1B5DFD74C(&qword_1EB90DB48, MEMORY[0x1E69C61C0], MEMORY[0x1E69C61D0]);
  sub_1B5DFD91C(v17);
  if (*(v7 + *(v15 + 28) + 8))
  {
    sub_1B5EA5FF0();
    sub_1B5EA5710();
  }

  else
  {
    sub_1B5EA5FF0();
  }

  sub_1B5EA5710();
  v18 = *(v7 + *(v15 + 36));
  if (v18)
  {
    v38 = v9;
    sub_1B5DF33E0(&qword_1EB90DB50, &qword_1B5EAFB40);
    v19 = sub_1B5EA5CC0();
    v20 = 0;
    sub_1B5DFD808();
    v24 = (v23 + 63) >> 6;
    v39 = v25 + 8;
    v40 = v25;
    if ((v22 & v21) != 0)
    {
      while (1)
      {
        sub_1B5DFD908();
        v44 = v27;
LABEL_14:
        v31 = v26 | (v20 << 6);
        v32 = (*(v18 + 48) + 16 * v31);
        v33 = v32[1];
        v45 = *v32;
        sub_1B5DFC6BC(*(v18 + 56) + 40 * v31, v46);
        sub_1B5DF3BFC(v46, v46[3]);

        sub_1B5EA5580();
        sub_1B5DF3FB8(v46);
        v19 = v40;
        *(v39 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        v34 = (v40[6] + 16 * v31);
        *v34 = v45;
        v34[1] = v33;
        (*(v43 + 32))(v40[7] + *(v43 + 72) * v31, v41, v42);
        v35 = v40[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          break;
        }

        v40[2] = v37;
        if (!v44)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v28 = v20;
      while (1)
      {
        v20 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v20 >= v24)
        {
          sub_1B5EA5FF0();
          sub_1B5DFD0BC(v38, v19);

          goto LABEL_19;
        }

        ++v28;
        if (*(v18 + 64 + 8 * v20))
        {
          sub_1B5DFD830();
          v44 = v30 & v29;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1B5EA5FF0();
LABEL_19:
    sub_1B5DFD8C0();
  }
}

uint64_t sub_1B5DFC6BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void static SessionConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B5DFD8A8();
  v8 = v7;
  v10 = v9;
  v11 = sub_1B5EA5520();
  sub_1B5DF5DA8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  v17 = v16 - v15;
  if (*v10 != *v8)
  {
    goto LABEL_29;
  }

  v18 = type metadata accessor for SessionConfiguration(0);
  if ((MEMORY[0x1B8C89510](v10 + v18[5], v8 + v18[5]) & 1) == 0 || (sub_1B5EA53E0() & 1) == 0)
  {
    goto LABEL_29;
  }

  v19 = v18[7];
  v20 = (v10 + v19);
  v21 = *(v10 + v19 + 8);
  v22 = (v8 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_29;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (sub_1B5EA5F00() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (v23)
  {
    goto LABEL_29;
  }

  v25 = v18[8];
  v26 = *(v10 + v25);
  v27 = *(v10 + v25 + 8);
  v28 = (v8 + v25);
  v29 = v26 == *v28 && v27 == v28[1];
  if (!v29 && (sub_1B5EA5F00() & 1) == 0)
  {
    goto LABEL_29;
  }

  v30 = v18[9];
  v31 = *(v10 + v30);
  v73 = v13;
  v72 = v17;
  if (v31)
  {
    sub_1B5DF33E0(&qword_1EB90DB50, &qword_1B5EAFB40);
    v32 = sub_1B5EA5CC0();
    v33 = 0;
    v34 = v31 + 64;
    sub_1B5DFD808();
    v65 = sub_1B5DFD890(v35);
    v64 = v31;
    if (!v36)
    {
LABEL_21:
      v39 = v33;
      while (1)
      {
        v33 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
          goto LABEL_53;
        }

        if (v33 >= v11)
        {
          break;
        }

        ++v39;
        if (*(v34 + 8 * v33))
        {
          sub_1B5DFD830();
          v66 = v41 & v40;
          goto LABEL_26;
        }
      }

      v69 = *(v8 + v18[9]);
      if (v69)
      {
        goto LABEL_35;
      }

      if (v32)
      {
LABEL_50:
      }

      goto LABEL_29;
    }

    while (1)
    {
      sub_1B5DFD908();
      v66 = v38;
LABEL_26:
      v42 = v37 | (v33 << 6);
      v43 = (*(v31 + 48) + 16 * v42);
      v68 = v43[1];
      v70 = *v43;
      sub_1B5DFC6BC(*(v31 + 56) + 40 * v42, v74);
      sub_1B5DF3BFC(v74, v75);

      sub_1B5EA5580();
      sub_1B5DF3FB8(v74);
      v32 = v65;
      sub_1B5DFD8D8((v42 >> 3) & 0x1FFFFFFFFFFFFFF8);
      v44 = (v65[6] + 16 * v42);
      *v44 = v70;
      v44[1] = v68;
      (*(v13 + 32))(v65[7] + *(v13 + 72) * v42, v72, v11);
      v45 = v65[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_54;
      }

      v65[2] = v47;
      v31 = v64;
      if (!v66)
      {
        goto LABEL_21;
      }
    }
  }

  v69 = *(v8 + v30);
  if (!v69)
  {
LABEL_29:
    sub_1B5DFD8C0();
    return;
  }

  v65 = 0;
LABEL_35:
  sub_1B5DF33E0(&qword_1EB90DB50, &qword_1B5EAFB40);
  v48 = sub_1B5EA5CC0();
  v49 = 0;
  sub_1B5DFD808();
  v52 = v51 & v50;
  for (i = sub_1B5DFD890(v53); v52; i[2] = v63)
  {
    v54 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
LABEL_42:
    v58 = v54 | (v49 << 6);
    v59 = (*(v69 + 48) + 16 * v58);
    v60 = v59[1];
    v71 = *v59;
    sub_1B5DFC6BC(*(v69 + 56) + 40 * v58, v74);
    sub_1B5DF3BFC(v74, v75);

    sub_1B5EA5580();
    sub_1B5DF3FB8(v74);
    sub_1B5DFD8D8((v58 >> 3) & 0x1FFFFFFFFFFFFFF8);
    v48 = i;
    v61 = (i[6] + 16 * v58);
    *v61 = v71;
    v61[1] = v60;
    (*(v73 + 32))(i[7] + *(v73 + 72) * v58, v72, v11);
    v62 = i[2];
    v46 = __OFADD__(v62, 1);
    v63 = v62 + 1;
    if (v46)
    {
      goto LABEL_55;
    }
  }

  v55 = v49;
  while (1)
  {
    v49 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v49 >= v11)
    {
      if (v65)
      {
        if (v48)
        {
          sub_1B5DFCC30(v65, v48);
        }
      }

      else if (!v48)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }

    ++v55;
    if (*(v69 + 64 + 8 * v49))
    {
      sub_1B5DFD830();
      v52 = v57 & v56;
      goto LABEL_42;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t SessionConfiguration.hashValue.getter()
{
  sub_1B5EA5FD0();
  SessionConfiguration.hash(into:)(v7, v0, v1, v2, v3, v4, v5);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DFCBF0(uint64_t a1)
{
  sub_1B5EA5FD0();
  SessionConfiguration.hash(into:)(v8, v1, v2, v3, v4, v5, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5DFCC30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5EA5520();
  v66 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v55 - v8;
  v9 = sub_1B5DF33E0(&qword_1EB90DB68, &qword_1B5EAFC00);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v59 = (&v55 - v13);
  v60 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v60 + 16))
  {
    return 0;
  }

  v14 = 0;
  v56 = a1;
  v17 = *(a1 + 64);
  v16 = a1 + 64;
  v15 = v17;
  v18 = 1 << *(v16 - 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v62 = v66 + 16;
  v63 = (v66 + 32);
  v57 = (v66 + 8);
  v58 = v7;
  while (v20)
  {
    v64 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v14 << 6);
LABEL_13:
    v26 = (*(v56 + 48) + 16 * v22);
    v27 = *v26;
    v28 = v26[1];
    v30 = v65;
    v29 = v66;
    (*(v66 + 16))(v65, *(v56 + 56) + *(v66 + 72) * v22, v4);
    v31 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    v32 = *(v31 + 48);
    v33 = v61;
    *v61 = v27;
    *(v33 + 1) = v28;
    v23 = v33;
    (*(v29 + 32))(&v33[v32], v30, v4);
    sub_1B5DF3658(v23, 0, 1, v31);

LABEL_14:
    v34 = v23;
    v35 = v59;
    sub_1B5DFD6DC(v34, v59);
    v36 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    v37 = sub_1B5DF46E0(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v60;
    v43 = v58;
    (*v63)(v58, v35 + v39, v4);
    v44 = sub_1B5E5AE4C(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v57)(v43, v4);
      return 0;
    }

    v47 = v66;
    v48 = *(v42 + 56) + *(v66 + 72) * v44;
    v49 = v4;
    v50 = v65;
    (*(v66 + 16))(v65, v48, v49);
    sub_1B5DFD74C(&qword_1EB90DB78, MEMORY[0x1E69C6348], MEMORY[0x1E69C6358]);
    v51 = sub_1B5EA5660();
    v52 = *(v47 + 8);
    v53 = v50;
    v4 = v49;
    v52(v53, v49);
    result = (v52)(v43, v49);
    v20 = v64;
    if ((v51 & 1) == 0)
    {
      return v38;
    }
  }

  v23 = v61;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      v54 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
      sub_1B5DF3658(v23, 1, 1, v54);
      v64 = 0;
      goto LABEL_14;
    }

    v25 = *(v16 + 8 * v24);
    ++v14;
    if (v25)
    {
      v64 = (v25 - 1) & v25;
      v22 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B5DFD0BC(const void *a1, uint64_t a2)
{
  v43 = a1;
  v46 = sub_1B5EA5520();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B5DF33E0(&qword_1EB90DB68, &qword_1B5EAFC00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v37 - v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v37[1] = v3 + 16;
  v15 = (v3 + 32);
  v39 = v3;
  v40 = a2;
  v42 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v38 = v9;
  v37[0] = v3 + 32;
  for (i = a2 + 64; ; v10 = i)
  {
    v47 = v17;
    if (!v13)
    {
      break;
    }

    v19 = v18;
LABEL_11:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v19 << 6);
    v23 = v39;
    v24 = (*(v40 + 48) + 16 * v22);
    v26 = *v24;
    v25 = v24[1];
    v28 = v45;
    v27 = v46;
    (*(v39 + 16))(v45, *(v40 + 56) + *(v39 + 72) * v22, v46);
    v29 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    v30 = *(v29 + 48);
    v31 = v44;
    *v44 = v26;
    *(v31 + 1) = v25;
    v20 = v31;
    v32 = v28;
    v15 = v37[0];
    (*(v23 + 32))(&v31[v30], v32, v27);
    sub_1B5DF3658(v20, 0, 1, v29);

    v9 = v38;
LABEL_12:
    sub_1B5DFD6DC(v20, v9);
    v33 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
    if (sub_1B5DF46E0(v9, 1, v33) == 1)
    {

      return MEMORY[0x1B8C8AC00](v47);
    }

    v35 = v45;
    v34 = v46;
    (*v15)(v45, &v9[*(v33 + 48)], v46);
    memcpy(__dst, v43, sizeof(__dst));
    sub_1B5EA5710();

    sub_1B5DFD74C(&qword_1EB90DB80, MEMORY[0x1E69C6348], MEMORY[0x1E69C6350]);
    sub_1B5EA5600();
    (*v42)(v35, v34);
    result = sub_1B5EA6020();
    v17 = result ^ v47;
  }

  v20 = v44;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      v36 = sub_1B5DF33E0(&qword_1EB90DB70, &qword_1B5EAFC08);
      sub_1B5DF3658(v20, 1, 1, v36);
      v13 = 0;
      goto LABEL_12;
    }

    v13 = *(v10 + 8 * v19);
    ++v18;
    if (v13)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1B5DFD514(uint64_t a1)
{
  sub_1B5EA4930();
  if (v1 <= 0x3F)
  {
    sub_1B5EA5450();
    if (v2 <= 0x3F)
    {
      sub_1B5DFD5E0();
      if (v3 <= 0x3F)
      {
        sub_1B5DFD630(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B5DFD5E0()
{
  if (!qword_1ED7D2D00)
  {
    v0 = sub_1B5EA5AD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7D2D00);
    }
  }
}

void sub_1B5DFD630(uint64_t a1)
{
  if (!qword_1EB90CE28)
  {
    sub_1B5DFD694(&qword_1EB90DB60, &qword_1B5EAFBF8);
    v1 = sub_1B5EA5AD0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB90CE28);
    }
  }
}

uint64_t sub_1B5DFD694(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B5DFD6DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B5DF33E0(&qword_1EB90DB68, &qword_1B5EAFC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5DFD74C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B5DFD794(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B5DFD878()
{

  return type metadata accessor for SessionConfiguration(0);
}

uint64_t sub_1B5DFD890(uint64_t result)
{
  *(v2 - 192) = v1 + 32;
  *(v2 - 184) = result + 64;
  return result;
}

uint64_t sub_1B5DFD91C(uint64_t a1)
{

  return sub_1B5EA5600();
}

void *GenerativeExperiencesSession.__allocating_init(configuration:)(uint64_t a1)
{
  sub_1B5E01D1C();
  swift_allocObject();
  return GenerativeExperiencesSession.init(configuration:)(a1);
}

void *GenerativeExperiencesSession.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SessionConfiguration(0);
  v5 = sub_1B5E01CF8(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  sub_1B5DFDA5C(a1, v7 - v6);
  v8 = objc_allocWithZone(type metadata accessor for GenerativeExperiencesSessionClient());
  GenerativeExperiencesSessionClient.init(_:)();
  v10 = v9;
  sub_1B5E01688(a1);
  if (v10)
  {
    *(v2 + 16) = v10;
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_1B5DFDA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static GenerativeExperiencesSession.terminateSession(for:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(type metadata accessor for GenerativeExperiencesSessionClient());

  GenerativeExperiencesSessionClient.init(identifer:)();
  if (v3)
  {
    v4 = v3;
    sub_1B5E47AB0();
  }
}

Swift::String __swiftcall GenerativeExperiencesSession.sessionIdentifier()()
{

  v0 = sub_1B5DFA488();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t GenerativeExperiencesSession.registeredDocuments()()
{
  sub_1B5E49FF8();

  return sub_1B5DFDBB8(v0);
}

uint64_t sub_1B5DFDBB8(uint64_t a1)
{
  v2 = sub_1B5EA4EE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1B5E01BDC();
  v11 = MEMORY[0x1B8C8A630](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      sub_1B5E32B5C();
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

uint64_t sub_1B5DFDD48(uint64_t a1)
{
  result = MEMORY[0x1B8C8A630](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1B5E32DE0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t GenerativeExperiencesSession.tools.setter()
{
  sub_1B5E01D44();
  sub_1B5E4A75C(v0);
}

uint64_t (*GenerativeExperiencesSession.tools.modify())(uint64_t *a1, uint64_t a2)
{
  sub_1B5E01D44();
  *(v2 + 8) = v1;
  sub_1B5E4A674();
  *v0 = v3;
  return sub_1B5DFDF34;
}

uint64_t GenerativeExperiencesSession.instructionsTemplateVariableBindings.setter()
{
  sub_1B5E01D44();
  sub_1B5E4B09C(v0);
}

uint64_t (*GenerativeExperiencesSession.instructionsTemplateVariableBindings.modify())(uint64_t *a1, uint64_t a2)
{
  sub_1B5E01D44();
  *(v2 + 8) = v1;
  sub_1B5E4AE18();
  *v0 = v3;
  return sub_1B5DFE01C;
}

uint64_t sub_1B5DFE034(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  if (a2)
  {

    a3(v5);
  }

  else
  {
    a3(v4);
  }
}

uint64_t sub_1B5DFE0C0(uint64_t a1)
{
  v2 = sub_1B5EA5160();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return GenerativeExperiencesSession.toolChoice.setter();
}

uint64_t GenerativeExperiencesSession.toolChoice.setter()
{
  sub_1B5E01D44();
  sub_1B5E4ABB0(v1, v2, v3, v4);
  v5 = sub_1B5EA5160();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0, v5);
}

void (*GenerativeExperiencesSession.toolChoice.modify(uint64_t **a1))(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v3 = sub_1B5E016E4(0x28uLL);
  *a1 = v3;
  v4 = sub_1B5EA5160();
  *v3 = v4;
  sub_1B5E01C50(v4);
  v3[1] = v5;
  v7 = *(v6 + 64);
  v3[2] = sub_1B5E016E4(v7);
  v8 = sub_1B5E016E4(v7);
  v3[3] = v8;
  v3[4] = *(v1 + 16);
  sub_1B5E4A834(v8, v9, v10, v11);
  return sub_1B5DFE2C4;
}

void sub_1B5DFE2C4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[3];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    (*(v7 + 16))((*a1)[2], v5, v8);
    sub_1B5E4ABB0(v6, v9, v10, v11);
    v12 = *(v7 + 8);
    v12(v6, v8);
    v13 = sub_1B5E01DD8();
    (v12)(v13);
  }

  else
  {
    sub_1B5E4ABB0((*a1)[3], a2, a3, a4);
    v14 = sub_1B5E01DD8();
    v15(v14);
  }

  free(v5);
  free(v6);

  free(v4);
}

uint64_t GenerativeExperiencesSession.undo()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E01CA4();
}

uint64_t sub_1B5DFE61C()
{
  sub_1B5E01DFC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B5E01C34;

  return sub_1B5E2F324();
}

uint64_t GenerativeExperiencesSession.redo()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1B5E01CA4();
}

uint64_t sub_1B5DFE6D4()
{
  sub_1B5E01DFC();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B5DFE778;

  return sub_1B5E2F604();
}

uint64_t sub_1B5DFE778()
{
  sub_1B5E01DFC();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B5DFE8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_1B5EA5350();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E7CC0];
  sub_1B5DFF378(a1, &v21);
  v9 = *(a2 + 16);
  v10 = v21;
  for (i = a2 + 32; v9; --v9)
  {
    sub_1B5EA5310();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B5E6D73C();
      v10 = v13;
    }

    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      sub_1B5E6D73C();
      v10 = v14;
    }

    *(v10 + 16) = v12 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v8, v5);
    i += 40;
  }

  v21 = v10;
  sub_1B5E4A75C(v10);
  sub_1B5E4ABB0(v20, v15, v16, v17);
}

uint64_t sub_1B5DFEA7C(uint64_t a1, uint64_t *a2)
{
  v59 = a2;
  v3 = sub_1B5EA5260();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v46 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B5EA51B0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B5EA5290();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B5EA5250();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B5EA51E0();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B5EA51F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B5EA5350();
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B5EA5200();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v45[1] = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v45 - v24;
  v49 = a1;
  sub_1B5EA5210();
  v26 = (*(v21 + 88))(v25, v20);
  if (v26 == *MEMORY[0x1E69A0DD0])
  {
    (*(v21 + 96))(v25, v20);
    v27 = v55;
    (*(v55 + 32))(v10, v25, v58);
    sub_1B5EA5240();
    sub_1B5EA5230();
    sub_1B5EA5220();
    v28 = v54;
    sub_1B5EA5280();
    sub_1B5EA5340();

    (*(v56 + 8))(v28, v57);
    v29 = v59;
    sub_1B5E32A28();
    v30 = *(*v29 + 16);
    sub_1B5E32ACC(v30);
    (*(v27 + 8))(v10, v58);
LABEL_12:
    v35 = *v29;
    *(v35 + 16) = v30 + 1;
    return (*(v60 + 32))(v35 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v30, v19, v61);
  }

  v29 = v59;
  if (v26 == *MEMORY[0x1E69A0DB8])
  {
    (*(v21 + 96))(v25, v20);
    v31 = v14;
    (*(v14 + 32))(v16, v25, v13);
    sub_1B5EA52C0();
    sub_1B5E32A28();
    v30 = *(*v29 + 16);
    sub_1B5E32ACC(v30);
    (*(v31 + 8))(v16, v13);
    goto LABEL_12;
  }

  if (v26 == *MEMORY[0x1E69A0DB0])
  {
    (*(v21 + 96))(v25, v20);
    v33 = v50;
    v32 = v51;
    v34 = v52;
    (*(v51 + 32))(v50, v25, v52);
    sub_1B5EA52B0();
    sub_1B5E32A28();
    v30 = *(*v29 + 16);
    sub_1B5E32ACC(v30);
    (*(v32 + 8))(v33, v34);
    goto LABEL_12;
  }

  if (v26 == *MEMORY[0x1E69A0DC8])
  {
    sub_1B5EA5300();
LABEL_11:
    sub_1B5E32A28();
    v30 = *(*v29 + 16);
    sub_1B5E32ACC(v30);
    goto LABEL_12;
  }

  if (v26 == *MEMORY[0x1E69A0DC0])
  {
    sub_1B5EA52E0();
    goto LABEL_11;
  }

  if (qword_1EB90D178 != -1)
  {
    swift_once();
  }

  v37 = sub_1B5EA53B0();
  sub_1B5DFD794(v37, qword_1EB90D180);
  (*(v47 + 16))(v46, v49, v48);
  v38 = sub_1B5EA5380();
  v39 = sub_1B5EA5A50();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v62 = v41;
    *v40 = 136315138;
    v42 = v46;
    sub_1B5EA5210();
    sub_1B5EA56E0();
    (*(v47 + 8))(v42, v48);
    v43 = sub_1B5E5B1CC();

    *(v40 + 4) = v43;
    _os_log_impl(&dword_1B5DED000, v38, v39, "Unknown tool type: %s", v40, 0xCu);
    sub_1B5DF3FB8(v41);
    MEMORY[0x1B8C8B330](v41, -1, -1);
    MEMORY[0x1B8C8B330](v40, -1, -1);
  }

  else
  {

    (*(v47 + 8))(v46, v48);
  }

  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1B5EA5BC0();

  v62 = 0xD000000000000013;
  v63 = 0x80000001B5EA8A90;
  sub_1B5EA5210();
  v44 = sub_1B5EA56E0();
  MEMORY[0x1B8C8A360](v44);

  result = sub_1B5EA5CA0();
  __break(1u);
  return result;
}

uint64_t sub_1B5DFF378(uint64_t result, uint64_t *a2)
{
  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_1B5EA5260() - 8);
    result = sub_1B5DFEA7C(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
  return result;
}

void GenerativeExperiencesSession.complete<A>(generating:tools:tooling:toolChoice:documents:parameters:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5DFD8A8();
  v64 = v24;
  v65 = v23;
  v63 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v60 = v32;
  v66 = v33;
  v61 = sub_1B5E01D80(a21);
  sub_1B5DF5DA8();
  v59 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1B5DFD7E8();
  sub_1B5E01C60();
  sub_1B5EA4D20();
  sub_1B5DF5DA8();
  v57 = v37;
  v58 = v36;
  MEMORY[0x1EEE9AC00](v36);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v38 = sub_1B5EA5470();
  sub_1B5DF5DA8();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  v42 = sub_1B5DFE8B8(v31, v29, v27);
  v65(v42);
  default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01E08();
  sub_1B5E4A398(v43, v44, v45, v46, v47, v48, v49, v50, a22, v55, v56, v57, v58, v59, v60, v61, v63, v64, v65, v66, v67);
  v51 = sub_1B5E01DF0();
  v52(v51, v62);
  v53 = sub_1B5E01DE4();
  v54(v53);
  (*(v40 + 8))(v22, v38);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete(tools:tooling:toolChoice:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v52 = v3;
  v53 = v2;
  v49 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v50 = sub_1B5E01D80(v11);
  sub_1B5DF5DA8();
  v48 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5DFD7E8();
  v46 = v15 - v14;
  v47 = sub_1B5E01D50();
  sub_1B5DF5DA8();
  v45 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5E01C38();
  v18 = sub_1B5EA5560();
  v19 = sub_1B5E01CF8(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  sub_1B5EA55A0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v20);
  sub_1B5DFD7E8();
  sub_1B5EA5470();
  sub_1B5DF5DA8();
  v41 = v22;
  v43 = v21;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  sub_1B5DFE8B8(v10, v8, v6);
  v40 = *(v1 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v23 = sub_1B5E01D98();
  sub_1B5E01C50(v23);
  *(sub_1B5E01C70() + 16) = xmmword_1B5EAFC20;
  v24 = sub_1B5E01DB0();
  v26 = v25(v24);
  v53(v26);
  sub_1B5E01DD8();
  sub_1B5EA5400();
  sub_1B5EA5480();
  default argument 2 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  default argument 3 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01CB4();
  sub_1B5E4A56C(v27, v28, v29, v30, v31, v32, v33, v34, v39, v40, v41, v43, v45, v46, v47, v48, v49, v50, v52, v53);
  v35 = sub_1B5E01D04();
  v36(v35, v51);
  v37 = sub_1B5E01DC4();
  v38(v37);
  (*(v42 + 8))(v0, v44);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:tools:tooling:toolChoice:documents:parameters:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1B5DFD8A8();
  v76 = v24;
  v77 = v23;
  v75 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v72 = v32;
  v73 = sub_1B5E01D80(a21);
  sub_1B5DF5DA8();
  v71 = v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1B5DFD7E8();
  v68 = v36 - v35;
  v69 = sub_1B5E01D50();
  sub_1B5DF5DA8();
  v67 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v39 = sub_1B5EA5560();
  v40 = sub_1B5E01CF8(v39);
  MEMORY[0x1EEE9AC00](v40);
  sub_1B5E01C38();
  v41 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  sub_1B5DFD7E8();
  sub_1B5E01C60();
  sub_1B5EA5470();
  sub_1B5DF5DA8();
  v65 = v46;
  v66 = v45;
  MEMORY[0x1EEE9AC00](v45);
  sub_1B5DFD7E8();
  sub_1B5DFE8B8(v31, v29, v27);
  v64 = *(v21 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v47 = sub_1B5E01D98();
  sub_1B5E01C50(v47);
  *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
  v48 = (*(v43 + 104))(v22, *MEMORY[0x1E69C63E0], v41);
  v77(v48);
  sub_1B5EA5400();
  sub_1B5EA5480();
  sub_1B5E01E3C();
  sub_1B5DFA488();
  default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01CC8();
  sub_1B5E4A398(v49, v50, v51, v52, v53, v54, v55, v56, v76, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, v75, v76);
  v57 = sub_1B5E01D04();
  v58(v57, v74);
  v59 = sub_1B5E01DE4();
  v60(v59, v70);
  v61 = sub_1B5E01D38();
  v62(v61);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v55 = v1;
  v3 = v2;
  v54 = v4;
  v51 = v5;
  v49 = v6;
  v52 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v50 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1B5DFD7E8();
  v46 = v10 - v9;
  v47 = sub_1B5E01D50();
  sub_1B5DF5DA8();
  v45 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1B5DFD7E8();
  sub_1B5E01CD8();
  v13 = sub_1B5EA5560();
  v14 = sub_1B5E01CF8(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  v15 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  v21 = v20 - v19;
  sub_1B5EA5470();
  sub_1B5DF5DA8();
  v43 = v23;
  v44 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  v42 = *(v0 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v24 = sub_1B5E01D98();
  sub_1B5E01C50(v24);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B5EAFC20;
  (*(v17 + 104))(v21, *MEMORY[0x1E69C63E0], v15);
  sub_1B5E01C98();
  v54();
  if (v3)
  {
    (*(v17 + 8))(v21, v15);
    *(v25 + 16) = 0;

    sub_1B5EA45F0();
  }

  else
  {
    sub_1B5EA5400();
    sub_1B5EA5480();
    sub_1B5DFA488();
    default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
    sub_1B5DFA488();
    default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
    sub_1B5E01CC8();
    sub_1B5E4A398(v26, v27, v28, v29, v30, v31, v32, v33, v55, v40, v41, v42, v43, v44, v45, v46, v47, v49, v50, v51, v52);
    v34 = sub_1B5E01D04();
    v35(v34, v53);
    v36 = sub_1B5E01D38();
    v37(v36, v48);
    v38 = sub_1B5E01DE4();
    v39(v38);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete(documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v4 = v3;
  v52 = v5;
  v53 = v6;
  v49 = v7;
  v50 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v48 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5DFD7E8();
  v45 = v11 - v10;
  v46 = sub_1B5E01D50();
  sub_1B5DF5DA8();
  v43 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1B5E01C38();
  v14 = sub_1B5EA5560();
  v15 = sub_1B5E01CF8(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  v16 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  v22 = v21 - v20;
  sub_1B5EA5470();
  sub_1B5DF5DA8();
  v39 = v24;
  v41 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  v38 = *(v1 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v25 = sub_1B5E01D98();
  sub_1B5E01C50(v25);
  v26 = sub_1B5E01C70();
  *(v26 + 16) = xmmword_1B5EAFC20;
  (*(v18 + 104))(v22, *MEMORY[0x1E69C63E0], v16);
  sub_1B5E01C98();
  v52();
  if (v4)
  {
    (*(v18 + 8))(v22, v16);
    *(v26 + 16) = 0;

    sub_1B5E01D68(v27, MEMORY[0x1E69E6158], MEMORY[0x1E69A0EB0]);
  }

  else
  {
    sub_1B5EA5400();
    sub_1B5EA5480();
    default argument 2 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
    default argument 3 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
    sub_1B5E01CB4();
    sub_1B5E4A56C(v28, v29, v30, v31, v32, v33, v34, v35, v38, v39, v41, v43, v45, v46, v48, v49, v50, v52, v53, v54);
    v36 = sub_1B5E01D04();
    v37(v36, v51);
    (*(v44 + 8))(v2, v47);
    (*(v40 + 8))(v0, v42);
  }

  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete<A>(generating:tools:toolChoice:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v53 = v3;
  v54 = v2;
  v50 = v4;
  v6 = v5;
  v8 = v7;
  v48 = v9;
  v51 = sub_1B5EA4CC0();
  sub_1B5DF5DA8();
  v49 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v45 = v13 - v12;
  v46 = sub_1B5E01D50();
  sub_1B5DF5DA8();
  v44 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5DFD7E8();
  sub_1B5E01CD8();
  v16 = sub_1B5EA5560();
  v17 = sub_1B5E01CF8(v16);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5E01C38();
  v18 = sub_1B5EA55A0();
  sub_1B5DF5DA8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  sub_1B5EA5470();
  sub_1B5DF5DA8();
  v42 = v23;
  v43 = v22;
  MEMORY[0x1EEE9AC00](v22);
  sub_1B5DFD7E8();
  sub_1B5E01D10();
  sub_1B5DFE8B8(MEMORY[0x1E69E7CC0], v8, v6);
  v41 = *(v0 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v24 = sub_1B5EA5450();
  sub_1B5E01C50(v24);
  *(swift_allocObject() + 16) = xmmword_1B5EAFC20;
  v25 = (*(v20 + 104))(v1, *MEMORY[0x1E69C63E0], v18);
  v54(v25);
  sub_1B5EA5400();
  sub_1B5EA5480();
  sub_1B5E01E3C();
  sub_1B5DFA488();
  default argument 4 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01CC8();
  sub_1B5E4A398(v26, v27, v28, v29, v30, v31, v32, v33, v53, v40, v41, v42, v43, v44, v45, v46, v48, v49, v50, v51, v53);
  v34 = sub_1B5E01D04();
  v35(v34, v52);
  v36 = sub_1B5E01D38();
  v37(v36, v47);
  v38 = sub_1B5E01DE4();
  v39(v38);
  sub_1B5DFD8C0();
}

void GenerativeExperiencesSession.complete(tools:toolChoice:documents:parameters:query:)()
{
  sub_1B5DFD8A8();
  v50 = v3;
  v51 = v2;
  v47 = v4;
  v6 = v5;
  v8 = v7;
  v48 = sub_1B5E01D80(v9);
  sub_1B5DF5DA8();
  v46 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1B5DFD7E8();
  v44 = v13 - v12;
  v45 = sub_1B5E01D50();
  sub_1B5DF5DA8();
  v43 = v14;
  MEMORY[0x1EEE9AC00](v15);
  sub_1B5E01C38();
  v16 = sub_1B5EA5560();
  v17 = sub_1B5E01CF8(v16);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B5DFD7E8();
  sub_1B5E01CE8();
  sub_1B5EA55A0();
  sub_1B5DF5DA8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1B5DFD7E8();
  sub_1B5EA5470();
  sub_1B5DF5DA8();
  v39 = v20;
  v41 = v19;
  MEMORY[0x1EEE9AC00](v19);
  sub_1B5DFD7E8();
  sub_1B5E01D2C();
  sub_1B5DFE8B8(MEMORY[0x1E69E7CC0], v8, v6);
  v38 = *(v1 + 16);
  sub_1B5DF33E0(&qword_1EB90DB90, &qword_1B5EB7070);
  v21 = sub_1B5E01D98();
  sub_1B5E01C50(v21);
  *(sub_1B5E01C70() + 16) = xmmword_1B5EAFC20;
  v22 = sub_1B5E01DB0();
  v24 = v23(v22);
  v51(v24);
  sub_1B5E01DD8();
  sub_1B5EA5400();
  sub_1B5EA5480();
  default argument 2 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  default argument 3 of GenerativeExperiencesSessionClient.complete(query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
  sub_1B5E01CB4();
  sub_1B5E4A56C(v25, v26, v27, v28, v29, v30, v31, v32, v37, v38, v39, v41, v43, v44, v45, v46, v47, v48, v50, v51);
  v33 = sub_1B5E01D04();
  v34(v33, v49);
  v35 = sub_1B5E01DC4();
  v36(v35);
  (*(v40 + 8))(v0, v42);
  sub_1B5DFD8C0();
}

uint64_t GenerativeExperiencesSession.__deallocating_deinit()
{
  v1 = sub_1B5E01D1C();

  return MEMORY[0x1EEE6BDC0](v1);
}

uint64_t sub_1B5E01688(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B5E016E4(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1B5E01718(void *a1)
{
  v3 = sub_1B5EA4990();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_1EB90EE70) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B5E01A08;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1B5E01A10;
  *(v10 + 24) = v8;
  v11 = a1;
  sub_1B5EA4960();
  (*(v4 + 32))(v1 + qword_1EB90EE50, v6, v3);
  return v1;
}

unint64_t sub_1B5E01920()
{
  result = qword_1EB90DB98;
  if (!qword_1EB90DB98)
  {
    sub_1B5DFD694(&qword_1EB90DBA0, &qword_1B5EAFC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DB98);
  }

  return result;
}

uint64_t sub_1B5E01984(uint64_t a1, void (*a2)(void))
{
  a2();
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1B5E01A34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B5E01AEC;

  return sub_1B5E01984(a1, v4);
}

uint64_t sub_1B5E01AEC()
{
  sub_1B5E01DFC();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1B5E01BDC()
{
  result = qword_1EB90DBA8;
  if (!qword_1EB90DBA8)
  {
    sub_1B5EA4EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DBA8);
  }

  return result;
}

uint64_t sub_1B5E01C70()
{

  return swift_allocObject();
}

uint64_t sub_1B5E01D50()
{

  return sub_1B5EA4D20();
}

uint64_t sub_1B5E01D68(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1B5EA45F0();
}

uint64_t sub_1B5E01D80@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 96) = a1;

  return sub_1B5EA4CC0();
}

uint64_t sub_1B5E01D98()
{

  return sub_1B5EA5450();
}

uint64_t sub_1B5E01E3C()
{

  return default argument 3 of GenerativeExperiencesSessionClient.complete<A>(generating:query:parameters:promptSanitizer:responseSanitizer:clientRequestID:)();
}

uint64_t MailMessage.SummarizationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.SummarizationOptions.requestedSummarizationStyles.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MailMessage.SummarizationOptions.previousMessages.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1B5E02014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E01FF4();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E0203C(uint64_t a1)
{
  v2 = sub_1B5E060D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E02078(uint64_t a1)
{
  v2 = sub_1B5E060D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.SummarizationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DF7168();
  v22 = v21;
  sub_1B5DF33E0(&qword_1EB90DBC8, &qword_1B5EAFCC8);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5E0897C(v22, v22[3]);
  v24 = sub_1B5E060D4();
  sub_1B5E08AAC(&type metadata for MailMessage.SummarizationOptions.CodingKeys, v25, v24);
  if (v20)
  {
    sub_1B5E08BB4();
  }

  else
  {
    sub_1B5E08668();
    sub_1B5EA5D70();
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E08804();
    sub_1B5E0621C(v26);
    sub_1B5E08704();
    sub_1B5E08668();
    sub_1B5EA5D80();
    sub_1B5E08668();
    sub_1B5EA5D80();
    v27 = sub_1B5E062DC();
    sub_1B5E089D0(&type metadata for ClientProcessInfo, v28, v29, v30, v27);
    sub_1B5E0894C();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08638();
    sub_1B5E06330(v31);
    sub_1B5E08704();
    v32 = sub_1B5E0867C();
    v33(v32);
    v34 = sub_1B5E086A8();
    sub_1B5E063C0(v34, v35);
    sub_1B5DF3FB8(v22);
    v36 = sub_1B5E08764();
    sub_1B5E063F8(v36);
  }

  sub_1B5DF7180();
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17onBehalfOfProcessAA06ClientI4InfoVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17onBehalfOfProcessAA06ClientI4InfoVSgvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 4);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  return result;
}

void _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6Styles15isUserInitiated23useExternalIntelligence17onBehalfOfProcess16previousMessagesAESS_ShyAA0D6ClientC0D5StyleOGS2bAA0vS4InfoVSgSayACGtcfC_0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *a6;
  v16 = a6[1];
  v17 = *(a6 + 4);

  if (a4 & 1) == 0 && (a5)
  {
    v24 = v17;
    v25 = v16;
    if (qword_1ED7D2988 != -1)
    {
      swift_once();
    }

    v18 = sub_1B5EA53B0();
    sub_1B5DFD794(v18, qword_1ED7D2990);
    v19 = sub_1B5EA5380();
    v20 = sub_1B5EA5A40();
    if (os_log_type_enabled(v19, v20))
    {
      v23 = a7;
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B5DED000, v19, v20, "useExternalIntelligence should only be true for user initiated requests.", v21, 2u);
      v22 = v21;
      a7 = v23;
      MEMORY[0x1B8C8B330](v22, -1, -1);
    }

    v16 = v25;
    v17 = v24;
  }

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = a5 & 1;
  *(a8 + 32) = v15;
  *(a8 + 40) = v16;
  *(a8 + 48) = v17;
  *(a8 + 56) = a7;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6Styles15isUserInitiated17onBehalfOfProcess16previousMessagesAESS_ShyAA0D6ClientC0D5StyleOGSbAA0sP4InfoVSgSayACGtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = a5[1];
  v15 = *(a5 + 4);

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 25) = 0;
  *(a7 + 32) = v13;
  *(a7 + 40) = v14;
  *(a7 + 48) = v15;
  *(a7 + 56) = a6;
  return result;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6Styles16previousMessagesAESS_ShyAA0D6ClientC0D5StyleOGSayACGtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  *(a5 + 56) = a4;
  return result;
}

uint64_t _s4Sage11MailMessageV20SummarizationOptionsV17requestIdentifier09requestedD6StylesAESS_ShyAA0D6ClientC0D5StyleOGtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B5E027BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1B5DFD7E8();
  v10 = v9 - v8;
  v11 = sub_1B5E05F94(a1);
  sub_1B5EA4330();
  v12 = sub_1B5EA4300();
  v14 = v13;
  (*(v6 + 8))(v10, v4);

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 26) = v16;
  *(a2 + 30) = v17;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B5E028D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5E0888C(0xD000000000000011) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001B5EA8AD0 == a2;
    if (v6 || (sub_1B5E0888C(0xD00000000000001CLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1B5E08A58();
      v9 = a1 == v7 && a2 == v8;
      if (v9 || (sub_1B5E0888C(v7) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0xD000000000000017 && 0x80000001B5EA8AF0 == a2;
        if (v10 || (sub_1B5E0888C(0xD000000000000017) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000011 && 0x80000001B5EA8B10 == a2;
          if (v11 || (sub_1B5E0888C(0xD000000000000011) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
          {

            return 5;
          }

          else
          {
            v13 = sub_1B5E0888C(0xD000000000000010);

            if (v13)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B5E02A68(uint64_t a1, uint64_t a2)
{
  result = sub_1B5E08A58();
  switch(v3)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1B5E02B34(uint64_t a1)
{
  v2 = sub_1B5E06428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E02B70(uint64_t a1)
{
  v2 = sub_1B5E06428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1B5E02BF0()
{
  sub_1B5DF7168();
  v30 = v2;
  v31 = v1;
  v4 = v3;
  sub_1B5DF33E0(v5, v6);
  sub_1B5DF5DA8();
  v8 = v7;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v29 = *(v0 + 16);
  v28 = *(v0 + 25);
  v12 = *(v0 + 32);
  v26 = *(v0 + 40);
  v27 = v12;
  v25 = *(v0 + 48);
  v24 = *(v0 + 56);
  v13 = v4[3];
  v14 = v4;
  v16 = v15;
  v17 = sub_1B5E0897C(v14, v13);
  v30(v17);
  sub_1B5EA6040();
  LOBYTE(v32) = 0;
  v18 = v11;
  v19 = v31;
  sub_1B5EA5E50();
  if (!v19)
  {
    v20 = v26;
    v21 = v27;
    v32 = v29;
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E0621C(&qword_1EB90CDA0);
    sub_1B5E089C0();
    sub_1B5EA5EA0();
    LOBYTE(v32) = 2;
    sub_1B5EA5E60();
    LOBYTE(v32) = 3;
    sub_1B5EA5E60();
    v32 = v21;
    v33 = v20;
    LODWORD(v34) = v25;
    sub_1B5E0617C();

    sub_1B5E089C0();
    sub_1B5EA5E40();

    v32 = v24;
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08650();
    sub_1B5E06330(v22);
    sub_1B5E089C0();
    sub_1B5EA5EA0();
  }

  (*(v8 + 8))(v18, v16);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.ThreadSummarizationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1B5DF7168();
  v22 = v21;
  sub_1B5DF33E0(&qword_1EB90DBE0, &qword_1B5EAFCD8);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v23);
  sub_1B5E0897C(v22, v22[3]);
  v24 = sub_1B5E06428();
  sub_1B5E08AAC(&type metadata for MailMessage.ThreadSummarizationOptions.CodingKeys, v25, v24);
  if (v20)
  {
    sub_1B5E08BB4();
  }

  else
  {
    sub_1B5E08668();
    sub_1B5EA5D70();
    sub_1B5DF33E0(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    sub_1B5E08804();
    sub_1B5E0621C(v26);
    sub_1B5E08704();
    sub_1B5E08668();
    sub_1B5EA5D80();
    sub_1B5E08668();
    sub_1B5EA5D80();
    v27 = sub_1B5E062DC();
    sub_1B5E089D0(&type metadata for ClientProcessInfo, v28, v29, v30, v27);
    sub_1B5E0894C();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08638();
    sub_1B5E06330(v31);
    sub_1B5E08704();
    v32 = sub_1B5E0867C();
    v33(v32);
    v34 = sub_1B5E086A8();
    sub_1B5E0647C(v34, v35);
    sub_1B5DF3FB8(v22);
    v36 = sub_1B5E08764();
    sub_1B5E064B4(v36);
  }

  sub_1B5DF7180();
}

uint64_t MailMessage.ClassificationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.ClassificationOptions.previousMessages.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

Sage::MailMessage::ClassificationOptions __swiftcall MailMessage.ClassificationOptions.init(requestIdentifier:isSenderImportant:previousMessages:)(Sage::MailMessage::ClassificationOptions requestIdentifier, Swift::Bool_optional isSenderImportant, Swift::OpaquePointer previousMessages)
{
  *v3 = requestIdentifier.requestIdentifier;
  *(v3 + 16) = isSenderImportant;
  *(v3 + 24) = previousMessages;
  requestIdentifier.previousMessages = previousMessages;
  requestIdentifier.isSenderImportant = isSenderImportant;
  return requestIdentifier;
}

Sage::MailMessage::ClassificationOptions __swiftcall MailMessage.ClassificationOptions.init()()
{
  v1 = v0;
  v2 = sub_1B5EA4340();
  sub_1B5DF5DA8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1B5DFD7E8();
  v8 = v7 - v6;
  sub_1B5EA4330();
  v9 = sub_1B5EA4300();
  v11 = v10;
  v12 = (*(v4 + 8))(v8, v2);
  *v1 = v9;
  *(v1 + 8) = v11;
  *(v1 + 16) = 2;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  result.previousMessages._rawValue = v15;
  result.requestIdentifier._object = v13;
  result.requestIdentifier._countAndFlagsBits = v12;
  result.isSenderImportant.value = v14;
  return result;
}

uint64_t sub_1B5E033D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001B5EA8B50 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

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

unint64_t sub_1B5E034EC(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD000000000000010;
  }

  return result;
}

uint64_t sub_1B5E03548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E033D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E03570(uint64_t a1)
{
  v2 = sub_1B5E064E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E035AC(uint64_t a1)
{
  v2 = sub_1B5E064E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.ClassificationOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1B5DF7168();
  v27 = v26;
  v28 = sub_1B5DF33E0(&qword_1EB90DBE8, &qword_1B5EAFCE0);
  sub_1B5DF5DA8();
  v30 = v29;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5E08868();
  sub_1B5E0897C(v27, v27[3]);
  sub_1B5E064E4();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5EA5E50();
  if (!v24)
  {
    sub_1B5E08B70();
    sub_1B5E08798();
    sub_1B5EA5E20();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08650();
    sub_1B5E06330(v32);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v30 + 8))(v25, v28);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.ClassificationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1B5DF7168();
  v27 = v26;
  v29 = v28;
  v30 = sub_1B5DF33E0(&qword_1EB90DBF0, &qword_1B5EAFCE8);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5E08858();
  sub_1B5E08834();
  v32 = sub_1B5E064E4();
  sub_1B5E08AD0(&type metadata for MailMessage.ClassificationOptions.CodingKeys, v33, v32);
  if (v25)
  {
    sub_1B5DF3FB8(v27);
  }

  else
  {
    sub_1B5E089F8();
    v34 = sub_1B5EA5D70();
    v36 = v35;
    sub_1B5E08B70();
    sub_1B5E089F8();
    v41 = sub_1B5EA5D40();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08638();
    sub_1B5E06330(v37);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v38 = sub_1B5E088E8();
    v39(v38, v30);
    *v29 = v34;
    *(v29 + 8) = v36;
    *(v29 + 16) = v41;
    *(v29 + 24) = v40;

    sub_1B5DF3FB8(v27);
  }

  sub_1B5DF7180();
}

uint64_t MailMessage.ThreadClassificationOptions.requestIdentifier.setter()
{
  sub_1B5DFA47C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.ThreadClassificationOptions.previousMessages.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

Sage::MailMessage::ThreadClassificationOptions __swiftcall MailMessage.ThreadClassificationOptions.init(requestIdentifier:previousMessages:)(Swift::String requestIdentifier, Swift::OpaquePointer previousMessages)
{
  *v2 = requestIdentifier;
  *(v2 + 16) = previousMessages;
  result.requestIdentifier = requestIdentifier;
  result.previousMessages = previousMessages;
  return result;
}

uint64_t sub_1B5E03AB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001B5EA8AB0 == a2;
  if (v3 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B5EA8B30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B5EA5F00();

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

unint64_t sub_1B5E03B90(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1B5E03BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E03AB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E03BF4(uint64_t a1)
{
  v2 = sub_1B5E06538();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E03C30(uint64_t a1)
{
  v2 = sub_1B5E06538();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.ThreadClassificationOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5DF7168();
  v25 = v24;
  v26 = sub_1B5DF33E0(&qword_1EB90DBF8, &qword_1B5EAFCF0);
  sub_1B5DF5DA8();
  v30 = v27;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5E08868();
  sub_1B5E0897C(v25, v25[3]);
  sub_1B5E06538();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v22)
  {
    sub_1B5E08B70();
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08650();
    sub_1B5E06330(v29);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v30 + 8))(v23, v26);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.ThreadClassificationOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1B5DF7168();
  v24 = v23;
  v26 = v25;
  v27 = sub_1B5DF33E0(&qword_1EB90DC08, &qword_1B5EAFCF8);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v28);
  sub_1B5E08858();
  sub_1B5E08834();
  v29 = sub_1B5E06538();
  sub_1B5E08AD0(&type metadata for MailMessage.ThreadClassificationOptions.CodingKeys, v30, v29);
  if (v22)
  {
    sub_1B5DF3FB8(v24);
  }

  else
  {
    sub_1B5E089F8();
    v31 = sub_1B5EA5D70();
    v33 = v32;
    sub_1B5DF33E0(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08B70();
    sub_1B5E08638();
    sub_1B5E06330(v34);
    sub_1B5E089F8();
    sub_1B5EA5DC0();
    v35 = sub_1B5E088E8();
    v36(v35, v27);
    *v26 = v31;
    v26[1] = v33;
    v26[2] = v37;

    sub_1B5DF3FB8(v24);
  }

  sub_1B5DF7180();
}

Sage::MailMessage::VisualPromptOptions __swiftcall MailMessage.VisualPromptOptions.init(useCase:)(Sage::SummarizationClient::VisualPromptUseCase useCase)
{
  *v1 = *useCase;
  *(v1 + 1) = 1;
  result.useCase = useCase;
  return result;
}

uint64_t sub_1B5E040B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736143657375 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001B5EA8B70 == a2;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000014 && 0x80000001B5EA8B90 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B5EA5F00();

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

uint64_t sub_1B5E041D4(char a1)
{
  if (!a1)
  {
    return 0x65736143657375;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000014;
}

uint64_t sub_1B5E04240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E040B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E04268(uint64_t a1)
{
  v2 = sub_1B5E0658C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E042A4(uint64_t a1)
{
  v2 = sub_1B5E0658C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.VisualPromptOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1B5DF7168();
  v27 = v26;
  v28 = sub_1B5DF33E0(&qword_1EB90DC10, &qword_1B5EAFD00);
  sub_1B5DF5DA8();
  v30 = v29;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  sub_1B5E08868();
  sub_1B5E0897C(v27, v27[3]);
  sub_1B5E0658C();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  sub_1B5E065E0();
  sub_1B5E089B0();
  sub_1B5EA5EA0();
  if (!v24)
  {
    sub_1B5E089B0();
    sub_1B5EA5E60();
    sub_1B5E089B0();
    sub_1B5EA5E60();
  }

  (*(v30 + 8))(v25, v28);
  sub_1B5DF7180();
}

void MailMessage.VisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1B5DF7168();
  v26 = v25;
  v28 = v27;
  v29 = sub_1B5DF33E0(&qword_1EB90DC28, &qword_1B5EAFD08);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v30);
  sub_1B5E08858();
  sub_1B5E08834();
  sub_1B5E0658C();
  sub_1B5EA6030();
  if (!v24)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    v31 = sub_1B5EA5D80();
    v32 = sub_1B5EA5D80();
    v33 = sub_1B5E088E8();
    v34(v33, v29);
    *v28 = a14;
    v28[1] = v31 & 1;
    v28[2] = v32 & 1;
  }

  sub_1B5DF3FB8(v26);
  sub_1B5DF7180();
}

uint64_t sub_1B5E04668(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736143657375 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B5EA5F00();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B5E046E0()
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E04744(uint64_t a1)
{
  sub_1B5EA5FD0();
  MEMORY[0x1B8C8AC00](0);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E04788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E04668(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B5E047B4(uint64_t a1)
{
  v2 = sub_1B5E06688();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E047F0(uint64_t a1)
{
  v2 = sub_1B5E06688();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.ThreadVisualPromptOptions.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1B5DF33E0(&qword_1EB90DC38, &qword_1B5EAFD10);
  sub_1B5DF5DA8();
  v30 = v29;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = *v23;
  sub_1B5E0897C(v27, v27[3]);
  sub_1B5E06688();
  sub_1B5EA6040();
  a13 = v34;
  sub_1B5E065E0();
  sub_1B5EA5EA0();
  (*(v30 + 8))(v33, v28);
  sub_1B5DF7180();
}

void MailMessage.ThreadVisualPromptOptions.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1B5DF7168();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = sub_1B5DF33E0(&qword_1EB90DC48, &qword_1B5EAFD18);
  sub_1B5DF5DA8();
  v32 = v31;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  sub_1B5E08834();
  sub_1B5E06688();
  sub_1B5EA6030();
  if (!v23)
  {
    sub_1B5E06634();
    sub_1B5EA5DC0();
    (*(v32 + 8))(v35, v30);
    *v29 = a13;
  }

  sub_1B5DF3FB8(v27);
  sub_1B5DF7180();
}

uint64_t MailMessage.messageID.setter()
{
  sub_1B5DFA47C();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t MailMessage.sender.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 57);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_1B5E066DC(v7, &v6);
}

__n128 MailMessage.sender.setter(uint64_t a1)
{
  v3 = v1[2];
  v6[0] = v1[1];
  v6[1] = v3;
  v7[0] = v1[3];
  *(v7 + 9) = *(v1 + 57);
  sub_1B5E06738(v6);
  v4 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v4;
  v1[3] = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 57) = result;
  return result;
}

uint64_t MailMessage.recipients.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t MailMessage.dateReceived.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MailMessage(0) + 28);
  sub_1B5EA42F0();
  sub_1B5DF5EB8();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MailMessage.dateReceived.setter()
{
  v2 = *(sub_1B5E08A40() + 28);
  sub_1B5EA42F0();
  sub_1B5DF5EB8();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t MailMessage.isUnread.setter(char a1)
{
  result = type metadata accessor for MailMessage(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t MailMessage.subject.getter()
{
  type metadata accessor for MailMessage(0);

  return sub_1B5DFA488();
}

uint64_t MailMessage.subject.setter()
{
  sub_1B5DFA47C();
  v3 = (v1 + *(type metadata accessor for MailMessage(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailMessage.body.getter()
{
  type metadata accessor for MailMessage(0);

  return sub_1B5DFA488();
}

uint64_t MailMessage.body.setter()
{
  sub_1B5DFA47C();
  v3 = (v1 + *(type metadata accessor for MailMessage(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MailMessage.attachments.getter()
{
  type metadata accessor for MailMessage(0);
}

uint64_t MailMessage.attachments.setter()
{
  v2 = *(sub_1B5E08A40() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t MailMessage.init(messageID:sender:recipients:dateReceived:isUnread:subject:body:attachments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = type metadata accessor for MailMessage(0);
  v19 = (a9 + v18[9]);
  v20 = (a9 + v18[10]);
  *a9 = a1;
  *(a9 + 8) = a2;
  v21 = a3[1];
  *(a9 + 16) = *a3;
  *(a9 + 32) = v21;
  *(a9 + 48) = a3[2];
  *(a9 + 57) = *(a3 + 41);
  *(a9 + 80) = a4;
  v22 = v18[7];
  sub_1B5EA42F0();
  sub_1B5DF5EB8();
  result = (*(v23 + 32))(a9 + v22, a5);
  *(a9 + v18[8]) = a6;
  *v19 = a7;
  v19[1] = a8;
  *v20 = a10;
  v20[1] = a11;
  *(a9 + v18[11]) = a12;
  return result;
}

uint64_t sub_1B5E05128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_1B5EA5F00() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B5EA5F00() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
      if (v7 || (sub_1B5EA5F00() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6563655265746164 && a2 == 0xEC00000064657669;
        if (v8 || (sub_1B5EA5F00() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x646165726E557369 && a2 == 0xE800000000000000;
          if (v9 || (sub_1B5EA5F00() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
            if (v10 || (sub_1B5EA5F00() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 2036625250 && a2 == 0xE400000000000000;
              if (v11 || (sub_1B5EA5F00() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656D686361747461 && a2 == 0xEB0000000073746ELL)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B5EA5F00();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1B5E053BC(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x7265646E6573;
      break;
    case 2:
      result = 0x6E65697069636572;
      break;
    case 3:
      result = 0x6563655265746164;
      break;
    case 4:
      result = 0x646165726E557369;
      break;
    case 5:
      result = 0x7463656A627573;
      break;
    case 6:
      result = 2036625250;
      break;
    case 7:
      result = 0x656D686361747461;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B5E054AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1B5EA5FD0();
  a4(v8, v6);
  return sub_1B5EA6020();
}

uint64_t sub_1B5E05500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B5E05128(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B5E05528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B5E053B4();
  *a1 = result;
  return result;
}

uint64_t sub_1B5E05550(uint64_t a1)
{
  v2 = sub_1B5E0678C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B5E0558C(uint64_t a1)
{
  v2 = sub_1B5E0678C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void MailMessage.encode(to:)()
{
  sub_1B5DF7168();
  v3 = v0;
  v5 = v4;
  v6 = sub_1B5DF33E0(&qword_1EB90DC50, &unk_1B5EAFD20);
  sub_1B5DF5DA8();
  v8 = v7;
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E08868();
  sub_1B5E0897C(v5, v5[3]);
  sub_1B5E0678C();
  sub_1B5E08B7C();
  sub_1B5EA6040();
  v20 = 0;
  sub_1B5E08798();
  sub_1B5EA5E50();
  if (!v1)
  {
    v10 = v3[2];
    v18[0] = v3[1];
    v18[1] = v10;
    v12 = v3[1];
    v11 = v3[2];
    *v19 = v3[3];
    *&v19[9] = *(v3 + 57);
    v15 = v12;
    v16 = v11;
    v17[0] = v3[3];
    *(v17 + 9) = *(v3 + 57);
    v14[63] = 1;
    sub_1B5E066DC(v18, v14);
    sub_1B5E067E0();
    sub_1B5E08798();
    sub_1B5EA5EA0();
    sub_1B5E0891C();
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E06918(&qword_1EB90CDB0);
    sub_1B5E08798();
    sub_1B5EA5EA0();
    type metadata accessor for MailMessage(0);
    sub_1B5E08B3C(3);
    sub_1B5EA42F0();
    sub_1B5E0881C();
    sub_1B5E08594(v13);
    sub_1B5E08798();
    sub_1B5EA5EA0();
    sub_1B5E08B3C(4);
    sub_1B5E08798();
    sub_1B5EA5E60();
    sub_1B5E08B3C(5);
    sub_1B5E08798();
    sub_1B5EA5E10();
    sub_1B5E08B3C(6);
    sub_1B5E08798();
    sub_1B5EA5E10();
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E06834(&unk_1EB90CE10);
    sub_1B5E08798();
    sub_1B5EA5EA0();
  }

  (*(v8 + 8))(v2, v6);
  sub_1B5E08B88();
  sub_1B5DF7180();
}

void MailMessage.init(from:)()
{
  sub_1B5DF7168();
  v2 = v1;
  v25 = v3;
  sub_1B5EA42F0();
  sub_1B5DF5DA8();
  v27 = v5;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1B5DFD7E8();
  v8 = v7 - v6;
  sub_1B5DF33E0(&qword_1EB90DC68, &qword_1B5EAFD38);
  sub_1B5DF5DA8();
  sub_1B5DFA470();
  MEMORY[0x1EEE9AC00](v9);
  sub_1B5E08858();
  v26 = type metadata accessor for MailMessage(0);
  sub_1B5DF5EB8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1B5DFD7E8();
  v13 = v12 - v11;
  sub_1B5E0897C(v2, v2[3]);
  sub_1B5E0678C();
  sub_1B5EA6030();
  if (v0)
  {
    sub_1B5DF3FB8(v2);
  }

  else
  {
    LOBYTE(v30) = 0;
    *v13 = sub_1B5EA5D70();
    *(v13 + 8) = v14;
    sub_1B5E068C4();
    sub_1B5EA5DC0();
    v15 = v31;
    *(v13 + 16) = v30;
    *(v13 + 32) = v15;
    *(v13 + 48) = *v32;
    *(v13 + 57) = *&v32[9];
    sub_1B5DF33E0(&qword_1EB90DC58, &unk_1B5EB2BC0);
    sub_1B5E06918(&qword_1EB90CDA8);
    sub_1B5EA5DC0();
    *(v13 + 80) = v29;
    LOBYTE(v29) = 3;
    sub_1B5E0881C();
    sub_1B5E08594(v16);
    sub_1B5EA5DC0();
    (*(v27 + 32))(v13 + v26[7], v8, v28);
    sub_1B5E08878(4);
    *(v13 + v26[8]) = sub_1B5EA5D80() & 1;
    sub_1B5E08878(5);
    v17 = sub_1B5EA5D30();
    v18 = (v13 + v26[9]);
    *v18 = v17;
    v18[1] = v19;
    sub_1B5E08878(6);
    v20 = sub_1B5EA5D30();
    v21 = (v13 + v26[10]);
    *v21 = v20;
    v21[1] = v22;
    sub_1B5DF33E0(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E06834(&unk_1EB90CE08);
    sub_1B5EA5DC0();
    v23 = sub_1B5E0868C();
    v24(v23);
    *(v13 + v26[11]) = v29;
    sub_1B5E06984(v13, v25);
    sub_1B5DF3FB8(v2);
    sub_1B5E069E8(v13);
  }

  sub_1B5DF7180();
}

Sage::MailMessage::VisualPromptOptions __swiftcall MailMessage.VisualPromptOptions.init()()
{
  *v0 = 258;
  *(v0 + 2) = 0;
  return result;
}

Sage::MailMessage::VisualPromptOptions __swiftcall MailMessage.VisualPromptOptions.init(extractVisualConcepts:extractVisualTopLine:)(Swift::Bool extractVisualConcepts, Swift::Bool extractVisualTopLine)
{
  *v2 = 2;
  v2[1] = extractVisualConcepts;
  v2[2] = extractVisualTopLine;
  result.useCase = extractVisualConcepts;
  return result;
}

uint64_t sub_1B5E05F94(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  sub_1B5DF33E0(&qword_1EB90DD58, &unk_1B5EB0910);
  result = sub_1B5E08A90();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    sub_1B5EA5FD0();
    MEMORY[0x1B8C8AC00](v7);
    result = sub_1B5EA6020();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v6 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v9) == v7)
      {
        goto LABEL_11;
      }

      result = v9 + 1;
    }

    *(v6 + 8 * v10) = v12 | v11;
    *(*(v3 + 48) + v9) = v7;
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v15;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1B5E060D4()
{
  result = qword_1EB90D8B0;
  if (!qword_1EB90D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8B0);
  }

  return result;
}

unint64_t sub_1B5E06128()
{
  result = qword_1EB90D018;
  if (!qword_1EB90D018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D018);
  }

  return result;
}

unint64_t sub_1B5E0617C()
{
  result = qword_1EB90D768;
  if (!qword_1EB90D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D768);
  }

  return result;
}

uint64_t type metadata accessor for MailMessage(uint64_t a1)
{
  result = qword_1ED7D28D0;
  if (!qword_1ED7D28D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B5E0621C(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DBB8, &qword_1B5EAFCB8);
    v4();
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E06288()
{
  result = qword_1EB90D010;
  if (!qword_1EB90D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D010);
  }

  return result;
}

unint64_t sub_1B5E062DC()
{
  result = qword_1EB90D080;
  if (!qword_1EB90D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D080);
  }

  return result;
}

unint64_t sub_1B5E06330(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DBC0, &qword_1B5EAFCC0);
    sub_1B5E08594(v4);
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E06428()
{
  result = qword_1EB90DBD8;
  if (!qword_1EB90DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DBD8);
  }

  return result;
}

unint64_t sub_1B5E064E4()
{
  result = qword_1EB90D898;
  if (!qword_1EB90D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D898);
  }

  return result;
}

unint64_t sub_1B5E06538()
{
  result = qword_1EB90DC00;
  if (!qword_1EB90DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC00);
  }

  return result;
}

unint64_t sub_1B5E0658C()
{
  result = qword_1EB90DC18;
  if (!qword_1EB90DC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC18);
  }

  return result;
}

unint64_t sub_1B5E065E0()
{
  result = qword_1EB90DC20;
  if (!qword_1EB90DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC20);
  }

  return result;
}

unint64_t sub_1B5E06634()
{
  result = qword_1EB90DC30;
  if (!qword_1EB90DC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC30);
  }

  return result;
}

unint64_t sub_1B5E06688()
{
  result = qword_1EB90DC40;
  if (!qword_1EB90DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC40);
  }

  return result;
}

unint64_t sub_1B5E0678C()
{
  result = qword_1EB90D8C8;
  if (!qword_1EB90D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D8C8);
  }

  return result;
}

unint64_t sub_1B5E067E0()
{
  result = qword_1EB90CE58;
  if (!qword_1EB90CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE58);
  }

  return result;
}

unint64_t sub_1B5E06834(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DC60, &qword_1B5EAFD30);
    sub_1B5E08594(v4);
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1B5E068C4()
{
  result = qword_1EB90CE50;
  if (!qword_1EB90CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90CE50);
  }

  return result;
}

unint64_t sub_1B5E06918(uint64_t a1)
{
  result = sub_1B5E08A1C(a1);
  if (!result)
  {
    v4 = v3;
    sub_1B5DFD694(&qword_1EB90DC58, &unk_1B5EB2BC0);
    v4();
    sub_1B5E088A8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1B5E06984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B5E069E8(uint64_t a1)
{
  v2 = type metadata accessor for MailMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B5E06A48()
{
  result = qword_1EB90D148;
  if (!qword_1EB90D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D148);
  }

  return result;
}

unint64_t sub_1B5E06AA0()
{
  result = qword_1EB90D150;
  if (!qword_1EB90D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D150);
  }

  return result;
}

unint64_t sub_1B5E06AF8()
{
  result = qword_1EB90D158;
  if (!qword_1EB90D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D158);
  }

  return result;
}

unint64_t sub_1B5E06B50()
{
  result = qword_1EB90D160;
  if (!qword_1EB90D160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90D160);
  }

  return result;
}

unint64_t sub_1B5E06BA8()
{
  result = qword_1EB90DC70;
  if (!qword_1EB90DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC70);
  }

  return result;
}

unint64_t sub_1B5E06C00()
{
  result = qword_1EB90DC78;
  if (!qword_1EB90DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC78);
  }

  return result;
}

unint64_t sub_1B5E06C58()
{
  result = qword_1EB90DC80;
  if (!qword_1EB90DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC80);
  }

  return result;
}

unint64_t sub_1B5E06CB0()
{
  result = qword_1EB90DC88;
  if (!qword_1EB90DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC88);
  }

  return result;
}

unint64_t sub_1B5E06D08()
{
  result = qword_1EB90DC90;
  if (!qword_1EB90DC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC90);
  }

  return result;
}

unint64_t sub_1B5E06D60()
{
  result = qword_1EB90DC98;
  if (!qword_1EB90DC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DC98);
  }

  return result;
}

unint64_t sub_1B5E06DB8()
{
  result = qword_1EB90DCA0;
  if (!qword_1EB90DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCA0);
  }

  return result;
}

unint64_t sub_1B5E06E10()
{
  result = qword_1EB90DCA8;
  if (!qword_1EB90DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB90DCA8);
  }

  return result;
}

unint64_t sub_1B5E06E64(uint64_t a1)
{
  *(a1 + 8) = sub_1B5E08594(&unk_1ED7D28E0);
  sub_1B5E08650();
  result = sub_1B5E08594(v2);
  *(a1 + 16) = result;
  return result;
}

void sub_1B5E06F00(uint64_t a1)
{
  sub_1B5E07014(319, &qword_1ED7D2010, &type metadata for Handle, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B5EA42F0();
    if (v2 <= 0x3F)
    {
      sub_1B5E07014(319, &qword_1ED7D2D00, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B5E07064(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B5E07014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B5E07064(uint64_t a1)
{
  if (!qword_1ED7D2030)
  {
    type metadata accessor for Attachment(255);
    v1 = sub_1B5EA58A0();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7D2030);
    }
  }
}

__n128 sub_1B5E070BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B5E070E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1B5E07120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1B5E07180(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B5E0718C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1B5E071CC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1B5E0721C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B5E07230(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B5E07270(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for MailMessage.VisualPromptOptions(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MailMessage.VisualPromptOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
        return (v3 + 1);
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v3 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for MailMessage.VisualPromptOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailMessage.ThreadVisualPromptOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MailMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MailMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MailMessage.ThreadVisualPromptOptions.CodingKeys(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for MailMessage.ThreadVisualPromptOptions.CodingKeys(_BYTE *result, int a2, int a3)
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
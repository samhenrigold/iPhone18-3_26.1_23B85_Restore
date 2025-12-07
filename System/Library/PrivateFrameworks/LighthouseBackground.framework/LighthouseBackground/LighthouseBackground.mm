uint64_t sub_1DF15BBD8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1DF164B68();
}

__n128 sub_1DF15BC4C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

__n128 sub_1DF15BC6C@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + *(type metadata accessor for KVDatastore.MetadataType(0) + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1DF15BCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15BD84()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1DF15BDBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15BE68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15BF20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15BFDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15C08C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TaskDefinition(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1DF15C1D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for TaskDefinition(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1DF15C308(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15C3B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15C458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15C4C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15C534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DF15C63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DF15C758(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DF15C894(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DF15C9D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1DF15CB0C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1DF15CC70()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15CCA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF15CD08()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x746C75736572;
  }
}

_BYTE *sub_1DF15CD48@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[1] = 2;
  return result;
}

uint64_t sub_1DF15CD5C()
{
  if (*v0)
  {
    return 0x746C75736572;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DF15CD94()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x726F727265;
  }
}

double sub_1DF15CDC4@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  sub_1DF18A0A4(0, 0xF000000000000000);
  result = 0.0;
  *(a2 + 8) = xmmword_1DF2310C0;
  return result;
}

uint64_t sub_1DF15CE04()
{
  v1 = 0x70756F7267;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x694C6F54656D6974;
  }

  if (*v0)
  {
    v1 = 7955819;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF15CE74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF1CA154(a2, a3);
  *a1 = result;
  return result;
}

_BYTE *sub_1DF15CE9C@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1DF15CEC4()
{
  if (*v0)
  {
    return 1868983913;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1DF15CF14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A0, &unk_1DF238290);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15CF8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0D5A0, &unk_1DF238290);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15D00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskDefinition(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF15D078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskDefinition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF15D110(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 <= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 5;
    if (v4 >= 5)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1DF15D1D0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15D294(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF22A800();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15D340(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF22A800();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15D3FC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15D448()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF15D524()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF15D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF15D5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1DF15D620(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 6)
  {
    return sub_1DF18A0A4(a2, a3);
  }

  return result;
}

uint64_t sub_1DF15D63C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 6)
  {
    return sub_1DF1B7FDC(a2, a3);
  }

  return result;
}

uint64_t sub_1DF15D894()
{

  return MEMORY[0x1EEE6BDD0](v0, 272, 7);
}

uint64_t _s20LighthouseBackground20RepeatingTaskRequestVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s20LighthouseBackground20RepeatingTaskRequestVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DF15D95C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF15DA18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF8, &qword_1DF22FF80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15DAC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF15DB00()
{
  v1 = sub_1DF22A9B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF15DBC4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF15DC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF22A840();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DF15DCC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1DF22A840();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF15DD78()
{
  v1 = sub_1DF22A9B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF15DE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF22A800();
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_1DF15DEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DF22A800();
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_1DF15DF48()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15DFCC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_1DF22A800();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_1DF15E150(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1DF22A800();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CF50, &unk_1DF23A480);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0EF10, &qword_1DF22DDF0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DF15E2E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF15E39C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF15E44C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1DF22A800();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DF15E57C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0EF40, &qword_1DF23AAB0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1DF22A800();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

unint64_t *sub_1DF15E704@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1DF15E72C()
{

  if (*(v0 + 56))
  {
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 147, 7);
}

uint64_t sub_1DF15E7A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _MLHostExtensionConfiguration(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1DF15E7EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF15E824()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF15E85C()
{
  v1 = (type metadata accessor for TaskErrorEvent(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1DF22A800();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF15EA48()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x70756F7267;
  }
}

uint64_t sub_1DF15EA78()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DF15EAC4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

LighthouseBackground::TargetingOperator_optional __swiftcall TargetingOperator.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TargetingOperator.rawValue.getter()
{
  v1 = 0x736564756C637865;
  if (*v0 != 1)
  {
    v1 = 0x7865676572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736564756C636E69;
  }
}

uint64_t sub_1DF15EB7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x736564756C637865;
  v5 = 0xE800000000000000;
  v6 = 0x7865676572;
  if (v2 == 1)
  {
    v6 = 0x736564756C637865;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x736564756C636E69;
  }

  if (v2)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*a2 != 1)
  {
    v4 = 0x7865676572;
    v3 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0x736564756C636E69;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF15EC58()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF15ECEC(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF15ED6C(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF15EE08(uint64_t *a1@<X8>)
{
  v2 = 0x736564756C636E69;
  v3 = 0x736564756C637865;
  v4 = 0xE800000000000000;
  if (*v1 != 1)
  {
    v3 = 0x7865676572;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v2 = v3;
    v5 = v4;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

LighthouseBackground::TargetingKey_optional __swiftcall TargetingKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TargetingKey.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x726556646C697562;
    v7 = 0x6D754E6C65646F6DLL;
    if (v1 != 2)
    {
      v7 = 0x4E746375646F7270;
    }

    if (*v0)
    {
      v6 = 0x6C43656369766564;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x6F436E6F69676572;
    v3 = 0x6E496E6F69676572;
    if (v1 != 7)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x54746375646F7270;
    if (v1 != 4)
    {
      v4 = 0x56746375646F7270;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DF15F0D0()
{
  v1 = *v0;
  sub_1DF22B6C0();
  sub_1DF228790(v3, v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F120(uint64_t a1)
{
  v2 = *v1;
  sub_1DF22B6C0();
  sub_1DF228790(v4, v2);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F170@<X0>(uint64_t *a1@<X8>)
{
  result = TargetingKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF15F268()
{
  v1 = *v0;
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](v1);
  return sub_1DF22B6F0();
}

uint64_t sub_1DF15F2B0(uint64_t a1)
{
  v2 = *v1;
  sub_1DF22B6C0();
  MEMORY[0x1E12D01A0](v2);
  return sub_1DF22B6F0();
}

unint64_t sub_1DF15F2F4()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69746567726174;
  }
}

uint64_t sub_1DF15F358@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF161EDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF15F38C(uint64_t a1)
{
  v2 = sub_1DF15F6B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF15F3C8(uint64_t a1)
{
  v2 = sub_1DF15F6B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TargetingRule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C788, &unk_1DF22C4F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v13 = *(v1 + 1);
  v12 = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF15F6B0();
  sub_1DF22B740();
  v19 = v8;
  v18 = 0;
  sub_1DF15F704();
  sub_1DF22B5C0();
  if (!v2)
  {
    v9 = v12;
    v14 = v13;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    sub_1DF15FAB4(&qword_1ECE0C068, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DF22B5C0();
    v16 = v9;
    v15 = 2;
    sub_1DF15F7A0();
    sub_1DF22B5C0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1DF15F6B0()
{
  result = qword_1ECE0C790;
  if (!qword_1ECE0C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C790);
  }

  return result;
}

unint64_t sub_1DF15F704()
{
  result = qword_1ECE0C798;
  if (!qword_1ECE0C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C798);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1DF15F7A0()
{
  result = qword_1ECE0C7B0;
  if (!qword_1ECE0C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7B0);
  }

  return result;
}

uint64_t TargetingRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7B8, &unk_1DF22C500);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF15F6B0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  sub_1DF15FA60();
  sub_1DF22B4E0();
  v9 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
  v16 = 1;
  sub_1DF15FAB4(&qword_1ECE0C058, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DF22B4E0();
  v10 = v13[1];
  v14 = 2;
  sub_1DF15FB20();
  sub_1DF22B4E0();
  (*(v6 + 8))(v8, v5);
  v11 = v15;
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF15FA60()
{
  result = qword_1ECE0C7C0;
  if (!qword_1ECE0C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7C0);
  }

  return result;
}

uint64_t sub_1DF15FAB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE0C7A0, &qword_1DF22CB50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF15FB20()
{
  result = qword_1ECE0C7D0;
  if (!qword_1ECE0C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7D0);
  }

  return result;
}

Swift::Bool __swiftcall satisfiesTargetingRules(_:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7D8, &qword_1DF230700);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v58 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v58 - v10;
  v11 = *(a1._rawValue + 2);
  if (!v11)
  {
LABEL_70:
    LOBYTE(v18) = 1;
    return v18;
  }

  v12 = 0;
  v13 = 0;
  v59 = *(a1._rawValue + 2);
  v60 = a1._rawValue + 32;
  v68 = v6 + 32;
  v64 = v6 + 16;
  v65 = (v6 + 8);
  v66 = v4;
  while (1)
  {
    v61 = v12;
    v14 = &v60[24 * v12];
    v15 = *(v14 + 1);
    v16 = v14[16];
    v17 = *v14;

    v18 = MobileGestalt_get_current_device();
    v19 = v18;
    if (v17 <= 3)
    {
      break;
    }

    if (v17 <= 5)
    {
      if (v17 == 4)
      {
        if (!v18)
        {
          goto LABEL_92;
        }

        v20 = MobileGestalt_copy_productType_obj();

        if (!v20)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (!v18)
        {
          goto LABEL_90;
        }

        v20 = MobileGestalt_copy_productVersion_obj();

        if (!v20)
        {
          goto LABEL_89;
        }
      }

      goto LABEL_43;
    }

    if (v17 == 6)
    {
      if (!v18)
      {
        goto LABEL_88;
      }

      v20 = MobileGestalt_copy_regionCode_obj();

      if (!v20)
      {
        goto LABEL_87;
      }

      goto LABEL_43;
    }

    if (v17 == 7)
    {
      if (!v18)
      {
        goto LABEL_86;
      }

      v20 = MobileGestalt_copy_regionInfo_obj();

      if (!v20)
      {
        goto LABEL_85;
      }

      goto LABEL_43;
    }

    if (!v18)
    {
      goto LABEL_84;
    }

    exclaveCapability = MobileGestalt_get_exclaveCapability();

    if (exclaveCapability)
    {
      v23 = 1702195828;
    }

    else
    {
      v23 = 0x65736C6166;
    }

    if (exclaveCapability)
    {
      v24 = 0xE400000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

LABEL_44:
    v67 = v23;
    v73[0] = v23;
    v73[1] = v24;
    v70 = v24;
    MEMORY[0x1EEE9AC00](v22);
    *(&v58 - 2) = v73;

    v26 = sub_1DF16054C(sub_1DF161770, (&v58 - 4), v15);

    if (v16)
    {
      if (v16 != 1)
      {
        v27 = *(v15 + 16);
        v69 = v15;
        if (v27)
        {
          v71 = v9;
          v73[0] = MEMORY[0x1E69E7CC0];

          sub_1DF160CF0(0, v27, 0);
          v28 = 0;
          v29 = v73[0];
          v30 = v15 + 40;
          while (1)
          {
            if (v28 >= *(v15 + 16))
            {
              __break(1u);
              goto LABEL_80;
            }

            sub_1DF22A880();
            if (v13)
            {
              break;
            }

            v73[0] = v29;
            v32 = *(v29 + 16);
            v31 = *(v29 + 24);
            if (v32 >= v31 >> 1)
            {
              sub_1DF160CF0((v31 > 1), v32 + 1, 1);
              v29 = v73[0];
            }

            ++v28;
            *(v29 + 16) = v32 + 1;
            (*(v6 + 32))(v29 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32, v72, v5);
            v30 += 16;
            v15 = v69;
            if (v27 == v28)
            {

              v9 = v71;
              v11 = v59;
              goto LABEL_57;
            }
          }

          v30 = v69;

LABEL_74:
          if (qword_1ED8E7530 == -1)
          {
LABEL_75:
            v44 = sub_1DF22A8C0();
            __swift_project_value_buffer(v44, qword_1ED8E92C0);

            v45 = v13;
            v46 = sub_1DF22A8A0();
            v47 = sub_1DF22B110();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              v73[0] = v50;
              *v48 = 136315394;
              v51 = MEMORY[0x1E12CF970](v30, MEMORY[0x1E69E6158]);
              v53 = v52;

              v54 = sub_1DF160728(v51, v53, v73);

              *(v48 + 4) = v54;
              *(v48 + 12) = 2112;
              v55 = v13;
              v56 = _swift_stdlib_bridgeErrorToNSError();
              *(v48 + 14) = v56;
              *v49 = v56;
              _os_log_impl(&dword_1DF15A000, v46, v47, "Encountered error when handling regexes from values %s: %@", v48, 0x16u);
              sub_1DF16184C(v49, &qword_1ECE0C7E8, &qword_1DF230550);
              MEMORY[0x1E12D0B40](v49, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v50);
              MEMORY[0x1E12D0B40](v50, -1, -1);
              MEMORY[0x1E12D0B40](v48, -1, -1);
            }

            else
            {
            }

LABEL_78:
            LOBYTE(v18) = 0;
            return v18;
          }
        }

        else
        {
          v29 = MEMORY[0x1E69E7CC0];
LABEL_57:
          v33 = *(v29 + 16);
          v34 = v66;
          if (!v33)
          {

            v35 = MEMORY[0x1E69E7CC0];
LABEL_66:
            v41 = *(v35 + 16);
            v42 = (v35 + 32);
            while (v41)
            {
              v43 = *v42++;
              --v41;
              if (v43)
              {

                goto LABEL_4;
              }
            }

            goto LABEL_78;
          }

          v73[0] = MEMORY[0x1E69E7CC0];
          sub_1DF160CD0(0, v33, 0);
          v30 = 0;
          v35 = v73[0];
          v36 = *(v6 + 80);
          v62 = v6;
          v63 = v29 + ((v36 + 32) & ~v36);
          while (v30 < *(v29 + 16))
          {
            (*(v6 + 16))(v9, v63 + *(v6 + 72) * v30, v5);
            sub_1DF22A860();
            if (v13)
            {
              (*v65)(v9, v5);

              v30 = v69;
              goto LABEL_74;
            }

            v71 = 0;
            (*v65)(v9);
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7F0, &qword_1DF22C520);
            v38 = (*(*(v37 - 8) + 48))(v34, 1, v37);
            sub_1DF16184C(v34, &qword_1ECE0C7D8, &qword_1DF230700);
            v73[0] = v35;
            v40 = *(v35 + 16);
            v39 = *(v35 + 24);
            if (v40 >= v39 >> 1)
            {
              sub_1DF160CD0((v39 > 1), v40 + 1, 1);
              v35 = v73[0];
            }

            ++v30;
            *(v35 + 16) = v40 + 1;
            *(v35 + v40 + 32) = v38 != 1;
            v34 = v66;
            v6 = v62;
            v13 = v71;
            if (v33 == v30)
            {

              v11 = v59;
              goto LABEL_66;
            }
          }

LABEL_80:
          __break(1u);
        }

        swift_once();
        goto LABEL_75;
      }

      if (v26)
      {
        goto LABEL_78;
      }
    }

    else
    {

      if ((v26 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

LABEL_4:
    v12 = v61 + 1;
    if (v61 + 1 == v11)
    {
      goto LABEL_70;
    }
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (!v18)
      {
        goto LABEL_96;
      }

      v20 = MobileGestalt_copy_modelNumber_obj();

      if (!v20)
      {
        goto LABEL_95;
      }
    }

    else
    {
      if (!v18)
      {
        goto LABEL_94;
      }

      v20 = MobileGestalt_copy_productName_obj();

      if (!v20)
      {
        goto LABEL_93;
      }
    }

    goto LABEL_43;
  }

  if (v17)
  {
    if (!v18)
    {
      goto LABEL_98;
    }

    v20 = MobileGestalt_copy_deviceClass_obj();

    if (!v20)
    {
      goto LABEL_97;
    }

    goto LABEL_43;
  }

  if (v18)
  {
    v20 = MobileGestalt_copy_buildVersion_obj();

    if (!v20)
    {
      goto LABEL_83;
    }

LABEL_43:
    v23 = sub_1DF22ACC0();
    v24 = v25;

    goto LABEL_44;
  }

  __break(1u);
LABEL_83:
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
  return v18;
}

uint64_t sub_1DF16054C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1DF1605F8(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = v5 - 1;
    v8 = (a3 + 56);
    do
    {
      v9 = v7;
      v10 = *(v8 - 1);
      v11 = *v8;
      v12 = *(v8 - 2);
      v15[0] = *(v8 - 3);
      v15[1] = v12;
      v15[2] = v10;
      v15[3] = v11;

      v13 = a1(v15);

      LOBYTE(v5) = (v4 != 0) | v13;
      if ((v4 != 0) | v13 & 1)
      {
        break;
      }

      v7 = v9 - 1;
      v8 += 4;
    }

    while (v9);
  }

  return v5 & 1;
}

unint64_t sub_1DF160728(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF1607F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DF1620A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1DF1607F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DF160900(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DF22B350();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1DF160900(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DF16094C(a1, a2);
  sub_1DF160A7C(&unk_1F5A464C0);
  return v3;
}

void *sub_1DF16094C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DF160B68(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DF22B350();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DF22AD70();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF160B68(v10, 0);
        result = sub_1DF22B2F0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DF160A7C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DF160BDC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1DF160B68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E8, &qword_1DF22CA40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1DF160BDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E8, &qword_1DF22CA40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1DF160CD0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF160E18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF160CF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF160F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF160D10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF1610FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF160D30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF1612FC(a1, a2, a3, *v3, &qword_1ECE0C8C0, &unk_1DF22D780, type metadata accessor for LedgerState);
  *v3 = result;
  return result;
}

char *sub_1DF160D74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF161208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DF160D94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF1612FC(a1, a2, a3, *v3, &qword_1ECE0C8C8, &qword_1DF22CA20, type metadata accessor for TaskStatusEvent);
  *v3 = result;
  return result;
}

void *sub_1DF160DD8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF1614D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF160DF8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DF16160C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DF160E18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8E0, &qword_1DF22CA38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1DF160F0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE0C8F0, &qword_1DF22CA48);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C7E0, &unk_1DF22C510) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1DF1610FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D0, &qword_1DF22CA28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF161208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D8, &qword_1DF22CA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1DF1612FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1DF1614D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8B0, &unk_1DF22D680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8B8, &unk_1DF22CA10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF16160C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C848, &unk_1DF22CA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DF161718(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620() & 1;
  }
}

uint64_t sub_1DF161770(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DF22B620() & 1;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_1DF16184C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DF1618B0()
{
  result = qword_1ECE0C7F8;
  if (!qword_1ECE0C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C7F8);
  }

  return result;
}

unint64_t sub_1DF161908()
{
  result = qword_1ECE0C800;
  if (!qword_1ECE0C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C800);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetingKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TargetingKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF161AE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF161B2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF161B88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF161BA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void sub_1DF161C38(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for KVDatastore.MetadataType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KVDatastore.MetadataType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF161DD8()
{
  result = qword_1ECE0C820;
  if (!qword_1ECE0C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C820);
  }

  return result;
}

unint64_t sub_1DF161E30()
{
  result = qword_1ECE0C828;
  if (!qword_1ECE0C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C828);
  }

  return result;
}

unint64_t sub_1DF161E88()
{
  result = qword_1ECE0C830;
  if (!qword_1ECE0C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C830);
  }

  return result;
}

uint64_t sub_1DF161EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69746567726174 && a2 == 0xEC00000079654B67;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DF23D730 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1DF161FFC()
{
  result = qword_1ECE0C838;
  if (!qword_1ECE0C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C838);
  }

  return result;
}

unint64_t sub_1DF162050()
{
  result = qword_1ECE0C840;
  if (!qword_1ECE0C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C840);
  }

  return result;
}

uint64_t sub_1DF1620A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t VertexEdges.edges.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);

  *(v2 + v4) = a1;
  return result;
}

uint64_t VertexEdges.init(vertex:edges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for VertexEdges(0, v14);
  *(a7 + *(result + 52)) = a2;
  return result;
}

uint64_t Graph.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1DF162334()
{
  sub_1DF164B68();
}

uint64_t sub_1DF16235C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1DF1623F8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[4];
  v4 = *(v1 + 104);
  v5[0] = *(v1 + 88);
  v5[1] = v4;
  type metadata accessor for VertexEdges(0, v5);
  swift_getAssociatedConformanceWitness();
  *&v5[0] = v2;
  sub_1DF22ABD0();

  swift_getWitnessTable();
  return sub_1DF22AF60();
}

uint64_t sub_1DF162514(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(v2 - 8);
  v28 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v27 - v4;
  v39[0] = *(v6 + 88);
  v39[1] = v2;
  v40 = *(v7 + 104);
  v35 = type metadata accessor for VertexEdges(0, v39);
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v27 - v9;
  v38 = sub_1DF22AED0();
  swift_beginAccess();
  v10 = v1[4];
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v8;
  v31 = v8 + 8;
  v32 = v8 + 16;
  v36 = v10;

  v17 = 0;
  v29 = v15;
  for (i = v11; ; v11 = i)
  {
    if (!v14)
    {
      do
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return result;
        }

        if (v18 >= v15)
        {
          goto LABEL_20;
        }

        v14 = *(v11 + 8 * v18);
        ++v17;
      }

      while (!v14);
      v17 = v18;
    }

    v19 = v35;
    v21 = v33;
    v20 = v34;
    (*(v34 + 16))(v33, *(v36 + 56) + *(v34 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v35);
    v22 = *&v21[*(v19 + 52)];
    v23 = *(v20 + 8);

    v23(v21, v19);
    if (sub_1DF22AF10())
    {
      break;
    }

LABEL_4:
    v14 &= v14 - 1;

    v15 = v29;
  }

  v24 = 0;
  while (1)
  {
    v25 = sub_1DF22AEF0();
    sub_1DF22AEB0();
    if ((v25 & 1) == 0)
    {
      break;
    }

    (*(v3 + 16))(v5, v22 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24, v2);
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_19;
    }

LABEL_14:
    sub_1DF22AF50();
    sub_1DF22AF20();
    ++v24;
    if (v26 == sub_1DF22AF10())
    {
      goto LABEL_4;
    }
  }

  result = sub_1DF22B330();
  if (v28 != 8)
  {
    goto LABEL_22;
  }

  v37 = result;
  (*(v3 + 16))(v5, &v37, v2);
  swift_unknownObjectRelease();
  v26 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_14;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  return v38;
}

uint64_t Graph.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Graph.init(name:)(a1, a2);
  return v4;
}

void *Graph.init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v13 = *(*v2 + 104);
  v14[0] = *(*v2 + 88);
  v14[1] = v13;
  v6 = type metadata accessor for VertexEdges(255, v14);
  swift_getTupleTypeMetadata2();
  v7 = sub_1DF22AED0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_1DF16487C(v7, v5, v6, AssociatedConformanceWitness);

  v2[4] = v9;
  v2[2] = a1;
  v2[3] = a2;
  v10 = sub_1DF22AED0();
  v11 = sub_1DF16487C(v10, v5, v6, AssociatedConformanceWitness);

  swift_beginAccess();
  v2[4] = v11;

  return v2;
}

uint64_t sub_1DF162AA0(uint64_t a1)
{
  v3 = *v1;
  v20[1] = v1 + 4;
  v4 = v3[11];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v20 - v6;
  v8 = v3[14];
  v10 = v9[6];
  *&v11 = vdupq_laneq_s64(v10, 1).u64[0];
  v12.i64[0] = v4;
  *(&v11 + 1) = v8;
  v21 = v10;
  *v22 = vzip1q_s64(v12, v10);
  *&v22[16] = v11;
  v13 = type metadata accessor for VertexEdges(255, v22);
  v14 = sub_1DF22B1A0();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v20 - v16;
  v20[0] = v3[10];
  MEMORY[0x1EEE9AC00](v15);
  (*(v21.i64[1] + 64))(v4, v21.i64[1]);
  (*(v5 + 16))(v7, a1, v4);
  v18 = default argument 1 of VertexEdges.init(vertex:edges:)(v4, v21.i64[0]);
  (*(v5 + 32))(v17, v7, v4);
  *v22 = v4;
  *&v22[8] = v21;
  *&v22[24] = v8;
  *&v17[*(type metadata accessor for VertexEdges(0, v22) + 52)] = v18;
  (*(*(v13 - 8) + 56))(v17, 0, 1, v13);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  sub_1DF22ABE0();
  sub_1DF22AC10();
  return swift_endAccess();
}

uint64_t sub_1DF162DB0(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v43 = &v39 - v4;
  v6 = *(v5 + 80);
  v46 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v11;
  v13 = *(v12 + 88);
  v51 = *(v14 + 104);
  *&v15 = v13;
  v44 = v16;
  *(&v15 + 1) = v16;
  v53[1] = v51;
  v53[0] = v15;
  v17 = type metadata accessor for VertexEdges(255, v53);
  v18 = sub_1DF22B1A0();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - v23;
  swift_beginAccess();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v45 = a1;
  v49 = AssociatedConformanceWitness;
  v50 = v6;
  sub_1DF22AC00();

  v26 = *(*(v17 - 8) + 48);
  v27 = v26(v24, 1, v17);
  v28 = *(v19 + 8);
  v28(v24, v18);
  if (v27 == 1)
  {
    return 0;
  }

  swift_beginAccess();

  sub_1DF22AC00();

  v29 = v26(v22, 1, v17);
  v28(v22, v18);
  if (v29 == 1)
  {
    return 0;
  }

  v31 = v46;
  v32 = *(v46 + 16);
  v33 = v45;
  v32(v47, v45, v50);
  v40 = sub_1DF1623A4(v53);
  sub_1DF22ABE0();
  v34 = sub_1DF22ABF0();
  if (v26(v35, 1, v17))
  {
    v34(v52, 0);
    (*(v31 + 8))(v47, v50);
  }

  else
  {
    v36 = v41;
    v37 = v50;
    v32(v41, v33, v50);
    v38 = v42;
    v32(v42, v48, v37);
    (*(*(&v51 + 1) + 80))(v36, v38, v44);
    sub_1DF22AF50();
    sub_1DF22AF20();
    v34(v52, 0);
    (*(v31 + 8))(v47, v37);
  }

  (v40)(v53, 0);
  return 1;
}

uint64_t sub_1DF163334(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  v3 = *v2;
  v4 = *v2;
  v23 = *(*v2 + 112);
  v30 = v23;
  v5 = *(v3 + 88);
  v26 = *(v4 + 96);
  v28 = v5;
  v29 = v26;
  v6 = type metadata accessor for VertexEdges(255, &v28);
  v7 = sub_1DF22B1A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  swift_beginAccess();
  v15 = *(v3 + 80);
  swift_getAssociatedConformanceWitness();

  sub_1DF22AC00();

  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v16 = 0;
  }

  else
  {
    v17 = (*(v12 + 32))(v14, v11, v6);
    v27 = *&v14[*(v6 + 52)];
    MEMORY[0x1EEE9AC00](v17);
    *&v18 = v15;
    *(&v18 + 1) = v5;
    v19 = v26;
    *(&v22 - 3) = v18;
    *(&v22 - 2) = v19;
    v20 = v24;
    *(&v22 - 2) = v23;
    *(&v22 - 1) = v20;
    sub_1DF22AF50();

    swift_getWitnessTable();
    v16 = sub_1DF22AE00();

    (*(v12 + 8))(v14, v6);
  }

  return v16 & 1;
}

uint64_t sub_1DF163690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 72))(v11, v10);
  swift_getAssociatedConformanceWitness();
  v12 = sub_1DF22AC80();
  (*(v7 + 8))(v9, a3);
  return v12 & 1;
}

uint64_t sub_1DF1637C8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  result = sub_1DF22AF10();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v15 = 0;
    v16 = result - 1;
    v17 = 1;
    MEMORY[0x1EEE9AC00](result);
    v6 = *(v3 + 88);
    v10[2] = v4;
    v10[3] = v6;
    v14 = *(v3 + 96);
    v11 = v14;
    v12 = *(v3 + 112);
    v13 = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C960, &qword_1DF22CA60);
    v8 = sub_1DF164BEC(&qword_1ECE0C968, &qword_1ECE0C960, &qword_1DF22CA60, MEMORY[0x1E69E7C28]);
    return sub_1DF163A40(sub_1DF164BC4, v10, v7, v14, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  }

  return result;
}

uint64_t sub_1DF163930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v17 - v13;
  v15 = *v12;
  sub_1DF22AF70();
  result = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1DF22AF70();
    return (*(a7 + 80))(v14, v11, a5, a7);
  }

  return result;
}

uint64_t sub_1DF163A40(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = sub_1DF22B1A0();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1DF22ADF0();
  v63 = sub_1DF22B380();
  v58 = sub_1DF22B390();
  sub_1DF22B360();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1DF22ADE0();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1DF22B1B0();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_1DF22B370();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1DF22B1B0();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1DF22B370();
      sub_1DF22B1B0();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1DF164134@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v38 = a2;
  v36 = *v2;
  v43 = v2;
  v4 = *(v36 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v35 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - v10;
  sub_1DF22AF70();
  v47 = 1;
  v48 = a1;
  sub_1DF22AF50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C970, &qword_1DF22CA68);
  swift_getWitnessTable();
  sub_1DF164BEC(qword_1ECE0C978, &qword_1ECE0C970, &qword_1DF22CA68, MEMORY[0x1E69E6D18]);
  sub_1DF22AC70();
  v11 = v50;
  v12 = v51;
  v13 = v52;
  swift_unknownObjectRetain();
  v14 = sub_1DF22B1F0();
  swift_unknownObjectRelease();
  v15 = 0;
  v44 = v13 >> 1;
  v39 = v5 + 16;
  v40 = (v5 + 8);
  v42 = v5;
  v46 = (v5 + 32);
  v16 = v41;
  while (1)
  {
    v17 = v14 + v15;
    if (v14 + v15 == sub_1DF22B210())
    {
      goto LABEL_9;
    }

    result = sub_1DF22B200();
    if (v14 < v12 || v44 <= v17)
    {
      break;
    }

    (*(v42 + 16))(v16, v11 + *(v42 + 72) * v17, v4);
    v19 = v4;
    v20 = v45;
    if ((sub_1DF163334(v45, v16) & 1) == 0)
    {
      (*v40)(v16, v19);
      swift_unknownObjectRelease();
      v29 = *v46;
      v30 = v37;
      (*v46)(v37, v20, v19);
      v31 = v29;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v33 = swift_getAssociatedConformanceWitness();
      v34 = swift_getAssociatedConformanceWitness();
      v27 = v38;
      *v38 = 0;
      v49 = v19;
      v50 = AssociatedConformanceWitness;
      v51 = v33;
      v52 = v34;
      v28 = type metadata accessor for WalkResult(0, &v49);
      result = (v31)(&v27[*(v28 + 52)], v30, v19);
      goto LABEL_11;
    }

    (*v40)(v20, v19);
    (*v46)(v20, v16, v19);
    v21 = __OFADD__(v15++, 1);
    v4 = v19;
    if (v21)
    {
      __break(1u);
LABEL_9:
      swift_unknownObjectRelease();
      v22 = *v46;
      v23 = v37;
      (*v46)(v37, v45, v4);
      v24 = swift_getAssociatedConformanceWitness();
      v25 = swift_getAssociatedConformanceWitness();
      v26 = swift_getAssociatedConformanceWitness();
      v27 = v38;
      *v38 = 1;
      v49 = v4;
      v50 = v24;
      v51 = v25;
      v52 = v26;
      v28 = type metadata accessor for WalkResult(0, &v49);
      result = (v22)(&v27[*(v28 + 52)], v23, v4);
LABEL_11:
      *&v27[*(v28 + 56)] = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t Graph.deinit()
{

  return v0;
}

uint64_t Graph.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

unint64_t sub_1DF164698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF22AC20();

  return sub_1DF1646F4(a1, v6, a2, a3);
}

unint64_t sub_1DF1646F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1DF22AC80();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1DF16487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DF22AF10())
  {
    sub_1DF22B400();
    v13 = sub_1DF22B3F0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DF22AF10();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DF22AEF0())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DF22B330();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DF164698(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1DF164BEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF164C8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DF22AF50();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF164D18(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1DF164E54(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1DF165010(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF165098(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 1) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 > 0xFE)
    {
      return (*(v4 + 48))((a1 + v6 + 1) & ~v6);
    }

    v17 = *a1;
    v18 = v17 >= 2;
    v19 = (v17 + 2147483646) & 0x7FFFFFFF;
    if (v18)
    {
      return (v19 + 1);
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1DF1651E8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0xFE)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 1] & ~v8;

        return v18(v19);
      }

      else
      {
        *result = a2 + 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 1) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t StreamMessage.sourceId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t StreamMessage.sourceId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t StreamMessage.topic.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t StreamMessage.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t StreamMessage.data.getter()
{
  v1 = *(v0 + 40);
  sub_1DF16573C(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_1DF16573C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t StreamMessage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DF1657C8(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1DF1657C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t StreamMessage.init(timestamp:sourceId:topic:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

uint64_t sub_1DF165850()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x6369706F74;
  if (*v0 != 2)
  {
    v2 = 1635017060;
  }

  if (*v0)
  {
    v1 = 0x6449656372756F73;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DF1658C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF166DF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF1658EC(uint64_t a1)
{
  v2 = sub_1DF165BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF165928(uint64_t a1)
{
  v2 = sub_1DF165BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB00, &qword_1DF22CB30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v14[3] = v1[2];
  v14[4] = v7;
  v9 = v1[5];
  v14[1] = v1[4];
  v14[2] = v8;
  v14[0] = v9;
  v10 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF165BA0();
  sub_1DF22B740();
  LOBYTE(v15) = 0;
  v11 = v14[5];
  sub_1DF22B5D0();
  if (!v11)
  {
    v12 = v14[0];
    LOBYTE(v15) = 1;
    sub_1DF22B580();
    LOBYTE(v15) = 2;
    sub_1DF22B580();
    v15 = v12;
    v16 = v10;
    v17 = 3;
    sub_1DF16573C(v12, v10);
    sub_1DF165BF4();
    sub_1DF22B5C0();
    sub_1DF1657C8(v15, v16);
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF165BA0()
{
  result = qword_1ECE0CB08;
  if (!qword_1ECE0CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB08);
  }

  return result;
}

unint64_t sub_1DF165BF4()
{
  result = qword_1ECE0C738;
  if (!qword_1ECE0C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C738);
  }

  return result;
}

uint64_t StreamMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB10, &qword_1DF22CB38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF165BA0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  v9 = sub_1DF22B4F0();
  LOBYTE(v24) = 1;
  v10 = sub_1DF22B4A0();
  v12 = v11;
  v23 = v10;
  LOBYTE(v24) = 2;
  v21 = sub_1DF22B4A0();
  v22 = v13;
  v26 = 3;
  sub_1DF165F04();
  sub_1DF22B4E0();
  (*(v6 + 8))(v8, v5);
  v14 = v24;
  v15 = v25;
  v17 = v22;
  v16 = v23;
  *a2 = v9;
  a2[1] = v16;
  v18 = v21;
  a2[2] = v12;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v14;
  a2[6] = v15;

  sub_1DF16573C(v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_1DF1657C8(v14, v15);
}

unint64_t sub_1DF165F04()
{
  result = qword_1ECE0C730;
  if (!qword_1ECE0C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0C730);
  }

  return result;
}

uint64_t StreamServiceInfo.publishers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t StreamServiceInfo.subscribers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

LighthouseBackground::StreamServiceInfo __swiftcall StreamServiceInfo.init(publishers:subscribers:)(Swift::OpaquePointer publishers, Swift::OpaquePointer subscribers)
{
  v2->_rawValue = publishers._rawValue;
  v2[1]._rawValue = subscribers._rawValue;
  result.subscribers = subscribers;
  result.publishers = publishers;
  return result;
}

uint64_t sub_1DF166038()
{
  if (*v0)
  {
    return 0x6269726373627573;
  }

  else
  {
    return 0x656873696C627570;
  }
}

uint64_t sub_1DF166080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656873696C627570 && a2 == 0xEA00000000007372;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEB00000000737265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DF166168(uint64_t a1)
{
  v2 = sub_1DF1663A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF1661A4(uint64_t a1)
{
  v2 = sub_1DF1663A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamServiceInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB18, &unk_1DF22CB40);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1663A0();

  sub_1DF22B740();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  sub_1DF1663F4();
  sub_1DF22B5C0();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1DF22B5C0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1DF1663A0()
{
  result = qword_1ECE0CB20;
  if (!qword_1ECE0CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB20);
  }

  return result;
}

unint64_t sub_1DF1663F4()
{
  result = qword_1ECE0CB30;
  if (!qword_1ECE0CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF15FAB4(&qword_1ECE0C068, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB30);
  }

  return result;
}

uint64_t StreamServiceInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB38, &qword_1DF22CB58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1663A0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB28, &qword_1DF231270);
  v14 = 0;
  sub_1DF1666C0();
  sub_1DF22B4E0();
  v9 = v15;
  v14 = 1;
  sub_1DF22B4E0();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
  v11 = v13;
  *v13 = v9;
  v11[1] = v10;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1DF1666C0()
{
  result = qword_1ECE0CB40;
  if (!qword_1ECE0CB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE0CB28, &qword_1DF231270);
    sub_1DF15FAB4(&qword_1ECE0C058, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF1667D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF16681C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF166884(uint64_t *a1, int a2)
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

uint64_t sub_1DF1668CC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for StreamServiceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamServiceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreamMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF166BBC()
{
  result = qword_1ECE0CB48;
  if (!qword_1ECE0CB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB48);
  }

  return result;
}

unint64_t sub_1DF166C14()
{
  result = qword_1ECE0CB50;
  if (!qword_1ECE0CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB50);
  }

  return result;
}

unint64_t sub_1DF166C6C()
{
  result = qword_1ECE0CB58;
  if (!qword_1ECE0CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB58);
  }

  return result;
}

unint64_t sub_1DF166CC4()
{
  result = qword_1ECE0CB60;
  if (!qword_1ECE0CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB60);
  }

  return result;
}

unint64_t sub_1DF166D1C()
{
  result = qword_1ECE0CB68;
  if (!qword_1ECE0CB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB68);
  }

  return result;
}

unint64_t sub_1DF166D74()
{
  result = qword_1ECE0CB70;
  if (!qword_1ECE0CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB70);
  }

  return result;
}

uint64_t sub_1DF166DC8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1DF166DF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656372756F73 && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DF166F60()
{
  v0 = sub_1DF22A8C0();
  __swift_allocate_value_buffer(v0, qword_1ED8E92C0);
  __swift_project_value_buffer(v0, qword_1ED8E92C0);
  return sub_1DF22A8B0();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1DF167040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    sub_1DF175524(a2, a3, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v9);

    return sub_1DF16184C(v9, &qword_1ECE0CBE8, &qword_1DF22CFC0);
  }

  else
  {
    sub_1DF17A710(a1, v12, &qword_1ECE0CBB0, &qword_1DF22CF88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DF1A7654(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DF167238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    sub_1DF175524(a2, a3, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v9);

    return sub_1DF16184C(v9, &qword_1ECE0CBE0, &qword_1DF22CFB8);
  }

  else
  {
    sub_1DF17A710(a1, v12, &qword_1ECE0CBA8, &qword_1DF22CF80);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DF1A77F8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DF167430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD70, &qword_1DF2300E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD60, &qword_1DF22FFC0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CD70, &qword_1DF2300E0);
    sub_1DF175524(a2, a3, &qword_1ECE0CD60, &qword_1DF22FFC0, &qword_1ECE0CD68, &unk_1DF22D760, v9);

    return sub_1DF16184C(v9, &qword_1ECE0CD70, &qword_1DF2300E0);
  }

  else
  {
    sub_1DF17A710(a1, v12, &qword_1ECE0CD60, &qword_1DF22FFC0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DF1A799C(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DF167628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD50, &unk_1DF22D750);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_1DF22AA80();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CD50, &unk_1DF22D750);
    sub_1DF1756BC(a2, a3, v9);

    return sub_1DF16184C(v9, &qword_1ECE0CD50, &unk_1DF22D750);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DF1A7CB8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1DF167800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD48, &qword_1DF2387E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1DF16184C(a1, &qword_1ECE0CD48, &qword_1DF2387E0);
    sub_1DF17582C(a2, a3, v9);

    return sub_1DF16184C(v9, &qword_1ECE0CD48, &qword_1DF2387E0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1DF1A7E38(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

LighthouseBackground::KVDatastoreError_optional __swiftcall KVDatastoreError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t KVDatastoreError.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4764696C61766E69;
  v3 = 0x4B64696C61766E69;
  v4 = 0x5664696C61766E69;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF167B10()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF167C14(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF167D04(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

void sub_1DF167E10(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000070756F72;
  v4 = 0x4764696C61766E69;
  v5 = 0xEA00000000007965;
  v6 = 0x4B64696C61766E69;
  v7 = 0xEC00000065756C61;
  v8 = 0x5664696C61766E69;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001DF23CF10;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DF23CED0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t KVDatastoreInfo.maxExpiration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1DF1680F0()
{
  v1 = *v0;
  v2 = 0x657A695378616DLL;
  v3 = 0x657A69537379656BLL;
  if (v1 != 5)
  {
    v3 = 0x69537365756C6176;
  }

  v4 = 0x43746E6572727563;
  if (v1 != 3)
  {
    v4 = 0x53746E6572727563;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746E756F4378616DLL;
  if (v1 != 1)
  {
    v5 = 0x726970784578616DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DF1681EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF17A1A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF168220(uint64_t a1)
{
  v2 = sub_1DF1684F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF16825C(uint64_t a1)
{
  v2 = sub_1DF1684F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KVDatastoreInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB78, &qword_1DF22CF60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v7 = v1[1];
  v8 = v1[3];
  v16 = v1[2];
  v17 = v7;
  v9 = v1[5];
  v14[3] = v1[4];
  v15 = v8;
  v14[1] = v1[6];
  v14[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1684F8();
  sub_1DF22B740();
  LOBYTE(v19) = 0;
  v10 = v18;
  sub_1DF22B5B0();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = v15;
  v11 = v16;
  LOBYTE(v19) = 1;
  sub_1DF22B5B0();
  v19 = v11;
  v20 = v12;
  v21 = 2;
  sub_1DF22B5C0();
  LOBYTE(v19) = 3;
  sub_1DF22B5B0();
  LOBYTE(v19) = 4;
  sub_1DF22B5B0();
  LOBYTE(v19) = 5;
  sub_1DF22B5B0();
  LOBYTE(v19) = 6;
  sub_1DF22B5B0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF1684F8()
{
  result = qword_1ECE0CB80;
  if (!qword_1ECE0CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB80);
  }

  return result;
}

uint64_t KVDatastoreInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB88, &qword_1DF22CF68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF1684F8();
  sub_1DF22B730();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    v9 = sub_1DF22B4D0();
    LOBYTE(v25) = 1;
    v24 = sub_1DF22B4D0();
    v27 = 2;
    sub_1DF22B4E0();
    v10 = v25;
    v11 = v26;
    LOBYTE(v25) = 3;
    v12 = sub_1DF22B4D0();
    v21 = v10;
    v22 = v11;
    v23 = v12;
    LOBYTE(v25) = 4;
    v20 = sub_1DF22B4D0();
    LOBYTE(v25) = 5;
    v19 = sub_1DF22B4D0();
    LOBYTE(v25) = 6;
    v14 = sub_1DF22B4D0();
    (*(v6 + 8))(v8, v5);
    v15 = v24;
    *a2 = v9;
    a2[1] = v15;
    v16 = v22;
    a2[2] = v21;
    a2[3] = v16;
    v17 = v19;
    v18 = v20;
    a2[4] = v23;
    a2[5] = v18;
    a2[6] = v17;
    a2[7] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t KVDatastore.MetadataType.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DF22A800();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t KVDatastore.MetadataType.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KVDatastore.MetadataType(0) + 20);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for KVDatastore.MetadataType(uint64_t a1)
{
  result = qword_1ECE0C6D8;
  if (!qword_1ECE0C6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF168950(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = type metadata accessor for KVDatastore.MetadataType(0);
  v14 = (a2 + *(v13 + 24));
  *v14 = v12;
  v14[1] = v11;
  sub_1DF22A7D0();
  sub_1DF22B750();
  sub_1DF22A760();
  (*(v5 + 8))(v8, v4);
  return (*(v5 + 40))(a2 + *(v13 + 20), v10, v4);
}

uint64_t KVDatastore.MetadataType.timeToLive.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DF22A800();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - v11;
  v13 = type metadata accessor for KVDatastore.MetadataType(0);
  v14 = (v3 + *(v13 + 24));
  *v14 = a1;
  v14[1] = a2;
  sub_1DF22A7D0();
  sub_1DF22B750();
  sub_1DF22A760();
  (*(v7 + 8))(v10, v6);
  return (*(v7 + 40))(v3 + *(v13 + 20), v12, v6);
}

void (*KVDatastore.MetadataType.timeToLive.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1DF22A800();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  v10 = type metadata accessor for KVDatastore.MetadataType(0);
  v5[5] = v10;
  *(v5 + 12) = *(v10 + 24);
  return sub_1DF168D08;
}

void sub_1DF168D08(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[3];
    v4 = v2[4];
  }

  else
  {
    v4 = v2[4];
    v5 = v2[5];
    v6 = v2[2];
    v3 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    sub_1DF22A7D0();
    sub_1DF22B750();
    sub_1DF22A760();
    (*(v6 + 8))(v3, v7);
    (*(v6 + 40))(v8 + *(v5 + 20), v4, v7);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t KVDatastore.MetadataType.init(timeToLive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (a3 + *(type metadata accessor for KVDatastore.MetadataType(0) + 24));
  sub_1DF22A7D0();
  sub_1DF22B750();
  result = sub_1DF22A760();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_1DF168E80()
{
  v1 = 0x6974617269707865;
  if (*v0 != 1)
  {
    v1 = 0x694C6F54656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F697461657263;
  }
}

uint64_t sub_1DF168EF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF17A404(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF168F1C(uint64_t a1)
{
  v2 = sub_1DF169194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF168F58(uint64_t a1)
{
  v2 = sub_1DF169194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KVDatastore.MetadataType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CB90, &qword_1DF22CF70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF169194();
  sub_1DF22B740();
  LOBYTE(v11) = 0;
  sub_1DF22A800();
  sub_1DF1792F4(&qword_1ECE0C728, MEMORY[0x1E6969538]);
  sub_1DF22B5C0();
  if (!v2)
  {
    v9 = type metadata accessor for KVDatastore.MetadataType(0);
    LOBYTE(v11) = 1;
    sub_1DF22B5C0();
    v11 = *(v3 + *(v9 + 24));
    v12 = 2;
    sub_1DF22B5C0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DF169194()
{
  result = qword_1ECE0CB98;
  if (!qword_1ECE0CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CB98);
  }

  return result;
}

uint64_t KVDatastore.MetadataType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v30 = sub_1DF22A800();
  v28 = *(v30 - 8);
  v4 = MEMORY[0x1EEE9AC00](v30);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA0, &qword_1DF22CF78);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for KVDatastore.MetadataType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF169194();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = v13;
  v26 = a1;
  v24 = v11;
  LOBYTE(v33) = 0;
  sub_1DF1792F4(&qword_1ED8E6BE0, MEMORY[0x1E6969558]);
  v15 = v29;
  v14 = v30;
  v16 = v32;
  sub_1DF22B4E0();
  v29 = *(v28 + 32);
  (v29)(v25, v15, v14);
  LOBYTE(v33) = 1;
  v17 = v6;
  sub_1DF22B4E0();
  v18 = v25;
  (v29)(&v25[*(v24 + 20)], v17, v14);
  v34 = 2;
  sub_1DF22B4E0();
  v19 = v18;
  v20 = v26;
  v21 = *(v24 + 24);
  (*(v31 + 8))(v10, v16);
  *(v19 + v21) = v33;
  sub_1DF17A5D8(v19, v27, type metadata accessor for KVDatastore.MetadataType);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  return sub_1DF169620(v19);
}

uint64_t sub_1DF169620(uint64_t a1)
{
  v2 = type metadata accessor for KVDatastore.MetadataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

LighthouseBackground::KVDatastore::KeyCategoryType_optional __swiftcall KVDatastore.KeyCategoryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF22B420();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t KVDatastore.KeyCategoryType.rawValue.getter()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DF169740(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1953720684;
  }

  else
  {
    v2 = 1635017060;
  }

  if (*a2)
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1DF22B620();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1DF1697B8()
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF169820(uint64_t a1)
{
  sub_1DF22AD20();
}

uint64_t sub_1DF16986C(uint64_t a1)
{
  sub_1DF22B6C0();
  sub_1DF22AD20();

  return sub_1DF22B6F0();
}

uint64_t sub_1DF1698D0@<X0>(char *a2@<X8>)
{
  v3 = sub_1DF22B420();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1DF169930(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 1953720684;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t KVDatastore.__allocating_init(maxCount:maxSize:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_1DF22B770();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 144) = xmmword_1DF22CF20;
    *(v4 + 160) = xmmword_1DF22CF30;
    *(v4 + 176) = 16;
    *(v4 + 128) = a1;
    *(v4 + 136) = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    v7 = MEMORY[0x1E69E6158];
    v8 = MEMORY[0x1E69E6168];
    *(v4 + 112) = MEMORY[0x1E12CF690](a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    v9 = *(v4 + 128);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    *(v4 + 120) = MEMORY[0x1E12CF690](v9, v7, v10, v8);
    return v4;
  }

  return result;
}

uint64_t KVDatastore.init(maxCount:maxSize:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  result = sub_1DF22B770();
  if (result)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 144) = xmmword_1DF22CF20;
    *(v2 + 160) = xmmword_1DF22CF30;
    *(v2 + 176) = 16;
    *(v2 + 128) = a1;
    *(v2 + 136) = a2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    v7 = MEMORY[0x1E69E6158];
    v8 = MEMORY[0x1E69E6168];
    *(v2 + 112) = MEMORY[0x1E12CF690](a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    v9 = *(v2 + 128);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    *(v2 + 120) = MEMORY[0x1E12CF690](v9, v7, v10, v8);
    return v2;
  }

  return result;
}

uint64_t sub_1DF169C44()
{
  swift_beginAccess();
  v1 = *(*(v0 + 112) + 16);
  swift_beginAccess();
  v2 = *(*(v0 + 120) + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1DF169CAC()
{
  swift_beginAccess();
  if (*(*(v0 + 112) + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return *(*(v0 + 120) + 16) == 0;
}

void *sub_1DF169D14()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1DF1751D0(*(v1 + 16), 0);
    v4 = sub_1DF178EE4(&v12, v3 + 4, v2, v1);
    v5 = v12;

    sub_1DF178EDC(v5);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  swift_beginAccess();
  v6 = *(v0 + 120);
  v7 = *(v6 + 16);
  if (!v7)
  {
LABEL_8:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v8 = sub_1DF1751D0(*(v6 + 16), 0);
  v9 = sub_1DF178EE4(&v12, v8 + 4, v7, v6);
  v10 = v12;

  sub_1DF178EDC(v10);
  if (v9 != v7)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  v12 = v3;
  sub_1DF1742D4(v8);
  return v12;
}

uint64_t sub_1DF169E7C()
{
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v94 - v1;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v2 = MEMORY[0x1EEE9AC00](v99);
  v98 = (&v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v97 = (&v94 - v5);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v96 = (&v94 - v7);
  MEMORY[0x1EEE9AC00](v6);
  v116 = (&v94 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v109 = &v94 - v10;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v11 = MEMORY[0x1EEE9AC00](v108);
  v107 = (&v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v11);
  v106 = (&v94 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v105 = (&v94 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v117 = (&v94 - v17);
  swift_beginAccess();
  v95 = v0;

  v19 = sub_1DF176F90(v18, sub_1DF177748, sub_1DF177748);
  v94 = 0;

  v20 = v19 + 64;
  v21 = 1 << v19[32];
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 8);
  v24 = (v21 + 63) >> 6;
  i = v19;

  v26 = 0;
  v104 = v19 + 64;
  v103 = v24;
  v118 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *&v20[8 * v27];
    ++v26;
    if (v23)
    {
      v26 = v27;
      do
      {
LABEL_8:
        v28 = __clz(__rbit64(v23)) | (v26 << 6);
        v29 = (*(i + 6) + 16 * v28);
        v30 = *v29;
        v31 = v29[1];
        v32 = v108;
        v33 = v117;
        v34 = v117 + *(v108 + 48);
        sub_1DF17A6A8(*(i + 7) + *(v110 + 72) * v28, v34, &qword_1ECE0CBA8, &qword_1DF22CF80);
        *v33 = v30;
        v33[1] = v31;
        v35 = v31;
        v36 = v111;
        v37 = (v34 + *(v111 + 48));
        v39 = v37[1];
        v113 = *v37;
        v38 = v113;
        v114 = v39;
        v40 = v34;
        v41 = v109;
        sub_1DF17A5D8(v40, v109, type metadata accessor for KVDatastore.MetadataType);
        v42 = (v41 + *(v36 + 48));
        *v42 = v38;
        v42[1] = v39;
        v43 = v105;
        *v105 = v30;
        *(v43 + 8) = v35;
        sub_1DF17A710(v41, v43 + *(v32 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
        v44 = v106;
        sub_1DF17A6A8(v43, v106, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v45 = *v44;
        v46 = v44[1];
        v47 = *(v32 + 48);
        v48 = v44 + v47;
        v49 = *(v36 + 48);
        v50 = (v44 + v47 + v49);
        v52 = *v50;
        v51 = v50[1];
        v53 = v107;
        v54 = v107 + v47;
        v115 = v45;
        *v107 = v45;
        *(v53 + 8) = v46;
        v55 = (v53 + v47 + v49);
        sub_1DF17A640(v48, v54, type metadata accessor for KVDatastore.MetadataType);
        *v55 = v52;
        v55[1] = v51;
        swift_bridgeObjectRetain_n();

        sub_1DF16573C(v113, v114);
        sub_1DF16184C(v53, &qword_1ECE0CBC0, &qword_1DF22CF98);
        sub_1DF16184C(v43, &qword_1ECE0CBC0, &qword_1DF22CF98);
        sub_1DF16184C(v117, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v56 = v118;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1DF174610(0, *(v56 + 16) + 1, 1, v56);
          v56 = result;
        }

        v58 = *(v56 + 16);
        v57 = *(v56 + 24);
        v24 = v103;
        if (v58 >= v57 >> 1)
        {
          result = sub_1DF174610((v57 > 1), v58 + 1, 1, v56);
          v56 = result;
        }

        v23 &= v23 - 1;
        *(v56 + 16) = v58 + 1;
        v59 = v56 + 16 * v58;
        *(v59 + 32) = v115;
        *(v59 + 40) = v46;
        v20 = v104;
        v118 = v56;
      }

      while (v23);
    }
  }

  swift_beginAccess();

  v61 = sub_1DF176F90(v60, sub_1DF1772C8, sub_1DF1772C8);

  v62 = v61 + 64;
  v63 = 1 << v61[32];
  v64 = -1;
  if (v63 < 64)
  {
    v64 = ~(-1 << v63);
  }

  v65 = v64 & *(v61 + 8);
  v66 = (v63 + 63) >> 6;
  v113 = v61;

  v67 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  v111 = v66;
  for (i = v62; v65; v62 = i)
  {
    v117 = v68;
LABEL_22:
    v70 = __clz(__rbit64(v65)) | (v67 << 6);
    v71 = (v113[6] + 16 * v70);
    v72 = *v71;
    v73 = v71[1];
    v74 = v99;
    v75 = v116;
    v76 = v116 + *(v99 + 48);
    sub_1DF17A6A8(v113[7] + *(v101 + 72) * v70, v76, &qword_1ECE0CBB0, &qword_1DF22CF88);
    *v75 = v72;
    v75[1] = v73;
    v77 = v102;
    v114 = *(v76 + *(v102 + 48));
    v78 = v114;
    v79 = v100;
    sub_1DF17A5D8(v76, v100, type metadata accessor for KVDatastore.MetadataType);
    *(v79 + *(v77 + 48)) = v78;
    v80 = v96;
    *v96 = v72;
    *(v80 + 8) = v73;
    sub_1DF17A710(v79, v80 + *(v74 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
    v81 = v97;
    sub_1DF17A6A8(v80, v97, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v82 = *v81;
    v83 = v81[1];
    v84 = *(v74 + 48);
    v85 = v81 + v84;
    v86 = *(v77 + 48);
    v87 = *(v81 + v84 + v86);
    v88 = v98;
    v89 = v98 + v84;
    v115 = v82;
    *v98 = v82;
    *(v88 + 8) = v83;
    v90 = v83;
    sub_1DF17A640(v85, v88 + v84, type metadata accessor for KVDatastore.MetadataType);
    *&v89[v86] = v87;
    swift_bridgeObjectRetain_n();

    sub_1DF16184C(v88, &qword_1ECE0CBB8, &qword_1DF22CF90);
    sub_1DF16184C(v80, &qword_1ECE0CBB8, &qword_1DF22CF90);
    sub_1DF16184C(v116, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v68 = v117;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1DF174610(0, *(v68 + 16) + 1, 1, v68);
      v68 = result;
    }

    v92 = *(v68 + 16);
    v91 = *(v68 + 24);
    v66 = v111;
    if (v92 >= v91 >> 1)
    {
      result = sub_1DF174610((v91 > 1), v92 + 1, 1, v68);
      v68 = result;
    }

    v65 &= v65 - 1;
    *(v68 + 16) = v92 + 1;
    v93 = v68 + 16 * v92;
    *(v93 + 32) = v115;
    *(v93 + 40) = v90;
  }

  while (1)
  {
    v69 = v67 + 1;
    if (__OFADD__(v67, 1))
    {
      break;
    }

    if (v69 >= v66)
    {

      v119 = v118;
      sub_1DF1742D4(v68);
      return v119;
    }

    v65 = *&v62[8 * v69];
    ++v67;
    if (v65)
    {
      v117 = v68;
      v67 = v69;
      goto LABEL_22;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1DF16A784()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 112) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_9:
    v7 &= v7 - 1;

    v13 = sub_1DF22AD30();

    v14 = __OFADD__(v11, v13);
    v11 += v13;
    if (v14)
    {
      __break(1u);
LABEL_12:

      swift_beginAccess();
      v15 = *(v0 + 120);
      v18 = *(v15 + 64);
      v17 = v15 + 64;
      v16 = v18;
      v19 = 1 << *(*(v0 + 120) + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & v16;
      v22 = (v19 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v23 = 0;
      v24 = 0;
      do
      {
        if (!v21)
        {
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_26;
            }

            if (v25 >= v22)
            {
              goto LABEL_23;
            }

            v21 = *(v17 + 8 * v25);
            ++v23;
            if (v21)
            {
              v23 = v25;
              break;
            }
          }
        }

        v21 &= v21 - 1;

        v26 = sub_1DF22AD30();

        v14 = __OFADD__(v24, v26);
        v24 += v26;
      }

      while (!v14);
      __break(1u);
LABEL_23:

      result = v11 + v24;
      if (__OFADD__(v11, v24))
      {
        goto LABEL_27;
      }

      return result;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_12;
    }

    v7 = *(v3 + 8 * v12);
    ++v10;
    if (v7)
    {
      v10 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DF16A9AC()
{
  swift_beginAccess();
  v1 = *(*(v0 + 112) + 16);
  v2 = type metadata accessor for KVDatastore.MetadataType(0);
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 64);
  v6 = v1 * v5;
  if ((v1 * v5) >> 64 != (v1 * v5) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = swift_beginAccess();
  v7 = *(*(v0 + 120) + 16);
  v8 = v7 * v5;
  if ((v7 * v5) >> 64 != (v7 * v5) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v6 + v8;
  if (__OFADD__(v6, v8))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF16AA60()
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v76 = *(v74 - 8);
  v1 = MEMORY[0x1EEE9AC00](v74);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v63 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v63 - v12;
  swift_beginAccess();
  v64 = v0;
  v13 = *(v0 + 112);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v72 = v13;
  result = swift_bridgeObjectRetain_n();
  v20 = 0;
  v73 = 0;
  if (!v17)
  {
    goto LABEL_5;
  }

  do
  {
    v21 = v20;
LABEL_8:
    v22 = v68;
    sub_1DF17A6A8(*(v72 + 56) + *(v69 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v68, &qword_1ECE0CBA8, &qword_1DF22CF80);
    sub_1DF17A710(v22, v11, &qword_1ECE0CBA8, &qword_1DF22CF80);
    v23 = &v11[*(v70 + 48)];
    v25 = *v23;
    v24 = v23[1];
    v26 = v24 >> 62;
    if ((v24 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v28 = *(v25 + 16);
        v65 = *(v25 + 24);
        result = sub_1DF1657C8(v25, v24);
        v27 = v65 - v28;
        if (__OFSUB__(v65, v28))
        {
          goto LABEL_63;
        }
      }

      else
      {
        result = sub_1DF1657C8(v25, v24);
        v27 = 0;
      }
    }

    else if (v26)
    {
      result = sub_1DF1657C8(v25, v24);
      LODWORD(v27) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_64;
      }

      v27 = v27;
    }

    else
    {
      result = sub_1DF1657C8(v25, v24);
      v27 = BYTE6(v24);
    }

    v29 = v73 + v27;
    if (__OFADD__(v73, v27))
    {
      goto LABEL_61;
    }

    v17 &= v17 - 1;
    result = sub_1DF169620(v11);
    v20 = v21;
    v73 = v29;
  }

  while (v17);
  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_59;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  v30 = v64;
  swift_beginAccess();
  v31 = *(v30 + 120);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v72 = v34 & *(v31 + 64);
  v35 = (v33 + 63) >> 6;
  v69 = v31;
  result = swift_bridgeObjectRetain_n();
  v36 = 0;
  v37 = 0;
  v68 = v32;
  v65 = v35;
  v38 = v72;
  if (!v72)
  {
    while (1)
    {
LABEL_25:
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_60;
      }

      if (v39 >= v35)
      {
        break;
      }

      v38 = *(v32 + 8 * v39);
      ++v36;
      if (v38)
      {
        v70 = v37;
        goto LABEL_29;
      }
    }

    result = v73 + v37;
    if (__OFADD__(v73, v37))
    {
      goto LABEL_65;
    }

    return result;
  }

  while (1)
  {
    v70 = v37;
    v39 = v36;
LABEL_29:
    v72 = (v38 - 1) & v38;
    v40 = v71;
    sub_1DF17A6A8(*(v69 + 56) + *(v66 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v71, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v41 = *(v40 + *(v67 + 48));
    v42 = v41[4];
    if (v41[2] >= v41[3] + v42)
    {
      v43 = v41[3] + v42;
    }

    else
    {
      v43 = v41[2];
    }

    v44 = (*(v76 + 80) + 40) & ~*(v76 + 80);
    v77 = v41;
    v78 = v42;
    v79 = v43;

    v45 = 0;
    if (v42 != v43)
    {
      goto LABEL_35;
    }

LABEL_33:
    v46 = sub_1DF1791A4();
    v47 = v77;
    if (v46)
    {
      break;
    }

    v37 = v70 + v45;
    if (__OFADD__(v70, v45))
    {
      goto LABEL_62;
    }

    result = sub_1DF16184C(v71, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v36 = v39;
    v32 = v68;
    v35 = v65;
    v38 = v72;
    if (!v72)
    {
      goto LABEL_25;
    }
  }

  while (1)
  {
    v48 = v78;
    v49 = ++v78;
    result = sub_1DF17A6A8(v47 + v44 + *(v76 + 72) * v48, v5, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v50 = __OFADD__(v45, v75);
    v51 = v45 + v75;
    if (v50)
    {
      break;
    }

    sub_1DF17A6A8(v5, v3, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v52 = &v3[*(v74 + 48)];
    v53 = *v52;
    v54 = v52[1];
    v55 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      if (v55 == 2)
      {
        v59 = *(v53 + 16);
        v58 = *(v53 + 24);
        result = sub_1DF1657C8(v53, v54);
        v57 = v58 - v59;
        if (__OFSUB__(v58, v59))
        {
          goto LABEL_58;
        }
      }

      else
      {
        result = sub_1DF1657C8(v53, v54);
        v57 = 0;
      }
    }

    else if (v55)
    {
      v60 = HIDWORD(v53);
      v61 = v53;
      result = sub_1DF1657C8(v53, v54);
      LODWORD(v57) = v60 - v61;
      if (__OFSUB__(v60, v61))
      {
        goto LABEL_57;
      }

      v57 = v57;
    }

    else
    {
      v56 = BYTE6(v54);
      result = sub_1DF1657C8(v53, v54);
      v57 = v56;
    }

    v50 = __OFADD__(v51, v57);
    v45 = v51 + v57;
    if (v50)
    {
      goto LABEL_56;
    }

    v62 = sub_1DF22A800();
    (*(*(v62 - 8) + 8))(v3, v62);
    sub_1DF16184C(v5, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    if (v49 == v79)
    {
      goto LABEL_33;
    }

LABEL_35:
    v47 = v77;
  }

  __break(1u);
LABEL_56:
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
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1DF16B134()
{
  v1 = sub_1DF16A784();
  swift_beginAccess();
  v2 = *(*(v0 + 112) + 16);
  v3 = type metadata accessor for KVDatastore.MetadataType(0);
  v5 = *(v3 - 8);
  result = v3 - 8;
  v6 = *(v5 + 64);
  v7 = v2 * v6;
  if ((v2 * v6) >> 64 != (v2 * v6) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = swift_beginAccess();
  v8 = *(*(v0 + 120) + 16);
  v9 = v8 * v6;
  if ((v8 * v6) >> 64 != (v8 * v6) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = __OFADD__(v7, v9);
  v11 = v7 + v9;
  if (v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = __OFADD__(v1, v11);
  v12 = v1 + v11;
  if (v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = sub_1DF16AA60();
  v10 = __OFADD__(v12, v13);
  result = v12 + v13;
  if (v10)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF16B214()
{
  v77 = sub_1DF22A800();
  v1 = *(v77 - 8);
  v2 = MEMORY[0x1EEE9AC00](v77);
  v76 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v75 = &v63 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v74 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v73 = &v63 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v72 = &v63 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v63 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v63 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v63 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBD0, &qword_1DF22CFA8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = (&v63 - v21);
  swift_beginAccess();
  v23 = *(v0 + 112);
  v24 = (v23 + 64);
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  if (v27)
  {
    v70 = v18;
    v80 = v1;
    v64 = v22;
    v65 = v6;
    v79 = v5;
    v28 = 0;
    v29 = __clz(__rbit64(v27));
    v30 = (v27 - 1) & v27;
    v78 = (v25 + 63) >> 6;
LABEL_9:
    v33 = *(v23 + 56);
    v34 = (*(v23 + 48) + 16 * v29);
    v35 = v34[1];
    v68 = *v34;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    v69 = *(*(v81 - 8) + 72);
    v36 = v33 + v69 * v29;
    v37 = v70;
    sub_1DF17A6A8(v36, v70 + *(v79 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
    *v37 = v68;
    v37[1] = v35;
    sub_1DF17A710(v37, v82, &qword_1ECE0CBC0, &qword_1DF22CF98);
    v67 = (v80 + 8);
    v68 = (v80 + 16);
    swift_bridgeObjectRetain_n();

    v70 = (v23 + 64);
    v71 = v23;
    v66 = v15;
    while (v30)
    {
      v39 = v28;
LABEL_18:
      v41 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v42 = v41 | (v39 << 6);
      v43 = (*(v23 + 48) + 16 * v42);
      v45 = *v43;
      v44 = v43[1];
      v46 = *(v23 + 56) + v42 * v69;
      v47 = v79;
      v48 = v72;
      sub_1DF17A6A8(v46, &v72[*(v79 + 48)], &qword_1ECE0CBA8, &qword_1DF22CF80);
      *v48 = v45;
      v48[1] = v44;
      sub_1DF17A710(v48, v15, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v49 = v73;
      sub_1DF17A6A8(v15, v73, &qword_1ECE0CBC0, &qword_1DF22CF98);

      v50 = v49 + *(v47 + 48);
      sub_1DF1657C8(*(v50 + *(v81 + 48)), *(v50 + *(v81 + 48) + 8));
      v80 = type metadata accessor for KVDatastore.MetadataType(0);
      v51 = *v68;
      v52 = v75;
      v53 = v77;
      (*v68)(v75, v50 + *(v80 + 20), v77);
      sub_1DF169620(v50);
      v54 = v74;
      sub_1DF17A6A8(v82, v74, &qword_1ECE0CBC0, &qword_1DF22CF98);

      v55 = v54 + *(v47 + 48);
      sub_1DF1657C8(*(v55 + *(v81 + 48)), *(v55 + *(v81 + 48) + 8));
      v56 = v76;
      v51(v76, v55 + *(v80 + 20), v53);
      sub_1DF169620(v55);
      LOBYTE(v55) = sub_1DF22A790();
      v57 = *v67;
      (*v67)(v56, v53);
      v57(v52, v53);
      if (v55)
      {
        v58 = v82;
        sub_1DF16184C(v82, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v15 = v66;
        result = sub_1DF17A710(v66, v58, &qword_1ECE0CBC0, &qword_1DF22CF98);
      }

      else
      {
        v15 = v66;
        result = sub_1DF16184C(v66, &qword_1ECE0CBC0, &qword_1DF22CF98);
      }

      v28 = v39;
      v24 = v70;
      v23 = v71;
    }

    v40 = v82;
    while (1)
    {
      v39 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        return result;
      }

      if (v39 >= v78)
      {
        break;
      }

      v30 = v24[v39];
      ++v28;
      if (v30)
      {
        goto LABEL_18;
      }
    }

    v22 = v64;
    sub_1DF17A710(v40, v64, &qword_1ECE0CBC0, &qword_1DF22CF98);
    v59 = v65;
    v60 = v79;
    (*(v65 + 56))(v22, 0, 1, v79);

    if ((*(v59 + 48))(v22, 1, v60) == 1)
    {
      goto LABEL_23;
    }

    v61 = *v22;
    v62 = v22 + *(v60 + 48);
    sub_1DF1657C8(*(v62 + *(v81 + 48)), *(v62 + *(v81 + 48) + 8));
    sub_1DF169620(v62);
  }

  else
  {
    v31 = 0;
    while (((v25 + 63) >> 6) - 1 != v31)
    {
      v28 = v31 + 1;
      v32 = *(v23 + 72 + 8 * v31);
      v27 -= 64;
      ++v31;
      if (v32)
      {
        v70 = v18;
        v80 = v1;
        v78 = (v25 + 63) >> 6;
        v64 = v22;
        v65 = v6;
        v79 = v5;
        v30 = (v32 - 1) & v32;
        v29 = __clz(__rbit64(v32)) - v27;
        goto LABEL_9;
      }
    }

    (*(v6 + 56))(v22, 1, 1, v5);
LABEL_23:
    sub_1DF16184C(v22, &qword_1ECE0CBD0, &qword_1DF22CFA8);
    return 0;
  }

  return v61;
}

uint64_t sub_1DF16B950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v43 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v48 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBD8, &qword_1DF22CFB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = (&v43 - v13);
  swift_beginAccess();
  v14 = *(v0 + 120);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  if (v17)
  {
    v47 = v8;
    v44 = v2;
    v51 = v1;
    v18 = 0;
    v19 = __clz(__rbit64(v17));
    v20 = (v17 - 1) & v17;
    v21 = (v15 + 63) >> 6;
LABEL_9:
    v24 = *(v14 + 56);
    v25 = (*(v14 + 48) + 16 * v19);
    v26 = *v25;
    v45 = v25[1];
    v46 = v26;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    v50 = *(*(v43 - 8) + 72);
    v27 = v24 + v50 * v19;
    v28 = v48;
    sub_1DF17A6A8(v27, &v48[*(v51 + 48)], &qword_1ECE0CBB0, &qword_1DF22CF88);
    v29 = v45;
    *v28 = v46;
    v28[1] = v29;
    sub_1DF17A710(v28, v52, &qword_1ECE0CBB8, &qword_1DF22CF90);
    swift_bridgeObjectRetain_n();

    v30 = v47;
    if (v20)
    {
      goto LABEL_12;
    }

    while (1)
    {
LABEL_13:
      v31 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);

        sub_1DF16184C(v30, &qword_1ECE0CBB8, &qword_1DF22CF90);
        result = sub_1DF16184C(v52, &qword_1ECE0CBB8, &qword_1DF22CF90);
        __break(1u);
        return result;
      }

      if (v31 >= v21)
      {
        break;
      }

      v20 = *(v14 + 64 + 8 * v31);
      ++v18;
      if (v20)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v20)) | (v31 << 6);
          v33 = (*(v14 + 48) + 16 * v32);
          v35 = *v33;
          v34 = v33[1];
          sub_1DF17A6A8(*(v14 + 56) + v32 * v50, v5 + *(v51 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
          *v5 = v35;
          v5[1] = v34;
          sub_1DF17A710(v5, v30, &qword_1ECE0CBB8, &qword_1DF22CF90);

          v20 &= v20 - 1;
          if (sub_1DF16BE9C(v30, v52))
          {
            v36 = v52;
            sub_1DF16184C(v52, &qword_1ECE0CBB8, &qword_1DF22CF90);
            sub_1DF17A710(v30, v36, &qword_1ECE0CBB8, &qword_1DF22CF90);
            v18 = v31;
            if (!v20)
            {
              goto LABEL_13;
            }
          }

          else
          {
            sub_1DF16184C(v30, &qword_1ECE0CBB8, &qword_1DF22CF90);
            v18 = v31;
            if (!v20)
            {
              goto LABEL_13;
            }
          }

LABEL_12:
          v31 = v18;
        }
      }
    }

    v37 = v49;
    sub_1DF17A710(v52, v49, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v38 = v44;
    v39 = v51;
    (*(v44 + 56))(v37, 0, 1, v51);

    if ((*(v38 + 48))(v37, 1, v39) == 1)
    {
      goto LABEL_22;
    }

    v40 = *v37;
    v41 = v37 + *(v39 + 48);

    sub_1DF169620(v41);
  }

  else
  {
    v22 = 0;
    v21 = (v15 + 63) >> 6;
    while (v21 - 1 != v22)
    {
      v18 = v22 + 1;
      v23 = *(v14 + 72 + 8 * v22);
      v17 -= 64;
      ++v22;
      if (v23)
      {
        v47 = v8;
        v44 = v2;
        v51 = v1;
        v20 = (v23 - 1) & v23;
        v19 = __clz(__rbit64(v23)) - v17;
        goto LABEL_9;
      }
    }

    v37 = v49;
    (*(v2 + 56))(v49, 1, 1, v1);
LABEL_22:
    sub_1DF16184C(v37, &qword_1ECE0CBD8, &qword_1DF22CFB0);
    return 0;
  }

  return v40;
}

uint64_t sub_1DF16BE9C(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v59 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v8 = *(v69 - 8);
  v9 = MEMORY[0x1EEE9AC00](v69);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v59 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC0, &unk_1DF22D7C0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v59 - v21;
  v23 = sub_1DF22A800();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v64 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v70 = &v59 - v27;
  sub_1DF17A6A8(a1, v7, &qword_1ECE0CBB8, &qword_1DF22CF90);

  v67 = v3;
  v28 = &v7[*(v3 + 48)];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v30 = result;
  v31 = *(v28 + *(result + 48));
  v32 = v31[3];
  if (!v32)
  {

    sub_1DF169620(v28);
    v37 = v24[7];
    v37(v22, 1, 1, v23);
    goto LABEL_10;
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v33 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v33 >= v32)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v60 = result;
  v61 = v8;
  v34 = v31[4] + v33;
  v35 = v31[2];
  if (v34 < v35)
  {
    v35 = 0;
  }

  sub_1DF17A6A8(v31 + ((*(v8 + 80) + 40) & ~*(v8 + 80)) + (v34 - v35) * *(v8 + 72), v15, &qword_1ECE0CBC8, &qword_1DF22CFA0);

  sub_1DF17A710(v15, v17, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  sub_1DF1657C8(*&v17[*(v69 + 48)], *&v17[*(v69 + 48) + 8]);
  v36 = v24[4];
  v36(v22, v17, v23);
  v37 = v24[7];
  v37(v22, 0, 1, v23);
  sub_1DF169620(v28);
  v38 = v24[6];
  if (v38(v22, 1, v23) != 1)
  {
    v36(v70, v22, v23);
    v30 = v60;
    v8 = v61;
    v42 = v66;
    v41 = v67;
    v39 = v65;
    goto LABEL_14;
  }

  v30 = v60;
  v8 = v61;
LABEL_10:
  v39 = v65;
  sub_1DF22A740();
  v38 = v24[6];
  v40 = v38(v22, 1, v23);
  v41 = v67;
  if (v40 != 1)
  {
    sub_1DF16184C(v22, &qword_1ECE0CDC0, &unk_1DF22D7C0);
  }

  v42 = v66;
LABEL_14:
  sub_1DF17A6A8(v42, v39, &qword_1ECE0CBB8, &qword_1DF22CF90);

  v43 = v39 + v41[12];
  result = *(v43 + *(v30 + 48));
  v44 = *(result + 24);
  v45 = v68;
  if (!v44)
  {

    sub_1DF169620(v43);
    v37(v45, 1, 1, v23);
    goto LABEL_23;
  }

  v46 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
    goto LABEL_28;
  }

  if (v46 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v46 < v44)
  {
    v47 = *(result + 32) + v46;
    v48 = *(result + 16);
    if (v47 < v48)
    {
      v48 = 0;
    }

    v49 = result + ((*(v8 + 80) + 40) & ~*(v8 + 80)) + (v47 - v48) * *(v8 + 72);
    v67 = v37;
    v50 = v38;
    v51 = v62;
    sub_1DF17A6A8(v49, v62, &qword_1ECE0CBC8, &qword_1DF22CFA0);

    v52 = v51;
    v38 = v50;
    v53 = v63;
    sub_1DF17A710(v52, v63, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    sub_1DF1657C8(*(v53 + *(v69 + 48)), *(v53 + *(v69 + 48) + 8));
    v54 = v24[4];
    v54(v45, v53, v23);
    (v67)(v45, 0, 1, v23);
    sub_1DF169620(v43);
    if (v50(v45, 1, v23) != 1)
    {
      v55 = v64;
      v54(v64, v45, v23);
LABEL_25:
      v56 = v70;
      v57 = sub_1DF22A790();
      v58 = v24[1];
      v58(v55, v23);
      v58(v56, v23);
      return v57 & 1;
    }

LABEL_23:
    v55 = v64;
    sub_1DF22A740();
    if (v38(v45, 1, v23) != 1)
    {
      sub_1DF16184C(v45, &qword_1ECE0CDC0, &unk_1DF22D7C0);
    }

    goto LABEL_25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DF16C5DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1DF17924C();
    if ((sub_1DF22B1D0() & 1) == 0 && (sub_1DF22B1D0() & 1) == 0)
    {

      MEMORY[0x1E12CF820](58, 0xE100000000000000);
      MEMORY[0x1E12CF820](a3, a4);
      return a1;
    }

    *a5 = 2;
  }

  else
  {
LABEL_10:
    *a5 = 2;
  }

  sub_1DF1792A0();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DF16C738(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v94 - v7;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v98 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v9 = &v94 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBF8, &qword_1DF22CFC8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v104 = &v94 - v11;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v106 = *(v111 - 8);
  v12 = MEMORY[0x1EEE9AC00](v111);
  v105 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v114 = &v94 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v94 - v16;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v19 = 0;
      goto LABEL_11;
    }

    v21 = *(a1 + 16);
    v20 = *(a1 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v18)
  {
    v19 = BYTE6(a2);
    goto LABEL_11;
  }

  LODWORD(v19) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_118;
  }

  v19 = v19;
LABEL_11:
  v109 = v2[17];
  if (v19 >= v109)
  {
    return 0;
  }

  v112 = v2[16];
  swift_beginAccess();
  swift_beginAccess();
  v24 = *(v2[14] + 16);
  v25 = *(v2[15] + 16);
  v22 = __OFADD__(v24, v25);
  v26 = v24 + v25;
  if (v22)
  {
LABEL_107:
    __break(1u);
  }

  else
  {
    v27 = __OFSUB__(HIDWORD(a1), a1);
    v97 = v27;
    v96 = HIDWORD(a1) - a1;
    v108 = BYTE6(a2);
    v100 = (v98 + 56);
    v95 = (v106 + 56);
    *&v23 = 136315394;
    v94 = v23;
    *&v23 = 134217984;
    v101 = v23;
    v107 = v9;
    v110 = a2 >> 62;
    v99 = v17;
    v113 = a1;
    while (1)
    {
      v22 = __OFADD__(v26, 1);
      v30 = v26 + 1;
      if (v22)
      {
        break;
      }

      if (v112 >= v30)
      {
        v31 = sub_1DF16AA60();
        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v34 = *(a1 + 16);
            v33 = *(a1 + 24);
            v22 = __OFSUB__(v33, v34);
            v32 = v33 - v34;
            if (v22)
            {
              goto LABEL_113;
            }
          }

          else
          {
            v32 = 0;
          }
        }

        else
        {
          v32 = v108;
          if (v18)
          {
            v32 = v96;
            if (v97)
            {
              goto LABEL_112;
            }
          }
        }

        v22 = __OFADD__(v31, v32);
        v35 = v31 + v32;
        if (v22)
        {
          goto LABEL_109;
        }

        if (v109 >= v35)
        {
          return 1;
        }
      }

      v36 = sub_1DF16B214();
      if (v37)
      {
        v38 = v36;
        v39 = v37;
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v40 = sub_1DF22A8C0();
        __swift_project_value_buffer(v40, qword_1ED8E92C0);
        sub_1DF16573C(a1, a2);
        v41 = sub_1DF22A8A0();
        v42 = sub_1DF22B100();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = v101;
          if (v18 > 1)
          {
            if (v18 == 2)
            {
              v60 = *(a1 + 16);
              v59 = *(a1 + 24);
              v22 = __OFSUB__(v59, v60);
              v44 = v59 - v60;
              if (v22)
              {
                goto LABEL_114;
              }
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
            v44 = v108;
            if (v18)
            {
              v44 = v96;
              if (v97)
              {
                goto LABEL_115;
              }
            }
          }

          *(v43 + 4) = v44;
          v63 = v43;
          sub_1DF1657C8(a1, a2);
          _os_log_impl(&dword_1DF15A000, v41, v42, "Removing existing key due to database size constraints upon insertion of new key (value size: %ld).", v63, 0xCu);
          v64 = v63;
          v9 = v107;
          MEMORY[0x1E12D0B40](v64, -1, -1);
        }

        else
        {
          sub_1DF1657C8(a1, a2);
        }

        swift_beginAccess();
        sub_1DF175524(v38, v39, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v17);
        sub_1DF16184C(v17, &qword_1ECE0CBE0, &qword_1DF22CFB8);
        swift_endAccess();
      }

      else
      {
        v45 = sub_1DF16B950();
        if (!v46)
        {
          if (qword_1ED8E7530 != -1)
          {
            goto LABEL_121;
          }

          goto LABEL_91;
        }

        v47 = v46;
        v48 = v3[15];
        if (!*(v48 + 16))
        {
          goto LABEL_97;
        }

        v49 = v45;

        v50 = sub_1DF175254(v49, v47);
        if ((v51 & 1) == 0)
        {
          goto LABEL_96;
        }

        v52 = v105;
        sub_1DF17A6A8(*(v48 + 56) + *(v106 + 72) * v50, v105, &qword_1ECE0CBB0, &qword_1DF22CF88);

        sub_1DF17A710(v52, v114, &qword_1ECE0CBB0, &qword_1DF22CF88);
        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v53 = sub_1DF22A8C0();
        __swift_project_value_buffer(v53, qword_1ED8E92C0);
        v54 = v113;
        sub_1DF16573C(v113, a2);

        v55 = sub_1DF22A8A0();
        LODWORD(v18) = sub_1DF22B100();

        if (os_log_type_enabled(v55, v18))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v115[0] = v57;
          *v56 = v94;
          *(v56 + 4) = sub_1DF160728(v49, v47, v115);
          *(v56 + 12) = 2048;
          if (v110 > 1)
          {
            if (v110 == 2)
            {
              v62 = *(v113 + 16);
              v61 = *(v113 + 24);
              v22 = __OFSUB__(v61, v62);
              v58 = v61 - v62;
              if (v22)
              {
                goto LABEL_117;
              }
            }

            else
            {
              v58 = 0;
            }
          }

          else
          {
            v58 = v108;
            if (v110)
            {
              v58 = v96;
              if (v97)
              {
                goto LABEL_116;
              }
            }
          }

          *(v56 + 14) = v58;
          sub_1DF1657C8(v113, a2);
          _os_log_impl(&dword_1DF15A000, v55, v18, "Evicting item from list (key: %s to database size constraints upon insertion of new key (value size: %ld).", v56, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1E12D0B40](v57, -1, -1);
          MEMORY[0x1E12D0B40](v56, -1, -1);

          v9 = v107;
        }

        else
        {
          sub_1DF1657C8(v54, a2);
        }

        v65 = *(v111 + 48);
        v66 = *(v114 + v65);
        v18 = v104;
        if (v66[3])
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DF179338();
          }

          v66 = *(v114 + v65);
          v67 = v66[3];
          v22 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v22)
          {
            goto LABEL_110;
          }

          v69 = v66[4] + v68;
          v70 = v66[2];
          if (v69 < v70)
          {
            v70 = 0;
          }

          sub_1DF17A710(v66 + ((*(v98 + 80) + 40) & ~*(v98 + 80)) + (v69 - v70) * *(v98 + 72), v9, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          v71 = v66[3];
          v22 = __OFSUB__(v71, 1);
          v72 = v71 - 1;
          if (v22)
          {
            goto LABEL_111;
          }

          v66[3] = v72;
          sub_1DF17A710(v9, v18, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        (*v100)(v18, v73, 1, v103);
        sub_1DF16184C(v18, &qword_1ECE0CBF8, &qword_1DF22CFC8);
        if (v66[3])
        {
          v74 = v114;
          v75 = v102;
          sub_1DF17A6A8(v114, v102, &qword_1ECE0CBB0, &qword_1DF22CF88);
          (*v95)(v75, 0, 1, v111);
          swift_beginAccess();
          sub_1DF167040(v75, v49, v47);
          swift_endAccess();
          v76 = v74;
        }

        else
        {
          v18 = v113;
          sub_1DF16573C(v113, a2);
          v77 = sub_1DF22A8A0();
          v78 = sub_1DF22B100();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            *v79 = v101;
            if (v110 > 1)
            {
              if (v110 == 2)
              {
                v82 = *(v113 + 16);
                v81 = *(v113 + 24);
                v22 = __OFSUB__(v81, v82);
                v80 = v81 - v82;
                if (v22)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v80 = 0;
              }
            }

            else
            {
              v80 = v108;
              if (v110)
              {
                v80 = v96;
                if (v97)
                {
                  goto LABEL_120;
                }
              }
            }

            *(v79 + 4) = v80;
            v83 = v79;
            sub_1DF1657C8(v113, a2);
            _os_log_impl(&dword_1DF15A000, v77, v78, "Removing existing key due to database size constraints upon insertion of new key (value size: %ld).", v83, 0xCu);
            MEMORY[0x1E12D0B40](v83, -1, -1);
          }

          else
          {
            sub_1DF1657C8(v18, a2);
          }

          swift_beginAccess();
          v84 = v102;
          sub_1DF175524(v49, v47, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v102);
          sub_1DF16184C(v84, &qword_1ECE0CBE8, &qword_1DF22CFC0);
          swift_endAccess();

          v76 = v114;
        }

        sub_1DF16184C(v76, &qword_1ECE0CBB0, &qword_1DF22CF88);
        LODWORD(v18) = v110;
        v17 = v99;
        a1 = v113;
      }

      v28 = *(v3[14] + 16);
      v29 = *(v3[15] + 16);
      v22 = __OFADD__(v28, v29);
      v26 = v28 + v29;
      if (v22)
      {
        goto LABEL_107;
      }
    }
  }

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
  swift_once();
LABEL_91:
  v86 = sub_1DF22A8C0();
  __swift_project_value_buffer(v86, qword_1ED8E92C0);
  v87 = v113;
  sub_1DF16573C(v113, a2);
  v88 = sub_1DF22A8A0();
  v89 = sub_1DF22B100();
  if (!os_log_type_enabled(v88, v89))
  {
    sub_1DF1657C8(v87, a2);
LABEL_105:

    return 0;
  }

  v90 = swift_slowAlloc();
  *v90 = v101;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v92 = *(v87 + 16);
      v91 = *(v87 + 24);
      v108 = v91 - v92;
      if (!__OFSUB__(v91, v92))
      {
        goto LABEL_104;
      }

      __break(1u);
    }

    v108 = 0;
LABEL_104:
    *(v90 + 4) = v108;
    v93 = v90;
    sub_1DF1657C8(v87, a2);
    _os_log_impl(&dword_1DF15A000, v88, v89, "Failed to remove any expired keys due to database size constraints upon insertion of new key (value size: %ld).", v93, 0xCu);
    MEMORY[0x1E12D0B40](v93, -1, -1);
    goto LABEL_105;
  }

  if (!v18)
  {
    goto LABEL_104;
  }

  v108 = v96;
  if (!v97)
  {
    goto LABEL_104;
  }

  __break(1u);
LABEL_96:

LABEL_97:

  return 1;
}

uint64_t sub_1DF16D40C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  sub_1DF16D7F0();
  v8 = *(v0 + 136) * 0.8;
  if (COERCE__INT64(fabs(v8)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v8 <= -9.22337204e18)
  {
    goto LABEL_26;
  }

  if (v8 >= 9.22337204e18)
  {
    goto LABEL_27;
  }

  if (qword_1ED8E7530 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v9 = v8;
    v10 = sub_1DF22A8C0();
    __swift_project_value_buffer(v10, qword_1ED8E92C0);
    v11 = sub_1DF22A8A0();
    v12 = sub_1DF22B100();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_1DF15A000, v11, v12, "Reducing store size to %ld bytes", v13, 0xCu);
      MEMORY[0x1E12D0B40](v13, -1, -1);
    }

    v14 = *(*(type metadata accessor for KVDatastore.MetadataType(0) - 8) + 64);
    swift_beginAccess();
    swift_beginAccess();
    v15 = sub_1DF16A784();
    v16 = *(*(v1 + 112) + 16);
    v17 = v16 * v14;
    if ((v16 * v14) >> 64 == (v16 * v14) >> 63)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
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
LABEL_28:
    swift_once();
  }

  while (1)
  {
    v24 = *(*(v1 + 120) + 16);
    v25 = v24 * v14;
    if ((v24 * v14) >> 64 != (v24 * v14) >> 63)
    {
      goto LABEL_21;
    }

    v26 = __OFADD__(v17, v25);
    v27 = v17 + v25;
    if (v26)
    {
      goto LABEL_22;
    }

    v28 = v15 + v27;
    if (__OFADD__(v15, v27))
    {
      goto LABEL_23;
    }

    result = sub_1DF16AA60();
    if (__OFADD__(v28, result))
    {
      goto LABEL_24;
    }

    if (v28 + result <= v9)
    {
      return result;
    }

    v30 = sub_1DF16B950();
    if (v31)
    {
      v18 = v30;
      v19 = v31;
      swift_beginAccess();
      sub_1DF175524(v18, v19, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v7);
      v20 = v7;
      v21 = &qword_1ECE0CBE8;
      v22 = &qword_1DF22CFC0;
    }

    else
    {
      result = sub_1DF16B214();
      if (!v32)
      {
        return result;
      }

      v33 = result;
      v34 = v32;
      swift_beginAccess();
      sub_1DF175524(v33, v34, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v4);
      v20 = v4;
      v21 = &qword_1ECE0CBE0;
      v22 = &qword_1DF22CFB8;
    }

    sub_1DF16184C(v20, v21, v22);
    swift_endAccess();

    v15 = sub_1DF16A784();
    v23 = *(*(v1 + 112) + 16);
    v17 = v23 * v14;
    if ((v23 * v14) >> 64 != (v23 * v14) >> 63)
    {
      goto LABEL_20;
    }
  }
}

void sub_1DF16D7F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v107 - v2;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v4 = MEMORY[0x1EEE9AC00](v123);
  v112 = (&v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v107 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v107 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v124 = &v107 - v12;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v13 = MEMORY[0x1EEE9AC00](v125);
  v113 = (&v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v129 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v107 - v17);
  v19 = sub_1DF22A800();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v130 = v0;
  if (*(*(v0 + 112) + 16) || (v23 = v130, swift_beginAccess(), *(*(v23 + 120) + 16)))
  {
    v107 = v20;
    v108 = v19;
    v114 = v8;
    v121 = v3;
    v24 = sub_1DF22A7D0();
    v25 = *(v130 + 112);
    MEMORY[0x1EEE9AC00](v24);
    v110 = v22;
    *(&v107 - 2) = v22;

    v26 = sub_1DF177100(sub_1DF17920C, (&v107 - 4), v25, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
    v109 = 0;

    v27 = v26 + 64;
    v28 = 1 << v26[32];
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v26 + 8);
    v31 = (v28 + 63) >> 6;
    v118 = v26;

    v32 = 0;
    *&v33 = 136315138;
    v115 = v33;
    v122 = v10;
    v117 = v26 + 64;
    v116 = v31;
    v111 = v18;
    while (v30)
    {
LABEL_13:
      v37 = __clz(__rbit64(v30)) | (v32 << 6);
      v38 = *(v118 + 7);
      v39 = (*(v118 + 6) + 16 * v37);
      v41 = *v39;
      v40 = v39[1];
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      v128 = *(v42 - 8);
      v119 = *(v128 + 72);
      sub_1DF17A6A8(v38 + v119 * v37, v18 + *(v125 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
      v126 = v40;
      v127 = v41;
      *v18 = v41;
      v18[1] = v40;
      v43 = qword_1ED8E7530;

      if (v43 != -1)
      {
        swift_once();
      }

      v44 = sub_1DF22A8C0();
      __swift_project_value_buffer(v44, qword_1ED8E92C0);
      sub_1DF17A6A8(v18, v129, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v45 = sub_1DF22A8A0();
      v46 = sub_1DF22B100();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v120 = v42;
        v48 = v47;
        v49 = swift_slowAlloc();
        v133 = v49;
        *v48 = v115;
        v50 = v113;
        sub_1DF17A710(v129, v113, &qword_1ECE0CBC0, &qword_1DF22CF98);
        v52 = *v50;
        v51 = v50[1];
        v53 = v50 + *(v125 + 48);
        sub_1DF1657C8(*(v53 + *(v120 + 48)), *(v53 + *(v120 + 48) + 8));
        sub_1DF169620(v53);
        v54 = sub_1DF160728(v52, v51, &v133);

        *(v48 + 4) = v54;
        _os_log_impl(&dword_1DF15A000, v45, v46, "Removing expired key: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        v55 = v49;
        v18 = v111;
        MEMORY[0x1E12D0B40](v55, -1, -1);
        v56 = v48;
        v42 = v120;
        MEMORY[0x1E12D0B40](v56, -1, -1);
      }

      else
      {

        sub_1DF16184C(v129, &qword_1ECE0CBC0, &qword_1DF22CF98);
      }

      v10 = v122;
      swift_beginAccess();
      v57 = sub_1DF175254(v127, v126);
      if (v58)
      {
        v59 = v57;
        v60 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = *(v60 + 112);
        v132[0] = v62;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DF175E10(&qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
          v62 = v132[0];
        }

        sub_1DF17A710(*(v62 + 56) + v59 * v119, v124, &qword_1ECE0CBA8, &qword_1DF22CF80);
        sub_1DF175BCC(v59, v62, &qword_1ECE0CBA8, &qword_1DF22CF80);
        v34 = 0;
        *(v130 + 112) = v62;
      }

      else
      {
        v34 = 1;
      }

      v30 &= v30 - 1;
      v35 = v124;
      (*(v128 + 56))(v124, v34, 1, v42);
      sub_1DF16184C(v35, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      swift_endAccess();
      sub_1DF16184C(v18, &qword_1ECE0CBC0, &qword_1DF22CF98);
      v27 = v117;
      v31 = v116;
    }

    while (1)
    {
      v36 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v36 >= v31)
      {
        break;
      }

      v30 = *&v27[8 * v36];
      ++v32;
      if (v30)
      {
        v32 = v36;
        goto LABEL_13;
      }
    }

    v63 = v130;
    v64 = swift_beginAccess();
    v65 = *(v63 + 120);
    MEMORY[0x1EEE9AC00](v64);
    *(&v107 - 2) = v110;

    v66 = sub_1DF177100(sub_1DF17922C, (&v107 - 4), v65, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);

    v67 = (v66 + 64);
    v68 = 1 << v66[32];
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v69 & *(v66 + 8);
    v71 = (v68 + 63) >> 6;
    v125 = v66;

    v72 = 0;
    v73 = v114;
    v124 = v66 + 64;
    v120 = v71;
    while (v70)
    {
      v76 = v10;
LABEL_33:
      v78 = __clz(__rbit64(v70)) | (v72 << 6);
      v79 = *(v125 + 56);
      v80 = (*(v125 + 48) + 16 * v78);
      v82 = *v80;
      v81 = v80[1];
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      v128 = *(v83 - 8);
      v129 = v83;
      v126 = *(v128 + 72);
      sub_1DF17A6A8(v79 + v126 * v78, v76 + *(v123 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
      v127 = v82;
      *v76 = v82;
      v76[1] = v81;
      v10 = v76;
      v84 = qword_1ED8E7530;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = sub_1DF22A8C0();
      __swift_project_value_buffer(v85, qword_1ED8E92C0);
      sub_1DF17A6A8(v76, v73, &qword_1ECE0CBB8, &qword_1DF22CF90);
      v86 = sub_1DF22A8A0();
      v87 = sub_1DF22B100();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v132[0] = v89;
        *v88 = v115;
        v90 = v73;
        v91 = v112;
        sub_1DF17A710(v90, v112, &qword_1ECE0CBB8, &qword_1DF22CF90);
        v93 = *v91;
        v92 = v91[1];
        v94 = v91 + *(v123 + 48);

        sub_1DF169620(v94);
        v95 = v93;
        v96 = v114;
        v97 = sub_1DF160728(v95, v92, v132);

        *(v88 + 4) = v97;
        v73 = v96;
        _os_log_impl(&dword_1DF15A000, v86, v87, "Removing expired key: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x1E12D0B40](v89, -1, -1);
        v98 = v88;
        v10 = v122;
        MEMORY[0x1E12D0B40](v98, -1, -1);
      }

      else
      {

        sub_1DF16184C(v73, &qword_1ECE0CBB8, &qword_1DF22CF90);
      }

      v67 = v124;
      swift_beginAccess();
      v99 = sub_1DF175254(v127, v81);
      if (v100)
      {
        v101 = v99;
        v102 = v130;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v104 = *(v102 + 120);
        v131 = v104;
        v105 = v121;
        if (!v103)
        {
          sub_1DF175E10(&qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
          v104 = v131;
        }

        sub_1DF17A710(*(v104 + 56) + v101 * v126, v105, &qword_1ECE0CBB0, &qword_1DF22CF88);
        v106 = v101;
        v75 = v121;
        sub_1DF175BCC(v106, v104, &qword_1ECE0CBB0, &qword_1DF22CF88);
        v74 = 0;
        *(v130 + 120) = v104;
      }

      else
      {
        v74 = 1;
        v75 = v121;
      }

      v70 &= v70 - 1;
      (*(v128 + 56))(v75, v74, 1, v129);
      sub_1DF16184C(v75, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      swift_endAccess();
      sub_1DF16184C(v10, &qword_1ECE0CBB8, &qword_1DF22CF90);
      v71 = v120;
    }

    while (1)
    {
      v77 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v77 >= v71)
      {

        (*(v107 + 8))(v110, v108);
        return;
      }

      v70 = *(v67 + 8 * v77);
      ++v72;
      if (v70)
      {
        v76 = v10;
        v72 = v77;
        goto LABEL_33;
      }
    }

LABEL_45:
    __break(1u);
  }
}
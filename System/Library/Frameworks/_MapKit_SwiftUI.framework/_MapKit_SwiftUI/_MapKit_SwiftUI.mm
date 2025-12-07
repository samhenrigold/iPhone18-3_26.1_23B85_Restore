uint64_t getEnumTagSinglePayload for MapContentList.UpdateToken(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MapContentList.UpdateToken(uint64_t result, int a2, int a3)
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

uint64_t sub_213CCBDA0(uint64_t a1, int a2)
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

uint64_t sub_213CCBDC0(uint64_t result, int a2, int a3)
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

void *sub_213CCBE0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_213CCBE44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D9193C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_213CCBE70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CD6270(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_213CCBF1C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9C10, &qword_213D94168);
  sub_213D908CC();
  sub_213CD609C();
  return swift_getWitnessTable();
}

uint64_t sub_213CCBFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D90C5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_213D9059C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_213D90F3C();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_213CCC0F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_213D90C5C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_213D9059C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_213D90F3C();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_213CCC248(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213CCC2B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_213CCC34C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_213CCC360()
{

  return swift_deallocObject();
}

uint64_t sub_213CCC398(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_213CCC3F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[17];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _MapContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[18];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[19]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_213CCC500(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[17];
  }

  else
  {
    result = type metadata accessor for _MapContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[19]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[18];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CCC68C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D90A7C();
  *a1 = result;
  return result;
}

void *sub_213CCC6E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CE2CE4(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

void *sub_213CCC780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CE2C90(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

void *sub_213CCC81C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CE2BD0(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CCC870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_213CCC994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CCCABC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90A6C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_213D9051C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213CCCBD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_213D90A6C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_213D9051C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CCCCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MapPitchToggleConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CCCD78(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapPitchToggleConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCCE18(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_213CCCE24@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x21604DC60]();
  *a1 = result;
  return result;
}

uint64_t sub_213CCCE7C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA278, &unk_213D94DA0);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CCCF78(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA280, &unk_213D94E00);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CCCFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_213CE30F4(a1, a2, a3);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_213CCD05C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[10]];

  return v15(v16, a2, v14);
}

char *sub_213CCD1EC(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[10]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213CCD4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213D90BDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213CCD518()
{

  return swift_deallocObject();
}

uint64_t sub_213CCD550()
{
  v1 = type metadata accessor for MapStylePickerView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v19 = type metadata accessor for MapStylePicker.Option(0);
  v3 = *(*(v19 - 8) + 80);
  v4 = v0 + v2;

  if (*(v0 + v2 + 40) != 1)
  {
  }

  if (*(v4 + 88) != 1)
  {
  }

  v5 = (v4 + v1[6]);
  v6 = type metadata accessor for _MapStylePickerAttribution(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 20);
    v8 = sub_213D902EC();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D9087C();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_213D904FC();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  else
  {
  }

  v14 = v0 + ((v2 + v18 + v3) & ~v3);
  v15 = sub_213D902AC();
  (*(*(v15 - 8) + 8))(v14, v15);
  v16 = (v14 + *(v19 + 24));
  sub_213CEC7C8(*v16, v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10]);

  return swift_deallocObject();
}

uint64_t sub_213CCD90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA470, &unk_213D95260);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for _MapStylePickerAttribution(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213CCDA34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA470, &unk_213D95260);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _MapStylePickerAttribution(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CCDB4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_213D902AC();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_213CCDCB8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A8, &qword_213D94F58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2B0, &unk_213D94F60);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_213D902AC();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CCDE20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA2E0, &qword_213D95088);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA2D8, &qword_213D95080);
  sub_213CEDCEC(&qword_27C8EA318, &qword_27C8EA2D8, &qword_213D95080, MEMORY[0x277CDD6E0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CCDEF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213D90B7C();
  *a1 = result;
  return result;
}

uint64_t sub_213CCDF48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D90BAC();
  *a1 = result;
  return result;
}

uint64_t sub_213CCDFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA478, &qword_213D95440);
  sub_213CEDCEC(&qword_27C8E95C0, &qword_27C8EA478, &qword_213D95440, MEMORY[0x277CE1198]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CCE114(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA6B0, &qword_213D95C10);
  sub_213D908CC();
  sub_213CEF4E0();
  return swift_getWitnessTable();
}

uint64_t sub_213CCE18C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA6C0, &qword_213D95C18);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CCE234(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[8];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[9]);
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
    v14 = sub_213D9100C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[12];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_213CCE368(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_213D90CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[8];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[9]) = a2;
  }

  else
  {
    v13 = sub_213D9100C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_213CCE490()
{

  return swift_deallocObject();
}

uint64_t sub_213CCE4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CCE520(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_213CCE530()
{

  return swift_deallocObject();
}

uint64_t sub_213CCE568(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_213D9100C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213CCE620(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCE6D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for _MapContentOutputs(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCE780(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for _MapContentOutputs(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCE830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for MapAnnotation(0, v5, *(v4 + 24), a4);
  (*(*(v5 - 8) + 8))(v4 + *(v6 + 40) + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_213CCE90C()
{

  return swift_deallocObject();
}

double sub_213CCE958@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CF9624(a2, a3, a4);
  sub_213D90C1C();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_213CCE9B4()
{

  return swift_deallocObject();
}

uint64_t sub_213CCE9EC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAD38, &qword_213D96928);
  sub_213D908CC();
  sub_213CF9368();
  return swift_getWitnessTable();
}

uint64_t sub_213CCEA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_213D9031C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213CCEB64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_213D9031C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void *sub_213CCEC6C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CFA504(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CCECC0()
{

  return swift_deallocObject();
}

uint64_t sub_213CCECF8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EADE8, &qword_213D96B00);
  sub_213D908CC();
  sub_213CFA09C();
  return swift_getWitnessTable();
}

uint64_t sub_213CCED78()
{

  return swift_deallocObject();
}

void *sub_213CCEDB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D1F20C(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CCEE50(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EAFC8, &qword_213D96DF0);
  sub_213D908CC();
  sub_213CEDCEC(qword_27C8EAFD0, &qword_27C8EAFC8, &qword_213D96DF0, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_213CCEEFC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE90, &qword_213D988D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB060, &unk_213D96E60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213CCF038(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBE90, &qword_213D988D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB060, &unk_213D96E60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213CCF338(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213CCF350()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF390()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF3DC()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF414()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF454()
{
  sub_213D1E068(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_213CCF494()
{

  return swift_deallocObject();
}

uint64_t sub_213CCF630()
{

  return swift_deallocObject();
}

__n128 sub_213CCF724(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_213CCF7D4(uint64_t a1)
{
  v2 = [*v1 viewForAnnotation_];

  return v2;
}

id sub_213CCF830(uint64_t a1)
{
  v2 = [*v1 rendererForOverlay_];

  return v2;
}

uint64_t sub_213CCF86C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_213D9100C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCF918(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCF9BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_213D9100C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCFA68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCFB0C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_213D9100C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

void *sub_213CCFBB8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_213D9100C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CCFC6C(_OWORD *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(*(a1 + 2) + 8);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  v8 = v1;
  type metadata accessor for _MapContentView(255, &v5);
  return swift_getWitnessTable();
}

uint64_t sub_213CCFCCC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v3[0] = *a1;
  v3[1] = MEMORY[0x277D84A98];
  v4 = *(a1 + 8);
  v5 = &protocol witness table for Never;
  v6 = v1;
  type metadata accessor for _MapContentView(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_213CCFE48()
{

  return swift_deallocObject();
}

uint64_t sub_213CCFE80()
{
  MEMORY[0x21604FCE0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_213CCFEB8()
{

  return swift_deallocObject();
}

uint64_t sub_213CCFF00()
{

  return swift_deallocObject();
}

uint64_t sub_213CCFF48()
{

  return swift_deallocObject();
}

uint64_t sub_213CCFFB0()
{

  return swift_deallocObject();
}

uint64_t sub_213CD0010()
{

  sub_213D1E068(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_213CD0050()
{
  sub_213D1E068(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_213CD00B0()
{
  sub_213D1E068(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_213CD00E8()
{

  return swift_deallocObject();
}

uint64_t sub_213CD0128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 108);
  v6 = type metadata accessor for _MapContentInputs(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_213CD01A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 108);
  v7 = type metadata accessor for _MapContentInputs(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_213CD021C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD02D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0388()
{
  v1 = v0[2];
  v11[0] = v0[1];
  v11[1] = v1;
  v11[2] = v0[3];
  v2 = type metadata accessor for _MapContentView.Child(0, v11);
  v3 = v0 + *(v2 + 108) + ((*(*(v2 - 8) + 80) + 64) & ~*(*(v2 - 8) + 80));
  v4 = sub_213D90C5C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = type metadata accessor for _MapContentInputs(0);
  v6 = *(v5 + 20);
  v7 = sub_213D9059C();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  v8 = *(v5 + 24);
  v9 = sub_213D90F3C();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  return swift_deallocObject();
}

uint64_t sub_213CD059C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_213D90BDC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_213CD061C()
{

  return swift_deallocObject();
}

uint64_t sub_213CD0664(uint64_t *a1)
{
  sub_213D90FEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v1 = MEMORY[0x277CE0800];
  sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38, MEMORY[0x277CE0800]);
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40, v1);
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48, v1);
  swift_getWitnessTable();
  sub_213D9077C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  swift_getWitnessTable();
  sub_213D4C820();
  swift_getOpaqueTypeMetadata2();
  sub_213D9031C();
  swift_getOpaqueTypeConformance2();
  sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  swift_getOpaqueTypeMetadata2();
  sub_213D4C8F8(&qword_27C8EBEF0, 255, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
  sub_213D905EC();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_213CD09F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD0AAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MapScaleViewConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD0C00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapScaleViewConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0CA0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = sub_213D9051C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_213CD0D4C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_213D9051C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD0E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC020, &unk_213D99450);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213CD0ED8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC020, &unk_213D99450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_213CD0F8C@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D52540(a2, a3, a4);
  sub_213D90C1C();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_213CD0FE0()
{

  return swift_deallocObject();
}

uint64_t sub_213CD1018(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EC048, &unk_213D995C0);
  sub_213D908CC();
  sub_213D524DC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD10A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213D902AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 24) + 48) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 24) + 48) >> 1);
  }

  else
  {
    return 0;
  }
}

double sub_213CD1164(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_213D902AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 24);
    result = 0.0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *v12 = 0u;
    *(v12 + 48) = 2 * -a2;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 120) = 0u;
    *(v12 + 130) = 0u;
  }

  return result;
}

uint64_t sub_213CD1248(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213CD1304(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA5C8, &qword_213D95620);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD13B4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_213CD1470(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_213CD1534(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_213D589A0(v1);
}

uint64_t sub_213CD1564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _MapStylePicker(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = type metadata accessor for _MapStylePickerAttribution(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v6 + v7 + v10;
  v12 = v4 + v6;

  if (*(v12 + 16))
  {

    if (*(v12 + 40) != 1)
    {
    }

    if (*(v12 + 88) != 1)
    {
    }
  }

  v13 = v11 & ~v10;
  sub_213CE2B28(*(v12 + 192), *(v12 + 200));

  v14 = (v12 + *(v5 + 52));
  if (!(*(v9 + 48))(v14, 1, v8))
  {

    v15 = *(v8 + 20);
    v16 = sub_213D902EC();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v14 + v15, 1, v16))
    {
      (*(v17 + 8))(v14 + v15, v16);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC0A0, &qword_213D99898);

  v18 = *(v8 + 20);
  v19 = sub_213D902EC();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v4 + v13 + v18, 1, v19))
  {
    (*(v20 + 8))(v4 + v13 + v18, v19);
  }

  return swift_deallocObject();
}

uint64_t sub_213CD1834()
{
  MEMORY[0x21604FCE0](v0 + 16);

  return swift_deallocObject();
}

id sub_213CD1878@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredConfiguration];
  *a2 = result;
  return result;
}

uint64_t sub_213CD18CC()
{

  return swift_deallocObject();
}

uint64_t sub_213CD1904(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBF08, &unk_213D99D40);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBF28, &qword_213D98B78);
  sub_213D5AD90(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);
  sub_213D90EDC();
  sub_213D5AD90(&qword_27C8EBF18, &qword_27C8EBF08, &unk_213D99D40);
  swift_getWitnessTable();
  sub_213D90EDC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD1A08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213CD1A80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF10, &qword_213D98B70);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CD1AFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC308, &qword_213D99F70);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_213CD1BCC()
{

  return swift_deallocObject();
}

uint64_t sub_213CD1C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213CD1D20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t sub_213CD1DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MapCompassConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD1E90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapCompassConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD1F30(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
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
    v10 = sub_213D9051C();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_213CD1FDC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_213D9051C();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD207C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for TagValueTraitKey(255, a1[1], a1[3], a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _TraitWritingMapContentModifier(255, v4, WitnessTable, v6);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD2138(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90CFC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_213D9100C();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[14];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_213CD2260(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_213D90CFC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_213D9100C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[14];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_213CD2390(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[13];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _MapContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[15]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_213CD2498(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
  }

  else
  {
    result = type metadata accessor for _MapContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[15]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[14];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CD259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CD261C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D71A68(MEMORY[0x277D84F90]);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_213CD2658(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MapContentList.Item.Content(0);
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
      v13 = sub_213D9100C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213CD277C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MapContentList.Item.Content(0);
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
      v13 = sub_213D9100C();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213CD2904(uint64_t *a1)
{
  type metadata accessor for _MapView(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t sub_213CD2958(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for _MapContentOutputs(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_213CD2A60(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for _MapContentInputs(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for _MapContentOutputs(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CD2B64()
{
  sub_213D908CC();
  v1 = sub_213D9057C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_213CD2D24()
{
  sub_213D1E068(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_213CD2D78()
{

  return swift_deallocObject();
}

double sub_213CD2DB8@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D64778(a2, a3, a4);
  sub_213D90C1C();
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  *(a1 + 128) = v14;
  *(a1 + 144) = v15;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

uint64_t sub_213CD2E44(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED2C8, &qword_213D9C7D0);
  sub_213D908CC();
  sub_213D7AE7C();
  return swift_getWitnessTable();
}

double sub_213CD2EBC@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D7EC1C(a2, a3, a4);
  sub_213D90C1C();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_213CD2F10()
{

  return swift_deallocObject();
}

uint64_t sub_213CD2F54(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED358, &qword_213D9CA38);
  sub_213D908CC();
  sub_213D7E63C();
  return swift_getWitnessTable();
}

uint64_t sub_213CD3024(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD30CC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4B0, &qword_213D9D090);
  sub_213D81790(v4, v1, v2);
  sub_213D8180C(&qword_27C8ED4B8, &qword_27C8ED4B0, &qword_213D9D090, sub_213D807B8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD3188(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD3230(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED4F0, &qword_213D9D0A8);
  sub_213D81790(v4, v1, v2);
  sub_213D8180C(&qword_27C8ED4F8, &qword_27C8ED4F0, &qword_213D9D0A8, sub_213D81890);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD32EC()
{
  if (*(v0 + 24))
  {
  }

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_213CD33B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentInputs(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213CD3420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentInputs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CD3490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TupleMapContent(255, *(a3 + 16), a3, a4);
  v7 = sub_213D9057C();
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for _MapContentInputs(0);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 36));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213CD35AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  type metadata accessor for TupleMapContent(255, *(a4 + 16), a3, a4);
  v8 = sub_213D9057C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == v5)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for _MapContentInputs(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != v5)
    {
      *(a1 + *(a4 + 36)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CD36F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_213CD3814(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1E8, &qword_213D94BE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1F0, &qword_213D94BE8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CD393C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for MapUserLocationButtonConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213CD39E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = type metadata accessor for MapUserLocationButtonConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213CD3A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_213D90A6C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_213D9051C();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213CD3B94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_213D90A6C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_213D9051C();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_213CD3CA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _MapControlsModifier(255, a1[1], a1[3], a4);
  sub_213D908CC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213CD3D3C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8ED998, &qword_213D9DF08);
  sub_213D908CC();
  sub_213CEDCEC(qword_27C8ED9A0, &qword_27C8ED998, &qword_213D9DF08, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_213CD3DE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 2)
  {
    v18 = ((v17 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v18 = -2;
  }

  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_213CD3FD0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = a2 + 2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213CD41A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for _MapControlsModifier(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = v4 + ((v7 + 32) & ~v7);
  v9 = type metadata accessor for MapPitchToggleConfig(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = *(v9 + 24);
    v11 = sub_213D90A6C();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
    v12 = *(v9 + 28);
    v13 = sub_213D9051C();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
  }

  v14 = type metadata accessor for MapControlsConfig(0);
  v15 = v8 + v14[5];
  v16 = type metadata accessor for MapScaleViewConfig(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = *(v16 + 28);
    v18 = sub_213D9051C();
    (*(*(v18 - 8) + 8))(v15 + v17, v18);
  }

  v19 = v8 + v14[6];
  v20 = type metadata accessor for MapUserLocationButtonConfig(0);
  if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
  {
    v21 = *(v20 + 24);
    v22 = sub_213D90A6C();
    (*(*(v22 - 8) + 8))(v19 + v21, v22);
    v23 = *(v20 + 28);
    v24 = sub_213D9051C();
    (*(*(v24 - 8) + 8))(v19 + v23, v24);
  }

  v25 = v8 + v14[7];
  v26 = type metadata accessor for MapCompassConfig(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 24);
    v28 = sub_213D9051C();
    (*(*(v28 - 8) + 8))(v25 + v27, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EDAB8, &qword_213D9E0C0);

  (*(*(v5 - 8) + 8))(v8 + *(v6 + 36), v5);

  return swift_deallocObject();
}

uint64_t sub_213CD4590(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _MapControlsModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_213D90EAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA80, &qword_213D9E058);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA88, &qword_213D9E060);
  sub_213D908CC();
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDA90, &qword_213D9E068);
  sub_213D908CC();
  v4 = MEMORY[0x277CE0868];
  sub_213CEDCEC(&qword_27C8EDA98, &qword_27C8EDA88, &qword_213D9E060, MEMORY[0x277CE0868]);
  WitnessTable = swift_getWitnessTable();
  sub_213D8BA40(WitnessTable, v5, v6);
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EDAA8, &qword_27C8EDA90, &qword_213D9E068, MEMORY[0x277CE07C8]);
  swift_getWitnessTable();
  sub_213D90E4C();
  sub_213D908CC();
  swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EDAB0, &qword_27C8EDA80, &qword_213D9E058, v4);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_213CD481C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_213CD4828(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void *sub_213CD4834@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D8BFF0(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CD48D0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDB08, &qword_213D9E288);
  sub_213D908CC();
  sub_213D8BF8C();
  return swift_getWitnessTable();
}

uint64_t sub_213CD4950(void *a1)
{
  v1 = sub_213D908CC();
  sub_213D8CA14(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_213CD49B8()
{
  sub_213CE2B28(*(v0 + 24), *(v0 + 32));
  if ((*(v0 + 56) & 1) == 0)
  {
    MEMORY[0x21604FCE0](v0 + 48);
  }

  return swift_deallocObject();
}

void *sub_213CD4AA0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213D4F278(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CD4B3C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC58, &qword_213D9E5F0);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC60, &qword_213D9E6A0);
  sub_213D908CC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_213CD4C18(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC68, &qword_213D9E6A8);
  sub_213D908CC();
  return swift_getWitnessTable();
}

uint64_t sub_213CD4CA8()
{

  return swift_deallocObject();
}

uint64_t sub_213CD4CF0()
{

  return swift_deallocObject();
}

uint64_t sub_213CD4D48(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EDC80, &qword_213D9E830);
  sub_213D8EF34();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_213CD4E28(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapInteractionModes(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MapInteractionModes(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id UserLocation.location.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *UserLocation.heading.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_213CD4F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 != 4)
  {
    MEMORY[0x21604E3D0](a5, a2, a3);
  }

  return sub_213D9131C();
}

uint64_t sub_213CD4FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 == 4)
  {
    v4 = 0;
  }

  else
  {
    v8 = a1;
    v5 = a2;
    v6 = MEMORY[0x21604E3D0](a3);
    a2 = v5;
    v4 = v6;
    a1 = v8;
  }

  return MEMORY[0x28212F470](a1, a2, v4 | ((v3 == 4) << 8));
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_213CD50B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_213CD510C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_213CD5288(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x21604F1E0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_213CD52DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_213D9202C();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_213CD5334@<X0>(_DWORD *a1@<X8>)
{
  result = sub_213D9203C();
  *a1 = result;
  return result;
}

uint64_t sub_213CD535C(uint64_t a1, id *a2)
{
  result = sub_213D9191C();
  *a2 = 0;
  return result;
}

uint64_t sub_213CD53D4(uint64_t a1, id *a2)
{
  v3 = sub_213D9192C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_213CD5454@<X0>(uint64_t *a2@<X8>)
{
  sub_213D9193C();
  v3 = sub_213D9190C();

  *a2 = v3;
  return result;
}

uint64_t sub_213CD5498()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD550C(uint64_t a1)
{
  v2 = *v1;
  sub_213D91FBC();
  MEMORY[0x21604F190](v2);
  return sub_213D91FFC();
}

uint64_t sub_213CD5550(uint64_t a1)
{
  sub_213CD5774(&qword_27C8E9B30, type metadata accessor for MKPointOfInterestCategory, &unk_213D93C9C);
  sub_213CD5774(&qword_27C8E9B38, type metadata accessor for MKPointOfInterestCategory, &unk_213D93C3C);

  return sub_213D91F1C();
}

_DWORD *sub_213CD560C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_213CD5628(uint64_t a1)
{
  sub_213CD5774(&qword_27C8E9B40, type metadata accessor for AnyAttribute, MEMORY[0x277CEF7C0]);
  sub_213CD5774(&unk_27C8E9B48, type metadata accessor for AnyAttribute, &unk_213D93A38);
  return sub_213D91F1C();
}

uint64_t sub_213CD5774(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213CD5894@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_213D9190C();

  *a2 = v3;
  return result;
}

uint64_t sub_213CD58DC(uint64_t a1)
{
  sub_213CD5774(&qword_27C8E9B90, type metadata accessor for Key, &unk_213D93ED4);
  sub_213CD5774(&qword_27C8E9B98, type metadata accessor for Key, &unk_213D93E74);

  return sub_213D91F1C();
}

uint64_t sub_213CD5998()
{
  v0 = sub_213D9193C();
  v1 = MEMORY[0x21604EB60](v0);

  return v1;
}

uint64_t sub_213CD59D4(uint64_t a1)
{
  sub_213D9193C();
  sub_213D9195C();
}

uint64_t sub_213CD5A28(uint64_t a1)
{
  sub_213D9193C();
  sub_213D91FBC();
  sub_213D9195C();
  v1 = sub_213D91FFC();

  return v1;
}

uint64_t sub_213CD5A9C(void *a1, uint64_t *a2)
{
  v2 = sub_213D9193C();
  v4 = v3;
  if (v2 == sub_213D9193C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_213D91F5C();
  }

  return v7 & 1;
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

uint64_t sub_213CD5BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_213CD5C2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

void sub_213CD5DF4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void static PointOfInterestCategories.all.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v1;
}

uint64_t static PointOfInterestCategories.excluding(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = a1;
}

uint64_t static PointOfInterestCategories.including(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  a2[1] = 0;
}

uint64_t PointOfInterestCategories.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_213CD5EBC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_213CD5EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_213CD6270(a1, a2, a3);
  sub_213D90C1C();
  return v4;
}

uint64_t View.mapAttribution(showsLegal:logoVisibility:)(char a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_213D9130C();
}

void *sub_213CD5FA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CD6270(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  a1[1] = v7;
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

unint64_t sub_213CD609C()
{
  result = qword_27C8E9C18;
  if (!qword_27C8E9C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9C10, &qword_213D94168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9C18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapAttribution(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for MapAttribution(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_213CD6270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9C20;
  if (!qword_27C8E9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9C20);
  }

  return result;
}

uint64_t sub_213CD62D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C98, &qword_213D9BED0);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_213D9106C();
  v16 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(a2, v15);
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9CA0, &unk_213D94360);
    sub_213CD8784();
    sub_213D90C9C();
    sub_213CD62D8(v12, v15, v23);
    sub_213CD70D4(v9, v6);
    v20 = sub_213D910DC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {
      sub_213CD8330(v9, &qword_27C8E9C28, &qword_213D94200);
      (*(v25 + 8))(v12, v22);
      sub_213CD7144(v15);
      (*(v16 + 8))(v18, v24);
      return sub_213CD8330(v6, &qword_27C8E9C28, &qword_213D94200);
    }

    else
    {
      sub_213D910CC();
      sub_213CD8330(v9, &qword_27C8E9C28, &qword_213D94200);
      (*(v25 + 8))(v12, v22);
      sub_213CD7144(v15);
      (*(v16 + 8))(v18, v24);
      return (*(v21 + 8))(v6, v20);
    }
  }

  return result;
}

uint64_t static MapContent._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a2;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_213D9057C();
  v32 = *(v15 - 8);
  v33 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  v18 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_213D9106C();
  v21 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213D9107C();
  sub_213CD6B10(v29, v20);
  v29 = a1;
  sub_213CD701C(v17, v13, a1, v20, v23, a3, a4);
  v24 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v17, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_213CD70D4(v13, v10);
  v26 = sub_213D910DC();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    sub_213CD8330(v13, &qword_27C8E9C28, &qword_213D94200);
    (*(v32 + 8))(v17, v33);
    sub_213CD7144(v20);
    (*(v21 + 8))(v23, v30);
    return sub_213CD8330(v24, &qword_27C8E9C28, &qword_213D94200);
  }

  else
  {
    sub_213D910CC();
    sub_213CD8330(v13, &qword_27C8E9C28, &qword_213D94200);
    (*(v32 + 8))(v17, v33);
    sub_213CD7144(v20);
    (*(v21 + 8))(v23, v30);
    return (*(v27 + 8))(v24, v26);
  }
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

uint64_t sub_213CD6B10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentInputs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MapContent._mapContentCount(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_213CD6CA0(void (*a1)(double), uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C80, &qword_213D94348);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C88, &unk_213D94350);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  a1(v11);
  sub_213D90FBC();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_213CD8330(v5, &qword_27C8E9C80, &qword_213D94348);
    return *MEMORY[0x277CEF7D0];
  }

  v15 = *(v7 + 32);
  v15(v13, v5, v6);
  result = (v15)(v9, v13, v6);
  if (v8 == 4)
  {
    v14 = *v9;
    (*(v7 + 8))(v9, v6);
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_213CD6F68@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C88, &unk_213D94350);
  if (*(*(result - 8) + 64) == 4)
  {
    return (*(*(result - 8) + 16))(a2, &v4, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CD701C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = AGTypeGetKind();
  if ((result - 6) < 0xFFFFFFFC)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for MapContentBodyAccessor(0, a6, a7, v10);
    swift_getWitnessTable();
    return sub_213D90C9C();
  }

  return result;
}

uint64_t sub_213CD70D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9C28, &qword_213D94200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213CD7144(uint64_t a1)
{
  v2 = type metadata accessor for _MapContentInputs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213CD71A0(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](result);
    type metadata accessor for MapContentBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable();
    return sub_213D90C8C();
  }

  return result;
}

uint64_t sub_213CD72E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v6[0] = a1;
  v6[1] = a4;
  v6[2] = a5;
  return _callVisitMapContentType1(v6, a2, a3);
}

uint64_t sub_213CD7350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_213D9057C();
  v5 = sub_213D91C7C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16[-v6];
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  sub_213D906FC();
  v18 = AssociatedTypeWitness;
  v12 = sub_213D903FC();
  sub_213CDDDA4(v11, sub_213CD85D8, v17, AssociatedTypeWitness, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  sub_213CDF770(IndirectAttribute2, v7);
  (*(*(v4 - 8) + 56))(v7, 0, 1, v4);
  return sub_213D90FCC();
}

uint64_t sub_213CD7594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_213D9057C();
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = (&v14 - v11);
  sub_213D90FBC();
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v12, v8, v4);
  sub_213CDF810(v12, AssociatedTypeWitness);
  type metadata accessor for _MapContentOutputs.SetDependency(0);
  AGGraphSetIndirectDependency();
  return (*(v9 + 8))(v12, v4);
}

uint64_t sub_213CD77C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_213D9057C();
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  v27 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v31 = (&v24 - v15);
  type metadata accessor for _MapContentOutputs.SetSource(0);
  v30 = v3;
  sub_213D90FBC();
  v16 = *(v11 + 48);
  if (v16(v10, 1, v4) == 1)
  {
    return (*(v6 + 8))(v10, v5);
  }

  v25 = v6;
  v26 = v5;
  v18 = *(v11 + 32);
  v18(v31, v10, v4);
  v19 = v29;
  sub_213D90FBC();
  if (v16(v19, 1, v4) == 1)
  {
    (*(v11 + 8))(v31, v4);
    return (*(v25 + 8))(v19, v26);
  }

  else
  {
    v20 = v27;
    v18(v27, v19, v4);
    v21 = AssociatedTypeWitness;
    sub_213CDF810(v20, AssociatedTypeWitness);
    v22 = v31;
    sub_213CDF810(v31, v21);
    AGGraphSetIndirectAttribute();
    v23 = *(v11 + 8);
    v23(v20, v4);
    return (v23)(v22, v4);
  }
}

void sub_213CD7AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_213D9057C();
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  sub_213D90FBC();
  v15 = a2;
  v16 = a3;
  v9 = sub_213D903FC();
  sub_213CF3D9C(sub_213CD8B34, v14, MEMORY[0x277D84A98], v9, v10, &v17);
  (*(v6 + 8))(v8, v5);
  if ((v18 & 1) == 0)
  {
    v11 = v17;
    v12 = AGGraphGetAttributeSubgraph();
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    sub_213CD7CCC(v11, a2, a3);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
  }
}

uint64_t sub_213CD7CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v11[-v5];
  sub_213D906FC();
  v12 = AssociatedTypeWitness;
  v7 = sub_213D903FC();
  sub_213CDDDA4(v6, sub_213CD8C44, v11, AssociatedTypeWitness, MEMORY[0x277D84A98], v7, MEMORY[0x277D84AC0], v8);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return AGGraphSetIndirectAttribute();
}

void sub_213CD7F28(uint64_t a1)
{
  sub_213D90C5C();
  if (v1 <= 0x3F)
  {
    sub_213D9059C();
    if (v2 <= 0x3F)
    {
      sub_213D90F3C();
      if (v3 <= 0x3F)
      {
        sub_213CD8278(319, &qword_27C8E9C40, MEMORY[0x277CDE358], MEMORY[0x277CEF780]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for EmptyMapContent(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmptyMapContent(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_213CD81C4(uint64_t a1)
{
  sub_213D90FAC();
  if (v1 <= 0x3F)
  {
    sub_213CD8278(319, &qword_27C8E9C78, type metadata accessor for AnyAttribute, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213CD8278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_213CD82DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB330;
  if (!qword_27C8EB330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB330);
  }

  return result;
}

uint64_t sub_213CD8330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_213CD8390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECB80;
  if (!qword_27C8ECB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECB80);
  }

  return result;
}

unint64_t sub_213CD83E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB320;
  if (!qword_27C8EB320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB320);
  }

  return result;
}

unint64_t sub_213CD8438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9C90;
  if (!qword_27C8E9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9C90);
  }

  return result;
}

unint64_t sub_213CD848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBA80;
  if (!qword_27C8EBA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBA80);
  }

  return result;
}

unint64_t sub_213CD84E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB300;
  if (!qword_27C8EB300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB300);
  }

  return result;
}

void *sub_213CD8534(uint64_t a1, uint64_t a2)
{
  v6[5] = *MEMORY[0x277D85DE8];
  v6[2] = a2;
  v6[3] = a1;
  v3 = sub_213D903FC();
  return sub_213CDDDA4(v3, sub_213CD85F8, v6, MEMORY[0x277CEF7A8], MEMORY[0x277D84A98], v3, MEMORY[0x277D84AC0], v4);
}

uint64_t sub_213CD85F8@<X0>(_DWORD *a2@<X8>)
{
  result = sub_213D903EC();
  *a2 = result;
  return result;
}

uint64_t sub_213CD8678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_213D9057C();
  v5 = sub_213D91C7C();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v10 - v7, a1, v6);
  return sub_213D90FCC();
}

unint64_t sub_213CD8784()
{
  result = qword_27C8E9CA8;
  if (!qword_27C8E9CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9CA0, &unk_213D94360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9CA8);
  }

  return result;
}

unint64_t sub_213CD87E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9CB0[0];
  if (!qword_27C8E9CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8E9CB0);
  }

  return result;
}

unint64_t sub_213CD883C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EB310;
  if (!qword_27C8EB310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EB310);
  }

  return result;
}

uint64_t sub_213CD8900(uint64_t a1)
{
  result = sub_213D90FAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_10Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_213D90FAC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CD8A90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213CD8AC8(uint64_t a1)
{
  result = sub_213D90FAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_213CD8B34@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_213CDF810(a1, AssociatedTypeWitness);
  *a2 = result;
  return result;
}

uint64_t MapUserTrackingMode.hashValue.getter()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD8CFC()
{
  v1 = *v0;
  sub_213D91FBC();
  MEMORY[0x21604F190](v1);
  return sub_213D91FFC();
}

uint64_t sub_213CD8D70(uint64_t a1)
{
  v2 = *v1;
  sub_213D91FBC();
  MEMORY[0x21604F190](v2);
  return sub_213D91FFC();
}

unint64_t sub_213CD8DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9D58;
  if (!qword_27C8E9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9D58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapUserTrackingMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MapUserTrackingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t static ForEach<>._makeMapContent(content:inputs:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v75 = a2;
  v76 = a1;
  v73 = a9;
  v83 = *MEMORY[0x277D85DE8];
  v77 = a3;
  v78 = a4;
  v79 = a5;
  v80 = a6;
  v81 = a7;
  v82 = a8;
  v15 = _s21AttachCombinerVisitorVMa(0, &v77);
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x28223BE20](v15);
  v70 = &v62 - v16;
  v17 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a3;
  v78 = a4;
  v79 = a5;
  v80 = a6;
  v81 = a7;
  v82 = a8;
  StateVMa = _s9MakeStateVMa(0, &v77);
  v68 = *(StateVMa - 8);
  v69 = StateVMa;
  MEMORY[0x28223BE20](StateVMa);
  v67 = (&v62 - v20);
  v21 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v77 = a3;
  v78 = a4;
  v79 = a5;
  v80 = a6;
  v81 = a7;
  v82 = a8;
  v66 = a8;
  v27 = _s18AddCombinerVisitorVMa(0, &v77);
  MEMORY[0x28223BE20](v27);
  v29 = (&v62 - v28);
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  v65 = v26;
  sub_213CDEA2C(v26, v29, type metadata accessor for _MapContentOutputs);
  WitnessTable = swift_getWitnessTable();
  v31 = v27;
  v32 = v75;
  sub_213CD6C10(v29, v31, WitnessTable);
  v33 = a3;
  v77 = a3;
  v78 = a4;
  v34 = a4;
  v35 = a5;
  v79 = a5;
  v80 = a6;
  v36 = a6;
  v37 = a7;
  v81 = a7;
  v38 = sub_213D916BC();
  v64 = sub_213CDF810(v76, v38);
  v39 = v32;
  v40 = v74;
  sub_213CDDF50(v39, v74, type metadata accessor for _MapContentInputs);
  v76 = v29;
  sub_213CDDF50(v29, v23, type metadata accessor for _MapContentOutputs);
  v41 = AGSubgraphGetCurrent();
  if (!v41)
  {
    __break(1u);
  }

  v42 = v41;
  v43 = v33;
  v63 = v33;
  v44 = v66;
  v45 = sub_213CD9A0C(v33, v34, v35, v36, v37, v66);
  *(&v60 + 1) = v37;
  *(&v59 + 1) = v35;
  *&v60 = v36;
  *&v59 = v34;
  v46 = v67;
  v49 = sub_213CD9574(v64, v40, v23, v42, v45, v47, v48, v43, v67, v59, v60, v44);
  v75 = &v62;
  MEMORY[0x28223BE20](v49);
  v77 = v43;
  v78 = v34;
  v79 = v35;
  v80 = v36;
  v81 = v37;
  v82 = v44;
  v50 = _s9ItemStateVMa(0, &v77);
  v51 = v69;
  *&v60 = v50;
  *(&v60 + 1) = v69;
  v61 = swift_getWitnessTable();
  v52 = sub_213D903FC();
  sub_213CDDDA4(v46, sub_213CDDFD0, &v59, v51, MEMORY[0x277D84A98], v52, MEMORY[0x277D84AC0], v53);
  (*(v68 + 8))(v46, v51);
  v54 = v76;
  LODWORD(v42) = v77;
  v55 = v65;
  sub_213CDDF50(v76, v65, type metadata accessor for _MapContentOutputs);
  v56 = v70;
  sub_213CDEA2C(v55, v70, type metadata accessor for _MapContentOutputs);
  v77 = v63;
  v78 = v34;
  v79 = v35;
  v80 = v36;
  v81 = v37;
  v82 = v44;
  *(v56 + *(_s21AttachCombinerVisitorVMa(0, &v77) + 68)) = v42;
  v57 = v72;
  swift_getWitnessTable();
  sub_213CD7018();
  (*(v71 + 8))(v56, v57);
  return sub_213CDEA2C(v54, v73, type metadata accessor for _MapContentOutputs);
}

uint64_t sub_213CD9574@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, _DWORD *a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  *a9 = a1;
  v22 = a8;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  StateVMa = _s9MakeStateVMa(0, &v22);
  sub_213CDEA2C(a2, a9 + StateVMa[17], type metadata accessor for _MapContentInputs);
  result = sub_213CDEA2C(a3, a9 + StateVMa[18], type metadata accessor for _MapContentOutputs);
  *(a9 + StateVMa[19]) = a4;
  v21 = a9 + StateVMa[20];
  *v21 = a5;
  *(v21 + 1) = a6;
  *(v21 + 4) = a7;
  return result;
}

void *sub_213CD9658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  swift_allocObject();
  return sub_213CD96D4(a1, a2, a3, a4, a5, v6);
}

void *sub_213CD96D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = *v6;
  *(v6 + *(*v6 + 176)) = 0;
  v6[2] = a1;
  sub_213CDEA2C(a2, v6 + qword_27C8E9D70, type metadata accessor for _MapContentOutputs);
  v12 = *(*v6 + 152);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(v6 + v12, a4, AssociatedTypeWitness);
  (*(*(*(v11 + 88) - 8) + 32))(v6 + *(*v6 + 144), a3);
  *(v6 + *(*v6 + 160)) = a5;
  *(v6 + *(*v6 + 168)) = a6;
  return v6;
}

id *sub_213CD9880()
{
  v1 = *v0;

  sub_213CDE780(v0 + qword_27C8E9D70, type metadata accessor for _MapContentOutputs);
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 18));
  v2 = *(*v0 + 19);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

uint64_t sub_213CD99B8()
{
  v0 = sub_213CD9880();
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_213CD9A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v8 = _s4ItemCMa(0, v12);
  v9 = sub_213D91A3C();
  swift_getTupleTypeMetadata2();
  v10 = sub_213D91A3C();
  sub_213D2CADC(v10, a2, v8, a5);

  return v9;
}

uint64_t sub_213CD9AC4(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v19[0] = *(a1 + 16);
  v22 = v19[0];
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v7 = sub_213D916BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - v9;
  sub_213CDC254(v19 - v9);
  v11 = sub_213CD9CEC(v10, a1);
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = (v1 + *(a1 + 80));
    v14 = *v13;
    v15 = v13[1];
    LODWORD(v13) = *(v13 + 4);
    v20[0] = v14;
    v20[1] = v15;
    v21 = v13;
    MEMORY[0x28223BE20](result);
    v19[-2] = a1;
    v19[-1] = swift_getWitnessTable();
    v16 = *(a1 + 56);

    v22 = v19[0];
    v23 = v3;
    v24 = v4;
    v25 = v5;
    v26 = v6;
    v27 = v16;
    v17 = _s9ItemStateVMa(0, &v22);
    sub_213CDDDA4(v20, sub_213CDE750, &v19[-4], v17, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v18);
  }

  return result;
}

void *sub_213CD9CEC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v95 = a1;
  v77 = *(*(a2 + 24) - 8);
  MEMORY[0x28223BE20](a1);
  v88 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v6;
  v87 = sub_213D91C7C();
  v80 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v78 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v86 = &v70 - v10;
  v94 = *(a2 + 40);
  v11 = *(*(v94 + 8) + 8);
  v12 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v85 = &v70 - v14;
  v15 = sub_213D91C7C();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v18);
  AssociatedConformanceWitness = &v70 - v19;
  v93 = v11;
  v82 = *(swift_getAssociatedConformanceWitness() + 8);
  v90 = v18;
  v89 = swift_getAssociatedTypeWitness();
  v20 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v22 = &v70 - v21;
  v23 = *(v12 - 1);
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = AGSubgraphIsValid();
  if (!result)
  {
    return result;
  }

  v74 = v20;
  v71 = v23;
  v73 = result;
  v28 = *(a2 + 80);
  v92 = v3;
  v29 = (v3 + v28);
  ++*(v3 + v28 + 16);
  v30 = *(a2 + 32);
  v31 = *(a2 + 48);
  v99 = v12;
  v100 = v7;
  v75 = v22;
  v32 = v94;
  v101 = v30;
  v102 = v94;
  v103 = v31;
  sub_213D916BC();
  v96 = v26;
  sub_213D9166C();
  v91 = a2;
  v33 = *(a2 + 56);
  v99 = v12;
  v100 = v7;
  v101 = v30;
  v102 = v32;
  v103 = v31;
  v104 = v33;
  v34 = _s4ItemCMa(0, &v99);
  v105 = sub_213D91A3C();
  v70 = v29;
  v35 = v29[1];
  v76 = v29 + 1;
  v99 = v35;
  v94 = v34;
  v36 = v89;
  sub_213D9184C();

  swift_getWitnessTable();
  v84 = v7;
  v95 = v31;
  v98 = sub_213D91B5C();
  v37 = v96;
  v72 = v12;
  sub_213D91B8C();
  v38 = v75;
  sub_213D919AC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v39 = 0;
  v82 = (v79 + 6);
  v81 = (v79 + 4);
  v90 = (v77 + 16);
  v93 = (v77 + 8);
  ++v80;
  ++v79;
  while (1)
  {
    sub_213D91C8C();
    if ((*v82)(v17, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    v40 = v85;
    (*v81)(v85, v17, AssociatedTypeWitness);
    v41 = sub_213CDA75C(v40, v39, v91);
    v99 = v41;
    sub_213D91ABC();

    sub_213D91A8C();
    v42 = *(*v41 + 144);
    swift_beginAccess();
    v43 = v88;
    v44 = v84;
    (*v90)(v88, &v41[v42], v84);
    sub_213D91B4C();
    v45 = AssociatedTypeWitness;
    v46 = v86;
    sub_213D91B1C();

    v47 = v43;
    v36 = v89;
    v48 = v44;
    v37 = v96;
    (*v93)(v47, v48);
    v49 = v46;
    AssociatedTypeWitness = v45;
    (*v80)(v49, v87);
    (*v79)(v40, v45);
    if (__OFADD__(v39++, 1))
    {
      __break(1u);
      break;
    }
  }

  result = (*(v74 + 8))(v38, v36);
  v51 = v98;
  if ((v98 & 0xC000000000000001) != 0)
  {
    sub_213D91CEC();
    v52 = v84;
    result = sub_213D91B2C();
    v51 = v99;
    v53 = v100;
    v54 = v101;
    v55 = v102;
    v56 = v103;
  }

  else
  {
    v55 = 0;
    v57 = -1 << *(v98 + 32);
    v53 = v98 + 56;
    v54 = ~v57;
    v58 = -v57;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    else
    {
      v59 = -1;
    }

    v56 = v59 & *(v98 + 56);
    v52 = v84;
  }

  v60 = (v77 + 56);
  v89 = v54;
  v61 = (v54 + 64) >> 6;
  while (v51 < 0)
  {
    if (!sub_213D91CFC())
    {
      v63 = v78;
LABEL_28:
      (*v60)(v63, 1, 1, v52);
      (*(v71 + 8))(v37, v72);
      sub_213CDE778(v51);
      v68 = v105;
      v69 = v70;

      *v69 = v68;
      return v73;
    }

    v64 = v78;
    sub_213D91F4C();
    v63 = v64;
    swift_unknownObjectRelease();
LABEL_26:
    (*v60)(v63, 0, 1, v52);
    sub_213D9187C();
    sub_213D9183C();
    result = (*v93)(v63, v52);
    v67 = v97;
    if (v97)
    {
      AGSubgraphRemoveChild();
      *(v67 + *(*v67 + 176)) = 1;
    }

    v37 = v96;
  }

  if (v56)
  {
    v62 = v55;
    v63 = v78;
LABEL_25:
    v66 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    (*(v77 + 16))(v63, *(v51 + 48) + *(v77 + 72) * (v66 | (v62 << 6)), v52);
    goto LABEL_26;
  }

  v65 = v55;
  v63 = v78;
  while (1)
  {
    v62 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v62 >= v61)
    {
      goto LABEL_28;
    }

    v56 = *(v53 + 8 * v62);
    ++v65;
    if (v56)
    {
      v55 = v62;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

char *sub_213CDA75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v81 = a2;
  v7 = *(a3 + 40);
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v69 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v67 = v62 - v9;
  v10 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v10 - 8);
  v66 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v73 = v62 - v13;
  v14 = type metadata accessor for _MapContentInputs(0);
  MEMORY[0x28223BE20](v14 - 8);
  v72 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 24);
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v17);
  v64 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v62 - v20;
  v22 = *(a3 + 48);
  v63 = *(a3 + 32);
  *&v23 = v63;
  v68 = v7;
  *(&v23 + 1) = v7;
  v78 = v23;
  v65 = v8;
  *&v24 = v8;
  *(&v24 + 1) = v16;
  v79 = v24;
  v82 = v24;
  v83 = v23;
  v84 = v22;
  v25 = sub_213D916BC();
  v75 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v62 - v26;
  sub_213CDC254(v62 - v26);
  v71 = a1;
  v28 = v81;
  v76 = v25;
  v80 = v27;
  sub_213D9167C();
  v29 = v4;
  v74 = v4 + *(a3 + 80);
  v30 = (v74 + 8);
  v31 = *(a3 + 56);
  v82 = v79;
  v83 = v78;
  v84 = v22;
  v85 = v31;
  v32 = _s4ItemCMa(0, &v82);
  *&v78 = v21;
  v33 = v32;
  *&v79 = v16;
  sub_213D9188C();
  v34 = v86;
  if (v86)
  {
    v35 = *v86;
    v36 = *(*v86 + 176);
    if (v86[v36] == 1)
    {
      v86[v36] = 0;
      AGSubgraphAddChild();
      v35 = *v34;
    }

    v37 = *(v35 + 168);
    v38 = *(v74 + 4);
    v40 = v77;
    v39 = v78;
    v41 = v79;
    if (*&v34[v37] != v38)
    {
      v42 = *(v35 + 152);
      swift_beginAccess();
      (*(v69 + 24))(&v34[v42], v71, AssociatedTypeWitness);
      swift_endAccess();
      *&v34[*(*v34 + 160)] = v28;
      v43 = *(*v34 + 144);
      swift_beginAccess();
      (*(v40 + 24))(&v34[v43], v39, v41);
      swift_endAccess();
      *&v34[v37] = v38;
    }

    goto LABEL_8;
  }

  v62[1] = v33;
  v62[2] = v30;
  v44 = v68;
  v45 = AGSubgraphGetGraph();
  v46 = AGSubgraphCreate();

  v47 = v46;
  AGSubgraphAddChild();
  result = AGGraphGetCurrentAttribute();
  if (result != *MEMORY[0x277CEF7D0])
  {
    v49 = result;
    v50 = *v29;
    v51 = v72;
    sub_213CDDF50(v29 + *(a3 + 68), v72, type metadata accessor for _MapContentInputs);
    AGGraphClearUpdate();
    v52 = AGSubgraphGetCurrent();
    v62[0] = v47;
    AGSubgraphSetCurrent();
    v61 = v22;
    v60 = v44;
    v41 = v79;
    v53 = v73;
    v68 = v22;
    v39 = v78;
    v54 = v71;
    sub_213CDAF04(v50, v51, v78, v81, v80, v71, v49, v65, v73, v79, v63, v60, v61, v31);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    v55 = v53;
    v56 = v66;
    sub_213CDDF50(v55, v66, type metadata accessor for _MapContentOutputs);
    v40 = v77;
    v57 = *(v77 + 16);
    v58 = v64;
    v57(v64, v39, v41);
    v59 = v67;
    (*(v69 + 16))(v67, v54, AssociatedTypeWitness);
    LODWORD(v54) = *(v74 + 4);
    swift_allocObject();
    v34 = sub_213CD96D4(v62[0], v56, v58, v59, v81, v54);
    v57(v58, v39, v41);
    *&v82 = v34;
    sub_213D9187C();

    sub_213D9189C();
    sub_213CDE780(v73, type metadata accessor for _MapContentOutputs);
    sub_213CDE780(v72, type metadata accessor for _MapContentInputs);
LABEL_8:
    (*(v40 + 8))(v39, v41);
    (*(v75 + 8))(v80, v76);
    return v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDAF04@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v86 = a7;
  v83 = a6;
  v82 = a5;
  v75 = a4;
  v96 = a3;
  v94 = a2;
  v97 = a1;
  v91 = a9;
  v114 = *MEMORY[0x277D85DE8];
  v90 = sub_213D9057C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v63 - v15;
  v108 = a8;
  v109 = a10;
  v110 = a11;
  v111 = a12;
  v112 = a13;
  v113 = a14;
  v84 = _s5ChildVMa(0, &v108);
  v87 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = (&v63 - v16);
  v80 = *(*(a12 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v76 = &v63 - v17;
  v64 = a8;
  v77 = *(a8 - 8);
  MEMORY[0x28223BE20](v18);
  v74 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a11;
  v85 = *(a11 - 8);
  MEMORY[0x28223BE20](v20);
  v95 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for _MapContentInputs(0);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v93 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(a10 - 8);
  v25 = v73;
  MEMORY[0x28223BE20](v26);
  v92 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = a8;
  v109 = a10;
  v110 = a11;
  v111 = a12;
  v112 = a13;
  v113 = a14;
  v72 = a14;
  v28 = _s11ChildTraitsVMa(0, &v108);
  v69 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v63 - v30;
  v32 = *(v94 + *(v23 + 36));
  v70 = *(v25 + 16);
  v71 = v25 + 16;
  v33 = v92;
  v70(v92, v96, a10, v29);
  v68 = a13;
  v34 = v33;
  v35 = v64;
  v66 = a10;
  v36 = v65;
  v67 = a12;
  sub_213CDB900(v97, v32, v34, v75, v64, a10, v65, a12, v31, a13, a14);
  v106 = v28;
  WitnessTable = swift_getWitnessTable();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8E9FF8, &unk_213D94800);
  sub_213CDDDA4(v31, sub_213CDE810, v105, v28, MEMORY[0x277D84A98], v37, MEMORY[0x277D84AC0], v38);
  v75 = 0;
  (*(v69 + 8))(v31, v28);
  v39 = v108;
  v40 = v93;
  sub_213CDDF50(v94, v93, type metadata accessor for _MapContentInputs);
  *(v40 + *(v23 + 36)) = v39;
  v108 = v35;
  v109 = a10;
  v110 = v36;
  v111 = a12;
  v112 = a13;
  sub_213D916BC();
  v41 = sub_213D9168C();
  v42 = v74;
  sub_213D9166C();
  v43 = sub_213D91BAC();
  v44 = v78;
  v45 = v76;
  v46 = AssociatedTypeWitness;
  (*(v78 + 16))(v76);
  v43(&v108, 0);
  (*(v77 + 8))(v42, v35);
  v41(v45);

  (*(v44 + 8))(v45, v46);
  v47 = v92;
  v48 = v66;
  (v70)(v92, v96, v66);
  v49 = v81;
  v50 = v97;
  *v81 = v86;
  *(v49 + 4) = v50;
  v108 = v35;
  v109 = v48;
  v110 = v36;
  v111 = v67;
  v51 = v72;
  v112 = v68;
  v113 = v72;
  v52 = _s5ChildVMa(0, &v108);
  (*(v73 + 32))(v49 + *(v52 + 72), v47, v48);
  v53 = v84;
  v102 = v36;
  v103 = v84;
  v104 = swift_getWitnessTable();
  v54 = sub_213D903FC();
  v55 = MEMORY[0x277D84A98];
  v56 = MEMORY[0x277D84AC0];
  sub_213CDDDA4(v49, sub_213CDF734, v101, v53, MEMORY[0x277D84A98], v54, MEMORY[0x277D84AC0], v57);
  (*(v87 + 8))(v49, v53);
  LODWORD(v48) = v108;
  v99 = v36;
  v100 = v108;
  v58 = v95;
  sub_213CDDDA4(v95, sub_213CDE908, v98, v36, v55, MEMORY[0x277D839B0], v56, v59);
  v60 = v88;
  sub_213CDF770(v48, v88);
  v61 = v93;
  (*(v51 + 32))(v60, v93, v36, v51);
  (*(v89 + 8))(v60, v90);
  (*(v85 + 8))(v58, v36);
  return sub_213CDE780(v61, type metadata accessor for _MapContentInputs);
}

double sub_213CDB900@<D0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v19[0] = a5;
  v19[1] = a6;
  v19[2] = a7;
  v19[3] = a8;
  v19[4] = a10;
  v19[5] = a11;
  v15 = _s11ChildTraitsVMa(0, v19);
  (*(*(a6 - 8) + 32))(&a9[v15[18]], a3, a6);
  *&a9[v15[19]] = a4;
  v16 = v15[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
  v17 = swift_allocObject();
  *&result = 1;
  *(v17 + 16) = xmmword_213D94520;
  *(v17 + 32) = -1;
  *(v17 + 72) = 0;
  *&a9[v16] = v17;
  return result;
}

void sub_213CDB9E8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_213CDBA10(_OWORD *a1)
{
  v1 = a1[2];
  v4[0] = a1[1];
  v4[1] = v1;
  v4[2] = a1[3];
  _s9ItemStateVMa(0, v4);
  v2 = *AGGraphGetValue();

  return v2;
}

uint64_t sub_213CDBA90@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_213D916BC();
  Value = AGGraphGetValue();
  return (*(*(v3 - 8) + 16))(a2, Value, v3);
}

uint64_t sub_213CDBB28(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v57 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v56 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 40);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v5 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v51 = v48 - v9;
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v13 = *(a1 + 48);
  *&v14 = v8;
  *(&v14 + 1) = v12;
  v58 = v3;
  *&v15 = v3;
  *(&v15 + 1) = v6;
  v63 = v15;
  v64 = v14;
  v66 = v14;
  v67 = v15;
  v68 = v13;
  v59 = sub_213D916BC();
  v49 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v17 = v48 - v16;
  v53 = v7;
  v18 = swift_getAssociatedTypeWitness();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x28223BE20](v18);
  v60 = v48 - v19;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v1, a1, v21);
  v25 = *(a1 + 72);
  sub_213CDBA10(a1);
  v26 = *(a1 + 56);
  v66 = v64;
  v67 = v63;
  v68 = v13;
  v69 = v26;
  _s4ItemCMa(0, &v66);
  sub_213D9188C();

  result = (*(*(v12 - 8) + 8))(&v23[v25], v12);
  v28 = v65;
  if (v65)
  {
    v29 = *(v65 + *(*v65 + 168));
    sub_213CDBA10(a1);
    v31 = v30;

    if (v29 == v31)
    {
      v48[1] = v1;
      sub_213CDBA90(v17);
      v32 = v50;
      v33 = v59;
      sub_213D9166C();
      *&v64 = *(v49 + 8);
      (v64)(v17, v33);
      v34 = *(*v28 + 152);
      swift_beginAccess();
      v35 = v54;
      v36 = v28 + v34;
      v37 = v51;
      v38 = AssociatedTypeWitness;
      (*(v54 + 16))(v51, v36, AssociatedTypeWitness);
      v39 = v32;
      v40 = sub_213D91BAC();
      (*(v61 + 16))(v60);
      v40(&v66, 0);
      (*(v35 + 8))(v37, v38);
      (*(v52 + 8))(v39, v8);
      sub_213CDBA90(v17);
      v41 = v59;
      v42 = sub_213D9168C();
      (v64)(v17, v41);
      v43 = v56;
      v44 = v60;
      v42(v60);

      MEMORY[0x28223BE20](v45);
      v48[-2] = a1;
      v48[-1] = swift_getWitnessTable();
      v46 = v58;
      sub_213CDDDA4(v43, sub_213CDF74C, &v48[-4], v58, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v47);

      (*(v57 + 8))(v43, v46);
      return (*(v61 + 8))(v44, v62);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_213CDC254@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_213D916BC();
  Value = AGGraphGetValue();
  return (*(*(v3 - 8) + 16))(a2, Value, v3);
}

uint64_t sub_213CDC2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *MEMORY[0x277CEF7D0];
  v5 = sub_213D9100C();
  v6 = v5;
  if (v3 == v4)
  {
    v7 = *(v5 - 8);
    v8 = 1;
  }

  else
  {
    Value = AGGraphGetValue();
    v12 = *(v6 - 8);
    (*(v12 + 16))(a1, Value, v6);
    v7 = v12;
    v8 = 0;
  }

  v10 = *(v7 + 56);

  return v10(a1, v8, 1, v6);
}

uint64_t sub_213CDC44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 24);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 48);
  v10 = type metadata accessor for TagValueTraitKey.Value(0, v5, v8, v9);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = &v43 - v11;
  v51 = *(a1 + 16);
  v52 = v5;
  v47 = v5;
  v53 = *(a1 + 32);
  v45 = v8;
  v54 = v8;
  v49 = sub_213D916BC();
  v12 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  MEMORY[0x28223BE20](v15 - 8);
  v50 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = v2;
  sub_213CDC2EC(&v43 - v18);
  v21 = sub_213D9100C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 48);
  if (v23(v19, 1, v21) == 1)
  {
    sub_213D90FFC();
    v24 = v23(v19, 1, v21);
    if (v24 != 1)
    {
      v24 = sub_213CDF4FC(v19);
    }
  }

  else
  {
    v24 = (*(v22 + 32))(a2, v19, v21);
  }

  v27 = *(v2 + *(a1 + 76));
  v51 = v27;
  LOBYTE(v52) = 0;
  sub_213CDF564(v24, v25, v26);
  v48 = a2;
  sub_213D9102C();
  sub_213CDC254(v14);
  v28 = v49;
  v29 = sub_213D9163C();
  (*(v12 + 8))(v14, v28);
  if (v29)
  {
    v51 = v27;
    LOBYTE(v52) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA198, &qword_213D94A48);
    sub_213CDF660();
    v30 = v48;
    sub_213D9102C();
    v31 = v50;
    (*(v22 + 16))(v50, v30, v21);
    (*(v22 + 56))(v31, 0, 1, v21);
    v51 = v27;
    v55 = 0;
  }

  else
  {
    v32 = *(a1 + 72);
    v34 = v43;
    v33 = v44;
    v49 = *(v44 + 16);
    v35 = v47;
    (v49)(v43, v20 + v32, v47);
    (*(v33 + 56))(v34, 0, 1, v35);
    type metadata accessor for TagValueTraitKey(0, v35, v45, v36);
    swift_getWitnessTable();
    v37 = v48;
    sub_213D9102C();
    v31 = v50;
    (*(v22 + 16))(v50, v37, v21);
    (*(v22 + 56))(v31, 0, 1, v21);
    (v49)(v46, v20 + v32, v35);
    sub_213D91D4C();
    v55 = 1;
  }

  v38 = sub_213D71C7C(v31, &v51);
  sub_213CDF5B8(&v51);
  v39 = sub_213CDF4FC(v31);
  v51 = v38;
  sub_213CDF60C(v39, v40, v41);
  return sub_213D9102C();
}

uint64_t sub_213CDC980@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_213D9100C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_213CDC9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_213D9057C();
  v9 = sub_213D91C7C();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = *(a2 + 32);
  v13 = *(a2 + 56);
  v19 = *MEMORY[0x277CEF7D0];
  v21 = AssociatedTypeWitness;
  v24 = *(a2 + 16);
  v25 = v12;
  v26 = a3;
  v27 = *(a2 + 40);
  v28 = v13;
  v29 = a4;
  v14 = _s25ForEachPreferenceCombinerVMa(0, &v24);
  v22 = v14;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_213D903FC();
  sub_213CDDDA4(&v19, sub_213CDE72C, v20, v14, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);
  sub_213CDF770(v24, v11);
  (*(*(v8 - 8) + 56))(v11, 0, 1, v8);
  return sub_213D90FCC();
}

uint64_t sub_213CDCBFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_213D9057C();
  v9 = sub_213D91C7C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = (&v27 - v15);
  sub_213D90FBC();
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v16, v12, v8);
  v18 = sub_213CDF810(v16, AssociatedTypeWitness);
  MEMORY[0x28223BE20](v18);
  v19 = a2[2];
  v20 = a2[3];
  *(&v27 - 10) = v19;
  *(&v27 - 9) = v20;
  v21 = a2[4];
  v22 = a2[5];
  *(&v27 - 8) = v21;
  *(&v27 - 7) = a3;
  v23 = a2[6];
  v24 = a2[7];
  *(&v27 - 6) = v22;
  *(&v27 - 5) = v23;
  *(&v27 - 4) = v24;
  *(&v27 - 3) = a4;
  *(&v27 - 2) = v4;
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = a3;
  v29[4] = v22;
  v29[5] = v23;
  v29[6] = v24;
  v29[7] = a4;
  v25 = _s25ForEachPreferenceCombinerVMa(0, v29);
  MEMORY[0x28223BE20](v25);
  *(&v27 - 4) = v26;
  *(&v27 - 3) = sub_213CDE944;
  *(&v27 - 2) = (&v27 - 12);
  AGGraphMutateAttribute();
  return (*(v13 + 8))(v16, v8);
}

uint64_t sub_213CDCEBC(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v17 = *(a2 + *(_s21AttachCombinerVisitorVMa(0, &v19) + 68));
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v25 = a9;
  v26 = a10;
  result = _s25ForEachPreferenceCombinerVMa(0, &v19);
  *a1 = v17;
  return result;
}

uint64_t sub_213CDCF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*MEMORY[0x277CEF7D0] == a1)
  {
    return 0;
  }

  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a6;
  v10[4] = a7;
  v10[5] = a8;
  _s9ItemStateVMa(0, v10);
  v8 = *AGGraphGetValue();

  return v8;
}

uint64_t sub_213CDD02C@<X0>(uint64_t a3@<X8>)
{
  sub_213D906FC();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a3, 0, 1, AssociatedTypeWitness);
}

uint64_t sub_213CDD0CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  LODWORD(v85) = a1;
  v80 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v71 = &v61 - v18;
  v78 = v19;
  v20 = sub_213D9057C();
  v77 = sub_213D91C7C();
  v72 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v79 = &v61 - v21;
  v22 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v22 - 8);
  v83 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = *(v20 - 8);
  MEMORY[0x28223BE20](v24);
  v76 = (&v61 - v25);
  v60 = a10;
  v26 = a2;
  v27 = a2;
  v62 = a3;
  v63 = a4;
  v28 = a6;
  v29 = a6;
  v30 = a7;
  v31 = a7;
  v32 = a8;
  result = sub_213CDCF78(v85, v27, a3, a4, a5, v29, v31, a8);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v34 = result;
  v85 = a10;
  sub_213D906FC();

  v67 = v26;
  v86[0] = v26;
  v35 = v62;
  v36 = v63;
  v86[1] = v62;
  v86[2] = v63;
  v68 = v28;
  v86[3] = v28;
  v86[4] = v30;
  v69 = v30;
  v70 = v32;
  v86[5] = v32;
  v37 = _s4ItemCMa(0, v86);
  v38 = sub_213D91A7C();
  v84 = a5;
  v39 = v79;
  if (!v38)
  {
  }

  v40 = v36;
  v82 = (v74 + 6);
  v73 = (v74 + 4);
  ++v74;
  v66 = (v81 + 16);
  v65 = (v81 + 8);
  v64 = (v81 + 32);
  ++v72;
  LODWORD(v81) = 1;
  v41 = 4;
  v75 = v37;
  while (1)
  {
    v42 = v41 - 4;
    v43 = sub_213D91A5C();
    sub_213D91A0C();
    if ((v43 & 1) == 0)
    {
      break;
    }

    v44 = *(v34 + 8 * v41);

    v45 = v41 - 3;
    if (__OFADD__(v42, 1))
    {
      goto LABEL_15;
    }

LABEL_8:
    v46 = v83;
    sub_213CDDF50(v44 + qword_27C8E9D70, v83, type metadata accessor for _MapContentOutputs);
    sub_213D90FBC();
    v47 = sub_213D90FAC();
    (*(*(v47 - 8) + 8))(v46, v47);
    if ((*v82)(v39, 1, v20) == 1)
    {

      (*v72)(v39, v77);
    }

    else
    {
      v48 = v76;
      (*v73)(v76, v39, v20);
      v49 = v78;
      v50 = sub_213CDF810(v48, v78);
      if (v81)
      {
        Value = AGGraphGetValue();
        v52 = v20;
        v53 = v71;
        (*v66)(v71, Value, v49);

        (*v74)(v48, v52);
        v54 = v80;
        (*v65)(v80, v49);
        v55 = v53;
        v20 = v52;
        (*v64)(v54, v55, v49);
      }

      else
      {
        MEMORY[0x28223BE20](v50);
        *(&v61 - 10) = v67;
        *(&v61 - 9) = v35;
        *(&v61 - 8) = v40;
        *(&v61 - 7) = v56;
        v57 = v69;
        *(&v61 - 6) = v68;
        *(&v61 - 5) = v57;
        v58 = v85;
        *(&v61 - 4) = v70;
        *(&v61 - 3) = v58;
        LODWORD(v60) = v59;
        sub_213D9070C();

        (*v74)(v48, v20);
      }

      LODWORD(v81) = 0;
      v39 = v79;
    }

    ++v41;
    if (v45 == sub_213D91A7C())
    {
    }
  }

  v44 = sub_213D91DAC();
  v45 = v41 - 3;
  if (!__OFADD__(v42, 1))
  {
    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_213CDD78C(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_213D91C7C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_213CDD02C(v7);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = (*(v8 + 32))(v11, v7, AssociatedTypeWitness);
  MEMORY[0x28223BE20](v13);
  v15[-2] = a2;
  v15[-1] = swift_getWitnessTable();
  sub_213D48E14(v11, sub_213CDF6C4, &v15[-4], AssociatedTypeWitness, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v14);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t ForEach<>.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_213D9165C();

  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t ForEach<>.init(_:id:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_213D9165C();

  v10 = *(*(a5 - 8) + 8);

  return v10(a1, a5);
}

uint64_t ForEach<>.init<>(_:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a3;
  v10[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8E9D60, &qword_213D94560);
  sub_213CDE014();
  sub_213D9164C();
}

uint64_t sub_213CDDDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_213CDDE80@<X0>(_DWORD *a5@<X8>)
{
  sub_213CDB9F8();
  result = sub_213D903EC();
  *a5 = result;
  return result;
}

uint64_t sub_213CDDF14@<X0>(_BYTE *a3@<X8>)
{
  result = AGGraphSetValue();
  *a3 = result;
  return result;
}

uint64_t sub_213CDDF50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_213CDE014()
{
  result = qword_27C8E9D68;
  if (!qword_27C8E9D68)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8E9D60, &qword_213D94560);
    sub_213CDE0A0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9D68);
  }

  return result;
}

unint64_t sub_213CDE0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8ECBC0;
  if (!qword_27C8ECBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8ECBC0);
  }

  return result;
}

uint64_t sub_213CDE110(void *a1)
{
  result = sub_213D90FAC();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_getAssociatedTypeWitness();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_213CDE298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_213CDE2F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
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

uint64_t sub_213CDE33C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_213CDE37C(uint64_t a1)
{
  result = type metadata accessor for _MapContentOutputs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_213CDE410(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  sub_213D916BC();
  v7 = sub_213D903FC();
  if (v8 <= 0x3F)
  {
    v24 = 0;
    v29 = v7;
    v9 = type metadata accessor for _MapContentInputs(319);
    if (v10 <= 0x3F)
    {
      v25 = 0;
      v30 = v9;
      v11 = type metadata accessor for _MapContentOutputs(319);
      if (v12 <= 0x3F)
      {
        v26 = 0;
        v31 = v11;
        type metadata accessor for Subgraph(319);
        if (v14 <= 0x3F)
        {
          v27 = 0;
          v32 = v13;
          v15 = a1[7];
          v18 = v2;
          v19 = v3;
          v20 = v4;
          v21 = v5;
          v22 = v6;
          v23 = v15;
          v16 = _s9ItemStateVMa(319, &v18);
          if (v17 <= 0x3F)
          {
            v28 = 0;
            v33 = v16;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213CDE550(_OWORD *a1)
{
  result = type metadata accessor for _MapContentOutputs(319);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v4 = a1[2];
    v6[0] = a1[1];
    v6[1] = v4;
    v6[2] = a1[3];
    _s9ItemStateVMa(255, v6);
    result = sub_213D903FC();
    if (v5 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MapContentOutputs(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213CDE780(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CDE878@<X0>(_DWORD *a2@<X8>)
{
  sub_213CDB9F8();
  result = sub_213D903EC();
  *a2 = result;
  return result;
}

uint64_t sub_213CDE908@<X0>(_BYTE *a2@<X8>)
{
  result = AGGraphSetValue();
  *a2 = result;
  return result;
}

uint64_t (*sub_213CDE9A4())()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 24);
  *(v2 + 24) = v3;
  *(v2 + 40) = v3;
  return sub_213CDEA00;
}

uint64_t sub_213CDEA2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_213CDEA94(uint64_t a1)
{
  sub_213D916BC();
  sub_213D903FC();
  if (v1 <= 0x3F)
  {
    sub_213CDEEDC(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_213CDEB78(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = *(*(*(a3 + 24) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((v8 + ((v6 + 8) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((((v8 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_213CDECE8(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 24) - 8) + 64) + 7;
  v10 = ((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
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
      result = ((((result + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (((&result[v9] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}

void sub_213CDEEDC(uint64_t a1)
{
  if (!qword_27C8E9C40)
  {
    sub_213D9100C();
    v1 = sub_213D903DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8E9C40);
    }
  }
}

uint64_t sub_213CDEF3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v10 = v2;
  v11 = v1;
  v12 = v3;
  v13 = v4;
  v9 = *(a1 + 48);
  v14 = v9;
  _s9ItemStateVMa(255, &v10);
  result = sub_213D903FC();
  if (v6 <= 0x3F)
  {
    v15 = 0;
    v18 = result;
    v10 = v2;
    v11 = v1;
    v12 = v3;
    v13 = v4;
    *&v14 = v9;
    sub_213D916BC();
    result = sub_213D903FC();
    if (v7 <= 0x3F)
    {
      v16 = 0;
      v19 = result;
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v17 = 0;
        v20 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_213CDF038(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_213CDF1A0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = (((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v8 + 4) & ~v8;

  v18(v19);
}

uint64_t sub_213CDF3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_213CDF45C@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Value = AGGraphGetValue();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, Value, AssociatedTypeWitness);
}

uint64_t sub_213CDF4FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA180, &qword_213D94A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_213CDF564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA188;
  if (!qword_27C8EA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA188);
  }

  return result;
}

unint64_t sub_213CDF60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA190;
  if (!qword_27C8EA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA190);
  }

  return result;
}

unint64_t sub_213CDF660()
{
  result = qword_27C8EA1A0;
  if (!qword_27C8EA1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA198, &qword_213D94A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1A0);
  }

  return result;
}

uint64_t sub_213CDF770@<X0>(int a1@<W0>, uint64_t a3@<X8>)
{
  v5 = a1;
  result = sub_213D9057C();
  if (*(*(result - 8) + 64) == 4)
  {
    return (*(*(result - 8) + 16))(a3, &v5, result);
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDF810(unsigned int *a1, uint64_t a2)
{
  v3 = sub_213D9057C();
  v5 = *(v3 - 8);
  result = v3 - 8;
  if (*(v5 + 64) == 4)
  {
    return *a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_213CDF85C(uint64_t a1)
{
  v27 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = *(type metadata accessor for MapPitchToggleConfig(0) + 28);
  v13 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v11, *MEMORY[0x277CDF440], v2);
  v14 = sub_213D9050C();
  v26 = *(v3 + 8);
  v26(v11, v2);
  v15 = *(v3 + 16);
  v16 = (v3 + 88);
  if ((v14 & 1) == 0)
  {
    v15(v5, v1 + v12, v2);
    v22 = (*v16)(v5, v2);
    if (v22 == *MEMORY[0x277CDF418] || v22 == *MEMORY[0x277CDF438] || v22 == v13)
    {
      return 1;
    }

    v25 = v22 == *MEMORY[0x277CDF420] || v22 == *MEMORY[0x277CDF410];
    v8 = v5;
    if (!v25)
    {
      goto LABEL_26;
    }

    return 2;
  }

  v15(v8, v27, v2);
  v17 = (*v16)(v8, v2);
  if (v17 == *MEMORY[0x277CDF418] || v17 == *MEMORY[0x277CDF438] || v17 == v13)
  {
    return 1;
  }

  if (v17 == *MEMORY[0x277CDF420] || v17 == *MEMORY[0x277CDF410])
  {
    return 2;
  }

LABEL_26:
  v26(v8, v2);
  return 1;
}

uint64_t sub_213CDFAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213D90C0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213CE2C28(v2, &v14 - v9, &qword_27C8EC550, &qword_213D94A80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D90A6C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213CDFCF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MapPitchToggle(0);
  sub_213CE2C28(v1 + *(v10 + 20), v9, &qword_27C8EBAF0, &qword_213D9A2A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213D9051C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_213CDFEF8()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for MapPitchToggle(0) + 24);
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_213D91BDC();
    v8 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    j__swift_release(v6);
    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_213CE004C()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MapPitchToggle(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_213CE01A4()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for MapPitchToggle(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_213D91BDC();
    v7 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9[15];
  }

  return v6;
}

uint64_t MapPitchToggle.init(scope:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EC550, &qword_213D94A80);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for MapPitchToggle(0);
  v7 = v6[5];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAF0, &qword_213D9A2A0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + v6[6];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a3 + v6[7];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = a3 + v6[8];
  result = swift_getKeyPath();
  *v10 = result;
  v10[8] = 0;
  v12 = a3 + v6[9];
  *v12 = a1;
  v12[8] = a2 & 1;
  return result;
}

uint64_t MapPitchToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1A8, &qword_213D94B40);
  MEMORY[0x28223BE20](v55);
  v45 = &v43 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B0, &qword_213D94B48);
  MEMORY[0x28223BE20](v52);
  v54 = &v43 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA1B8, &qword_213D94B50);
  MEMORY[0x28223BE20](v53);
  v44 = &v43 - v4;
  v5 = type metadata accessor for MapControlsConfig(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D9051C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_213D90A6C();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapPitchToggleConfig(0);
  v48 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = sub_213CE01A4();
  sub_213CDFAF0(v13);
  sub_213CDFCF0(v10);
  v21 = sub_213CDFEF8();
  if (v20 == 3)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  v16[1] = v22;
  (*(v46 + 32))(&v16[v14[6]], v13, v47);
  (*(v49 + 32))(&v16[v14[7]], v10, v50);
  *&v16[v14[8]] = v21;
  v23 = v19;
  *v16 = 1;
  sub_213CE1818(v16, v19);
  v24 = v19;
  v25 = v51;
  sub_213CE1A94(v24, v51, type metadata accessor for MapPitchToggleConfig);
  (*(v48 + 56))(v25, 0, 1, v14);
  v26 = v6[7];
  v27 = type metadata accessor for MapScaleViewConfig(0);
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  v28 = v6[8];
  v29 = type metadata accessor for MapUserLocationButtonConfig(0);
  (*(*(v29 - 8) + 56))(v25 + v28, 1, 1, v29);
  v30 = v6[9];
  v31 = type metadata accessor for MapCompassConfig(0);
  (*(*(v31 - 8) + 56))(v25 + v30, 1, 1, v31);
  *(v25 + v6[10]) = 2;
  *(v25 + v6[11]) = 2;
  *(v25 + v6[12]) = 2;
  if (sub_213CE004C())
  {
    v32 = sub_213D9149C();
    v33 = v44;
    sub_213CE1A94(v25, &v44[*(v53 + 36)], type metadata accessor for MapControlsConfig);
    *v33 = v32;
    v34 = &qword_27C8EA1B8;
    v35 = &qword_213D94B50;
    sub_213CE2C28(v33, v54, &qword_27C8EA1B8, &qword_213D94B50);
  }

  else
  {
    v36 = type metadata accessor for _MapPitchToggle(0);
    v33 = v45;
    sub_213CE1A94(v23, &v45[*(v36 + 20)], type metadata accessor for MapPitchToggleConfig);
    v37 = (v1 + *(type metadata accessor for MapPitchToggle(0) + 36));
    v38 = *v37;
    v39 = *(v37 + 8);
    *v33 = swift_getKeyPath();
    *(v33 + 8) = 0;
    v40 = v33 + *(v36 + 24);
    *v40 = v38;
    *(v40 + 8) = v39;
    v41 = v54;
    *(v33 + *(v55 + 36)) = 257;
    v34 = &qword_27C8EA1A8;
    v35 = &qword_213D94B40;
    sub_213CE2C28(v33, v41, &qword_27C8EA1A8, &qword_213D94B40);
  }

  swift_storeEnumTagMultiPayload();
  sub_213CE189C();
  sub_213CE198C();
  sub_213D90E5C();
  sub_213CD8330(v33, v34, v35);
  sub_213CE1A34(v25, type metadata accessor for MapControlsConfig);
  return sub_213CE1A34(v23, type metadata accessor for MapPitchToggleConfig);
}

uint64_t sub_213CE0AB0()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v6 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v5, 0);
    (*(v2 + 8))(v4, v1);
    return v8[1];
  }

  return v5;
}

uint64_t sub_213CE0C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CE20A4(&qword_27C8EA260, &unk_213D94C70);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_213CE0C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_213CE20A4(&qword_27C8EA260, &unk_213D94C70);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_213CE0D04(uint64_t a1)
{
  sub_213CE20A4(&qword_27C8EA260, &unk_213D94C70);
  sub_213D90E1C();
  __break(1u);
}

id sub_213CE0D48()
{
  v1 = v0;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_213D90A6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for _MapPitchToggle(0);
  v11 = v0 + *(v10 + 24);
  if (*(v11 + 8))
  {
    goto LABEL_7;
  }

  v12 = *v11;
  v13 = sub_213CE0AB0();
  if (!*(v13 + 16) || (v14 = sub_213CE22D4(v12, MEMORY[0x277CE1440], sub_213CE255C), (v15 & 1) == 0))
  {

LABEL_7:
    v19 = [objc_allocWithZone(MEMORY[0x277CD4EF8]) init];
    goto LABEL_8;
  }

  sub_213CE2A1C(*(v13 + 56) + 8 * v14, v27);

  sub_213CE2A78(v27, v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_213CE2AD4(v28);
    goto LABEL_7;
  }

  v17 = Strong;
  v18 = [objc_opt_self() pitchButtonWithMapView_];

  sub_213CE2AD4(v28);
  v19 = v18;
LABEL_8:
  v20 = v1 + *(v10 + 20);
  v21 = qword_213D94D58[*(v20 + 1)];
  v22 = v19;
  [v22 setVisibility_];
  v23 = type metadata accessor for MapPitchToggleConfig(0);
  (*(v7 + 16))(v9, v20 + *(v23 + 24), v6);
  [v22 _setBackgroundStyle_];
  (*(v3 + 16))(v5, v20 + *(v23 + 28), v2);
  v24 = (*(v3 + 88))(v5, v2);
  v25 = 1;
  if (v24 != *MEMORY[0x277CDF418] && v24 != *MEMORY[0x277CDF438] && v24 != *MEMORY[0x277CDF440])
  {
    v25 = 2;
    if (v24 != *MEMORY[0x277CDF420] && v24 != *MEMORY[0x277CDF410])
    {
      (*(v3 + 8))(v5, v2, 2);
      v25 = 1;
    }
  }

  [v22 _setControlSize_];

  return v22;
}

id sub_213CE10E0(id a1)
{
  v2 = v1;
  v4 = sub_213D9051C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D90A6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _MapPitchToggle(0);
  v13 = v1 + *(v12 + 24);
  if ((*(v13 + 8) & 1) == 0)
  {
    v27 = a1;
    v14 = *v13;
    v15 = sub_213CE0AB0();
    if (*(v15 + 16) && (v16 = sub_213CE22D4(v14, MEMORY[0x277CE1440], sub_213CE255C), (v17 & 1) != 0))
    {
      sub_213CE2A1C(*(v15 + 56) + 8 * v16, v28);

      sub_213CE2A78(v28, v29);
      Strong = swift_unknownObjectWeakLoadStrong();
      a1 = v27;
      [v27 setMapView_];

      sub_213CE2AD4(v29);
    }

    else
    {

      a1 = v27;
    }
  }

  v19 = v2 + *(v12 + 20);
  [a1 setVisibility_];
  v20 = type metadata accessor for MapPitchToggleConfig(0);
  (*(v9 + 16))(v11, v19 + *(v20 + 24), v8);
  [a1 _setBackgroundStyle_];
  (*(v5 + 16))(v7, v19 + *(v20 + 28), v4);
  v21 = (*(v5 + 88))(v7, v4);
  if (v21 == *MEMORY[0x277CDF418] || v21 == *MEMORY[0x277CDF438] || v21 == *MEMORY[0x277CDF440])
  {
    goto LABEL_16;
  }

  v24 = 2;
  if (v21 != *MEMORY[0x277CDF420] && v21 != *MEMORY[0x277CDF410])
  {
    (*(v5 + 8))(v7, v4, 2);
LABEL_16:
    v24 = 1;
  }

  return [a1 _setControlSize_];
}

uint64_t sub_213CE14F0(uint64_t a1)
{
  v2 = sub_213D9051C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return MEMORY[0x21604DCA0](v5);
}

void *sub_213CE15B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CE2CE4(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

void *sub_213CE1654@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CE2C90(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

void *sub_213CE16F0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_213CE2BD0(a2, a3, a4);
  result = sub_213D90C1C();
  *a1 = v6;
  return result;
}

uint64_t sub_213CE1740(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_213CE2BD0(a1, a2, a3);

  return sub_213D90C2C();
}

uint64_t sub_213CE17A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_213D90A7C();
  *a1 = result;
  return result;
}

uint64_t sub_213CE1818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapPitchToggleConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213CE189C()
{
  result = qword_27C8EA1C0;
  if (!qword_27C8EA1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA1B8, &qword_213D94B50);
    sub_213CE1928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1C0);
  }

  return result;
}

unint64_t sub_213CE1928()
{
  result = qword_27C8EA1C8;
  if (!qword_27C8EA1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA1D0, &qword_213D94B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1C8);
  }

  return result;
}

unint64_t sub_213CE198C()
{
  result = qword_27C8EA1D8;
  if (!qword_27C8EA1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA1A8, &qword_213D94B40);
    sub_213CE20A4(&qword_27C8EA1E0, &unk_213D94D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA1D8);
  }

  return result;
}

uint64_t sub_213CE1A34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213CE1A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_213CE1B40(uint64_t a1)
{
  sub_213CE1CD4(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8]);
  if (v1 <= 0x3F)
  {
    sub_213CE1CD4(319, &qword_27C8EC520, MEMORY[0x277CDF450]);
    if (v2 <= 0x3F)
    {
      sub_213CE1D28(319, &qword_27C8EA208, &qword_27C8EA210, &unk_213D94C00);
      if (v3 <= 0x3F)
      {
        sub_213CE2014(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_213CE1D28(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750);
          if (v5 <= 0x3F)
          {
            sub_213CE2014(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213CE1CD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_213D9052C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213CE1D28(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_213D9052C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_213CE1D7C()
{
  result = qword_27C8EA228;
  if (!qword_27C8EA228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EA230, &unk_213D94C10);
    sub_213CE189C();
    sub_213CE198C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA228);
  }

  return result;
}

void sub_213CE1E30(uint64_t a1)
{
  sub_213D90A6C();
  if (v1 <= 0x3F)
  {
    sub_213D9051C();
    if (v2 <= 0x3F)
    {
      sub_213CE2014(319, &qword_27C8EA248, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213CE1F30(uint64_t a1)
{
  sub_213CE2014(319, &qword_27C8E9760, &type metadata for MapScopeRegistry, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MapPitchToggleConfig(319);
    if (v2 <= 0x3F)
    {
      sub_213CE2014(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213CE2014(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_213CE20A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _MapPitchToggle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_213CE20E8(uint64_t a1)
{
  v2 = sub_213D91FAC();

  return sub_213CE24F0(a1, v2);
}

unint64_t sub_213CE2158(uint64_t a1)
{
  sub_213D9193C();
  sub_213D91FBC();
  sub_213D9195C();
  v2 = sub_213D91FFC();

  return sub_213CE25F8(a1, v2);
}

unint64_t sub_213CE21EC(uint64_t a1)
{
  sub_213D91FBC();
  MEMORY[0x21604F190](a1);
  v2 = sub_213D91FFC();

  return sub_213CE24F0(a1, v2);
}

uint64_t sub_213CE22D4(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_213D91FBC();
  a2(v8, a1);
  v5 = sub_213D91FFC();

  return a3(a1, v5);
}

unint64_t sub_213CE24F0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_213CE255C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      if (sub_213D9178C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_213CE25F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_213D9193C();
      v8 = v7;
      if (v6 == sub_213D9193C() && v8 == v9)
      {
        break;
      }

      v11 = sub_213D91F5C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_213CE26FC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_213D6F51C(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_213CE27B4(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_213CE2B34(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_213D91C5C();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_213CE2880(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_213D91C5C();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_213CE2948(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (sub_213D904DC())
  {
    v5 = type metadata accessor for MapPitchToggleConfig(0);
    if (sub_213D90A2C() & 1) != 0 && (sub_213D9050C())
    {
      v6 = *(v5 + 32);
      v7 = *&a2[v6];
      if (*&a1[v6])
      {
        if (v7)
        {

          v8 = sub_213D9147C();

          if (v8)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_213CE2B28(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_213CE2B34(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_213CE2BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8E9788;
  if (!qword_27C8E9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8E9788);
  }

  return result;
}

uint64_t sub_213CE2C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_213CE2C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA268;
  if (!qword_27C8EA268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA268);
  }

  return result;
}

unint64_t sub_213CE2CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA270;
  if (!qword_27C8EA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA270);
  }

  return result;
}

uint64_t MapContent.tint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  (*(v8 + 16))(v10, a1, a3);
  v14 = sub_213D9064C();
  sub_213D74C28(KeyPath, &v14, a2);
}

uint64_t sub_213CE2EA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  sub_213D74C28(KeyPath, &v8, a2);
}

uint64_t sub_213CE2F38(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_213D90C1C();
  return v3;
}

void *keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, _BYTE *a3@<X8>)
{
  a1();
  result = sub_213D90C1C();
  *a3 = v5;
  return result;
}

unint64_t sub_213CE302C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA288;
  if (!qword_27C8EA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA288);
  }

  return result;
}

unint64_t sub_213CE3080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA290;
  if (!qword_27C8EA290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA290);
  }

  return result;
}

unint64_t sub_213CE30F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EA298;
  if (!qword_27C8EA298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EA298);
  }

  return result;
}

void sub_213CE3198(uint64_t a1)
{
  sub_213CECA90(319, &qword_27C8E9580, type metadata accessor for MapStylePicker.Option, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_213CECAF4(319, &qword_27C8E95B8, &type metadata for MapStyle, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_213CECA90(319, &qword_27C8E9910, type metadata accessor for _MapStylePickerAttribution, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213CECAF4(319, &qword_27C8E95E0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_213CECA90(319, &qword_27C8E9748, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_213CECA90(319, &qword_27C8E9758, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_213CE33A0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_213CE3424();
  if (result)
  {
    v4 = 0;
  }

  else
  {
    type metadata accessor for MapStylePickerView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    result = sub_213D9157C();
    v4 = v5;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_213CE3424()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = *v0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  v35 = *(v0 + 136);
  v36 = v6;
  v37 = *(v0 + 168);
  v7 = *(v0 + 56);
  v8 = *(v0 + 88);
  v31 = *(v0 + 72);
  v32 = v8;
  v33 = *(v0 + 104);
  v34 = v5;
  v9 = *(v0 + 24);
  v27 = *(v0 + 8);
  v28 = v9;
  v29 = *(v0 + 40);
  v30 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v38, v10);
  v23 = v38[6];
  v24 = v38[7];
  v25 = v38[8];
  v26 = v39;
  v19 = v38[2];
  v20 = v38[3];
  v21 = v38[4];
  v22 = v38[5];
  v17 = v38[0];
  v18 = v38[1];
  Array<A>.selectedOption(for:)(&v17, v4, v3);
  v33 = v23;
  v34 = v24;
  v35 = v25;
  LOWORD(v36) = v26;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v32 = v22;
  v27 = v17;
  v28 = v18;
  sub_213CEB3CC(&v27);
  v11 = type metadata accessor for MapStylePicker.Option(0);
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    sub_213CD8330(v3, &qword_27C8EA2C0, &qword_213D95000);
    v12 = 0;
  }

  else
  {
    v13 = (v0 + *(type metadata accessor for MapStylePickerView(0) + 32));
    v14 = *v13;
    v15 = *(v13 + 1);
    LOBYTE(v38[0]) = v14;
    *(&v38[0] + 1) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    sub_213D9157C();
    v12 = v3[*(v11 + 32)] & (v17 ^ 1);
    sub_213CEB758(v3, type metadata accessor for MapStylePicker.Option);
  }

  return v12 & 1;
}

uint64_t sub_213CE3674(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MapStylePickerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
  return sub_213D9158C();
}

uint64_t sub_213CE36E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v7 = type metadata accessor for MapStylePicker.Option(0);
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = &v45 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v18 = *(a2 + 144);
  v80 = *(a2 + 128);
  v81 = v18;
  v82 = *(a2 + 160);
  v19 = *(a2 + 80);
  v76 = *(a2 + 64);
  v77 = v19;
  v20 = *(a2 + 112);
  v78 = *(a2 + 96);
  v79 = v20;
  v21 = *(a2 + 16);
  v72 = *a2;
  v73 = v21;
  v22 = *(a2 + 48);
  v74 = *(a2 + 32);
  v75 = v22;
  v23 = type metadata accessor for MapStylePickerView(0);
  v24 = v23[6];
  v25 = type metadata accessor for _MapStylePickerAttribution(0);
  (*(*(v25 - 8) + 56))(a4 + v24, 1, 1, v25);
  v26 = v23[9];
  *(a4 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  swift_storeEnumTagMultiPayload();
  v27 = v23[10];
  *(a4 + v27) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  swift_storeEnumTagMultiPayload();
  v28 = *(a2 + 96);
  *(a4 + 120) = *(a2 + 112);
  v29 = *(a2 + 144);
  *(a4 + 136) = *(a2 + 128);
  *(a4 + 152) = v29;
  v30 = *(a2 + 32);
  *(a4 + 56) = *(a2 + 48);
  v31 = *(a2 + 80);
  *(a4 + 72) = *(a2 + 64);
  *(a4 + 88) = v31;
  *(a4 + 104) = v28;
  v32 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v32;
  *a4 = a1;
  *(a4 + 168) = *(a2 + 160);
  *(a4 + 40) = v30;

  sub_213CE2C28(&v72, &v61, &qword_27C8EA2D0, &qword_213D998B0);
  sub_213CEB35C(v50, a4 + v24);
  v69 = v80;
  v70 = v81;
  v71 = v82;
  v65 = v76;
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](&v51, v33);
  sub_213CD8330(&v72, &qword_27C8EA2D0, &qword_213D998B0);
  v89 = v57;
  v90 = v58;
  v91 = v59;
  v85 = v53;
  v86 = v54;
  v87 = v55;
  v88 = v56;
  v83 = v51;
  v84 = v52;
  v67 = v57;
  v68 = v58;
  v69 = v59;
  v63 = v53;
  v64 = v54;
  v65 = v55;
  v66 = v56;
  v61 = v51;
  v62 = v52;
  v92 = v60;
  LOWORD(v70) = v60;
  Array<A>.selectedOption(for:)(&v51, a1, v17);
  LOBYTE(a2) = _s15_MapKit_SwiftUI0A11StylePickerV18trafficToggleState5style6option0cD00I0VySbGAA0aE0V_AC6OptionVSgtFZ_0(&v61, v17);
  v35 = v34;
  v36 = v17;
  v37 = v47;
  sub_213CD8330(v36, &qword_27C8EA2C0, &qword_213D95000);
  v38 = a4 + v23[7];
  v39 = a2 & 1;
  v40 = v48;
  *v38 = v39;
  *(v38 + 8) = v35;
  v67 = v89;
  v68 = v90;
  v69 = v91;
  LOWORD(v70) = v92;
  v63 = v85;
  v64 = v86;
  v65 = v87;
  v66 = v88;
  v61 = v83;
  v62 = v84;
  Array<A>.selectedOption(for:)(&v61, a1, v37);

  sub_213CE2C28(v37, v12, &qword_27C8EA2C0, &qword_213D95000);
  if ((*(v49 + 48))(v12, 1, v40) == 1)
  {
    sub_213CD8330(v12, &qword_27C8EA2C0, &qword_213D95000);
LABEL_6:
    v42 = 1;
    goto LABEL_7;
  }

  v41 = v46;
  sub_213CEB6F0(v12, v46, type metadata accessor for MapStylePicker.Option);
  if ((*(v41 + *(v40 + 32)) & 1) == 0)
  {
    sub_213CEB758(v41, type metadata accessor for MapStylePicker.Option);
    goto LABEL_6;
  }

  v67 = v89;
  v68 = v90;
  v69 = v91;
  LOWORD(v70) = v92;
  v63 = v85;
  v64 = v86;
  v65 = v87;
  v66 = v88;
  v61 = v83;
  v62 = v84;
  v42 = sub_213D5404C();
  sub_213CEB758(v41, type metadata accessor for MapStylePicker.Option);
LABEL_7:
  sub_213CD8330(v50, &qword_27C8EA2A0, &qword_213D94F50);
  sub_213CD8330(v37, &qword_27C8EA2C0, &qword_213D95000);
  result = sub_213CEB3CC(&v83);
  v44 = a4 + v23[8];
  *v44 = v42;
  *(v44 + 8) = 0;
  return result;
}

uint64_t sub_213CE3C94@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v17 = sub_213D90E7C();
  v15 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D8, &qword_213D95080);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2E0, &qword_213D95088);
  v8 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v10 = &v14 - v9;
  v18 = v1;
  sub_213D911BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2E8, &qword_213D95090);
  sub_213CEBB64(&qword_27C8EA2F0, &qword_27C8EA2E8, &qword_213D95090, sub_213CEB428);
  sub_213D904BC();
  v11 = sub_213CEDCEC(&qword_27C8EA318, &qword_27C8EA2D8, &qword_213D95080, MEMORY[0x277CDD6E0]);
  sub_213D9138C();
  (*(v5 + 8))(v7, v4);
  sub_213D90E6C();
  LOBYTE(v7) = sub_213D911BC();
  sub_213D911AC();
  sub_213D911AC();
  if (sub_213D911AC() != v7)
  {
    sub_213D911AC();
  }

  v19 = v4;
  v20 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v14;
  sub_213D913CC();
  (*(v15 + 8))(v3, v17);
  return (*(v8 + 8))(v10, v12);
}

uint64_t sub_213CE3FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_213D90D5C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA320, &qword_213D950A8);
  sub_213CE40F0(a1, (a2 + *(v4 + 44)));
  LOBYTE(a1) = sub_213D911CC();
  sub_213D904AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA300, &qword_213D95098) + 36);
  *v13 = a1;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  LOBYTE(a1) = sub_213D911FC();
  sub_213D904AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2E8, &qword_213D95090);
  v23 = a2 + *(result + 36);
  *v23 = a1;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_213CE40F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA328, &qword_213D950B0);
  MEMORY[0x28223BE20](v80);
  v83 = &v79 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA330, &qword_213D950B8);
  v99 = *(v4 - 8);
  v100 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2A0, &qword_213D94F50);
  MEMORY[0x28223BE20](v8 - 8);
  v92 = &v79 - v9;
  v91 = type metadata accessor for _MapStylePickerAttribution(0);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v79 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA338, &qword_213D950C0);
  MEMORY[0x28223BE20](v11 - 8);
  v98 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v79 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA340, &qword_213D950C8);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v79 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA348, &qword_213D950D0);
  MEMORY[0x28223BE20](v86);
  v89 = &v79 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA350, &qword_213D950D8);
  MEMORY[0x28223BE20](v88);
  v96 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v87 = &v79 - v20;
  MEMORY[0x28223BE20](v21);
  v102 = &v79 - v22;
  v23 = sub_213D90E9C();
  MEMORY[0x28223BE20](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA358, &qword_213D950E0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v79 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA360, &qword_213D950E8);
  v94 = *(v28 - 8);
  v95 = v28;
  MEMORY[0x28223BE20](v28);
  v93 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v79 - v31;
  sub_213CE612C();
  v103 = a1;
  sub_213D90D5C();
  LODWORD(v104) = 0;
  sub_213CEB4E8(&qword_27C8E9650, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_213D9204C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA368, &qword_213D950F0);
  sub_213CEB530();
  sub_213D9177C();
  sub_213CEDCEC(&qword_27C8E9598, &qword_27C8EA358, &qword_213D950E0, MEMORY[0x277CDF170]);
  sub_213D9138C();
  (*(v25 + 8))(v27, v24);
  v33 = v85;
  sub_213CE4C04(a1, v85);
  if ((sub_213CE5780() & 1) == 0)
  {
    sub_213CE5978();
  }

  sub_213D9172C();
  v34 = 1;
  sub_213D9063C();
  v35 = v33;
  v36 = v89;
  v37 = sub_213CED608(v35, v89, &qword_27C8EA340, &qword_213D950C8);
  v38 = (v36 + *(v86 + 36));
  v39 = v105;
  *v38 = v104;
  v38[1] = v39;
  v38[2] = v106;
  v40 = MEMORY[0x21604E920](v37, 0.5, 0.7, 0.0);
  if ((sub_213CE5780() & 1) == 0)
  {
    v34 = sub_213CE5978();
  }

  v41 = v36;
  v42 = v87;
  sub_213CED608(v41, v87, &qword_27C8EA348, &qword_213D950D0);
  v43 = v42 + *(v88 + 36);
  *v43 = v40;
  *(v43 + 8) = v34 & 1;
  sub_213CED608(v42, v102, &qword_27C8EA350, &qword_213D950D8);
  v44 = type metadata accessor for MapStylePickerView(0);
  v45 = v92;
  sub_213CE2C28(a1 + *(v44 + 24), v92, &qword_27C8EA2A0, &qword_213D94F50);
  v46 = (*(v90 + 48))(v45, 1, v91);
  v47 = v97;
  if (v46 == 1)
  {
    sub_213CD8330(v45, &qword_27C8EA2A0, &qword_213D94F50);
    v48 = 1;
    v49 = v100;
  }

  else
  {
    v50 = v79;
    sub_213CEB6F0(v45, v79, type metadata accessor for _MapStylePickerAttribution);
    v51 = v83;
    sub_213CE5DEC(v50, v83);
    v52 = sub_213D911EC();
    v53 = sub_213D904AC();
    v54 = v51 + *(v80 + 36);
    *v54 = v52;
    *(v54 + 8) = v55;
    *(v54 + 16) = v56;
    *(v54 + 24) = v57;
    *(v54 + 32) = v58;
    *(v54 + 40) = 0;
    v59 = MEMORY[0x21604E920](v53, 0.5, 0.7, 0.0);
    v60 = sub_213CE5780();
    v49 = v100;
    if (v60)
    {
      v61 = 1;
    }

    else
    {
      v61 = sub_213CE5978();
    }

    sub_213CEB758(v50, type metadata accessor for _MapStylePickerAttribution);
    v62 = v51;
    v63 = v82;
    sub_213CED608(v62, v82, &qword_27C8EA328, &qword_213D950B0);
    v64 = v63 + *(v49 + 36);
    *v64 = v59;
    *(v64 + 8) = v61 & 1;
    v65 = v63;
    v66 = v81;
    sub_213CED608(v65, v81, &qword_27C8EA330, &qword_213D950B8);
    sub_213CED608(v66, v47, &qword_27C8EA330, &qword_213D950B8);
    v48 = 0;
  }

  (*(v99 + 56))(v47, v48, 1, v49);
  v67 = v93;
  v68 = v94;
  v69 = v47;
  v70 = *(v94 + 16);
  v84 = v32;
  v71 = v95;
  v70(v93, v32, v95);
  v72 = v102;
  v73 = v96;
  sub_213CE2C28(v102, v96, &qword_27C8EA350, &qword_213D950D8);
  v74 = v98;
  sub_213CE2C28(v69, v98, &qword_27C8EA338, &qword_213D950C0);
  v75 = v101;
  v70(v101, v67, v71);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA378, &qword_213D95100);
  sub_213CE2C28(v73, &v75[*(v76 + 48)], &qword_27C8EA350, &qword_213D950D8);
  sub_213CE2C28(v74, &v75[*(v76 + 64)], &qword_27C8EA338, &qword_213D950C0);
  sub_213CD8330(v69, &qword_27C8EA338, &qword_213D950C0);
  sub_213CD8330(v72, &qword_27C8EA350, &qword_213D950D8);
  v77 = *(v68 + 8);
  v77(v84, v71);
  sub_213CD8330(v74, &qword_27C8EA338, &qword_213D950C0);
  sub_213CD8330(v73, &qword_27C8EA350, &qword_213D950D8);
  return (v77)(v67, v71);
}

uint64_t sub_213CE4C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = type metadata accessor for MapStylePickerView(0);
  v89 = *(v93 - 8);
  v4 = *(v89 + 8);
  MEMORY[0x28223BE20](v93);
  v5 = sub_213D907DC();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA388, &qword_213D95148);
  v74 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v71 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA390, &qword_213D95150);
  v75 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v71 - v11;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA398, &qword_213D95158);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v14 = v71 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3A0, &qword_213D95160);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v16 = v71 - v15;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3A8, &qword_213D95168);
  MEMORY[0x28223BE20](v84);
  v83 = v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3B0, &qword_213D95170);
  v86 = *(v18 - 8);
  v87 = v18;
  MEMORY[0x28223BE20](v18);
  v85 = v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3B8, &qword_213D95178);
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x28223BE20](v20);
  v88 = v71 - v21;
  v22 = sub_213CE5780();
  if (v22 & 1) != 0 || (v22 = sub_213CE5978(), (v22))
  {
    v73 = a2;
    MEMORY[0x28223BE20](v22);
    v72 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3C0, &qword_213D95180);
    v92 = a1;
    v71[1] = v4;
    sub_213CEB7E0();
    sub_213D9124C();
    v23 = sub_213CEDCEC(&qword_27C8E9600, &qword_27C8EA388, &qword_213D95148, MEMORY[0x277CDE5A0]);
    sub_213D913FC();
    (*(v74 + 8))(v9, v7);
    v95 = v7;
    v96 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_213D9138C();
    (*(v75 + 8))(v12, v10);
    v25 = v80;
    sub_213D907CC();
    v95 = v10;
    v96 = OpaqueTypeConformance2;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = MEMORY[0x277CDD980];
    v28 = v78;
    v29 = v82;
    sub_213D9146C();
    (*(v81 + 1))(v25, v29);
    (*(v76 + 8))(v14, v28);
    v95 = v28;
    v96 = v29;
    v97 = v26;
    v98 = v27;
    swift_getOpaqueTypeConformance2();
    v30 = v83;
    v31 = v79;
    sub_213D913AC();
    (*(v77 + 8))(v16, v31);
    LOBYTE(v31) = sub_213D911DC();
    v32 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA3F8, &qword_213D951B8) + 36);
    *v32 = 1;
    *(v32 + 8) = v31;
    v33 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA400, &qword_213D951C0) + 36));
    v34 = *(sub_213D909CC() + 20);
    v35 = *MEMORY[0x277CE0118];
    v36 = sub_213D90D0C();
    (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
    __asm { FMOV            V0.2D, #26.0 }

    *v33 = _Q0;
    *&v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA408, &qword_213D951C8) + 36)] = 256;
    LOBYTE(v35) = sub_213D911EC();
    sub_213D904AC();
    v42 = v84;
    v43 = v30 + *(v84 + 36);
    *v43 = v35;
    *(v43 + 8) = v44;
    *(v43 + 16) = v45;
    *(v43 + 24) = v46;
    *(v43 + 32) = v47;
    *(v43 + 40) = 0;
    v48 = v92;
    v49 = v92 + *(v93 + 28);
    v50 = *v49;
    v51 = *(v49 + 8);
    LOBYTE(v95) = v50;
    v96 = v51;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    sub_213D9157C();
    LOBYTE(v95) = v94;
    v81 = type metadata accessor for MapStylePickerView;
    v52 = v72;
    sub_213CEBAF8(v48, v72, type metadata accessor for MapStylePickerView);
    v53 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v54 = swift_allocObject();
    v89 = type metadata accessor for MapStylePickerView;
    sub_213CEB6F0(v52, v54 + v53, type metadata accessor for MapStylePickerView);
    v55 = sub_213CEBB64(&qword_27C8EA418, &qword_27C8EA3A8, &qword_213D95168, sub_213CEBBE8);
    v56 = v85;
    sub_213D9145C();

    sub_213CD8330(v30, &qword_27C8EA3A8, &qword_213D95168);
    v57 = v92;
    v58 = v92 + *(v93 + 32);
    v59 = *v58;
    v60 = *(v58 + 8);
    LOBYTE(v95) = v59;
    v96 = v60;
    sub_213D9157C();
    sub_213CEBAF8(v57, v52, v81);
    v61 = swift_allocObject();
    sub_213CEB6F0(v52, v61 + v53, v89);
    v95 = v42;
    v96 = MEMORY[0x277D839B0];
    v97 = v55;
    v98 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v62 = v87;
    v63 = v88;
    sub_213D9145C();

    (*(v86 + 8))(v56, v62);
    sub_213D9065C();
    sub_213D9066C();
    sub_213D9067C();

    MEMORY[0x21604E920](v64, 0.5, 0.7, 0.0);
    v65 = sub_213D9068C();

    v66 = v91;
    *(v63 + *(v91 + 36)) = v65;
    v67 = v73;
    sub_213CED608(v63, v73, &qword_27C8EA3B8, &qword_213D95178);
    return (*(v90 + 56))(v67, 0, 1, v66);
  }

  else
  {
    v69 = v91;
    v70 = *(v90 + 56);

    return v70(a2, 1, 1, v69);
  }
}

uint64_t sub_213CE5780()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = *v0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  v32 = *(v0 + 136);
  v33 = v6;
  v34 = *(v0 + 168);
  v7 = *(v0 + 56);
  v8 = *(v0 + 88);
  v28 = *(v0 + 72);
  v29 = v8;
  v30 = *(v0 + 104);
  v31 = v5;
  v9 = *(v0 + 24);
  v24 = *(v0 + 8);
  v25 = v9;
  v26 = *(v0 + 40);
  v27 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v35, v10);
  v20 = v35[6];
  v21 = v35[7];
  v22 = v35[8];
  v23 = v36;
  v16 = v35[2];
  v17 = v35[3];
  v18 = v35[4];
  v19 = v35[5];
  v14 = v35[0];
  v15 = v35[1];
  Array<A>.selectedOption(for:)(&v14, v4, v3);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  LOWORD(v33) = v23;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v24 = v14;
  v25 = v15;
  sub_213CEB3CC(&v24);
  v11 = type metadata accessor for MapStylePicker.Option(0);
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    sub_213CD8330(v3, &qword_27C8EA2C0, &qword_213D95000);
    return 0;
  }

  else
  {
    v12 = v3[*(v11 + 28)];
    sub_213CEB758(v3, type metadata accessor for MapStylePicker.Option);
  }

  return v12;
}

uint64_t sub_213CE5978()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = *v0;
  v5 = *(v0 + 120);
  v6 = *(v0 + 152);
  v32 = *(v0 + 136);
  v33 = v6;
  v34 = *(v0 + 168);
  v7 = *(v0 + 56);
  v8 = *(v0 + 88);
  v28 = *(v0 + 72);
  v29 = v8;
  v30 = *(v0 + 104);
  v31 = v5;
  v9 = *(v0 + 24);
  v24 = *(v0 + 8);
  v25 = v9;
  v26 = *(v0 + 40);
  v27 = v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v35, v10);
  v20 = v35[6];
  v21 = v35[7];
  v22 = v35[8];
  v23 = v36;
  v16 = v35[2];
  v17 = v35[3];
  v18 = v35[4];
  v19 = v35[5];
  v14 = v35[0];
  v15 = v35[1];
  Array<A>.selectedOption(for:)(&v14, v4, v3);
  v30 = v20;
  v31 = v21;
  v32 = v22;
  LOWORD(v33) = v23;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v24 = v14;
  v25 = v15;
  sub_213CEB3CC(&v24);
  v11 = type metadata accessor for MapStylePicker.Option(0);
  if ((*(*(v11 - 8) + 48))(v3, 1, v11) == 1)
  {
    sub_213CD8330(v3, &qword_27C8EA2C0, &qword_213D95000);
    return 0;
  }

  else
  {
    v12 = v3[*(v11 + 32)];
    sub_213CEB758(v3, type metadata accessor for MapStylePicker.Option);
  }

  return v12;
}

uint64_t sub_213CE5B70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C0, &qword_213D95000);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for MapStylePicker.Option(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(v0 + 120);
  v10 = *(v0 + 152);
  v34 = *(v0 + 136);
  v35 = v10;
  v36 = *(v0 + 168);
  v11 = *(v0 + 56);
  v12 = *(v0 + 88);
  v30 = *(v0 + 72);
  v31 = v12;
  v32 = *(v0 + 104);
  v33 = v9;
  v13 = *(v0 + 24);
  v26 = *(v0 + 8);
  v27 = v13;
  v28 = *(v0 + 40);
  v29 = v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v37, v14);
  v22 = v37[6];
  v23 = v37[7];
  v24 = v37[8];
  v25 = v38;
  v18 = v37[2];
  v19 = v37[3];
  v20 = v37[4];
  v21 = v37[5];
  v16 = v37[0];
  v17 = v37[1];
  Array<A>.selectedOption(for:)(&v16, v8, v3);
  v32 = v22;
  v33 = v23;
  v34 = v24;
  LOWORD(v35) = v25;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  v26 = v16;
  v27 = v17;
  sub_213CEB3CC(&v26);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_213CD8330(v3, &qword_27C8EA2C0, &qword_213D95000);
  }

  sub_213CEB6F0(v3, v7, type metadata accessor for MapStylePicker.Option);
  sub_213CE70CC(v7);
  return sub_213CEB758(v7, type metadata accessor for MapStylePicker.Option);
}

uint64_t sub_213CE5DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_213D904FC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = sub_213D9176C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapStylePickerView.AttributionLabel(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_213CEBAF8(a1, v17 + *(v15 + 28), type metadata accessor for _MapStylePickerAttribution);
  *v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBF50, &qword_213D95138);
  swift_storeEnumTagMultiPayload();
  v18 = (v17 + *(v15 + 32));
  v27 = 0x4059000000000000;
  sub_213D9156C();
  v19 = v29;
  *v18 = v28;
  v18[1] = v19;
  type metadata accessor for MapStylePickerView(0);
  sub_213D48938(v9);
  (*(v4 + 104))(v6, *MEMORY[0x277CDF3D0], v3);
  LOBYTE(v18) = sub_213D904EC();
  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v9, v3);
  v21 = MEMORY[0x277CE13B0];
  if ((v18 & 1) == 0)
  {
    v21 = MEMORY[0x277CE13B8];
  }

  (*(v11 + 104))(v13, *v21, v10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA380, &qword_213D95140);
  v23 = v26;
  (*(v11 + 32))(v26 + *(v22 + 36), v13, v10);
  return sub_213CEB6F0(v17, v23, type metadata accessor for MapStylePickerView.AttributionLabel);
}

uint64_t sub_213CE612C()
{
  v1 = sub_213D9087C();
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - v4;
  v6 = sub_213D916EC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_213D916FC();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  v16 = *v0;
  v17 = *(*v0 + 16);
  *v9 = xmmword_213D94EE0;
  (*(v7 + 104))(v9, *MEMORY[0x277CDF108], v6);
  sub_213D9172C();
  if (v17 == 4)
  {
    sub_213D9170C();
    type metadata accessor for MapStylePickerView(0);
    sub_213D48910(v5);
    v18 = v25;
    v19 = v26;
    (*(v26 + 104))(v25, *MEMORY[0x277CDFA00], v1);
    sub_213CEB4E8(&qword_27C8E9738, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v20 = sub_213D918CC();
    v21 = *(v19 + 8);
    v21(v18, v1);
    v21(v5, v1);
    if (v20)
    {
      v22 = 2;
    }

    else
    {
      v22 = *(v16 + 16);
    }

    v23 = v15;
  }

  else
  {
    sub_213D9170C();
    v22 = *(v16 + 16);
    v23 = v12;
  }

  return sub_213CE72C0(v23, v22);
}

uint64_t sub_213CE6448(uint64_t *a1)
{
  v2 = type metadata accessor for MapStylePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_213CEABA0(0, *(*a1 + 16), *a1);
  v10[1] = v5;
  swift_getKeyPath();
  sub_213CEBAF8(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_213CEB6F0(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MapStylePickerView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_213CEC6D8;
  *(v8 + 24) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA450, &qword_213D95240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA370, &qword_213D950F8);
  sub_213CEDCEC(&qword_27C8E9568, &qword_27C8EA450, &qword_213D95240, MEMORY[0x277D83980]);
  sub_213CEB5B4();
  return sub_213D9169C();
}

uint64_t sub_213CE665C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v51 = a3;
  v52 = a1;
  v50 = sub_213D9105C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for MapStylePicker.Option(0);
  v6 = v5 - 8;
  v43 = *(v5 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MapStylePickerView(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for MapStylePickerView.MapModeTile(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA460, &qword_213D95250);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v14 = &v38[-v13];
  v15 = v10[6];
  v16 = sub_213D902AC();
  v17 = v12 + v15;
  v18 = v52;
  (*(*(v16 - 8) + 16))(v17, v52, v16);
  v45 = *(v6 + 28);
  v76 = *(v18 + v45);
  sub_213CE6D0C();
  v40 = v19;
  v20 = *(a2 + 120);
  v21 = *(a2 + 152);
  v71 = *(a2 + 136);
  v72 = v21;
  v73 = *(a2 + 168);
  v22 = *(a2 + 56);
  v23 = *(a2 + 88);
  v67 = *(a2 + 72);
  v68 = v23;
  v69 = *(a2 + 104);
  v70 = v20;
  v24 = *(a2 + 24);
  v63 = *(a2 + 8);
  v64 = v24;
  v65 = *(a2 + 40);
  v66 = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  MEMORY[0x21604E7B0](v74, v25);
  v59 = v74[6];
  v60 = v74[7];
  v61 = v74[8];
  v62 = v75;
  v55 = v74[2];
  v56 = v74[3];
  v57 = v74[4];
  v58 = v74[5];
  v53 = v74[0];
  v54 = v74[1];
  v39 = MapStylePicker.Option.matches(_:)(&v53);
  v69 = v59;
  v70 = v60;
  v71 = v61;
  LOWORD(v72) = v62;
  v65 = v55;
  v66 = v56;
  v67 = v57;
  v68 = v58;
  v63 = v53;
  v64 = v54;
  sub_213CEB3CC(&v63);
  v26 = sub_213CE6EFC();
  sub_213CEBAF8(a2, &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MapStylePickerView);
  v27 = v18;
  v28 = v42;
  sub_213CEBAF8(v27, v42, type metadata accessor for MapStylePicker.Option);
  v29 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v30 = (v9 + *(v43 + 80) + v29) & ~*(v43 + 80);
  v31 = swift_allocObject();
  sub_213CEB6F0(&v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], v31 + v29, type metadata accessor for MapStylePickerView);
  sub_213CEB6F0(v28, v31 + v30, type metadata accessor for MapStylePicker.Option);
  *v12 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB20, &qword_213D95038);
  swift_storeEnumTagMultiPayload();
  v32 = v10[5];
  *(v12 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2C8, &unk_213D95070);
  swift_storeEnumTagMultiPayload();
  *(v12 + v10[7]) = v40;
  *(v12 + v10[8]) = v39 & 1;
  *(v12 + v10[9]) = v26;
  v33 = (v12 + v10[10]);
  *v33 = sub_213CEC8B4;
  v33[1] = v31;
  v34 = v46;
  sub_213D9104C();
  v35 = sub_213CEB4E8(&qword_27C8E97F8, type metadata accessor for MapStylePickerView.MapModeTile, &unk_213D953F0);
  sub_213D9139C();
  (*(v48 + 8))(v34, v50);
  sub_213CEB758(v12, type metadata accessor for MapStylePickerView.MapModeTile);
  *&v74[0] = v10;
  *(&v74[0] + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v49;
  sub_213D913EC();

  return (*(v47 + 8))(v14, v36);
}

void sub_213CE6D0C()
{
  LODWORD(v1) = *v0;
  v2 = sub_213D9190C();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v1 <= 1)
  {
    if (v1)
    {
      goto LABEL_8;
    }

    v4 = sub_213D9190C();
    v1 = [objc_opt_self() imageNamed:v4 inBundle:v3];

    if (v1)
    {
      return;
    }

    __break(1u);
  }

  if (v1 != 2)
  {
    goto LABEL_10;
  }

  v5 = sub_213D9190C();
  v6 = [objc_opt_self() imageNamed:v5 inBundle:v3];

  if (v6)
  {
    return;
  }

  __break(1u);
LABEL_8:
  v7 = sub_213D9190C();
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v3];

  if (v8)
  {
    return;
  }

  __break(1u);
LABEL_10:
  v9 = sub_213D9190C();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v3];

  if (!v10)
  {
    __break(1u);
  }
}

double sub_213CE6EFC()
{
  v1 = v0;
  v2 = sub_213D9087C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  type metadata accessor for MapStylePickerView(0);
  sub_213D48910(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDFA00], v2);
  sub_213CEB4E8(&qword_27C8E9738, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v9 = sub_213D918CC();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  v11 = *(*v1 + 16);
  if (v11 == 2)
  {
    return 1.86;
  }

  if (v11 == 3)
  {
    return 1.43;
  }

  result = 1.86;
  if ((v9 & 1) == 0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_213CE70CC(uint64_t a1)
{
  v3 = type metadata accessor for MapStylePickerView(0);
  v4 = (v1 + *(v3 + 28));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v36[0]) = v5;
  *(&v36[0] + 1) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
  sub_213D9157C();
  v7 = (v1 + *(v3 + 32));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v36[0]) = v8;
  *(&v36[0] + 1) = v9;
  sub_213D9157C();
  v10 = type metadata accessor for MapStylePicker.Option(0);
  sub_213D55054(*(a1 + *(v10 + 28)) & v34[0] & 1, v34[0] & 1 | ((*(a1 + *(v10 + 32)) & 1) == 0), v22);
  v11 = *(v1 + 120);
  v12 = *(v1 + 152);
  v34[8] = *(v1 + 136);
  v34[9] = v12;
  v35 = *(v1 + 168);
  v13 = *(v1 + 56);
  v14 = *(v1 + 88);
  v34[4] = *(v1 + 72);
  v34[5] = v14;
  v34[6] = *(v1 + 104);
  v34[7] = v11;
  v15 = *(v1 + 24);
  v34[0] = *(v1 + 8);
  v34[1] = v15;
  v34[2] = *(v1 + 40);
  v34[3] = v13;
  v16 = *(v1 + 120);
  v17 = *(v1 + 152);
  v31 = *(v1 + 136);
  v32 = v17;
  v33 = *(v1 + 168);
  v18 = *(v1 + 56);
  v19 = *(v1 + 88);
  v27 = *(v1 + 72);
  v28 = v19;
  v29 = *(v1 + 104);
  v30 = v16;
  v20 = *(v1 + 24);
  v23 = *(v1 + 8);
  v24 = v20;
  v25 = *(v1 + 40);
  v26 = v18;
  sub_213CE2C28(v34, v36, &qword_27C8EA2D0, &qword_213D998B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA2D0, &qword_213D998B0);
  sub_213D915FC();
  v36[8] = v31;
  v36[9] = v32;
  v37 = v33;
  v36[4] = v27;
  v36[5] = v28;
  v36[6] = v29;
  v36[7] = v30;
  v36[0] = v23;
  v36[1] = v24;
  v36[2] = v25;
  v36[3] = v26;
  return sub_213CD8330(v36, &qword_27C8EA2D0, &qword_213D998B0);
}

uint64_t sub_213CE72C0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_213D916FC();
      v5 = sub_213D91A4C();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_213D916FC();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

void *sub_213CE7434@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *sub_213CE746C()
{
  v1 = v0;
  v2 = type metadata accessor for MapStylePickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  if (sub_213CE5780())
  {
    v29 = v2;
    sub_213CEBAF8(v0, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
    sub_213D91AFC();
    v5 = sub_213D91AEC();
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
    sub_213CEB6F0(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MapStylePickerView);
    sub_213CEBAF8(v0, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MapStylePickerView);
    v9 = sub_213D91AEC();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v8;
    sub_213CEB6F0(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v6, type metadata accessor for MapStylePickerView);
    sub_213D9161C();
    v11 = v30;
    v12 = v31;
    v13 = v32;
    v14 = sub_213CE3424();
    v15 = sub_213D6FAF0(0, 1, 1, MEMORY[0x277D84F90]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_213D6FAF0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[32 * v17];
    v18[32] = 0;
    *(v18 + 5) = v11;
    *(v18 + 6) = v12;
    v18[56] = v13;
    v18[57] = v14 & 1;
    v2 = v29;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (sub_213CE5978())
  {
    v19 = v1 + *(v2 + 32);
    v20 = *v19;
    v21 = *(v19 + 8);
    v33 = v20;
    v34 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA410, &qword_213D951D0);
    sub_213D9159C();
    v22 = v30;
    v23 = v31;
    v24 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_213D6FAF0(0, *(v15 + 2) + 1, 1, v15);
    }

    v26 = *(v15 + 2);
    v25 = *(v15 + 3);
    if (v26 >= v25 >> 1)
    {
      v15 = sub_213D6FAF0((v25 > 1), v26 + 1, 1, v15);
    }

    *(v15 + 2) = v26 + 1;
    v27 = &v15[32 * v26];
    v27[32] = 1;
    *(v27 + 5) = v22;
    *(v27 + 6) = v23;
    v27[56] = v24;
    v27[57] = 0;
  }

  return v15;
}
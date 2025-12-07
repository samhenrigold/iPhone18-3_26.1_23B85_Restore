uint64_t type metadata accessor for ConversionSignal(uint64_t a1)
{
  result = qword_281494CE8;
  if (!qword_281494CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for StandaloneAppOpenSignal(uint64_t a1)
{
  result = qword_281494908;
  if (!qword_281494908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FFEA4A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEA584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEA630@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_22FFEA6C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FFEA738(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FFEA7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConversionParams(0);
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

uint64_t sub_22FFEA8A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConversionParams(0);
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

uint64_t sub_22FFEA974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 28);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 36);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_22FFEAABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FFEABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ConversionSignal(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_230030E00();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22FFEAD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for ConversionSignal(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_230030E00();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22FFEAE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConversionParams(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for ActionStoreAdInstance(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FFEAFC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConversionParams(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for ActionStoreAdInstance(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FFEB204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for APJSValue(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FFEB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for APJSValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FFEB2F8()
{
  v1 = sub_22FFED9B8(&qword_27DB06270, &qword_230034E18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22FFEB38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030E00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionConfig(0);
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

  return (v14 + 1);
}

uint64_t sub_22FFEB49C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributionConfig(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FFEB5A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEB654(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEB6F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEB7B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFED9B8(&qword_27DB06368, &qword_230035338);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEB874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for JetServiceResponse.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FFEB92C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for JetServiceResponse.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEB9D8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_22FFEBA94(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_22FFED9B8(&qword_27DB064E0, &qword_230035C88);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEBB40(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = type metadata accessor for XPCOpenIntentModel(0, *(a2 + a3 - 32), *(a2 + a3 - 16), *(a2 + a3 - 8));
  return XPCOpenIntentModel.subscript.getter(v3, v4);
}

__n128 sub_22FFEBBA8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_22FFEBBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030E00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionConfig(0);
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

  return (v14 + 1);
}

uint64_t sub_22FFEBCC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributionConfig(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FFEBDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IntentMessage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FFEBE8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IntentMessage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FFEBF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22FFEC00C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEC0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FFEC1BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FFEC284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030EC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22FFEC350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_230030EC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_22FFEC408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFEC4B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFEC558(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AttributionMatchedEventProperties(0);
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
      v13 = type metadata accessor for ActionStoreAdInstance(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FFEC67C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for AttributionMatchedEventProperties(0);
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
      v13 = type metadata accessor for ActionStoreAdInstance(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FFEC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_230030E00();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AttributionConfig(0);
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

  return (v14 + 1);
}

uint64_t sub_22FFEC8B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AttributionConfig(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FFEC9C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_230030E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FFECA70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_230030E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FFECB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JetServiceSettings.Environment(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FFECC58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JetServiceSettings.Environment(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_22FFED9B8(&qword_27DB06BB8, &qword_230039820);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FFECD84(uint64_t a1, uint64_t a2)
{
  v4 = sub_230030DD0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FFECDF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_230030DD0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FFECE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FFECEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FFECF8C(uint64_t a1)
{
  v2 = sub_22FFEDB48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFECFC8(uint64_t a1)
{
  v2 = sub_22FFEDB48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFED004(uint64_t a1)
{
  v2 = sub_22FFEDC98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFED040(uint64_t a1)
{
  v2 = sub_22FFEDC98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFED07C()
{
  v1 = 0x6863746566;
  if (*v0 != 1)
  {
    v1 = 0x666E497465737361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7261656C63;
  }
}

uint64_t sub_22FFED0D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FFEEEBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FFED0FC(uint64_t a1)
{
  v2 = sub_22FFEDA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFED138(uint64_t a1)
{
  v2 = sub_22FFEDA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFED174()
{
  v1 = *v0;
  sub_230031740();
  MEMORY[0x23190FB00](v1);
  return sub_230031760();
}

uint64_t sub_22FFED1BC(uint64_t a1)
{
  v2 = *v1;
  sub_230031740();
  MEMORY[0x23190FB00](v2);
  return sub_230031760();
}

uint64_t sub_22FFED200()
{
  v1 = 0x61746144676162;
  if (*v0 != 1)
  {
    v1 = 0x6974616D6F747561;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_22FFED254@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FFEEFD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FFED27C(uint64_t a1)
{
  v2 = sub_22FFEDB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFED2B8(uint64_t a1)
{
  v2 = sub_22FFEDB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void JetPackAssetCacheAction.encode(to:)(void *a1)
{
  v2 = sub_22FFED9B8(&qword_27DB05B40, &qword_230031D10);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2);
  v32 = &v31 - v3;
  v38 = sub_22FFED9B8(&qword_27DB05B48, &qword_230031D18);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - v4;
  v5 = sub_230030DD0();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFED9B8(&qword_27DB05B50, &qword_230031D20);
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for JetPackAssetCacheAction(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22FFED9B8(&qword_27DB05B58, &qword_230031D28);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v15 = &v31 - v14;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEDA90();
  sub_230031780();
  sub_22FFEDAE4(v39, v13);
  v16 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v17 = (*(*(v16 - 8) + 48))(v13, 2, v16);
  if (v17)
  {
    if (v17 == 1)
    {
      LOBYTE(v43) = 0;
      sub_22FFEDC98();
      v18 = v42;
      sub_2300315A0();
      (*(v31 + 8))(v10, v8);
      (*(v40 + 8))(v15, v18);
    }

    else
    {
      LOBYTE(v43) = 2;
      sub_22FFEDB48();
      v25 = v32;
      v26 = v42;
      sub_2300315A0();
      (*(v33 + 8))(v25, v34);
      (*(v40 + 8))(v15, v26);
    }
  }

  else
  {
    v19 = &v13[*(v16 + 48)];
    v21 = *v19;
    v20 = v19[1];
    v22 = v13[*(v16 + 64)];
    (*(v36 + 32))(v7, v13, v5);
    LOBYTE(v43) = 1;
    sub_22FFEDB9C();
    v23 = v42;
    sub_2300315A0();
    LOBYTE(v43) = 0;
    sub_22FFEE6BC(&qword_2814942A0, MEMORY[0x277CC9268]);
    v24 = v41;
    sub_230031640();
    if (v24)
    {
      sub_22FFEDBF0(v21, v20);
      (*(v35 + 8))(v37, v38);
      (*(v36 + 8))(v7, v5);
      (*(v40 + 8))(v15, v23);
    }

    else
    {
      LODWORD(v39) = v22;
      v41 = v7;
      v27 = v36;
      v43 = v21;
      v44 = v20;
      v45 = 1;
      sub_22FFEDC44();
      sub_230031640();
      LOBYTE(v43) = 2;
      sub_230031610();
      v28 = v27;
      v29 = v35;
      v30 = v42;
      sub_22FFEDBF0(v21, v20);
      (*(v29 + 8))(v37, v38);
      (*(v28 + 8))(v41, v5);
      (*(v40 + 8))(v15, v30);
    }
  }
}

uint64_t sub_22FFED9B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for JetPackAssetCacheAction(uint64_t a1)
{
  result = qword_281494FD8;
  if (!qword_281494FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22FFEDA4C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_22FFEDA90()
{
  result = qword_281495040;
  if (!qword_281495040)
  {
    result = swift_getWitnessTable(byte_230032134, &type metadata for JetPackAssetCacheAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495040);
  }

  return result;
}

uint64_t sub_22FFEDAE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAssetCacheAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FFEDB48()
{
  result = qword_27DB05B68;
  if (!qword_27DB05B68)
  {
    result = swift_getWitnessTable(aE, &type metadata for JetPackAssetCacheAction.AssetInfoCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05B68);
  }

  return result;
}

unint64_t sub_22FFEDB9C()
{
  result = qword_281495018;
  if (!qword_281495018)
  {
    result = swift_getWitnessTable(byte_230032094, &type metadata for JetPackAssetCacheAction.FetchCodingKeys, v0, v1);
    atomic_store(result, &qword_281495018);
  }

  return result;
}

void sub_22FFEDBF0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

unint64_t sub_22FFEDC44()
{
  result = qword_2814954A8;
  if (!qword_2814954A8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_2814954A8);
  }

  return result;
}

unint64_t sub_22FFEDC98()
{
  result = qword_27DB05B70;
  if (!qword_27DB05B70)
  {
    result = swift_getWitnessTable(byte_230032044, &type metadata for JetPackAssetCacheAction.ClearCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05B70);
  }

  return result;
}

uint64_t JetPackAssetCacheAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_22FFED9B8(&qword_27DB05B78, &qword_230031D38);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v52 - v4;
  v5 = sub_22FFED9B8(&qword_27DB05B80, &qword_230031D40);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  MEMORY[0x28223BE20](v5);
  v60 = &v52 - v7;
  v8 = sub_22FFED9B8(&qword_27DB05B88, &qword_230031D48);
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v12 = sub_22FFED9B8(&qword_27DB05B90, &unk_230031D50);
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = type metadata accessor for JetPackAssetCacheAction(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v21 = a1[3];
  v65 = a1;
  sub_22FFEDA4C(a1, v21);
  sub_22FFEDA90();
  v22 = v64;
  sub_230031770();
  if (v22)
  {
    return sub_22FFEE60C(v65);
  }

  v24 = v61;
  v23 = v62;
  v52 = v18;
  v53 = v20;
  v64 = 0;
  v25 = v63;
  v26 = sub_230031580();
  v27 = v26;
  v28 = *(v26 + 16);
  v29 = v12;
  if (!v28 || ((v30 = *(v26 + 32), v28 == 1) ? (v31 = v30 == 3) : (v31 = 1), v31))
  {
    v32 = sub_230031400();
    swift_allocError();
    v33 = v14;
    v35 = v34;
    sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
    *v35 = v15;
    sub_230031480();
    sub_2300313F0();
    (*(*(v32 - 8) + 104))(v35, *MEMORY[0x277D84160], v32);
    swift_willThrow();
    (*(v24 + 8))(v33, v29);
LABEL_17:
    swift_unknownObjectRelease();
    return sub_22FFEE60C(v65);
  }

  if (!*(v26 + 32))
  {
    v66 = 0;
    sub_22FFEDC98();
    v38 = v11;
    v39 = v12;
    v40 = v64;
    sub_230031470();
    if (!v40)
    {
      (*(v55 + 8))(v38, v54);
      (*(v24 + 8))(v14, v12);
      swift_unknownObjectRelease();
      v41 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
      v42 = v53;
      (*(*(v41 - 8) + 56))(v53, 1, 2, v41);
      v43 = v25;
      goto LABEL_21;
    }

LABEL_16:
    (*(v24 + 8))(v14, v39);
    goto LABEL_17;
  }

  if (v30 != 1)
  {
    v71 = 2;
    sub_22FFEDB48();
    v39 = v12;
    v44 = v64;
    sub_230031470();
    if (!v44)
    {
      v43 = v25;
      (*(v56 + 8))(v23, v57);
      (*(v24 + 8))(v14, v12);
      swift_unknownObjectRelease();
      v47 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
      v42 = v53;
      (*(*(v47 - 8) + 56))(v53, 2, 2, v47);
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  v70 = 1;
  sub_22FFEDB9C();
  v36 = v60;
  v37 = v64;
  sub_230031470();
  if (v37)
  {
    (*(v24 + 8))(v14, v12);
    goto LABEL_17;
  }

  v62 = v12;
  v64 = v27;
  sub_230030DD0();
  v69 = 0;
  sub_22FFEE6BC(&qword_281494298, MEMORY[0x277CC9280]);
  v46 = v58;
  sub_230031520();
  v57 = sub_22FFED9B8(&qword_27DB05B60, &qword_230031D30);
  v68 = 1;
  sub_22FFEE700();
  sub_230031520();
  v48 = v57;
  v67 = 2;
  v49 = sub_2300314F0();
  v50 = *(v48 + 64);
  (*(v59 + 8))(v36, v46);
  (*(v24 + 8))(v14, v62);
  swift_unknownObjectRelease();
  v51 = v52;
  v52[v50] = v49 & 1;
  (*(*(v48 - 8) + 56))(v51, 0, 2, v48);
  v42 = v53;
  sub_22FFEE658(v51, v53);
  v43 = v25;
LABEL_21:
  sub_22FFEE658(v42, v43);
  return sub_22FFEE60C(v65);
}

uint64_t sub_22FFEE60C(void *a1)
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

uint64_t sub_22FFEE658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAssetCacheAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FFEE6BC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_230030DD0();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22FFEE700()
{
  result = qword_2814954A0;
  if (!qword_2814954A0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_2814954A0);
  }

  return result;
}

uint64_t sub_22FFEE754()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FFEE788()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22FFEE7BC(_BYTE *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3] >> 1;
  if (v2 == v3)
  {
    *a1 = 2;
  }

  else if (v2 < v3)
  {
    *a1 = *(v1[1] + v2);
    v1[2] = v2 + 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22FFEE7F8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FFEE82C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FFEE860()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22FFEE8F0(uint64_t a1)
{
  sub_22FFEE948(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_22FFEE948(uint64_t a1)
{
  if (!qword_2814954B0)
  {
    sub_230030DD0();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2814954B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConversionParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConversionParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FFEEB50()
{
  result = qword_27DB05BA0;
  if (!qword_27DB05BA0)
  {
    result = swift_getWitnessTable(byte_230031F14, &type metadata for JetPackAssetCacheAction.FetchCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05BA0);
  }

  return result;
}

unint64_t sub_22FFEEBA8()
{
  result = qword_27DB05BA8;
  if (!qword_27DB05BA8)
  {
    result = swift_getWitnessTable(byte_23003201C, &type metadata for JetPackAssetCacheAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05BA8);
  }

  return result;
}

unint64_t sub_22FFEEC00()
{
  result = qword_281495020;
  if (!qword_281495020)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for JetPackAssetCacheAction.ClearCodingKeys, v0, v1);
    atomic_store(result, &qword_281495020);
  }

  return result;
}

unint64_t sub_22FFEEC58()
{
  result = qword_281495028;
  if (!qword_281495028)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for JetPackAssetCacheAction.ClearCodingKeys, v0, v1);
    atomic_store(result, &qword_281495028);
  }

  return result;
}

unint64_t sub_22FFEECB0()
{
  result = qword_281495008;
  if (!qword_281495008)
  {
    result = swift_getWitnessTable(byte_230031E84, &type metadata for JetPackAssetCacheAction.FetchCodingKeys, v0, v1);
    atomic_store(result, &qword_281495008);
  }

  return result;
}

unint64_t sub_22FFEED08()
{
  result = qword_281495010;
  if (!qword_281495010)
  {
    result = swift_getWitnessTable(asc_230031EAC, &type metadata for JetPackAssetCacheAction.FetchCodingKeys, v0, v1);
    atomic_store(result, &qword_281495010);
  }

  return result;
}

unint64_t sub_22FFEED60()
{
  result = qword_281495048;
  if (!qword_281495048)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for JetPackAssetCacheAction.AssetInfoCodingKeys, v0, v1);
    atomic_store(result, &qword_281495048);
  }

  return result;
}

unint64_t sub_22FFEEDB8()
{
  result = qword_281495050[0];
  if (!qword_281495050[0])
  {
    result = swift_getWitnessTable(asc_230031E5C, &type metadata for JetPackAssetCacheAction.AssetInfoCodingKeys, v0, v1);
    atomic_store(result, qword_281495050);
  }

  return result;
}

unint64_t sub_22FFEEE10()
{
  result = qword_281495030;
  if (!qword_281495030)
  {
    result = swift_getWitnessTable(byte_230031F8C, &type metadata for JetPackAssetCacheAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495030);
  }

  return result;
}

unint64_t sub_22FFEEE68()
{
  result = qword_281495038;
  if (!qword_281495038)
  {
    result = swift_getWitnessTable(asc_230031FB4, &type metadata for JetPackAssetCacheAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_281495038);
  }

  return result;
}

uint64_t sub_22FFEEEBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656C63 && a2 == 0xE500000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6863746566 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E497465737361 && a2 == 0xE90000000000006FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

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

uint64_t sub_22FFEEFD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676162 && a2 == 0xE700000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063)
  {

    return 2;
  }

  else
  {
    v6 = sub_2300316D0();

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

uint64_t ConversionMatchingStep2Intent.metrics.getter()
{
  type metadata accessor for ConversionMatchingStep2Intent(0);
}

uint64_t type metadata accessor for ConversionMatchingStep2Intent(uint64_t a1)
{
  result = qword_281494540;
  if (!qword_281494540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FFEF200@<X0>(char *a4@<X8>)
{
  v5 = sub_230031460();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ConversionMatchingStep2Intent.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x7363697274656DLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22FFEF2B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7363697274656DLL;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x8000000230039F10;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x7363697274656DLL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0x8000000230039F10;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2300316D0();
  }

  return v8 & 1;
}

uint64_t sub_22FFEF364()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFEF3EC(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_22FFEF460(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFEF4E4@<X0>(char *a2@<X8>)
{
  v3 = sub_230031460();

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

void sub_22FFEF544(unint64_t *a1@<X8>)
{
  v2 = 0x8000000230039F10;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x7363697274656DLL;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_22FFEF588()
{
  if (*v0)
  {
    return 0x7363697274656DLL;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22FFEF5C8@<X0>(char *a3@<X8>)
{
  v4 = sub_230031460();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_22FFEF62C(uint64_t a1)
{
  v2 = sub_22FFEFF50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFEF668(uint64_t a1)
{
  v2 = sub_22FFEFF50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep2Intent.ReturnType.enrichmentQuery.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConversionMatchingStep2Intent.ReturnType.conversionMetricJson.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22FFEF704()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x656D686369726E65;
  }
}

uint64_t sub_22FFEF750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D686369726E65 && a2 == 0xEF7972657551746ELL;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230039FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_22FFEF83C(uint64_t a1)
{
  v2 = sub_22FFEFA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFEF878(uint64_t a1)
{
  v2 = sub_22FFEFA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep2Intent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05BB0, &qword_2300321B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFA48();
  sub_230031780();
  v12 = 0;
  v8 = v10[3];
  sub_2300315B0();
  if (!v8)
  {
    v11 = 1;
    sub_2300315B0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22FFEFA48()
{
  result = qword_27DB05BB8;
  if (!qword_27DB05BB8)
  {
    result = swift_getWitnessTable(byte_23003250C, &type metadata for ConversionMatchingStep2Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05BB8);
  }

  return result;
}

uint64_t ConversionMatchingStep2Intent.ReturnType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB05BC0, &qword_2300321B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFA48();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v19 = 0;
  v9 = sub_230031490();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_230031490();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  sub_22FFEE60C(a1);
}

uint64_t ConversionMatchingStep2Intent.init(conversionParams:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22FFEFD08(a1, a3);
  result = type metadata accessor for ConversionMatchingStep2Intent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_22FFEFD08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionParams(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConversionMatchingStep2Intent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB05BC8, &unk_2300321C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFF50();
  sub_230031780();
  v12 = 0;
  type metadata accessor for ConversionParams(0);
  sub_22FFF0774(&qword_27DB05BD8, type metadata accessor for ConversionParams, "Yt Rؘ");
  sub_230031640();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ConversionMatchingStep2Intent(0) + 20));
    v10[15] = 1;
    sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
    sub_22FFEFFA4();
    sub_230031640();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_22FFEFF50()
{
  result = qword_27DB05BD0;
  if (!qword_27DB05BD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep2Intent.CodingKeys, &type metadata for ConversionMatchingStep2Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05BD0);
  }

  return result;
}

unint64_t sub_22FFEFFA4()
{
  result = qword_27DB05BE8;
  if (!qword_27DB05BE8)
  {
    v5[3] = v0;
    v5[4] = v1;
    v3 = sub_22FFF0054(&qword_27DB05BE0, &unk_230035310);
    v4 = MEMORY[0x277D83948];
    v5[0] = sub_22FFF009C(&qword_27DB05BF0, &qword_27DB05C00, protocol conformance descriptor for ActionsStoreMetric, MEMORY[0x277D83948]);
    result = swift_getWitnessTable(v4, v3, v5);
    atomic_store(result, &qword_27DB05BE8);
  }

  return result;
}

uint64_t sub_22FFF0054(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22FFF009C(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_22FFF0054(&qword_27DB05BF8, &qword_2300321D0);
    v10 = sub_22FFF0774(a2, type metadata accessor for ActionsStoreMetric, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ConversionMatchingStep2Intent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for ConversionParams(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FFED9B8(&qword_27DB05C08, &qword_2300321D8);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ConversionMatchingStep2Intent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFEFF50();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_22FFF0774(&qword_27DB05C10, type metadata accessor for ConversionParams, protocol conformance descriptor for ConversionParams);
  v14 = v19;
  sub_230031520();
  sub_22FFEFD08(v20, v12);
  sub_22FFED9B8(&qword_27DB05BE0, &unk_230035310);
  v22 = 1;
  sub_22FFF0454();
  sub_230031520();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_22FFF0504(v12, v17, type metadata accessor for ConversionMatchingStep2Intent);
  sub_22FFEE60C(a1);
  return sub_22FFF056C(v12, type metadata accessor for ConversionMatchingStep2Intent);
}

unint64_t sub_22FFF0454()
{
  result = qword_27DB05C18;
  if (!qword_27DB05C18)
  {
    v5[3] = v0;
    v5[4] = v1;
    v3 = sub_22FFF0054(&qword_27DB05BE0, &unk_230035310);
    v4 = MEMORY[0x277D83978];
    v5[0] = sub_22FFF009C(&qword_27DB05C20, &qword_27DB05C28, protocol conformance descriptor for ActionsStoreMetric, MEMORY[0x277D83978]);
    result = swift_getWitnessTable(v4, v3, v5);
    atomic_store(result, &qword_27DB05C18);
  }

  return result;
}

uint64_t sub_22FFF0504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF056C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFF05D0()
{
  result = qword_27DB05C30;
  if (!qword_27DB05C30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep2Intent.CodingKeys, &type metadata for ConversionMatchingStep2Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C30);
  }

  return result;
}

unint64_t sub_22FFF0628()
{
  result = qword_27DB05C38;
  if (!qword_27DB05C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep2Intent.CodingKeys, &type metadata for ConversionMatchingStep2Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C38);
  }

  return result;
}

unint64_t sub_22FFF0680()
{
  result = qword_27DB05C40;
  if (!qword_27DB05C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep2Intent.CodingKeys, &type metadata for ConversionMatchingStep2Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C40);
  }

  return result;
}

uint64_t sub_22FFF06F0(uint64_t a1)
{
  *(a1 + 8) = sub_22FFF0774(&qword_27DB05C48, type metadata accessor for ConversionMatchingStep2Intent, protocol conformance descriptor for ConversionMatchingStep2Intent);
  result = sub_22FFF0774(&qword_27DB05C50, type metadata accessor for ConversionMatchingStep2Intent, "%z Rܝ");
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FFF0774(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_22FFF0814(uint64_t a1)
{
  type metadata accessor for ConversionParams(319);
  if (v1 <= 0x3F)
  {
    sub_22FFF0898(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FFF0898(uint64_t a1)
{
  if (!qword_2814942C0)
  {
    sub_22FFF0054(&qword_27DB05BF8, &qword_2300321D0);
    v1 = sub_2300312A0();
    if (!v2)
    {
      atomic_store(v1, &qword_2814942C0);
    }
  }
}

__n128 sub_22FFF090C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FFF0918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22FFF0974(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversionMatchingStep3Intent.ReturnType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConversionMatchingStep3Intent.ReturnType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FFF0B2C()
{
  result = qword_27DB05C58;
  if (!qword_27DB05C58)
  {
    result = swift_getWitnessTable(byte_2300324E4, &type metadata for ConversionMatchingStep2Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C58);
  }

  return result;
}

unint64_t sub_22FFF0B84()
{
  result = qword_27DB05C60;
  if (!qword_27DB05C60)
  {
    result = swift_getWitnessTable(aM_1, &type metadata for ConversionMatchingStep2Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C60);
  }

  return result;
}

unint64_t sub_22FFF0BDC()
{
  result = qword_27DB05C68;
  if (!qword_27DB05C68)
  {
    result = swift_getWitnessTable(asc_23003247C, &type metadata for ConversionMatchingStep2Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C68);
  }

  return result;
}

uint64_t ActionsStoreMetric.impressionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t type metadata accessor for ActionsStoreMetric(uint64_t a1)
{
  result = qword_281494AF8;
  if (!qword_281494AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionsStoreMetric.properties.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionsStoreMetric(0) + 32));

  return v1;
}

uint64_t sub_22FFF0DD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22FFED9B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

PromotedContentJetClient::ActionsStoreMetric::CodingKeys_optional __swiftcall ActionsStoreMetric.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::ActionsStoreMetric::CodingKeys_optional __swiftcall ActionsStoreMetric.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ActionsStoreMetric.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_22FFF0F30()
{
  v1 = *v0;
  v2 = 0x6973736572706D69;
  v3 = 0xD000000000000012;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x6D617473656D6974;
  if (v1 != 3)
  {
    v4 = 0x69747265706F7270;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x63697274656DLL;
  if (v1 != 1)
  {
    v5 = 0x65736F70727570;
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

uint64_t sub_22FFF103C(uint64_t a1)
{
  sub_2300311A0();
}

void sub_22FFF1178(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000064496E6FLL;
  v4 = 0x6973736572706D69;
  v5 = 0x8000000230039F60;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x8000000230039F80;
  }

  v7 = 0xE900000000000070;
  v8 = 0x6D617473656D6974;
  if (v2 != 3)
  {
    v8 = 0x69747265706F7270;
    v7 = 0xEA00000000007365;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x63697274656DLL;
  if (v2 != 1)
  {
    v10 = 0x65736F70727570;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

PromotedContentJetClient::ActionsStoreMetric::CodingKeys_optional sub_22FFF1270@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ActionsStoreMetric.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_22FFF12A8(uint64_t a1)
{
  v2 = sub_22FFF2C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF12E4(uint64_t a1)
{
  v2 = sub_22FFF2C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActionsStoreMetric.init(impressionId:metric:purpose:timestamp:properties:internalProperties:additionalFields:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 20) = BYTE4(a3) & 1;
  *(a9 + 24) = a4;
  *(a9 + 28) = BYTE4(a4) & 1;
  v15 = type metadata accessor for ActionsStoreMetric(0);
  sub_22FFF1400(a5, a9 + v15[7], &qword_27DB05C70, &unk_230032560);
  v16 = (a9 + v15[8]);
  *v16 = a6;
  v16[1] = a7;
  sub_22FFF1400(a8, a9 + v15[9], &qword_27DB05C78, &qword_230032800);
  return sub_22FFF1400(a10, a9 + v15[10], &qword_27DB05C78, &qword_230032800);
}

uint64_t sub_22FFF1400(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_22FFED9B8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t ActionsStoreMetric.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_22FFED9B8(&qword_27DB05C80, &qword_230032570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF2C68();
  sub_230031780();
  v12[31] = 0;
  sub_2300315B0();
  if (!v2)
  {
    v9 = *(v3 + 20);
    v12[30] = 1;
    v12[28] = v9;
    sub_2300315E0();
    v10 = *(v3 + 28);
    v12[29] = 2;
    v12[24] = v10;
    sub_2300315E0();
    type metadata accessor for ActionsStoreMetric(0);
    v12[27] = 3;
    sub_230030E00();
    sub_22FFF3274(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2300315D0();
    v12[26] = 4;
    sub_2300315B0();
    v12[25] = 5;
    type metadata accessor for APJSValue(0);
    sub_22FFF3274(&qword_27DB05C90, type metadata accessor for APJSValue, protocol conformance descriptor for APJSValue);
    sub_2300315D0();
    v12[15] = 6;
    sub_2300315D0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActionsStoreMetric.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v43 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - v6;
  v8 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v39 - v9;
  v44 = sub_22FFED9B8(&qword_27DB05C98, &qword_230032578);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = v39 - v11;
  v13 = type metadata accessor for ActionsStoreMetric(0);
  MEMORY[0x28223BE20](v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v46 = a1;
  sub_22FFEDA4C(a1, v16);
  sub_22FFF2C68();
  v17 = v45;
  sub_230031770();
  if (v17)
  {
    return sub_22FFEE60C(v46);
  }

  v18 = v10;
  v45 = v7;
  v20 = v42;
  v19 = v43;
  v53 = 0;
  v21 = v44;
  v23 = v15;
  *v15 = sub_230031490();
  *(v15 + 1) = v24;
  v52 = 1;
  v25 = sub_2300314C0();
  *(v15 + 4) = v25;
  v15[20] = BYTE4(v25) & 1;
  v51 = 2;
  v26 = sub_2300314C0();
  v40 = 0;
  *(v15 + 6) = v26;
  v15[28] = BYTE4(v26) & 1;
  sub_230030E00();
  v50 = 3;
  sub_22FFF3274(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v27 = v40;
  sub_2300314B0();
  v40 = v27;
  if (v27)
  {
    (*(v20 + 8))(v12, v21);
    sub_22FFEE60C(v46);
  }

  else
  {
    v28 = v13;
    sub_22FFF1400(v18, v23 + *(v13 + 28), &qword_27DB05C70, &unk_230032560);
    v49 = 4;
    v29 = v40;
    v30 = sub_230031490();
    v32 = v29;
    if (v29)
    {
      (*(v20 + 8))(v12, v21);
      v33 = 0;
      v40 = v29;
    }

    else
    {
      v34 = (v23 + v28[8]);
      *v34 = v30;
      v34[1] = v31;
      v35 = type metadata accessor for APJSValue(0);
      v48 = 5;
      v36 = sub_22FFF3274(&qword_27DB05CA8, type metadata accessor for APJSValue, protocol conformance descriptor for APJSValue);
      v37 = v45;
      v39[1] = v36;
      v39[2] = v35;
      sub_2300314B0();
      v40 = 0;
      sub_22FFF1400(v37, v23 + v28[9], &qword_27DB05C78, &qword_230032800);
      v47 = 6;
      v38 = v40;
      sub_2300314B0();
      v40 = v38;
      if (!v38)
      {
        (*(v20 + 8))(v12, v21);
        sub_22FFF1400(v19, v23 + v28[10], &qword_27DB05C78, &qword_230032800);
        sub_22FFF2CBC(v23, v41);
        sub_22FFEE60C(v46);
        return sub_22FFF3214(v23, type metadata accessor for ActionsStoreMetric);
      }

      (*(v20 + 8))(v12, v21);
      v33 = 1;
    }

    sub_22FFEE60C(v46);

    result = sub_22FFF31B4(v23 + v28[7], &qword_27DB05C70, &unk_230032560);
    if (v32)
    {
      if (v33)
      {
        return sub_22FFF31B4(v23 + v28[9], &qword_27DB05C78, &qword_230032800);
      }
    }

    else
    {

      if (v33)
      {
        return sub_22FFF31B4(v23 + v28[9], &qword_27DB05C78, &qword_230032800);
      }
    }
  }

  return result;
}

uint64_t ActionsStoreMetric.debugDescription.getter()
{
  v1 = v0;
  v39 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v2 = MEMORY[0x28223BE20](v39);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v38 = (&v36 - v5);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = (&v36 - v9);
  v11 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_2300313E0();
  MEMORY[0x23190F560](0x206D202020200A7BLL, 0xEA0000000000203ALL);
  v14 = *(v0 + 20);
  LODWORD(v40) = *(v0 + 4);
  BYTE4(v40) = v14;
  sub_22FFED9B8(&qword_27DB05CB0, &unk_230032580);
  v15 = sub_230031170();
  MEMORY[0x23190F560](v15);

  MEMORY[0x23190F560](0x3A2070202020200ALL, 0xE900000000000020);
  v16 = *(v0 + 28);
  LODWORD(v40) = *(v0 + 6);
  BYTE4(v40) = v16;
  v17 = sub_230031170();
  MEMORY[0x23190F560](v17);

  MEMORY[0x23190F560](0x3A2069202020200ALL, 0xE900000000000020);
  v18 = v0[1];
  v40 = *v0;
  v41 = v18;

  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v19 = sub_230031170();
  MEMORY[0x23190F560](v19);

  MEMORY[0x23190F560](0x3A2074202020200ALL, 0xE900000000000020);
  v20 = type metadata accessor for ActionsStoreMetric(0);
  sub_22FFF0DD0(v0 + v20[7], v13, &qword_27DB05C70, &unk_230032560);
  v21 = sub_230031170();
  MEMORY[0x23190F560](v21);

  MEMORY[0x23190F560](0x3A7270202020200ALL, 0xE900000000000020);
  v22 = (v0 + v20[8]);
  v23 = v22[1];
  v40 = *v22;
  v41 = v23;

  v24 = sub_230031170();
  MEMORY[0x23190F560](v24);
  v25 = v8;

  MEMORY[0x23190F560](0x3A7069202020200ALL, 0xE900000000000020);
  sub_22FFF0DD0(v0 + v20[9], v8, &qword_27DB05C78, &qword_230032800);
  v26 = type metadata accessor for APJSValue(0);
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(v25, 1, v26) == 1)
  {
    *v10 = 7104878;
    v10[1] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v29 = *(v27 + 56);
    v29(v10, 0, 1, v26);
    if (v28(v25, 1, v26) != 1)
    {
      sub_22FFF31B4(v25, &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    sub_22FFF2D20(v25, v10);
    v29 = *(v27 + 56);
    v29(v10, 0, 1, v26);
  }

  v30 = sub_230031170();
  MEMORY[0x23190F560](v30);

  MEMORY[0x23190F560](0x3A6664202020200ALL, 0xE900000000000020);
  v31 = v37;
  sub_22FFF0DD0(v1 + v20[10], v37, &qword_27DB05C78, &qword_230032800);
  if (v28(v31, 1, v26) == 1)
  {
    v32 = v38;
    *v38 = 7104878;
    v32[1] = 0xE300000000000000;
    swift_storeEnumTagMultiPayload();
    v29(v32, 0, 1, v26);
    if (v28(v31, 1, v26) != 1)
    {
      sub_22FFF31B4(v31, &qword_27DB05C78, &qword_230032800);
    }
  }

  else
  {
    v33 = v38;
    sub_22FFF2D20(v31, v38);
    v29(v33, 0, 1, v26);
  }

  v34 = sub_230031170();
  MEMORY[0x23190F560](v34);

  MEMORY[0x23190F560](32010, 0xE200000000000000);
  return v42;
}

BOOL _s24PromotedContentJetClient18ActionsStoreMetricV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for APJSValue(0);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v5 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v57 - v9;
  v65 = sub_22FFED9B8(&qword_27DB05CD8, qword_2300327E0);
  v10 = MEMORY[0x28223BE20](v65);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v57 - v12;
  v14 = sub_230030E00();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22FFED9B8(&qword_27DB05C70, &unk_230032560);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v57 - v19;
  v21 = sub_22FFED9B8(&qword_27DB05CE0, &qword_230037BF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v24 = *(a1 + 8);
  v25 = *(a2 + 8);
  if (v24)
  {
    if (!v25 || (*a1 != *a2 || v24 != v25) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v26 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v26 = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = *(a2 + 28);
  if (*(a1 + 28))
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v27 = 1;
    }

    if (v27)
    {
      return 0;
    }
  }

  v59 = v5;
  v58 = type metadata accessor for ActionsStoreMetric(0);
  v28 = *(v58 + 28);
  v29 = *(v21 + 48);
  sub_22FFF0DD0(a1 + v28, v23, &qword_27DB05C70, &unk_230032560);
  v60 = v29;
  sub_22FFF0DD0(a2 + v28, &v23[v29], &qword_27DB05C70, &unk_230032560);
  v30 = *(v15 + 48);
  if (v30(v23, 1, v14) == 1)
  {
    if (v30(&v23[v60], 1, v14) == 1)
    {
      sub_22FFF31B4(v23, &qword_27DB05C70, &unk_230032560);
      goto LABEL_29;
    }

LABEL_25:
    v31 = &qword_27DB05CE0;
    v32 = &qword_230037BF0;
    v33 = v23;
LABEL_26:
    sub_22FFF31B4(v33, v31, v32);
    return 0;
  }

  sub_22FFF0DD0(v23, v20, &qword_27DB05C70, &unk_230032560);
  if (v30(&v23[v60], 1, v14) == 1)
  {
    (*(v15 + 8))(v20, v14);
    goto LABEL_25;
  }

  (*(v15 + 32))(v17, &v23[v60], v14);
  sub_22FFF3274(&qword_27DB05CE8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v35 = sub_230031140();
  v36 = *(v15 + 8);
  v36(v17, v14);
  v36(v20, v14);
  sub_22FFF31B4(v23, &qword_27DB05C70, &unk_230032560);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_29:
  v37 = v58;
  v38 = *(v58 + 32);
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    v43 = v59;
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_2300316D0() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v43 = v59;
    if (v42)
    {
      return 0;
    }
  }

  v44 = *(v37 + 36);
  v45 = *(v65 + 48);
  sub_22FFF0DD0(a1 + v44, v13, &qword_27DB05C78, &qword_230032800);
  sub_22FFF0DD0(a2 + v44, &v13[v45], &qword_27DB05C78, &qword_230032800);
  v46 = *(v64 + 48);
  v47 = v66;
  if (v46(v13, 1, v66) == 1)
  {
    if (v46(&v13[v45], 1, v47) == 1)
    {
      sub_22FFF31B4(v13, &qword_27DB05C78, &qword_230032800);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v48 = v63;
  sub_22FFF0DD0(v13, v63, &qword_27DB05C78, &qword_230032800);
  if (v46(&v13[v45], 1, v47) == 1)
  {
    sub_22FFF3214(v48, type metadata accessor for APJSValue);
LABEL_41:
    v31 = &qword_27DB05CD8;
    v32 = qword_2300327E0;
    v33 = v13;
    goto LABEL_26;
  }

  sub_22FFF2D20(&v13[v45], v43);
  v49 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v48, v43);
  sub_22FFF3214(v43, type metadata accessor for APJSValue);
  sub_22FFF3214(v48, type metadata accessor for APJSValue);
  sub_22FFF31B4(v13, &qword_27DB05C78, &qword_230032800);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v50 = *(v37 + 40);
  v51 = *(v65 + 48);
  v52 = a1 + v50;
  v53 = v62;
  sub_22FFF0DD0(v52, v62, &qword_27DB05C78, &qword_230032800);
  sub_22FFF0DD0(a2 + v50, v53 + v51, &qword_27DB05C78, &qword_230032800);
  v54 = v66;
  if (v46(v53, 1, v66) != 1)
  {
    v55 = v61;
    sub_22FFF0DD0(v53, v61, &qword_27DB05C78, &qword_230032800);
    if (v46((v53 + v51), 1, v54) == 1)
    {
      sub_22FFF3214(v55, type metadata accessor for APJSValue);
      goto LABEL_48;
    }

    sub_22FFF2D20(v53 + v51, v43);
    v56 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v55, v43);
    sub_22FFF3214(v43, type metadata accessor for APJSValue);
    sub_22FFF3214(v55, type metadata accessor for APJSValue);
    sub_22FFF31B4(v53, &qword_27DB05C78, &qword_230032800);
    return (v56 & 1) != 0;
  }

  if (v46((v53 + v51), 1, v54) != 1)
  {
LABEL_48:
    v31 = &qword_27DB05CD8;
    v32 = qword_2300327E0;
    v33 = v53;
    goto LABEL_26;
  }

  sub_22FFF31B4(v53, &qword_27DB05C78, &qword_230032800);
  return 1;
}

unint64_t sub_22FFF2C68()
{
  result = qword_27DB05C88;
  if (!qword_27DB05C88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsStoreMetric.CodingKeys, &type metadata for ActionsStoreMetric.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05C88);
  }

  return result;
}

uint64_t sub_22FFF2CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionsStoreMetric(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FFF2D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FFF2D88()
{
  result = qword_27DB05CC0;
  if (!qword_27DB05CC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsStoreMetric.CodingKeys, &type metadata for ActionsStoreMetric.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05CC0);
  }

  return result;
}

unint64_t sub_22FFF2DE0()
{
  result = qword_27DB05CC8;
  if (!qword_27DB05CC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsStoreMetric.CodingKeys, &type metadata for ActionsStoreMetric.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05CC8);
  }

  return result;
}

unint64_t sub_22FFF2E38()
{
  result = qword_27DB05CD0;
  if (!qword_27DB05CD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActionsStoreMetric.CodingKeys, &type metadata for ActionsStoreMetric.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05CD0);
  }

  return result;
}

void sub_22FFF2EB4(uint64_t a1)
{
  sub_22FFF2FC4(319, &qword_2814942D0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22FFF2FC4(319, &qword_2814942B0, MEMORY[0x277D849A8]);
    if (v2 <= 0x3F)
    {
      sub_22FFF3010(319, &qword_281495498, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_22FFF3010(319, &qword_281494350, type metadata accessor for APJSValue);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FFF2FC4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_230031380();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22FFF3010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_230031380();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ActionsStoreMetric.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionsStoreMetric.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FFF31B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22FFED9B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22FFF3214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FFF3274(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FFF32CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConversionParams(uint64_t a1)
{
  result = qword_281494D80;
  if (!qword_281494D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConversionParams.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConversionParams(0) + 24);
  v4 = sub_230030E00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

PromotedContentJetClient::ConversionParams::CodingKeys_optional __swiftcall ConversionParams.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ConversionParams.CodingKeys.stringValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

uint64_t sub_22FFF3524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x8000000230039FA0;
  if (v2 == 1)
  {
    v5 = 0x8000000230039FA0;
  }

  else
  {
    v3 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6769666E6F63;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6769666E6F63;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_22FFF3624()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFF36CC(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_22FFF3760(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_22FFF3810(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x8000000230039FA0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x6D617473656D6974;
    v4 = 0xE900000000000070;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6769666E6F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_22FFF3874()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

PromotedContentJetClient::ConversionParams::CodingKeys_optional sub_22FFF38D4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ConversionParams.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_22FFF390C(uint64_t a1)
{
  v2 = sub_22FFF3D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF3948(uint64_t a1)
{
  v2 = sub_22FFF3D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionParams.init(config:conversionSignal:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_22FFF3A24(a1, a4);
  v7 = type metadata accessor for ConversionParams(0);
  sub_22FFF3A94(a2, a4 + *(v7 + 20));
  v8 = *(v7 + 24);
  v9 = sub_230030E00();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_22FFF3A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FFF3A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversionSignal(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ConversionParams.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05CF0, &qword_230032808);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF3D70();
  sub_230031780();
  v8[15] = 0;
  type metadata accessor for APJSValue(0);
  sub_22FFF4334(&qword_27DB05C90, type metadata accessor for APJSValue, protocol conformance descriptor for APJSValue);
  sub_2300315D0();
  if (!v1)
  {
    type metadata accessor for ConversionParams(0);
    v8[14] = 1;
    type metadata accessor for ConversionSignal(0);
    sub_22FFF4334(&qword_27DB05D00, type metadata accessor for ConversionSignal, protocol conformance descriptor for ConversionSignal);
    sub_230031640();
    v8[13] = 2;
    sub_230030E00();
    sub_22FFF4334(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_230031640();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22FFF3D70()
{
  result = qword_27DB05CF8;
  if (!qword_27DB05CF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionParams.CodingKeys, &type metadata for ConversionParams.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05CF8);
  }

  return result;
}

uint64_t ConversionParams.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_230030E00();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ConversionSignal(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v24 - v9;
  v32 = sub_22FFED9B8(&qword_27DB05D08, &qword_230032810);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ConversionParams(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v33 = a1;
  sub_22FFEDA4C(a1, v15);
  sub_22FFF3D70();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v33);
  }

  v25 = v12;
  v16 = v30;
  v17 = v14;
  type metadata accessor for APJSValue(0);
  v36 = 0;
  sub_22FFF4334(&qword_27DB05CA8, type metadata accessor for APJSValue, protocol conformance descriptor for APJSValue);
  v19 = v31;
  v18 = v32;
  sub_2300314B0();
  v31 = v17;
  sub_22FFF3A24(v19, v17);
  v35 = 1;
  sub_22FFF4334(&qword_27DB05D10, type metadata accessor for ConversionSignal, protocol conformance descriptor for ConversionSignal);
  sub_230031520();
  v20 = v31;
  sub_22FFF3A94(v7, &v31[*(v25 + 20)]);
  v34 = 2;
  sub_22FFF4334(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v22 = v28;
  v21 = v29;
  sub_230031520();
  (*(v16 + 8))(v11, v18);
  (*(v26 + 32))(v20 + *(v25 + 24), v22, v21);
  sub_22FFF437C(v20, v27, type metadata accessor for ConversionParams);
  sub_22FFEE60C(v33);
  return sub_22FFF43E4(v20, type metadata accessor for ConversionParams);
}

uint64_t sub_22FFF42CC(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB05C78, &qword_230032800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FFF4334(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FFF437C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF43E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFF4448()
{
  result = qword_27DB05D18;
  if (!qword_27DB05D18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionParams.CodingKeys, &type metadata for ConversionParams.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D18);
  }

  return result;
}

unint64_t sub_22FFF44A0()
{
  result = qword_27DB05D20;
  if (!qword_27DB05D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionParams.CodingKeys, &type metadata for ConversionParams.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D20);
  }

  return result;
}

unint64_t sub_22FFF44F8()
{
  result = qword_27DB05D28;
  if (!qword_27DB05D28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionParams.CodingKeys, &type metadata for ConversionParams.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D28);
  }

  return result;
}

void sub_22FFF45A4(uint64_t a1)
{
  sub_22FFF4640(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConversionSignal(319);
    if (v2 <= 0x3F)
    {
      sub_230030E00();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22FFF4640(uint64_t a1)
{
  if (!qword_281494350)
  {
    type metadata accessor for APJSValue(255);
    v1 = sub_230031380();
    if (!v2)
    {
      atomic_store(v1, &qword_281494350);
    }
  }
}

uint64_t ConversionMatchingStep3Intent.conversionMetricJson.getter()
{
  v1 = *(v0 + *(type metadata accessor for ConversionMatchingStep3Intent(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ConversionMatchingStep3Intent(uint64_t a1)
{
  result = qword_2814944B0;
  if (!qword_2814944B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

PromotedContentJetClient::ConversionMatchingStep3Intent::CodingKeys_optional __swiftcall ConversionMatchingStep3Intent.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ConversionMatchingStep3Intent.CodingKeys.stringValue.getter()
{
  v1 = 0x6E6174736E496461;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_22FFF48B0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEA00000000006563;
  v3 = 0x6E6174736E496461;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x6E6174736E496461;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000230039FC0;
  }

  else
  {
    v6 = 0xEA00000000006563;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000230039F10;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000230039FC0;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000230039F10;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2300316D0();
  }

  return v11 & 1;
}

uint64_t sub_22FFF4990()
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

uint64_t sub_22FFF4A3C(uint64_t a1)
{
  sub_2300311A0();
}

uint64_t sub_22FFF4AD4(uint64_t a1)
{
  sub_230031740();
  sub_2300311A0();

  return sub_230031760();
}

void sub_22FFF4B88(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006563;
  v4 = 0x6E6174736E496461;
  if (v2 == 1)
  {
    v4 = 0xD000000000000014;
    v3 = 0x8000000230039FC0;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x8000000230039F10;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_22FFF4BF0()
{
  v1 = 0x6E6174736E496461;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

PromotedContentJetClient::ConversionMatchingStep3Intent::CodingKeys_optional sub_22FFF4C54@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ConversionMatchingStep3Intent.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_22FFF4C8C(uint64_t a1)
{
  v2 = sub_22FFF5654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF4CC8(uint64_t a1)
{
  v2 = sub_22FFF5654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep3Intent.ReturnType.impressionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ConversionMatchingStep3Intent.ReturnType.conversionMetricJson.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

PromotedContentJetClient::ConversionMatchingStep3Intent::ReturnType __swiftcall ConversionMatchingStep3Intent.ReturnType.init(impressionId:conversionMetricJson:)(Swift::String_optional impressionId, Swift::String_optional conversionMetricJson)
{
  *v2 = impressionId;
  v2[1] = conversionMetricJson;
  result.conversionMetricJson = conversionMetricJson;
  result.impressionId = impressionId;
  return result;
}

uint64_t sub_22FFF4D70()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6973736572706D69;
  }
}

uint64_t sub_22FFF4DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6973736572706D69 && a2 == 0xEC00000064496E6FLL;
  if (v6 || (sub_2300316D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000230039FC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2300316D0();

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

uint64_t sub_22FFF4EA0(uint64_t a1)
{
  v2 = sub_22FFF50AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF4EDC(uint64_t a1)
{
  v2 = sub_22FFF50AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ConversionMatchingStep3Intent.ReturnType.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05D30, &qword_230032A20);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF50AC();
  sub_230031780();
  v12 = 0;
  v8 = v10[3];
  sub_2300315B0();
  if (!v8)
  {
    v11 = 1;
    sub_2300315B0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22FFF50AC()
{
  result = qword_27DB05D38;
  if (!qword_27DB05D38)
  {
    result = swift_getWitnessTable(byte_230032D6C, &type metadata for ConversionMatchingStep3Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D38);
  }

  return result;
}

uint64_t ConversionMatchingStep3Intent.ReturnType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB05D40, &qword_230032A28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF50AC();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  v19 = 0;
  v9 = sub_230031490();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_230031490();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  sub_22FFEE60C(a1);
}

uint64_t ConversionMatchingStep3Intent.init(conversionParams:conversionMetricJson:adInstance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22FFF53B8(a1, a5, type metadata accessor for ConversionParams);
  v9 = type metadata accessor for ConversionMatchingStep3Intent(0);
  v10 = (a5 + *(v9 + 20));
  *v10 = a2;
  v10[1] = a3;
  return sub_22FFF53B8(a4, a5 + *(v9 + 24), type metadata accessor for ActionStoreAdInstance);
}

uint64_t sub_22FFF53B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ConversionMatchingStep3Intent.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB05D48, &qword_230032A30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFF5654();
  sub_230031780();
  v8[15] = 0;
  type metadata accessor for ConversionParams(0);
  sub_22FFF5D6C(&qword_27DB05BD8, type metadata accessor for ConversionParams, "Yt Rؘ");
  sub_230031640();
  if (!v1)
  {
    type metadata accessor for ConversionMatchingStep3Intent(0);
    v8[14] = 1;
    sub_230031600();
    v8[13] = 2;
    type metadata accessor for ActionStoreAdInstance(0);
    sub_22FFF5D6C(&qword_27DB05D58, type metadata accessor for ActionStoreAdInstance, protocol conformance descriptor for ActionStoreAdInstance);
    sub_230031640();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_22FFF5654()
{
  result = qword_27DB05D50;
  if (!qword_27DB05D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep3Intent.CodingKeys, &type metadata for ConversionMatchingStep3Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D50);
  }

  return result;
}

uint64_t ConversionMatchingStep3Intent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for ActionStoreAdInstance(0);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConversionParams(0);
  MEMORY[0x28223BE20](v6);
  v28 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22FFED9B8(&qword_27DB05D60, &qword_230032A38);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ConversionMatchingStep3Intent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  sub_22FFEDA4C(a1, v13);
  sub_22FFF5654();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(v30);
  }

  v14 = v27;
  v24 = v10;
  v15 = v12;
  v33 = 0;
  sub_22FFF5D6C(&qword_27DB05C10, type metadata accessor for ConversionParams, protocol conformance descriptor for ConversionParams);
  v17 = v28;
  v16 = v29;
  sub_230031520();
  sub_22FFF53B8(v17, v15, type metadata accessor for ConversionParams);
  v32 = 1;
  v18 = sub_2300314E0();
  v19 = v24;
  v20 = (v15 + *(v24 + 20));
  *v20 = v18;
  v20[1] = v21;
  v31 = 2;
  sub_22FFF5D6C(&qword_27DB05D68, type metadata accessor for ActionStoreAdInstance, protocol conformance descriptor for ActionStoreAdInstance);
  sub_230031520();
  (*(v14 + 8))(v9, v16);
  sub_22FFF53B8(v5, v15 + *(v19 + 24), type metadata accessor for ActionStoreAdInstance);
  sub_22FFF5AFC(v15, v25, type metadata accessor for ConversionMatchingStep3Intent);
  sub_22FFEE60C(v30);
  return sub_22FFF5B64(v15, type metadata accessor for ConversionMatchingStep3Intent);
}

uint64_t sub_22FFF5AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FFF5B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FFF5BC8()
{
  result = qword_27DB05D70;
  if (!qword_27DB05D70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep3Intent.CodingKeys, &type metadata for ConversionMatchingStep3Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D70);
  }

  return result;
}

unint64_t sub_22FFF5C20()
{
  result = qword_27DB05D78;
  if (!qword_27DB05D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep3Intent.CodingKeys, &type metadata for ConversionMatchingStep3Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D78);
  }

  return result;
}

unint64_t sub_22FFF5C78()
{
  result = qword_27DB05D80;
  if (!qword_27DB05D80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ConversionMatchingStep3Intent.CodingKeys, &type metadata for ConversionMatchingStep3Intent.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D80);
  }

  return result;
}

uint64_t sub_22FFF5CE8(uint64_t a1)
{
  *(a1 + 8) = sub_22FFF5D6C(&qword_27DB05D88, type metadata accessor for ConversionMatchingStep3Intent, protocol conformance descriptor for ConversionMatchingStep3Intent);
  result = sub_22FFF5D6C(&qword_27DB05D90, type metadata accessor for ConversionMatchingStep3Intent, protocol conformance descriptor for ConversionMatchingStep3Intent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FFF5D6C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FFF5E0C(uint64_t a1)
{
  result = type metadata accessor for ConversionParams(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ActionStoreAdInstance(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22FFF5ECC()
{
  result = qword_27DB05D98;
  if (!qword_27DB05D98)
  {
    result = swift_getWitnessTable(byte_230032D44, &type metadata for ConversionMatchingStep3Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05D98);
  }

  return result;
}

unint64_t sub_22FFF5F24()
{
  result = qword_27DB05DA0;
  if (!qword_27DB05DA0)
  {
    result = swift_getWitnessTable(byte_230032CB4, &type metadata for ConversionMatchingStep3Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05DA0);
  }

  return result;
}

unint64_t sub_22FFF5F7C()
{
  result = qword_27DB05DA8;
  if (!qword_27DB05DA8)
  {
    result = swift_getWitnessTable(byte_230032CDC, &type metadata for ConversionMatchingStep3Intent.ReturnType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05DA8);
  }

  return result;
}

uint64_t sub_22FFF5FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_22FFFA88C(v13, v10);
        sub_22FFFA88C(v14, v7);
        v16 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_22FFFC768(v7);
        sub_22FFFC768(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22FFF6150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = sub_22FFED9B8(&qword_27DB060C0, &qword_230033F40);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = a2;
  v52 = (&v49 - v15);
  v16 = 0;
  v50 = a1;
  v17 = *(a1 + 64);
  v49 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
    v54 = (v20 - 1) & v20;
    v22 = __clz(__rbit64(v20)) | (v16 << 6);
    v23 = v53;
LABEL_16:
    v28 = (*(v50 + 48) + 16 * v22);
    v29 = *v28;
    v30 = v28[1];
    sub_22FFFA88C(*(v50 + 56) + *(v5 + 72) * v22, v10);
    v31 = sub_22FFED9B8(&qword_27DB060C8, &qword_230033F48);
    v32 = *(v31 + 48);
    *v23 = v29;
    v23[1] = v30;
    sub_22FFF2D20(v10, v23 + v32);
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);

LABEL_17:
    v33 = v52;
    sub_22FFFC7C4(v23, v52);
    v34 = sub_22FFED9B8(&qword_27DB060C8, &qword_230033F48);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v10;
    v38 = v5;
    v39 = *(v34 + 48);
    v41 = *v33;
    v40 = v33[1];
    sub_22FFF2D20(v33 + v39, v8);
    v42 = v51;
    v43 = sub_23002F3D0(v41, v40);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      sub_22FFFC768(v8);
      return 0;
    }

    v46 = *(v42 + 56);
    v5 = v38;
    v10 = v37;
    sub_22FFFA88C(v46 + *(v38 + 72) * v43, v37);
    v47 = _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(v37, v8);
    sub_22FFFC768(v37);
    result = sub_22FFFC768(v8);
    v20 = v54;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  v23 = v53;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v48 = sub_22FFED9B8(&qword_27DB060C8, &qword_230033F48);
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v54 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v49 + 8 * v26);
    ++v16;
    if (v27)
    {
      v54 = (v27 - 1) & v27;
      v22 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FFF6568(char a1)
{
  result = 0x676E69727473;
  switch(a1)
  {
    case 1:
      result = 0x656C62756F64;
      break;
    case 2:
      result = 0x7261686363;
      break;
    case 3:
      result = 0x3233746E69;
      break;
    case 4:
      result = 0x3233746E6975;
      break;
    case 5:
      result = 0x3436746E69;
      break;
    case 6:
      result = 0x3436746E6975;
      break;
    case 7:
      result = 1819242338;
      break;
    case 8:
      result = 1702125924;
      break;
    case 9:
      result = 7107189;
      break;
    case 10:
      result = 1684632949;
      break;
    case 11:
      result = 0x7961727261;
      break;
    case 12:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22FFF6690(uint64_t a1)
{
  v2 = sub_22FFFAA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF66CC(uint64_t a1)
{
  v2 = sub_22FFFAA00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6708(uint64_t a1)
{
  v2 = sub_22FFFAB50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6744(uint64_t a1)
{
  v2 = sub_22FFFAB50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6780(uint64_t a1)
{
  v2 = sub_22FFFACF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF67BC(uint64_t a1)
{
  v2 = sub_22FFFACF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6800@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FFFC308(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FFF6834(uint64_t a1)
{
  v2 = sub_22FFFA838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6870(uint64_t a1)
{
  v2 = sub_22FFFA838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF68AC(uint64_t a1)
{
  v2 = sub_22FFFAAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF68E8(uint64_t a1)
{
  v2 = sub_22FFFAAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6924(uint64_t a1)
{
  v2 = sub_22FFFA8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6960(uint64_t a1)
{
  v2 = sub_22FFFA8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF699C(uint64_t a1)
{
  v2 = sub_22FFFAD48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF69D8(uint64_t a1)
{
  v2 = sub_22FFFAD48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6A14(uint64_t a1)
{
  v2 = sub_22FFFACA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6A50(uint64_t a1)
{
  v2 = sub_22FFFACA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6A8C(uint64_t a1)
{
  v2 = sub_22FFFABF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6AC8(uint64_t a1)
{
  v2 = sub_22FFFABF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6B04(uint64_t a1)
{
  v2 = sub_22FFFAD9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6B40(uint64_t a1)
{
  v2 = sub_22FFFAD9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6B7C(uint64_t a1)
{
  v2 = sub_22FFFAC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6BB8(uint64_t a1)
{
  v2 = sub_22FFFAC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6BF4(uint64_t a1)
{
  v2 = sub_22FFFABA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6C30(uint64_t a1)
{
  v2 = sub_22FFFABA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6C6C(uint64_t a1)
{
  v2 = sub_22FFFAAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6CA8(uint64_t a1)
{
  v2 = sub_22FFFAAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFF6CE4()
{
  sub_230031740();
  MEMORY[0x23190FB00](0);
  return sub_230031760();
}

uint64_t sub_22FFF6D28(uint64_t a1)
{
  sub_230031740();
  MEMORY[0x23190FB00](0);
  return sub_230031760();
}

uint64_t sub_22FFF6D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2300316D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22FFF6DE8(uint64_t a1)
{
  v2 = sub_22FFFAA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFF6E24(uint64_t a1)
{
  v2 = sub_22FFFAA54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t APJSValue.encode(to:)(void *a1)
{
  v90 = sub_22FFED9B8(&qword_27DB05DB0, &qword_230032DC0);
  v54[8] = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = v54 - v2;
  v89 = sub_22FFED9B8(&qword_27DB05DB8, &qword_230032DC8);
  v54[7] = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v54 - v3;
  v86 = sub_22FFED9B8(&qword_27DB05DC0, &qword_230032DD0);
  v54[6] = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = v54 - v4;
  v5 = sub_230030E20();
  v84 = *(v5 - 8);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_22FFED9B8(&qword_27DB05DC8, &qword_230032DD8);
  v54[5] = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = v54 - v7;
  v8 = sub_230030DD0();
  v79 = *(v8 - 8);
  v80 = v8;
  MEMORY[0x28223BE20](v8);
  v77 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_22FFED9B8(&qword_27DB05DD0, &qword_230032DE0);
  v54[4] = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = v54 - v10;
  v75 = sub_230030E00();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_22FFED9B8(&qword_27DB05DD8, &qword_230032DE8);
  v54[3] = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = v54 - v12;
  v69 = sub_22FFED9B8(&qword_27DB05DE0, &qword_230032DF0);
  v54[2] = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = v54 - v13;
  v67 = sub_22FFED9B8(&qword_27DB05DE8, &qword_230032DF8);
  v54[1] = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = v54 - v14;
  v65 = sub_22FFED9B8(&qword_27DB05DF0, &qword_230032E00);
  v54[0] = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = v54 - v15;
  v63 = sub_22FFED9B8(&qword_27DB05DF8, &qword_230032E08);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v54 - v16;
  v60 = sub_22FFED9B8(&qword_27DB05E00, &qword_230032E10);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = v54 - v17;
  v57 = sub_22FFED9B8(&qword_27DB05E08, &qword_230032E18);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v19 = v54 - v18;
  v20 = sub_22FFED9B8(&qword_27DB05E10, &qword_230032E20);
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v54 - v21;
  v23 = type metadata accessor for APJSValue(0);
  MEMORY[0x28223BE20](v23);
  v25 = (v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_22FFED9B8(&qword_27DB05E18, &qword_230032E28);
  v91[0] = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v27 = v54 - v26;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFA838();
  v92 = v27;
  sub_230031780();
  sub_22FFFA88C(v91[1], v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v94) = 1;
      sub_22FFFAD48();
      v52 = v92;
      v51 = v93;
      sub_2300315A0();
      v53 = v57;
      sub_230031620();
      (*(v56 + 8))(v19, v53);
      return (*(v91[0] + 8))(v52, v51);
    case 2u:
      LOBYTE(v94) = 2;
      sub_22FFFACF4();
      v37 = v58;
      v39 = v92;
      v38 = v93;
      sub_2300315A0();
      v40 = v60;
      sub_230031650();
      v41 = v91;
      goto LABEL_14;
    case 3u:
      LOBYTE(v94) = 3;
      sub_22FFFACA0();
      v37 = v61;
      v39 = v92;
      v38 = v93;
      sub_2300315A0();
      v40 = v63;
      sub_230031660();
      v41 = &v93;
      goto LABEL_14;
    case 4u:
      LOBYTE(v94) = 4;
      sub_22FFFAC4C();
      v37 = v64;
      v39 = v92;
      v38 = v93;
      sub_2300315A0();
      v40 = v65;
      sub_230031680();
      v41 = &v78;
      goto LABEL_14;
    case 5u:
      LOBYTE(v94) = 5;
      sub_22FFFABF8();
      v37 = v66;
      v39 = v92;
      v38 = v93;
      sub_2300315A0();
      v40 = v67;
      sub_230031670();
      v41 = &v79;
      goto LABEL_14;
    case 6u:
      LOBYTE(v94) = 6;
      sub_22FFFABA4();
      v37 = v68;
      v39 = v92;
      v38 = v93;
      sub_2300315A0();
      v40 = v69;
      sub_230031690();
      v41 = &v80;
      goto LABEL_14;
    case 7u:
      LOBYTE(v94) = 7;
      sub_22FFFAB50();
      v37 = v70;
      v39 = v92;
      v38 = v93;
      sub_2300315A0();
      v40 = v71;
      sub_230031610();
      v41 = &v81;
LABEL_14:
      (*(*(v41 - 32) + 8))(v37, v40);
      return (*(v91[0] + 8))(v39, v38);
    case 8u:
      v44 = v74;
      v45 = v72;
      v43 = v75;
      (*(v74 + 32))(v72, v25, v75);
      LOBYTE(v94) = 8;
      sub_22FFFAAFC();
      v46 = v73;
      v48 = v92;
      v47 = v93;
      sub_2300315A0();
      sub_22FFFAF48(&qword_281494290, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      v49 = v76;
      sub_230031640();
      v50 = &v82;
      goto LABEL_17;
    case 9u:
      v44 = v79;
      v43 = v80;
      v45 = v77;
      (*(v79 + 32))(v77, v25, v80);
      LOBYTE(v94) = 9;
      sub_22FFFAAA8();
      v46 = v78;
      v48 = v92;
      v47 = v93;
      sub_2300315A0();
      sub_22FFFAF48(&qword_2814942A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v49 = v81;
      sub_230031640();
      v50 = &v83;
      goto LABEL_17;
    case 0xAu:
      v44 = v84;
      v43 = v85;
      v45 = v82;
      (*(v84 + 32))(v82, v25, v85);
      LOBYTE(v94) = 10;
      sub_22FFFAA54();
      v46 = v83;
      v48 = v92;
      v47 = v93;
      sub_2300315A0();
      sub_22FFFAF48(&qword_27DB05E60, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v49 = v86;
      sub_230031640();
      v50 = &v84;
LABEL_17:
      (*(*(v50 - 32) + 1))(v46, v49);
      (*(v44 + 8))(v45, v43);
      return (*(v91[0] + 8))(v48, v47);
    case 0xBu:
      v31 = *v25;
      LOBYTE(v94) = 11;
      sub_22FFFAA00();
      v32 = v87;
      v34 = v92;
      v33 = v93;
      sub_2300315A0();
      v94 = v31;
      sub_22FFED9B8(&qword_27DB05E48, &qword_230032E38);
      sub_22FFFAEAC(&qword_27DB05E50, &qword_27DB05C90, protocol conformance descriptor for APJSValue, MEMORY[0x277D83948]);
      v35 = v89;
      sub_230031640();
      v36 = &v85;
      goto LABEL_6;
    case 0xCu:
      v42 = *v25;
      LOBYTE(v94) = 12;
      sub_22FFFA8F0();
      v32 = v88;
      v34 = v92;
      v33 = v93;
      sub_2300315A0();
      v94 = v42;
      sub_22FFED9B8(&qword_27DB05E30, &qword_230032E30);
      sub_22FFFA944();
      v35 = v90;
      sub_230031640();
      v36 = &v86;
LABEL_6:
      (*(*(v36 - 32) + 8))(v32, v35);
      (*(v91[0] + 8))(v34, v33);

      break;
    default:
      LOBYTE(v94) = 0;
      sub_22FFFAD9C();
      v29 = v92;
      v28 = v93;
      sub_2300315A0();
      sub_230031600();

      (*(v55 + 8))(v22, v20);
      result = (*(v91[0] + 8))(v29, v28);
      break;
  }

  return result;
}

uint64_t APJSValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v182 = sub_22FFED9B8(&qword_27DB05EB8, &qword_230032E40);
  v167 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v199 = &v144 - v3;
  v183 = sub_22FFED9B8(&qword_27DB05EC0, &qword_230032E48);
  v166 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v193 = &v144 - v4;
  v181 = sub_22FFED9B8(&qword_27DB05EC8, &qword_230032E50);
  v165 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v192 = &v144 - v5;
  v180 = sub_22FFED9B8(&qword_27DB05ED0, &qword_230032E58);
  v164 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v191 = &v144 - v6;
  v179 = sub_22FFED9B8(&qword_27DB05ED8, &qword_230032E60);
  v163 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v190 = &v144 - v7;
  v178 = sub_22FFED9B8(&qword_27DB05EE0, &qword_230032E68);
  v162 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v189 = &v144 - v8;
  v177 = sub_22FFED9B8(&qword_27DB05EE8, &qword_230032E70);
  v161 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v188 = &v144 - v9;
  v176 = sub_22FFED9B8(&qword_27DB05EF0, &qword_230032E78);
  v160 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v187 = &v144 - v10;
  v175 = sub_22FFED9B8(&qword_27DB05EF8, &qword_230032E80);
  v159 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v186 = &v144 - v11;
  v174 = sub_22FFED9B8(&qword_27DB05F00, &qword_230032E88);
  v158 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v198 = &v144 - v12;
  v173 = sub_22FFED9B8(&qword_27DB05F08, &qword_230032E90);
  v157 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v197 = &v144 - v13;
  v172 = sub_22FFED9B8(&qword_27DB05F10, &qword_230032E98);
  v156 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v185 = &v144 - v14;
  v171 = sub_22FFED9B8(&qword_27DB05F18, &qword_230032EA0);
  v155 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v184 = &v144 - v15;
  v196 = sub_22FFED9B8(&qword_27DB05F20, &qword_230032EA8);
  v200 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v17 = &v144 - v16;
  v195 = type metadata accessor for APJSValue(0);
  v18 = MEMORY[0x28223BE20](v195);
  v153 = (&v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v154 = (&v144 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v170 = &v144 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v169 = &v144 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v168 = &v144 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v152 = &v144 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v151 = (&v144 - v31);
  v32 = MEMORY[0x28223BE20](v30);
  v150 = (&v144 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v149 = (&v144 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v144 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v144 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v144 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v144 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v144 - v48;
  v50 = a1[3];
  v202 = a1;
  sub_22FFEDA4C(a1, v50);
  sub_22FFFA838();
  v201 = v17;
  v51 = v203;
  sub_230031770();
  if (v51)
  {
LABEL_9:
    v69 = v202;
    return sub_22FFEE60C(v69);
  }

  v144 = v47;
  v145 = v44;
  v146 = v41;
  v147 = v38;
  v53 = v197;
  v52 = v198;
  v54 = v199;
  v203 = 0;
  v55 = v195;
  v148 = v49;
  v56 = v196;
  v57 = sub_230031580();
  v58 = (2 * *(v57 + 16)) | 1;
  v205 = v57;
  v206 = v57 + 32;
  v207 = 0;
  v208 = v58;
  v59 = sub_22FFEE754();
  if (v207 != v208 >> 1)
  {
LABEL_6:
    v66 = sub_230031400();
    swift_allocError();
    v68 = v67;
    sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
    *v68 = v55;
    v61 = v201;
    sub_230031480();
    sub_2300313F0();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D84160], v66);
    swift_willThrow();
LABEL_7:
    (*(v200 + 8))(v61, v56);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  switch(v59)
  {
    case 0:
      LOBYTE(v204) = 0;
      sub_22FFFAD9C();
      v60 = v184;
      v61 = v201;
      v62 = v203;
      sub_230031470();
      if (v62)
      {
        goto LABEL_7;
      }

      v63 = v171;
      v64 = sub_2300314E0();
      v65 = v200;
      v134 = v64;
      v136 = v135;
      (*(v155 + 8))(v60, v63);
      (*(v65 + 8))(v201, v56);
      swift_unknownObjectRelease();
      v137 = v144;
      *v144 = v134;
      v137[1] = v136;
      swift_storeEnumTagMultiPayload();
      v138 = v137;
      goto LABEL_42;
    case 1:
      LOBYTE(v204) = 1;
      sub_22FFFAD48();
      v103 = v185;
      v104 = v201;
      v105 = v203;
      sub_230031470();
      if (v105)
      {
        (*(v200 + 8))(v104, v56);
        goto LABEL_8;
      }

      v124 = v172;
      sub_230031500();
      v140 = v139;
      (*(v156 + 8))(v103, v124);
      (*(v200 + 8))(v104, v56);
      swift_unknownObjectRelease();
      v130 = v145;
      *v145 = v140;
      goto LABEL_39;
    case 2:
      LOBYTE(v204) = 2;
      sub_22FFFACF4();
      v72 = v201;
      v92 = v203;
      sub_230031470();
      if (v92)
      {
        goto LABEL_30;
      }

      v93 = v173;
      v94 = sub_230031530();
      v95 = v200;
      v131 = v94;
      (*(v157 + 8))(v53, v93);
      (*(v95 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v82 = v146;
      *v146 = v131;
      goto LABEL_40;
    case 3:
      LOBYTE(v204) = 3;
      sub_22FFFACA0();
      v96 = v201;
      v97 = v203;
      sub_230031470();
      if (v97)
      {
        (*(v200 + 8))(v96, v56);
        goto LABEL_8;
      }

      v120 = v174;
      v121 = sub_230031540();
      v122 = v52;
      v123 = v200;
      (*(v158 + 8))(v122, v120);
      (*(v123 + 8))(v96, v56);
      swift_unknownObjectRelease();
      v130 = v147;
      *v147 = v121;
      goto LABEL_39;
    case 4:
      LOBYTE(v204) = 4;
      sub_22FFFAC4C();
      v76 = v186;
      v72 = v201;
      v77 = v203;
      sub_230031470();
      if (v77)
      {
        goto LABEL_30;
      }

      v78 = v175;
      v79 = sub_230031560();
      v80 = v200;
      v81 = v79;
      (*(v159 + 8))(v76, v78);
      (*(v80 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v82 = v149;
      *v149 = v81;
      goto LABEL_40;
    case 5:
      LOBYTE(v204) = 5;
      sub_22FFFABF8();
      v106 = v187;
      v72 = v201;
      v107 = v203;
      sub_230031470();
      if (v107)
      {
        goto LABEL_30;
      }

      v108 = v176;
      v109 = sub_230031550();
      v110 = v200;
      v111 = v109;
      (*(v160 + 8))(v106, v108);
      (*(v110 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v82 = v150;
      *v150 = v111;
      goto LABEL_40;
    case 6:
      LOBYTE(v204) = 6;
      sub_22FFFABA4();
      v112 = v188;
      v72 = v201;
      v113 = v203;
      sub_230031470();
      if (v113)
      {
        goto LABEL_30;
      }

      v125 = v177;
      v126 = sub_230031570();
      v127 = v200;
      v141 = v126;
      (*(v161 + 8))(v112, v125);
      (*(v127 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v82 = v151;
      *v151 = v141;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v138 = v82;
      goto LABEL_42;
    case 7:
      LOBYTE(v204) = 7;
      sub_22FFFAB50();
      v98 = v189;
      v72 = v201;
      v99 = v203;
      sub_230031470();
      if (v99)
      {
        goto LABEL_30;
      }

      v100 = v178;
      v101 = sub_2300314F0();
      v102 = v200;
      v132 = v101;
      (*(v162 + 8))(v98, v100);
      (*(v102 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v133 = v132 & 1;
      v130 = v152;
      *v152 = v133;
      goto LABEL_39;
    case 8:
      LOBYTE(v204) = 8;
      sub_22FFFAAFC();
      v118 = v190;
      v87 = v201;
      v119 = v203;
      sub_230031470();
      if (v119)
      {
        goto LABEL_34;
      }

      sub_230030E00();
      sub_22FFFAF48(&qword_27DB05CA0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v89 = v168;
      v128 = v179;
      sub_230031520();
      v129 = v200;
      (*(v163 + 8))(v118, v128);
      (*(v129 + 8))(v87, v56);
      swift_unknownObjectRelease();
      goto LABEL_41;
    case 9:
      LOBYTE(v204) = 9;
      sub_22FFFAAA8();
      v86 = v191;
      v87 = v201;
      v88 = v203;
      sub_230031470();
      if (v88)
      {
        goto LABEL_34;
      }

      sub_230030DD0();
      sub_22FFFAF48(&qword_281494298, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
      v89 = v169;
      v90 = v180;
      sub_230031520();
      v91 = v200;
      (*(v164 + 8))(v86, v90);
      (*(v91 + 8))(v87, v56);
      swift_unknownObjectRelease();
      goto LABEL_41;
    case 10:
      LOBYTE(v204) = 10;
      sub_22FFFAA54();
      v114 = v192;
      v87 = v201;
      v115 = v203;
      sub_230031470();
      if (v115)
      {
LABEL_34:
        (*(v200 + 8))(v87, v56);
        swift_unknownObjectRelease();
        v69 = v202;
        return sub_22FFEE60C(v69);
      }

      sub_230030E20();
      sub_22FFFAF48(&qword_27DB05F38, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v89 = v170;
      v116 = v181;
      sub_230031520();
      v117 = v200;
      (*(v165 + 8))(v114, v116);
      (*(v117 + 8))(v87, v56);
      swift_unknownObjectRelease();
LABEL_41:
      swift_storeEnumTagMultiPayload();
      v138 = v89;
      goto LABEL_42;
    case 11:
      LOBYTE(v204) = 11;
      sub_22FFFAA00();
      v71 = v193;
      v72 = v201;
      v73 = v203;
      sub_230031470();
      if (v73)
      {
        goto LABEL_30;
      }

      sub_22FFED9B8(&qword_27DB05E48, &qword_230032E38);
      sub_22FFFAEAC(&qword_27DB05F30, &qword_27DB05CA8, protocol conformance descriptor for APJSValue, MEMORY[0x277D83978]);
      v74 = v183;
      sub_230031520();
      v75 = v200;
      (*(v166 + 8))(v71, v74);
      (*(v75 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v130 = v154;
      *v154 = v204;
      goto LABEL_39;
    case 12:
      LOBYTE(v204) = 12;
      sub_22FFFA8F0();
      v72 = v201;
      v83 = v203;
      sub_230031470();
      if (v83)
      {
LABEL_30:
        (*(v200 + 8))(v72, v56);
        goto LABEL_8;
      }

      sub_22FFED9B8(&qword_27DB05E30, &qword_230032E30);
      sub_22FFFADF0();
      v84 = v182;
      sub_230031520();
      v85 = v200;
      (*(v167 + 8))(v54, v84);
      (*(v85 + 8))(v72, v56);
      swift_unknownObjectRelease();
      v130 = v153;
      *v153 = v204;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v138 = v130;
LABEL_42:
      v142 = v148;
      sub_22FFF2D20(v138, v148);
      v143 = v202;
      sub_22FFF2D20(v142, v194);
      result = sub_22FFEE60C(v143);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t APJSValue.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_230030E20();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_230030DD0();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_230030E00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for APJSValue(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22FFFA88C(v1, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_2300312E0();
      return v27;
    case 2u:
      LOBYTE(v27) = *v14;
      return sub_2300316B0();
    case 3u:
      LODWORD(v27) = *v14;
      return sub_2300316B0();
    case 4u:
      LODWORD(v27) = *v14;
      return sub_2300316B0();
    case 5u:
      v27 = *v14;
      return sub_2300316B0();
    case 6u:
      v27 = *v14;
      return sub_2300316B0();
    case 7u:
      v20 = *v14;
      v27 = 0;
      v28 = 0xE000000000000000;
      if (v20)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v20)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      MEMORY[0x23190F560](v21, v22);

      return v27;
    case 8u:
      (*(v9 + 32))(v11, v14, v8);
      sub_22FFFAF48(&qword_27DB05F50, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v19 = sub_2300316B0();
      (*(v9 + 8))(v11, v8);
      return v19;
    case 9u:
      v18 = v25;
      (*(v25 + 32))(v7, v14, v5);
      sub_22FFFAF48(&qword_27DB05F48, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v19 = sub_2300316B0();
      (*(v18 + 8))(v7, v5);
      return v19;
    case 0xAu:
      v23 = v26;
      (*(v26 + 32))(v4, v14, v2);
      sub_22FFFAF48(&qword_27DB05F40, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_2300316B0();
      (*(v23 + 8))(v4, v2);
      return v24;
    case 0xBu:
      v16 = MEMORY[0x23190F640](*v14, v12);
      goto LABEL_6;
    case 0xCu:
      v16 = sub_230031110();
LABEL_6:
      v17 = v16;

      result = v17;
      break;
    default:
      result = *v14;
      break;
  }

  return result;
}

uint64_t _s24PromotedContentJetClient9APJSValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v100 = a1;
  v101 = a2;
  v2 = sub_230030E20();
  v98 = *(v2 - 8);
  v99 = v2;
  MEMORY[0x28223BE20](v2);
  v87 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_230030DD0();
  v96 = *(v4 - 8);
  v97 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_230030E00();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for APJSValue(0);
  v9 = MEMORY[0x28223BE20](v8);
  v90 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v89 = (&v84 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v93 = &v84 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v84 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v91 = &v84 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v88 = &v84 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v84 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v84 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (&v84 - v28);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = (&v84 - v31);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v84 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = (&v84 - v37);
  MEMORY[0x28223BE20](v36);
  v40 = (&v84 - v39);
  v41 = sub_22FFED9B8(&qword_27DB060B8, &qword_230033F38);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v44 = &v84 - v43;
  v45 = (&v84 + *(v42 + 56) - v43);
  sub_22FFFA88C(v100, &v84 - v43);
  v46 = v101;
  v101 = v45;
  sub_22FFFA88C(v46, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22FFFA88C(v44, v38);
      v72 = v101;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_44;
      }

      v68 = *v38 == *v72;
      goto LABEL_31;
    case 2u:
      sub_22FFFA88C(v44, v35);
      v66 = v101;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_44;
      }

      v55 = *v35;
      v67 = *v66;
      goto LABEL_21;
    case 3u:
      sub_22FFFA88C(v44, v32);
      v54 = v101;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_44;
      }

      v55 = *v32;
      goto LABEL_20;
    case 4u:
      sub_22FFFA88C(v44, v29);
      v54 = v101;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_44;
      }

      v55 = *v29;
LABEL_20:
      v67 = *v54;
LABEL_21:
      v68 = v55 == v67;
      goto LABEL_31;
    case 5u:
      sub_22FFFA88C(v44, v26);
      v73 = v101;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_44;
      }

      v74 = *v26;
      v75 = *v73;
      goto LABEL_30;
    case 6u:
      sub_22FFFA88C(v44, v23);
      v76 = v101;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_44;
      }

      v74 = *v23;
      v75 = *v76;
LABEL_30:
      v68 = v74 == v75;
LABEL_31:
      v59 = v68;
      goto LABEL_39;
    case 7u:
      v69 = v88;
      sub_22FFFA88C(v44, v88);
      v70 = v101;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_44;
      }

      v71 = *v69 ^ *v70;
      sub_22FFFC768(v44);
      v59 = v71 ^ 1;
      return v59 & 1;
    case 8u:
      v60 = v91;
      sub_22FFFA88C(v44, v91);
      v78 = v101;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v63 = v94;
        v62 = v95;
        v64 = v85;
        (*(v94 + 32))(v85, v78, v95);
        v65 = sub_230030DF0();
        goto LABEL_38;
      }

      v81 = v94;
      v80 = v95;
      goto LABEL_43;
    case 9u:
      v60 = v92;
      sub_22FFFA88C(v44, v92);
      v61 = v101;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v63 = v96;
        v62 = v97;
        v64 = v86;
        (*(v96 + 32))(v86, v61, v97);
        v65 = sub_230030DA0();
        goto LABEL_38;
      }

      v81 = v96;
      v80 = v97;
      goto LABEL_43;
    case 0xAu:
      v60 = v93;
      sub_22FFFA88C(v44, v93);
      v77 = v101;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v63 = v98;
        v62 = v99;
        v64 = v87;
        (*(v98 + 32))(v87, v77, v99);
        v65 = sub_230030E10();
LABEL_38:
        v59 = v65;
        v79 = *(v63 + 8);
        v79(v64, v62);
        v79(v60, v62);
LABEL_39:
        sub_22FFFC768(v44);
        return v59 & 1;
      }

      v81 = v98;
      v80 = v99;
LABEL_43:
      (*(v81 + 8))(v60, v80);
      goto LABEL_44;
    case 0xBu:
      v50 = v89;
      sub_22FFFA88C(v44, v89);
      v51 = *v50;
      v52 = v101;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_13;
      }

      v53 = sub_22FFF5FDC(v51, *v52);
      goto LABEL_12;
    case 0xCu:
      v56 = v90;
      sub_22FFFA88C(v44, v90);
      v57 = *v56;
      v58 = v101;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_13;
      }

      v53 = sub_22FFF6150(v57, *v58);
LABEL_12:
      v59 = v53;

      goto LABEL_39;
    default:
      sub_22FFFA88C(v44, v40);
      v48 = *v40;
      v47 = v40[1];
      v49 = v101;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_13:

LABEL_44:
        sub_22FFFC700(v44);
        goto LABEL_45;
      }

      if (v48 != *v49 || v47 != *(v49 + 1))
      {
        v83 = sub_2300316D0();

        if (v83)
        {
          goto LABEL_48;
        }

        sub_22FFFC768(v44);
LABEL_45:
        v59 = 0;
        return v59 & 1;
      }

LABEL_48:
      sub_22FFFC768(v44);
      v59 = 1;
      return v59 & 1;
  }
}

uint64_t type metadata accessor for APJSValue(uint64_t a1)
{
  result = qword_281494380;
  if (!qword_281494380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22FFFA838()
{
  result = qword_27DB05E20;
  if (!qword_27DB05E20)
  {
    result = swift_getWitnessTable(aAwRh, &type metadata for APJSValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E20);
  }

  return result;
}

uint64_t sub_22FFFA88C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for APJSValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FFFA8F0()
{
  result = qword_27DB05E28;
  if (!qword_27DB05E28)
  {
    result = swift_getWitnessTable(byte_230033E98, &type metadata for APJSValue.DictionaryCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E28);
  }

  return result;
}

unint64_t sub_22FFFA944()
{
  result = qword_27DB05E38;
  if (!qword_27DB05E38)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_22FFF0054(&qword_27DB05E30, &qword_230032E30);
    v4 = sub_22FFFAF48(&qword_27DB05C90, type metadata accessor for APJSValue, protocol conformance descriptor for APJSValue);
    v5[0] = MEMORY[0x277D837D8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83508], v3, v5);
    atomic_store(result, &qword_27DB05E38);
  }

  return result;
}

unint64_t sub_22FFFAA00()
{
  result = qword_27DB05E40;
  if (!qword_27DB05E40)
  {
    result = swift_getWitnessTable(byte_230033E48, &type metadata for APJSValue.ArrayCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E40);
  }

  return result;
}

unint64_t sub_22FFFAA54()
{
  result = qword_27DB05E58;
  if (!qword_27DB05E58)
  {
    result = swift_getWitnessTable(a1xR, &type metadata for APJSValue.UuidCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E58);
  }

  return result;
}

unint64_t sub_22FFFAAA8()
{
  result = qword_27DB05E68;
  if (!qword_27DB05E68)
  {
    result = swift_getWitnessTable(byte_230033DA8, &type metadata for APJSValue.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E68);
  }

  return result;
}

unint64_t sub_22FFFAAFC()
{
  result = qword_27DB05E70;
  if (!qword_27DB05E70)
  {
    result = swift_getWitnessTable(byte_230033D58, &type metadata for APJSValue.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E70);
  }

  return result;
}

unint64_t sub_22FFFAB50()
{
  result = qword_27DB05E78;
  if (!qword_27DB05E78)
  {
    result = swift_getWitnessTable(aYRh, &type metadata for APJSValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E78);
  }

  return result;
}

unint64_t sub_22FFFABA4()
{
  result = qword_27DB05E80;
  if (!qword_27DB05E80)
  {
    result = swift_getWitnessTable(aQyR, &type metadata for APJSValue.Uint64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E80);
  }

  return result;
}

unint64_t sub_22FFFABF8()
{
  result = qword_27DB05E88;
  if (!qword_27DB05E88)
  {
    result = swift_getWitnessTable(byte_230033C68, &type metadata for APJSValue.Int64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E88);
  }

  return result;
}

unint64_t sub_22FFFAC4C()
{
  result = qword_27DB05E90;
  if (!qword_27DB05E90)
  {
    result = swift_getWitnessTable(byte_230033C18, &type metadata for APJSValue.Uint32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E90);
  }

  return result;
}

unint64_t sub_22FFFACA0()
{
  result = qword_27DB05E98;
  if (!qword_27DB05E98)
  {
    result = swift_getWitnessTable(aAzR, &type metadata for APJSValue.Int32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05E98);
  }

  return result;
}

unint64_t sub_22FFFACF4()
{
  result = qword_27DB05EA0;
  if (!qword_27DB05EA0)
  {
    result = swift_getWitnessTable(byte_230033B78, &type metadata for APJSValue.CcharCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05EA0);
  }

  return result;
}

unint64_t sub_22FFFAD48()
{
  result = qword_27DB05EA8;
  if (!qword_27DB05EA8)
  {
    result = swift_getWitnessTable(byte_230033B28, &type metadata for APJSValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05EA8);
  }

  return result;
}

unint64_t sub_22FFFAD9C()
{
  result = qword_27DB05EB0;
  if (!qword_27DB05EB0)
  {
    result = swift_getWitnessTable(aQR_0, &type metadata for APJSValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05EB0);
  }

  return result;
}

unint64_t sub_22FFFADF0()
{
  result = qword_27DB05F28;
  if (!qword_27DB05F28)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = sub_22FFF0054(&qword_27DB05E30, &qword_230032E30);
    v4 = sub_22FFFAF48(&qword_27DB05CA8, type metadata accessor for APJSValue, protocol conformance descriptor for APJSValue);
    v5[0] = MEMORY[0x277D83808];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v5);
    atomic_store(result, &qword_27DB05F28);
  }

  return result;
}

uint64_t sub_22FFFAEAC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_22FFF0054(&qword_27DB05E48, &qword_230032E38);
    v10 = sub_22FFFAF48(a2, type metadata accessor for APJSValue, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FFFAF48(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_22FFFAFE0(uint64_t a1)
{
  sub_230030E00();
  if (v1 <= 0x3F)
  {
    sub_230030DD0();
    if (v2 <= 0x3F)
    {
      sub_230030E20();
      if (v3 <= 0x3F)
      {
        sub_22FFFB0E0(319);
        if (v4 <= 0x3F)
        {
          sub_22FFFB138(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FFFB0E0(uint64_t a1)
{
  if (!qword_27DB05F58)
  {
    type metadata accessor for APJSValue(255);
    v1 = sub_2300312A0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DB05F58);
    }
  }
}

void sub_22FFFB138(uint64_t a1)
{
  if (!qword_27DB05F60)
  {
    type metadata accessor for APJSValue(255);
    v1 = sub_230031130();
    if (!v2)
    {
      atomic_store(v1, &qword_27DB05F60);
    }
  }
}

uint64_t getEnumTagSinglePayload for APJSValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for APJSValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentDependencyProvider.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IntentDependencyProvider.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_22FFFB49C()
{
  result = qword_27DB05F68;
  if (!qword_27DB05F68)
  {
    result = swift_getWitnessTable("qo R̓", &type metadata for APJSValue.DictionaryCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F68);
  }

  return result;
}

unint64_t sub_22FFFB4F4()
{
  result = qword_27DB05F70;
  if (!qword_27DB05F70)
  {
    result = swift_getWitnessTable(byte_230033210, &type metadata for APJSValue.ArrayCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F70);
  }

  return result;
}

unint64_t sub_22FFFB54C()
{
  result = qword_27DB05F78;
  if (!qword_27DB05F78)
  {
    result = swift_getWitnessTable(byte_2300332C8, &type metadata for APJSValue.UuidCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F78);
  }

  return result;
}

unint64_t sub_22FFFB5A4()
{
  result = qword_27DB05F80;
  if (!qword_27DB05F80)
  {
    result = swift_getWitnessTable(aImR8, &type metadata for APJSValue.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F80);
  }

  return result;
}

unint64_t sub_22FFFB5FC()
{
  result = qword_27DB05F88;
  if (!qword_27DB05F88)
  {
    result = swift_getWitnessTable(byte_230033438, &type metadata for APJSValue.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F88);
  }

  return result;
}

unint64_t sub_22FFFB654()
{
  result = qword_27DB05F90;
  if (!qword_27DB05F90)
  {
    result = swift_getWitnessTable(byte_2300334F0, &type metadata for APJSValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F90);
  }

  return result;
}

unint64_t sub_22FFFB6AC()
{
  result = qword_27DB05F98;
  if (!qword_27DB05F98)
  {
    result = swift_getWitnessTable(aKR, &type metadata for APJSValue.Uint64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05F98);
  }

  return result;
}

unint64_t sub_22FFFB704()
{
  result = qword_27DB05FA0;
  if (!qword_27DB05FA0)
  {
    result = swift_getWitnessTable("ij Rȍ", &type metadata for APJSValue.Int64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FA0);
  }

  return result;
}

unint64_t sub_22FFFB75C()
{
  result = qword_27DB05FA8;
  if (!qword_27DB05FA8)
  {
    result = swift_getWitnessTable(byte_230033718, &type metadata for APJSValue.Uint32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FA8);
  }

  return result;
}

unint64_t sub_22FFFB7B4()
{
  result = qword_27DB05FB0;
  if (!qword_27DB05FB0)
  {
    result = swift_getWitnessTable(byte_2300337D0, &type metadata for APJSValue.Int32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FB0);
  }

  return result;
}

unint64_t sub_22FFFB80C()
{
  result = qword_27DB05FB8;
  if (!qword_27DB05FB8)
  {
    result = swift_getWitnessTable(aAhR4, &type metadata for APJSValue.CcharCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FB8);
  }

  return result;
}

unint64_t sub_22FFFB864()
{
  result = qword_27DB05FC0;
  if (!qword_27DB05FC0)
  {
    result = swift_getWitnessTable(byte_230033940, &type metadata for APJSValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FC0);
  }

  return result;
}

unint64_t sub_22FFFB8BC()
{
  result = qword_27DB05FC8;
  if (!qword_27DB05FC8)
  {
    result = swift_getWitnessTable(byte_2300339F8, &type metadata for APJSValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FC8);
  }

  return result;
}

unint64_t sub_22FFFB914()
{
  result = qword_27DB05FD0;
  if (!qword_27DB05FD0)
  {
    result = swift_getWitnessTable(byte_230033AB0, &type metadata for APJSValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FD0);
  }

  return result;
}

unint64_t sub_22FFFB96C()
{
  result = qword_27DB05FD8;
  if (!qword_27DB05FD8)
  {
    result = swift_getWitnessTable(a9vR, &type metadata for APJSValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FD8);
  }

  return result;
}

unint64_t sub_22FFFB9C4()
{
  result = qword_27DB05FE0;
  if (!qword_27DB05FE0)
  {
    result = swift_getWitnessTable(aIrR, &type metadata for APJSValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FE0);
  }

  return result;
}

unint64_t sub_22FFFBA1C()
{
  result = qword_27DB05FE8;
  if (!qword_27DB05FE8)
  {
    result = swift_getWitnessTable(byte_2300338B0, &type metadata for APJSValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FE8);
  }

  return result;
}

unint64_t sub_22FFFBA74()
{
  result = qword_27DB05FF0;
  if (!qword_27DB05FF0)
  {
    result = swift_getWitnessTable(byte_2300338D8, &type metadata for APJSValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FF0);
  }

  return result;
}

unint64_t sub_22FFFBACC()
{
  result = qword_27DB05FF8;
  if (!qword_27DB05FF8)
  {
    result = swift_getWitnessTable(byte_2300337F8, &type metadata for APJSValue.CcharCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB05FF8);
  }

  return result;
}

unint64_t sub_22FFFBB24()
{
  result = qword_27DB06000;
  if (!qword_27DB06000)
  {
    result = swift_getWitnessTable(byte_230033820, &type metadata for APJSValue.CcharCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06000);
  }

  return result;
}

unint64_t sub_22FFFBB7C()
{
  result = qword_27DB06008;
  if (!qword_27DB06008)
  {
    result = swift_getWitnessTable(aAxR, &type metadata for APJSValue.Int32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06008);
  }

  return result;
}

unint64_t sub_22FFFBBD4()
{
  result = qword_27DB06010;
  if (!qword_27DB06010)
  {
    result = swift_getWitnessTable(aQtRx, &type metadata for APJSValue.Int32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06010);
  }

  return result;
}

unint64_t sub_22FFFBC2C()
{
  result = qword_27DB06018;
  if (!qword_27DB06018)
  {
    result = swift_getWitnessTable(byte_230033688, &type metadata for APJSValue.Uint32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06018);
  }

  return result;
}

unint64_t sub_22FFFBC84()
{
  result = qword_27DB06020;
  if (!qword_27DB06020)
  {
    result = swift_getWitnessTable(aURt, &type metadata for APJSValue.Uint32CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06020);
  }

  return result;
}

unint64_t sub_22FFFBCDC()
{
  result = qword_27DB06028;
  if (!qword_27DB06028)
  {
    result = swift_getWitnessTable(byte_2300335D0, &type metadata for APJSValue.Int64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06028);
  }

  return result;
}

unint64_t sub_22FFFBD34()
{
  result = qword_27DB06030;
  if (!qword_27DB06030)
  {
    result = swift_getWitnessTable(byte_2300335F8, &type metadata for APJSValue.Int64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06030);
  }

  return result;
}

unint64_t sub_22FFFBD8C()
{
  result = qword_27DB06038;
  if (!qword_27DB06038)
  {
    result = swift_getWitnessTable(byte_230033518, &type metadata for APJSValue.Uint64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06038);
  }

  return result;
}

unint64_t sub_22FFFBDE4()
{
  result = qword_27DB06040;
  if (!qword_27DB06040)
  {
    result = swift_getWitnessTable(byte_230033540, &type metadata for APJSValue.Uint64CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06040);
  }

  return result;
}

unint64_t sub_22FFFBE3C()
{
  result = qword_27DB06048;
  if (!qword_27DB06048)
  {
    result = swift_getWitnessTable(aAR, &type metadata for APJSValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06048);
  }

  return result;
}

unint64_t sub_22FFFBE94()
{
  result = qword_27DB06050;
  if (!qword_27DB06050)
  {
    result = swift_getWitnessTable(aQwR, &type metadata for APJSValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06050);
  }

  return result;
}

unint64_t sub_22FFFBEEC()
{
  result = qword_27DB06058;
  if (!qword_27DB06058)
  {
    result = swift_getWitnessTable(byte_2300333A8, &type metadata for APJSValue.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06058);
  }

  return result;
}

unint64_t sub_22FFFBF44()
{
  result = qword_27DB06060;
  if (!qword_27DB06060)
  {
    result = swift_getWitnessTable("\tx RĐ", &type metadata for APJSValue.DateCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06060);
  }

  return result;
}

unint64_t sub_22FFFBF9C()
{
  result = qword_27DB06068;
  if (!qword_27DB06068)
  {
    result = swift_getWitnessTable(byte_2300332F0, &type metadata for APJSValue.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06068);
  }

  return result;
}

unint64_t sub_22FFFBFF4()
{
  result = qword_27DB06070;
  if (!qword_27DB06070)
  {
    result = swift_getWitnessTable(byte_230033318, &type metadata for APJSValue.UrlCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06070);
  }

  return result;
}

unint64_t sub_22FFFC04C()
{
  result = qword_27DB06078;
  if (!qword_27DB06078)
  {
    result = swift_getWitnessTable(aIR, &type metadata for APJSValue.UuidCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06078);
  }

  return result;
}

unint64_t sub_22FFFC0A4()
{
  result = qword_27DB06080;
  if (!qword_27DB06080)
  {
    result = swift_getWitnessTable(aYyR, &type metadata for APJSValue.UuidCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06080);
  }

  return result;
}

unint64_t sub_22FFFC0FC()
{
  result = qword_27DB06088;
  if (!qword_27DB06088)
  {
    result = swift_getWitnessTable(aR_7, &type metadata for APJSValue.ArrayCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06088);
  }

  return result;
}

unint64_t sub_22FFFC154()
{
  result = qword_27DB06090;
  if (!qword_27DB06090)
  {
    result = swift_getWitnessTable(a1zRx, &type metadata for APJSValue.ArrayCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06090);
  }

  return result;
}

unint64_t sub_22FFFC1AC()
{
  result = qword_27DB06098;
  if (!qword_27DB06098)
  {
    result = swift_getWitnessTable(byte_2300330C8, &type metadata for APJSValue.DictionaryCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06098);
  }

  return result;
}

unint64_t sub_22FFFC204()
{
  result = qword_27DB060A0;
  if (!qword_27DB060A0)
  {
    result = swift_getWitnessTable(byte_2300330F0, &type metadata for APJSValue.DictionaryCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB060A0);
  }

  return result;
}

unint64_t sub_22FFFC25C()
{
  result = qword_27DB060A8;
  if (!qword_27DB060A8)
  {
    result = swift_getWitnessTable(byte_230033A20, &type metadata for APJSValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB060A8);
  }

  return result;
}

unint64_t sub_22FFFC2B4()
{
  result = qword_27DB060B0;
  if (!qword_27DB060B0)
  {
    result = swift_getWitnessTable(byte_230033A48, &type metadata for APJSValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB060B0);
  }

  return result;
}

uint64_t sub_22FFFC308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261686363 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3436746E69 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7961727261 && a2 == 0xE500000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972)
  {

    return 12;
  }

  else
  {
    v6 = sub_2300316D0();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_22FFFC700(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB060B8, &qword_230033F38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FFFC768(uint64_t a1)
{
  v2 = type metadata accessor for APJSValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FFFC7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFED9B8(&qword_27DB060C0, &qword_230033F40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProofOfPurchase.utTimestamp.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ProofOfPurchase.utPrivateInput.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t ProofOfPurchase.utPublicKey.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ProofOfPurchase.utFinalizedToken.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

PromotedContentJetClient::ProofOfPurchase::CodingKeys_optional __swiftcall ProofOfPurchase.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230031460();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PromotedContentJetClient::ProofOfPurchase::CodingKeys_optional __swiftcall ProofOfPurchase.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = ProofOfPurchase.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_22FFFC9D0()
{
  v1 = *v0;
  v2 = 0x64496D6164417475;
  v3 = 0x7461766972507475;
  v4 = 0x63696C6275507475;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7473656D69547475;
  if (v1 != 1)
  {
    v5 = 0x6F64657273497475;
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

uint64_t sub_22FFFCACC(uint64_t a1)
{
  sub_2300311A0();
}

void sub_22FFFCBFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x64496D6164417475;
  v5 = 0xEE007475706E4965;
  v6 = 0x7461766972507475;
  v7 = 0xEB0000000079654BLL;
  v8 = 0x63696C6275507475;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000023003A020;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000706D61;
  v10 = 0x7473656D69547475;
  if (v2 != 1)
  {
    v10 = 0x6F64657273497475;
    v9 = 0xEE0064616F6C6E77;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

PromotedContentJetClient::ProofOfPurchase::CodingKeys_optional sub_22FFFCCE8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = ProofOfPurchase.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_22FFFCD2C(uint64_t a1)
{
  v2 = sub_22FFFD948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFCD68(uint64_t a1)
{
  v2 = sub_22FFFD948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProofOfPurchase.init(utAdamId:utTimestamp:utIsredownload:utPrivateInput:utPublicKey:utFinalizedToken:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = a10;
  if ((a2 & 1) == 0 || a4 || a5 != 2 || a7 || a10 || a12)
  {
    v13 = a11;
    *a9 = result;
    *(a9 + 8) = a2 & 1;
    *(a9 + 16) = a3;
    *(a9 + 24) = a4;
    *(a9 + 32) = a5;
    *(a9 + 40) = a6;
  }

  else
  {
    a7 = 0;
    a8 = 0;
    v12 = 0;
    v13 = 0;
    *a9 = 0;
    *(a9 + 8) = 0;
    *(a9 + 16) = 0;
    *(a9 + 24) = 1;
    *(a9 + 32) = 0;
    *(a9 + 40) = 0;
  }

  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  *(a9 + 72) = v13;
  *(a9 + 80) = a12;
  return result;
}

uint64_t ProofOfPurchase.encode(to:)(void *a1)
{
  v3 = sub_22FFED9B8(&qword_27DB060D0, &qword_230033F50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v7;
  v14 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13[4] = *(v1 + 48);
  v13[5] = v8;
  v9 = *(v1 + 56);
  v13[2] = *(v1 + 64);
  v13[3] = v9;
  v10 = *(v1 + 80);
  v13[0] = *(v1 + 72);
  v13[1] = v10;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFD948();
  sub_230031780();
  v23 = 0;
  v11 = v17;
  sub_2300315F0();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v22 = 1;
  sub_2300315B0();
  v21 = 2;
  sub_2300315C0();
  v20 = 3;
  sub_2300315B0();
  v19 = 4;
  sub_2300315B0();
  v18 = 5;
  sub_2300315B0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t ProofOfPurchase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22FFED9B8(&qword_27DB060D8, &qword_230033F58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFD948();
  sub_230031770();
  if (v2)
  {
    return sub_22FFEE60C(a1);
  }

  LOBYTE(v45) = 0;
  v9 = sub_2300314D0();
  v56 = v10 & 1;
  LOBYTE(v45) = 1;
  v11 = sub_230031490();
  v13 = v12;
  v14 = v11;
  LOBYTE(v45) = 2;
  v37 = sub_2300314A0();
  LOBYTE(v45) = 3;
  v15 = sub_230031490();
  v38 = v16;
  v36 = v15;
  LOBYTE(v45) = 4;
  v17 = sub_230031490();
  v35 = v18;
  v33 = v17;
  v57 = 5;
  v19 = sub_230031490();
  v34 = 0;
  v20 = v19;
  v21 = v8;
  v23 = v22;
  (*(v6 + 8))(v21, v5);
  v32 = v9;
  *&v39 = v9;
  v31 = v56;
  BYTE8(v39) = v56;
  *&v40 = v14;
  *(&v40 + 1) = v13;
  LOBYTE(v41) = v37;
  v24 = v36;
  v25 = v38;
  *(&v41 + 1) = v36;
  *&v42 = v38;
  v26 = v33;
  *(&v42 + 1) = v33;
  *&v43 = v35;
  *(&v43 + 1) = v20;
  v44 = v23;
  *(a2 + 80) = v23;
  v27 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v27;
  *(a2 + 64) = v43;
  v28 = v40;
  *a2 = v39;
  *(a2 + 16) = v28;
  sub_22FFFD99C(&v39, &v45);
  sub_22FFEE60C(a1);
  v45 = v32;
  v46 = v31;
  v47 = v14;
  v48 = v13;
  v49 = v37;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v53 = v35;
  v54 = v20;
  v55 = v23;
  return sub_22FFFD9D4(&v45);
}

uint64_t ProofOfPurchase.debugDescription.getter()
{

  sub_2300313E0();
  MEMORY[0x23190F560](0x496D61644174757BLL, 0xEB00000000203A64);
  sub_22FFED9B8(&qword_27DB060E0, &unk_230033F60);
  v0 = sub_230031170();
  MEMORY[0x23190F560](v0);

  MEMORY[0x23190F560](0x656D69547475202CLL, 0xEF203A706D617473);
  sub_22FFED9B8(&qword_27DB05CB8, &qword_230036AB0);
  v1 = sub_230031170();
  MEMORY[0x23190F560](v1);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A390);
  sub_22FFED9B8(&qword_27DB060E8, &qword_230033F70);
  v2 = sub_230031170();
  MEMORY[0x23190F560](v2);

  MEMORY[0x23190F560](0xD000000000000012, 0x800000023003A3B0);
  v3 = sub_230031170();
  MEMORY[0x23190F560](v3);

  MEMORY[0x23190F560](0x6C6275507475202CLL, 0xEF203A79654B6369);
  v4 = sub_230031170();
  MEMORY[0x23190F560](v4);

  MEMORY[0x23190F560](0xD000000000000014, 0x800000023003A3D0);
  v5 = sub_230031170();
  MEMORY[0x23190F560](v5);

  MEMORY[0x23190F560](125, 0xE100000000000000);
  return 0;
}

BOOL _s24PromotedContentJetClient15ProofOfPurchaseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v22 = *(a2 + 8);
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v14)
    {
      return 0;
    }

    if (v5 != *(a2 + 16) || v6 != v14)
    {
      v38 = v11;
      v39 = *(a2 + 80);
      v36 = *(a2 + 56);
      v37 = v13;
      v23 = v12;
      v24 = *(a2 + 72);
      v25 = v10;
      v26 = sub_2300316D0();
      v10 = v25;
      v20 = v24;
      v11 = v38;
      v21 = v39;
      v12 = v23;
      v18 = v36;
      v13 = v37;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v7 == 2)
  {
    if (v15 != 2)
    {
      return 0;
    }

    goto LABEL_20;
  }

  result = 0;
  if (v15 != 2 && ((v15 ^ v7) & 1) == 0)
  {
LABEL_20:
    if (v9)
    {
      if (!v16)
      {
        return 0;
      }

      if (v8 != v17 || v9 != v16)
      {
        v28 = v12;
        v29 = v20;
        v30 = v10;
        v31 = v18;
        v32 = sub_2300316D0();
        v18 = v31;
        v10 = v30;
        v20 = v29;
        v12 = v28;
        if ((v32 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v10)
    {
      if (!v19)
      {
        return 0;
      }

      if (v11 != v18 || v10 != v19)
      {
        v33 = v12;
        v34 = v20;
        v35 = sub_2300316D0();
        v20 = v34;
        v12 = v33;
        if ((v35 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v19)
    {
      return 0;
    }

    if (v13)
    {
      return v21 && (v12 == v20 && v13 == v21 || (sub_2300316D0() & 1) != 0);
    }

    return !v21;
  }

  return result;
}

unint64_t sub_22FFFD948()
{
  result = qword_281494140;
  if (!qword_281494140)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProofOfPurchase.CodingKeys, &type metadata for ProofOfPurchase.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494140);
  }

  return result;
}

unint64_t sub_22FFFDA08()
{
  result = qword_27DB060F0;
  if (!qword_27DB060F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProofOfPurchase.CodingKeys, &type metadata for ProofOfPurchase.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB060F0);
  }

  return result;
}

unint64_t sub_22FFFDA60()
{
  result = qword_281494130;
  if (!qword_281494130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProofOfPurchase.CodingKeys, &type metadata for ProofOfPurchase.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494130);
  }

  return result;
}

unint64_t sub_22FFFDAB8()
{
  result = qword_281494138;
  if (!qword_281494138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProofOfPurchase.CodingKeys, &type metadata for ProofOfPurchase.CodingKeys, v0, v1);
    atomic_store(result, &qword_281494138);
  }

  return result;
}

__n128 sub_22FFFDB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22FFFDB30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22FFFDB8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProofOfPurchase.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProofOfPurchase.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

PromotedContentJetClient::JetServiceTelemetryErrorCode_optional __swiftcall JetServiceTelemetryErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void _s24PromotedContentJetClient0C24ServiceTelemetryRecorderC6record5erroryAA0ceF9ErrorCodeO_tF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = sub_230031150();
  sub_22FFED9B8(&qword_27DB06100, &qword_230034360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2300341F0;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_23001476C(inited);
  swift_setDeallocating();
  sub_22FFFE348(inited + 32);
  sub_22FFFE2FC();
  v5 = sub_230031100();

  [v2 sendEvent:v3 customPayload:v5];
}

void _s24PromotedContentJetClient0C24ServiceTelemetryRecorderC6record12cacheUpdated9jsVersion7runningySb_SSSbtF_0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = objc_opt_self();
  v7 = sub_230031150();
  sub_22FFED9B8(&qword_27DB06100, &qword_230034360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230034200;
  *(inited + 32) = 0x6F6973726556736ALL;
  *(inited + 40) = 0xE90000000000006ELL;
  *(inited + 48) = sub_230031150();
  *(inited + 56) = 0x676E696E6E7572;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 80) = 0x64657461647075;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_23001476C(inited);
  swift_setDeallocating();
  sub_22FFED9B8(&qword_27DB06108, &qword_230034368);
  swift_arrayDestroy();
  sub_22FFFE2FC();
  v9 = sub_230031100();

  [v6 sendEvent:v7 customPayload:v9];
}

unint64_t sub_22FFFE0E0()
{
  result = qword_27DB060F8;
  if (!qword_27DB060F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for JetServiceTelemetryErrorCode, &type metadata for JetServiceTelemetryErrorCode, v0, v1);
    atomic_store(result, &qword_27DB060F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetServiceTelemetryErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetServiceTelemetryErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FFFE2FC()
{
  result = qword_281493E90;
  if (!qword_281493E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281493E90);
  }

  return result;
}

uint64_t sub_22FFFE348(uint64_t a1)
{
  v2 = sub_22FFED9B8(&qword_27DB06108, &qword_230034368);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FieldValue.rawValue.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (!a3)
    {
      v4 = MEMORY[0x277D83808];
      a4[3] = MEMORY[0x277D837D0];
      a4[4] = v4;
      a4[5] = MEMORY[0x277D837D8];
      *a4 = result;
      a4[1] = a2;
    }

    v7 = MEMORY[0x277D83BB8];
    a4[3] = MEMORY[0x277D83B88];
    a4[4] = v7;
    v6 = MEMORY[0x277D83B90];
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    v5 = MEMORY[0x277D83A30];
    a4[3] = MEMORY[0x277D839F8];
    a4[4] = v5;
    v6 = MEMORY[0x277D83A08];
LABEL_7:
    a4[5] = v6;
    *a4 = result;
    return result;
  }

  v8 = MEMORY[0x277D839D0];
  a4[3] = MEMORY[0x277D839B0];
  a4[4] = v8;
  a4[5] = MEMORY[0x277D839B8];
  *a4 = result & 1;
  return result;
}

uint64_t sub_22FFFE468(uint64_t a1)
{
  v2 = sub_22FFFEC9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE4A4(uint64_t a1)
{
  v2 = sub_22FFFEC9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE4E0()
{
  v1 = 0x676E69727473;
  v2 = 0x656C62756F64;
  if (*v0 != 2)
  {
    v2 = 1819242338;
  }

  if (*v0)
  {
    v1 = 7630441;
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

uint64_t sub_22FFFE544@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FFFEE60(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FFFE578(uint64_t a1)
{
  v2 = sub_22FFFEC48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE5B4(uint64_t a1)
{
  v2 = sub_22FFFEC48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE5F0(uint64_t a1)
{
  v2 = sub_22FFFECF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE62C(uint64_t a1)
{
  v2 = sub_22FFFECF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE668(uint64_t a1)
{
  v2 = sub_22FFFED44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE6A4(uint64_t a1)
{
  v2 = sub_22FFFED44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22FFFE6E0(uint64_t a1)
{
  v2 = sub_22FFFED98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FFFE71C(uint64_t a1)
{
  v2 = sub_22FFFED98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FieldValue.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v35 = a2;
  v33 = a4;
  v31 = a3;
  v32 = sub_22FFED9B8(&qword_27DB06110, &qword_230034370);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v24 - v5;
  v6 = sub_22FFED9B8(&qword_27DB06118, &qword_230034378);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_22FFED9B8(&qword_27DB06120, &qword_230034380);
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = sub_22FFED9B8(&qword_27DB06128, &qword_230034388);
  v24 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v34 = sub_22FFED9B8(&qword_27DB06130, &qword_230034390);
  v15 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v17 = &v24 - v16;
  sub_22FFEDA4C(a1, a1[3]);
  sub_22FFFEC48();
  sub_230031780();
  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      v38 = 2;
      sub_22FFFECF0();
      v19 = v34;
      sub_2300315A0();
      v20 = v28;
      sub_230031620();
      (*(v27 + 8))(v8, v20);
      return (*(v15 + 8))(v17, v19);
    }

    v39 = 3;
    sub_22FFFEC9C();
    v11 = v29;
    v18 = v34;
    sub_2300315A0();
    v22 = v32;
    sub_230031610();
    v23 = v30;
    goto LABEL_8;
  }

  if (v33)
  {
    v37 = 1;
    sub_22FFFED44();
    v18 = v34;
    sub_2300315A0();
    v22 = v26;
    sub_230031630();
    v23 = v25;
LABEL_8:
    (*(v23 + 8))(v11, v22);
    return (*(v15 + 8))(v17, v18);
  }

  v36 = 0;
  sub_22FFFED98();
  v18 = v34;
  sub_2300315A0();
  sub_230031600();
  (*(v24 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v18);
}

unint64_t sub_22FFFEC48()
{
  result = qword_27DB06138;
  if (!qword_27DB06138)
  {
    result = swift_getWitnessTable("ql Rd|", &type metadata for FieldValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06138);
  }

  return result;
}

unint64_t sub_22FFFEC9C()
{
  result = qword_27DB06140;
  if (!qword_27DB06140)
  {
    result = swift_getWitnessTable(byte_230034968, &type metadata for FieldValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06140);
  }

  return result;
}

unint64_t sub_22FFFECF0()
{
  result = qword_27DB06148;
  if (!qword_27DB06148)
  {
    result = swift_getWitnessTable(byte_230034918, &type metadata for FieldValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06148);
  }

  return result;
}

unint64_t sub_22FFFED44()
{
  result = qword_27DB06150;
  if (!qword_27DB06150)
  {
    result = swift_getWitnessTable(aAmR, &type metadata for FieldValue.IntCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06150);
  }

  return result;
}

unint64_t sub_22FFFED98()
{
  result = qword_27DB06158;
  if (!qword_27DB06158)
  {
    result = swift_getWitnessTable(byte_230034878, &type metadata for FieldValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06158);
  }

  return result;
}

uint64_t FieldValue.init(from:)(void *a1)
{
  result = sub_22FFFEFBC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_22FFFEE10@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_22FFFEFBC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_22FFFEE60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_2300316D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_2300316D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2300316D0();

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

uint64_t sub_22FFFEFBC(void *a1)
{
  v49 = sub_22FFED9B8(&qword_27DB061D8, &qword_230034A08);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v53 = &v43 - v2;
  v46 = sub_22FFED9B8(&qword_27DB061E0, &qword_230034A10);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v52 = &v43 - v3;
  v4 = sub_22FFED9B8(&qword_27DB061E8, &qword_230034A18);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v43 - v5;
  v7 = sub_22FFED9B8(&qword_27DB061F0, &qword_230034A20);
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = sub_22FFED9B8(&qword_27DB061F8, &qword_230034A28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v14 = a1[3];
  v55 = a1;
  v15 = sub_22FFEDA4C(a1, v14);
  sub_22FFFEC48();
  v16 = v54;
  sub_230031770();
  if (!v16)
  {
    v17 = v9;
    v44 = v7;
    v54 = v6;
    v18 = v52;
    v19 = v53;
    v20 = sub_230031580();
    v21 = (2 * *(v20 + 16)) | 1;
    v57 = v20;
    v58 = v20 + 32;
    v59 = 0;
    v60 = v21;
    v22 = sub_22FFEE788();
    v23 = v10;
    v24 = v13;
    if (v22 == 4 || v59 != v60 >> 1)
    {
      v27 = sub_230031400();
      swift_allocError();
      v29 = v28;
      sub_22FFED9B8(&qword_27DB05B98, &qword_230032EB0);
      *v29 = &type metadata for FieldValue;
      v30 = v23;
      v15 = v24;
      sub_230031480();
      sub_2300313F0();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v11 + 8))(v24, v30);
      swift_unknownObjectRelease();
    }

    else if (v22 > 1u)
    {
      if (v22 == 2)
      {
        v56 = 2;
        sub_22FFFECF0();
        v32 = v18;
        sub_230031470();
        v33 = v46;
        sub_230031500();
        v41 = v40;
        (*(v50 + 8))(v32, v33);
        (*(v11 + 8))(v13, v23);
        swift_unknownObjectRelease();
        v15 = v41;
      }

      else
      {
        v56 = 3;
        sub_22FFFEC9C();
        v37 = v19;
        v38 = v23;
        sub_230031470();
        v39 = v49;
        v42 = sub_2300314F0();
        (*(v51 + 8))(v37, v39);
        (*(v11 + 8))(v24, v38);
        swift_unknownObjectRelease();
        v15 = v42 & 1;
      }
    }

    else
    {
      if (v22)
      {
        v56 = 1;
        sub_22FFFED44();
        v34 = v54;
        v35 = v23;
        sub_230031470();
        v36 = v48;
        v15 = sub_230031510();
        (*(v47 + 8))(v34, v36);
        (*(v11 + 8))(v24, v35);
      }

      else
      {
        v56 = 0;
        sub_22FFFED98();
        v25 = v23;
        sub_230031470();
        v26 = v44;
        v15 = sub_2300314E0();
        (*(v45 + 8))(v17, v26);
        (*(v11 + 8))(v13, v25);
      }

      swift_unknownObjectRelease();
    }
  }

  sub_22FFEE60C(v55);
  return v15;
}

__n128 sub_22FFFF780(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FFFF794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FFFF7DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FieldValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FieldValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22FFFF9CC()
{
  result = qword_27DB06160;
  if (!qword_27DB06160)
  {
    result = swift_getWitnessTable(aYR, &type metadata for FieldValue.BoolCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06160);
  }

  return result;
}

unint64_t sub_22FFFFA24()
{
  result = qword_27DB06168;
  if (!qword_27DB06168)
  {
    result = swift_getWitnessTable(byte_230034628, &type metadata for FieldValue.DoubleCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06168);
  }

  return result;
}

unint64_t sub_22FFFFA7C()
{
  result = qword_27DB06170;
  if (!qword_27DB06170)
  {
    result = swift_getWitnessTable(byte_2300346E0, &type metadata for FieldValue.IntCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06170);
  }

  return result;
}

unint64_t sub_22FFFFAD4()
{
  result = qword_27DB06178;
  if (!qword_27DB06178)
  {
    result = swift_getWitnessTable(a1yR, &type metadata for FieldValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06178);
  }

  return result;
}

unint64_t sub_22FFFFB2C()
{
  result = qword_27DB06180;
  if (!qword_27DB06180)
  {
    result = swift_getWitnessTable(aYxR, &type metadata for FieldValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06180);
  }

  return result;
}

unint64_t sub_22FFFFB84()
{
  result = qword_27DB06188;
  if (!qword_27DB06188)
  {
    result = swift_getWitnessTable(byte_230034708, &type metadata for FieldValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06188);
  }

  return result;
}

unint64_t sub_22FFFFBDC()
{
  result = qword_27DB06190;
  if (!qword_27DB06190)
  {
    result = swift_getWitnessTable(byte_230034730, &type metadata for FieldValue.StringCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06190);
  }

  return result;
}

unint64_t sub_22FFFFC34()
{
  result = qword_27DB06198;
  if (!qword_27DB06198)
  {
    result = swift_getWitnessTable(aQiR, &type metadata for FieldValue.IntCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB06198);
  }

  return result;
}

unint64_t sub_22FFFFC8C()
{
  result = qword_27DB061A0;
  if (!qword_27DB061A0)
  {
    result = swift_getWitnessTable(aAeR, &type metadata for FieldValue.IntCodingKeys, v0, v1);
    atomic_store(result, &qword_27DB061A0);
  }

  return result;
}
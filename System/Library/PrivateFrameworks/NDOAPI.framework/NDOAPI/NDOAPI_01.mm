__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22DE052A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DE052F0(uint64_t result, int a2, int a3)
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

uint64_t sub_22DE05354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22DE0539C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22DE0541C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_22DE05464(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_22DE05600(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22DE05648(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WarrantyHashInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WarrantyHashInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RequestDeviceInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestDeviceInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22DE05978()
{
  result = qword_27DA37A58;
  if (!qword_27DA37A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A58);
  }

  return result;
}

unint64_t sub_22DE059D0()
{
  result = qword_27DA37A60;
  if (!qword_27DA37A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A60);
  }

  return result;
}

unint64_t sub_22DE05A28()
{
  result = qword_27DA37A68;
  if (!qword_27DA37A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A68);
  }

  return result;
}

unint64_t sub_22DE05A80()
{
  result = qword_27DA37A70;
  if (!qword_27DA37A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A70);
  }

  return result;
}

unint64_t sub_22DE05AD8()
{
  result = qword_27DA37A78;
  if (!qword_27DA37A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A78);
  }

  return result;
}

unint64_t sub_22DE05B30()
{
  result = qword_27DA37A80;
  if (!qword_27DA37A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37A80);
  }

  return result;
}

unint64_t sub_22DE05B84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AA8, &qword_22DEC6AA8);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_22DDEEEE8(v7, v8);
      result = sub_22DE100E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DE05C9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AA0, &qword_22DEC6AA0);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22DE100E4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22DE05DA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A98, &qword_22DEC6A98);
    v3 = sub_22DEC4FF4();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DE100E4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22DE05E9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_22DEC50E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D697270 && a2 == 0xE700000000000000 || (sub_22DEC50E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_22DEC50E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_22DEC50E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4D656369766564 && a2 == 0xEB000000006C6564 || (sub_22DEC50E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F43656369766564 && a2 == 0xEB00000000726F6CLL || (sub_22DEC50E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022DED1860 == a2 || (sub_22DEC50E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022DED1880 == a2 || (sub_22DEC50E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72656B6E69547369 && a2 == 0xEE00646572696150 || (sub_22DEC50E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xED00006863746157)
  {

    return 9;
  }

  else
  {
    v6 = sub_22DEC50E4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_22DE061F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE0625C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE062C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_22DE06324(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.init(userAction:additionalPayload:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = -8;
  sub_22DE0501C(MEMORY[0x277D84F90]);
  v6 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();

  v8 = (a3 + *(v6 + 28));
  *v8 = 0;
  v8[1] = 0;
  v9 = (a3 + *(v6 + 32));
  *v9 = 0;
  v9[1] = 0;
  *a3 = v5 | 0x80;
  *(a3 + 8) = a2;
  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_AckData.init(actionType:additionalPayload:clientErrorCode:clientErrorReason:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a1;
  *a7 = -8;
  sub_22DE0501C(MEMORY[0x277D84F90]);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();

  v16 = (a7 + *(v14 + 28));
  *v16 = 0;
  v16[1] = 0;
  v17 = (a7 + *(v14 + 32));
  *v17 = 0;
  v17[1] = 0;
  *a7 = v13;
  *(a7 + 8) = a2;
  if (a4)
  {
    *v16 = a3;
    v16[1] = a4;
  }

  if (a6)
  {
    *v17 = a5;
    v17[1] = a6;
  }

  return result;
}

void *NDORetryOn5XXURLClient.__allocating_init(internalClient:backoffIntervals:scheduler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_22DDEDA18(a1, (v8 + 3));
  v8[2] = a2;
  v8[8] = a3;
  v8[9] = a4;
  return v8;
}

void *NDORetryOn5XXURLClient.init(internalClient:backoffIntervals:scheduler:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22DDEDA18(a1, (v4 + 3));
  v4[2] = a2;
  v4[8] = a3;
  v4[9] = a4;
  return v4;
}

uint64_t sub_22DE06534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_22DEC4694();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[6];
  v11 = v4[7];
  v19[1] = __swift_project_boxed_opaque_existential_1(v4 + 3, v10);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v14 = swift_allocObject();
  v15 = v20;
  v16 = v21;
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = v16;
  (*(v7 + 32))(&v14[v13], v9, v6);
  v17 = *(v11 + 8);

  v17(a1, sub_22DE06AFC, v14, v10, v11);
}

void sub_22DE066FC(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *, uint64_t), void (*a7)(uint64_t, uint64_t, void *, uint64_t), uint64_t a8)
{
  v40 = a8;
  v41 = a6;
  v13 = sub_22DEC4694();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v22 = sub_22DEC4B44();
    __swift_project_value_buffer(v22, qword_281462270);
    v23 = sub_22DEC4B24();
    v24 = sub_22DEC4E44();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22DDEC000, v23, v24, "Instance is deallocated. Not handling results", v25, 2u);
      MEMORY[0x2318DBF00](v25, -1, -1);
    }

    return;
  }

  v17 = Strong;
  if (a4)
  {
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 1;
LABEL_16:
    v41(v18, v19, v20, v21);
    goto LABEL_17;
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {
LABEL_15:
    v18 = a1;
    v19 = a2;
    v20 = a3;
    v21 = 0;
    goto LABEL_16;
  }

  v27 = v26;
  v39 = a7;
  v38 = a3;
  if ([v27 statusCode] < 500 || objc_msgSend(v27, sel_statusCode) > 599)
  {

    goto LABEL_15;
  }

  v28 = *(v17 + 16);
  if (*(v28 + 16))
  {
    v29 = *(v28 + 32);
    sub_22DE06FB0(0, 1);
    v30 = *(v17 + 64);
    v31 = swift_allocObject();
    swift_weakInit();
    (*(v14 + 16))(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v40, v13);
    v32 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    (*(v14 + 32))(v33 + v32, &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
    v34 = (v33 + ((v15 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    v35 = v39;
    *v34 = v41;
    v34[1] = v35;

    v30(sub_22DE07070, v33, v29);

LABEL_17:

    return;
  }

  type metadata accessor for NDOErrors(0);
  sub_22DDFE48C();
  v36 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v41(v36, 0, 0, 1);
}

void *sub_22DE06B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC4694();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result[7];
    v19 = result[6];
    v18[0] = a3;
    v18[1] = __swift_project_boxed_opaque_existential_1(result + 3, v19);
    v13 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v14 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v16 = v18[0];
    *(v15 + 2) = v13;
    *(v15 + 3) = v16;
    *(v15 + 4) = a4;
    (*(v8 + 32))(&v15[v14], v10, v7);
    v17 = *(v12 + 8);

    v17(a2, sub_22DE07270, v15, v19, v12);
  }

  return result;
}

void *NDORetryOn5XXURLClient.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t NDORetryOn5XXURLClient.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_22DE06D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v6 = sub_22DEC4694();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = v10[6];
  v12 = v10[7];
  v19 = __swift_project_boxed_opaque_existential_1(v10 + 3, v11);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);
  v17 = *(v12 + 8);

  v17(a1, sub_22DE07270, v15, v11, v12);
}

unint64_t sub_22DE06FB0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22DE0CA6C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_22DE2631C(v6, a2, 0);
  *v2 = v4;
  return result;
}

void *sub_22DE07070()
{
  v1 = *(sub_22DEC4694() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_22DE06B00(v3, v0 + v2, v5, v6);
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = sub_22DEC4694();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_22DE071D0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v9 = *(sub_22DEC4694() - 8);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4 + ((*(v9 + 80) + 40) & ~*(v9 + 80));

  sub_22DE066FC(a1, a2, a3, a4 & 1, v10, v11, v12, v13);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_Action.ackData(for:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 & 1) != 0 && (v5 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400), sub_22DE0745C(), (swift_dynamicCast()))
  {
    [v20 code];
    v6 = sub_22DEC50A4();
    v8 = v7;
    v9 = [v20 userInfo];
    sub_22DEC4BA4();

    v10 = sub_22DEC4BB4();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v6 = 0;
    v8 = 0;
  }

  v13 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v14 = *(v3 + *(v13 + 20));
  if (*(v3 + *(v13 + 28)) == 7)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v3 + *(v13 + 28));
  }

  *a3 = -8;

  sub_22DE0501C(MEMORY[0x277D84F90]);
  v16 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();

  v18 = (a3 + *(v16 + 28));
  *v18 = 0;
  v18[1] = 0;
  v19 = (a3 + *(v16 + 32));
  *v19 = 0;
  v19[1] = 0;
  *a3 = v15;
  *(a3 + 8) = v14;
  if (v8)
  {
    *v18 = v6;
    v18[1] = v8;
  }

  if (v12)
  {
    *v19 = v10;
    v19[1] = v12;
  }

  return result;
}

unint64_t sub_22DE0745C()
{
  result = qword_27DA37AF0;
  if (!qword_27DA37AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37AF0);
  }

  return result;
}

uint64_t sub_22DE074A8(uint64_t a1, unsigned __int8 a2)
{
  sub_22DEC5184();
  sub_22DEC4C94();

  return sub_22DEC51A4();
}

NDOAPI::NDOKeyValueStoreKey_optional __swiftcall NDOKeyValueStoreKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22DEC5014();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t NDOKeyValueStoreKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x2D676E69646E6570;
  v3 = 0x72752D7473696C70;
  if (v1 != 5)
  {
    v3 = 7761509;
  }

  if (v1 == 3)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  v5 = 0xD000000000000022;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22DE0772C()
{
  result = qword_27DA37AF8;
  if (!qword_27DA37AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37AF8);
  }

  return result;
}

uint64_t sub_22DE0778C(uint64_t a1)
{
  sub_22DEC4C94();
}

void sub_22DE078BC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000736B6361;
  v4 = 0x2D676E69646E6570;
  v5 = 0xE90000000000006CLL;
  v6 = 0x72752D7473696C70;
  if (v2 != 5)
  {
    v6 = 7761509;
    v5 = 0xE300000000000000;
  }

  if (v2 == 3)
  {
    v4 = 0xD000000000000012;
    v3 = 0x800000022DED1380;
  }

  if (*v1 > 4u)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x800000022DED1310;
  v8 = 0xD000000000000014;
  v9 = 0x800000022DED1330;
  v10 = 0xD000000000000022;
  if (v2 != 1)
  {
    v10 = 0xD000000000000011;
    v9 = 0x800000022DED1360;
  }

  if (*v1)
  {
    v8 = v10;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Com_Apple_Sse_Ocean_Ndo_Api_CTActionType(uint64_t result, unsigned int a2, unsigned int a3)
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

void NSUserDefaults.setObject(_:for:)(uint64_t a1, unsigned __int8 *a2)
{
  sub_22DE07D38(a1, v10);
  v3 = v11;
  if (v11)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = *(v3 - 8);
    MEMORY[0x28223BE20](v4);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = sub_22DEC50D4();
    (*(v5 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_22DEC4C04();

  [v2 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

uint64_t sub_22DE07D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37988, &unk_22DEC6210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NDOAckHandler.__allocating_init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  NDOAckHandler.init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)(a1, a2, a3, a4);
  return v8;
}

uint64_t NDOAckHandler.init(configLoader:urlClient:keyValueStore:requestPayloadProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = sub_22DEC48E4();
  MEMORY[0x28223BE20](v9 - 8);
  v37 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B00, &unk_22DEC6C98);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v34 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v35 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v16 = MEMORY[0x277D84F90];
  v33 = v4;
  *(v4 + 112) = MEMORY[0x277D84F90];
  v17 = v4 + 112;
  v31 = a1;
  sub_22DDEDAAC(a1, v17 + 8);
  v30 = a2;
  sub_22DDEDAAC(a2, v17 + 48);
  sub_22DE014AC(a3, v17 + 88);
  v28[1] = v17;
  v29 = a4;
  sub_22DDEDAAC(a4, v17 + 136);
  v18 = a3[3];
  v19 = a3[4];
  v32 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v39[0] = 4;
  result = (*(v19 + 8))(v39, v18, v19);
  if (result)
  {
    v21 = sub_22DE082B0(result);

    if (v21)
    {
      v16 = v21;
    }
  }

  v36 = *(v16 + 16);
  if (v36)
  {
    v22 = 0;
    v23 = (v34 + 56);
    v24 = (v16 + 40);
    v38 = MEMORY[0x277D84F90];
    while (v22 < *(v16 + 16))
    {
      sub_22DDEEEE8(*(v24 - 1), *v24);
      sub_22DEC48D4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      sub_22DEC4A14();
      (*v23)(v13, 0, 1, v14);
      sub_22DE0D444(v13, v35, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_22DE0CB70(0, v38[2] + 1, 1, v38);
      }

      v26 = v38[2];
      v25 = v38[3];
      if (v26 >= v25 >> 1)
      {
        v38 = sub_22DE0CB70((v25 > 1), v26 + 1, 1, v38);
      }

      v27 = v38;
      v38[2] = v26 + 1;
      result = sub_22DE0D444(v35, v27 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v26, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      ++v22;
      v24 += 2;
      if (v36 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    swift_beginAccess();
    sub_22DE0CF60(v38);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    __swift_destroy_boxed_opaque_existential_1(v32);
    return v33;
  }

  return result;
}

uint64_t sub_22DE082B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_22DE04834(0, v2, 0);
  v3 = v11;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22DDEDDE4(i, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v5 = v9;
      v11 = v3;
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22DE04834((v6 > 1), v7 + 1, 1);
        v5 = v9;
        v3 = v11;
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 16 * v7 + 32) = v5;
      if (!--v2)
      {
        return v3;
      }
    }

    sub_22DDEEF3C(0, 0xF000000000000000);
    return 0;
  }

  return v3;
}

uint64_t sub_22DE083DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22DE048DC(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22DDEDDE4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22DE048DC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_22DE084F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DE0858C;

  return sub_22DE08680(a1, 0, 0);
}

uint64_t sub_22DE0858C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DE08680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_22DE086A4, v3, 0);
}

uint64_t sub_22DE086A4()
{
  v1 = v0[8];
  swift_beginAccess();

  sub_22DE0CF60(v2);
  swift_endAccess();

  sub_22DE089B4(v3);

  v4 = *(v1 + 112);
  v0[9] = v4;
  *(v1 + 112) = MEMORY[0x277D84F90];
  if (*(v4 + 16))
  {
    v5 = swift_task_alloc();
    v0[10] = v5;
    *v5 = v0;
    v5[1] = sub_22DE088A4;
    v6 = v0[7];
    v7 = v0[6];

    return sub_22DE09198(v4, 0, v7, v6);
  }

  else
  {

    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v9 = sub_22DEC4B44();
    __swift_project_value_buffer(v9, qword_281462270);
    v10 = sub_22DEC4B24();
    v11 = sub_22DEC4E44();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22DDEC000, v10, v11, "ack called, but there are no acks to ack", v12, 2u);
      MEMORY[0x2318DBF00](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_22DE088A4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_22DE089B4(unint64_t *a1)
{
  v2 = v1;
  v52 = sub_22DEC4904();
  v4 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DEC48E4();
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B00, &unk_22DEC6C98);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v57 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v53 = *(v57 - 8);
  v12 = MEMORY[0x28223BE20](v57);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v47 - v15;
  if (qword_28145AE68 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v16 = sub_22DEC4B44();
    __swift_project_value_buffer(v16, qword_281462270);

    v17 = sub_22DEC4B24();
    v18 = sub_22DEC4E54();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1[2];

      _os_log_impl(&dword_22DDEC000, v17, v18, "Appending %ld acks to key value store", v19, 0xCu);
      MEMORY[0x2318DBF00](v19, -1, -1);

      if (!a1[2])
      {
        return;
      }
    }

    else
    {

      if (!a1[2])
      {
        return;
      }
    }

    v20 = v2[28];
    v21 = v2[29];
    __swift_project_boxed_opaque_existential_1(v2 + 25, v20);
    LOBYTE(v61[0]) = 4;
    v22 = (*(v21 + 8))(v61, v20, v21);
    if (v22 && (v23 = sub_22DE082B0(v22), , v23))
    {
      v24 = v23;
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }

    v47 = v4;
    v48 = a1;
    v49 = v2;
    v50 = v14;
    v25 = *(v24 + 2);
    v59 = v6;
    v56 = v25;
    if (!v25)
    {
      break;
    }

    v55 = v11;
    v26 = 0;
    v2 = (v53 + 56);
    a1 = (v24 + 40);
    v58 = MEMORY[0x277D84F90];
    v14 = v57;
    v4 = v51;
    v27 = v11;
    while (v26 < *(v24 + 2))
    {
      v11 = v24;
      sub_22DDEEEE8(*(a1 - 1), *a1);
      sub_22DEC48D4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      sub_22DEC4A14();
      (*v2)(v27, 0, 1, v14);
      sub_22DE0D444(v27, v54, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_22DE0CB70(0, *(v58 + 16) + 1, 1, v58);
      }

      v6 = v59;
      v29 = *(v58 + 16);
      v28 = *(v58 + 24);
      if (v29 >= v28 >> 1)
      {
        v58 = sub_22DE0CB70((v28 > 1), v29 + 1, 1, v58);
      }

      v30 = v58;
      *(v58 + 16) = v29 + 1;
      sub_22DE0D444(v54, v30 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v29, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v4 = v51;
      ++v26;
      a1 += 2;
      v24 = v11;
      if (v56 == v26)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v58 = MEMORY[0x277D84F90];
LABEL_20:

  v31 = sub_22DE0C4C8(v48, v58);

  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v52;
    v34 = *(v53 + 80);
    v56 = v31;
    v35 = v31 + ((v34 + 32) & ~v34);
    v58 = *(v53 + 72);
    v36 = (v47 + 8);
    v37 = MEMORY[0x277D84F90];
    v38 = v50;
    do
    {
      sub_22DE0D33C(v35, v38);
      sub_22DEC48F4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v39 = sub_22DEC4A04();
      v41 = v40;
      (*v36)(v6, v33);
      sub_22DE0D4F4(v38, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_22DE0CD48(0, *(v37 + 2) + 1, 1, v37);
      }

      v43 = *(v37 + 2);
      v42 = *(v37 + 3);
      if (v43 >= v42 >> 1)
      {
        v37 = sub_22DE0CD48((v42 > 1), v43 + 1, 1, v37);
      }

      *(v37 + 2) = v43 + 1;
      v44 = &v37[16 * v43];
      *(v44 + 4) = v39;
      *(v44 + 5) = v41;
      v33 = v52;
      v6 = v59;
      v38 = v50;
      v35 += v58;
      --v32;
    }

    while (v32);
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
  }

  v45 = v49[28];
  v46 = v49[30];
  __swift_project_boxed_opaque_existential_1(v49 + 25, v45);
  v61[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B38, &qword_22DEC6D88);
  v61[0] = v37;
  v60 = 4;
  (*(v46 + 8))(v61, &v60, v45, v46);
  sub_22DDEF284(v61, &qword_27DA37988, &unk_22DEC6210);
}

uint64_t sub_22DE09198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  *(v5 + 208) = a4;
  *(v5 + 216) = v4;
  *(v5 + 336) = a2;
  *(v5 + 192) = a1;
  *(v5 + 200) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B10, &qword_22DEC6D68);
  v10 = swift_task_alloc();
  *(v5 + 224) = v10;
  v11 = sub_22DEC4694();
  *(v5 + 232) = v11;
  *(v5 + 240) = *(v11 - 8);
  *(v5 + 248) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v5 + 256) = v12;
  *v12 = v5;
  v12[1] = sub_22DE09300;

  return sub_22DE0A498(v10, a1, v8, a3, a4);
}

uint64_t sub_22DE09300()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_22DE09410, v1, 0);
}

uint64_t sub_22DE09410()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22DDEF284(v3, &qword_27DA37B10, &qword_22DEC6D68);
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v4 = sub_22DEC4B44();
    __swift_project_value_buffer(v4, qword_281462270);
    v5 = sub_22DEC4B24();
    v6 = sub_22DEC4E44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22DDEC000, v5, v6, "Failed to create ack request, not acking", v7, 2u);
      MEMORY[0x2318DBF00](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[31];
    v11 = v0[27];
    (*(v2 + 32))(v10, v3, v1);
    v13 = sub_22DE0D4AC(&qword_27DA37B18, v12, type metadata accessor for NDOAckHandler, &protocol conformance descriptor for NDOAckHandler);
    v14 = swift_task_alloc();
    v0[33] = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v10;
    v15 = swift_task_alloc();
    v0[34] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B20, &qword_22DEC6D78);
    v0[35] = v16;
    *v15 = v0;
    v15[1] = sub_22DE096C4;

    return MEMORY[0x2822008A0](v0 + 2, v11, v13, 0xD00000000000001FLL, 0x800000022DED1960, sub_22DE0D334, v14, v16);
  }
}

uint64_t sub_22DE096C4()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = sub_22DE0A098;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_22DE097EC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22DE097EC()
{
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 296) = v1;
  *(v0 + 304) = v2;
  *(v0 + 312) = v3;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  sub_22DDEEEE8(v1, v2);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B28, &qword_22DEC6D80);
  if (!swift_dynamicCast())
  {
    type metadata accessor for NDOErrors(0);
    sub_22DE0D4AC(&qword_28145AE60, 255, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v44 = swift_allocError();
    v19 = v18;
    *(v0 + 112) = v1;
    *(v0 + 160) = 0;
    *(v0 + 168) = 0xE000000000000000;
    *(v0 + 120) = v2;
    *(v0 + 128) = v4;
    sub_22DDEEEE8(v1, v2);
    v20 = v4;
    sub_22DEC4FB4();
    sub_22DDEEF50(v1, v2);

    v21 = *(v0 + 168);
    *v19 = *(v0 + 160);
    v19[1] = v21;
    v22 = v44;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_12:
    sub_22DDEEF50(v1, v2);

    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v23 = sub_22DEC4B44();
    __swift_project_value_buffer(v23, qword_281462270);
    v24 = v22;
    v25 = sub_22DEC4B24();
    v26 = sub_22DEC4E44();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = v22;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_22DDEC000, v25, v26, "Ack request failed with error: %@", v27, 0xCu);
      sub_22DDEF284(v28, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v28, -1, -1);
      MEMORY[0x2318DBF00](v27, -1, -1);
    }

    swift_beginAccess();

    sub_22DE0CF60(v31);
    swift_endAccess();

    goto LABEL_17;
  }

  v45 = v4;
  v5 = *(v0 + 336);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  *(v0 + 320) = v8;
  sub_22DDEEF50(v6, v7);
  if ([v8 statusCode] == 401 && (v5 & 1) == 0)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v9 = sub_22DEC4B44();
    __swift_project_value_buffer(v9, qword_281462270);
    v10 = sub_22DEC4B24();
    v11 = sub_22DEC4E54();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22DDEC000, v10, v11, "Ack handler retrying once due to 401", v12, 2u);
      MEMORY[0x2318DBF00](v12, -1, -1);
    }

    v13 = swift_task_alloc();
    *(v0 + 328) = v13;
    *v13 = v0;
    v13[1] = sub_22DE09ED0;
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);

    return sub_22DE09198(v16, 1, v15, v14);
  }

  if ([v8 statusCode] != 200)
  {
    type metadata accessor for NDOErrors(0);
    sub_22DE0D4AC(&qword_28145AE60, 255, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v39 = swift_allocError();
    v41 = v40;
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    *(v0 + 136) = v1;
    *(v0 + 144) = v2;
    *(v0 + 152) = v4;
    sub_22DDEEEE8(v1, v2);
    v42 = v4;
    sub_22DEC4FB4();
    sub_22DDEEF50(v1, v2);

    v22 = v39;
    v43 = *(v0 + 184);
    *v41 = *(v0 + 176);
    v41[1] = v43;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_12;
  }

  sub_22DE0B55C(*(v0 + 192));
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v33 = sub_22DEC4B44();
  __swift_project_value_buffer(v33, qword_281462270);

  v34 = sub_22DEC4B24();
  v35 = sub_22DEC4E54();
  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 192);
  if (v36)
  {
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = *(v37 + 16);

    _os_log_impl(&dword_22DDEC000, v34, v35, "Successfully acked %ld actions", v38, 0xCu);
    MEMORY[0x2318DBF00](v38, -1, -1);
  }

  else
  {
  }

  sub_22DDEEF50(v1, v2);
LABEL_17:
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22DE09ED0()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x2822009F8](sub_22DE09FE0, v1, 0);
}

uint64_t sub_22DE09FE0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);

  sub_22DDEEF50(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22DE0A098()
{

  v1 = v0[36];
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v2 = sub_22DEC4B44();
  __swift_project_value_buffer(v2, qword_281462270);
  v3 = v1;
  v4 = sub_22DEC4B24();
  v5 = sub_22DEC4E44();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22DDEC000, v4, v5, "Ack request failed with error: %@", v6, 0xCu);
    sub_22DDEF284(v7, &qword_27DA379D8, qword_22DEC6E70);
    MEMORY[0x2318DBF00](v7, -1, -1);
    MEMORY[0x2318DBF00](v6, -1, -1);
  }

  swift_beginAccess();

  sub_22DE0CF60(v10);
  swift_endAccess();

  (*(v0[30] + 8))(v0[31], v0[29]);

  v11 = v0[1];

  return v11();
}

void *NDOAckHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t NDOAckHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1(v0 + 31);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22DE0A348(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22DE0D6CC;

  return sub_22DE08680(a1, 0, 0);
}

uint64_t sub_22DE0A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22DE0D6CC;

  return sub_22DE08680(a1, a2, a3);
}

uint64_t sub_22DE0A498(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 208) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  v7 = sub_22DEC4764();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  v8 = sub_22DEC4904();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest(0);
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DE0A6AC, v5, 0);
}

uint64_t sub_22DE0A6AC(uint64_t a1)
{
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v6 = *(v1 + 144);
  v47 = v6;
  v48 = *(v1 + 136);
  v49 = *(v1 + 128);
  v51 = *(v1 + 120);
  v7 = *(v1 + 48);
  v8 = *(v1 + 24);
  *v2 = MEMORY[0x277D84F90];
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v9 = *(v3 + 24);
  v10 = *(v4 + 56);
  v10(&v2[v9], 1, 1, v6);
  v12 = v7[34];
  v11 = v7[35];
  v46 = v7;
  __swift_project_boxed_opaque_existential_1(v7 + 31, v12);
  (*(v11 + 16))(v12, v11);
  sub_22DDEF284(&v2[v9], &qword_27DA37A38, &unk_22DEC6570);
  sub_22DE0D444(v5, &v2[v9], type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  v10(&v2[v9], 0, 1, v47);
  *v2 = v8;

  sub_22DEC48F4();
  sub_22DE0D4AC(&qword_27DA37B48, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);
  v13 = sub_22DEC4A04();
  v15 = v14;
  *(v1 + 184) = v13;
  *(v1 + 192) = v14;
  (*(v49 + 8))(v48, v51);
  v16 = *(v1 + 40);
  if (!v16)
  {
LABEL_4:
    v20 = *(v1 + 48);
    v21 = sub_22DE0D4AC(&qword_27DA37B18, v16, type metadata accessor for NDOAckHandler, &protocol conformance descriptor for NDOAckHandler);
    v22 = swift_task_alloc();
    *(v1 + 200) = v22;
    *v22 = v1;
    v22[1] = sub_22DE0ADE0;
    v23 = *(v1 + 72);
    v24 = *(v1 + 48);
    v25 = *(v1 + 56);

    return MEMORY[0x2822007B8](v23, v20, v21, 0xD000000000000028, 0x800000022DED1980, sub_22DE0D554, v24, v25);
  }

  v17 = *(v1 + 88);
  v18 = *(v1 + 96);
  v19 = *(v1 + 80);
  sub_22DEC4744();
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {
    sub_22DDEF284(*(v1 + 80), &qword_27DA37910, &qword_22DEC5BB0);
    goto LABEL_4;
  }

  v26 = *(v1 + 112);
  v27 = *(v1 + 88);
  v28 = *(v1 + 96);
  v50 = *(v1 + 208);
  (*(v28 + 32))(v26, *(v1 + 80), v27);
  v29 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v30 = sub_22DEC4724();
  v31 = [v29 initWithURL_];

  v32 = v31;
  v33 = sub_22DEC4C04();
  [v32 setHTTPMethod_];

  v34 = sub_22DEC4C04();
  v35 = sub_22DEC4C04();
  [v32 addValue:v34 forHTTPHeaderField:v35];

  v36 = sub_22DEC4C04();
  v37 = sub_22DEC4C04();
  [v32 setValue:v36 forHTTPHeaderField:v37];

  v38 = sub_22DEC4794();
  [v32 setHTTPBody_];

  v40 = v46[34];
  v39 = v46[35];
  __swift_project_boxed_opaque_existential_1(v46 + 31, v40);
  (*(v39 + 8))(v32, v50, v40, v39);
  sub_22DEC4674();

  sub_22DDEEF50(v13, v15);
  (*(v28 + 8))(v26, v27);
  v41 = *(v1 + 176);
  v42 = *(v1 + 16);
  v43 = sub_22DEC4694();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_22DE0D4F4(v41, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  v44 = *(v1 + 8);

  return v44();
}

uint64_t sub_22DE0ADE0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22DE0AEF0, v1, 0);
}

uint64_t sub_22DE0AEF0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 64);
  sub_22DE0D55C(*(v0 + 72), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22DDEF284(*(v0 + 64), &qword_27DA37910, &qword_22DEC5BB0);
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v4 = sub_22DEC4B44();
    __swift_project_value_buffer(v4, qword_281462270);
    v5 = sub_22DEC4B24();
    v6 = sub_22DEC4E44();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_22DDEC000, v5, v6, "Unable to ack due to no ack url", v7, 2u);
      MEMORY[0x2318DBF00](v7, -1, -1);
    }

    v8 = *(v0 + 72);
    sub_22DDEEF50(*(v0 + 184), *(v0 + 192));

    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 192);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v34 = *(v0 + 72);
    v35 = *(v0 + 88);
    v14 = *(v0 + 48);
    v33 = *(v0 + 208);
    (*(v13 + 32))(v12, *(v0 + 64));
    v15 = objc_allocWithZone(MEMORY[0x277CCAB70]);
    v16 = sub_22DEC4724();
    v17 = [v15 initWithURL_];

    v18 = v17;
    v19 = sub_22DEC4C04();
    [v18 setHTTPMethod_];

    v20 = sub_22DEC4C04();
    v21 = sub_22DEC4C04();
    [v18 addValue:v20 forHTTPHeaderField:v21];

    v22 = sub_22DEC4C04();
    v23 = sub_22DEC4C04();
    [v18 setValue:v22 forHTTPHeaderField:v23];

    v24 = sub_22DEC4794();
    [v18 setHTTPBody_];

    v25 = v14[34];
    v26 = v14[35];
    __swift_project_boxed_opaque_existential_1(v14 + 31, v25);
    (*(v26 + 8))(v18, v33, v25, v26);
    sub_22DEC4674();
    v27 = v10;
    v8 = v34;
    sub_22DDEEF50(v27, v11);

    (*(v13 + 8))(v12, v35);
    v9 = 0;
  }

  sub_22DDEF284(v8, &qword_27DA37910, &qword_22DEC5BB0);
  v28 = *(v0 + 176);
  v29 = *(v0 + 16);
  v30 = sub_22DEC4694();
  (*(*(v30 - 8) + 56))(v29, v9, 1, v30);
  sub_22DE0D4F4(v28, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckRequest);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_22DE0B34C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  v10 = a2[23];
  v11 = a2[24];
  __swift_project_boxed_opaque_existential_1(a2 + 20, v10);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  (*(v11 + 8))(a3, sub_22DE0D3A0, v13, v10, v11);
}

uint64_t sub_22DE0B4D0(void *a1, unint64_t a2, void *a3, char a4)
{
  if (a4)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);
    return sub_22DEC4D74();
  }

  else
  {
    sub_22DDEEEE8(a1, a2);
    v7 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);
    return sub_22DEC4D84();
  }
}

void sub_22DE0B55C(unsigned __int8 *a1)
{
  v100 = sub_22DEC4904();
  v2 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22DEC48E4();
  MEMORY[0x28223BE20](v5 - 8);
  v114 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B00, &unk_22DEC6C98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v94 - v8;
  v10 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v102 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v104 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v94 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v94 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v107 = &v94 - v20;
  MEMORY[0x28223BE20](v19);
  v115 = &v94 - v21;
  if (qword_28145AE68 != -1)
  {
    goto LABEL_105;
  }

  while (1)
  {
    v22 = sub_22DEC4B44();
    __swift_project_value_buffer(v22, qword_281462270);

    v23 = sub_22DEC4B24();
    v24 = sub_22DEC4E54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = *(a1 + 2);

      _os_log_impl(&dword_22DDEC000, v23, v24, "Removing %ld acks from key value store", v25, 0xCu);
      MEMORY[0x2318DBF00](v25, -1, -1);
    }

    else
    {
    }

    v110 = *(a1 + 2);
    if (!v110)
    {
      return;
    }

    v26 = v96[28];
    v27 = v96[29];
    __swift_project_boxed_opaque_existential_1(v96 + 25, v26);
    LOBYTE(v118[0]) = 4;
    v28 = (*(v27 + 8))(v118, v26, v27);
    v99 = v4;
    if (!v28 || (v4 = sub_22DE082B0(v28), , !v4))
    {

      v4 = MEMORY[0x277D84F90];
    }

    v106 = a1;
    v95 = v2;
    v98 = v18;
    v29 = *(v4 + 16);
    v112 = v10;
    v116 = v29;
    if (!v29)
    {
      break;
    }

    a1 = 0;
    v113 = 0;
    v2 = (v102 + 56);
    v30 = (v4 + 40);
    v109 = MEMORY[0x277D84F90];
    v18 = v114;
    while (a1 < *(v4 + 16))
    {
      sub_22DDEEEE8(*(v30 - 1), *v30);
      sub_22DEC48D4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v10 = v112;
      v31 = v113;
      sub_22DEC4A14();
      if (v31)
      {

        (*v2)(v9, 1, 1, v10);
        sub_22DDEF284(v9, &qword_27DA37B00, &unk_22DEC6C98);
        v113 = 0;
      }

      else
      {
        v113 = 0;
        (*v2)(v9, 0, 1, v10);
        sub_22DE0D444(v9, v115, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_22DE0CB70(0, v109[2] + 1, 1, v109);
        }

        v33 = v109[2];
        v32 = v109[3];
        if (v33 >= v32 >> 1)
        {
          v109 = sub_22DE0CB70((v32 > 1), v33 + 1, 1, v109);
        }

        v34 = v109;
        v109[2] = v33 + 1;
        sub_22DE0D444(v115, v34 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v33, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      }

      ++a1;
      v30 += 2;
      if (v116 == a1)
      {
        goto LABEL_21;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    swift_once();
  }

  v113 = 0;
  v109 = MEMORY[0x277D84F90];
LABEL_21:

  v4 = v109;
  v97 = v109[2];
  if (!v97)
  {
    v105 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v18 = 0;
  v105 = MEMORY[0x277D84F90];
  v2 = v106;
  a1 = v107;
  v9 = v110;
  while (2)
  {
    if (v18 >= *(v4 + 16))
    {
      goto LABEL_104;
    }

    v35 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v116 = *(v102 + 72);
    sub_22DE0D33C(v4 + v35 + v116 * v18, a1);
    v4 = 0;
    ++v18;
    v103 = v35;
    v114 = v18;
    v115 = &v2[v35];
    while (1)
    {
      if (v4 == v9)
      {
        __break(1u);
        goto LABEL_102;
      }

      sub_22DE0D33C(&v115[v4 * v116], v15);
      v36 = *v15;
      v37 = *a1;
      if (v36 <= 0xF7)
      {
        if (v37 > 0xF7)
        {
          goto LABEL_77;
        }

        if ((v36 & 0x80) != 0)
        {
          if ((v37 & 0x80) == 0 || qword_22DEC6DA8[v36 & 0x7F] != qword_22DEC6DA8[v37 & 0x7F])
          {
            goto LABEL_77;
          }
        }

        else if (v36 != v37)
        {
          goto LABEL_77;
        }
      }

      else if (v37 <= 0xF7)
      {
        goto LABEL_77;
      }

      v38 = *(v10 + 28);
      v39 = &v15[v38];
      v40 = *&v15[v38 + 8];
      v41 = &a1[v38];
      v42 = *(v41 + 1);
      if (v40)
      {
        if (!v42)
        {
          goto LABEL_77;
        }

        v43 = *v39 == *v41 && v40 == v42;
        if (!v43 && (sub_22DEC50E4() & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      else if (v42)
      {
        goto LABEL_77;
      }

      v44 = *(v10 + 32);
      v45 = &v15[v44];
      v46 = *&v15[v44 + 8];
      v47 = &a1[v44];
      v48 = *(v47 + 1);
      if (v46)
      {
        if (!v48)
        {
          goto LABEL_77;
        }

        v49 = *v45 == *v47 && v46 == v48;
        if (!v49 && (sub_22DEC50E4() & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      else if (v48)
      {
        goto LABEL_77;
      }

      v50 = *(v15 + 1);
      v51 = *(a1 + 1);
      if (v50 != v51)
      {
        if (*(v50 + 16) != *(v51 + 16))
        {
LABEL_77:
          sub_22DE0D4F4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
          v18 = v114;
          goto LABEL_78;
        }

        v52 = 0;
        v18 = v50 + 64;
        v53 = 1 << *(v50 + 32);
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        else
        {
          v54 = -1;
        }

        v55 = v54 & *(v50 + 64);
        v101 = (v53 + 63) >> 6;
        v108 = v50;
        while (v55)
        {
          v56 = __clz(__rbit64(v55));
          v111 = (v55 - 1) & v55;
LABEL_67:
          v59 = 16 * (v56 | (v52 << 6));
          v60 = (*(v50 + 48) + v59);
          v62 = *v60;
          v61 = v60[1];
          v63 = (*(v50 + 56) + v59);
          v65 = *v63;
          v64 = v63[1];

          v66 = sub_22DE100E4(v62, v61);
          v68 = v67;

          if ((v68 & 1) == 0)
          {

            v10 = v112;
            v2 = v106;
            a1 = v107;
            v9 = v110;
            goto LABEL_77;
          }

          v69 = (*(v51 + 56) + 16 * v66);
          v70 = *v69 == v65 && v69[1] == v64;
          v2 = v106;
          a1 = v107;
          if (v70)
          {

            v55 = v111;
            v10 = v112;
            v9 = v110;
            v50 = v108;
          }

          else
          {
            v71 = sub_22DEC50E4();

            v55 = v111;
            v10 = v112;
            v9 = v110;
            v50 = v108;
            if ((v71 & 1) == 0)
            {
              goto LABEL_77;
            }
          }
        }

        v57 = v52;
        while (1)
        {
          v52 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            break;
          }

          if (v52 >= v101)
          {
            goto LABEL_74;
          }

          v58 = *(v18 + 8 * v52);
          ++v57;
          if (v58)
          {
            v56 = __clz(__rbit64(v58));
            v111 = (v58 - 1) & v58;
            goto LABEL_67;
          }
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_74:
      sub_22DEC48B4();
      sub_22DE0D4AC(&qword_27DA37B30, 255, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v72 = sub_22DEC4BF4();
      sub_22DE0D4F4(v15, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v18 = v114;
      if (v72)
      {
        break;
      }

LABEL_78:
      if (++v4 == v9)
      {
        sub_22DE0D444(a1, v104, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v73 = v105;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118[0] = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22DE04854(0, *(v73 + 16) + 1, 1);
          v73 = v118[0];
        }

        v4 = v109;
        v76 = *(v73 + 16);
        v75 = *(v73 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_22DE04854((v75 > 1), v76 + 1, 1);
          v73 = v118[0];
        }

        *(v73 + 16) = v76 + 1;
        v105 = v73;
        sub_22DE0D444(v104, v73 + v103 + v76 * v116, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v9 = v110;
        goto LABEL_84;
      }
    }

    sub_22DE0D4F4(a1, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    v4 = v109;
LABEL_84:
    if (v18 != v97)
    {
      continue;
    }

    break;
  }

LABEL_87:

  v77 = *(v105 + 16);
  if (v77)
  {
    v78 = v105 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v79 = *(v102 + 72);
    v80 = (v95 + 8);
    v81 = MEMORY[0x277D84F90];
    do
    {
      v82 = v98;
      sub_22DE0D33C(v78, v98);
      v83 = v99;
      sub_22DEC48F4();
      sub_22DE0D4AC(&qword_27DA37B08, 255, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v84 = v113;
      v85 = sub_22DEC4A04();
      if (v84)
      {

        (*v80)(v83, v100);
        sub_22DE0D4F4(v82, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        v113 = 0;
      }

      else
      {
        v87 = v85;
        v88 = v86;
        v113 = 0;
        (*v80)(v83, v100);
        sub_22DE0D4F4(v82, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_22DE0CD48(0, *(v81 + 2) + 1, 1, v81);
        }

        v90 = *(v81 + 2);
        v89 = *(v81 + 3);
        if (v90 >= v89 >> 1)
        {
          v81 = sub_22DE0CD48((v89 > 1), v90 + 1, 1, v81);
        }

        *(v81 + 2) = v90 + 1;
        v91 = &v81[16 * v90];
        *(v91 + 4) = v87;
        *(v91 + 5) = v88;
      }

      v78 += v79;
      --v77;
    }

    while (v77);
  }

  else
  {

    v81 = MEMORY[0x277D84F90];
  }

  v92 = v96[28];
  v93 = v96[30];
  __swift_project_boxed_opaque_existential_1(v96 + 25, v92);
  v118[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B38, &qword_22DEC6D88);
  v118[0] = v81;
  v117 = 4;
  (*(v93 + 8))(v118, &v117, v92, v93);
  sub_22DDEF284(v118, &qword_27DA37988, &unk_22DEC6210);
}

uint64_t sub_22DE0C244(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B50, &qword_22DEC6D98);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = a2[18];
  v9 = a2[19];
  __swift_project_boxed_opaque_existential_1(a2 + 15, v8);
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  (*(v9 + 16))(sub_22DE0D650, v11, v8, v9);
}

uint64_t sub_22DE0C3BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5[-v1];
  sub_22DE19164(3, &v5[-v1]);
  v3 = sub_22DEC4764();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B50, &qword_22DEC6D98);
  return sub_22DEC4D84();
}

uint64_t sub_22DE0C4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v63 - v9;
  MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  v68 = *(a1 + 16);
  if (!v68)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_66:
    v78 = a2;

    sub_22DE0CF60(v18);
    return v78;
  }

  v14 = 0;
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v67 = a1 + v15;
  v16 = *(v11 + 72);
  v63 = v15;
  v17 = a2 + v15;
  v18 = MEMORY[0x277D84F90];
  v70 = &v63 - v12;
  v71 = v4;
  v69 = v16;
  v75 = a2 + v15;
  v66 = a2;
  v64 = v7;
  while (1)
  {
    v73 = v18;
    v74 = v14;
    sub_22DE0D33C(v67 + v16 * v14, v13);
    v77 = *(a2 + 16);
    if (v77)
    {
      break;
    }

LABEL_58:
    v59 = v64;
    sub_22DE0D444(v13, v64, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    v18 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v78 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22DE04854(0, *(v18 + 16) + 1, 1);
      v18 = v78;
    }

    v62 = *(v18 + 16);
    v61 = *(v18 + 24);
    if (v62 >= v61 >> 1)
    {
      sub_22DE04854((v61 > 1), v62 + 1, 1);
      v18 = v78;
    }

    *(v18 + 16) = v62 + 1;
    sub_22DE0D444(v59, v18 + v63 + v62 * v16, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    v17 = v75;
LABEL_63:
    v14 = v74 + 1;
    a2 = v66;
    if (v74 + 1 == v68)
    {
      goto LABEL_66;
    }
  }

  v19 = 0;
  while (1)
  {
    result = sub_22DE0D33C(v17 + v19 * v16, v10);
    v21 = *v10;
    v22 = *v13;
    if (v21 <= 0xF7)
    {
      if (v22 > 0xF7)
      {
        goto LABEL_56;
      }

      if ((v21 & 0x80) != 0)
      {
        if ((v22 & 0x80) == 0 || qword_22DEC6DA8[v21 & 0x7F] != qword_22DEC6DA8[v22 & 0x7F])
        {
          goto LABEL_56;
        }
      }

      else if (v21 != v22)
      {
        goto LABEL_56;
      }
    }

    else if (v22 <= 0xF7)
    {
      goto LABEL_56;
    }

    v23 = *(v4 + 28);
    v24 = &v10[v23];
    v25 = *&v10[v23 + 8];
    v26 = &v13[v23];
    v27 = *(v26 + 1);
    if (v25)
    {
      if (!v27)
      {
        goto LABEL_56;
      }

      result = *v24;
      if (*v24 != *v26 || v25 != v27)
      {
        result = sub_22DEC50E4();
        if ((result & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v27)
    {
      goto LABEL_56;
    }

    v29 = *(v4 + 32);
    v30 = &v10[v29];
    v31 = *&v10[v29 + 8];
    v32 = &v13[v29];
    v33 = *(v32 + 1);
    if (v31)
    {
      if (!v33)
      {
        goto LABEL_56;
      }

      result = *v30;
      if (*v30 != *v32 || v31 != v33)
      {
        result = sub_22DEC50E4();
        if ((result & 1) == 0)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v33)
    {
      goto LABEL_56;
    }

    v35 = *(v10 + 1);
    v36 = *(v13 + 1);
    if (v35 != v36)
    {
      break;
    }

LABEL_53:
    sub_22DEC48B4();
    sub_22DE0D4AC(&qword_27DA37B30, 255, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v58 = sub_22DEC4BF4();
    sub_22DE0D4F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    if (v58)
    {
      sub_22DE0D4F4(v13, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
      v18 = v73;
      goto LABEL_63;
    }

LABEL_57:
    if (++v19 == v77)
    {
      goto LABEL_58;
    }
  }

  if (*(v35 + 16) != *(v36 + 16))
  {
LABEL_56:
    sub_22DE0D4F4(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData);
    goto LABEL_57;
  }

  v37 = 0;
  v38 = v35 + 64;
  v39 = 1 << *(v35 + 32);
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  else
  {
    v40 = -1;
  }

  v41 = v40 & *(v35 + 64);
  v65 = (v39 + 63) >> 6;
  v72 = v35;
  while (v41)
  {
    v42 = __clz(__rbit64(v41));
    v76 = (v41 - 1) & v41;
LABEL_46:
    v45 = 16 * (v42 | (v37 << 6));
    v46 = (*(v35 + 48) + v45);
    v48 = *v46;
    v47 = v46[1];
    v49 = (*(v35 + 56) + v45);
    v51 = *v49;
    v50 = v49[1];

    v52 = sub_22DE100E4(v48, v47);
    v54 = v53;

    if ((v54 & 1) == 0)
    {

      v13 = v70;
      v4 = v71;
      v16 = v69;
      v17 = v75;
      goto LABEL_56;
    }

    v55 = (*(v36 + 56) + 16 * v52);
    if (*v55 == v51 && v55[1] == v50)
    {

      v13 = v70;
      v4 = v71;
      v16 = v69;
      v17 = v75;
      v41 = v76;
      v35 = v72;
    }

    else
    {
      v57 = sub_22DEC50E4();

      v13 = v70;
      v4 = v71;
      v16 = v69;
      v17 = v75;
      v41 = v76;
      v35 = v72;
      if ((v57 & 1) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  v43 = v37;
  while (1)
  {
    v37 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v37 >= v65)
    {
      goto LABEL_53;
    }

    v44 = *(v38 + 8 * v37);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v76 = (v44 - 1) & v44;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

char *sub_22DE0CA6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B58, &qword_22DEC6DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22DE0CB70(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AB0, &qword_22DEC6AB0);
  v10 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) - 8);
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
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0) - 8);
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

char *sub_22DE0CD48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AB8, &qword_22DEC6AB8);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_22DE0CE54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A50, &qword_22DEC6580);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_22DE0CF60(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_22DE0CB70(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of NDOAckHandler.ack(data:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22DE0D6CC;

  return v6(a1);
}

uint64_t dispatch thunk of NDOAckHandler.ack(data:urlString:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22DE0858C;

  return v10(a1, a2, a3);
}

uint64_t sub_22DE0D33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AckData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE0D3A0(void *a1, unint64_t a2, void *a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B40, &qword_22DEC6D90);

  return sub_22DE0B4D0(a1, a2, a3, a4 & 1);
}

uint64_t sub_22DE0D444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE0D4AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22DE0D4F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE0D55C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_22DE0D650()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B50, &qword_22DEC6D98);

  return sub_22DE0C3BC();
}

uint64_t sub_22DE0D6D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_22DEC4E04();
  if (!v19)
  {
    return sub_22DEC4D14();
  }

  v41 = v19;
  v45 = sub_22DEC4F94();
  v32 = sub_22DEC4FA4();
  sub_22DEC4F74();
  result = sub_22DEC4DF4();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_22DEC4E24();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_22DEC4F84();
      result = sub_22DEC4E14();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL Message.ensureOneOf(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v42 - v10;
  v51 = v9;
  v47 = v12;
  v48 = v13;
  v49 = v2;
  v14 = MEMORY[0x277D839B0];
  sub_22DEC51E4();
  v15 = sub_22DEC4D44();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_22DE0D6D0(sub_22DE0DEB0, v46, v15, v14, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v17);
  v19 = *(v18 + 16);
  v20 = (v18 + 32);
  while (1)
  {
    v21 = v19;
    if (v19-- == 0)
    {
      break;
    }

    v23 = *v20++;
    if (v23 == 1)
    {

      return v21 != 0;
    }
  }

  v45 = v8;
  v24 = a1;

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v25 = sub_22DEC4B44();
  __swift_project_value_buffer(v25, qword_281462270);
  v26 = *(v5 + 16);
  v26(v11, v2, a2);

  v27 = sub_22DEC4B24();
  v28 = sub_22DEC4E54();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v42 = v26;
    v30 = v29;
    v44 = swift_slowAlloc();
    v51 = v44;
    *v30 = 136315394;
    v43 = v27;
    v42(v45, v11, a2);
    v31 = sub_22DEC4C74();
    v32 = v28;
    v34 = v33;
    (*(v5 + 8))(v11, a2);
    v35 = sub_22DDEDC0C(v31, v34, &v51);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    v50 = v24;
    swift_getWitnessTable();
    v36 = sub_22DEC50A4();
    v38 = sub_22DDEDC0C(v36, v37, &v51);

    *(v30 + 14) = v38;
    v39 = v43;
    _os_log_impl(&dword_22DDEC000, v43, v32, "%s has none of the required keypaths explicitly set: %s", v30, 0x16u);
    v40 = v44;
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v40, -1, -1);
    MEMORY[0x2318DBF00](v30, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v11, a2);
  }

  return v21 != 0;
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.array(for:)(NDOAPI::NDOKeyValueStoreKey a1)
{
  v2 = sub_22DEC4C04();

  v3 = [v1 arrayForKey_];

  if (v3)
  {
    v5 = sub_22DEC4CE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  result.value._rawValue = v6;
  result.is_nil = v4;
  return result;
}

Swift::Bool_optional __swiftcall NSUserDefaults.BOOL(for:)(NDOAPI::NDOKeyValueStoreKey a1)
{
  v2.value = *a1;
  NSUserDefaults.object(for:)(&v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_22DE0E24C(&v3);
    return 2;
  }
}

double NSUserDefaults.object(for:)@<D0>(_OWORD *a2@<X8>)
{
  v4 = sub_22DEC4C04();

  v5 = [v2 objectForKey_];

  if (v5)
  {
    sub_22DEC4EC4();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_22DE0E24C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37988, &unk_22DEC6210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE0E35C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_22DEC4764();
  __swift_allocate_value_buffer(v3, qword_28145E4A8);
  v4 = __swift_project_value_buffer(v3, qword_28145E4A8);
  sub_22DEC4744();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22DE0E4B0()
{
  v0 = sub_22DEC46F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22DEC4764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_28145E528);
  __swift_project_value_buffer(v4, qword_28145E528);
  sub_22DEC4704();
  v10[0] = 0xD000000000000037;
  v10[1] = 0x800000022DED1A20;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22DE0E6BC()
{
  v0 = sub_22DEC46F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22DEC4764();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v6, qword_28145E4E8);
  __swift_project_value_buffer(v4, qword_28145E4E8);
  if (qword_28145E520 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_28145E528);
  (*(v5 + 16))(v8, v9, v4);
  v11[0] = 0xD000000000000012;
  v11[1] = 0x800000022DED1A00;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22DE0E98C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC46F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22DEC4764();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v13, a2);
  __swift_project_value_buffer(v11, a2);
  if (qword_28145E520 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_28145E528);
  (*(v12 + 16))(v15, v16, v11);
  v18[0] = a3;
  v18[1] = a4;
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v7);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_22DE0EC14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22DEC46F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22DEC4764();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v13, a2);
  __swift_project_value_buffer(v11, a2);
  if (qword_28145E480 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_28145E488);
  (*(v12 + 16))(v15, v16, v11);
  v18[0] = a3;
  v18[1] = a4;
  (*(v8 + 104))(v10, *MEMORY[0x277CC91D8], v7);
  sub_22DDEDFE0();
  sub_22DEC4754();
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_22DE0EEC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22DEC4764();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t getEnumTagSinglePayload for NDOConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NDOConstants(_WORD *result, int a2, int a3)
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

void (*static NDOClientPostProcessor.saveDataToUrl(_:)(uint64_t a1))(void *a1, unint64_t a2, void *a3, char a4)
{
  v2 = sub_22DEC4764();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_22DE0F8C8;
}

void sub_22DE0F1F0(void *a1, unint64_t a2, void *a3, char a4, uint64_t a5)
{
  v10 = sub_22DEC4764();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v14 = sub_22DEC4B44();
    __swift_project_value_buffer(v14, qword_281462270);
    v15 = a1;
    v41 = sub_22DEC4B24();
    v16 = sub_22DEC4E44();
    sub_22DDEF48C(a1, a2, a3, 1);
    if (os_log_type_enabled(v41, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44 = v18;
      *v17 = 136315138;
      v42[0] = a1;
      v42[1] = a2;
      v42[2] = a3;
      v43 = 1;
      v19 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B78, &qword_22DEC7040);
      v20 = sub_22DEC4C74();
      v22 = sub_22DDEDC0C(v20, v21, &v44);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_22DDEC000, v41, v16, "Not caching due to load failure: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2318DBF00](v18, -1, -1);
      MEMORY[0x2318DBF00](v17, -1, -1);

      return;
    }

    goto LABEL_18;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  sub_22DDEEEE8(a1, a2);
  v24 = a3;
  if (v23 && [v23 statusCode] - 300 <= 0xFFFFFFFFFFFFFF9BLL)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v25 = sub_22DEC4B44();
    __swift_project_value_buffer(v25, qword_281462270);
    v26 = v24;
    v41 = sub_22DEC4B24();
    v27 = sub_22DEC4E44();
    if (os_log_type_enabled(v41, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = [v23 statusCode];

      _os_log_impl(&dword_22DDEC000, v41, v27, "Not caching due to bad status code: %ld", v28, 0xCu);
      MEMORY[0x2318DBF00](v28, -1, -1);
    }

    else
    {
    }

    sub_22DDEEF50(a1, a2);
LABEL_18:
    v39 = v41;

    return;
  }

  sub_22DEC47B4();
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v29 = sub_22DEC4B44();
  __swift_project_value_buffer(v29, qword_281462270);
  (*(v11 + 16))(v13, a5, v10);
  v30 = sub_22DEC4B24();
  v31 = sub_22DEC4E54();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42[0] = v33;
    *v32 = 136315138;
    sub_22DE0F9D8();
    v40 = v30;
    v34 = sub_22DEC50A4();
    v41 = v24;
    v36 = v35;
    (*(v11 + 8))(v13, v10);
    v37 = sub_22DDEDC0C(v34, v36, v42);

    *(v32 + 4) = v37;
    v38 = v40;
    _os_log_impl(&dword_22DDEC000, v40, v31, "Cached successfully to url: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x2318DBF00](v33, -1, -1);
    MEMORY[0x2318DBF00](v32, -1, -1);

    sub_22DDEEF50(a1, a2);
  }

  else
  {

    sub_22DDEEF50(a1, a2);
    (*(v11 + 8))(v13, v10);
  }
}

void sub_22DE0F8C8(void *a1, unint64_t a2, void *a3, char a4)
{
  v9 = *(sub_22DEC4764() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_22DE0F1F0(a1, a2, a3, a4 & 1, v10);
}

uint64_t sub_22DE0F970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379D8, qword_22DEC6E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DE0F9D8()
{
  result = qword_28145E550;
  if (!qword_28145E550)
  {
    sub_22DEC4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28145E550);
  }

  return result;
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = *a1;
  v10 = 0xEB00000000454744;
  v11 = 0x454C574F4E4B4341;
  v12 = 0x800000022DED1B00;
  if (v9 == 5)
  {
    v13 = 0xD000000000000010;
  }

  else
  {
    v13 = 0xD000000000000011;
  }

  if (v9 != 5)
  {
    v12 = 0x800000022DED1AE0;
  }

  if (v9 != 3)
  {
    v11 = 0x575F454349564544;
    v10 = 0xEF59544E41525241;
  }

  if (*a1 > 4u)
  {
    v11 = v13;
    v10 = v12;
  }

  v14 = 0xE700000000000000;
  v15 = 0x474E4947474F4CLL;
  v16 = 0xE600000000000000;
  v17 = 0x4749464E4F43;
  if (v9 != 1)
  {
    v17 = 0x4E495F4B43454843;
    v16 = 0xE800000000000000;
  }

  if (*a1)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a1 <= 2u)
  {
    v18 = v15;
  }

  else
  {
    v18 = v11;
  }

  if (*a1 <= 2u)
  {
    v19 = v14;
  }

  else
  {
    v19 = v10;
  }

  if (!*(*v3 + 16))
  {

    goto LABEL_25;
  }

  sub_22DE100E4(v18, v19);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_25:
    type metadata accessor for NDOErrors(0);
    sub_22DE1046C(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    swift_allocError();
    v25 = v24;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_22DEC4F34();
    MEMORY[0x2318DB350](0xD000000000000010, 0x800000022DED1AA0);
    v30 = v9;
    sub_22DEC4FB4();
    MEMORY[0x2318DB350](0xD000000000000019, 0x800000022DED1AC0);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    sub_22DEC4FB4();
    v26 = v29;
    *v25 = v28;
    v25[1] = v26;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  sub_22DEC4744();

  v22 = sub_22DEC4764();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v8, 1, v22) == 1)
  {
    sub_22DDFCD50(v8);
    goto LABEL_25;
  }

  return (*(v23 + 32))(a2, v8, v22);
}

uint64_t Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (!*(*v3 + 16))
  {
    goto LABEL_5;
  }

  sub_22DE100E4(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22DEC4744();

  v11 = sub_22DEC4764();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_22DDFCD50(v9);
LABEL_5:
    type metadata accessor for NDOErrors(0);
    sub_22DE1046C(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    swift_allocError();
    v14 = v13;
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_22DEC4F34();
    MEMORY[0x2318DB350](0xD000000000000010, 0x800000022DED1AA0);
    MEMORY[0x2318DB350](a1, a2);
    MEMORY[0x2318DB350](0xD000000000000019, 0x800000022DED1AC0);
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
    sub_22DEC4FB4();
    v15 = v18;
    *v14 = v17;
    v14[1] = v15;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return (*(v12 + 32))(a3, v9, v11);
}

Swift::String_optional __swiftcall Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.urlString(for:)(Swift::String a1)
{
  v2 = v1;
  v3 = *v1;
  if (!*(v3 + 16))
  {
    v3 = v2[1];
    if (!*(v3 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  countAndFlagsBits = a1._countAndFlagsBits;
  object = a1._object;
  v6 = sub_22DE100E4(a1._countAndFlagsBits, a1._object);
  if ((v7 & 1) == 0)
  {
    v3 = v2[1];
    a1._object = object;
    a1._countAndFlagsBits = countAndFlagsBits;
    if (!*(v3 + 16))
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = sub_22DE100E4(a1._countAndFlagsBits, a1._object);
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_8:
    v10 = 0;
    v11 = 0;
    goto LABEL_9;
  }

LABEL_7:
  v9 = (*(v3 + 56) + 16 * v6);
  v10 = *v9;
  v11 = v9[1];

LABEL_9:
  v12 = v10;
  v13 = v11;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

unint64_t sub_22DE100E4(uint64_t a1, uint64_t a2)
{
  sub_22DEC5184();
  sub_22DEC4C94();
  v4 = sub_22DEC51A4();

  return sub_22DE101F4(a1, a2, v4);
}

unint64_t sub_22DE1015C(uint64_t a1)
{
  sub_22DEC4764();
  sub_22DE1046C(&qword_27DA37998, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_22DEC4BD4();

  return sub_22DE102AC(a1, v2);
}

unint64_t sub_22DE101F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22DEC50E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22DE102AC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_22DEC4764();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_22DE1046C(&qword_27DA37B80, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_22DEC4BF4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_22DE1046C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NDOUpdateConfigActionHandler.__allocating_init(configLoader:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_22DDFE518(a1, v2 + 16);
  return v2;
}

void sub_22DE10518(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v5 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v11 = sub_22DEC4B44();
  __swift_project_value_buffer(v11, qword_281462270);
  sub_22DE10B9C(a1, v10);
  v12 = sub_22DEC4B24();
  v13 = sub_22DEC4E54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = a1;
    v16 = v15;
    v33 = v15;
    *v14 = 136315138;
    sub_22DE10B9C(v10, v8);
    v17 = sub_22DEC4C74();
    v19 = v18;
    sub_22DE10C00(v10);
    v20 = sub_22DDEDC0C(v17, v19, &v33);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_22DDEC000, v12, v13, "Handling post follow up action: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v21 = v16;
    a1 = v30;
    MEMORY[0x2318DBF00](v21, -1, -1);
    MEMORY[0x2318DBF00](v14, -1, -1);
  }

  else
  {

    sub_22DE10C00(v10);
  }

  if (*(a1 + *(v5 + 20) + 8))
  {
    v22 = v3[5];
    v23 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v31;
    *(v24 + 24) = v32;
    v25 = *(v23 + 16);

    v25(sub_22DE10C5C, v24, v22, v23);
  }

  else
  {
    v26 = sub_22DEC4B24();
    v27 = sub_22DEC4E54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22DDEC000, v26, v27, "Not handling update config action due to missing config ID", v28, 2u);
      MEMORY[0x2318DBF00](v28, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v29 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v31(v29, 1);
  }
}

void sub_22DE10878(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v16 = sub_22DEC4B44();
  __swift_project_value_buffer(v16, qword_281462270);
  sub_22DE10CD8(a1, v15);
  v17 = sub_22DEC4B24();
  v18 = sub_22DEC4E54();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v30 = a1;
    v22 = v21;
    v32 = v21;
    *v20 = 136315138;
    sub_22DE10CD8(v15, v13);
    v23 = sub_22DEC4C74();
    v3 = a2;
    v25 = v24;
    sub_22DE10D48(v15);
    v26 = sub_22DDEDC0C(v23, v25, &v32);
    a2 = v3;

    *(v20 + 4) = v26;
    _os_log_impl(&dword_22DDEC000, v17, v18, "Config update result: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v27 = v22;
    a1 = v30;
    MEMORY[0x2318DBF00](v27, -1, -1);
    MEMORY[0x2318DBF00](v20, -1, -1);
  }

  else
  {

    sub_22DE10D48(v15);
  }

  sub_22DE10CD8(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v10;
  }

  else
  {
    sub_22DE10D48(v10);
  }

  a2(v3, EnumCaseMultiPayload == 1);
  sub_22DE10DB0(v3, EnumCaseMultiPayload == 1);
}

uint64_t NDOUpdateConfigActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_22DE10B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE10C00(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ReloadConfigData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE10CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE10D48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22DE10DB0(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t NDODownloadWarrantyActionHandler.__allocating_init(configLoader:loaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_22DDFE518(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t NDODownloadWarrantyActionHandler.init(configLoader:loaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_22DDFE518(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

void sub_22DE10E50(uint64_t *a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v7 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = *a1;
  if (*(*a1 + 16))
  {
    sub_22DDEDAAC(v3 + 16, v36);
    v15 = *(v3 + 56);
    v14 = *(v3 + 64);
    type metadata accessor for NDOWarrantyLoader();
    v16 = swift_allocObject();
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0;
    sub_22DDFE518(v36, v16 + 16);
    *(v16 + 96) = v15;
    *(v16 + 104) = v14;

    v17 = sub_22DE0501C(MEMORY[0x277D84F90]);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = a2;
    v18[4] = a3;
    v19 = *(v16 + 40);
    v20 = *(v16 + 48);
    __swift_project_boxed_opaque_existential_1((v16 + 16), v19);
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = sub_22DE11498;
    v22[4] = v18;
    v22[5] = v13;
    v22[6] = v17;
    v23 = *(v20 + 16);

    v23(sub_22DDFE418, v22, v19, v20);
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v24 = sub_22DEC4B44();
    __swift_project_value_buffer(v24, qword_281462270);
    sub_22DE114A8(a1, v12);
    v25 = sub_22DEC4B24();
    v26 = sub_22DEC4E44();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v36[0] = v28;
      *v27 = 136315138;
      sub_22DE114A8(v12, v10);
      v29 = sub_22DEC4C74();
      v31 = v30;
      sub_22DE1150C(v12);
      v32 = sub_22DDEDC0C(v29, v31, v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_22DDEC000, v25, v26, "No serial numbers to load coverage in action data: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x2318DBF00](v28, -1, -1);
      MEMORY[0x2318DBF00](v27, -1, -1);
    }

    else
    {

      sub_22DE1150C(v12);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v33 = swift_allocError();
    *v34 = 0xD000000000000031;
    v34[1] = 0x800000022DED1B50;
    swift_storeEnumTagMultiPayload();
    a2(v33, 1);
  }
}

void sub_22DE11238(void *a1, char a2, uint64_t a3, void (*a4)(void *, void))
{
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v7 = sub_22DEC4B44();
  __swift_project_value_buffer(v7, qword_281462270);
  sub_22DE115DC(a1, a2 & 1);
  v8 = sub_22DEC4B24();
  v9 = sub_22DEC4E54();
  sub_22DE115E8(a1, a2 & 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    sub_22DE115DC(a1, a2 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B90, &unk_22DEC6F80);
    v12 = sub_22DEC4C74();
    v14 = sub_22DDEDC0C(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_22DDEC000, v8, v9, "Warranty update finished. Result: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2318DBF00](v11, -1, -1);
    MEMORY[0x2318DBF00](v10, -1, -1);
  }

  if (a2)
  {
    v15 = a1;
  }

  a4(a1, a2 & 1);
  sub_22DE10DB0(a1, a2 & 1);
}

uint64_t NDODownloadWarrantyActionHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NDODownloadWarrantyActionHandler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_22DE114A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE1150C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CoverageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_22DE115DC(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_22DE115E8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t NDOMappingLoader.__allocating_init(client:retryOnUnauthorized:requestGenerator:mapper:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_22DDEDA18(a1, v12 + 16);
  *(v12 + 56) = a2;
  *(v12 + 80) = a3;
  *(v12 + 88) = a4;
  *(v12 + 64) = a5;
  *(v12 + 72) = a6;
  return v12;
}

uint64_t NDOMappingLoader.init(client:retryOnUnauthorized:requestGenerator:mapper:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 64) = a5;
  *(v6 + 72) = a6;
  return v6;
}

uint64_t sub_22DE116C8(int a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v46 = a3;
  LODWORD(v5) = a1;
  v6 = *(*v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37AE8, &qword_22DEC7400);
  v7 = sub_22DEC51B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39[-v9];
  v11 = sub_22DEC4694();
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v14 = sub_22DEC4B44();
  __swift_project_value_buffer(v14, qword_281462270);
  v15 = sub_22DEC4B24();
  v16 = sub_22DEC4E54();
  v17 = os_log_type_enabled(v15, v16);
  v42 = v6;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v40 = v5;
    v5 = v18;
    v19 = swift_slowAlloc();
    v47 = v19;
    *v5 = 136315138;
    v20 = sub_22DEC5214();
    v41 = v7;
    v22 = v13;
    v23 = v10;
    v24 = v8;
    v25 = sub_22DDEDC0C(v20, v21, &v47);
    v7 = v41;

    *(v5 + 4) = v25;
    v8 = v24;
    v10 = v23;
    v13 = v22;
    _os_log_impl(&dword_22DDEC000, v15, v16, "Loading %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2318DBF00](v19, -1, -1);
    v26 = v5;
    LOBYTE(v5) = v40;
    MEMORY[0x2318DBF00](v26, -1, -1);
  }

  v27 = v5 & 1;
  v28 = (*(v4 + 80))(v27);
  if (v28)
  {
    v29 = v28;
    v30 = *(v4 + 40);
    v31 = *(v4 + 48);
    v41 = __swift_project_boxed_opaque_existential_1((v4 + 16), v30);
    sub_22DEC4674();
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v42;
    *(v33 + 24) = v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v27;
    v34 = v46;
    *(v33 + 48) = v45;
    *(v33 + 56) = v34;
    v35 = *(v31 + 8);

    v36 = v29;

    v35(v13, sub_22DE1224C, v33, v30, v31);

    (*(v43 + 8))(v13, v44);
  }

  else
  {
    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v38 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *v10 = v38;
    swift_storeEnumTagMultiPayload();
    v45(v10);
    return (*(v8 + 8))(v10, v7);
  }
}

void sub_22DE11AF8(void *a1, unint64_t a2, void *a3, int a4, uint64_t a5, void *a6, int a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10)
{
  v71 = a7;
  LODWORD(v76) = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37AE8, &qword_22DEC7400);
  v15 = sub_22DEC51B4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v70 - v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v72 = v16;
    v74 = v15;
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v73 = a9;
    v21 = sub_22DEC4B44();
    v22 = __swift_project_value_buffer(v21, qword_281462270);
    v23 = v76 & 1;
    sub_22DDEF440(a1, a2, a3, v76 & 1);
    v70[1] = v22;
    v24 = sub_22DEC4B24();
    v25 = sub_22DEC4E54();
    sub_22DDEF48C(a1, a2, a3, v23);
    v26 = os_log_type_enabled(v24, v25);
    v75 = a1;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v70[0] = a8;
      v28 = v27;
      v29 = swift_slowAlloc();
      v30 = a1;
      v31 = a3;
      v32 = a2;
      v33 = v29;
      v81 = v29;
      *v28 = 136315138;
      v77 = v30;
      v78 = v32;
      v79 = v31;
      v80 = v23;
      sub_22DDEF440(v30, v32, v31, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B78, &qword_22DEC7040);
      v34 = sub_22DEC4C74();
      v36 = v20;
      v37 = sub_22DDEDC0C(v34, v35, &v81);

      *(v28 + 4) = v37;
      v20 = v36;
      _os_log_impl(&dword_22DDEC000, v24, v25, "Load complete with result: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v38 = v33;
      a2 = v32;
      a3 = v31;
      MEMORY[0x2318DBF00](v38, -1, -1);
      v39 = v28;
      a8 = v70[0];
      MEMORY[0x2318DBF00](v39, -1, -1);
    }

    v40 = v74;
    if (v76)
    {
      v41 = v75;
      *v18 = v75;
      swift_storeEnumTagMultiPayload();
      v42 = v41;
LABEL_22:
      a8(v18);

      (*(v72 + 8))(v18, v40);
      return;
    }

    v62 = v75;
    if (*(v20 + 56))
    {
      objc_opt_self();
      v63 = swift_dynamicCastObjCClass();
      if (v63)
      {
        v64 = v63;
        v65 = v20;
        v66 = a3;
        if ([v64 statusCode] == 401 && (v71 & 1) == 0)
        {
          v67 = sub_22DEC4B24();
          v68 = sub_22DEC4E54();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 0;
            _os_log_impl(&dword_22DDEC000, v67, v68, "Mapping loader retrying once due to 401", v69, 2u);
            MEMORY[0x2318DBF00](v69, -1, -1);
          }

          sub_22DE116C8(1, a8, v73);

          return;
        }

        v20 = v65;
      }
    }

    (*(v20 + 64))(v62, a2);
    goto LABEL_22;
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v43 = sub_22DEC4B44();
  __swift_project_value_buffer(v43, qword_281462270);
  v44 = v76 & 1;
  sub_22DDEF440(a1, a2, a3, v76 & 1);
  v45 = a6;
  v46 = sub_22DEC4B24();
  v47 = sub_22DEC4E44();

  sub_22DDEF48C(a1, a2, a3, v44);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = a3;
    v49 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81 = v76;
    *v49 = 136315394;
    v50 = v45;
    v51 = [v50 description];
    LODWORD(v74) = v47;
    v52 = v51;
    v53 = sub_22DEC4C34();
    v54 = a2;
    v56 = v55;

    v57 = sub_22DDEDC0C(v53, v56, &v81);

    *(v49 + 4) = v57;
    *(v49 + 12) = 2080;
    v77 = a1;
    v78 = v54;
    v79 = v48;
    v80 = v44;
    sub_22DDEF440(a1, v54, v48, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B78, &qword_22DEC7040);
    v58 = sub_22DEC4C74();
    v60 = sub_22DDEDC0C(v58, v59, &v81);

    *(v49 + 14) = v60;
    _os_log_impl(&dword_22DDEC000, v46, v74, "Instance deallocated. Dropping request: %s and result %s", v49, 0x16u);
    v61 = v76;
    swift_arrayDestroy();
    MEMORY[0x2318DBF00](v61, -1, -1);
    MEMORY[0x2318DBF00](v49, -1, -1);
  }
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

uint64_t static NDOResponseMapper.Plist.decode(_:)(uint64_t a1, uint64_t a2)
{
  v19[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_22DEC4794();
  v19[0] = 0;
  v4 = [v2 propertyListWithData:v3 options:0 format:0 error:v19];

  if (v4)
  {
    v5 = v19[0];
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
    sub_22DE1264C();
    if (swift_dynamicCast())
    {
      return v18;
    }

    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v8 = swift_allocError();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v7 = v19[0];
    v8 = sub_22DEC46E4();
  }

  swift_willThrow();
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v9 = sub_22DEC4B44();
  __swift_project_value_buffer(v9, qword_281462270);
  v10 = v8;
  v11 = sub_22DEC4B24();
  v12 = sub_22DEC4E44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_22DDEC000, v11, v12, "Plist parsing failed with error: %@", v13, 0xCu);
    sub_22DE0F970(v14);
    MEMORY[0x2318DBF00](v14, -1, -1);
    MEMORY[0x2318DBF00](v13, -1, -1);
  }

  type metadata accessor for NDOErrors(0);
  sub_22DDFE48C();
  v6 = swift_allocError();
  swift_storeEnumTagMultiPayload();

  return v6;
}

uint64_t sub_22DE12578(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_22DE125D8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_22DE1264C()
{
  result = qword_28145AD20;
  if (!qword_28145AD20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28145AD20);
  }

  return result;
}

unint64_t NDOErrors.localizedDescription.getter()
{
  v1 = v0;
  v2 = sub_22DEC4764();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NDOErrors(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22DE12D64(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x2065726F6D206F6ELL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v15 = 0x800000022DED1DC0;
      v16 = 0xD000000000000022;
      goto LABEL_19;
    case 2:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      strcpy(v22, "invalid data: ");
      HIBYTE(v22[1]) = -18;
      goto LABEL_20;
    case 3:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v15 = 0x800000022DED1D00;
      v16 = 0xD000000000000014;
      goto LABEL_19;
    case 4:
      v17 = *v8;
      v18 = v8[1];
      strcpy(v22, "parsing: ");
      WORD1(v22[1]) = 0;
      HIDWORD(v22[1]) = -385875968;
      v19 = v18;
      goto LABEL_24;
    case 5:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v15 = 0x800000022DED1C90;
      v16 = 0xD000000000000015;
      goto LABEL_19;
    case 6:
      v13 = *v8;
      v14 = v8[1];
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v15 = 0x800000022DED1C70;
      v16 = 0xD000000000000017;
LABEL_19:
      v22[0] = v16;
      v22[1] = v15;
LABEL_20:
      MEMORY[0x2318DB350](v13, v14);
      goto LABEL_25;
    case 7:
      v20 = *v8;
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v22[0] = 0xD00000000000001ALL;
      v22[1] = 0x800000022DED1C50;
      v21[1] = v20;
      v17 = sub_22DEC50A4();
LABEL_24:
      MEMORY[0x2318DB350](v17, v19);
LABEL_25:

      result = v22[0];
      break;
    case 8:
    case 25:
      result = 0xD000000000000018;
      break;
    case 9:
      return result;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
    case 18:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x69206769666E6F63;
      break;
    case 14:
      result = 0xD00000000000001ELL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 17:
    case 26:
      result = 0xD000000000000025;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 20:
      result = 0xD000000000000016;
      break;
    case 21:
      result = 0xD00000000000002DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0xD000000000000026;
      break;
    case 27:
      result = 0xD000000000000023;
      break;
    case 28:
      result = 0xD00000000000001ALL;
      break;
    case 29:
      result = 0x206E776F6E6B6E75;
      break;
    case 30:
      result = 0xD000000000000012;
      break;
    default:
      (*(v3 + 32))(v5, v8, v2);
      v22[0] = 0;
      v22[1] = 0xE000000000000000;
      sub_22DEC4F34();

      v22[0] = 0xD000000000000014;
      v22[1] = 0x800000022DED1DF0;
      v11 = sub_22DEC4714();
      MEMORY[0x2318DB350](v11);

      v12 = v22[0];
      (*(v3 + 8))(v5, v2);
      result = v12;
      break;
  }

  return result;
}

uint64_t type metadata accessor for NDOErrors(uint64_t a1)
{
  result = qword_28145AE50;
  if (!qword_28145AE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DE12D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NDOErrors(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s6NDOAPI9NDOErrorsO2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  v57 = a2;
  v3 = sub_22DEC4764();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NDOErrors(0);
  v6 = MEMORY[0x28223BE20](v5);
  v53 = (&v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v52 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v52 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v52 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v52 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v52 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v52 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B98, &unk_22DEC7150);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v52 + *(v29 + 56) - v30;
  v32 = a1;
  v33 = &v52 - v30;
  sub_22DE12D64(v32, &v52 - v30);
  v56 = v31;
  sub_22DE12D64(v57, v31);
  v57 = v33;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22DE12D64(v57, v25);
      v42 = *v25;
      v41 = v25[1];
      v43 = v56;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_53;
      }

      if (v42 == *v43 && v41 == v43[1])
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    case 2u:
      sub_22DE12D64(v57, v22);
      v36 = *v22;
      v35 = v22[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 3u:
      sub_22DE12D64(v57, v19);
      v36 = *v19;
      v35 = v19[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 4u:
      sub_22DE12D64(v57, v16);
      v36 = *v16;
      v35 = v16[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_53;
      }

      goto LABEL_41;
    case 5u:
      sub_22DE12D64(v57, v13);
      v36 = *v13;
      v35 = v13[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_41;
      }

      goto LABEL_53;
    case 6u:
      sub_22DE12D64(v57, v10);
      v36 = *v10;
      v35 = v10[1];
      v37 = v56;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_53:

        goto LABEL_54;
      }

LABEL_41:
      if (v36 == *v37 && v35 == v37[1])
      {
LABEL_47:
      }

      else
      {
LABEL_45:
        v46 = sub_22DEC50E4();

        if ((v46 & 1) == 0)
        {
          sub_22DE13654(v57);
          goto LABEL_55;
        }
      }

LABEL_75:
      sub_22DE13654(v57);
      v40 = 1;
      break;
    case 7u:
      v38 = v53;
      sub_22DE12D64(v57, v53);
      v39 = v56;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_54;
      }

      v40 = *v38 == *v39;
      goto LABEL_78;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() == 13)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() == 17)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() == 18)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x14u:
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x15u:
      if (swift_getEnumCaseMultiPayload() == 21)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x16u:
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x17u:
      if (swift_getEnumCaseMultiPayload() == 23)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x18u:
      if (swift_getEnumCaseMultiPayload() == 24)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x19u:
      if (swift_getEnumCaseMultiPayload() == 25)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Au:
      if (swift_getEnumCaseMultiPayload() == 26)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Bu:
      if (swift_getEnumCaseMultiPayload() == 27)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Cu:
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Du:
      if (swift_getEnumCaseMultiPayload() == 29)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    case 0x1Eu:
      if (swift_getEnumCaseMultiPayload() == 30)
      {
        goto LABEL_75;
      }

      goto LABEL_54;
    default:
      sub_22DE12D64(v57, v27);
      v34 = v56;
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v54 + 8))(v27, v55);
LABEL_54:
        sub_22DE135EC(v57);
LABEL_55:
        v40 = 0;
      }

      else
      {
        v49 = v54;
        v48 = v55;
        v50 = v52;
        (*(v54 + 32))(v52, v34, v55);
        v40 = sub_22DEC4734();
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v27, v48);
LABEL_78:
        sub_22DE13654(v57);
      }

      break;
  }

  return v40 & 1;
}

uint64_t sub_22DE13570(uint64_t a1)
{
  result = sub_22DEC4764();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22DE135EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B98, &unk_22DEC7150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE13654(uint64_t a1)
{
  v2 = type metadata accessor for NDOErrors(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NDOLoaderWithFallback.__allocating_init(primary:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_22DDEDA18(a1, v4 + 16);
  sub_22DDEDA18(a2, v4 + 56);
  return v4;
}

uint64_t NDOLoaderWithFallback.init(primary:fallback:)(__int128 *a1, __int128 *a2)
{
  sub_22DDEDA18(a1, v2 + 16);
  sub_22DDEDA18(a2, v2 + 56);
  return v2;
}

uint64_t sub_22DE13744(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[5];
  v7 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v5 + 80);
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = a2;
  v10 = *(v7 + 16);

  v10(sub_22DE13C88, v9, v6, v7);
}

void sub_22DE1385C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA37AE8, &qword_22DEC7400);
  v9 = sub_22DEC51B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v40 - v11);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    (*(v10 + 16))(v12, a1, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *v12;
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v16 = sub_22DEC4B44();
      __swift_project_value_buffer(v16, qword_281462270);
      v17 = v15;
      v18 = sub_22DEC4B24();
      v19 = sub_22DEC4E54();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v40 = a3;
        v22 = v21;
        v23 = swift_slowAlloc();
        v41 = a4;
        v42 = v23;
        v24 = v23;
        *v20 = 136315394;
        v25 = sub_22DEC5214();
        v27 = sub_22DDEDC0C(v25, v26, &v42);

        *(v20 + 4) = v27;
        *(v20 + 12) = 2112;
        v28 = v15;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v20 + 14) = v29;
        *v22 = v29;
        _os_log_impl(&dword_22DDEC000, v18, v19, "Falling back to secondary %s loader, primary failed with error: %@", v20, 0x16u);
        sub_22DE0F970(v22);
        v30 = v22;
        a3 = v40;
        MEMORY[0x2318DBF00](v30, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v31 = v24;
        a4 = v41;
        MEMORY[0x2318DBF00](v31, -1, -1);
        MEMORY[0x2318DBF00](v20, -1, -1);
      }

      v32 = v14[10];
      v33 = v14[11];
      __swift_project_boxed_opaque_existential_1(v14 + 7, v32);
      v34 = swift_allocObject();
      v34[2] = a5;
      v34[3] = a3;
      v34[4] = a4;
      v35 = *(v33 + 16);

      v35(sub_22DE13DCC, v34, v32, v33);
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      a3(a1);
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v36 = sub_22DEC4B44();
    __swift_project_value_buffer(v36, qword_281462270);
    v37 = sub_22DEC4B24();
    v38 = sub_22DEC4E44();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22DDEC000, v37, v38, "Instance is deallocated. Not handling results", v39, 2u);
      MEMORY[0x2318DBF00](v39, -1, -1);
    }
  }
}

uint64_t NDOLoaderWithFallback.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t NDOLoaderWithFallback.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_22DE13DF4(uint64_t (*a1)(void))
{
  a1();

  return sub_22DEC5214();
}

uint64_t NDOFollowUpClient.hashValue.getter()
{
  v1 = *v0;
  sub_22DEC5184();
  MEMORY[0x2318DB840](v1);
  return sub_22DEC51A4();
}

uint64_t NDODismissFollowUpActionHandler.__allocating_init(clearFollowUp:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t NDODismissFollowUpActionHandler.init(clearFollowUp:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

void sub_22DE13F08(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  v27[2] = a3;
  v28 = a2;
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v10 = sub_22DEC4B44();
  __swift_project_value_buffer(v10, qword_281462270);
  sub_22DE143B8(a1, v9);
  v11 = sub_22DEC4B24();
  v12 = sub_22DEC4E54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29[0] = v14;
    *v13 = 136315138;
    sub_22DE143B8(v9, v7);
    v15 = sub_22DEC4C74();
    v17 = v16;
    sub_22DE1441C(v9);
    v18 = sub_22DDEDC0C(v15, v17, v29);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22DDEC000, v11, v12, "Handling dismiss follow up action %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2318DBF00](v14, -1, -1);
    MEMORY[0x2318DBF00](v13, -1, -1);
  }

  else
  {

    sub_22DE1441C(v9);
  }

  v19 = (a1 + *(v4 + 20));
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = *(v27[1] + 16);
    LOBYTE(v29[0]) = (*(a1 + *(v4 + 24)) & 1) == 0;

    v22(v21, v20, v29);

    v28(0, 0);
  }

  else
  {
    v23 = sub_22DEC4B24();
    v24 = sub_22DEC4E44();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22DDEC000, v23, v24, "Not handling remove follow up action due to missing follow up ID", v25, 2u);
      MEMORY[0x2318DBF00](v25, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DDFE48C();
    v26 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v28(v26, 1);
  }
}

uint64_t NDODismissFollowUpActionHandler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_22DE143B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE1441C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RemoveFollowUpData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22DE1447C()
{
  result = qword_27DA37BA0;
  if (!qword_27DA37BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37BA0);
  }

  return result;
}

uint64_t sub_22DE14554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = 0x41746E756F636361;
  if (a1 == 0x41746E756F636361 && a2 == 0xEC00000064656464 || (result = sub_22DEC50E4(), (result & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    result = 0x65676175676E616CLL;
    if (a1 == 0x65676175676E616CLL && a2 == 0xEF6465676E616843 || (result = sub_22DEC50E4(), (result & 1) != 0))
    {
      v7 = 5;
    }

    else if (a1 == 1953460066 && a2 == 0xE400000000000000 || (result = sub_22DEC50E4(), (result & 1) != 0))
    {
      v7 = 0;
    }

    else
    {
      result = 0x6163696669746F6ELL;
      if (a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974 || (result = sub_22DEC50E4(), (result & 1) != 0))
      {
        v7 = 6;
      }

      else
      {
        result = 0x656C756465686373;
        if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (result = sub_22DEC50E4(), (result & 1) != 0))
        {
          v7 = 4;
        }

        else
        {
          result = 0x6961506863746177;
          if (a1 == 0x6961506863746177 && a2 == 0xEC000000676E6972 || (result = sub_22DEC50E4(), (result & 1) != 0) || (result = 0x706E556863746177, a1 == 0x706E556863746177) && a2 == 0xEE00676E69726961 || (result = sub_22DEC50E4(), (result & 1) != 0) || a1 == 0xD000000000000010 && 0x800000022DED20A0 == a2 || (result = sub_22DEC50E4(), (result & 1) != 0))
          {
            v7 = 2;
          }

          else
          {
            result = 0x6168436863746177;
            v7 = 3;
            if (a1 != 0x6168436863746177 || a2 != 0xEC0000006465676ELL)
            {
              result = sub_22DEC50E4();
              if (result)
              {
                v7 = 3;
              }

              else
              {
                v7 = 7;
              }
            }
          }
        }
      }
    }
  }

  *a3 = v7;
  return result;
}

__n128 sub_22DE1480C(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v15 = a1[1];
  v16 = *a1;
  v9 = *(a1 + 4);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v10 = sub_22DEC4B44();
  __swift_project_value_buffer(v10, qword_281462270);
  v11 = sub_22DEC4B24();
  v12 = sub_22DEC4E54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22DDEC000, v11, v12, "RemoteCheckInHandler.checkIn", v13, 2u);
    MEMORY[0x2318DBF00](v13, -1, -1);
  }

  v17[0] = v16;
  v17[1] = v15;
  v18 = v9;
  sub_22DE14950(v17, a2, a3, 0, a4, a5);
  return result;
}

void sub_22DE14950(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void **), uint64_t a6)
{
  v155 = a6;
  v154 = a5;
  v135 = a4;
  v162 = a3;
  v160 = a2;
  v138 = sub_22DEC4694();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v134[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v148 = sub_22DEC4904();
  v147 = *(v148 - 8);
  v9 = MEMORY[0x28223BE20](v148);
  v145 = &v134[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v143 = &v134[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v12 - 8);
  v141 = &v134[-v13];
  v156 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v140 = *(v156 - 8);
  v14 = MEMORY[0x28223BE20](v156);
  v139 = &v134[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v161 = &v134[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v17 - 8);
  v153 = &v134[-v18];
  v152 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v134[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v134[-v21];
  v149 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v23 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v25 = &v134[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0);
  v27 = MEMORY[0x28223BE20](v26);
  v144 = &v134[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = MEMORY[0x28223BE20](v27);
  v142 = &v134[-v30];
  MEMORY[0x28223BE20](v29);
  v32 = &v134[-v31];
  v33 = *(a1 + 16);
  *v168 = *a1;
  *&v168[16] = v33;
  v169 = *(a1 + 32);
  v34 = objc_allocWithZone(MEMORY[0x277CCAB70]);
  v158 = v6;
  v35 = sub_22DEC4724();
  v36 = [v34 initWithURL_];

  v37 = v36;
  v38 = sub_22DEC4C04();
  [v37 setHTTPMethod_];

  v39 = sub_22DEC4C04();
  v40 = sub_22DEC4C04();
  [v37 addValue:v39 forHTTPHeaderField:v40];

  v41 = sub_22DEC4C04();
  v42 = sub_22DEC4C04();
  [v37 addValue:v41 forHTTPHeaderField:v42];

  v163 = v37;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v146 = v26;
  v43 = *(v26 + 20);
  if (qword_28145D120 != -1)
  {
    swift_once();
  }

  *&v32[v43] = qword_28145D128;
  v159 = v32;
  v45 = *(v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 24);
  v44 = *(v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 32);
  v157 = (v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider);
  __swift_project_boxed_opaque_existential_1((v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider), v45);
  v46 = *(v44 + 24);

  v47 = v45;
  v48 = v159;
  v46(v47, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(v48 + v43);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v50 = sub_22DE45FE4(v50);
    *(v48 + v43) = v50;
  }

  sub_22DE17628(v25, v22, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v23 + 56))(v22, 0, 1, v149);
  v51 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v22, v50 + v51, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v52 = v157[3];
  v53 = v157[4];
  __swift_project_boxed_opaque_existential_1(v157, v52);
  v54 = v150;
  (*(v53 + 16))(v52, v53);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(v48 + v43);
  v57 = v161;
  if ((v55 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v56 = sub_22DE45FE4(v56);
    *(v48 + v43) = v56;
  }

  v58 = v156;
  v59 = v153;
  sub_22DE17628(v54, v153, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v151 + 56))(v59, 0, 1, v152);
  v60 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v59, v56 + v60, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  *v57 = sub_22DE0501C(MEMORY[0x277D84F90]);
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v61 = v58[6];
  *(v57 + v61) = 7;
  v62 = (v57 + v58[7]);
  *v62 = 0;
  v62[1] = 0;
  v63 = (v57 + v58[8]);
  *v63 = 0;
  v63[1] = 0;
  v64 = *v168;
  if (*v168 != 1)
  {
    v65 = v169;
    v170 = *&v168[8];
    if (*v168)
    {

      *v57 = v64;
    }

    else
    {
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v66 = sub_22DEC4B44();
      __swift_project_value_buffer(v66, qword_281462270);
      v67 = sub_22DEC4B24();
      v68 = sub_22DEC4E54();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_22DDEC000, v67, v68, "No passthrough data for checkIn request", v69, 2u);
        v70 = v69;
        v58 = v156;
        MEMORY[0x2318DBF00](v70, -1, -1);
      }
    }

    v171 = v170;
    if (*(&v170 + 1))
    {
      *v62 = v170;
      sub_22DDF0028(&v171, &v164, &qword_27DA37BB8, &qword_22DEC7348);
      v71 = sub_22DEC4C04();
      v72 = sub_22DEC4C04();
      [v163 addValue:v71 forHTTPHeaderField:v72];
    }

    else
    {
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v73 = sub_22DEC4B44();
      __swift_project_value_buffer(v73, qword_281462270);
      v72 = sub_22DEC4B24();
      v74 = sub_22DEC4E54();
      if (os_log_type_enabled(v72, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_22DDEC000, v72, v74, "No notificationId for checkIn request", v75, 2u);
        v76 = v75;
        v58 = v156;
        MEMORY[0x2318DBF00](v76, -1, -1);
      }
    }

    if (v65)
    {
      v77 = sub_22DEC4C04();
      v78 = sub_22DEC4C04();
      [v163 addValue:v77 forHTTPHeaderField:v78];
    }

    else
    {
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v79 = sub_22DEC4B44();
      __swift_project_value_buffer(v79, qword_281462270);
      v78 = sub_22DEC4B24();
      v80 = sub_22DEC4E54();
      if (os_log_type_enabled(v78, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_22DDEC000, v78, v80, "No notificatioin context for checkIn request", v81, 2u);
        MEMORY[0x2318DBF00](v81, -1, -1);
      }
    }
  }

  v82 = v162;
  sub_22DE14554(v160, v162, &v164);
  if (v164 == 7)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v83 = sub_22DEC4B44();
    __swift_project_value_buffer(v83, qword_281462270);

    v84 = sub_22DEC4B24();
    v85 = sub_22DEC4E44();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v164 = v87;
      *v86 = 136315138;
      *(v86 + 4) = sub_22DDEDC0C(v160, v82, &v164);
      _os_log_impl(&dword_22DDEC000, v84, v85, "No valid mapping for %s trigger, not checking in", v86, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x2318DBF00](v87, -1, -1);
      MEMORY[0x2318DBF00](v86, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v88 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v165 = 0;
    v166 = 0;
    v164 = v88;
    v167 = 1;
    v154(&v164);
    sub_22DE17504(v164, v165, v166, v167);

    sub_22DE175C8(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
  }

  else
  {
    *(v57 + v61) = v164;
    v89 = v139;
    sub_22DE17560(v57, v139, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v91 = *(v48 + v43);
    if ((v90 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v91 = sub_22DE45FE4(v91);
      *(v48 + v43) = v91;
    }

    v92 = v89;
    v93 = v141;
    sub_22DE17628(v92, v141, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    (*(v140 + 56))(v93, 0, 1, v58);
    v94 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v93, v91 + v94, &qword_27DA37BA8, &unk_22DEC7320);
    swift_endAccess();
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v95 = sub_22DEC4B44();
    v96 = __swift_project_value_buffer(v95, qword_281462270);
    v97 = sub_22DEC4B24();
    v98 = sub_22DEC4E54();
    v99 = os_log_type_enabled(v97, v98);
    v156 = v96;
    if (v99)
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v164 = v101;
      *v100 = 136315138;
      swift_beginAccess();
      sub_22DE17560(v48, v142, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      sub_22DEC48F4();
      sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v102 = sub_22DEC49F4();
      v104 = v103;
      (*(v147 + 8))(v143, v148);
      sub_22DE175C8(v142, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v105 = sub_22DDEDC0C(v102, v104, &v164);

      *(v100 + 4) = v105;
      _os_log_impl(&dword_22DDEC000, v97, v98, "CheckIn request body: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x2318DBF00](v101, -1, -1);
      MEMORY[0x2318DBF00](v100, -1, -1);

      v57 = v161;
      v82 = v162;
    }

    else
    {
    }

    v106 = v163;
    v107 = sub_22DEC4B24();
    v108 = sub_22DEC4E54();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v164 = v110;
      *v109 = 136315138;
      v111 = [v106 allHTTPHeaderFields];
      if (v111)
      {
        v112 = v111;
        sub_22DEC4BA4();
      }

      else
      {
        sub_22DE0501C(MEMORY[0x277D84F90]);
      }

      v113 = v145;
      v114 = sub_22DEC4BB4();
      v116 = v115;

      v117 = sub_22DDEDC0C(v114, v116, &v164);

      *(v109 + 4) = v117;
      _os_log_impl(&dword_22DDEC000, v107, v108, "CheckIn request headers: %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x2318DBF00](v110, -1, -1);
      MEMORY[0x2318DBF00](v109, -1, -1);

      v82 = v162;
      v57 = v161;
      v48 = v159;
    }

    else
    {

      v113 = v145;
    }

    swift_beginAccess();
    v118 = v144;
    sub_22DE17560(v48, v144, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    sub_22DEC48F4();
    sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v119 = sub_22DEC4A04();
    v121 = v120;
    (*(v147 + 8))(v113, v148);
    sub_22DE175C8(v118, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v122 = sub_22DEC4794();
    sub_22DDEEF50(v119, v121);
    [v106 setHTTPBody_];

    v123 = v157[3];
    v124 = v157[4];
    __swift_project_boxed_opaque_existential_1(v157, v123);
    LOBYTE(v122) = v135 & 1;
    (*(v124 + 8))(v106, v135 & 1, v123, v124);
    sub_22DE175C8(v57, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v48, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v125 = *(v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 24);
    v126 = *(v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 32);
    __swift_project_boxed_opaque_existential_1((v158 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client), v125);
    v127 = v136;
    sub_22DEC4674();
    v128 = swift_allocObject();
    swift_weakInit();
    v129 = swift_allocObject();
    *(v129 + 16) = v128;
    *(v129 + 24) = v122;
    v130 = *&v168[16];
    *(v129 + 32) = *v168;
    *(v129 + 48) = v130;
    v131 = v160;
    *(v129 + 64) = v169;
    *(v129 + 72) = v131;
    v132 = v154;
    *(v129 + 80) = v82;
    *(v129 + 88) = v132;
    *(v129 + 96) = v155;
    v163 = v106;
    v133 = *(v126 + 8);

    sub_22DDF0028(v168, &v164, &qword_27DA37BB0, &qword_22DEC7340);

    v133(v127, sub_22DE17514, v129, v125, v126);

    (*(v137 + 8))(v127, v138);
  }
}

void sub_22DE16110(void *a1, unint64_t a2, void *a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void **), uint64_t a11)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v18 = a10;
  if (a4)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v19 = sub_22DEC4B44();
    __swift_project_value_buffer(v19, qword_281462270);
    v20 = sub_22DEC4B24();
    v21 = sub_22DEC4E44();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22DDEC000, v20, v21, "RemoteCheckInHandler.checkIn request failure", v22, 2u);
      MEMORY[0x2318DBF00](v22, -1, -1);
    }

    v49 = 0;
    v48 = a1;
    v50 = 1;
    sub_22DDEF440(a1, a2, a3, 1);
    a10(&v48);
LABEL_8:

    v24 = *(&v48 + 1);
    v23 = v48;
    v25 = v49;
    v26 = v50;
LABEL_24:
    sub_22DE17504(v23, v24, v25, v26);
    return;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
LABEL_19:
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v34 = sub_22DEC4B44();
    __swift_project_value_buffer(v34, qword_281462270);
    v35 = sub_22DEC4B24();
    v36 = sub_22DEC4E54();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22DDEC000, v35, v36, "RemoteCheckInHandler.checkIn request success", v37, 2u);
      MEMORY[0x2318DBF00](v37, -1, -1);
    }

    type metadata accessor for NDORemoteCheckInHandler(0);
    sub_22DE16688(a1, a2, &v48);
    v45 = v48;
    v46 = v49;
    v47 = v50;
    v18(&v45);

    v24 = *(&v45 + 1);
    v23 = v45;
    v25 = v46;
    v26 = v47;
    goto LABEL_24;
  }

  v28 = v27;
  v29 = a3;
  if ([v28 statusCode] - 300 > 0xFFFFFFFFFFFFFF9BLL)
  {

    v18 = a10;
    goto LABEL_19;
  }

  if ([v28 statusCode] != 401 || (a6 & 1) != 0)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v38 = sub_22DEC4B44();
    __swift_project_value_buffer(v38, qword_281462270);
    v39 = v29;
    v40 = sub_22DEC4B24();
    v41 = sub_22DEC4E44();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = [v28 statusCode];

      _os_log_impl(&dword_22DDEC000, v40, v41, "RemoteCheckInHandler.checkIn request failed with status code: %ld", v42, 0xCu);
      MEMORY[0x2318DBF00](v42, -1, -1);
    }

    else
    {

      v40 = v39;
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v43 = swift_allocError();
    *v44 = [v28 statusCode];
    swift_storeEnumTagMultiPayload();
    v49 = 0;
    v48 = v43;
    v50 = 1;
    a10(&v48);

    goto LABEL_8;
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v30 = sub_22DEC4B44();
  __swift_project_value_buffer(v30, qword_281462270);
  v31 = sub_22DEC4B24();
  v32 = sub_22DEC4E54();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_22DDEC000, v31, v32, "RemoteCheckInHandler.checkIn retrying once due to 401", v33, 2u);
    MEMORY[0x2318DBF00](v33, -1, -1);
  }

  sub_22DE14950(a7, a8, a9, 1, a10, a11);
}

void sub_22DE16688(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v76 = a2;
  v68 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC0, &qword_22DEC7350);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v63 - v5;
  v70 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action(0);
  v6 = *(v70 - 8);
  v7 = MEMORY[0x28223BE20](v70);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v63 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v63 - v12;
  v71 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v66 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22DEC48E4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  sub_22DEC48D4();
  sub_22DEC48C4();
  (*(v18 + 16))(v21, v23, v17);
  sub_22DDEEEE8(a1, v76);
  sub_22DE17518(&qword_28145CB78, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);
  v67 = v16;
  sub_22DEC4A14();
  v34 = v65;
  v64 = v23;
  v75 = v18;
  v76 = v17;
  v35 = v74;
  sub_22DDF0028(&v67[*(v14 + 24)], v74, &qword_27DA37BC8, qword_22DEC7358);
  v36 = *(v66 + 48);
  v37 = v71;
  v38 = v36(v35, 1, v71);
  if (v38 == 1)
  {
    v39 = MEMORY[0x277D84F90];
    *v34 = MEMORY[0x277D84F90];
    v34[1] = sub_22DE05B84(v39);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v40 = v34 + *(v37 + 28);
    *v40 = 0;
    v40[8] = 1;
    v41 = v36(v35, 1, v37);
    v43 = v75;
    v42 = v76;
    if (v41 != 1)
    {
      sub_22DDEF284(v35, &qword_27DA37BC8, qword_22DEC7358);
    }
  }

  else
  {
    sub_22DE17628(v35, v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    v43 = v75;
    v42 = v76;
  }

  v44 = *v34;

  sub_22DE175C8(v34, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  v45 = v44[2];
  if (v45)
  {
    v46 = 0;
    v74 = MEMORY[0x277D84F90];
    v47 = v70;
    v69 = v6;
    v71 = v44;
    while (v46 < v44[2])
    {
      v48 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v49 = *(v6 + 72);
      sub_22DE17560(v44 + v48 + v49 * v46, v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
      if (v10[*(v47 + 28)] == 7)
      {
        sub_22DE175C8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
      }

      else
      {
        v50 = v45;
        v51 = v73;
        sub_22DDF0028(v10, v73, &qword_27DA37BC0, &qword_22DEC7350);
        v52 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action.OneOf_ActionData(0);
        if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
        {
          sub_22DE175C8(v10, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          sub_22DDEF284(v51, &qword_27DA37BC0, &qword_22DEC7350);
          v45 = v50;
          v44 = v71;
        }

        else
        {
          sub_22DDEF284(v51, &qword_27DA37BC0, &qword_22DEC7350);
          sub_22DE17628(v10, v72, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          v53 = v74;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v53;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22DE04898(0, *(v74 + 16) + 1, 1);
            v74 = v77;
          }

          v45 = v50;
          v56 = *(v74 + 16);
          v55 = *(v74 + 24);
          v44 = v71;
          if (v56 >= v55 >> 1)
          {
            sub_22DE04898((v55 > 1), v56 + 1, 1);
            v74 = v77;
          }

          v57 = v74;
          *(v74 + 16) = v56 + 1;
          sub_22DE17628(v72, v57 + v48 + v56 * v49, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_Action);
          v6 = v69;
          v47 = v70;
        }
      }

      ++v46;
      v43 = v75;
      v42 = v76;
      if (v45 == v46)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    swift_once();
    v24 = sub_22DEC4B44();
    __swift_project_value_buffer(v24, qword_281462270);
    v25 = v44;
    v26 = sub_22DEC4B24();
    v27 = sub_22DEC4E44();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      v30 = v44;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_22DDEC000, v26, v27, "Response parsing failed with error: %@", v28, 0xCu);
      sub_22DDEF284(v29, &qword_27DA379D8, qword_22DEC6E70);
      MEMORY[0x2318DBF00](v29, -1, -1);
      MEMORY[0x2318DBF00](v28, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v32 = swift_allocError();
    swift_storeEnumTagMultiPayload();

    v33 = v68;
    v68[1] = 0;
    v33[2] = 0;
    *v33 = v32;
    *(v33 + 24) = 1;
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
LABEL_23:

    v58 = v67;
    v59 = sub_22DE16FA4(v67);
    v61 = v60;
    sub_22DE175C8(v58, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse);
    (*(v43 + 8))(v64, v42);
    v62 = v68;
    *v68 = v59;
    v62[1] = v61 & 1;
    v62[2] = v74;
    *(v62 + 24) = 0;
  }
}

uint64_t sub_22DE16FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BC8, qword_22DEC7358);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v28 - v13);
  v15 = *(type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIResponse(0) + 24);
  sub_22DDF0028(a1 + v15, v7, &qword_27DA37BC8, qword_22DEC7358);
  v16 = *(v9 + 48);
  if (v16(v7, 1, v8) == 1)
  {
    v17 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    v14[1] = sub_22DE05B84(v17);
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v18 = v14 + *(v8 + 28);
    *v18 = 0;
    v18[8] = 1;
    if (v16(v7, 1, v8) != 1)
    {
      sub_22DDEF284(v7, &qword_27DA37BC8, qword_22DEC7358);
    }
  }

  else
  {
    sub_22DE17628(v7, v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  }

  v19 = v14 + *(v8 + 28);
  v20 = *v19;
  v21 = v19[8];
  sub_22DE175C8(v14, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
  if ((v21 & 1) == 0)
  {
    sub_22DDF0028(a1 + v15, v5, &qword_27DA37BC8, qword_22DEC7358);
    if (v16(v5, 1, v8) == 1)
    {
      v22 = MEMORY[0x277D84F90];
      *v12 = MEMORY[0x277D84F90];
      v12[1] = sub_22DE05B84(v22);
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v23 = v12 + *(v8 + 28);
      *v23 = 0;
      v23[8] = 1;
      if (v16(v5, 1, v8) != 1)
      {
        sub_22DDEF284(v5, &qword_27DA37BC8, qword_22DEC7358);
      }
    }

    else
    {
      sub_22DE17628(v5, v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    }

    v24 = v12 + *(v8 + 28);
    v25 = *v24;
    v26 = v24[8];
    sub_22DE175C8(v12, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInResponse);
    if (v26)
    {
      return 0;
    }

    else
    {
      return v25;
    }
  }

  return v20;
}

uint64_t sub_22DE17304()
{
  v1 = OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_url;
  v2 = sub_22DEC4764();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for NDORemoteCheckInHandler(uint64_t a1)
{
  result = qword_28145E000;
  if (!qword_28145E000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DE17414(uint64_t a1)
{
  result = sub_22DEC4764();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22DE174D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_22DE17504(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_22DE17518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DE17560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22DE175C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22DE17628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22DE17690(__int128 *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v150 = a4;
  v177 = a3;
  v175 = a2;
  v154 = sub_22DEC4694();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v152 = &v149[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v162 = sub_22DEC4904();
  v164 = *(v162 - 8);
  v14 = MEMORY[0x28223BE20](v162);
  v161 = &v149[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v159 = &v149[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BA8, &unk_22DEC7320);
  MEMORY[0x28223BE20](v17 - 8);
  v157 = &v149[-v18];
  v176 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest(0);
  v156 = *(v176 - 8);
  v19 = MEMORY[0x28223BE20](v176);
  v155 = &v149[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v178 = &v149[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A38, &unk_22DEC6570);
  MEMORY[0x28223BE20](v22 - 8);
  v172 = &v149[-v23];
  v171 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta(0);
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v169 = &v149[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37A40, &unk_22DEC7330);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v149[-v26];
  v168 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody(0);
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v29 = &v149[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest(0);
  v31 = MEMORY[0x28223BE20](v30);
  v160 = &v149[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = MEMORY[0x28223BE20](v31);
  v158 = &v149[-v34];
  MEMORY[0x28223BE20](v33);
  v36 = &v149[-v35];
  v37 = swift_allocObject();
  v37[2] = a6;
  v37[3] = a7;
  v166 = a7;
  v173 = v37;
  v37[4] = a8;
  v38 = a1[1];
  v183 = *a1;
  v184 = v38;
  v185 = *(a1 + 4);
  v39 = objc_allocWithZone(MEMORY[0x277CCAB70]);

  v165 = a8;

  v40 = a5;
  v41 = sub_22DEC4724();
  v42 = [v39 initWithURL_];

  v43 = v42;
  v44 = sub_22DEC4C04();
  [v43 setHTTPMethod_];

  v45 = sub_22DEC4C04();
  v46 = sub_22DEC4C04();
  [v43 addValue:v45 forHTTPHeaderField:v46];

  v47 = sub_22DEC4C04();
  v48 = sub_22DEC4C04();
  [v43 addValue:v47 forHTTPHeaderField:v48];

  v179 = v43;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v163 = v30;
  v49 = *(v30 + 20);
  if (qword_28145D120 != -1)
  {
    swift_once();
  }

  *&v36[v49] = qword_28145D128;
  v151 = a5;
  v50 = *(a5 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 24);
  v51 = *(a5 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider + 32);
  v174 = (v40 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider);
  __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_payloadProvider), v50);
  v180 = v36;
  v52 = *(v51 + 24);

  v52(v50, v51);
  v53 = v180;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v55 = *&v53[v49];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v55 = sub_22DE45FE4(v55);
    *&v53[v49] = v55;
  }

  v56 = v178;
  sub_22DE17628(v29, v27, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CommonRequestBody);
  (*(v167 + 56))(v27, 0, 1, v168);
  v57 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__common;
  swift_beginAccess();
  sub_22DDF0208(v27, v55 + v57, &qword_27DA37A40, &unk_22DEC7330);
  swift_endAccess();
  v58 = v174[3];
  v59 = v174[4];
  __swift_project_boxed_opaque_existential_1(v174, v58);
  v60 = v169;
  (*(v59 + 16))(v58, v59);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *&v53[v49];
  if ((v61 & 1) == 0)
  {
    type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
    swift_allocObject();
    v62 = sub_22DE45FE4(v62);
    *&v53[v49] = v62;
  }

  v63 = v172;
  sub_22DE17628(v60, v172, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_RequestMeta);
  (*(v170 + 56))(v63, 0, 1, v171);
  v64 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__meta;
  swift_beginAccess();
  sub_22DDF0208(v63, v62 + v64, &qword_27DA37A38, &unk_22DEC6570);
  swift_endAccess();
  *v56 = sub_22DE0501C(MEMORY[0x277D84F90]);
  v65 = v176;
  _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
  v66 = v65[6];
  *(v56 + v66) = 7;
  v67 = (v56 + v65[7]);
  *v67 = 0;
  v67[1] = 0;
  v68 = (v56 + v65[8]);
  *v68 = 0;
  v68[1] = 0;
  v69 = v183;
  v70 = v184;
  v71 = v185;
  if (v183)
  {
    if (v183 == 1)
    {
      goto LABEL_27;
    }

    *v56 = v69;
    if (!v70)
    {
LABEL_10:
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v72 = sub_22DEC4B44();
      __swift_project_value_buffer(v72, qword_281462270);
      v73 = sub_22DEC4B24();
      v74 = sub_22DEC4E54();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_22DDEC000, v73, v74, "No notificationId for checkIn request", v75, 2u);
        MEMORY[0x2318DBF00](v75, -1, -1);
      }

      if (v71)
      {
        goto LABEL_15;
      }

LABEL_22:
      if (qword_28145AE68 != -1)
      {
        swift_once();
      }

      v85 = sub_22DEC4B44();
      __swift_project_value_buffer(v85, qword_281462270);
      v77 = sub_22DEC4B24();
      v86 = sub_22DEC4E54();
      if (os_log_type_enabled(v77, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_22DDEC000, v77, v86, "No notificatioin context for checkIn request", v87, 2u);
        MEMORY[0x2318DBF00](v87, -1, -1);
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v78 = sub_22DEC4B44();
    __swift_project_value_buffer(v78, qword_281462270);
    v79 = sub_22DEC4B24();
    v80 = sub_22DEC4E54();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_22DDEC000, v79, v80, "No passthrough data for checkIn request", v81, 2u);
      v82 = v81;
      v56 = v178;
      MEMORY[0x2318DBF00](v82, -1, -1);
    }

    if (!v70)
    {
      goto LABEL_10;
    }
  }

  *v67 = *(&v69 + 1);
  v67[1] = v70;

  v83 = sub_22DEC4C04();
  v84 = sub_22DEC4C04();
  [v179 addValue:v83 forHTTPHeaderField:v84];

  if (!v71)
  {
    goto LABEL_22;
  }

LABEL_15:
  v76 = sub_22DEC4C04();
  v77 = sub_22DEC4C04();
  [v179 addValue:v76 forHTTPHeaderField:v77];

LABEL_26:
LABEL_27:
  v88 = v177;
  sub_22DE14554(v175, v177, v181);
  if (LOBYTE(v181[0]) == 7)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v89 = sub_22DEC4B44();
    __swift_project_value_buffer(v89, qword_281462270);

    v90 = sub_22DEC4B24();
    v91 = sub_22DEC4E44();

    v92 = os_log_type_enabled(v90, v91);
    v93 = v180;
    if (v92)
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v181[0] = v95;
      *v94 = 136315138;
      *(v94 + 4) = sub_22DDEDC0C(v175, v88, v181);
      _os_log_impl(&dword_22DDEC000, v90, v91, "No valid mapping for %s trigger, not checking in", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x2318DBF00](v95, -1, -1);
      MEMORY[0x2318DBF00](v94, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE17518(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v96 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v181[1] = 0;
    v181[2] = 0;
    v181[0] = v96;
    v182 = 1;
    v166(v181);

    sub_22DE175C8(v56, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v93, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
  }

  else
  {
    *(v56 + v66) = v181[0];
    v97 = v155;
    sub_22DE17560(v56, v155, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    v98 = v180;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *(v98 + v49);
    if ((v99 & 1) == 0)
    {
      type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest._StorageClass(0);
      swift_allocObject();
      v100 = sub_22DE45FE4(v100);
      *(v98 + v49) = v100;
    }

    v101 = v162;
    v102 = v97;
    v103 = v157;
    sub_22DE17628(v102, v157, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    (*(v156 + 56))(v103, 0, 1, v176);
    v104 = OBJC_IVAR____TtCV6NDOAPI37Com_Apple_Sse_Ocean_Ndo_Api_CIRequestP33_33BB1DF9CD7173A9C72AB4475FD42E8913_StorageClass__data;
    swift_beginAccess();
    sub_22DDF0208(v103, v100 + v104, &qword_27DA37BA8, &unk_22DEC7320);
    swift_endAccess();
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v105 = sub_22DEC4B44();
    v106 = __swift_project_value_buffer(v105, qword_281462270);
    v107 = sub_22DEC4B24();
    v108 = sub_22DEC4E54();
    v109 = os_log_type_enabled(v107, v108);
    v176 = v106;
    if (v109)
    {
      v110 = swift_slowAlloc();
      v111 = v98;
      v112 = swift_slowAlloc();
      v181[0] = v112;
      *v110 = 136315138;
      swift_beginAccess();
      sub_22DE17560(v111, v158, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      sub_22DEC48F4();
      sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v113 = sub_22DEC49F4();
      v115 = v114;
      (*(v164 + 8))(v159, v101);
      sub_22DE175C8(v158, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
      v116 = sub_22DDEDC0C(v113, v115, v181);

      *(v110 + 4) = v116;
      _os_log_impl(&dword_22DDEC000, v107, v108, "CheckIn request body: %s", v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x2318DBF00](v112, -1, -1);
      MEMORY[0x2318DBF00](v110, -1, -1);

      v88 = v177;
      v98 = v180;
    }

    else
    {
    }

    v117 = v179;
    v118 = sub_22DEC4B24();
    v119 = sub_22DEC4E54();

    v120 = os_log_type_enabled(v118, v119);
    v121 = v161;
    v179 = v117;
    if (v120)
    {
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v181[0] = v123;
      *v122 = 136315138;
      v124 = [v117 allHTTPHeaderFields];
      if (v124)
      {
        v125 = v124;
        sub_22DEC4BA4();
      }

      else
      {
        sub_22DE0501C(MEMORY[0x277D84F90]);
      }

      v126 = sub_22DEC4BB4();
      v128 = v127;

      v129 = sub_22DDEDC0C(v126, v128, v181);

      *(v122 + 4) = v129;
      _os_log_impl(&dword_22DDEC000, v118, v119, "CheckIn request headers: %s", v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x2318DBF00](v123, -1, -1);
      MEMORY[0x2318DBF00](v122, -1, -1);

      v88 = v177;
      v98 = v180;
    }

    else
    {
    }

    swift_beginAccess();
    v130 = v160;
    sub_22DE17560(v98, v160, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    sub_22DEC48F4();
    sub_22DE17518(&qword_28145CFD0, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v131 = sub_22DEC4A04();
    v132 = v178;
    v133 = v131;
    v135 = v134;
    (*(v164 + 8))(v121, v101);
    sub_22DE175C8(v130, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v136 = sub_22DEC4794();
    sub_22DDEEF50(v133, v135);
    v137 = v179;
    [v179 setHTTPBody_];

    v138 = v174[3];
    v139 = v174[4];
    __swift_project_boxed_opaque_existential_1(v174, v138);
    v140 = v132;
    LOBYTE(v132) = v150 & 1;
    (*(v139 + 8))(v137, v150 & 1, v138, v139);
    sub_22DE175C8(v140, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CheckInRequest);
    sub_22DE175C8(v98, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_CIRequest);
    v141 = *(v151 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 24);
    v142 = *(v151 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client + 32);
    __swift_project_boxed_opaque_existential_1((v151 + OBJC_IVAR____TtC6NDOAPI23NDORemoteCheckInHandler_client), v141);
    v143 = v152;
    sub_22DEC4674();
    v144 = swift_allocObject();
    swift_weakInit();
    v145 = swift_allocObject();
    *(v145 + 16) = v144;
    *(v145 + 24) = v132;
    v146 = v184;
    *(v145 + 32) = v183;
    *(v145 + 48) = v146;
    v147 = v175;
    *(v145 + 64) = v185;
    *(v145 + 72) = v147;
    *(v145 + 80) = v88;
    *(v145 + 88) = sub_22DE18E40;
    *(v145 + 96) = v173;
    v148 = *(v142 + 8);

    sub_22DDF0028(&v183, v181, &qword_27DA37BB0, &qword_22DEC7340);

    v148(v143, sub_22DE18EF8, v145, v141, v142);

    (*(v153 + 8))(v143, v154);
  }
}

uint64_t objectdestroy_4Tm()
{

  if (*(v0 + 32) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t dispatch thunk of AckHandler.ack(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22DE0D6CC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AckHandler.ack(data:urlString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_22DE0858C;

  return v13(a1, a2, a3, a4, a5);
}

void sub_22DE19164(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  MEMORY[0x28223BE20](v6);
  v8 = (&v14 - v7);
  v9 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE10CD8(v3, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v8;
    v12 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37AE8, &qword_22DEC7400);
    swift_willThrowTypedImpl();
    v15 = v12;
    if (sub_22DEC50C4())
    {
    }

    else
    {
      swift_allocError();
      *v13 = v12;
    }
  }

  else
  {
    sub_22DE19B38(v8, v11);
    LOBYTE(v15) = a1;
    Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse.apiUrl(for:)(&v15, a2);
    sub_22DE19B9C(v11);
  }
}

uint64_t DeviceListLoader.__allocating_init(configLoader:deviceListLoaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0;
  sub_22DDEDA18(a1, v6 + 16);
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  return v6;
}

uint64_t DeviceListLoader.init(configLoader:deviceListLoaderProvider:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 88) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  sub_22DDEDA18(a1, v3 + 16);
  *(v3 + 96) = a2;
  *(v3 + 104) = a3;
  return v3;
}

uint64_t sub_22DE193D0(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v6 + 16);

  v9(sub_22DE198DC, v8, v5, v6);
}

uint64_t sub_22DE194B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v29[-1] - v7);
  v9 = sub_22DEC4764();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_22DE19164(5, v12);
    (*(v14 + 96))(&v32, v12);
    swift_beginAccess();
    v22 = *(&v33 + 1);
    if (*(v14 + 80))
    {
      __swift_destroy_boxed_opaque_existential_1((v14 + 56));
      if (v22)
      {
LABEL_10:
        sub_22DDEDA18(&v32, v14 + 56);
        goto LABEL_13;
      }
    }

    else if (*(&v33 + 1))
    {
      goto LABEL_10;
    }

    v23 = v33;
    *(v14 + 56) = v32;
    *(v14 + 72) = v23;
    *(v14 + 88) = v34;
LABEL_13:
    swift_endAccess();
    if (*(v14 + 80))
    {
      sub_22DDEDAAC(v14 + 56, &v32);
      if (*(&v33 + 1))
      {
LABEL_15:
        sub_22DDEDAAC(&v32, v29);
        if (*(&v33 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v32);
        }

        v24 = v30;
        v25 = v31;
        __swift_project_boxed_opaque_existential_1(v29, v30);
        (*(v25 + 16))(a3, a4, v24, v25);

        (*(v10 + 8))(v12, v9);
        v26 = v29;
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }
    }

    else
    {
      v27 = *(v14 + 72);
      v32 = *(v14 + 56);
      v33 = v27;
      v34 = *(v14 + 88);
      if (*(&v27 + 1))
      {
        goto LABEL_15;
      }
    }

    (*(v10 + 8))(v12, v9);

    if (!*(&v33 + 1))
    {
      return result;
    }

    v26 = &v32;
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v15 = sub_22DEC4B44();
  __swift_project_value_buffer(v15, qword_281462270);
  v16 = sub_22DEC4B24();
  v17 = sub_22DEC4E44();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_22DDEC000, v16, v17, "Device list loader is deallocated. Dropping config results", v18, 2u);
    MEMORY[0x2318DBF00](v18, -1, -1);
  }

  type metadata accessor for NDOErrors(0);
  sub_22DDFE48C();
  v19 = swift_allocError();
  *v20 = 0xD000000000000010;
  v20[1] = 0x800000022DEC73A0;
  swift_storeEnumTagMultiPayload();
  *v8 = v19;
  swift_storeEnumTagMultiPayload();
  a3(v8);
  return sub_22DE19AD0(v8);
}

void *DeviceListLoader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return v0;
}

uint64_t DeviceListLoader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_22DE19970(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v5[5];
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 16);

  v10(sub_22DE19BF8, v9, v6, v7);
}

uint64_t sub_22DE19AD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BD0, &unk_22DEC73F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE19B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DE19B9C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DE19BFC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000007370;
  v3 = 0xD000000000000012;
  v4 = 0x614D6769666E6F63;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x446E496B63656863;
    }

    else
    {
      v6 = 0x614D6769666E6F63;
    }

    if (v5)
    {
      v7 = 0xEF64656C62617369;
    }

    else
    {
      v7 = 0xEA00000000007370;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0x800000022DED13D0;
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000017;
    }

    if (v5 == 3)
    {
      v7 = 0x800000022DED13F0;
    }

    else
    {
      v7 = 0x800000022DED1410;
    }
  }

  if (a2 <= 1u)
  {
    v3 = 0x446E496B63656863;
    v8 = 0xEF64656C62617369;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x800000022DED13D0;
    v4 = 0xD00000000000001ALL;
    v8 = 0x800000022DED1410;
    if (a2 == 3)
    {
      v8 = 0x800000022DED13F0;
    }

    else
    {
      v3 = 0xD000000000000017;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v4;
  }

  else
  {
    v10 = v3;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v8;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22DEC50E4();
  }

  return v12 & 1;
}

uint64_t sub_22DE19D80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736B6361;
  v3 = 0x2D676E69646E6570;
  v4 = a1;
  v5 = 0xE90000000000006CLL;
  v6 = 7761509;
  if (a1 == 5)
  {
    v6 = 0x72752D7473696C70;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  v7 = 0x800000022DED1380;
  if (a1 == 3)
  {
    v8 = 0xD000000000000012;
  }

  else
  {
    v8 = 0x2D676E69646E6570;
  }

  if (a1 != 3)
  {
    v7 = 0xEC000000736B6361;
  }

  if (a1 <= 4u)
  {
    v9 = v7;
  }

  else
  {
    v8 = v6;
    v9 = v5;
  }

  v10 = 0x800000022DED1310;
  v11 = 0xD000000000000014;
  v12 = 0x800000022DED1330;
  v13 = 0xD000000000000022;
  if (v4 != 1)
  {
    v13 = 0xD000000000000011;
    v12 = 0x800000022DED1360;
  }

  if (v4)
  {
    v11 = v13;
    v10 = v12;
  }

  if (v4 <= 2)
  {
    v14 = v11;
  }

  else
  {
    v14 = v8;
  }

  if (v4 <= 2)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x800000022DED1310;
      if (v14 != 0xD000000000000014)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (a2 == 1)
    {
      v2 = 0x800000022DED1330;
      if (v14 != 0xD000000000000022)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v2 = 0x800000022DED1360;
    v3 = 0xD000000000000011;
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE90000000000006CLL;
        if (v14 != 0x72752D7473696C70)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v14 != 7761509)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_38;
    }

    if (a2 == 3)
    {
      v2 = 0x800000022DED1380;
      if (v14 != 0xD000000000000012)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }
  }

  if (v14 != v3)
  {
LABEL_41:
    v16 = sub_22DEC50E4();
    goto LABEL_42;
  }

LABEL_38:
  if (v15 != v2)
  {
    goto LABEL_41;
  }

  v16 = 1;
LABEL_42:

  return v16 & 1;
}

uint64_t NSDictionary.Keys.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_22DEC5014();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t NSDictionary.Keys.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x614D6769666E6F63;
  v3 = 0xD00000000000001ALL;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x446E496B63656863;
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

uint64_t sub_22DE1A094()
{
  sub_22DEC5184();
  sub_22DEC4C94();

  return sub_22DEC51A4();
}

uint64_t sub_22DE1A198(uint64_t a1)
{
  sub_22DEC4C94();
}

uint64_t sub_22DE1A288(uint64_t a1)
{
  sub_22DEC5184();
  sub_22DEC4C94();

  return sub_22DEC51A4();
}

void sub_22DE1A394(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007370;
  v4 = 0x614D6769666E6F63;
  v5 = 0x800000022DED13D0;
  v6 = 0xD00000000000001ALL;
  v7 = 0xD000000000000012;
  v8 = 0x800000022DED13F0;
  if (v2 != 3)
  {
    v7 = 0xD000000000000017;
    v8 = 0x800000022DED1410;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x446E496B63656863;
    v3 = 0xEF64656C62617369;
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

uint64_t NSDictionary.checkInDisabled.getter()
{
  *&v6[0] = 0x446E496B63656863;
  *(&v6[0] + 1) = 0xEF64656C62617369;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_22DE0E24C(v6);
    return 0;
  }

  return result;
}

uint64_t NSDictionary.isAccCheckInDisabled.getter()
{
  *&v6[0] = 0xD000000000000012;
  *(&v6[0] + 1) = 0x800000022DED13F0;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_22DE0E24C(v6);
    return 0;
  }

  return result;
}

void NSDictionary.checkInRetryDelay.getter()
{
  *&v3 = 0xD00000000000001ALL;
  *(&v3 + 1) = 0x800000022DED13D0;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_22DE1A788();
    if (swift_dynamicCast())
    {
      [v2 doubleValue];
    }
  }

  else
  {
    sub_22DE0E24C(v5);
  }
}

unint64_t sub_22DE1A788()
{
  result = qword_27DA37BD8;
  if (!qword_27DA37BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA37BD8);
  }

  return result;
}

unint64_t NSDictionary.configMaps.getter()
{
  *&v4 = 0x614D6769666E6F63;
  *(&v4 + 1) = 0xEA00000000007370;
  v1 = [v0 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BE0, &qword_22DEC7408);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_22DE0E24C(v6);
  }

  return sub_22DE0501C(MEMORY[0x277D84F90]);
}

Swift::Bool __swiftcall NSDictionary.checkInTriggerDisabled(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  *&v11 = 0xD000000000000017;
  *(&v11 + 1) = 0x800000022DED1410;
  v5 = [v2 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v5)
  {
    sub_22DEC4EC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    v6 = sub_22DE0E24C(v13);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37BE8, &qword_22DEC7A80);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
LABEL_8:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v7 = v10[4];
LABEL_9:
  *&v13[0] = countAndFlagsBits;
  *(&v13[0] + 1) = object;
  MEMORY[0x28223BE20](v6);
  v10[2] = v13;
  v8 = sub_22DE1AA60(sub_22DE1AB64, v10, v7);

  return v8 & 1;
}

uint64_t sub_22DE1AA60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_22DE1AB0C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22DEC50E4() & 1;
  }
}

uint64_t sub_22DE1AB64(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22DEC50E4() & 1;
  }
}

unint64_t sub_22DE1ABC0()
{
  result = qword_27DA37BF0;
  if (!qword_27DA37BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA37BF0);
  }

  return result;
}

uint64_t _s4KeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4KeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t (*static NDOResponseMapper.Config.checkTTLAndDecode(keyValueReader:)(uint64_t a1))@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22DDEDAAC(a1, v3);
  v1 = swift_allocObject();
  sub_22DDEDA18(v3, v1 + 16);
  return sub_22DE1B040;
}

uint64_t sub_22DE1ADCC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_22DEC4824();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3[3];
  v13 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v12);
  LOBYTE(v19[0]) = 0;
  (*(v13 + 24))(v20, v19, v12, v13);
  if (!v20[3])
  {
    sub_22DDEF284(v20, &qword_27DA37988, &unk_22DEC6210);
LABEL_6:
    type metadata accessor for NDOErrors(0);
    sub_22DE1B950(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v17 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    *a4 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
    return swift_storeEnumTagMultiPayload();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v14 = *v19;
  sub_22DEC4814();
  sub_22DEC4804();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  if (v16 >= v14)
  {
    goto LABEL_6;
  }

  sub_22DE1B048(a1, a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  return swift_storeEnumTagMultiPayload();
}

void sub_22DE1B048(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22DEC48E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_22DEC48D4();
  sub_22DEC48C4();
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  (*(v9 + 16))(v12, v14, v8);
  sub_22DDEEEE8(a1, a2);
  sub_22DE1B950(&qword_28145C028, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse, &protocol conformance descriptor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse);
  sub_22DEC4A14();
  if (!v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22DEC6270;
    *(inited + 32) = swift_getKeyPath();
    *(inited + 40) = swift_getKeyPath();
    *(inited + 48) = swift_getKeyPath();
    v16 = sub_22DE00C40(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v16)
    {
      (*(v9 + 8))(v14, v8);
      return;
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE1B950(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22DE19B9C(a3);
  }

  (*(v9 + 8))(v14, v8);
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v17 = sub_22DEC4B44();
  __swift_project_value_buffer(v17, qword_281462270);
  v18 = v4;
  v19 = sub_22DEC4B24();
  v20 = sub_22DEC4E44();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v4;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_22DDEC000, v19, v20, "Config parsing failed with error: %@", v21, 0xCu);
    sub_22DDEF284(v22, &qword_27DA379D8, qword_22DEC6E70);
    MEMORY[0x2318DBF00](v22, -1, -1);
    MEMORY[0x2318DBF00](v21, -1, -1);
  }

  type metadata accessor for NDOErrors(0);
  sub_22DE1B950(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

uint64_t (*static NDOResponseMapper.Config.decodeAndSaveTTL(keyValueWriter:)(uint64_t a1))@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22DDEDAAC(a1, v3);
  v1 = swift_allocObject();
  sub_22DDEDA18(v3, v1 + 16);
  return sub_22DE1B628;
}

uint64_t sub_22DE1B524@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22DE1B048(a1, a2, v10);
  sub_22DE1B640(v10, a3);
  sub_22DE19B38(v10, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37B88, &qword_22DEC6F08);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_22DE1B640(uint64_t a1, void *a2)
{
  v3 = sub_22DEC4824();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_ConfigResponse(0);
  sub_22DEC47F4();
  sub_22DEC4814();
  v13 = sub_22DEC47E4();
  v14 = *(v4 + 8);
  v14(v10, v3);
  if (v13)
  {
    if (qword_28145AE68 != -1)
    {
      swift_once();
    }

    v15 = sub_22DEC4B44();
    __swift_project_value_buffer(v15, qword_281462270);
    v16 = sub_22DEC4B24();
    v17 = sub_22DEC4E44();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v25 = v4;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_22DDEC000, v16, v17, "Config validUntil is in the past, using default TTL", v18, 2u);
      v20 = v19;
      v4 = v25;
      MEMORY[0x2318DBF00](v20, -1, -1);
    }

    sub_22DEC4814();
    sub_22DEC47C4();
    v14(v7, v3);
    v14(v12, v3);
    (*(v4 + 32))(v12, v10, v3);
  }

  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  sub_22DEC4804();
  v27[3] = MEMORY[0x277D839F8];
  v27[0] = v23;
  v26 = 0;
  (*(v22 + 8))(v27, &v26, v21, v22);
  v14(v12, v3);
  return sub_22DDEF284(v27, &qword_27DA37988, &unk_22DEC6210);
}

uint64_t sub_22DE1B950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t NDOShowAlertActionHandler.__allocating_init(createNotification:waitForNotificationResponse:applicationWorkspace:keyValueStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  sub_22DDEDA18(a5, v12 + 48);
  sub_22DE002CC(a6, (v12 + 88));
  return v12;
}

uint64_t NDOShowAlertActionHandler.init(createNotification:waitForNotificationResponse:applicationWorkspace:keyValueStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6)
{
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  sub_22DDEDA18(a5, v6 + 48);
  sub_22DE002CC(a6, (v6 + 88));
  return v6;
}

void sub_22DE1BA60(uint64_t a1, uint64_t (*a2)(uint64_t a1), uint64_t a3)
{
  v194 = a2;
  v195 = a3;
  v201 = *MEMORY[0x277D85DE8];
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA37C00, &unk_22DEC7580);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v175 = &v164 - v8;
  v185 = v3;
  v184 = *(*(v5 + 80) - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v167 = v10;
  v168 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v183 = &v164 - v11;
  v178 = v12;
  v13 = sub_22DEC4EB4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v174 = &v164 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v188 = &v164 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37910, &qword_22DEC5BB0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v171 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v164 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C10, &unk_22DEC7590);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v173 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v177 = &v164 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v164 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v182 = &v164 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v180 = &v164 - v33;
  MEMORY[0x28223BE20](v32);
  v191 = &v164 - v34;
  v196 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData(0);
  v192 = *(v196 - 1);
  v35 = MEMORY[0x28223BE20](v196);
  v172 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v164 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v169 = &v164 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v164 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v164 - v46;
  MEMORY[0x28223BE20](v45);
  v190 = &v164 - v48;
  v198 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData(0);
  v165 = *(v198 - 1);
  v49 = MEMORY[0x28223BE20](v198);
  v193 = &v164 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = v50;
  MEMORY[0x28223BE20](v49);
  v52 = &v164 - v51;
  if (qword_28145AE68 != -1)
  {
    swift_once();
  }

  v53 = sub_22DEC4B44();
  v54 = __swift_project_value_buffer(v53, qword_281462270);
  v197 = a1;
  sub_22DE1EBD0(a1, v52, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  v189 = v54;
  v55 = sub_22DEC4B24();
  v56 = sub_22DEC4E54();
  v57 = os_log_type_enabled(v55, v56);
  v186 = v14;
  v187 = v13;
  v176 = v39;
  v181 = v44;
  v179 = v47;
  if (v57)
  {
    v58 = v22;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v200[0] = v60;
    *v59 = 136315138;
    sub_22DE1EBD0(v52, v193, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    v61 = sub_22DEC4C74();
    v63 = v62;
    sub_22DE1E6CC(v52, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    v64 = sub_22DDEDC0C(v61, v63, v200);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_22DDEC000, v55, v56, "Handling show alert action %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x2318DBF00](v60, -1, -1);
    v65 = v59;
    v22 = v58;
    MEMORY[0x2318DBF00](v65, -1, -1);
  }

  else
  {

    sub_22DE1E6CC(v52, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA379A0, &qword_22DEC77D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DEC7560;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  v67 = v197;
  v68 = sub_22DE00FD0(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v69 = v196;
  if ((v68 & 1) == 0)
  {
    goto LABEL_30;
  }

  v70 = v198[8];
  v71 = v191;
  sub_22DDF0028(v67 + v70, v191, &qword_27DA37C10, &unk_22DEC7590);
  v72 = *(v192 + 48);
  if (v72(v71, 1, v69) == 1)
  {
    v73 = v190;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v74 = (v73 + *(v69 + 5));
    *v74 = 0;
    v74[1] = 0;
    v75 = (v73 + *(v69 + 6));
    *v75 = 0;
    v75[1] = 0;
    if (v72(v71, 1, v69) != 1)
    {
      sub_22DDEF284(v71, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    v73 = v190;
    sub_22DE1E8D8(v71, v190, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  v76 = *(v73 + *(v69 + 6) + 8);
  sub_22DE1E6CC(v73, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v76)
  {
    v77 = v180;
    sub_22DDF0028(v67 + v70, v180, &qword_27DA37C10, &unk_22DEC7590);
    if (v72(v77, 1, v69) == 1)
    {
      v78 = v179;
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v79 = (v78 + *(v69 + 5));
      *v79 = 0;
      v79[1] = 0;
      v80 = (v78 + *(v69 + 6));
      *v80 = 0;
      v80[1] = 0;
      v81 = v78;
      if (v72(v77, 1, v69) != 1)
      {
        sub_22DDEF284(v77, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      v81 = v179;
      sub_22DE1E8D8(v77, v179, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    sub_22DE1E6CC(v81, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    sub_22DEC4744();

    v82 = sub_22DEC4764();
    v83 = (*(*(v82 - 8) + 48))(v22, 1, v82);
    sub_22DDEF284(v22, &qword_27DA37910, &qword_22DEC5BB0);
    if (v83 == 1)
    {
      goto LABEL_27;
    }
  }

  v84 = v198[9];
  v85 = v182;
  sub_22DDF0028(v67 + v84, v182, &qword_27DA37C10, &unk_22DEC7590);
  if (v72(v85, 1, v69) == 1)
  {
    v86 = v181;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v87 = (v86 + *(v69 + 5));
    *v87 = 0;
    v87[1] = 0;
    v88 = (v86 + *(v69 + 6));
    *v88 = 0;
    v88[1] = 0;
    if (v72(v85, 1, v69) != 1)
    {
      sub_22DDEF284(v85, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    v86 = v181;
    sub_22DE1E8D8(v85, v181, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  v89 = *(v86 + *(v69 + 6) + 8);
  sub_22DE1E6CC(v86, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v89)
  {
    v90 = v170;
    sub_22DDF0028(v67 + v84, v170, &qword_27DA37C10, &unk_22DEC7590);
    if (v72(v90, 1, v69) == 1)
    {
      v91 = v169;
      _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
      v92 = (v91 + *(v69 + 5));
      *v92 = 0;
      v92[1] = 0;
      v93 = (v91 + *(v69 + 6));
      *v93 = 0;
      v93[1] = 0;
      v94 = v91;
      if (v72(v90, 1, v69) != 1)
      {
        sub_22DDEF284(v90, &qword_27DA37C10, &unk_22DEC7590);
      }
    }

    else
    {
      v94 = v169;
      sub_22DE1E8D8(v90, v169, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    }

    sub_22DE1E6CC(v94, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    v95 = v171;
    sub_22DEC4744();

    v96 = sub_22DEC4764();
    v97 = (*(*(v96 - 8) + 48))(v95, 1, v96);
    sub_22DDEF284(v95, &qword_27DA37910, &qword_22DEC5BB0);
    if (v97 == 1)
    {
LABEL_27:
      v98 = sub_22DEC4B24();
      v99 = sub_22DEC4E44();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_22DDEC000, v98, v99, "Not showing alert due to invalid action url", v100, 2u);
        MEMORY[0x2318DBF00](v100, -1, -1);
      }

LABEL_30:
      type metadata accessor for NDOErrors(0);
      sub_22DE1EA18(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
      v101 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      (v194)(v101, 1);

      return;
    }
  }

  v199 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C18, &qword_22DEC7688);
  v102 = swift_initStackObject();
  *(v102 + 16) = xmmword_22DEC7570;
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return;
  }

  *(v102 + 32) = sub_22DEC4C34();
  *(v102 + 40) = v103;
  v104 = (v67 + v198[6]);
  v105 = v104[1];
  v106 = v177;
  if (v105)
  {
    v107 = *v104;
    v108 = v105;
  }

  else
  {
    v107 = 0;
    v108 = 0xE000000000000000;
  }

  *(v102 + 48) = v107;
  *(v102 + 56) = v108;
  if (!*MEMORY[0x277CBF198])
  {
    goto LABEL_67;
  }

  *(v102 + 64) = sub_22DEC4C34();
  *(v102 + 72) = v109;
  v110 = (v67 + v198[7]);
  v111 = v110[1];
  if (v111)
  {
    v112 = *v110;
    v113 = v111;
  }

  else
  {
    v112 = 0;
    v113 = 0xE000000000000000;
  }

  *(v102 + 80) = v112;
  *(v102 + 88) = v113;
  if (!*MEMORY[0x277CBF1E8])
  {
    goto LABEL_68;
  }

  *(v102 + 96) = sub_22DEC4C34();
  *(v102 + 104) = v114;
  sub_22DDF0028(v197 + v70, v106, &qword_27DA37C10, &unk_22DEC7590);
  if (v72(v106, 1, v69) == 1)
  {

    v115 = v176;
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v116 = (v115 + *(v69 + 5));
    *v116 = 0;
    v116[1] = 0;
    v117 = (v115 + *(v69 + 6));
    *v117 = 0;
    v117[1] = 0;
    v118 = v115;
    if (v72(v106, 1, v69) != 1)
    {
      sub_22DDEF284(v106, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    v118 = v176;
    sub_22DE1E8D8(v106, v176, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  }

  v119 = (v118 + *(v69 + 5));
  v121 = *v119;
  v120 = v119[1];

  sub_22DE1E6CC(v118, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v120)
  {
    v122 = v121;
  }

  else
  {
    v122 = 0;
  }

  v123 = 0xE000000000000000;
  if (v120)
  {
    v123 = v120;
  }

  *(v102 + 112) = v122;
  *(v102 + 120) = v123;
  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_69;
  }

  *(v102 + 128) = sub_22DEC4C34();
  *(v102 + 136) = v124;
  v125 = v173;
  sub_22DDF0028(v197 + v84, v173, &qword_27DA37C10, &unk_22DEC7590);
  v126 = v72(v125, 1, v69);
  v127 = v172;
  if (v126 == 1)
  {
    _s6NDOAPI44Com_Apple_Sse_Ocean_Ndo_Api_DWSupportAppDataVACycfC_0();
    v128 = (v127 + *(v69 + 5));
    *v128 = 0;
    v128[1] = 0;
    v129 = (v127 + *(v69 + 6));
    *v129 = 0;
    v129[1] = 0;
    v130 = v72(v125, 1, v69);
    v131 = v187;
    if (v130 != 1)
    {
      sub_22DDEF284(v125, &qword_27DA37C10, &unk_22DEC7590);
    }
  }

  else
  {
    sub_22DE1E8D8(v125, v172, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
    v131 = v187;
  }

  v132 = (v127 + *(v69 + 5));
  v134 = *v132;
  v133 = v132[1];

  sub_22DE1E6CC(v127, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertButtonData);
  if (v133)
  {
    v135 = v134;
  }

  else
  {
    v135 = 0;
  }

  v136 = 0xE000000000000000;
  if (v133)
  {
    v136 = v133;
  }

  *(v102 + 144) = v135;
  *(v102 + 152) = v136;
  sub_22DE0501C(v102);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA37C20, &qword_22DEC7690);
  swift_arrayDestroy();
  v137 = v185[2];
  v138 = *MEMORY[0x277CBECE8];
  v139 = sub_22DEC4B84();

  v140 = v188;
  v137(v138, 0, &v199, v139, 0.0);

  v141 = v186;
  v142 = v174;
  (*(v186 + 16))(v174, v140, v131);
  v143 = v184;
  v144 = v178;
  if ((*(v184 + 48))(v142, 1, v178) == 1)
  {
    v145 = v142;
    v146 = *(v141 + 8);
    v146(v145, v131);
    v147 = sub_22DEC4B24();
    v148 = sub_22DEC4E44();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 67109120;
      swift_beginAccess();
      *(v149 + 4) = v199;
      _os_log_impl(&dword_22DDEC000, v147, v148, "Failed to create CFUserNotification: %d", v149, 8u);
      MEMORY[0x2318DBF00](v149, -1, -1);
    }

    type metadata accessor for NDOErrors(0);
    sub_22DE1EA18(&qword_28145AE60, type metadata accessor for NDOErrors, &protocol conformance descriptor for NDOErrors);
    v150 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    (v194)(v150, 1);

    v146(v188, v131);
  }

  else
  {
    v151 = *(v143 + 32);
    v198 = (v143 + 32);
    v196 = v151;
    (v151)(v183, v142, v144);
    v152 = sub_22DEC4B24();
    v153 = sub_22DEC4E54();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_22DDEC000, v152, v153, "Alert shown successfully", v154, 2u);
      v144 = v178;
      MEMORY[0x2318DBF00](v154, -1, -1);
    }

    (v194)(0, 0);
    v195 = os_transaction_create();
    v155 = sub_22DEC4DB4();
    (*(*(v155 - 8) + 56))(v175, 1, 1, v155);
    v156 = v184;
    v157 = v168;
    (*(v184 + 16))(v168, v183, v144);
    v194 = type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData;
    v158 = v193;
    sub_22DE1EBD0(v197, v193, type metadata accessor for Com_Apple_Sse_Ocean_Ndo_Api_AlertData);
    v159 = (*(v156 + 80) + 48) & ~*(v156 + 80);
    v160 = (v167 + *(v165 + 80) + v159) & ~*(v165 + 80);
    v161 = (v166 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
    v162 = swift_allocObject();
    v162[2] = 0;
    v162[3] = 0;
    v163 = v185;
    v162[4] = v144;
    v162[5] = v163;
    (v196)(v162 + v159, v157, v144);
    sub_22DE1E8D8(v158, v162 + v160, v194);
    *(v162 + v161) = v195;

    swift_unknownObjectRetain();
    sub_22DE1D5F0(0, 0, v175, &unk_22DEC76A8, v162);
    swift_unknownObjectRelease();

    (*(v156 + 8))(v183, v144);
    (*(v186 + 8))(v188, v187);
  }
}
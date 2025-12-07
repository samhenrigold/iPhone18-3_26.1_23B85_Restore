unint64_t sub_10015978C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1000402A0(__src);
  memcpy(__dst, __src, sizeof(__dst));
  if (!*(a1 + 16) || (v7 = sub_10011108C(6580578), (v8 & 1) == 0))
  {

LABEL_26:

    memcpy(v71, __dst, 0x139uLL);
    sub_10004030C(v71);
    sub_100159FA0(v77);
    return memcpy(a4, v77, 0x1C1uLL);
  }

  v9 = (*(a1 + 56) + 16 * v7);
  v11 = *v9;
  v10 = v9[1];

  v12 = sub_1001F10F8(0x6D614E726566666FLL, 0xEA00000000007365, a1);
  if (!v13)
  {

    goto LABEL_26;
  }

  v77[0] = v12;
  v77[1] = v13;
  v71[0] = 44;
  v71[1] = 0xE100000000000000;
  sub_10001C790();
  v14 = sub_1001F75B8();

  v15 = sub_1001F10F8(1936881250, 0xE400000000000000, a1);
  v63 = v16;
  v64 = v15;
  result = sub_1001F10F8(0x7256747845707061, 0xEB00000000644973, a1);
  v66 = a4;
  v65 = v11;
  if (!v18)
  {
LABEL_83:
    v43 = 0;
    v42 = 1;
LABEL_84:
    v74 = v42 & 1;
    sub_1001F10F8(0x496D616441707061, 0xE900000000000064, a1);
    v62 = v43;
    v44 = v14;
    if (v45)
    {
      sub_1001EC1A8();
      v48 = v47;
    }

    else
    {
      v48 = 0;
      v46 = 1;
    }

    v76 = v46 & 1;
    v49 = sub_1000DBE30();
    v50 = sub_1001F10F8(v49, 0xE900000000000065, a1);
    v60 = v51;
    v52 = v51;
    v59 = sub_1001F10F8(1682531955, 0xE400000000000000, a1);
    v54 = v53;
    v61 = v53;

    sub_1000E32F8(a3, v67);
    debugOnly(_:)();
    memcpy(v68, __dst, 0x139uLL);
    sub_10004030C(v68);
    memcpy(__dst, v67, sizeof(__dst));
    v69[0] = v65;
    v69[1] = v10;
    v69[2] = v50;
    v69[3] = v52;
    v69[4] = v59;
    v69[5] = v54;
    v69[6] = v44;
    v69[7] = v64;
    v69[8] = v63;
    v69[9] = v48;
    v55 = v76;
    LOBYTE(v69[10]) = v76;
    *(&v69[10] + 1) = *v75;
    HIDWORD(v69[10]) = *&v75[3];
    v69[11] = v62;
    v56 = v74;
    LOBYTE(v69[12]) = v74;
    *(&v69[12] + 1) = *v73;
    HIDWORD(v69[12]) = *&v73[3];
    v69[13] = 0;
    v69[14] = 0;
    v69[15] = &_swiftEmptySetSingleton;
    v69[16] = 0;
    memcpy(&v69[17], v67, 0x139uLL);
    memcpy(v70, v69, sizeof(v70));
    debugOnly(_:)();
    v71[0] = v65;
    v71[1] = v10;
    v71[2] = v50;
    v71[3] = v60;
    v71[4] = v59;
    v71[5] = v61;
    v71[6] = v44;
    v71[7] = v64;
    v71[8] = v63;
    v71[9] = v48;
    LOBYTE(v71[10]) = v55;
    *(&v71[10] + 1) = *v75;
    HIDWORD(v71[10]) = *&v75[3];
    v71[11] = v62;
    LOBYTE(v71[12]) = v56;
    HIDWORD(v71[12]) = *&v73[3];
    *(&v71[12] + 1) = *v73;
    v71[13] = 0;
    v71[14] = 0;
    v71[15] = &_swiftEmptySetSingleton;
    v71[16] = 0;
    memcpy(&v71[17], __dst, 0x139uLL);
    sub_100041BB4(v69, v77);
    sub_100159FA8(v71);
    memcpy(v77, v70, 0x1C1uLL);
    a4 = v66;
    return memcpy(a4, v77, 0x1C1uLL);
  }

  v19 = HIBYTE(v18) & 0xF;
  v20 = result & 0xFFFFFFFFFFFFLL;
  if ((v18 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v21 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    goto LABEL_83;
  }

  if ((v18 & 0x1000000000000000) != 0)
  {
    v23 = a3;
    v24 = sub_1001ED558(result, v18, 10);
    v42 = v57;
    goto LABEL_78;
  }

  if ((v18 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v18 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1001F7858();
      v20 = v58;
    }

    v22 = *result;
    if (v22 == 43)
    {
      if (v20 >= 1)
      {
        v23 = a3;
        if (v20 != 1)
        {
          v24 = 0;
          if (result)
          {
            while (1)
            {
              sub_100027240();
              if (!v26 & v25)
              {
                goto LABEL_76;
              }

              sub_10015A244();
              if (!v26)
              {
                goto LABEL_76;
              }

              v24 = v32 + v31;
              if (__OFADD__(v32, v31))
              {
                goto LABEL_76;
              }

              sub_10002727C();
              if (v26)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_92;
    }

    if (v22 != 45)
    {
      v23 = a3;
      if (v20)
      {
        v24 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_76;
            }

            v36 = 10 * v24;
            if ((v24 * 10) >> 64 != (10 * v24) >> 63)
            {
              goto LABEL_76;
            }

            v24 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_76;
            }

            ++result;
            if (!--v20)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_76:
      v24 = 0;
      LOBYTE(v20) = 1;
      goto LABEL_77;
    }

    if (v20 >= 1)
    {
      v23 = a3;
      if (v20 != 1)
      {
        v24 = 0;
        if (result)
        {
          while (1)
          {
            sub_100027240();
            if (!v26 & v25)
            {
              goto LABEL_76;
            }

            sub_10015A244();
            if (!v26)
            {
              goto LABEL_76;
            }

            v24 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              goto LABEL_76;
            }

            sub_10002727C();
            if (v26)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_75:
        LOBYTE(v20) = 0;
LABEL_77:
        LOBYTE(v71[0]) = v20;
        v42 = v20;
LABEL_78:

        if (v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = v24;
        }

        a3 = v23;
        goto LABEL_84;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v77[0] = result;
  v77[1] = v18 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      v23 = a3;
      if (v19)
      {
        v37 = v77;
        while (*v37 - 48 <= 9)
        {
          sub_10015A244();
          if (!v26)
          {
            break;
          }

          v24 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            break;
          }

          v37 = (v38 + 1);
          if (v39 == 1)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_76;
    }

    if (v19)
    {
      v23 = a3;
      if (v19 != 1)
      {
        sub_10015A2B4();
        while (1)
        {
          sub_100027240();
          if (!v26 & v25)
          {
            break;
          }

          sub_10015A244();
          if (!v26)
          {
            break;
          }

          v24 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          sub_10002727C();
          if (v26)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_91;
  }

  if (v19)
  {
    v23 = a3;
    if (v19 != 1)
    {
      sub_10015A2B4();
      while (1)
      {
        sub_100027240();
        if (!v26 & v25)
        {
          break;
        }

        sub_10015A244();
        if (!v26)
        {
          break;
        }

        v24 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        sub_10002727C();
        if (v26)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_93:
  __break(1u);
  return result;
}

unint64_t sub_100159E04(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C7C0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100159E50(char a1)
{
  result = 0x6F43646574736F68;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x66664F636F486461;
      break;
    case 3:
      result = 0x4F6B6361626E6977;
      break;
    case 4:
      result = sub_1000DBE30();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100159F2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100159E04(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100159F5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100159E50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchSoftwareAddOnsRequest.Extension(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x10015A0A4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10015A0E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 449))
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

uint64_t sub_10015A124(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 448) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 449) = 1;
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

    *(result + 449) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10015A1F0()
{
  result = qword_1002B7C30;
  if (!qword_1002B7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7C30);
  }

  return result;
}

unint64_t sub_10015A288(unint64_t a1, unint64_t a2)
{
  STACK[0x9A0] = a1;
  STACK[0x9A8] = a2;
  STACK[0x688] = 44;
  STACK[0x690] = 0xE100000000000000;

  return sub_10001C790();
}

uint64_t sub_10015A2F0()
{

  v2 = sub_1000E087C(v1);

  if (v2)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = *(v0 + 40);
  }

  return v3;
}

uint64_t sub_10015A368(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x617A696C61636F6CLL && a2 == 0xED0000736E6F6974;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1701667182 && a2 == 0xE400000000000000;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974)
      {

        return 3;
      }

      else
      {
        v9 = sub_1001F7EA8();

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

uint64_t sub_10015A4C8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x617A696C61636F6CLL;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x7069726373627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015A558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10015A368(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015A580(uint64_t a1)
{
  v2 = sub_10015ACE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10015A5BC(uint64_t a1)
{
  v2 = sub_10015ACE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015A5F8()
{

  return v0;
}

uint64_t sub_10015A630()
{
  sub_10015A5F8();

  return swift_deallocClassInstance();
}

uint64_t sub_10015A688(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B7DB8, &qword_100211178);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_10015ACE0();
  sub_1001F8198();
  LOBYTE(v15) = 0;
  sub_1001F7D88();
  if (!v2)
  {
    v15 = *(v3 + 32);
    HIBYTE(v14) = 1;
    sub_1000183C4(&qword_1002B7D88, &qword_10021B980);
    v11 = sub_10015AD34(&qword_1002B7DC0, &qword_1002B7DC8, &unk_1002182AC);
    sub_10015B0D0(v11);
    LOBYTE(v15) = 2;

    sub_1001F7D88();

    v15 = *(v3 + 56);
    HIBYTE(v14) = 3;
    sub_1000183C4(&qword_1002B7DA0, &qword_100211170);
    v13 = sub_10015ADC0(&qword_1002B7DD0, &qword_1002B7DD8, &unk_10021B8FC);
    sub_10015B0D0(v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_10015A900(void *a1)
{
  v2 = swift_allocObject();
  sub_10015A950(a1);
  return v2;
}

void *sub_10015A950(void *a1)
{
  sub_1000183C4(&qword_1002B7D78, &unk_100211160);
  sub_10001A278();
  __chkstk_darwin(v4);
  sub_10001AE68(a1, a1[3]);
  sub_10015ACE0();
  sub_1001F8178();
  if (v2)
  {
    type metadata accessor for OctaneSubscriptionGroup();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v10) = 0;
    v1[2] = sub_1001F7C78();
    v1[3] = v5;
    sub_1000183C4(&qword_1002B7D88, &qword_10021B980);
    sub_10015AD34(&qword_1002B7D90, &qword_1002B7D98, &unk_1002182D4);
    sub_10015B0A0();
    v1[4] = v10;
    LOBYTE(v10) = 2;
    v1[5] = sub_1001F7C78();
    v1[6] = v6;
    sub_1000183C4(&qword_1002B7DA0, &qword_100211170);
    sub_10015ADC0(&qword_1002B7DA8, &qword_1002B7DB0, &unk_10021B924);
    sub_10015B0A0();
    v8 = sub_1000263B8();
    v9(v8);
    v1[7] = v10;
  }

  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_10015AC3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10015A900(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10015AC8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1001F7EA8();
  }
}

unint64_t sub_10015ACE0()
{
  result = qword_1002B7D80;
  if (!qword_1002B7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7D80);
  }

  return result;
}

uint64_t sub_10015AD34(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B7D88, &qword_10021B980);
    sub_10015AE4C(a2, type metadata accessor for OctaneLocalization, a3);
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10015ADC0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B7DA0, &qword_100211170);
    sub_10015AE4C(a2, type metadata accessor for OctaneSubscription, a3);
    result = sub_1000EFA20();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10015AE4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for OctaneSubscriptionGroup.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10015AF60);
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

unint64_t sub_10015AF9C()
{
  result = qword_1002B7DE0;
  if (!qword_1002B7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DE0);
  }

  return result;
}

unint64_t sub_10015AFF4()
{
  result = qword_1002B7DE8;
  if (!qword_1002B7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DE8);
  }

  return result;
}

unint64_t sub_10015B04C()
{
  result = qword_1002B7DF0;
  if (!qword_1002B7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DF0);
  }

  return result;
}

uint64_t sub_10015B0A0()
{

  return sub_1001F7CB8();
}

uint64_t sub_10015B0D0(uint64_t a1)
{

  return sub_1001F7DC8();
}

uint64_t EventLoop.makePromise<A>(of:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  EventLoopPromise.init(eventLoop:file:line:)(v9, a8, a2, a3, a4, a5, a7);
  sub_1000A3FB8();
  swift_unknownObjectRetain();
  return v8;
}

BOOL sub_10015B140()
{
  result = sub_1000B3348();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t EventLoop.preconditionInEventLoop(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10015F05C(a1, a2, a3, a4, a5);
  result = v6(v5);
  if ((result & 1) == 0)
  {
    __break(1u);
  }

  return result;
}

void EventLoop.makeSucceededFuture<A>(_:file:line:)()
{
  sub_100037C08();
  v1 = v0;
  sub_10002DFFC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100023510();
  v12 = v11 - v10;
  if (v13 == &type metadata for ()[1])
  {
    (*(v9 + 72))(v8, v9);
    type metadata accessor for EventLoopFuture(0, &type metadata for ()[1], v15, v16);
    sub_100037B00();

    swift_dynamicCastClassUnconditional();
  }

  else
  {
    v14 = v5;
    type metadata accessor for EventLoopFuture(0, v1, v6, v7);
    (*(v3 + 16))(v12, v14, v1);
    EventLoopFuture.__allocating_init(eventLoop:value:file:line:)();
    swift_unknownObjectRetain();
    sub_100037B00();
  }
}

uint64_t sub_10015B3BC()
{
  sub_10015DE7C(v1);
  v2 = sub_1000A3FB8();
  sub_10015EDF0(v2);
  return v0;
}

uint64_t sub_10015B3EC(uint64_t a1, unint64_t a2)
{
  sub_10015E27C(a1, a2);
  v3 = v2;

  return v3;
}

void EventLoopGroup.shutdownGracefully(_:)()
{
  sub_100037C08();
  sub_10015F090();
  v4 = sub_1001F6748();
  sub_10002DFFC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100023510();
  v10 = v9 - v8;
  sub_10004B17C();
  (*(v6 + 104))(v10, enum case for DispatchQoS.QoSClass.default(_:), v4);
  v11 = sub_1001F7358();
  (*(v6 + 8))(v10, v4);
  (*(v0 + 16))(v11, v3, v2, v1, v0);

  sub_100037B00();
}

uint64_t Scheduled.init(promise:cancellationTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10004794C();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  EventLoopFuture.whenFailure(_:)(sub_10015C0D0, v6);

  return a1;
}

unint64_t static NIODeadline.now()()
{
  v0 = sub_1001F67D8();
  sub_10002DFFC();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_100023510();
  v6 = v5 - v4;
  sub_1001F67C8();
  v7 = sub_1001F67B8();
  (*(v2 + 8))(v6, v0);
  if (v7 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

uint64_t static NIODeadline.+ infix(_:_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (__OFADD__(result, a2))
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return (result + a2) & ~((result + a2) >> 63);
  }

  return result;
}

void EventLoop.submit<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  EmbeddedChannel.WrongTypeError.actual.getter(a3, a4);
  sub_10015F084();
  v15 = EventLoop.makePromise<A>(of:file:line:)(v10, v11, v12, v13, 559, v14, a4, a5);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = a1;
  v16[7] = a2;
  v17 = *(a5 + 24);

  v17(sub_10015D5CC, v16, a3, a5);

  sub_100037A50();
}

BOOL sub_10015B7AC()
{
  result = sub_1000B3348();
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t EventLoop.preconditionNotInEventLoop(file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10015F05C(a1, a2, a3, a4, a5);
  result = v6(v5);
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10015B8B4(uint64_t a1)
{
  sub_1000183C4(&qword_1002ADDB8, &qword_100200B40);
  sub_100047958();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001FE9E0;
  *(v3 + 32) = v1;
  *(v3 + 40) = a1;

  return v3;
}

uint64_t EventLoop.makeIterator()(uint64_t a1, uint64_t a2)
{
  sub_1000183C4(&qword_1002ADDB8, &qword_100200B40);
  sub_100047958();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001FE9E0;
  *(v4 + 32) = v2;
  *(v4 + 40) = a2;
  swift_unknownObjectRetain();
  return v4;
}

void EventLoop.makeCompletedFuture<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100037C08();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_10002DFFC();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_100023510();
  v31 = v30 - v29;
  sub_100019BC4(&qword_1002ACE88, &unk_1001FF100);
  v32 = sub_1001F8158();
  sub_10002DFFC();
  v34 = __chkstk_darwin(v33);
  v36 = &a9 - v35;
  (*(v37 + 16))(&a9 - v35, v25, v32, v34);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10015F084();
    EventLoop.makeFailedFuture<A>(_:file:line:)(v38);
  }

  else
  {
    (*(v27 + 32))(v31, v36, v23);
    sub_10015F084();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    (*(v27 + 8))(v31, v23);
  }

  sub_100037B00();
}

uint64_t static TimeAmount.seconds(_:)(uint64_t a1)
{
  result = 1000000000 * a1;
  if ((a1 * 1000000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Scheduled.cancel()()
{
  v2 = v1;
  v3 = v0;
  sub_10002D864();
  v4 = swift_allocError();
  *v5 = 1;
  EventLoopPromise.fail(_:)(v4, v3, v2);
}

uint64_t static NIODeadline.- infix(_:_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0)
  {
    result -= a2;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EventLoopGroup.syncShutdownGracefully()()
{
  sub_1001F6738();
  sub_100023520();
  __chkstk_darwin(v0);
  sub_100023510();
  sub_100158C20();
  v1();
  type metadata accessor for Lock();
  swift_allocObject();
  v2 = Lock.init()();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  aBlock[4] = debugOnly(_:);
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000172C0;
  aBlock[3] = &unk_10028EFB0;
  v4 = _Block_copy(aBlock);
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100028258(v4, v5, v6);
  sub_1000183C4(&qword_1002AC880, &qword_1001FE6D0);
  sub_1000282B0();
  sub_1001F7708();
  sub_1001F6818();
  swift_allocObject();
  v7 = sub_1001F67F8();
  sub_1000A41C8();
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v7;

  EventLoopGroup.shutdownGracefully(_:)();

  sub_1001F67E8();
  Lock.lock()();
  swift_beginAccess();
  if (*(v3 + 16))
  {
    swift_willThrow();
    swift_errorRetain();
  }

  Lock.unlock()();
}

BOOL static NIODeadline.< infix(_:_:)(_BOOL8 result, unint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return result < a2;
  }

  __break(1u);
  return result;
}

void EventLoop.flatSubmit<A>(_:)()
{
  sub_100037C08();
  v5 = v4;
  sub_10015F090();
  sub_1000A3FC4();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v0;
  v6[4] = v5;
  v6[5] = v3;
  v6[6] = v2;
  v7 = *(v5 + 32);
  v10 = type metadata accessor for EventLoopFuture(0, v0, v8, v9);

  v7(sub_10015DDC0, v6, v10, v1, v5);

  sub_1000A41C8();
  v11 = swift_allocObject();
  v11[2] = v1;
  v11[3] = v0;
  v11[4] = v5;
  sub_100158C20();
  EventLoopFuture.flatMap<A>(file:line:_:)(v12, v13, v14, 582, v15, v11, v0);
  sub_1000A3FB8();

  sub_100037B00();
}

uint64_t sub_10015C020(uint64_t a1, uint64_t (*a2)(void))
{
  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  result = swift_dynamicCast();
  if ((result & 1) != 0 && v4 == 1)
  {
    return a2();
  }

  return result;
}

uint64_t sub_10015C09C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015C0D8()
{
  sub_10015F018();
  sub_100070228();
  if (v3())
  {
    sub_100037A50();

    return sub_10015C1A4(v4);
  }

  else
  {
    sub_10004794C();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    v8 = *(v0 + 24);

    v9 = sub_10015F03C();
    v8(v9);
    sub_100037A50();
  }
}

uint64_t sub_10015C1A4(uint64_t result)
{
  v2 = v1;
  v3 = v1[7];
  if (v3)
  {
    v4 = result;
    ObjectType = swift_getObjectType();
    v6 = v2[4];
    v7 = v2[8];
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v7;
    v8[4] = v2;
    v9 = *(v6 + 48);
    sub_10003742C(v3, v7);
    sub_10003742C(v3, v7);

    v10 = sub_1000183C4(&qword_1002ADC18, &qword_100200960);
    v11 = v9(v4, sub_10015ED34, v8, v10, ObjectType, v6);

    v2[6] = v11;

    sub_10015C2F0();

    return sub_100037408(v3, v7);
  }

  return result;
}

uint64_t sub_10015C2F0()
{
  if (*(v0 + 48))
  {
    swift_retain_n();
    swift_retain_n();
    sub_100121F5C();

    swift_retain_n();
    swift_retain_n();
    sub_100122078();
  }

  return result;
}

uint64_t RepeatedTask.cancel(promise:)()
{
  sub_10015F018();
  sub_100070228();
  if (v3())
  {
    sub_100037A50();

    return sub_10015C488(v4);
  }

  else
  {
    sub_10004794C();
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    v8 = *(v0 + 24);

    v9 = sub_10015F03C();
    v8(v9);
    sub_100037A50();
  }
}

uint64_t sub_10015C488(uint64_t a1)
{
  v3 = v1[4];
  ObjectType = swift_getObjectType();
  v5 = v1[6];
  if (v5)
  {
    sub_10002D864();
    v6 = swift_allocError();
    *v7 = 1;

    swift_errorRetain();
    sub_1000A1BDC(v6, 1, v5, v8, v9, v10, v11, v12);
  }

  v1[6] = 0;

  v13 = v1[7];
  v14 = v1[8];
  v1[7] = 0;
  v1[8] = 0;
  result = sub_100037408(v13, v14);
  if (v1[5] | a1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;
    v17 = *(v3 + 24);

    v17(sub_10015EDE8, v16, ObjectType, v3);
  }

  return result;
}

uint64_t sub_10015C5F4(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    result = sub_1000A13B0(0);
  }

  if (a2)
  {

    return sub_1000A13B0(0);
  }

  return result;
}

uint64_t sub_10015C654(uint64_t a1, uint64_t a2)
{
  sub_100150924(*(a2 + 24), *(a2 + 32));
  swift_retain_n();

  sub_10011DE78();
}

void sub_10015C6D4()
{
  if (v0[7])
  {
    v1 = v0;
    ObjectType = swift_getObjectType();
    v3 = v0[4];
    v4 = v0[2];
    v5 = *(v3 + 48);

    v6 = sub_1000183C4(&qword_1002ADC18, &qword_100200960);
    v7 = v5(v4, sub_10015ED90, v0, v6, ObjectType, v3);

    v1[6] = v7;

    sub_10015C2F0();
  }
}

void sub_10015C7C4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[8];

    v6 = v4(a1);
    sub_100037408(v4, v5);
  }

  else
  {
    swift_getObjectType();
    EventLoop.makeSucceededFuture<A>(_:file:line:)();
    v6 = v7;
  }

  *a2 = v6;
}

void *RepeatedTask.deinit()
{
  swift_unknownObjectRelease();

  sub_100037408(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t RepeatedTask.__deallocating_deinit()
{
  RepeatedTask.deinit();

  return swift_deallocClassInstance();
}

uint64_t EventLoopIterator.next()()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v0[1] = v1 + 1;
    return swift_unknownObjectRetain();
  }

  return result;
}

void sub_10015C93C(void *a1@<X8>)
{
  debugOnly(_:)();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10015C980@<X0>(uint64_t *a1@<X8>)
{
  result = EventLoopIterator.next()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10015C9A8()
{
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v1 = swift_allocObject();
  *(v1 + 32) = v0;
  *(v1 + 40) = &protocol witness table for EmbeddedEventLoop;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;

  return v1;
}

uint64_t EventLoop.makeSucceededVoidFuture()(uint64_t a1, uint64_t a2)
{
  sub_1000183C4(&qword_1002ADC18, &qword_100200960);
  v5 = swift_allocObject();
  sub_10012DA48(v2, 0, 0, "n/a", 3, 2, 0, v5, a1, a2);
  sub_1000A3FB8();
  swift_unknownObjectRetain();
  return a2;
}

double EventLoop._promiseCompleted(futureIdentifier:)@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t static TimeAmount.microseconds(_:)(uint64_t a1)
{
  result = 1000 * a1;
  if ((a1 * 1000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.milliseconds(_:)(uint64_t a1)
{
  result = 1000000 * a1;
  if ((a1 * 1000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.minutes(_:)(uint64_t a1)
{
  result = 60000000000 * a1;
  if ((a1 * 60000000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.hours(_:)(uint64_t a1)
{
  result = 3600000000000 * a1;
  if ((a1 * 3600000000000) >> 64 != result >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t static TimeAmount.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *static TimeAmount.+= infix(_:_:)(void *result, uint64_t a2)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result += a2;
  }

  return result;
}

uint64_t static TimeAmount.- infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a1, a2);
  result = a1 - a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *static TimeAmount.-= infix(_:_:)(void *result, uint64_t a2)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *result -= a2;
  }

  return result;
}

void static TimeAmount.* infix<A>(_:_:)()
{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  sub_100023520();
  __chkstk_darwin(v4);
  sub_10002DFFC();
  __chkstk_darwin(v5);
  sub_10015EF90();
  __chkstk_darwin(v6);
  v15 = sub_10015EF6C(v7, v8, v9, v10, v11, v12, v13, v14, v35);
  v16(v15);
  v17 = v1;
  sub_1000AD850();
  if (sub_1001F76A8())
  {
    sub_10015EF14();
    if (sub_1001F7698() > 64)
    {
      v17 = v1;
      sub_1000AD850();
      if (sub_1001F76A8())
      {
        sub_10015EF14();
        if (sub_1001F7698() < 64)
        {
          goto LABEL_13;
        }

LABEL_8:
        v20 = sub_10015E7DC();
        sub_10015EF48(v20, &type metadata for Int64, v20);
        sub_10015EF24();
        v21 = sub_10015EEFC();
        v22(v21);
        if (v17)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      v36 = v3;
      v17 = v1;
      sub_1000AD850();
      v18 = sub_1001F76A8();
      sub_10015EF14();
      v19 = sub_1001F7698();
      if (v18)
      {
        v3 = v36;
        if (v19 <= 64)
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          sub_10015F0A4(&unk_10020B8F8, v24, v25, AssociatedConformanceWitness);
          sub_10015EFD0();
          sub_10015EF24();
          v26 = sub_10015EEFC();
          v27(v26);
          if (v1)
          {
            goto LABEL_27;
          }

          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v3 = v36;
      if (v19 < 64)
      {
LABEL_13:
        sub_10015EF14();
        sub_1001F7688();
      }
    }
  }

LABEL_14:
  sub_10015EF14();
  if (sub_1001F7698() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v17 = v1;
    sub_1000AD850();
    v28 = sub_1001F76A8();
    sub_10015EF14();
    v29 = sub_1001F7698();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v30 = sub_10015E7DC();
    sub_10015EF48(v30, &type metadata for Int64, v30);
    sub_10015EFF4();
    v31 = sub_10015EEFC();
    v32(v31);
    if (v1)
    {
      __break(1u);
LABEL_19:
      sub_10015EF14();
      if (sub_1001F7698() == 64)
      {
        v17 = v1;
        sub_1000AD850();
        if ((sub_1001F76A8() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v29 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_10015EF14();
  sub_1001F7688();
LABEL_24:
  sub_10015EF14();
  sub_1001F7688();
  v33 = sub_10015F070();
  v34(v33);
  if ((v17 * v3) >> 64 == (v17 * v3) >> 63)
  {
    sub_100037B00();
    return;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

{
  sub_100037C08();
  v1 = v0;
  v3 = v2;
  swift_getAssociatedTypeWitness();
  sub_100023520();
  __chkstk_darwin(v4);
  sub_10002DFFC();
  __chkstk_darwin(v5);
  sub_10015EF90();
  __chkstk_darwin(v6);
  v15 = sub_10015EF6C(v7, v8, v9, v10, v11, v12, v13, v14, v35);
  v16(v15);
  v17 = v1;
  sub_1000AD850();
  if (sub_1001F76A8())
  {
    sub_10015EF14();
    if (sub_1001F7698() > 64)
    {
      v17 = v1;
      sub_1000AD850();
      if (sub_1001F76A8())
      {
        sub_10015EF14();
        if (sub_1001F7698() < 64)
        {
          goto LABEL_13;
        }

LABEL_8:
        v20 = sub_10015E7DC();
        sub_10015EF48(v20, &type metadata for Int64, v20);
        sub_10015EF24();
        v21 = sub_10015EEFC();
        v22(v21);
        if (v17)
        {
          goto LABEL_27;
        }

        goto LABEL_14;
      }

      v36 = v3;
      v17 = v1;
      sub_1000AD850();
      v18 = sub_1001F76A8();
      sub_10015EF14();
      v19 = sub_1001F7698();
      if (v18)
      {
        v3 = v36;
        if (v19 <= 64)
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          sub_10015F0A4(&unk_10020B8F8, v24, v25, AssociatedConformanceWitness);
          sub_10015EFD0();
          sub_10015EF24();
          v26 = sub_10015EEFC();
          v27(v26);
          if (v1)
          {
            goto LABEL_27;
          }

          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v3 = v36;
      if (v19 < 64)
      {
LABEL_13:
        sub_10015EF14();
        sub_1001F7688();
      }
    }
  }

LABEL_14:
  sub_10015EF14();
  if (sub_1001F7698() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v17 = v1;
    sub_1000AD850();
    v28 = sub_1001F76A8();
    sub_10015EF14();
    v29 = sub_1001F7698();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    v30 = sub_10015E7DC();
    sub_10015EF48(v30, &type metadata for Int64, v30);
    sub_10015EFF4();
    v31 = sub_10015EEFC();
    v32(v31);
    if (v1)
    {
      __break(1u);
LABEL_19:
      sub_10015EF14();
      if (sub_1001F7698() == 64)
      {
        v17 = v1;
        sub_1000AD850();
        if ((sub_1001F76A8() & 1) == 0)
        {
          continue;
        }
      }
    }

    goto LABEL_24;
  }

  if (v29 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  sub_10015EF14();
  sub_1001F7688();
LABEL_24:
  sub_10015EF14();
  sub_1001F7688();
  v33 = sub_10015F070();
  v34(v33);
  if ((v3 * v17) >> 64 == (v3 * v17) >> 63)
  {
    sub_100037B00();
    return;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_10015D25C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = static TimeAmount.+ infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_10015D294@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = static TimeAmount.- infix(_:_:)(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t NIODeadline.uptimeNanoseconds.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t static NIODeadline.uptimeNanoseconds(_:)(unint64_t result)
{
  if (result >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

Swift::Int _s25ASOctaneSupportXPCService10TimeAmountV9hashValueSivg_0(Swift::UInt64 a1)
{
  sub_1001F8068();
  sub_1001F80C8(a1);
  return sub_1001F80D8();
}

Swift::Int sub_10015D35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1001F8068();
  a4(v8, v6);
  return sub_1001F80D8();
}

BOOL static NIODeadline.> infix(_:_:)(_BOOL8 result, unint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return a2 < result;
  }

  __break(1u);
  return result;
}

uint64_t NIODeadline.description.getter(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10013AEAC();
    return sub_1001F76B8();
  }

  return result;
}

uint64_t static NIODeadline.- infix(_:_:)(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      if (result - a2 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      result -= a2;
      return result;
    }

    goto LABEL_13;
  }

  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 && result < a2)
  {
    return HTTPHeaders.startIndex.getter();
  }

  result -= a2;
  if (result < 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10015D488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  EventLoopPromise.succeed(_:)(v10, a1, a5);
  return (*(v7 + 8))(v10, a5);
}

uint64_t sub_10015D58C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t EventLoop.flatScheduleTask<A>(deadline:file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  EmbeddedChannel.WrongTypeError.actual.getter(a8, a9);
  sub_10015F084();
  v19 = EventLoop.makePromise<A>(of:file:line:)(v14, v15, v16, v17, a5, v18, a9, a10);
  sub_1000A3FC4();
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = a6;
  v20[6] = a7;
  v21 = *(a10 + 40);
  v24 = type metadata accessor for EventLoopFuture(0, a9, v22, v23);

  v25 = v21(a1, sub_10015EED0, v20, v24, a8, a10);

  sub_1000A41C8();
  v26 = swift_allocObject();
  v26[2] = a8;
  v26[3] = a9;
  v26[4] = a10;

  sub_100158C20();
  EventLoopFuture.flatMap<A>(file:line:_:)(v27, v28, v29, 602, v30, v26, a9);

  EventLoopFuture.cascade(to:)(v31);

  sub_100047958();
  v32 = swift_allocObject();
  v32[2] = a8;
  v32[3] = a9;
  v32[4] = a10;
  v32[5] = v25;

  return Scheduled.init(promise:cancellationTask:)(v19, sub_10015EEF0, v32);
}

uint64_t EventLoop.flatScheduleTask<A>(in:file:line:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = EmbeddedChannel.WrongTypeError.actual.getter(a8, a9);
  v19 = EventLoop.makePromise<A>(of:file:line:)(v17, a2, a3, a4, a5, v18, a9, a10);
  sub_1000A3FC4();
  v20 = swift_allocObject();
  v20[2] = a8;
  v20[3] = a9;
  v20[4] = a10;
  v20[5] = a6;
  v20[6] = a7;
  v21 = *(a10 + 48);
  v24 = type metadata accessor for EventLoopFuture(0, a9, v22, v23);

  v25 = v21(a1, sub_10015EED0, v20, v24, a8, a10);

  sub_1000A41C8();
  v26 = swift_allocObject();
  v26[2] = a8;
  v26[3] = a9;
  v26[4] = a10;

  sub_100158C20();
  EventLoopFuture.flatMap<A>(file:line:_:)(v27, v28, v29, 623, v30, v26, a9);

  EventLoopFuture.cascade(to:)(v31);

  sub_100047958();
  v32 = swift_allocObject();
  v32[2] = a8;
  v32[3] = a9;
  v32[4] = a10;
  v32[5] = v25;

  return Scheduled.init(promise:cancellationTask:)(v19, sub_10015E898, v32);
}

void sub_10015D998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for EventLoopFuture(0, a3, a3, a4);

  Scheduled.cancel()();
}

void EventLoop.scheduleRepeatedTask(initialDelay:delay:notifying:_:)()
{
  sub_100037C08();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1000A3FC4();
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = v2;
  v15[4] = v8;
  v15[5] = v6;
  v15[6] = v0;

  swift_unknownObjectRetain();
  EventLoop.scheduleRepeatedAsyncTask(initialDelay:delay:notifying:_:)(v14, v12, v10, sub_10015E8E0, v15, v16, v2);

  sub_100037B00();
}

void EventLoop.scheduleRepeatedAsyncTask(initialDelay:delay:notifying:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for RepeatedTask();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = v7;
  v13[4] = a7;
  v13[5] = a3;
  v13[7] = a4;
  v13[8] = a5;
  v13[6] = 0;

  swift_unknownObjectRetain();
  sub_10015C0D8();
  sub_100037A50();
}

uint64_t sub_10015DBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    Lock.lock()();
    swift_beginAccess();
    *(a3 + 16) = a1;

    swift_errorRetain();
    Lock.unlock()();
  }

  return sub_1001F6808();
}

unint64_t EventLoopError.description.getter(char a1)
{
  result = 0xD000000000000049;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000030;
      break;
    case 2:
      result = 0xD00000000000002ALL;
      break;
    case 3:
      result = 0xD000000000000031;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10015DCF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10015DD30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015DD48()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015DD8C()
{

  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

void *sub_10015DE7C(__int128 *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v65 = *a1;
  v66 = v1;
  v3 = *(a1 + 14);
  v4 = *(a1 + 15);
  v5 = HIBYTE(v4);
  v6 = *(a1 + 8);
  v8 = *a1;
  v7 = *(a1 + 1);
  v68 = *(a1 + 6);
  v67 = v2;
  result = sub_10015EE44(a1, v62);
  v10 = 0;
  v51 = v6;
  v52 = v6 & 0xFF00000000000000;
  v49 = v8 + 32;
  v11 = &_swiftEmptyArrayStorage[4];
  v45 = v3;
  v46 = v8;
  v12 = v3;
  v42 = HIWORD(v4);
  v43 = v4;
  v13 = v4;
  v14 = HIWORD(v4);
  v50 = v5;
  v15 = _swiftEmptyArrayStorage;
  v44 = v5;
  v47 = v6;
  v48 = v7;
  while (1)
  {
    if (v52 == 0x200000000000000)
    {
      v10 = 0;
      LOBYTE(v14) = v42;
      v13 = v43;
      v37 = v44;
      v15 = _swiftEmptyArrayStorage;
      v38 = v45;
      goto LABEL_36;
    }

    v16 = *(v8 + 16);
    if (v5)
    {
      if ((v6 & 0x100000000000000) != 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(v8 + 16);
      }

      v18 = v51 - v12 + v17;
    }

    else if ((v6 & 0x100000000000000) != 0)
    {
      v19 = v12 - v51 + v16;
      v20 = __OFSUB__(0, v19);
      v18 = -v19;
      if (v20)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v18 = v51 - v12;
    }

    if (v18 < 0)
    {
      v38 = v12;
      v37 = v50;
LABEL_36:
      *v62 = v65;
      *&v62[16] = v66;
      *&v62[32] = v67;
      *&v62[48] = v68;
      LODWORD(v63) = v38;
      WORD2(v63) = v13;
      BYTE6(v63) = v14;
      HIBYTE(v63) = v37;
      v64 = v6;
      result = sub_10015EDF0(v62);
      v39 = v15[3];
      if (v39 >= 2)
      {
        v40 = v39 >> 1;
        v20 = __OFSUB__(v40, v10);
        v41 = v40 - v10;
        if (v20)
        {
          goto LABEL_45;
        }

        v15[2] = v41;
      }

      return v15;
    }

    if (v16 <= v12)
    {
      break;
    }

    v21 = (v49 + (v12 << 6));
    v22 = *v21;
    v23 = *(v21 + 3);
    v58 = *(v21 + 1);
    v59 = v23;
    v60 = *(v21 + 5);
    v61 = v21[7];
    if (!v22)
    {
      goto LABEL_46;
    }

    v24 = *(v21 + 3);
    v54 = *(v21 + 1);
    v55 = v24;
    v56 = *(v21 + 5);
    v57 = v21[7];
    v25 = (v16 + 0x1FFFFFFFFLL) & (v12 + 1);
    LOBYTE(v5) = v25 >= v7;
    if (HIDWORD(v25))
    {
      goto LABEL_41;
    }

    v50 = v25 >= v7;
    if (v10)
    {
      *v62 = v22;
      *&v62[8] = v58;
      *&v62[24] = v59;
      *&v62[40] = v60;
      v63 = v61;
      result = sub_1000370F8(v62, v53);
      v26 = v15;
    }

    else
    {
      v27 = v15[3];
      if (((v27 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
      if (v28 <= 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = v28;
      }

      sub_1000183C4(&qword_1002B7F60, &qword_100211778);
      v26 = swift_allocObject();
      v30 = (j__malloc_size(v26) - 32) / 64;
      v26[2] = v29;
      v26[3] = 2 * v30;
      v31 = v15[3] >> 1;
      v11 = &v26[8 * v31 + 4];
      v10 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v31;
      if (v15[2])
      {
        v32 = v26 < v15 || v26 + 4 >= &v15[8 * v31 + 4];
        v33 = v31 << 6;
        if (!v32 && v26 == v15)
        {
          *v62 = v22;
          *&v62[8] = v58;
          *&v62[24] = v59;
          *&v62[40] = v60;
          v63 = v61;
          sub_1000370F8(v62, v53);
        }

        else
        {
          *v62 = v22;
          *&v62[8] = v58;
          *&v62[24] = v59;
          *&v62[40] = v60;
          v63 = v61;
          sub_1000370F8(v62, v53);
          memmove(v26 + 4, v15 + 4, v33);
        }

        v15[2] = 0;

        v8 = v46;
        v6 = v47;
      }

      else
      {
        *v62 = v22;
        *&v62[8] = v58;
        *&v62[24] = v59;
        *&v62[40] = v60;
        v63 = v61;
        sub_1000370F8(v62, v53);
      }

      v7 = v48;
    }

    v20 = __OFSUB__(v10--, 1);
    if (v20)
    {
      goto LABEL_42;
    }

    v12 = v25;
    *v11 = v22;
    v34 = v54;
    v35 = v55;
    v36 = v56;
    v11[7] = v57;
    *(v11 + 5) = v36;
    *(v11 + 3) = v35;
    *(v11 + 1) = v34;
    v11 += 8;
    LOBYTE(v14) = -1;
    v13 = -1;
    v15 = v26;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_10015E27C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  v7 = &_swiftEmptyArrayStorage[4];
  while (v4 != a2)
  {
    if (a2 >= v4)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (__OFADD__(a2, 1))
    {
      goto LABEL_28;
    }

    v20 = *(a1 + 16 * a2 + 32);
    if (v5)
    {
      swift_unknownObjectRetain();
      v8 = v6;
    }

    else
    {
      v9 = v6[3];
      if (((v9 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_30;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      sub_1000183C4(&qword_1002ADDB8, &qword_100200B40);
      v8 = swift_allocObject();
      v12 = (j__malloc_size(v8) - 32) / 16;
      v8[2] = v11;
      v8[3] = 2 * v12;
      v13 = v8 + 4;
      v14 = v6[3] >> 1;
      v7 = &v8[2 * v14 + 4];
      v5 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;
      if (v6[2])
      {
        if (v8 != v6 || v13 >= &v6[2 * v14 + 4])
        {
          memmove(v13, v6 + 4, 16 * v14);
        }

        swift_unknownObjectRetain();
        v6[2] = 0;
      }

      else
      {
        swift_unknownObjectRetain();
      }
    }

    v16 = __OFSUB__(v5--, 1);
    if (v16)
    {
      goto LABEL_29;
    }

    *v7++ = v20;
    ++a2;
    v6 = v8;
  }

  v17 = v6[3];
  if (v17 < 2)
  {
    return;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v5);
  v19 = v18 - v5;
  if (!v16)
  {
    v6[2] = v19;
    return;
  }

LABEL_31:
  __break(1u);
}

void *sub_10015E434()
{
  sub_10015F050();

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  for (i = &_swiftEmptyArrayStorage[4]; ; ++i)
  {
    v4 = *(v0 + 16);
    if (!v4)
    {

      v43 = v2[3];
      if (v43 >= 2)
      {
        v44 = v43 >> 1;
        v31 = __OFSUB__(v44, v1);
        v45 = v44 - v1;
        if (v31)
        {
          goto LABEL_57;
        }

        v2[2] = v45;
      }

      return v2;
    }

    v6 = v0 + 32;
    v5 = *(v0 + 32);
    v7 = v4 - 1;
    if (v4 == 1 || (v8 = *(v6 + 8 * v7), v5 == v8))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100112884(v0, v18, v19, v20);
        sub_10015F050();
      }

      v21 = *(v0 + 16);
      if (!v21)
      {
        goto LABEL_49;
      }

      *(v0 + 16) = v21 - 1;
      sub_1001F7898();
      goto LABEL_19;
    }

    type metadata accessor for ScheduledTask();
    if (!static ScheduledTask.< infix(_:_:)(v5, v8))
    {
      v32 = sub_1001DBFDC();
      v33 = sub_1001DBFDC();
      v34 = static ScheduledTask.< infix(_:_:)(v33, v32);

      if (v34)
      {
        goto LABEL_58;
      }

      v47 = v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100112884(v0, v35, v36, v37);
        sub_10015F050();
      }

      if (!*(v0 + 16))
      {
        goto LABEL_52;
      }

      *(v0 + 32) = v32;

      sub_1001F7898();

      v38 = v0;
      if (!*(v0 + 16))
      {
        goto LABEL_54;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_100112884(v0, v39, v40, v41);
        v47 = v38;
      }

      v42 = *(v38 + 16);
      if (!v42)
      {
        goto LABEL_55;
      }

      sub_10015EFAC(v42);
LABEL_19:

      if (v1)
      {
        goto LABEL_33;
      }

LABEL_20:
      v22 = v2[3];
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_50;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
      v25 = swift_allocObject();
      v26 = (j__malloc_size(v25) - 32) / 8;
      v25[2] = v24;
      v25[3] = (2 * v26) | 1;
      v27 = (v25 + 4);
      v28 = v2[3];
      v29 = v28 >> 1;
      if (v2[2])
      {
        if (v25 != v2 || v27 >= &v2[v29 + 4])
        {
          memmove(v25 + 4, v2 + 4, 8 * v29);
        }

        v2[2] = 0;
      }

      i = (v27 + 8 * v29);
      v1 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

      v2 = v25;
      goto LABEL_33;
    }

    v9 = *(v6 + 8 * v7);

    v47 = v0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100112884(v0, v10, v11, v12);
      sub_10015F050();
    }

    if (!*(v0 + 16))
    {
      goto LABEL_51;
    }

    *(v0 + 32) = v9;

    sub_1001F7898();
    v13 = v0;
    if (!*(v0 + 16))
    {
      goto LABEL_53;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_100112884(v0, v14, v15, v16);
      v47 = v13;
    }

    v17 = *(v13 + 16);
    if (!v17)
    {
      goto LABEL_56;
    }

    sub_10015EFAC(v17);

    sub_1001D6AC8(0);
    if (!v1)
    {
      goto LABEL_20;
    }

LABEL_33:
    v31 = __OFSUB__(v1--, 1);
    if (v31)
    {
      break;
    }

    *i = v5;
    v0 = v47;
  }

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
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

unint64_t sub_10015E7DC()
{
  result = qword_1002B7DF8;
  if (!qword_1002B7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7DF8);
  }

  return result;
}

uint64_t sub_10015E830()
{

  sub_100047958();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015E864@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10015E8A4()
{

  swift_unknownObjectRelease();
  sub_1000A3FC4();

  return _swift_deallocObject(v0, v1, v2);
}

unint64_t sub_10015E918()
{
  result = qword_1002B7E00;
  if (!qword_1002B7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7E00);
  }

  return result;
}

unint64_t sub_10015E970()
{
  result = qword_1002B7E08;
  if (!qword_1002B7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7E08);
  }

  return result;
}

unint64_t sub_10015E9C8()
{
  result = qword_1002B7E10;
  if (!qword_1002B7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B7E10);
  }

  return result;
}

unint64_t sub_10015EA20()
{
  result = qword_1002B7E18[0];
  if (!qword_1002B7E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002B7E18);
  }

  return result;
}

uint64_t sub_10015EA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10015EAEC(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10015EB3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

_BYTE *storeEnumTagSinglePayload for EventLoopError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10015EC68);
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

uint64_t sub_10015EC9C()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015ECF8()
{

  sub_1000A41C8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015ED34@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))(*(v1 + 32));
  *a1 = result;
  return result;
}

uint64_t sub_10015EDAC()
{

  sub_10004794C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_10015EF24()
{

  return sub_1001F6A78();
}

uint64_t sub_10015EF48(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7638();
}

uint64_t sub_10015EFAC@<X0>(uint64_t a2@<X8>)
{
  *(v2 + 16) = a2 - 1;

  return sub_1001F7898();
}

uint64_t sub_10015EFD0()
{

  return sub_1001F7E88();
}

uint64_t sub_10015EFF4()
{

  return sub_1001F6A78();
}

uint64_t sub_10015F018()
{

  return swift_getObjectType();
}

uint64_t sub_10015F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7F88();
}

uint64_t Lock.__allocating_init()()
{
  v0 = swift_allocObject();
  Lock.init()();
  return v0;
}

uint64_t sub_10015F0FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Lock.lock()();
  if (*(a2 + 89) > 1u)
  {
    sub_1000183C4(&qword_1002B34C0, &qword_1002008E0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1001FE9E0;
    *(v7 + 56) = type metadata for String;
    *(v7 + 32) = 0xD00000000000008DLL;
    *(v7 + 40) = 0x8000000100229D30;
    sub_1001F8048();

    v6 = 0;
  }

  else
  {
    v5 = *(a2 + 72);

    v6 = sub_10015F2C4(v5, a2, a3);
  }

  Lock.unlock()();

  return v6 & 1;
}

uint64_t sub_10015F210(char a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  Lock.lock()();
  sub_100139D90(a2, a3, a4, a5, &v12);
  Lock.unlock()();

  if (v5)
  {
  }

  else
  {
    a1 = v12;
  }

  return a1 & 1;
}

uint64_t sub_10015F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Lock.lock()();
  swift_beginAccess();
  sub_1000433F0(a3);
  swift_endAccess();
  swift_beginAccess();
  v5 = *(a2 + 32);
  if ((v5 & 1) == 0)
  {
    *(a2 + 32) = 1;
  }

  Lock.unlock()();

  return v5 ^ 1u;
}

uint64_t sub_10015F37C(uint64_t a1, uint64_t a2)
{
  Lock.lock()();
  v3 = *(a2 + 64);
  if (v3 == 1)
  {
    v4 = 1;
LABEL_5:
    Lock.unlock()();

    return v4;
  }

  if (v3 == 2)
  {
    v5 = sub_100106280(16);
    v6 = sub_1001CAFE4(0, 0, v5);
    v8 = *(a2 + 40);
    v7 = *(a2 + 48);
    v9 = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = v6;
    v10 = *(a2 + 64);
    *(a2 + 64) = 1;
    sub_100160308(v8, v7, v9, v10);
    v4 = 0;
    goto LABEL_5;
  }

  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

unint64_t sub_10015F474()
{
  Lock.lock()();
  sub_1001F77B8(28);

  v1._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v1);

  v2._countAndFlagsBits = 32032;
  v2._object = 0xE200000000000000;
  sub_1001F6CA8(v2);
  Lock.unlock()();

  return 0xD000000000000018;
}

uint64_t (*sub_10015F558(uint64_t (*a1)(unsigned __int8 *a1), uint64_t a2, uint64_t a3, uint64_t a4))(unsigned __int8 *a1)
{
  Lock.lock()();
  sub_1001CD928(a2, a3, a4, &v10);
  Lock.unlock()();

  if (!v4)
  {
    a1 = v10;
  }

  return a1;
}

uint64_t sub_10015F600(uint64_t a1, uint64_t a2, void *a3)
{
  Lock.lock()();
  sub_1001CD358(a2, &v8);
  Lock.unlock()();
  if (v3)
  {
  }

  else
  {

    a1 = v8;
  }

  return a1;
}

void Lock.withLock<A>(_:)()
{
  sub_100160324();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

void Lock.withLockVoid(_:)()
{
  sub_100160324();
  Lock.lock()();
  v0();
  Lock.unlock()();
}

uint64_t ConditionLock.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ConditionLock.init(value:)(a1);
  return v2;
}

uint64_t ConditionLock.unlock(withValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, a1);
  swift_endAccess();
  ConditionLock.unlock()();
  sub_10002E27C();
  result = pthread_cond_broadcast(*(v1 + *(v5 + 112)));
  if (result)
  {
    __break(1u);
  }

  return result;
}

uint64_t ConditionLock.lock(whenValue:)()
{
  v1 = v0;
  sub_10012F33C();
  v19[1] = v3;
  v19[2] = v2;
  v5 = *(v4 + 80);
  sub_100160338();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v19 - v9;
  ConditionLock.lock()();
  sub_10012F33C();
  v12 = *(v11 + 96);
  v14 = *(v13 + 112);
  v15 = *(v13 + 104);
  swift_beginAccess();
  v16 = *(v7 + 16);
  while (1)
  {
    v16(v10, v1 + v12, v5);
    v17 = sub_10016034C();
    result = (*(v7 + 8))(v10, v5);
    if (v17)
    {
      break;
    }

    result = pthread_cond_wait(*(v1 + v14), *(*(v1 + v15) + 16));
    if (result)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t Lock.init()()
{
  *(v0 + 16) = swift_slowAlloc();
  v2.__sig = 0;
  *v2.__opaque = 0;
  pthread_mutexattr_init(&v2);
  pthread_mutexattr_settype(&v2, 1);
  if (pthread_mutex_init(*(v0 + 16), &v2))
  {
    __break(1u);
  }

  return v0;
}

uint64_t Lock.deinit()
{
  result = pthread_mutex_destroy(*(v0 + 16));
  if (result)
  {
    __break(1u);
  }

  else
  {

    return v0;
  }

  return result;
}

uint64_t Lock.__deallocating_deinit()
{
  Lock.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10015FB60(uint64_t (*a1)(void))
{
  result = a1(*(v1 + 16));
  if (result)
  {
    __break(1u);
  }

  return result;
}

char *ConditionLock.init(value:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(v4 + 112);
  *&v2[v5] = swift_slowAlloc();
  v6 = *(v4 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[*(*v2 + 96)], a1, v6);
  type metadata accessor for Lock();
  v8 = swift_allocObject();
  Lock.init()();
  *&v2[*(*v2 + 104)] = v8;
  LODWORD(v8) = pthread_cond_init(*&v2[*(*v2 + 112)], 0);
  result = (*(v7 + 8))(a1, v6);
  if (!v8)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t ConditionLock.deinit()
{
  sub_10012F33C();
  v2 = v1;
  result = pthread_cond_destroy(*(v0 + *(v3 + 112)));
  if (result)
  {
    __break(1u);
  }

  else
  {

    sub_10002E27C();
    (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v5 + 96));
    sub_10002E27C();

    return v0;
  }

  return result;
}

uint64_t ConditionLock.__deallocating_deinit()
{
  ConditionLock.deinit();

  return swift_deallocClassInstance();
}

void ConditionLock.value.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  ConditionLock.lock()();
  sub_10002E27C();
  v5 = *(v4 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, &v1[v5]);
  ConditionLock.unlock()();
}

uint64_t ConditionLock.lock(whenValue:timeoutSeconds:)(uint64_t a1, double a2)
{
  v27[2] = a1;
  sub_10012F33C();
  v27[1] = v4;
  v6 = *(v5 + 80);
  sub_100160338();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = v27 - v11;
  if (v10 < 0.0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ConditionLock.lock()();
  v13 = a2 * 1000000000.0;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v32.tv_sec = 0;
  v32.tv_usec = 0;
  gettimeofday(&v32, 0);
  v14 = 1000 * v32.tv_usec;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (__OFADD__(v32.tv_sec, v16 / 1000000000))
  {
    goto LABEL_18;
  }

  v31.tv_sec = v32.tv_sec + v16 / 1000000000;
  v31.tv_nsec = v16 % 1000000000;
  v17 = *v2;
  v18 = *(*v2 + 96);
  v27[0] = *(*v2 + 112);
  v19 = *(v17 + 104);
  swift_beginAccess();
  v20 = v8 + 16;
  v21 = *(v8 + 16);
  v22 = (v20 - 8);
  do
  {
    v21(v12, &v2[v18], v6);
    v23 = sub_10016034C();
    (*v22)(v12, v6);
    if (v23)
    {
      return v23 & 1;
    }

    v24 = pthread_cond_timedwait(*&v2[v27[0]], *(*&v2[v19] + 16), &v31);
  }

  while (!v24);
  if (v24 == 60)
  {
    ConditionLock.unlock()();
    return v23 & 1;
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  v26 = v24;
  sub_1001F77B8(51);
  v33._countAndFlagsBits = 0x6520746867756163;
  v33._object = 0xED000020726F7272;
  sub_1001F6CA8(v33);
  v28 = v26;
  v34._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v34);

  v35._object = 0x8000000100229C60;
  v35._countAndFlagsBits = 0xD000000000000024;
  sub_1001F6CA8(v35);
  result = sub_1001F7AC8();
  __break(1u);
  return result;
}

uint64_t sub_100160240(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100160308(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  if (!a4)
  {
  }

  return result;
}

uint64_t sub_10016034C()
{

  return sub_1001F6B28();
}

uint64_t sub_10016036C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a2;
  v43 = a1;
  v49 = a7;
  v11 = sub_1001F6288();
  v46 = *(v11 - 8);
  __chkstk_darwin(v11);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  v48 = type metadata accessor for StaticResourceRoute(0);
  __chkstk_darwin(v48);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OctaneConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v44 = a5;
  v23 = a5;
  v24 = a6;
  v25 = sub_100160F8C(a3, a4, v23, a6, v22);

  if (v25)
  {
    v26 = v47;

    sub_1001F6238();

    v27 = v46;
    (*(v46 + 32))(v18, v15, v11);
    v28 = sub_1001F62C8();
    sub_10003A380(v28, v35);
    *v20 = v43;
    v20[1] = v26;
    v36 = v48;
    (*(v27 + 16))(v20 + *(v48 + 20), v18, v11);
    v37 = sub_1000B756C(v44, v24);
    (*(v27 + 8))(v18, v11);
    if (v37 == 9)
    {
      v38 = 6;
    }

    else
    {
      v38 = v37;
    }

    *(v20 + *(v36 + 24)) = v38;
    v39 = v49;
    sub_100161004(v20, v49);
    v40 = 0;
  }

  else
  {

    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v29 = sub_1001F6688();
    sub_100019C94(v29, qword_1002E6180);

    v30 = sub_1001F6668();
    v31 = sub_1001F7298();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      v34 = sub_1000E4544(a3, a4, &v50);

      *(v32 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to initialize static resource route: no bundle URL for name %s", v32, 0xCu);
      sub_100019CCC(v33);
      sub_10003A72C(v33);
      sub_10003A72C(v32);
    }

    else
    {
    }

    v40 = 1;
    v36 = v48;
    v39 = v49;
  }

  return sub_100018460(v39, v40, 1, v36);
}

uint64_t type metadata accessor for StaticResourceRoute(uint64_t a1)
{
  result = qword_1002B80E0;
  if (!qword_1002B80E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_1001609AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticResourceRoute(0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_1001F62C8();
  v13 = v12;
  v36 = v11;
  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v14 = sub_1001F6688();
  sub_100019C94(v14, qword_1002E6180);
  sub_10016121C(v2, v10);
  sub_1000593F4(a1, v39);
  v15 = sub_1001F6668();
  v16 = sub_1001F7288();
  sub_1000402B8(a1);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    LODWORD(v37) = v16;
    v18 = v17;
    v38.n128_u64[0] = swift_slowAlloc();
    *&v39[0] = v38.n128_u64[0];
    *v18 = 136315394;
    LOBYTE(v43[0]) = v10[*(v6 + 24)];
    v19 = sub_1001F6BA8();
    v21 = v20;
    sub_100161280(v10);
    v22 = sub_1000E4544(v19, v21, v39);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = *(a1 + 32);
    v24 = *(v23 + 32);
    v25 = *(v23 + 40);

    v26 = sub_1000E4544(v24, v25, v39);

    *(v18 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v15, v37, "will serve %s at %s", v18, 0x16u);
    v27 = v38.n128_u64[0];
    swift_arrayDestroy();
    sub_10003A72C(v27);
    sub_10003A72C(v18);
  }

  else
  {

    sub_100161280(v10);
  }

  v28 = sub_1000B7990(*(v3 + *(v6 + 24)));
  v30 = v29;
  v31 = v36;
  sub_100040C70(v36, v13);
  sub_1000B77D0(v31, v13, v28, v30, v39);
  v37 = v39[1];
  v38 = v39[0];
  v32 = v40 | ((v41 | (v42 << 16)) << 32);
  sub_10003A380(v31, v13);
  type metadata accessor for HTTPResponseHead._Storage();
  v33 = swift_allocObject();
  *(v33 + 32) = 3;
  *(v33 + 40) = 65537;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *a2 = v33;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v38;
  *(a2 + 40) = v37;
  *(a2 + 24) = result;
  *(a2 + 62) = BYTE6(v32);
  *(a2 + 60) = WORD2(v32);
  *(a2 + 56) = v32;
  return result;
}

uint64_t NIOConnectionError.host.getter()
{
  v1 = *v0;

  return v1;
}

double sub_100160F44@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001609AC(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  a2[2] = v6[0];
  result = *(v6 + 15);
  *(a2 + 47) = *(v6 + 15);
  return result;
}

id sub_100160F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1001F6B48();
  v7 = sub_1001F6B48();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_100161004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResourceRoute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016107C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6288();
    v9 = a1 + *(a3 + 20);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_100161118(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F6288();
    v8 = v5 + *(a4 + 20);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100161198(uint64_t a1)
{
  result = sub_1001F6288();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10016121C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResourceRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100161280(uint64_t a1)
{
  v2 = type metadata accessor for StaticResourceRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SocketOptionProvider.setSoLinger(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 24);
  type metadata accessor for linger(0);
  return v5(0xFFFFLL, 128, &v8, v6, a2, a3);
}

uint64_t SocketOptionProvider.setIPMulticastIF(_:)(int a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 24);
  type metadata accessor for in_addr(0);
  return v5(0, 9, &v8, v6, a2, a3);
}

uint64_t sub_100161610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11 = *(a2 + 40);
  v9 = a3(0);

  return v11(a4, a5, v9, a1, a2);
}

uint64_t sub_1001616EC(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 1701147238;
      break;
    case 2:
      result = 0x756F597341796170;
      break;
    case 3:
      result = 0x6F72467055796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100161778(char a1)
{
  if (!a1)
  {
    return 7824750;
  }

  if (a1 == 1)
  {
    return 0x676E697473697865;
  }

  return 0x64657269707865;
}

unint64_t sub_1001617C8()
{
  sub_100164DFC();
  v2._rawValue = &off_1002797F8;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_1000DBF48();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100161808()
{
  sub_100164DFC();
  v2._rawValue = &off_10027C858;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_1000DBF48();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10016186C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100161808();
  *a1 = result;
  return result;
}

uint64_t sub_10016189C()
{
  v1 = sub_100056690();
  result = sub_100161778(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_100161998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001617C8();
  *a1 = result;
  return result;
}

uint64_t sub_1001619C8()
{
  v1 = sub_100056690();
  result = sub_1001616EC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100161AA0()
{
  sub_1000183C4(&qword_1002AE9F0, &unk_1002076A0);
  sub_10001E844();
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  if (!*(v0 + 40))
  {
    return 0;
  }

  v4 = sub_1001F65B8();
  sub_100018460(v3, 1, 1, v4);

  v5 = sub_1001F7448();

  sub_1001643F0(v3);
  return v5;
}

void sub_100161BA8()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 64);

    sub_1001EB808(v2, v1);
  }
}

uint64_t sub_100161BF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5079616C70736964 && a2 == 0xEC00000065636972;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x664F7265626D756ELL && a2 == 0xEF73646F69726550;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4D746E656D796170 && a2 == 0xEB0000000065646FLL;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x8000000100229E30 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1001F7EA8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_100161DB8(char a1)
{
  result = 0x6C616E7265746E69;
  switch(a1)
  {
    case 1:
      result = 0x5079616C70736964;
      break;
    case 2:
      result = 0x664F7265626D756ELL;
      break;
    case 3:
      result = 0x4D746E656D796170;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100161E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100161BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100161EBC@<X0>(_BYTE *a1@<X8>)
{
  result = static NIOHTTPObjectAggregatorError.unexpectedMessageEnd.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100161EE4(uint64_t a1)
{
  v2 = sub_10016412C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100161F20(uint64_t a1)
{
  v2 = sub_10016412C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100161F5C()
{

  return v0;
}

uint64_t sub_100161FB0(void *a1)
{
  v3 = v1;
  sub_1000183C4(&qword_1002B8AD0, &unk_100211C18);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v5);
  sub_10001AE68(a1, a1[3]);
  sub_10016412C();
  sub_1001F8198();
  sub_100024A50();
  sub_1001F7D88();
  if (v2)
  {
    v6 = sub_100164DB8();
    return v7(v6);
  }

  else
  {
    v9 = *(v3 + 32);

    sub_100024A50();
    sub_1001F7D18();
    if (!v9)
    {

      sub_100024A50();
      sub_1001F7D48();
      sub_10016439C();
      sub_1001F7DC8();

      sub_100024A50();
      sub_1001F7D18();
    }

    v10 = sub_100164DB8();
    v11(v10);
  }
}

uint64_t sub_1001621CC()
{
  sub_100164CD0();
  swift_allocObject();
  v1 = sub_100164CC0();
  sub_10016220C(v1, v2, v3, v4, v5, v6, v7, v8, v10, *v11, v11[4]);
  return v0;
}

void sub_10016220C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  sub_10001E850();
  v13 = v11;
  v15 = v14;
  sub_1000183C4(&qword_1002B8A58, &qword_100211BE0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v16);
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  sub_10001AE68(v15, v15[3]);
  v17 = sub_10016412C();
  sub_100164E08(&_s8DiscountC10CodingKeysON, v18, v17);
  if (v12)
  {

    _s8DiscountCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100082DAC();
    *(v11 + 16) = sub_1001F7C78();
    *(v11 + 24) = v19;
    sub_100082DAC();
    *(v11 + 32) = sub_1001F7C08();
    *(v11 + 40) = v20;

    sub_100082DAC();
    *(v11 + 48) = sub_1001F7C38();
    *(v11 + 56) = v21 & 1;
    sub_100164180();
    sub_1001F7CB8();
    *(v11 + 57) = a11;
    sub_100082DAC();
    v22 = sub_1001F7C08();
    v24 = v23;
    v25 = sub_1000263B8();
    v26(v25);
    *(v13 + 64) = v22;
    *(v13 + 72) = v24;
  }

  sub_100019CCC(v15);
  sub_10001E868();
}

uint64_t sub_100162474@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 272))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001624FC()
{
  sub_100164CD0();
  swift_allocObject();
  v1 = sub_100164CC0();
  sub_10016253C(v1);
  return v0;
}

uint64_t sub_10016253C(void *a1)
{
  sub_100026064(a1, &v12);
  sub_10016220C(&v12, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13);
  sub_100019CCC(a1);
  return v1;
}

uint64_t sub_100162590()
{
  sub_100161F5C();

  return swift_deallocClassInstance();
}

uint64_t sub_1001625E8()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_100162628();
  return v0;
}

void sub_100162628()
{
  sub_10001E850();
  v3 = v2;
  sub_1000183C4(&qword_1002B8A48, &qword_100211BD8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v4);
  sub_10001AE68(v3, v3[3]);
  v5 = sub_1001640D8();
  sub_100164E08(&_s17ReferencableOfferC10CodingKeysON, v6, v5);
  if (v1)
  {
    sub_100019CCC(v3);
    _s17ReferencableOfferCMa();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100082DAC();
    *(v0 + 80) = sub_1001F7C78();
    *(v0 + 88) = v7;
    sub_100026064(v3, &v18);
    sub_10016220C(&v18, v8, v9, v10, v11, v12, v13, v14, v17, v18, v19);
    v15 = sub_1000263B8();
    v16(v15);
    sub_100019CCC(v3);
  }

  sub_10001E868();
}

void sub_1001627B4()
{
  sub_10001E850();
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8AC8, &qword_100211C10);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v1);
  sub_100164D2C();
  v2 = sub_1001640D8();
  sub_100164D0C(&_s17ReferencableOfferC10CodingKeysON, v3, v2);
  v4 = *(v0 + 80);

  sub_100164D50(v5, v6, v7);
  if (v4)
  {
    v8 = sub_100164CB0();
    v9(v8);
  }

  else
  {

    v10 = sub_100164D98();
    sub_100161FB0(v10);
    v11 = sub_100164CB0();
    v12(v11);
  }

  sub_100164E5C();
  sub_10001E868();
}

BOOL sub_1001628C8()
{
  sub_100164DFC();
  v2._rawValue = &off_10027C8C0;
  v4._object = v0;
  sub_1001F7BD8(v2, v4);
  sub_1000DBF48();
  return v1 != 0;
}

BOOL sub_100162934@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001628C8();
  *a1 = result;
  return result;
}

uint64_t sub_100162968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100162904();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100162994@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1001628C8();
  *a1 = result;
  return result;
}

uint64_t sub_1001629C0(uint64_t a1)
{
  v2 = sub_1001640D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001629FC(uint64_t a1)
{
  v2 = sub_1001640D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100162A40()
{
  sub_100161F5C();

  return swift_deallocClassInstance();
}

uint64_t sub_100162AA0()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_100162AE0();
  return v0;
}

void sub_100162AE0()
{
  sub_10001E850();
  sub_100164CF4();
  sub_1000183C4(&qword_1002B8AC0, &qword_100211C08);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_100164DD8();
  v4 = sub_100164348();
  sub_100164D74(&_s10AdHocOfferC10CodingKeysON, v5, v4);
  if (v1)
  {
    sub_100019CCC(v2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = 0;
    sub_100164CE0();
    *(v0 + 96) = sub_1001F7C78();
    *(v0 + 104) = v6;
    sub_100026064(v2, &v9);
    sub_100164E2C();
    v7 = sub_100164CA0();
    v8(v7);
    sub_100019CCC(v2);
  }

  sub_100164DC8();
  sub_10001E868();
}

void sub_100162C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  a22 = v24;
  a23 = v25;
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8AB0, &qword_100211C00);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v26);
  sub_100164D2C();
  v27 = sub_100164348();
  sub_100164D0C(&_s10AdHocOfferC10CodingKeysON, v28, v27);
  v29 = *(v23 + 96);
  a13 = 0;

  sub_100164D50(v30, v31, &a13);
  if (v29)
  {
    v32 = sub_100164CB0();
    v33(v32);
  }

  else
  {

    sub_100164D98();
    sub_1001627B4();
    v34 = sub_100164CB0();
    v35(v34);
  }

  sub_100164E5C();
  sub_10001E868();
}

uint64_t sub_100162D6C(char a1)
{
  if (a1)
  {
    return 0x636E657265666572;
  }

  else
  {
    return 0x4449726566666FLL;
  }
}

uint64_t sub_100162DD4@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1001638C0();
  *a2 = result;
  return result;
}

uint64_t sub_100162E0C()
{
  v1 = sub_100056690();
  result = sub_100162D6C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100162E3C@<X0>(_BYTE *a3@<X8>)
{
  result = sub_1001638C0();
  *a3 = result;
  return result;
}

uint64_t sub_100162E6C(uint64_t a1)
{
  v2 = sub_100164348();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100162EA8(uint64_t a1)
{
  v2 = sub_100164348();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100162EF0()
{
  sub_100163A74();

  return swift_deallocClassInstance();
}

uint64_t sub_100162F48()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_100162F88();
  return v0;
}

void sub_100162F88()
{
  sub_10001E850();
  sub_100164CF4();
  sub_1000183C4(&qword_1002B8A98, &qword_100211BF8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_100164DD8();
  v4 = sub_1001641D4();
  sub_100164D74(&unk_10028F728, v5, v4);
  if (v1)
  {
    sub_100019CCC(v2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1000183C4(&qword_1002B8A80, &qword_100211BF0);
    sub_10016427C(&qword_1002B8AA0, sub_1001642F4, &protocol conformance descriptor for <> Set<A>);
    sub_1001F7CB8();
    *(v0 + 96) = v8;
    LOBYTE(v8) = 1;
    sub_100164CE0();
    *(v0 + 104) = sub_1001F7C88() & 1;
    sub_100026064(v2, &v8);
    sub_100164E2C();
    v6 = sub_100164CA0();
    v7(v6);
    sub_100019CCC(v2);
  }

  sub_100164DC8();
  sub_10001E868();
}

void sub_1001631B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001E850();
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8A70, &qword_100211BE8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v21);
  sub_100164D2C();
  v22 = sub_1001641D4();
  sub_100164D0C(&unk_10028F728, v23, v22);
  sub_1000183C4(&qword_1002B8A80, &qword_100211BF0);
  sub_10016427C(&qword_1002B8A88, sub_100164228, &protocol conformance descriptor for <> Set<A>);
  sub_1001F7DC8();
  if (!v20)
  {
    sub_1001F7D98();
    sub_100164D98();
    sub_1001627B4();
  }

  v24 = sub_100164CB0();
  v25(v24);
  sub_100164E5C();
  sub_10001E868();
}

uint64_t sub_10016333C()
{
  sub_100164DFC();
  v2._rawValue = &off_10027C948;
  v5._object = v0;
  sub_1001F7BD8(v2, v5);
  sub_1000DBF48();
  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100163384(char a1)
{
  if (a1)
  {
    return 0x616B636174537369;
  }

  else
  {
    return 0x6C69626967696C65;
  }
}

uint64_t sub_1001633F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016333C();
  *a1 = result;
  return result;
}

uint64_t sub_100163420()
{
  v1 = sub_100056690();
  result = sub_100163384(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_100163450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016333C();
  *a1 = result;
  return result;
}

uint64_t sub_100163478(uint64_t a1)
{
  v2 = sub_1001641D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001634B4(uint64_t a1)
{
  v2 = sub_1001641D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001634F8()
{
  sub_100161F5C();

  return v0;
}

uint64_t sub_100163524()
{
  sub_1001634F8();

  return swift_deallocClassInstance();
}

uint64_t sub_10016357C()
{
  sub_100164CD0();
  swift_allocObject();
  sub_100164CC0();
  sub_1001635BC();
  return v0;
}

void sub_1001635BC()
{
  sub_10001E850();
  sub_100164CF4();
  sub_1000183C4(&qword_1002B8A40, &qword_100211BD0);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v3);
  sub_100164DD8();
  v4 = sub_100164084();
  sub_100164D74(&_s12WinbackOfferC10CodingKeysON, v5, v4);
  if (v1)
  {
    sub_100019CCC(v2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100164CE0();
    *(v0 + 96) = sub_1001F7C78();
    *(v0 + 104) = v6;
    v9 = 1;
    sub_100164CE0();
    *(v0 + 112) = sub_1001F7C88() & 1;
    sub_100026064(v2, &v9);
    sub_100164E2C();
    v7 = sub_100164CA0();
    v8(v7);
    sub_100019CCC(v2);
  }

  sub_100164DC8();
  sub_10001E868();
}

void sub_10016377C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10001E850();
  a22 = v24;
  a23 = v25;
  sub_100164DA8();
  sub_1000183C4(&qword_1002B8A30, &qword_100211BC8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v26);
  sub_100164D2C();
  v27 = sub_100164084();
  sub_100164D0C(&_s12WinbackOfferC10CodingKeysON, v28, v27);
  v29 = *(v23 + 96);
  a13 = 0;

  sub_100164D50(v30, v31, &a13);
  if (v29)
  {
    v32 = sub_100164CB0();
    v33(v32);
  }

  else
  {

    sub_1001F7D98();
    sub_100164D98();
    sub_1001627B4();
    v34 = sub_100164CB0();
    v35(v34);
  }

  sub_100164E5C();
  sub_10001E868();
}

uint64_t sub_1001638C0()
{
  sub_100164DFC();
  v3._rawValue = v2;
  v6._object = v0;
  sub_1001F7BD8(v3, v6);
  sub_1000DBF48();
  if (v1 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100163904(char a1)
{
  if (a1)
  {
    return 0x626967696C457369;
  }

  else
  {
    return 0x4449726566666FLL;
  }
}

uint64_t sub_100163964@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001638C0();
  *a1 = result;
  return result;
}

uint64_t sub_10016399C()
{
  v1 = sub_100056690();
  result = sub_100163904(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1001639CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1001638C0();
  *a1 = result;
  return result;
}

uint64_t sub_1001639FC(uint64_t a1)
{
  v2 = sub_100164084();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100163A38(uint64_t a1)
{
  v2 = sub_100164084();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100163A74()
{
  sub_100161F5C();

  return v0;
}

uint64_t sub_100163AA0()
{
  sub_100163A74();

  return swift_deallocClassInstance();
}

_BYTE *sub_100163AF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100163BC4);
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

_BYTE *sub_100163BF8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100163CC4);
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

unint64_t sub_100163CFC()
{
  result = qword_1002B8A10;
  if (!qword_1002B8A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A10);
  }

  return result;
}

unint64_t sub_100163D54()
{
  result = qword_1002B8A18;
  if (!qword_1002B8A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A18);
  }

  return result;
}

uint64_t sub_100163DA8()
{
  sub_100164E48();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(v1 + 32) == *(v0 + 32) && v2 == v3;
    if (!v4 && (sub_1001F7EA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (*(v1 + 56))
  {
    if (!*(v0 + 56))
    {
      return 0;
    }
  }

  else
  {
    sub_100164E68();
    if (v5)
    {
      return 0;
    }
  }

  if ((sub_1000E9C84(*(v1 + 57)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 72);
  v7 = *(v0 + 72);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v1 + 64) == *(v0 + 64) && v6 == v7;
  if (!v8 && (sub_1001F7EA8() & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v9 = *(v1 + 96) == *(v0 + 96) && *(v1 + 104) == *(v0 + 104);
  if (!v9 && (sub_1001F7EA8() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 80) == *(v0 + 80) && *(v1 + 88) == *(v0 + 88))
  {
    return 1;
  }

  return sub_1001F7EA8();
}

uint64_t sub_100163EE0()
{
  sub_100164E48();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v4 = *(v1 + 32) == *(v0 + 32) && v2 == v3;
    if (!v4 && (sub_1001F7EA8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((*(v1 + 56) & 1) == 0)
  {
    sub_100164E68();
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!*(v0 + 56))
  {
    return 0;
  }

LABEL_14:
  if ((sub_1000E9C84(*(v1 + 57)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 72);
  v7 = *(v0 + 72);
  result = (v6 | v7) == 0;
  if (v6 && v7)
  {
    if (*(v1 + 64) == *(v0 + 64) && v6 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1001F7EA8();
    }
  }

  return result;
}

unint64_t sub_100163FDC()
{
  result = qword_1002B8A20;
  if (!qword_1002B8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A20);
  }

  return result;
}

unint64_t sub_100164030()
{
  result = qword_1002B8A28;
  if (!qword_1002B8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A28);
  }

  return result;
}

unint64_t sub_100164084()
{
  result = qword_1002B8A38;
  if (!qword_1002B8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A38);
  }

  return result;
}

unint64_t sub_1001640D8()
{
  result = qword_1002B8A50;
  if (!qword_1002B8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A50);
  }

  return result;
}

unint64_t sub_10016412C()
{
  result = qword_1002B8A60;
  if (!qword_1002B8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A60);
  }

  return result;
}

unint64_t sub_100164180()
{
  result = qword_1002B8A68;
  if (!qword_1002B8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A68);
  }

  return result;
}

unint64_t sub_1001641D4()
{
  result = qword_1002B8A78;
  if (!qword_1002B8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A78);
  }

  return result;
}

unint64_t sub_100164228()
{
  result = qword_1002B8A90;
  if (!qword_1002B8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8A90);
  }

  return result;
}

uint64_t sub_10016427C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100019BC4(&qword_1002B8A80, &qword_100211BF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001642F4()
{
  result = qword_1002B8AA8;
  if (!qword_1002B8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AA8);
  }

  return result;
}

unint64_t sub_100164348()
{
  result = qword_1002B8AB8;
  if (!qword_1002B8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AB8);
  }

  return result;
}

unint64_t sub_10016439C()
{
  result = qword_1002B8AD8;
  if (!qword_1002B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AD8);
  }

  return result;
}

uint64_t sub_1001643F0(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002AE9F0, &unk_1002076A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *_s8DiscountC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100164544);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s17ReferencableOfferC10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100164618);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_100164650(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10016471CLL);
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

unint64_t sub_100164758()
{
  result = qword_1002B8AE0;
  if (!qword_1002B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AE0);
  }

  return result;
}

unint64_t sub_1001647B0()
{
  result = qword_1002B8AE8;
  if (!qword_1002B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AE8);
  }

  return result;
}

unint64_t sub_100164808()
{
  result = qword_1002B8AF0;
  if (!qword_1002B8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AF0);
  }

  return result;
}

unint64_t sub_100164860()
{
  result = qword_1002B8AF8;
  if (!qword_1002B8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8AF8);
  }

  return result;
}

unint64_t sub_1001648B8()
{
  result = qword_1002B8B00;
  if (!qword_1002B8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B00);
  }

  return result;
}

unint64_t sub_100164910()
{
  result = qword_1002B8B08;
  if (!qword_1002B8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B08);
  }

  return result;
}

unint64_t sub_100164968()
{
  result = qword_1002B8B10;
  if (!qword_1002B8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B10);
  }

  return result;
}

unint64_t sub_1001649C0()
{
  result = qword_1002B8B18;
  if (!qword_1002B8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B18);
  }

  return result;
}

unint64_t sub_100164A18()
{
  result = qword_1002B8B20;
  if (!qword_1002B8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B20);
  }

  return result;
}

unint64_t sub_100164A70()
{
  result = qword_1002B8B28;
  if (!qword_1002B8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B28);
  }

  return result;
}

unint64_t sub_100164AC8()
{
  result = qword_1002B8B30;
  if (!qword_1002B8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B30);
  }

  return result;
}

unint64_t sub_100164B20()
{
  result = qword_1002B8B38;
  if (!qword_1002B8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B38);
  }

  return result;
}

unint64_t sub_100164B78()
{
  result = qword_1002B8B40;
  if (!qword_1002B8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B40);
  }

  return result;
}

unint64_t sub_100164BD0()
{
  result = qword_1002B8B48;
  if (!qword_1002B8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B48);
  }

  return result;
}

unint64_t sub_100164C28()
{
  result = qword_1002B8B50;
  if (!qword_1002B8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8B50);
  }

  return result;
}

uint64_t sub_100164D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8198();
}

uint64_t sub_100164D50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7D88();
}

uint64_t sub_100164D74(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8178();
}

uint64_t sub_100164E08(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F8178();
}

void sub_100164E2C()
{

  sub_100162628();
}

uint64_t sub_100164E7C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_10027A2D8;
  v7._object = a2;
  v4 = sub_1001F7BD8(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100164ED0(char a1)
{
  if (a1)
  {
    return 0x6C65636E6163;
  }

  else
  {
    return 7041889;
  }
}

uint64_t sub_100164F20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100164E7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100164F50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100164ED0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100164F7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1001F65B8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000183C4(&qword_1002B8C38, &unk_100212288);
  __chkstk_darwin(v5 - 8);
  sub_1000402A0(v28);
  memcpy(v26, v28, sizeof(v26));
  v6 = *(a1 + 96);

  v7 = sub_1001EA8E8();
  v8 = sub_1001F10F8(0x6E6F69746361, 0xE600000000000000, v6);
  v10 = v9;

  if (v10 && (v11 = sub_100164E7C(v8, v10), v11 != 2) && (v12 = v11, sub_1001F10F8(6580596, 0xE300000000000000, v7), v13))
  {
    sub_1001F65A8();
    sub_1001656AC();
    sub_1001F6118();
    sub_1001F7628();
    v15 = v27[0];
    v16 = sub_1001F10F8(6580578, 0xE300000000000000, v7);
    v18 = v17;

    if (v18)
    {
      v19 = *(a1 + 48);

      sub_1000E32F8(v19, v20);
      sub_1000402B8(a1);
      memcpy(v21, v20, sizeof(v21));
      debugOnly(_:)();
      memcpy(v22, v26, 0x139uLL);
      sub_10004BDE8(v22, &qword_1002ADF78, &qword_1002011D0);
      memcpy(v26, v21, sizeof(v26));
      LOBYTE(v23[0]) = v12;
      v23[1] = v15;
      v23[2] = v16;
      v23[3] = v18;
      memcpy(&v23[4], v21, 0x139uLL);
      memcpy(v24, v23, sizeof(v24));
      debugOnly(_:)();
      LOBYTE(v25[0]) = v12;
      v25[1] = v15;
      v25[2] = v16;
      v25[3] = v18;
      memcpy(&v25[4], v26, 0x139uLL);
      sub_100165700(v23, v27);
      sub_100165738(v25);
      memcpy(v27, v24, 0x159uLL);
      return memcpy(a2, v27, 0x159uLL);
    }
  }

  else
  {
  }

  sub_1000402B8(a1);
  memcpy(v25, v26, 0x139uLL);
  sub_10004BDE8(v25, &qword_1002ADF78, &qword_1002011D0);
  sub_1001656A4(v27);
  return memcpy(a2, v27, 0x159uLL);
}

__n128 sub_1001652E8@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  sub_1000593F4(a1, __dst);
  sub_100164F7C(v3, __src);
  memcpy(__dst, __src, 0x159uLL);
  if (sub_1000DA438(__dst) == 1)
  {
    sub_1000B738C(0x7571657220646142, 0xEB00000000747365, 6, v37);
    v5 = sub_1001659DC();
    v6 = sub_100021728(v5);
    v7 = v6;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v8 = 21;
LABEL_8:
    sub_10002170C(v6, v8);
    goto LABEL_12;
  }

  v9 = __dst[0];
  sub_10001AE68((v2 + 88), *(v2 + 112));
  v10 = sub_10008E840();
  if (!v10)
  {
    sub_10004BDE8(__src, &qword_1002B8C30, &unk_100212278);
    sub_1000B738C(0xD000000000000014, 0x800000010022A020, 6, v37);
    v15 = sub_1001659DC();
    v6 = sub_100021728(v15);
    v7 = v6;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    v8 = 25;
    goto LABEL_8;
  }

  v11 = v10;
  sub_100056A98(1, v27);
  v12 = v27[176];
  v13 = v29;
  v14 = v30;
  if (v9)
  {
    sub_10001AE68((v2 + 88), *(v2 + 112));
    if (sub_10008CBB0(v11) != 4)
    {

      sub_10004BDE8(__src, &qword_1002B8C30, &unk_100212278);
      v18 = type metadata accessor for HTTPResponseHead._Storage();
      v7 = sub_100021728(v18);
      v21 = 0u;
      *(v7 + 16) = 0u;
      sub_10002170C(v7, 49);
      memcpy(v37, v27, 0xB0uLL);
      sub_1001659B8();
      sub_100057E48(v37);
      v3 = 0;
      v16 = 0uLL;
      goto LABEL_12;
    }

    sub_10004BDE8(__src, &qword_1002B8C30, &unk_100212278);
    v36 = v13;
    sub_10004BDE8(&v36, &qword_1002AF480, &unk_1002087C0);
    v13 = 0;
    v14 = 1;
    v12 = 7;
  }

  else
  {
    sub_100165624(v11);
    sub_10004BDE8(__src, &qword_1002B8C30, &unk_100212278);
  }

  memcpy(v37, v27, 0xB0uLL);
  sub_1001659B8();
  sub_1001A7288(v31, v37, v3);
  v20 = v31[1];
  v21 = v31[0];
  v3 = v32 | ((v33 | (v34 << 16)) << 32);

  v17 = type metadata accessor for HTTPResponseHead._Storage();
  v7 = sub_100021728(v17);
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_10002170C(v7, 3);
  memcpy(v22, v27, 0xB0uLL);
  v22[176] = v12;
  *v23 = *v28;
  *&v23[15] = *&v28[15];
  v24 = v13;
  v25 = v14;
  sub_100057E48(v22);
  v16 = v20;
LABEL_12:
  *a2 = v7;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = 2;
  result = v21;
  *(a2 + 24) = v21;
  *(a2 + 40) = v16;
  *(a2 + 56) = v3;
  *(a2 + 62) = BYTE6(v3);
  *(a2 + 60) = WORD2(v3);
  return result;
}

uint64_t sub_100165624(void *a1)
{
  sub_1000C2320(0);
  sub_1000C23D8(4u);
  sub_10001AE68((v1 + 88), *(v1 + 112));
  return sub_10008EA08(a1, 1);
}

unint64_t sub_1001656AC()
{
  result = qword_1002B8C40;
  if (!qword_1002B8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8C40);
  }

  return result;
}

uint64_t sub_100165770(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 345))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1001657B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 345) = 1;
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

    *(result + 345) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AskToBuyPermissionRequest.Action(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100165928);
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

unint64_t sub_100165964()
{
  result = qword_1002B8C48;
  if (!qword_1002B8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8C48);
  }

  return result;
}

__n128 sub_1001659B8()
{
  LOBYTE(STACK[0x570]) = v3;
  result = *(v0 + 177);
  *&STACK[0x571] = result;
  STACK[0x580] = *(v0 + 192);
  STACK[0x588] = v1;
  LOBYTE(STACK[0x590]) = v2;
  return result;
}

uint64_t sub_1001659DC()
{

  return type metadata accessor for HTTPResponseHead._Storage();
}

uint64_t sub_100165A24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1001F6508();
    v9 = a1 + *(a3 + 40);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_100165AC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001F6508();
    v8 = v5 + *(a4 + 40);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AppTransaction(uint64_t a1)
{
  result = qword_1002B8CA8;
  if (!qword_1002B8CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100165B8C(uint64_t a1)
{
  result = sub_1001F6508();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100165C20(uint64_t a1)
{
  result = sub_100166940(&qword_1002B25A0, type metadata accessor for AppTransaction, &unk_1002124B8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100165C78(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027C9E8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100165CCC(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x5474706965636572;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x4474736575716572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100165E58(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B8D08, &qword_1002124E0);
  sub_10001A278();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1001668EC();
  sub_1001F8198();
  v11 = v3[2];
  v12 = v3[3];
  v47 = 0;
  sub_100166C6C(v11, v12, &v47);
  if (!v2)
  {
    v13 = v3[4];
    v14 = v3[5];
    v46 = 1;
    sub_100166C6C(v13, v14, &v46);
    v15 = v3[6];
    v16 = v3[7];
    v45 = 2;
    sub_100166C6C(v15, v16, &v45);
    v17 = type metadata accessor for AppTransaction(0);
    v18 = (v3 + v17[13]);
    v19 = *v18;
    v20 = v18[1];
    v44 = 3;
    sub_100166C6C(v19, v20, &v44);
    v21 = (v3 + v17[14]);
    v22 = *v21;
    v23 = v21[1];
    v43 = 4;
    sub_100166C6C(v22, v23, &v43);
    v24 = *v3;
    v25 = v3[1];
    v42 = 5;
    sub_100166C6C(v24, v25, &v42);
    v26 = v3[8];
    v27 = v3[9];
    v41 = 6;
    sub_100166C6C(v26, v27, &v41);
    v28 = v3[10];
    v29 = v3[11];
    v40 = 7;
    sub_100166C6C(v28, v29, &v40);
    v30 = v17[12];
    v39 = 8;
    sub_1001F6508();
    sub_100166C88();
    sub_100166940(v31, v32, &protocol conformance descriptor for Date);
    sub_100166CA0(v3 + v30, &v39);
    v33 = v17[10];
    v38 = 9;
    sub_100166CA0(v3 + v33, &v38);
    v34 = v17[11];
    v37 = 10;
    sub_100166CA0(v3 + v34, &v37);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1001660F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_1001F6508();
  sub_10001A278();
  v56 = v4;
  __chkstk_darwin(v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  sub_1000183C4(&qword_1002B8D18, &qword_1002124E8);
  sub_10001A278();
  v50 = v15;
  v51 = v14;
  __chkstk_darwin(v14);
  v17 = &v48 - v16;
  v57 = type metadata accessor for AppTransaction(0);
  __chkstk_darwin(v57);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 0x65646F6358;
  *(v19 + 1) = 0xE500000000000000;
  *(v19 + 6) = 48;
  *(v19 + 7) = 0xE100000000000000;
  *(v19 + 10) = 5459817;
  *(v19 + 11) = 0xE300000000000000;
  v20 = a1[3];
  v21 = a1[4];
  v54 = a1;
  v22 = sub_10001AE68(a1, v20);
  sub_1001668EC();
  v52 = v17;
  v23 = v53;
  sub_1001F8178();
  v55 = v3;
  if (!v23)
  {
    v53 = v10;
    v48 = v7;
    v24 = v50;
    v65 = 0;
    *(v19 + 2) = sub_1001F7C78();
    *(v19 + 3) = v25;
    v64 = 1;
    *(v19 + 4) = sub_1001F7C78();
    *(v19 + 5) = v26;
    v63 = 3;
    sub_100166CE0();
    v27 = sub_1001F7C78();
    v28 = v57;
    v29 = &v19[v57[13]];
    *v29 = v27;
    v29[1] = v30;
    v62 = 4;
    sub_100166CE0();
    v31 = sub_1001F7C78();
    v32 = &v19[v28[14]];
    *v32 = v31;
    v32[1] = v33;
    v61 = 6;
    *(v19 + 8) = sub_1001F7C78();
    *(v19 + 9) = v34;
    v60 = 8;
    sub_100166C88();
    sub_100166940(v35, v36, &protocol conformance descriptor for Date);
    sub_100166CE0();
    sub_1001F7CB8();
    v37 = v3;
    v38 = *(v56 + 32);
    v38(&v19[v57[12]], v13, v37);
    v59 = 9;
    sub_100166CE0();
    sub_1001F7CB8();
    v39 = sub_100166CEC(v57[10]);
    (v38)(v39);
    v58 = 10;
    v40 = v52;
    sub_1001F7CB8();
    (*(v24 + 8))(v40, v51);
    v47 = sub_100166CEC(v57[11]);
    (v38)(v47);
    sub_100166988(v19, v49);
    sub_100019CCC(v54);
    return sub_1001669EC(v19);
  }

  sub_100166C54();
  result = sub_100019CCC(v54);
  if (v21)
  {
  }

  v42 = v57;
  if (v20)
  {
    v43 = sub_100166CEC(v57[10]);
    result = v44(v43);
    if (!v22)
    {
LABEL_8:
      if (!v17)
      {
        goto LABEL_9;
      }

LABEL_13:

      if (!v3)
      {
        return result;
      }
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  v45 = sub_100166CEC(v42[12]);
  result = v46(v45);
  if (v17)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v3)
  {
  }

  return result;
}

unint64_t sub_1001667A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100165C78(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1001667D4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100165CCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10016681C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100166844(uint64_t a1)
{
  v2 = sub_1001668EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100166880(uint64_t a1)
{
  v2 = sub_1001668EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1001668EC()
{
  result = qword_1002B8D10;
  if (!qword_1002B8D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D10);
  }

  return result;
}

uint64_t sub_100166940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100166988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppTransaction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001669EC(uint64_t a1)
{
  v2 = type metadata accessor for AppTransaction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AppTransaction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x100166B14);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100166B50()
{
  result = qword_1002B8D20;
  if (!qword_1002B8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D20);
  }

  return result;
}

unint64_t sub_100166BA8()
{
  result = qword_1002B8D28;
  if (!qword_1002B8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D28);
  }

  return result;
}

unint64_t sub_100166C00()
{
  result = qword_1002B8D30;
  if (!qword_1002B8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D30);
  }

  return result;
}

uint64_t sub_100166C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1001F7D88();
}

uint64_t sub_100166CA0(uint64_t a1, uint64_t a2)
{

  return sub_1001F7DC8();
}

BOOL static NIONetworkInterface.== infix(_:_:)(uint64_t a1)
{
  sub_100168484(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1001F7EA8() & 1) == 0 || !static SocketAddress.== infix(_:_:)(v2[4], v1[4]))
  {
    return 0;
  }

  v6 = v2[5];
  v7 = v1[5];
  sub_1001684BC();
  if (v5)
  {
    if (v9 != v8)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v8)
    {
      return 0;
    }

    v10 = static SocketAddress.== infix(_:_:)(v6, v7);
    sub_10002D83C(v7);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = v2[6];
  v12 = v1[6];
  sub_1001684BC();
  if (v5)
  {
    if (v14 != v13)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v13)
    {
      return 0;
    }

    v15 = static SocketAddress.== infix(_:_:)(v11, v12);
    sub_10002D83C(v12);
    if (!v15)
    {
      return 0;
    }
  }

  v16 = v2[7];
  v17 = v1[7];
  sub_1001684BC();
  if (v5)
  {
    if (v19 == v18)
    {
      return sub_100168520();
    }
  }

  else if (v19 != v18)
  {

    v20 = static SocketAddress.== infix(_:_:)(v16, v17);
    sub_10002D83C(v17);
    if (v20)
    {
      return sub_100168520();
    }
  }

  return 0;
}

uint64_t NIONetworkInterface.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NIONetworkInterface.address.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_100166F00(uint64_t result)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = result;
    *(v1 + 16) = sub_1001F6CC8();
    *(v1 + 24) = v4;
    v5 = *(v3 + 24);
    if (!v5 || (v6 = sub_1000E28D0(v5), (~v6 & 0xF000000000000007) == 0))
    {

      sub_100168540();
      return 0;
    }

    v7 = v6;
    *(v1 + 32) = v6;
    v8 = *(v3 + 32);
    if (v8)
    {

      *(v1 + 40) = sub_1000E28D0(v8);
      v9 = *(v3 + 16);
      if ((v9 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *(v1 + 40) = 0xF000000000000007;
      v9 = *(v3 + 16);
      if ((v9 & 2) == 0)
      {

        goto LABEL_14;
      }
    }

    v10 = *(v3 + 40);
    if (v10)
    {
      *(v1 + 48) = sub_1000E28D0(v10);
      *(v1 + 56) = 0xF000000000000007;
      if ((v9 & 0x8000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_14:
    if ((v9 & 0x10) != 0)
    {
      v12 = *(v3 + 40);
      if (v12)
      {
        *(v1 + 48) = 0xF000000000000007;
        *(v1 + 56) = sub_1000E28D0(v12);
        if ((v9 & 0x8000) == 0)
        {
          goto LABEL_19;
        }

LABEL_13:
        v11 = 1;
LABEL_20:
        *(v1 + 64) = v11;
        v13 = sub_1000275D0(v2);
        sub_10002D83C(v7);
        *(v1 + 72) = v13;
        return v1;
      }
    }

    *(v1 + 48) = vdupq_n_s64(0xF000000000000007);
    if ((v9 & 0x8000) != 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t NIONetworkInterface.deinit()
{

  sub_1001684CC();
  return v0;
}

uint64_t NIONetworkInterface.__deallocating_deinit()
{
  NIONetworkInterface.deinit();
  sub_1001683A4();

  return swift_deallocClassInstance();
}

uint64_t NIONetworkInterface.debugDescription.getter()
{
  v1 = 0xE000000000000000;
  sub_1001F77B8(24);

  sub_1001F6CA8(v0[1]);
  v9._countAndFlagsBits = sub_10016850C();
  v9._object = 0xEA00000000002073;
  sub_1001F6CA8(v9);
  v10._countAndFlagsBits = SocketAddress.description.getter(v0[2]._countAndFlagsBits);
  sub_1001F6CA8(v10);

  if ((~v0[2]._object & 0xF000000000000007) != 0)
  {
    sub_1001684A0();
    v7 = v3;
    v8 = v4;
    v11._countAndFlagsBits = SocketAddress.description.getter(v5);
    sub_1001F6CA8(v11);

    v2 = v7;
    v1 = v8;
  }

  else
  {
    v2 = 0;
  }

  v12._countAndFlagsBits = v2;
  v12._object = v1;
  sub_1001F6CA8(v12);

  return 0x6361667265746E49;
}

uint64_t NIONetworkDevice.name.getter(uint64_t a1)
{
  v1 = *(a1 + 16);

  return v1;
}

uint64_t NIONetworkDevice.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v7 = sub_1001683B0();
    *v3 = v7;
  }

  v7[1].i64[0] = a1;
  v7[1].i64[1] = a2;
}

uint64_t (*NIONetworkDevice.name.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v3;

  return sub_10016737C;
}

uint64_t sub_10016737C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {

    NIONetworkDevice.name.setter(v3, v2);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for NIONetworkDevice.Backing();
      sub_1001683A4();
      swift_allocObject();
      v6 = sub_1001683B0();
      *v4 = v6;
    }

    v6[1].i64[0] = v3;
    v6[1].i64[1] = v2;
  }
}

uint64_t NIONetworkDevice.address.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 32) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.address.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 32);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t NIONetworkDevice.netmask.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 40) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.netmask.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 40);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t NIONetworkDevice.broadcastAddress.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 48) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.broadcastAddress.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 48);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t NIONetworkDevice.pointToPointDestinationAddress.setter()
{
  v2 = sub_10016842C();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    sub_100168478(v4);
  }

  *(v3 + 56) = v0;
  v5 = sub_1001683CC();

  return sub_10002D83C(v5);
}

uint64_t NIONetworkDevice.pointToPointDestinationAddress.modify(uint64_t a1)
{
  sub_10016841C(a1);
  v3 = *(v2 + 56);
  *v1 = v3;
  sub_10002D824(v3);
  return sub_100168534();
}

uint64_t sub_1001677A4(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  sub_10002D824(*a1);
  a3(v4);

  return sub_10002D83C(v4);
}

uint64_t NIONetworkDevice.multicastSupported.setter(char a1)
{
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v5 = sub_1001683B0();
    result = sub_100168478(v5);
  }

  *(v4 + 64) = a1 & 1;
  return result;
}

uint64_t (*NIONetworkDevice.multicastSupported.modify(uint64_t a1))(uint64_t **a1)
{
  *a1 = v1;
  *(a1 + 8) = *(*v1 + 64);
  return sub_1001678AC;
}

uint64_t sub_1001678AC(uint64_t **a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    result = sub_100167CD4(v4);
    v4 = result;
    *v1 = result;
  }

  *(v4 + 64) = v2;
  return result;
}

uint64_t NIONetworkDevice.interfaceIndex.setter()
{
  result = sub_10016842C();
  v3 = *v1;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    v4 = sub_1001683B0();
    result = sub_100168478(v4);
  }

  *(v3 + 72) = v0;
  return result;
}

uint64_t (*NIONetworkDevice.interfaceIndex.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = *(*v1 + 72);
  return sub_100167994;
}

uint64_t sub_100167994(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v2;
  if ((result & 1) == 0)
  {
    type metadata accessor for NIONetworkDevice.Backing();
    sub_1001683A4();
    swift_allocObject();
    result = sub_100167CD4(v4);
    v4 = result;
    *v2 = result;
  }

  *(v4 + 72) = v1;
  return result;
}

uint64_t NIONetworkDevice.init(_:)(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = *(a1 + 64);
  v6 = a1[9];
  type metadata accessor for NIONetworkDevice.Backing();
  sub_1001683A4();
  swift_allocObject();

  sub_10002D824(v2);
  sub_10002D824(v3);
  sub_10002D824(v4);
  v7 = sub_10012F398();
  v9 = sub_100167D88(v7, v8, v1, v2, v3, v4, v5, v6);

  return v9;
}

uint64_t NIONetworkDevice.init(name:address:netmask:broadcastAddress:pointToPointDestinationAddress:multicastSupported:interfaceIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  type metadata accessor for NIONetworkDevice.Backing();
  sub_1001683A4();
  swift_allocObject();
  return sub_100167D88(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100167B48(uint64_t result)
{
  v2 = vdupq_n_s64(0xF000000000000007);
  *(v1 + 32) = v2;
  *(v1 + 48) = v2;
  v3 = *(result + 8);
  if (v3)
  {
    v4 = result;
    *(v1 + 16) = sub_1001F6CC8();
    *(v1 + 24) = v5;
    v6 = *(v4 + 24);
    if (v6)
    {
      v7 = sub_1000E28D0(v6);
    }

    else
    {
      v7 = 0xF000000000000007;
    }

    v8 = *(v1 + 32);
    *(v1 + 32) = v7;
    sub_10002D83C(v8);
    v9 = *(v4 + 32);
    if (v9)
    {
      v10 = sub_1000E28D0(v9);
    }

    else
    {
      v10 = 0xF000000000000007;
    }

    v11 = *(v1 + 40);
    *(v1 + 40) = v10;
    sub_10002D83C(v11);
    v12 = *(v4 + 16);
    if ((v12 & 2) != 0 && (v13 = *(v4 + 40)) != 0)
    {
      v14 = sub_1000E28D0(v13);
      v15 = *(v1 + 48);
      *(v1 + 48) = v14;
      sub_10002D83C(v15);
      v16 = 0xF000000000000007;
    }

    else if ((v12 & 0x10) != 0 && (v17 = *(v4 + 40)) != 0)
    {
      v18 = *(v1 + 48);
      *(v1 + 48) = 0xF000000000000007;
      sub_10002D83C(v18);
      v16 = sub_1000E28D0(v17);
    }

    else
    {
      v19 = *(v1 + 48);
      v16 = 0xF000000000000007;
      *(v1 + 48) = 0xF000000000000007;
      sub_10002D83C(v19);
    }

    v20 = *(v1 + 56);
    *(v1 + 56) = v16;
    sub_10002D83C(v20);
    *(v1 + 64) = (v12 & 0x8000) != 0;
    *(v1 + 72) = sub_1000275D0(v3);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t *sub_100167CD4(uint64_t a1)
{
  v3 = vdupq_n_s64(0xF000000000000007);
  v1[2] = v3;
  v1[3] = v3;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v1[1].i64[0] = v5;
  v1[1].i64[1] = v4;
  v6 = *(a1 + 32);
  v1[2].i64[0] = v6;
  v7 = *(a1 + 40);
  v1[2].i64[1] = v7;
  v8 = *(a1 + 48);
  v1[3].i64[0] = v8;

  sub_10002D824(v6);
  sub_10002D824(v7);
  sub_10002D824(v8);
  sub_10002D83C(0xF000000000000007);
  v9 = *(a1 + 56);
  v10 = v1[3].i64[1];
  v1[3].i64[1] = v9;
  sub_10002D824(v9);
  sub_10002D83C(v10);
  v1[4].i8[0] = *(a1 + 64);
  v11 = *(a1 + 72);

  v1[4].i64[1] = v11;
  return v1;
}

uint64_t sub_100167D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = 0xF000000000000007;
  sub_10002D824(a5);
  sub_10002D83C(0xF000000000000007);
  sub_10002D83C(a5);
  v13 = *(v8 + 56);
  *(v8 + 56) = a6;
  sub_10002D824(a6);
  sub_10002D83C(v13);
  sub_10002D83C(a6);
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  return v8;
}

uint64_t *sub_100167E18()
{

  sub_10002D83C(v0[4]);
  sub_10002D83C(v0[5]);
  sub_10002D83C(v0[6]);
  sub_10002D83C(v0[7]);
  return v0;
}

uint64_t sub_100167E58()
{
  sub_100167E18();

  return swift_deallocClassInstance();
}

uint64_t NIONetworkDevice.debugDescription.getter(void *a1)
{
  v2 = 0xE000000000000000;
  sub_1001F77B8(21);

  v3 = a1[2];
  v4 = a1[3];

  v13._countAndFlagsBits = v3;
  v13._object = v4;
  sub_1001F6CA8(v13);

  v14._countAndFlagsBits = sub_10016850C();
  v14._object = 0xEA00000000002073;
  sub_1001F6CA8(v14);
  sub_10002D824(a1[4]);
  sub_1000183C4(&qword_1002B2D30, &unk_100209130);
  v15._countAndFlagsBits = sub_1001F6BA8();
  sub_1001F6CA8(v15);

  v5 = a1[5];
  sub_100168500();
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    sub_1001684A0();
    v11 = v7;
    v12 = v8;

    v16._countAndFlagsBits = SocketAddress.description.getter(v5);
    sub_1001F6CA8(v16);

    sub_10002D83C(v5);
    v9 = v11;
    v2 = v12;
  }

  v17._countAndFlagsBits = v9;
  v17._object = v2;
  sub_1001F6CA8(v17);

  return 0x20656369766544;
}

BOOL static NIONetworkDevice.== infix(_:_:)(uint64_t a1)
{
  sub_100168484(a1);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1001F7EA8() & 1) == 0)
  {
    return 0;
  }

  sub_1001683F0();
  if (v4)
  {
    if (v6 != v5)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == v5)
    {
      return 0;
    }

    sub_10016836C();
    sub_100168448();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001683F0();
  if (v4)
  {
    if (v8 != v7)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v7)
    {
      return 0;
    }

    sub_10016836C();
    sub_100168448();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001683F0();
  if (v4)
  {
    if (v10 != v9)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v9)
    {
      return 0;
    }

    sub_10016836C();
    sub_100168448();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001683F0();
  if (v4)
  {
    if (v12 == v11)
    {
      return sub_100168520();
    }
  }

  else if (v12 != v11)
  {
    sub_10016836C();
    sub_100168448();
    if (v1)
    {
      return sub_100168520();
    }
  }

  return 0;
}

void NIONetworkDevice.hash(into:)(uint64_t a1, void *a2)
{

  sub_10012F398();
  sub_1001F6C28();

  v3 = a2[4];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v5 = sub_10012F398();
    SocketAddress.hash(into:)(v5, v6);
    sub_10002D83C(v3);
  }

  v7 = a2[5];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v8 = sub_10012F398();
    SocketAddress.hash(into:)(v8, v9);
    sub_10002D83C(v7);
  }

  v10 = a2[6];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v11 = sub_10012F398();
    SocketAddress.hash(into:)(v11, v12);
    sub_10002D83C(v10);
  }

  v13 = a2[7];
  sub_100168500();
  if (v4)
  {
    sub_1001F8098(0);
  }

  else
  {
    sub_1001F8098(1u);

    v14 = sub_10012F398();
    SocketAddress.hash(into:)(v14, v15);
    sub_10002D83C(v13);
  }

  sub_1001F8088(a2[9]);
}

Swift::Int NIONetworkDevice.hashValue.getter(void *a1)
{
  sub_1001F8068();
  NIONetworkDevice.hash(into:)(v3, a1);
  return sub_1001F80D8();
}

Swift::Int sub_10016829C()
{
  v1 = *v0;
  sub_1001F8068();
  NIONetworkDevice.hash(into:)(v3, v1);
  return sub_1001F80D8();
}

unint64_t sub_1001682E4()
{
  result = qword_1002B8D38;
  if (!qword_1002B8D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8D38);
  }

  return result;
}

BOOL sub_10016836C()
{
  sub_10002D824(v1);
  sub_10002D824(v0);

  return static SocketAddress.== infix(_:_:)(v0, v1);
}

int64x2_t *sub_1001683B0()
{

  return sub_100167CD4(v0);
}

uint64_t sub_1001683CC()
{
  sub_10002D824(v0);
  sub_10002D83C(v1);
  return v0;
}

uint64_t sub_10016842C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_100168448()
{
  sub_10002D83C(v1);

  return sub_10002D83C(v0);
}

uint64_t sub_1001684CC()
{
  sub_10002D83C(v0[5]);
  sub_10002D83C(v0[6]);
  v1 = v0[7];

  return sub_10002D83C(v1);
}

uint64_t sub_100168540()
{

  return swift_deallocPartialClassInstance();
}

uint64_t ByteBuffer.writeLengthPrefixed<A>(endianness:as:writeMessage:)(int a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v39 = a3;
  v38 = a4;
  v37 = sub_1001F74B8();
  sub_10002DFFC();
  v33 = v10;
  sub_10001E844();
  __chkstk_darwin(v11);
  v36 = &v31 - v12;
  sub_10002DFFC();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  v31 = *(v6 + 12);
  v21 = *(*(a6 + 8) + 24);
  sub_1001F7AF8();
  v34 = a1;
  v35 = a6;
  v22 = ByteBuffer.writeInteger<A>(_:endianness:as:)(v20, a1 & 1, a5, a5);
  v32 = v14;
  v23 = *(v14 + 8);
  v24 = sub_10016932C();
  (v23)(v24);
  v25 = v40;
  result = v39(v6);
  if (v25)
  {
    return v22;
  }

  v39 = v6;
  v40 = v21;
  v38 = v23;
  v27 = v36;
  v28 = v37;
  v29 = __OFADD__(v22, result);
  v22 += result;
  if (!v29)
  {
    v41 = result;
    sub_1000DD154();
    sub_100169304();
    sub_1001F70E8();
    if (sub_10001C990(v27, 1, a5) == 1)
    {
      (*(v33 + 8))(v27, v28);
      sub_100168850();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }

    else
    {
      (*(v32 + 32))(v17, v27, a5);
      ByteBuffer.setInteger<A>(_:at:endianness:as:)(v17, v31, v34 & 1, a5, a5);
      v38(v17, a5);
    }

    return v22;
  }

  __break(1u);
  return result;
}

unint64_t sub_100168850()
{
  result = qword_1002B8EF0;
  if (!qword_1002B8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8EF0);
  }

  return result;
}

uint64_t ByteBuffer.readLengthPrefixed<A, B>(endianness:as:readMessage:)@<X0>(char a1@<W0>, void (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X6>)
{
  v23[1] = a3;
  v24 = a2;
  v13 = sub_1001F74B8();
  sub_10002DFFC();
  v23[0] = v14;
  sub_10001E844();
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  if (ByteBuffer.readLengthPrefixedSlice<A>(endianness:as:)(a1 & 1, v18, a6, a7))
  {
    v24();
    if (v7)
    {
    }

    if (sub_10001C990(v17, 1, a4) == 1)
    {
      (*(v23[0] + 8))(v17, v13);
      sub_100168850();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
    }

    (*(*(a4 - 8) + 32))(a5, v17, a4);
    v21 = a5;
    v22 = 0;
  }

  else
  {
    v21 = a5;
    v22 = 1;
  }

  return sub_100018460(v21, v22, 1, a4);
}

uint64_t ByteBuffer.readLengthPrefixedSlice<A>(endianness:as:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = ByteBuffer.getLengthPrefixedSlice<A>(at:endianness:as:)(*(v4 + 8), a1 & 1, a3, *v4, *(v4 + 8) | (*(v4 + 12) << 32), *(v4 + 16) | (*(v4 + 20) << 32) | (*(v4 + 22) << 48), a3, a4);
  if (result)
  {
    v10[0] = result;
    v10[1] = v7;
    v11 = v8;
    v12 = WORD2(v8);
    v13 = BYTE6(v8);
    sub_1001690D8(v10, v4, a3, &v9);

    return v9;
  }

  return result;
}

uint64_t ByteBuffer.getLengthPrefixedSlice<A>(at:endianness:as:)(uint64_t a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v53) = a2;
  v54 = a1;
  v52 = *(a8 + 8);
  v46[2] = *(*(v52 + 24) + 16);
  v46[1] = swift_getAssociatedTypeWitness();
  sub_10001E844();
  __chkstk_darwin(v12);
  v46[0] = v46 - v13;
  v51 = sub_1001F74B8();
  sub_10002DFFC();
  v15 = v14;
  sub_10001E844();
  __chkstk_darwin(v16);
  v18 = v46 - v17;
  sub_10002DFFC();
  v20 = v19;
  __chkstk_darwin(v21);
  v47 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v46 - v24;
  v50 = v26;
  __chkstk_darwin(v27);
  v29 = v46 - v28;
  v48 = a6;
  v49 = a4;
  v30 = a6;
  v31 = v54;
  v53 = a5;
  ByteBuffer.getInteger<A>(at:endianness:as:)(v54, a4, a5, v30, a7, v18);
  if (sub_10001C990(v18, 1, a7) == 1)
  {
    (*(v15 + 8))(v18, v51);
    return 0;
  }

  (*(v20 + 32))(v29, v18, a7);
  (*(v20 + 16))(v25, v29, a7);
  v32 = v20;
  if (sub_1001F76A8())
  {
    sub_1001692E8();
    if (sub_1001F7698() >= 65)
    {
      v55 = 0x8000000000000000;
      v33 = a7;
      sub_1001692F8();
      if (sub_1001F76A8())
      {
        sub_1001692E8();
        if (sub_1001F7698() < 64)
        {
LABEL_15:
          sub_1001692E8();
          sub_1001F7688();
          goto LABEL_16;
        }
      }

      else
      {
        v33 = a7;
        sub_1001692F8();
        v20 = sub_1001F76A8();
        sub_1001692E8();
        v34 = sub_1001F7698();
        if ((v20 & 1) == 0)
        {
          if (v34 >= 64)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v34 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          sub_1001F7F88();
          v36 = v47;
          sub_1001F7E88();
          v37 = sub_1001F6A78();
          v20 = *(v32 + 8);
          (v20)(v36, a7);
          if (v37)
          {
            goto LABEL_20;
          }

          goto LABEL_15;
        }
      }

      sub_1000DD154();
      sub_100169304();
      sub_1001F7638();
      sub_1001F6A78();
      v35 = sub_100169314();
      (v20)(v35);
      if (v33)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_16:
  sub_1001692E8();
  if (sub_1001F7698() > 64 || (sub_1001692E8(), sub_1001F7698() == 64) && (sub_1001692F8(), (sub_1001F76A8() & 1) == 0))
  {
    v55 = 0x7FFFFFFFFFFFFFFFLL;
    sub_1001692F8();
    v20 = sub_1001F76A8();
    sub_1001692E8();
    v38 = sub_1001F7698();
    if (v20)
    {
      if (v38 > 64)
      {
        goto LABEL_19;
      }
    }

    else if (v38 > 63)
    {
LABEL_19:
      sub_1000DD154();
      sub_100169304();
      sub_1001F7638();
      sub_1001F6A78();
      v39 = sub_100169314();
      (v20)(v39);
      if ((a7 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_20:
      v40 = sub_10016932C();
      (v20)(v40);
      (v20)(v29, a7);
      return 0;
    }

    sub_1001692E8();
    sub_1001F7688();
  }

LABEL_26:
  sub_1001692E8();
  v41 = sub_1001F7688();
  v42 = *(v32 + 8);
  v43 = sub_10016932C();
  v42(v43);
  result = v31 + v50;
  if (!__OFADD__(v31, v50))
  {
    v45 = ByteBuffer.getSlice(at:length:)(result, v41, v49, v53, v48 & 0xFFFFFFFFFFFFFFLL);
    (v42)(v29, a7);
    if (v45)
    {
      return v45;
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1001690D8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(result + 2);
  v5 = *(result + 12);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *(*(a3 - 8) + 64);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = *(a2 + 8);
  v11 = __CFADD__(v10, v9);
  v12 = v10 + v9;
  if (!v11)
  {
    v13 = *result;
    v14 = *(result + 10);
    v15 = *(result + 22);
    *(a2 + 8) = v12;
    *a4 = v13;
    *(a4 + 8) = v4;
    *(a4 + 12) = v5;
    *(a4 + 20) = v14;
    *(a4 + 22) = v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

_BYTE *sub_100169188(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100169254);
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

unint64_t sub_100169290()
{
  result = qword_1002B8EF8;
  if (!qword_1002B8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8EF8);
  }

  return result;
}

uint64_t sub_100169338(uint64_t a1, unint64_t a2)
{
  v4 = sub_1001F6F88();
  *(v4 + 16) = 32;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  v7 = v4;
  sub_100040C70(a1, a2);
  sub_100169440(a1, a2, a1, a2, &v7);
  v5 = v7;

  return sub_10014172C(v5);
}

unint64_t sub_1001693CC(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1001F63E8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (!HIDWORD(result))
    {
      sub_1001B91F0(0);
      return CC_SHA256(a1, v8, (*a5 + 32));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100169440(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_100040C70(a3, a4);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v17 = sub_1001F6058();
      if (!v17)
      {
        goto LABEL_14;
      }

      v21 = sub_1001F6078();
      if (__OFSUB__(a1, v21))
      {
LABEL_26:
        __break(1u);
      }

      v17 += a1 - v21;
LABEL_14:
      v20 = (a1 >> 32) - a1;
LABEL_15:
      v22 = sub_1001F6068();
      if (v22 >= v20)
      {
        v23 = v20;
      }

      else
      {
        v23 = v22;
      }

      v24 = (v23 + v17);
      if (v17)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      v11 = v17;
      v12 = a3;
      v13 = a4;
      v14 = a5;
LABEL_22:
      sub_1001693CC(v11, v10, v12, v13, v14);
LABEL_23:
      sub_10003A380(a3, a4);
      return sub_10003A380(a3, a4);
    case 2uLL:
      v16 = *(a1 + 16);
      v15 = *(a1 + 24);
      v17 = sub_1001F6058();
      if (!v17)
      {
        goto LABEL_6;
      }

      v18 = sub_1001F6078();
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_25;
      }

      v17 += v16 - v18;
LABEL_6:
      v19 = __OFSUB__(v15, v16);
      v20 = v15 - v16;
      if (!v19)
      {
        goto LABEL_15;
      }

      __break(1u);
LABEL_9:
      sub_100040C70(a3, a4);
      sub_1001696A4(0, 0, a3, a4, a5);
      goto LABEL_23;
    case 3uLL:
      goto LABEL_9;
    default:
      v26 = a1;
      v27 = a2;
      v28 = BYTE2(a2);
      v29 = BYTE3(a2);
      v30 = BYTE4(a2);
      v31 = BYTE5(a2);
      v10 = &v26 + BYTE6(a2);
      v11 = &v26;
      v12 = a3;
      v13 = a4;
      v14 = a5;
      goto LABEL_22;
  }
}

uint64_t sub_1001696A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  sub_1001693CC(&v8, &v8 + BYTE6(a2), a3, a4, a5);
  return sub_10003A380(a3, a4);
}

uint64_t static _IntegerBitPacking.packUU<A, B, C>(_:_:type:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34[1] = a5;
  v35 = a1;
  v37 = a6;
  v36 = a7;
  sub_10002DFFC();
  v34[0] = v11;
  __chkstk_darwin(v12);
  sub_100023510();
  v15 = v14 - v13;
  sub_10002DFFC();
  __chkstk_darwin(v16);
  sub_100023510();
  v19 = v18 - v17;
  sub_10002DFFC();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = __chkstk_darwin(v26);
  v29 = v34 - v28;
  (*(v30 + 16))(v19, v27);
  sub_1001F76C8();
  (*(v34[0] + 16))(v15, v35, a3);
  sub_1001F76C8();
  v38 = sub_1001F7A38();
  sub_1000DD154();
  sub_1001F7678();
  sub_1001F7658();
  v31 = *(v21 + 8);
  v31(v24, a4);
  v32 = sub_1000D4A80();
  (v31)(v32);
  return (v31)(v29, a4);
}

uint64_t static _IntegerBitPacking.unpackUU<A, B, C>(_:leftType:rightType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v42 = a1;
  v43 = a2;
  v39 = a13;
  v40 = a3;
  __chkstk_darwin(a1);
  sub_100023510();
  v38[1] = v15 - v14;
  __chkstk_darwin(v16);
  sub_100023510();
  sub_10002DFFC();
  v41 = v17;
  __chkstk_darwin(v18);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v45 = v38 - v22;
  __chkstk_darwin(v23);
  v38[0] = v38 - v24;
  __chkstk_darwin(v25);
  v44 = v38 - v26;
  __chkstk_darwin(v27);
  v46 = v38 - v28;
  v38[3] = v29;
  sub_1001F7A68();
  v38[4] = *(a11 + 8);
  sub_1001F76C8();
  v30 = v39;
  sub_1001F7A68();
  v38[2] = *(v30 + 8);
  sub_1001F76C8();
  sub_1001F7648();
  v47 = sub_1001F7A38();
  sub_1000DD154();
  sub_1001F7668();
  v31 = v45;
  sub_1001F7648();
  v32 = v41;
  v33 = *(v41 + 8);
  v34 = sub_1000D4A80();
  v33(v34);
  v35 = *(v32 + 16);
  v35(v20, v31, a6);
  sub_1000D4A80();
  sub_1001F76C8();
  v36 = v38[0];
  v35(v20, v38[0], a6);
  sub_1000D4A80();
  sub_1001F76C8();
  (v33)(v45, a6);
  (v33)(v36, a6);
  (v33)(v44, a6);
  return (v33)(v46, a6);
}

ASOctaneSupportXPCService::_UInt24 __swiftcall _UInt24.init(_:)(Swift::UInt32 a1)
{
  v1 = a1 >> 8;
  result._backing._0 = v1;
  return result;
}

void Array<A>.init(buffer:)(int a1, Swift::Int at)
{
  v2 = at;
  v3 = HIDWORD(at) >= at;
  v4 = (HIDWORD(at) - at);
  if (v3)
  {
    if (ByteBuffer.getBytes(at:length:)(v2, v4))
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void String.init(buffer:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (HIDWORD(a2) < a2)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    sub_1001F6C08();
  }
}

void DispatchData.init(buffer:)(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v20 = a2;
  v3 = HIDWORD(a1);
  v4 = sub_1001F67A8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000183C4(&qword_1002B10A0, &qword_100206A98);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  __chkstk_darwin(v14);
  v16 = &v19 - v15;
  if (v3 < v2)
  {
    __break(1u);
  }

  else
  {
    ByteBuffer.getDispatchData(at:length:)(v2, v3 - v2);
    sub_10007DFD4(v13, v10);
    v17 = 1;
    if (sub_10001C990(v10, 1, v4) != 1)
    {
      v18 = *(v5 + 32);
      v18(v7, v10, v4);
      v18(v16, v7, v4);
      v17 = 0;
    }

    sub_100018460(v16, v17, 1, v4);
    sub_10007E044(v13);
    if (sub_10001C990(v16, 1, v4) != 1)
    {

      (*(v5 + 32))(v20, v16, v4);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10016A174(unsigned __int8 a1)
{
  v3 = type metadata accessor for PurchaseConfiguration(0);
  v4 = *(v1 + *(v3 + 44));
  if (v4 == 3)
  {
    return 0;
  }

  v5 = (v1 + *(v3 + 40));
  if (!v5[1] || v4 != a1)
  {
    return 0;
  }

  v7 = *v5;

  return v7;
}

uint64_t sub_10016A214(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F69746F6D6F7270 && a2 == 0xEB000000006C616ELL;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701080931 && a2 == 0xE400000000000000;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B6361626E6977 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1001F7EA8();

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

uint64_t sub_10016A328(char a1)
{
  if (!a1)
  {
    return 0x6F69746F6D6F7270;
  }

  if (a1 == 1)
  {
    return 1701080931;
  }

  return 0x6B6361626E6977;
}

uint64_t type metadata accessor for PurchaseConfiguration(uint64_t a1)
{
  result = qword_1002B8F58;
  if (!qword_1002B8F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016A3E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
      v10 = *(a3 + 32);
    }

    return sub_10001C990(a1 + v10, a2, v9);
  }
}

uint64_t sub_10016A4D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
      v10 = *(a4 + 32);
    }

    return sub_100018460(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_10016A5B8(uint64_t a1)
{
  sub_10016A744(319, &qword_1002B8F68, &type metadata accessor for UUID);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_100140004(319, &qword_1002B8F70, &type metadata for Int);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_10016A744(319, &qword_1002B2468, &type metadata accessor for Date);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_100140004(319, &qword_1002B4920, &type metadata for Bool);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_100140004(319, &qword_1002ACF10, type metadata for String);
          if (v11 > 0x3F)
          {
            return v10;
          }

          sub_100140004(319, &unk_1002B8F78, &type metadata for PurchaseConfiguration.OfferType);
          if (v12 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_10016A744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1001F74B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10016A7A8(void *a1, int a2)
{
  v33 = a2;
  sub_1000183C4(&qword_1002B9038, &qword_100212B00);
  sub_10001A278();
  v31 = v4;
  v32 = v3;
  sub_10001E844();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_1000183C4(&qword_1002B9040, &qword_100212B08);
  sub_10001A278();
  v28 = v8;
  v29 = v7;
  sub_10001E844();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_1000183C4(&qword_1002B9048, &qword_100212B10);
  sub_10001A278();
  v27 = v13;
  sub_10001E844();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_1000183C4(&qword_1002B9050, &qword_100212B18);
  sub_10001A278();
  v19 = v18;
  sub_10001E844();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_10001AE68(a1, a1[3]);
  sub_10016C394();
  sub_1001F8198();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_10016C43C();
      sub_10016CBDC(&type metadata for PurchaseConfiguration.OfferType.CodeCodingKeys, &v35);
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_10016C3E8();
      v24 = v30;
      sub_10016CBDC(&type metadata for PurchaseConfiguration.OfferType.WinbackCodingKeys, &v36);
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_10016C490();
    sub_10016CBDC(&type metadata for PurchaseConfiguration.OfferType.PromotionalCodingKeys, &v34);
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_10016AAC4(void *a1)
{
  v63 = sub_1000183C4(&qword_1002B8FF8, &qword_100212AD8);
  sub_10001A278();
  v61 = v2;
  sub_10001E844();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_1000183C4(&qword_1002B9000, &qword_100212AE0);
  sub_10001A278();
  v58 = v5;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_1000183C4(&qword_1002B9008, &qword_100212AE8);
  sub_10001A278();
  v57 = v10;
  sub_10001E844();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_1000183C4(&qword_1002B9010, &unk_100212AF0);
  sub_10001A278();
  v62 = v15;
  sub_10001E844();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_10001AE68(a1, v17);
  sub_10016C394();
  v18 = v64;
  sub_1001F8178();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = sub_1001F7CD8();
  result = sub_100146BCC(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100146C14(v23 + 1, v24 >> 1, result, v22, v23, v24);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_10016C43C();
          v35 = v55;
          sub_10016CBB0();
          sub_1001F7BE8();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_10016CBA0();
            v37(v36);
LABEL_21:
            sub_100019CCC(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_10016C3E8();
          v17 = v59;
          sub_10016CBB0();
          sub_1001F7BE8();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_10016CBA0();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_10016CBA0();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_10016C490();
        v43 = v54;
        sub_10016CBB0();
        v44 = v56;
        sub_1001F7BE8();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_10016CBC0();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_10016CBC0();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = sub_1001F7848();
    swift_allocError();
    v40 = v39;
    sub_1000183C4(&qword_1002B3738, &qword_10020BFA0);
    *v40 = &type metadata for PurchaseConfiguration.OfferType;
    sub_1001F7BF8();
    sub_1001F7838();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_10016CBC0();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100019CCC(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_10016B05C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10016A1E8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10016B088(uint64_t a1)
{
  v2 = sub_10016C43C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B0C4(uint64_t a1)
{
  v2 = sub_10016C43C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10016A214(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10016B148(uint64_t a1)
{
  v2 = sub_10016C394();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B184(uint64_t a1)
{
  v2 = sub_10016C394();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B1C0(uint64_t a1)
{
  v2 = sub_10016C490();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B1FC(uint64_t a1)
{
  v2 = sub_10016C490();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B238(uint64_t a1)
{
  v2 = sub_10016C3E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10016B274(uint64_t a1)
{
  v2 = sub_10016C3E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10016B2C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10016AAC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_10016B314()
{
  result = qword_1002B8FC8;
  if (!qword_1002B8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B8FC8);
  }

  return result;
}

uint64_t sub_10016B368(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1001F7EA8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746375646F7270 && a2 == 0xE900000000000044;
    if (v6 || (sub_1001F7EA8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756F636341707061 && a2 == 0xEF6E656B6F54746ELL;
      if (v7 || (sub_1001F7EA8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
        if (v8 || (sub_1001F7EA8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6573616863727570 && a2 == 0xEC00000065746144;
          if (v9 || (sub_1001F7EA8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x796C696D61467369 && a2 == 0xEE00646572616853;
            if (v10 || (sub_1001F7EA8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4449726566666FLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1001F7EA8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x707954726566666FLL && a2 == 0xE900000000000065;
                if (v12 || (sub_1001F7EA8() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000010 && 0x800000010022A190 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1001F7EA8();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_10016B650(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x49746375646F7270;
      break;
    case 2:
      result = 0x756F636341707061;
      break;
    case 3:
      result = 0x797469746E617571;
      break;
    case 4:
      result = 0x6573616863727570;
      break;
    case 5:
      result = 0x796C696D61467369;
      break;
    case 6:
      result = 0x4449726566666FLL;
      break;
    case 7:
      result = 0x707954726566666FLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10016B7A0(uint64_t a1)
{
  v3 = sub_1000183C4(&qword_1002B8FE8, &qword_100212AD0);
  sub_10001A278();
  v5 = v4;
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  v9 = sub_10016CB94();
  sub_10001AE68(v9, v10);
  sub_10016C190();
  sub_1001F8198();
  v17[15] = 0;
  sub_100024A88();
  sub_1001F7D88();
  if (!v2)
  {
    v17[14] = 1;
    sub_100024A88();
    sub_1001F7D88();
    v11 = type metadata accessor for PurchaseConfiguration(0);
    v17[13] = 2;
    sub_1001F6578();
    sub_10016CB6C();
    sub_10016C2F8(v12, v13, &protocol conformance descriptor for UUID);
    sub_100024A88();
    sub_1001F7D58();
    v17[12] = 3;
    sub_100024A88();
    sub_1001F7D48();
    v17[11] = 4;
    sub_1001F6508();
    sub_10016CB54();
    sub_10016C2F8(v14, v15, &protocol conformance descriptor for Date);
    sub_100024A88();
    sub_1001F7D58();
    v17[10] = 5;
    sub_100024A88();
    sub_1001F7D28();
    v17[9] = 6;
    sub_100024A88();
    sub_1001F7D18();
    v17[8] = *(v1 + *(v11 + 44));
    v17[7] = 7;
    sub_10016C340();
    sub_100024A88();
    sub_1001F7D58();
    v17[6] = 8;
    sub_100024A88();
    sub_1001F7D28();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10016BAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32[0] = a2;
  sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_10001E844();
  __chkstk_darwin(v3);
  v5 = v32 - v4;
  sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  sub_10001E844();
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  v32[1] = sub_1000183C4(&qword_1002B8FD0, &qword_100212AC8);
  sub_10001A278();
  sub_10001E844();
  __chkstk_darwin(v9);
  v34 = type metadata accessor for PurchaseConfiguration(0);
  sub_100023520();
  __chkstk_darwin(v10);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v33 = a1;
  sub_10001AE68(a1, v13);
  sub_10016C190();
  v14 = v32[2];
  sub_1001F8178();
  if (v14)
  {
    sub_100019CCC(v33);
  }

  else
  {
    v44 = 0;
    *v12 = sub_1001F7C78();
    v12[1] = v15;
    v43 = 1;
    sub_10016CBD0();
    v12[2] = sub_1001F7C78();
    v12[3] = v16;
    sub_1001F6578();
    v42 = 2;
    sub_10016CB6C();
    sub_10016C2F8(v17, v18, &protocol conformance descriptor for UUID);
    sub_1001F7C48();
    v19 = v34;
    sub_100055358(v8, v12 + *(v34 + 24), &qword_1002AFA30, &unk_10020FA10);
    v41 = 3;
    sub_10016CBD0();
    v20 = sub_1001F7C38();
    v21 = v12 + v19[7];
    *v21 = v20;
    v21[8] = v22 & 1;
    sub_1001F6508();
    v40 = 4;
    sub_10016CB54();
    sub_10016C2F8(v23, v24, &protocol conformance descriptor for Date);
    sub_1001F7C48();
    sub_100055358(v5, v12 + v19[8], &unk_1002B3450, &qword_100202EE0);
    v39 = 5;
    sub_10016CBD0();
    *(v12 + v19[9]) = sub_1001F7C18();
    v38 = 6;
    sub_10016CBD0();
    v25 = sub_1001F7C08();
    v26 = (v12 + v19[10]);
    *v26 = v25;
    v26[1] = v27;
    v36 = 7;
    sub_10016C1E4();
    sub_1001F7C48();
    *(v12 + v19[11]) = v37;
    v35 = 8;
    sub_10016CBD0();
    v28 = sub_1001F7C18();
    v29 = sub_10016CB94();
    v30(v29);
    *(v12 + v19[12]) = v28;
    sub_10016C238(v12, v32[0]);
    sub_100019CCC(v33);
    return sub_10016C29C(v12);
  }
}
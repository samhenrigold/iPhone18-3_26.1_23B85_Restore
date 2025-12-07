uint64_t sub_10026D408(uint64_t a1)
{
  v1 = a1 + 24;
  v2 = *(a1 + 16) + 1;
  while (--v2)
  {
    v3 = v1 + 32;
    v4 = *(v1 + 16);
    v1 += 32;
    if (!v4)
    {
      v5 = *(v3 - 8);

      return v5;
    }
  }

  return 0;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        return a4 == 3;
      case 4:
        return a4 == 4;
      case 5:
        return a4 == 5;
    }
  }

  else
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 6)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1004A6D34();
  }
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        if (a6 == 3)
        {
          goto LABEL_24;
        }

        break;
      case 4:
        if (a6 == 4)
        {
          goto LABEL_24;
        }

        break;
      case 5:
        if (a6 == 5)
        {
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_16;
    }

    return 0;
  }

  if (!a2)
  {
    if (!a6)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 == 1)
  {
    if (a6 == 1)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (a2 != 2)
  {
LABEL_16:
    if (a6 < 6)
    {
      return 0;
    }

    if (a1 != a5 || a2 != a6)
    {
      v9 = a3;
      v10 = a4;
      v11 = a8;
      v12 = a7;
      v13 = sub_1004A6D34();
      a3 = v9;
      a4 = v10;
      a7 = v12;
      a8 = v11;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    goto LABEL_24;
  }

  if (a6 != 2)
  {
    return 0;
  }

LABEL_24:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  return sub_1004A6D34();
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(uint64_t a1, int64_t a2, uint64_t a3, void *a4)
{
  v8 = qword_1005D6248;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = 0x656D616E656C6966;
  v10 = sub_1004A4064();
  sub_1001C203C(v10, qword_1005D64A0);
  sub_1001C2190();
  sub_1004A6434();
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    if (a2 > 2)
    {
      switch(a2)
      {
        case 3:
          v9 = 0x7461642D64616572;
          v14 = 0xE900000000000065;
          goto LABEL_33;
        case 4:
          v14 = 0xE400000000000000;
          v9 = 1702521203;
          goto LABEL_33;
        case 5:
          v14 = 0xE400000000000000;
          v9 = 1701667182;
          goto LABEL_33;
      }
    }

    else
    {
      switch(a2)
      {
        case 0:
          v14 = 0xE800000000000000;
          goto LABEL_33;
        case 1:
          v9 = 0x6E6F697461657263;
          v14 = 0xED0000657461642DLL;
          goto LABEL_33;
        case 2:
          v9 = 0xD000000000000011;
          v14 = 0x80000001004AD150;
LABEL_33:
          sub_10026B458(a1, a2);
          sub_10026B458(a1, a2);
          v19._countAndFlagsBits = v9;
          v19._object = v14;
          sub_1004A5994(v19);

          sub_10026B4A4(a1, a2);
          v20._countAndFlagsBits = 8765;
          v20._object = 0xE200000000000000;
          sub_1004A5994(v20);

          v21._countAndFlagsBits = a3;
          v21._object = a4;
          sub_1004A5994(v21);
          sub_10026B4A4(a1, a2);
          swift_bridgeObjectRelease_n();
          v22._countAndFlagsBits = 34;
          v22._object = 0xE100000000000000;
          sub_1004A5994(v22);
          return 0;
      }
    }

    v9 = a1;
    v14 = a2;
    goto LABEL_33;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v9 = 0x7461642D64616572;
        v13 = 0xE900000000000065;
        goto LABEL_31;
      case 4:
        v13 = 0xE400000000000000;
        v9 = 1702521203;
        goto LABEL_31;
      case 5:
        v13 = 0xE400000000000000;
        v9 = 1701667182;
        goto LABEL_31;
    }

LABEL_26:
    v9 = a1;
    v13 = a2;
    goto LABEL_31;
  }

  if (!a2)
  {
    v13 = 0xE800000000000000;
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    v9 = 0x6E6F697461657263;
    v13 = 0xED0000657461642DLL;
    goto LABEL_31;
  }

  if (a2 != 2)
  {
    goto LABEL_26;
  }

  v9 = 0xD000000000000011;
  v13 = 0x80000001004AD150;
LABEL_31:
  sub_10026B458(a1, a2);
  sub_10026B458(a1, a2);
  v16._countAndFlagsBits = v9;
  v16._object = v13;
  sub_1004A5994(v16);

  sub_10026B4A4(a1, a2);
  v17._countAndFlagsBits = 61;
  v17._object = 0xE100000000000000;
  sub_1004A5994(v17);

  v18._countAndFlagsBits = a3;
  v18._object = a4;
  sub_1004A5994(v18);
  sub_10026B4A4(a1, a2);
  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t _sSS9IMAP2MIMEEySSAA18ContentDispositionVcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x656D686361747461;
  v4 = 0x7461642D6D726F66;
  if (a2 != 2)
  {
    v4 = a1;
  }

  if (a2 != 1)
  {
    v3 = v4;
  }

  if (a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656E696C6E69;
  }

  v13 = v5;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      sub_10026B458(v8, v9);

      v14._countAndFlagsBits = _sSS9IMAP2MIMEEySSAA18ContentDispositionV9AttributeVcfC_0(v8, v9, v10, v11);
      sub_1004A5994(v14);

      v15._countAndFlagsBits = 8251;
      v15._object = 0xE200000000000000;
      sub_1004A5994(v15);

      v7 += 4;
      --v6;
    }

    while (v6);

    return v13;
  }

  else
  {
  }

  return v5;
}

uint64_t _s9IMAP2MIME18ContentDispositionV4KindOyAESScfC_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004A5814();
  v5 = v3;
  if (v4 == 0x656E696C6E69 && v3 == 0xE600000000000000)
  {
    goto LABEL_3;
  }

  v6 = sub_1004A6D34();

  if (v6)
  {
LABEL_5:

    goto LABEL_6;
  }

  if (v4 == 0x656D686361747461 && v5 == 0xEA0000000000746ELL)
  {
    goto LABEL_3;
  }

  v8 = sub_1004A6D34();

  if (v8)
  {
    goto LABEL_5;
  }

  if (v4 == 0x7461642D6D726F66 && v5 == 0xE900000000000061)
  {
LABEL_3:

LABEL_6:

    return 0;
  }

  v9 = sub_1004A6D34();

  if (v9)
  {
    goto LABEL_5;
  }

  return a1;
}

uint64_t _s9IMAP2MIME18ContentDispositionV9AttributeV3KeyOyAGSScfC_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1004A5814();
  v5 = v3;
  if (v4 == 0x656D616E656C6966 && v3 == 0xE800000000000000)
  {
    goto LABEL_3;
  }

  v6 = sub_1004A6D34();

  if (v6)
  {
    goto LABEL_5;
  }

  if (v4 == 0x6E6F697461657263 && v5 == 0xED0000657461642DLL)
  {
    goto LABEL_3;
  }

  v8 = sub_1004A6D34();

  if (v8)
  {
    goto LABEL_5;
  }

  if (v4 == 0xD000000000000011 && 0x80000001004AD150 == v5)
  {
    goto LABEL_3;
  }

  v9 = sub_1004A6D34();

  if (v9)
  {
    goto LABEL_5;
  }

  if (v4 == 0x7461642D64616572 && v5 == 0xE900000000000065)
  {
    goto LABEL_3;
  }

  v10 = sub_1004A6D34();

  if (v10)
  {
    goto LABEL_5;
  }

  if (v4 == 1702521203 && v5 == 0xE400000000000000)
  {
    goto LABEL_3;
  }

  v11 = sub_1004A6D34();

  if (v11)
  {
    goto LABEL_5;
  }

  if (v4 == 1701667182 && v5 == 0xE400000000000000)
  {
LABEL_3:

LABEL_5:

    return 0;
  }

  v12 = sub_1004A6D34();

  if (v12)
  {
    goto LABEL_5;
  }

  return a1;
}

unint64_t sub_10026E33C()
{
  result = qword_1005D6430;
  if (!qword_1005D6430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentDisposition.Kind, &type metadata for ContentDisposition.Kind, v0, v1);
    atomic_store(result, &qword_1005D6430);
  }

  return result;
}

unint64_t sub_10026E3A0()
{
  result = qword_1005D6438;
  if (!qword_1005D6438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentDisposition.Kind, &type metadata for ContentDisposition.Kind, v0, v1);
    atomic_store(result, &qword_1005D6438);
  }

  return result;
}

unint64_t sub_10026E410()
{
  result = qword_1005D6440;
  if (!qword_1005D6440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentDisposition.Attribute.Key, &type metadata for ContentDisposition.Attribute.Key, v0, v1);
    atomic_store(result, &qword_1005D6440);
  }

  return result;
}

unint64_t sub_10026E468()
{
  result = qword_1005D6448;
  if (!qword_1005D6448)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentDisposition.Attribute.Key, &type metadata for ContentDisposition.Attribute.Key, v0, v1);
    atomic_store(result, &qword_1005D6448);
  }

  return result;
}

uint64_t sub_10026E4CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026E528(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10026E578(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10026E5C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483642);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026E618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void sub_10026E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 4u)
  {
    if (a5 > 7u)
    {
      if (a5 != 8 && a5 != 9)
      {
        if (a5 != 10)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if (a5 != 5 && a5 != 6 && a5 != 7)
    {
      return;
    }

LABEL_19:

LABEL_17:

    return;
  }

  if (a5 <= 1u)
  {
    if (a5)
    {
      goto LABEL_19;
    }

    sub_10026E754(a1, a2);
  }

  else if (a5 == 2 || a5 == 3 || a5 == 4)
  {
    goto LABEL_19;
  }
}

double sub_10026E754(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0xB)
  {
  }

  return result;
}

void sub_10026E76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 4u)
  {
    if (a5 > 7u)
    {
      if (a5 != 8 && a5 != 9)
      {
        if (a5 != 10)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else if (a5 != 5 && a5 != 6 && a5 != 7)
    {
      return;
    }

LABEL_19:

LABEL_17:

    return;
  }

  if (a5 <= 1u)
  {
    if (a5)
    {
      goto LABEL_19;
    }

    sub_10026E848(a1, a2);
  }

  else if (a5 == 2 || a5 == 3 || a5 == 4)
  {
    goto LABEL_19;
  }
}

uint64_t sub_10026E848(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 0xB)
  {
  }

  return result;
}

unint64_t sub_10026E8E4()
{
  result = qword_1005D6460;
  if (!qword_1005D6460)
  {
    result = swift_getWitnessTable(a1_8, &type metadata for ContentDisposition.Attribute.Key.Known, v0, v1);
    atomic_store(result, &qword_1005D6460);
  }

  return result;
}

unint64_t sub_10026E96C()
{
  result = qword_1005D6478;
  if (!qword_1005D6478)
  {
    result = swift_getWitnessTable(aQ_10, &type metadata for UnsafeContentDisposition.Attribute.Key.Known, v0, v1);
    atomic_store(result, &qword_1005D6478);
  }

  return result;
}

unint64_t sub_10026E9F4()
{
  result = qword_1005D6490;
  if (!qword_1005D6490)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for UnsafeContentDisposition.Kind.Known, v0, v1);
    atomic_store(result, &qword_1005D6490);
  }

  return result;
}

unint64_t sub_10026EA48(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAAF0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10026EA94(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAB58;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10026EAE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAC30;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10026EB84(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xEB00000000656C62;
  v4 = 0xE700000000000000;
  if (a3 != 8)
  {
    v4 = 0xE600000000000000;
  }

  v5 = 0xE500000000000000;
  if (a3 != 6)
  {
    v5 = 0xEF6563616C706572;
  }

  if (a3 == 5)
  {
    v5 = 0xE900000000000061;
  }

  if (a3 <= 7u)
  {
    v4 = v5;
  }

  v6 = 0xE900000000000064;
  if (a3 == 3)
  {
    v6 = 0xE600000000000000;
  }

  if (a3 == 2)
  {
    v6 = 0xE900000000000065;
  }

  if (!a3)
  {
    v3 = 0xEB00000000657669;
  }

  if (a3 > 1u)
  {
    v3 = v6;
  }

  if (a3 <= 4u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = a3;

  v11 = HIBYTE(v7) & 0xF;
  if (a1)
  {
    if (v11 != a2 - a1)
    {
      return 11;
    }
  }

  else if (v11)
  {
    return 11;
  }

  v12 = sub_100288E48(v8);
  v14 = sub_1002A1544(v12, v13, a1, a2, sub_100288638);

  if ((v14 & 1) == 0)
  {
    return 11;
  }

  return v8;
}

uint64_t sub_10026ECB8(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE900000000000074;
  v4 = 0xE400000000000000;
  v5 = 0xE700000000000000;
  v6 = 0xE500000000000000;
  if (a3 != 8)
  {
    v5 = 0xE500000000000000;
  }

  if (a3 != 7)
  {
    v4 = v5;
  }

  v7 = 0xE400000000000000;
  if (a3 != 5)
  {
    v7 = 0xE500000000000000;
  }

  if (a3 <= 6u)
  {
    v4 = v7;
  }

  v8 = 0xE500000000000000;
  if (a3 != 3)
  {
    v6 = 0xE700000000000000;
  }

  if (a3 != 2)
  {
    v8 = v6;
  }

  if (a3)
  {
    v3 = 0xEB000000006E6F69;
  }

  if (a3 > 1u)
  {
    v3 = v8;
  }

  if (a3 <= 4u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  v10 = a3;

  v13 = HIBYTE(v9) & 0xF;
  if (a1)
  {
    if (v13 != a2 - a1)
    {
      return 10;
    }
  }

  else if (v13)
  {
    return 10;
  }

  v14 = sub_1002890D0(v10);
  v16 = sub_1002A1544(v14, v15, a1, a2, sub_100288638);

  if ((v16 & 1) == 0)
  {
    return 10;
  }

  return v10;
}

uint64_t sub_10026EDCC(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = 0xEA0000000000746ELL;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  if (a1)
  {
    if (v7 != a2 - a1)
    {
      return 3;
    }
  }

  else if (v7)
  {
    return 3;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      v8 = 0x656D686361747461;
    }

    else
    {
      v8 = 0x7461642D6D726F66;
    }

    if (v3 == 1)
    {
      v9 = 0xEA0000000000746ELL;
    }

    else
    {
      v9 = 0xE900000000000061;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
    v8 = 0x656E696C6E69;
  }

  v10 = sub_1002A1544(v8, v9, a1, a2, sub_100288638);

  if ((v10 & 1) == 0)
  {
    return 3;
  }

  return v3;
}

uint64_t sub_10026EEE0(char *a1, char *a2, uint64_t a3)
{
  v3 = a3;
  v6 = sub_1002AAE00(a3);
  v8 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v9 = sub_1004A59E4();

    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {

    if ((v8 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(v8) & 0xF;
    }

    else
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (a1)
    {
LABEL_6:
      if (v9 != a2 - a1)
      {
        return 20;
      }

      goto LABEL_10;
    }
  }

  if (v9)
  {
    return 20;
  }

LABEL_10:
  v10 = sub_1002AAE00(v3);
  v12 = sub_1002A1544(v10, v11, a1, a2, sub_100288638);

  if ((v12 & 1) == 0)
  {
    return 20;
  }

  return v3;
}

uint64_t sub_10026EFC0(char *a1, char *a2, uint64_t a3)
{
  v3 = 0x656D616E656C6966;
  v4 = 0xE800000000000000;
  v5 = 0x7461642D64616572;
  v6 = 0xE900000000000065;
  v7 = 1702521203;
  if (a3 != 4)
  {
    v7 = 1701667182;
  }

  if (a3 != 3)
  {
    v5 = v7;
    v6 = 0xE400000000000000;
  }

  v8 = 0x6E6F697461657263;
  v9 = 0xED0000657461642DLL;
  if (a3 != 1)
  {
    v8 = 0xD000000000000011;
    v9 = 0x80000001004AD150;
  }

  if (a3)
  {
    v4 = v9;
  }

  else
  {
    v8 = 0x656D616E656C6966;
  }

  if (a3 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a3 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  v12 = a3;
  if ((v11 & 0x1000000000000000) != 0)
  {
    v15 = sub_1004A59E4();

    if (a1)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if ((v11 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v11) & 0xF;
    }

    else
    {
      v15 = v10 & 0x6D7F657F7F7FLL;
    }

    if (a1)
    {
LABEL_21:
      if (v15 != a2 - a1)
      {
        return 6;
      }

      goto LABEL_25;
    }
  }

  if (v15)
  {
    return 6;
  }

LABEL_25:
  if (v12 > 2u)
  {
    if (v12 == 3)
    {
      v3 = 0x7461642D64616572;
      v16 = 0xE900000000000065;
    }

    else
    {
      v16 = 0xE400000000000000;
      if (v12 == 4)
      {
        v3 = 1702521203;
      }

      else
      {
        v3 = 1701667182;
      }
    }
  }

  else if (v12)
  {
    if (v12 == 1)
    {
      v3 = 0x6E6F697461657263;
      v16 = 0xED0000657461642DLL;
    }

    else
    {
      v3 = 0xD000000000000011;
      v16 = 0x80000001004AD150;
    }
  }

  else
  {
    v16 = 0xE800000000000000;
  }

  v17 = sub_1002A1544(v3, v16, a1, a2, sub_100288638);

  if ((v17 & 1) == 0)
  {
    return 6;
  }

  return v12;
}

uint64_t sub_10026F1F4(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE600000000000000;
  v4 = 0x7972616E6962;
  v5 = 0xD000000000000010;
  v6 = 0x80000001004AD190;
  if (a3 != 3)
  {
    v5 = 0x343665736162;
    v6 = 0xE600000000000000;
  }

  if (a3 != 2)
  {
    v4 = v5;
    v3 = v6;
  }

  if (a3)
  {
    v7 = 1953063480;
  }

  else
  {
    v7 = 1953063479;
  }

  if (a3 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  if (a3 <= 1u)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = v3;
  }

  v10 = a3;
  if ((v9 & 0x1000000000000000) != 0)
  {
    v13 = sub_1004A59E4();

    if (a1)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if ((v9 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v13 = v8 & 0x7D76757F6B7FLL;
    }

    if (a1)
    {
LABEL_19:
      if (v13 != a2 - a1)
      {
        return 5;
      }

      goto LABEL_23;
    }
  }

  if (v13)
  {
    return 5;
  }

LABEL_23:
  v14 = 0xE600000000000000;
  v15 = 0x7972616E6962;
  v16 = 0xD000000000000010;
  v17 = 0x80000001004AD190;
  if (v10 != 3)
  {
    v16 = 0x343665736162;
    v17 = 0xE600000000000000;
  }

  if (v10 != 2)
  {
    v15 = v16;
    v14 = v17;
  }

  if (v10)
  {
    v18 = 1953063480;
  }

  else
  {
    v18 = 1953063479;
  }

  if (v10 <= 1u)
  {
    v19 = v18;
  }

  else
  {
    v19 = v15;
  }

  if (v10 <= 1u)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = v14;
  }

  v21 = sub_1002A1544(v19, v20, a1, a2, sub_100288638);

  if ((v21 & 1) == 0)
  {
    return 5;
  }

  return v10;
}

uint64_t sub_10026F3B4(char *a1, char *a2, uint64_t a3)
{
  v3 = 0xE400000000000000;
  v4 = a3;
  switch(a3)
  {
    case 1:
      v3 = 0xEB00000000657079;
      break;
    case 2:
    case 9:
      v3 = 0xE800000000000000;
      break;
    case 3:
    case 11:
      v3 = 0xE700000000000000;
      break;
    case 4:
    case 6:
      v3 = 0xE500000000000000;
      break;
    case 5:
    case 10:
    case 12:
      v3 = 0xE600000000000000;
      break;
    case 7:
      v3 = 0xE200000000000000;
      break;
    case 8:
      v3 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  v7 = HIBYTE(v3) & 0xF;
  if (a1)
  {
    if (v7 != a2 - a1)
    {
      return 13;
    }
  }

  else if (v7)
  {
    return 13;
  }

  v8 = sub_100271450(v4);
  v10 = sub_1002A1544(v8, v9, a1, a2, sub_100288638);

  if ((v10 & 1) == 0)
  {
    return 13;
  }

  return v4;
}

uint64_t sub_10026F4F4(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 1953063480;
    }

    else
    {
      v2 = 1953063479;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v2 = 0x7972616E6962;
  }

  else if (a1 == 3)
  {
    v2 = 0xD000000000000010;
    v3 = 0x80000001004AD190;
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x343665736162;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = 1953063480;
    }

    else
    {
      v5 = 1953063479;
    }

    v4 = 0xE400000000000000;
    if (v2 != v5)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 2)
  {
    v4 = 0xE600000000000000;
    if (v2 != 0x7972616E6962)
    {
      goto LABEL_26;
    }
  }

  else if (a2 == 3)
  {
    v4 = 0x80000001004AD190;
    if (v2 != 0xD000000000000010)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v4 = 0xE600000000000000;
    if (v2 != 0x343665736162)
    {
LABEL_26:
      v6 = sub_1004A6D34();
      goto LABEL_27;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_26;
  }

  v6 = 1;
LABEL_27:

  return v6 & 1;
}

uint64_t sub_10026F664(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000065;
  v5 = 1702521203;
  if (a1 != 4)
  {
    v5 = 1701667182;
  }

  if (a1 == 3)
  {
    v5 = 0x7461642D64616572;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v6 = 0x6E6F697461657263;
  v7 = 0xED0000657461642DLL;
  if (a1 != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x80000001004AD150;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v6 = 0x656D616E656C6966;
  }

  if (a1 <= 2u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v2 <= 2)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v10 = 0xE900000000000065;
      if (v8 != 0x7461642D64616572)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0xE400000000000000;
      if (a2 == 4)
      {
        if (v8 != 1702521203)
        {
          goto LABEL_35;
        }
      }

      else if (v8 != 1701667182)
      {
LABEL_35:
        v11 = sub_1004A6D34();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v10 = 0xED0000657461642DLL;
      if (v8 != 0x6E6F697461657263)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = 0x80000001004AD150;
      if (v8 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v8 != 0x656D616E656C6966)
    {
      goto LABEL_35;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_35;
  }

  v11 = 1;
LABEL_36:

  return v11 & 1;
}

uint64_t ContentTransferEncoding.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1953063479;
  v2 = 0x7972616E6962;
  v3 = 0xD000000000000010;
  if (a1 != 3)
  {
    v3 = 0x343665736162;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 1953063480;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10026F8EC()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10026F9B4(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_10026FA68(uint64_t a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_10026FB2C@<X0>(Swift::String *a1@<X0>, IMAP2MIME::ContentTransferEncoding_optional *a2@<X8>)
{
  result = _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_10026FB5C(uint64_t *a1@<X8>)
{
  v2 = 1953063479;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0x7972616E6962;
  v6 = 0x80000001004AD190;
  v7 = 0xD000000000000010;
  if (v3 != 3)
  {
    v7 = 0x343665736162;
    v6 = 0xE600000000000000;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v2 = 1953063480;
  }

  if (*v1 <= 1u)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v2 = v5;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8;
}

uint64_t ContentTransferEncoding.init(_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1004A5834() == a1 && v4 == a2)
  {

LABEL_8:

    return 0;
  }

  v6 = sub_1004A6D34();

  if (v6)
  {
    goto LABEL_8;
  }

  if (sub_1004A5834() == a1 && v8 == a2)
  {

LABEL_13:

    return 1;
  }

  v9 = sub_1004A6D34();

  if (v9)
  {
    goto LABEL_13;
  }

  if (sub_1004A5834() == a1 && v10 == a2)
  {

LABEL_18:

    return 2;
  }

  v11 = sub_1004A6D34();

  if (v11)
  {
    goto LABEL_18;
  }

  if (sub_1004A5834() == a1 && v12 == a2)
  {

LABEL_23:

    return 4;
  }

  v13 = sub_1004A6D34();

  if (v13)
  {
    goto LABEL_23;
  }

  if (sub_1004A5834() == a1 && v14 == a2)
  {

    return 3;
  }

  v15 = sub_1004A6D34();

  if (v15)
  {
    return 3;
  }

  return 5;
}

uint64_t sub_10026FEC0(uint64_t result, unsigned __int8 a2)
{
  if (a2 >= 4u)
  {
    v2 = ceil(result * 3.0 * 0.25);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        result = v2 + 10;
        if (!__OFADD__(v2, 10))
        {
          return result;
        }

LABEL_10:
        __break(1u);
        return result;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10026FF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100257E20(a3, a4, a1, v10, 1);
  if (v6)
  {
    sub_100270C3C(a5);
  }

  else
  {
    result = sub_1002701E0(v11, v12, v13 & 1);
    if (result)
    {
      v16 = v15 - result;
    }

    else
    {
      v16 = 0;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    else
    {
      return sub_1002A742C(a5, 0, v16, result, v15, a6);
    }
  }

  return result;
}

unint64_t sub_10026FFE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, int64_t, uint64_t, uint64_t))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = a3 - a2;
    }

    else
    {
      v5 = 0;
    }

    result = a4(0, v5, a2, a3);
    if (v4 && result < v4)
    {
      v4 = v5;
      if ((v5 & 0x8000000000000000) == 0)
      {
        return 0;
      }

      __break(1u);
    }

    if (v5 >= v4)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100270074(unint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result >= 3u)
  {
    if (result == 3)
    {
      if (a2)
      {
        v20 = a3 - a2;
      }

      else
      {
        v20 = 0;
      }

      if (v20 < 0)
      {
        __break(1u);
      }

      else
      {
        return sub_100299AB8(0, v20, a2, a3, a4, a5);
      }
    }

    else
    {
      if (a2)
      {
        v21 = a3;
      }

      else
      {
        v21 = 0;
      }

      return sub_100257E20(a4, a5, a2, v21, 1);
    }
  }

  else
  {
    v9 = a3 - a2;
    if (!a2)
    {
      v9 = 0;
    }

    v10 = v9 & (v9 >> 63);
    if (a5 - a4 < v9)
    {
      v9 = a5 - a4;
    }

    if (a4)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    v12 = sub_10026FFE0(v11, a4, a5, sub_1002881FC);
    v15 = v14;
    if (v13)
    {
      v16 = (v13 + v12);
    }

    else
    {
      v16 = 0;
    }

    if (a2 && v16)
    {
      v17 = v13 + v15;
      if (!v13)
      {
        v17 = 0;
      }

      memmove(a2, v16, v17 - v16);
    }

    v18 = sub_10026FFE0(v11, a2, a3, sub_1002881FC);
    if (v19)
    {
      return v19 + v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002701E0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    if (result)
    {
      v4 = a2 - result;
    }

    else
    {
      v4 = 0;
    }

    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = sub_100270238(0, v4, result, a2);
      if (v6)
      {
        return v6 + v5;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100270238(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (a2 < 0 || v4 < a2)
  {
    goto LABEL_29;
  }

  if (a2 - result < 100)
  {
    return result;
  }

  if (a2 < 0x63)
  {
    goto LABEL_30;
  }

  v5 = 0;
  v6 = a3 + a2;
  while (1)
  {
    v7 = a2 + v5 - 99;
    if (v7 >= a2 || a2 - 99 < result || v7 >= a2 - 2)
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v10 = a2 + v5 - 98;
    if (v10 < result || v10 >= a2)
    {
      goto LABEL_27;
    }

    if (*(v6 + v5 - 99) <= 0x7Eu && *(v6 + v5 - 98) < 0x7Fu)
    {
      break;
    }

    if (++v5 == 97)
    {
      return result;
    }
  }

  v11 = a2 + v5 - 97;
  if (__OFADD__(a2 + v5 - 99, 2))
  {
    goto LABEL_31;
  }

  if (v11 >= result)
  {
    if (v11 > a2)
    {
      goto LABEL_33;
    }

    return result;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10027031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3 - a2;
  if (a2)
  {
    v6 = a3 - a2;
  }

  else
  {
    v6 = 0;
  }

  result = sub_1002881FC(0, v6, a2, a3);
  if (a1 < 1)
  {
    if (result <= 0 && result > a1)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a1)
  {
    return 0;
  }

  if (a1 < 0 || v6 < a1)
  {
    __break(1u);
  }

  else
  {
    result = 0;
    if (a2)
    {
      if (v5 > a1)
      {
        return *(a2 + a1) | 0x20u;
      }
    }
  }

  return result;
}

uint64_t sub_1002703B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t *a5@<X8>, uint64_t a6@<X2>, uint64_t a7@<X3>)
{
  if (result)
  {
    v12 = a2 - result;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_100299AB8(0, v12, result, a2, a6, a7);
    if (v7)
    {
      sub_100270C3C(a3);
    }

    result = sub_1002701E0(v14, v15, v16 & 1);
    if (result)
    {
      v18 = v17 - result;
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      result = sub_1002A742C(a3, 0, v18, result, v17, a4);
      *a5 = result;
      a5[1] = v19;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10027046C(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 56)
  {
    if (v5 == 98 && v6 == 105 && v7 == 116)
    {
      v8 = a1;
      v9 = a2;
      v10 = 1;
      goto LABEL_26;
    }
  }

  else if (v4 == 55 && v5 == 98 && v6 == 105 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_26;
  }

  if (v4 == 98 && v5 == 105 && v6 == 110 && v7 == 97)
  {
    v8 = a1;
    v9 = a2;
    v10 = 2;
    goto LABEL_26;
  }

  if (v4 == 113 && v5 == 117 && v6 == 111 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 3;
    goto LABEL_26;
  }

  if (v4 == 98 && v5 == 97 && v6 == 115 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
LABEL_26:
    result = sub_10026F1F4(v8, v9, v10);
    if (result != 5)
    {
      return result;
    }
  }

  return 5;
}

uint64_t sub_100270634(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a4;
  v11 = a2;
  v12 = a1 == 3;
  if (a1 >= 3u)
  {
LABEL_6:
    if (v12)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {

        v14 = v48;
        v15 = a5;
        if (v11 >= 1025)
        {
          goto LABEL_55;
        }

        sub_100270BE0(a5, v48);

        isStackAllocationSafe = sub_100270BE0(a5, v48);
        while (1)
        {
          __chkstk_darwin(isStackAllocationSafe);
          v18 = sub_100299AB8(0, v11, &v48[-v17 - 8], &v48[v11 - 8 - v17], a3, v9);
          if (v6)
          {
            goto LABEL_46;
          }

          a1 = sub_1002701E0(v18, v19, v20 & 1);
          if (a1)
          {
            v11 = v21 - a1;
          }

          else
          {
            v11 = 0;
          }

          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          __break(1u);
LABEL_17:
          if ((v11 & 0x8000000000000000) == 0)
          {
            v13 = 0;
            goto LABEL_19;
          }

LABEL_20:
          v15 = sub_10026FFE0(v11, a3, v9, sub_1002881FC);
          v28 = v26;
          if (v27)
          {
            v14 = v26 - v15;
          }

          else
          {
            v14 = 0;
          }

          if (v14 < 0)
          {
            __break(1u);
          }

          else
          {
            v29 = v27 + v28;
            if (v27)
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            if (v27)
            {
              v31 = v27 + v15;
            }

            else
            {
              v31 = 0;
            }

            v15 = sub_100270238(0, v14, v31, v30);
            if (v32)
            {
              v9 = v14 - v15;
            }

            else
            {
              v9 = 0;
            }

            if ((v9 & 0x8000000000000000) == 0)
            {
              if (v32)
              {
                v33 = v32 + v14;
              }

              else
              {
                v33 = 0;
              }

              if (v32)
              {
                v34 = v32 + v15;
              }

              else
              {
                v34 = 0;
              }

              sub_100270BE0(a5, v48);
              v22 = a5;
              v23 = v9;
              v24 = v34;
              v25 = v33;
              return sub_1002A742C(v22, 0, v23, v24, v25, a6);
            }
          }

          __break(1u);
LABEL_55:
          sub_100270BE0(v15, v14);

          sub_100270BE0(a5, v48);
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v44 = swift_slowAlloc();

            sub_100270BE0(a5, v48);
            sub_1002703B8(v44, v44 + v11, a5, a6, &v49, a3, v9);

            if (v6)
            {
              goto LABEL_47;
            }

            sub_100270C3C(a5);

            sub_100270C3C(a5);

            return v49;
          }
        }
      }

      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {

      if (v11 >= 1025)
      {
        sub_100270BE0(a5, v48);

        sub_100270BE0(a5, v48);
        v36 = swift_stdlib_isStackAllocationSafe();
        if ((v36 & 1) == 0)
        {
          v45 = swift_slowAlloc();

          sub_100270BE0(a5, v48);
          a1 = sub_10026FF3C(v45, v45 + v11, a3, v9, a5, a6);
          if (v6)
          {

            goto LABEL_47;
          }

          goto LABEL_64;
        }
      }

      else
      {
        sub_100270BE0(a5, v48);

        v36 = sub_100270BE0(a5, v48);
      }

      __chkstk_darwin(v36);
      v38 = sub_100257E20(a3, v9, &v48[-v37 - 8], &v48[v11 - 8 - v37], 1);
      if (v6)
      {
LABEL_46:
        swift_willThrow();
LABEL_47:
        sub_100270C3C(a5);

        sub_100270C3C(a5);
      }

      a1 = sub_1002701E0(v38, v39, v40 & 1);
      if (a1)
      {
        v11 = v21 - a1;
      }

      else
      {
        v11 = 0;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_52:
        v41 = a1;
        v42 = v21;

        sub_100270BE0(a5, v48);
        v43 = sub_1002A742C(a5, 0, v11, v41, v42, a6);
        sub_100270C3C(a5);

        sub_100270C3C(a5);

        return v43;
      }

LABEL_63:
      __break(1u);
LABEL_64:
      v46 = a1;

      sub_100270C3C(a5);

      sub_100270C3C(a5);

      return v46;
    }

    __break(1u);
    goto LABEL_63;
  }

  if (!a3)
  {
    goto LABEL_17;
  }

  v13 = a4 - a3;
  v12 = a4 - a3 == a2;
  if (a4 - a3 > a2)
  {
    goto LABEL_20;
  }

  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_19:

  sub_100270BE0(a5, v48);
  v22 = a5;
  v23 = v13;
  v24 = a3;
  v25 = v9;
  return sub_1002A742C(v22, 0, v23, v24, v25, a6);
}

unint64_t _s9IMAP2MIME23ContentTransferEncodingO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AAD08;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100270B7C()
{
  result = qword_1005D6498;
  if (!qword_1005D6498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContentTransferEncoding, &type metadata for ContentTransferEncoding, v0, v1);
    atomic_store(result, &qword_1005D6498);
  }

  return result;
}

__n128 ContentType.init(mediaType:attributes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 32);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = a2;
  return result;
}

uint64_t WatchOSHeaderInfo.from.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static ContentType.Attribute.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1004A6D34(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1004A6D34();
    }
  }

  return result;
}

uint64_t static ContentType.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = *(a2 + 32);
  if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v9))
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);

  return sub_10026B9CC(v6, v7);
}

uint64_t sub_100270F18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v4;
  v10 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v7, v9))
  {
    return 0;
  }

  return sub_10026B9CC(v3, v5);
}

uint64_t ContentType.description.getter()
{
  v1 = *(v0 + 16);
  v5[0] = *v0;
  v5[1] = v1;
  v6 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_100270CA4(v5, v3);
  sub_100272B6C(&v4, v3);
  v7._countAndFlagsBits = v0;
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v7);
}

uint64_t sub_100270FF8()
{
  v1 = v0[2];
  v5 = v0[1];
  v6 = v1;
  v4 = *v0;
  v7[0] = v4;
  v7[1] = v5;
  v8 = *(v0 + 32);
  v9 = *(&v1 + 1);
  sub_100270CA4(v7, v3);
  sub_100272B6C(&v9, v3);
  v10._countAndFlagsBits = &v4;
  return _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(v10);
}

uint64_t ContentType.Attribute.description.getter(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v8 = qword_1005D6248;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_1004A4064();
  sub_1001C203C(v9, qword_1005D64A0);
  sub_1001C2190();
  sub_1004A6434();
  v11 = v10;

  if (v11)
  {
    v14 = 8251;
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    sub_1004A5994(v15);
    v16._countAndFlagsBits = 61;
    v16._object = 0xE100000000000000;
    sub_1004A5994(v16);
    v12._countAndFlagsBits = a3;
    v12._object = a4;
  }

  else
  {
    v14 = a1;

    v17._countAndFlagsBits = 8765;
    v17._object = 0xE200000000000000;
    sub_1004A5994(v17);
    v18._countAndFlagsBits = a3;
    v18._object = a4;
    sub_1004A5994(v18);
    v12._countAndFlagsBits = 34;
    v12._object = 0xE100000000000000;
  }

  sub_1004A5994(v12);
  return v14;
}

Swift::String __swiftcall String.init(_:)(IMAP2MIME::ContentType::Attribute a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v3 = a1.key._object;
  v4 = a1.key._countAndFlagsBits;
  v5 = qword_1005D6248;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_1004A4064();
  sub_1001C203C(v6, qword_1005D64A0);
  sub_1001C2190();
  sub_1004A6434();
  v8 = v7;

  if (v8)
  {
    v12 = 8251;
    v13 = 0xE200000000000000;

    v14._countAndFlagsBits = v4;
    v14._object = v3;
    sub_1004A5994(v14);

    v15._countAndFlagsBits = 61;
    v15._object = 0xE100000000000000;
    sub_1004A5994(v15);

    v16._countAndFlagsBits = countAndFlagsBits;
    v16._object = object;
    sub_1004A5994(v16);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v12 = v4;
    v13 = v3;

    v17._countAndFlagsBits = 8765;
    v17._object = 0xE200000000000000;
    sub_1004A5994(v17);

    v18._countAndFlagsBits = countAndFlagsBits;
    v18._object = object;
    sub_1004A5994(v18);
    swift_bridgeObjectRelease_n();

    v19._countAndFlagsBits = 34;
    v19._object = 0xE100000000000000;
    sub_1004A5994(v19);
  }

  v9 = v12;
  v10 = v13;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_100271350()
{
  v0 = sub_1004A4064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C2074(v4, qword_1005D64A0);
  sub_1001C203C(v0, qword_1005D64A0);
  sub_1004A4024();
  sub_1004A4054();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100271450(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x742D737365636361;
      break;
    case 2:
      result = 0x797261646E756F62;
      break;
    case 3:
      result = 0x74657372616863;
      break;
    case 4:
      result = 0x70736C6564;
      break;
    case 5:
      result = 0x7265626D756ELL;
      break;
    case 6:
      result = 0x6C61746F74;
      break;
    case 7:
      result = 25705;
      break;
    case 8:
      result = 0x7469736F70736964;
      break;
    case 9:
      result = 0x6C6F636F746F7270;
      break;
    case 10:
      result = 0x636C6167696DLL;
      break;
    case 11:
      result = 0x746E656D6D6F63;
      break;
    case 12:
      result = 0x74616D726F66;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_1002715C8()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_100271450(v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_10027162C(uint64_t a1)
{
  sub_100271450(*v1);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100271680(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_100271450(v2);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

unint64_t sub_1002716E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100272EF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100271710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100271450(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10027173C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100271450(*a1);
  v5 = v4;
  if (v3 == sub_100271450(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

uint64_t sub_1002717C4()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 48;
  while (2)
  {
    if (*v3)
    {
      goto LABEL_5;
    }

    v5 = *(v3 + 32);
    switch(*(v3 - 16))
    {
      case 3:

        goto LABEL_9;
      default:
        v4 = sub_1004A6D34();

        if ((v4 & 1) == 0)
        {

LABEL_5:
          v3 += 56;
          if (!--v2)
          {
            return 0;
          }

          continue;
        }

LABEL_9:
        if (*(v5 + 16) == 1)
        {
          v6 = *(v5 + 32);
          v7 = *(v5 + 48);

          if (v7 < 0)
          {
            return v6;
          }
        }

        else
        {
        }

        return 0;
    }
  }
}

uint64_t sub_100271A2C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = v1 + 48; (*i & 1) != 0; i += 56)
  {
LABEL_3:
    if (!--v2)
    {
      return 0;
    }
  }

  v4 = *(i + 32);
  switch(*(i - 16))
  {
    case 2:

      goto LABEL_9;
    default:
      v5 = sub_1004A6D34();

      if ((v5 & 1) == 0)
      {

        goto LABEL_3;
      }

LABEL_9:
      if (*(v4 + 16) == 1)
      {
        v6 = *(v4 + 32);
        v7 = *(v4 + 48);

        if (v7 < 0)
        {
          return v6;
        }
      }

      else
      {
      }

      return 0;
  }
}

uint64_t sub_100271C98(char *a1, char *a2)
{
  v4 = sub_10027031C(0, a1, a2);
  v5 = sub_10027031C(1, a1, a2);
  v6 = sub_10027031C(2, a1, a2);
  v7 = sub_10027031C(3, a1, a2);
  if (v4 == 110 && v5 == 97 && v6 == 109 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 0;
    goto LABEL_31;
  }

  if (v4 == 98)
  {
    if (v5 == 111 && v6 == 117 && v7 == 110)
    {
      v8 = a1;
      v9 = a2;
      v10 = 2;
      goto LABEL_31;
    }
  }

  else if (v4 == 97 && v5 == 99 && v6 == 99 && v7 == 101)
  {
    v8 = a1;
    v9 = a2;
    v10 = 1;
    goto LABEL_31;
  }

  if (v4 == 99 && v5 == 104 && v6 == 97 && v7 == 114)
  {
    v8 = a1;
    v9 = a2;
    v10 = 3;
    goto LABEL_31;
  }

  if (v4 == 100 && v5 == 101 && v6 == 108 && v7 == 115)
  {
    v8 = a1;
    v9 = a2;
    v10 = 4;
    goto LABEL_31;
  }

  if (v4 == 110 && v5 == 117 && v6 == 109 && v7 == 98)
  {
    v8 = a1;
    v9 = a2;
    v10 = 5;
    goto LABEL_31;
  }

  if (v4 == 105)
  {
    if (v5 == 100 && !v6 && !v7)
    {
      v8 = a1;
      v9 = a2;
      v10 = 7;
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  if (v4 == 116)
  {
    if (v5 == 111 && v6 == 116 && v7 == 97)
    {
      v8 = a1;
      v9 = a2;
      v10 = 6;
      goto LABEL_31;
    }

LABEL_44:
    v12 = v5 == 105;
    goto LABEL_45;
  }

  v12 = v5 == 105;
  if (v4 == 100 && v5 == 105 && v6 == 115 && v7 == 112)
  {
    v8 = a1;
    v9 = a2;
    v10 = 8;
    goto LABEL_31;
  }

LABEL_45:
  if (v4 == 109)
  {
    if (v6 != 103)
    {
      v12 = 0;
    }

    if (!v12 || v7 != 97)
    {
      return 13;
    }

    v8 = a1;
    v9 = a2;
    v10 = 10;
    goto LABEL_31;
  }

  if (v4 != 112)
  {
    if (v4 == 99 && v5 == 111 && v6 == 109 && v7 == 109)
    {
      v8 = a1;
      v9 = a2;
      v10 = 11;
    }

    else
    {
      if (v4 != 102 || v5 != 111 || v6 != 114 || v7 != 109)
      {
        return 13;
      }

      v8 = a1;
      v9 = a2;
      v10 = 12;
    }

LABEL_31:
    result = sub_10026F3B4(v8, v9, v10);
    if (result != 13)
    {
      return result;
    }

    return 13;
  }

  if (v5 == 114 && v6 == 111 && v7 == 116)
  {
    v8 = a1;
    v9 = a2;
    v10 = 9;
    goto LABEL_31;
  }

  return 13;
}

uint64_t sub_100272054@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, char a4@<W2>)
{
  v4 = a2;
  v5 = a1;
  sub_1002A3EE0(a1, a2, a4);
  if (v9)
  {
    v10 = v9;
    sub_10028A894(v7, v8, v17);
    v11 = v19;
    if (v19 <= 0xFDu)
    {
      v15 = v18;
      v5 = v17[0];
      v4 = v17[1];
      v16 = _swiftEmptyArrayStorage;
      sub_1002A0858(v10, &v16);

      v13 = v15;
      v14 = v16;
      goto LABEL_14;
    }
  }

  result = sub_100289FA4(v5, v4);
  if (result <= 4u)
  {
    if (result <= 1u)
    {
      v5 = 0;
      v4 = 0;
      if (result)
      {
        v13 = xmmword_1004DB2C0;
        v14 = _swiftEmptyArrayStorage;
        v11 = 16;
      }

      else
      {
        v11 = 0;
        v13 = xmmword_1004EAA80;
        v14 = _swiftEmptyArrayStorage;
      }
    }

    else if (result == 2)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      v11 = 32;
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      if (result == 3)
      {
        v11 = 48;
      }

      else
      {
        v11 = 64;
      }
    }
  }

  else if (result > 7u)
  {
    if (result == 8)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      v11 = 0x80;
    }

    else if (result == 9)
    {
      v5 = 0;
      v4 = 0;
      v13 = xmmword_1004DB2C0;
      v14 = _swiftEmptyArrayStorage;
      v11 = -112;
    }

    else
    {
      v13 = 0uLL;
      v14 = _swiftEmptyArrayStorage;
      v11 = -95;
    }
  }

  else if (result == 5)
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1004DB2C0;
    v14 = _swiftEmptyArrayStorage;
    v11 = 80;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v13 = xmmword_1004DB2C0;
    v14 = _swiftEmptyArrayStorage;
    if (result == 6)
    {
      v11 = 96;
    }

    else
    {
      v11 = 112;
    }
  }

LABEL_14:
  *a3 = v5;
  *(a3 + 8) = v4;
  *(a3 + 16) = v13;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  return result;
}

__n128 sub_1002722A8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v72[0] = *a1;
  v72[1] = v6;
  v73 = *(a1 + 32);
  sub_10028AA80(v72, v70);
  v7 = a1;
  v56 = v70[0];
  v55 = v70[1];
  v8 = v71;
  v9 = *(a1 + 40);
  v10 = *(v9 + 16);
  if (!v10)
  {
    sub_100270C3C(v7);

    v12 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v52 = v7;
  v53 = v71;
  v54 = a3;
  v66 = _swiftEmptyArrayStorage;
  sub_1002ADFB8(0, v10, 0);
  v11 = 0;
  v57 = 0;
  v12 = _swiftEmptyArrayStorage;
  v59 = v9 + 32;
  v60 = a2;
  v58 = v10;
  do
  {
    v62 = v12;
    v13 = (v59 + 56 * v11);
    v14 = *v13;
    v15 = v13[3];
    v16 = v13[4];
    v17 = *(v13 + 40);
    v18 = v13[6];
    if (v13[2])
    {
      v19 = v13[1];
      v67 = 0;
      v68 = 0xE000000000000000;
      if (v14)
      {
        v20 = v19 - v14;
      }

      else
      {
        v20 = 0;
      }

      sub_1004A5874(v20);
      if (v14)
      {
        v21 = v19 == v14;
      }

      else
      {
        v21 = 1;
      }

      if (!v21)
      {
        v22 = v67;
        v23 = v68;
        do
        {
          if (*v14 - 1 <= 0x7D)
          {
            v64 = v22;
            v65 = v23;
            sub_1004A58C4();
            v22 = v64;
            v23 = v65;
          }

          ++v14;
        }

        while (v14 != v19);
        v67 = v22;
        v68 = v23;
      }

      v25 = v67;
      v24 = v68;
    }

    else
    {

      v24 = 0xE400000000000000;
      v25 = 1701667182;
      switch(v14)
      {
        case 1:
          v25 = 0x742D737365636361;
          v24 = 0xEB00000000657079;
          break;
        case 2:
          v24 = 0xE800000000000000;
          v25 = 0x797261646E756F62;
          break;
        case 3:
          v24 = 0xE700000000000000;
          v25 = 0x74657372616863;
          break;
        case 4:
          v24 = 0xE500000000000000;
          v25 = 0x70736C6564;
          break;
        case 5:
          v24 = 0xE600000000000000;
          v25 = 0x7265626D756ELL;
          break;
        case 6:
          v24 = 0xE500000000000000;
          v25 = 0x6C61746F74;
          break;
        case 7:
          v24 = 0xE200000000000000;
          v25 = 25705;
          break;
        case 8:
          v25 = 0x7469736F70736964;
          v24 = 0xEB000000006E6F69;
          break;
        case 9:
          v24 = 0xE800000000000000;
          v25 = 0x6C6F636F746F7270;
          break;
        case 10:
          v24 = 0xE600000000000000;
          v25 = 0x636C6167696DLL;
          break;
        case 11:
          v24 = 0xE700000000000000;
          v25 = 0x746E656D6D6F63;
          break;
        case 12:
          v24 = 0xE600000000000000;
          v25 = 0x74616D726F66;
          break;
        default:
          break;
      }
    }

    v61 = v25;
    if (!v17 || *(v18 + 16) != 1 || (*(v18 + 48) & 0x80000000) == 0 || (v27 = *(v18 + 32), v26 = *(v18 + 40), (sub_1002A1DA8(v27, v26) & 1) == 0))
    {
      v40 = v24;
      v67 = 0;
      v68 = 0xE000000000000000;

      v41 = v60;

      sub_1002A2B60(v15, v16, v17, v18, v15, v16, v17, v18, v41, &v67);
      swift_bridgeObjectRelease_n();

      v42 = v67;
      v43 = v68;
      v44 = v58;
      v12 = v62;
      goto LABEL_43;
    }

    if (v27)
    {
      v28 = v26 - v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 < 0)
    {
      __break(1u);
LABEL_66:
      __break(1u);
    }

    v29 = sub_1002A890C(0, v28, v27, v26);
    if (v31)
    {
      v32 = v31 + v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31 + v29;
    }

    else
    {
      v33 = 0;
    }

    v64 = 0;
    v65 = 0xE000000000000000;
    v34 = v32 - v33;
    if (v33)
    {
      v35 = v32 - v33;
    }

    else
    {
      v35 = 0;
    }

    sub_1004A5874(v35);
    v63 = 0;
    if (!v33)
    {
      v34 = 0;
      v36 = v60;
LABEL_59:

      goto LABEL_60;
    }

    v36 = v60;
    if (v34 < 0)
    {
      goto LABEL_66;
    }

    if (v34 < 1025)
    {
      goto LABEL_59;
    }

    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v38 = swift_slowAlloc();

      v39 = v57;
      sub_1002A5760(v38, v32 - v33, &v64, v33, v32, v36, &v63);
      if (v39)
      {

        __break(1u);
LABEL_68:

        swift_willThrow();
        __break(1u);
        JUMPOUT(0x100272938);
      }

      v57 = 0;
      v40 = v24;

      goto LABEL_62;
    }

LABEL_60:
    __chkstk_darwin(isStackAllocationSafe);
    v67 = &v51 - v48;
    v68 = v34;
    v69 = 0;
    v49 = v57;
    sub_10029F954(&v67, &v64, v33, v32, v36, &v63);
    if (v49)
    {
      goto LABEL_68;
    }

    v57 = 0;
    v40 = v24;
LABEL_62:
    v44 = v58;
    v12 = v62;

    v42 = v64;
    v43 = v65;
LABEL_43:
    v66 = v12;
    v46 = v12[2];
    v45 = v12[3];
    if (v46 >= v45 >> 1)
    {
      sub_1002ADFB8((v45 > 1), v46 + 1, 1);
      v12 = v66;
    }

    ++v11;
    v12[2] = v46 + 1;
    v47 = &v12[4 * v46];
    v47[4] = v61;
    v47[5] = v40;
    v47[6] = v42;
    v47[7] = v43;
  }

  while (v11 != v44);
  sub_100270C3C(v52);

  a3 = v54;
  v8 = v53;
LABEL_64:
  result = v55;
  *a3 = v56;
  *(a3 + 16) = result;
  *(a3 + 32) = v8;
  *(a3 + 40) = v12;
  return result;
}

uint64_t _sSS9IMAP2MIMEEySSAA11ContentTypeVcfC_0(Swift::String a1)
{
  countAndFlagsBits = a1._countAndFlagsBits;
  v2 = *(a1._countAndFlagsBits + 16);
  v20[0] = *a1._countAndFlagsBits;
  v20[1] = v2;
  v21 = *(a1._countAndFlagsBits + 32);
  a1._countAndFlagsBits = v20;
  v3 = _sSS9IMAP2MIMEEySSAA9MediaTypeOcfC_0(a1);
  v18 = v3;
  v4 = *(countAndFlagsBits + 40);
  v19 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 56);
    do
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v11 = *(v6 - 1);
      v10 = *v6;
      v12 = qword_1005D6248;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_1004A4064();
      sub_1001C203C(v13, qword_1005D64A0);
      sub_1001C2190();
      sub_1004A6434();
      if (v14)
      {
        v17._countAndFlagsBits = 8251;
        v17._object = 0xE200000000000000;
        v22._countAndFlagsBits = v9;
        v22._object = v8;
        sub_1004A5994(v22);
        v23._countAndFlagsBits = 61;
        v23._object = 0xE100000000000000;
        sub_1004A5994(v23);
        v7._countAndFlagsBits = v11;
        v7._object = v10;
      }

      else
      {
        v17._countAndFlagsBits = v9;
        v17._object = v8;

        v25._countAndFlagsBits = 8765;
        v25._object = 0xE200000000000000;
        sub_1004A5994(v25);
        v26._countAndFlagsBits = v11;
        v26._object = v10;
        sub_1004A5994(v26);
        v7._countAndFlagsBits = 34;
        v7._object = 0xE100000000000000;
      }

      sub_1004A5994(v7);
      sub_1004A5994(v17);

      v24._countAndFlagsBits = 8251;
      v24._object = 0xE200000000000000;
      sub_1004A5994(v24);

      v6 += 4;
      --v5;
    }

    while (v5);
    sub_100272C34(&v19);
    return v18;
  }

  else
  {
    v16 = v3;
    sub_100272C34(&v19);
    return v16;
  }
}

uint64_t sub_100272B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D64B8, &qword_1004EAA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100272BDC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100272C34(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D64B8, &qword_1004EAA90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100272CAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100272CF4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for UnsafeContentType.Attribute.Key.Known(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnsafeContentType.Attribute.Key.Known(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100272EA4()
{
  result = qword_1005D64C0;
  if (!qword_1005D64C0)
  {
    result = swift_getWitnessTable(byte_1004EAD7C, &type metadata for UnsafeContentType.Attribute.Key.Known, v0, v1);
    atomic_store(result, &qword_1005D64C0);
  }

  return result;
}

unint64_t sub_100272EF8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005AADA0;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t EmailAddress.address.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t EmailAddress.localPart.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t EmailAddress.domainPart.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

double EmailAddress.init(name:localPart:domainPart:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>)
{
  sub_100274CE8(a2, a3, a4, a5, a6, a7, v12);
  v8 = v12[3];
  a1[2] = v12[2];
  a1[3] = v8;
  v9 = v12[5];
  a1[4] = v12[4];
  a1[5] = v9;
  result = *v12;
  v11 = v12[1];
  *a1 = v12[0];
  a1[1] = v11;
  return result;
}

uint64_t sub_100273060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9IMAP2MIME12EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10) & 1;
}

uint64_t sub_1002730BC(uint64_t a1)
{
  if (v1[9] >> 14 < v1[8] >> 14)
  {
    __break(1u);
  }

  v3 = sub_1004A6404();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  pErrorCode[0] = U_ZERO_ERROR;
  NFCInstance = unorm2_getNFCInstance();
  if (NFCInstance)
  {
    sub_1002A7678(v3, v5, v7, v9, NFCInstance);
    v16 = v12;
    if (v12)
    {
      v14 = v11;
    }

    else
    {
      v14 = sub_1004A5864();
      v16 = v18;
    }

    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1002755A0();
    swift_allocError();
    *v13 = 0;
    *(v13 + 4) = 0;
    swift_willThrow();
    v14 = sub_1004A5864();
    v16 = v15;

    if ((*(a1 + 96) & 1) == 0)
    {
LABEL_10:
      v17 = *(a1 + 88);
      goto LABEL_11;
    }
  }

  pErrorCode[0] = U_ZERO_ERROR;
  v17 = uidna_openUTS46(0x3Cu, pErrorCode);
LABEL_11:
  v37 = v17;
  sub_10027EE28(&v37, v14, v16, pErrorCode);
  *(a1 + 88) = v17;
  *(a1 + 96) = 0;

  v20 = *pErrorCode;
  v19 = v36;
  v21 = v1[4];
  v22 = v1[5];
  v24 = v1[6];
  v23 = v1[7];
  pErrorCode[0] = U_ZERO_ERROR;
  v25 = unorm2_getNFCInstance();
  v26 = pErrorCode[0];
  if (v25 && pErrorCode[0] <= U_ZERO_ERROR)
  {
    sub_1002A7678(v21, v22, v24, v23, v25);
    v32 = v28;
    if (v28)
    {
      v30 = v27;
    }

    else
    {
      v30 = sub_1004A5864();
      v32 = v34;
    }
  }

  else
  {
    sub_1002755A0();
    swift_allocError();
    *v29 = v26;
    *(v29 + 4) = 0;
    swift_willThrow();
    v30 = sub_1004A5864();
    v32 = v31;
  }

  *pErrorCode = v30;
  v36 = v32;

  v38._countAndFlagsBits = 64;
  v38._object = 0xE100000000000000;
  sub_1004A5994(v38);

  v39._countAndFlagsBits = v20;
  v39._object = v19;
  sub_1004A5994(v39);

  return *pErrorCode;
}

char *sub_1002733C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_100274B0C(a1, a2);
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1004A6794();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = sub_100273598(v7, 0);

      v11 = *(v10 + 2);
      v12 = *(v6 + 2);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= *(v6 + 3) >> 1)
      {
        if (*(v10 + 2))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        v6 = sub_100274058(isUniquelyReferenced_nonNull_native, v15, 1, v6);
        if (*(v10 + 2))
        {
LABEL_19:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v11)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v16 = *(v6 + 2);
            v17 = __OFADD__(v16, v11);
            v18 = v16 + v11;
            if (v17)
            {
              goto LABEL_29;
            }

            *(v6 + 2) = v18;
          }

          goto LABEL_5;
        }
      }

      if (v11)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v5;
      if (v9 == i)
      {
        goto LABEL_32;
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
LABEL_30:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_32:

  return v6;
}

char *sub_100273598(void *a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    v3 = [a1 groupList];
    if (v3)
    {
      v4 = v3;
      sub_10027551C();
      v5 = sub_1004A5C14();
    }

    else
    {
      v5 = 0;
    }

    v7 = [a1 displayName];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1004A5764();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = [a1 localPart];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1004A5764();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = [a1 domain];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1004A5764();
      v21 = v20;

      if (v5)
      {
LABEL_14:
        v22 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v5 >> 62)
        {
          goto LABEL_49;
        }

        for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
        {
          v24 = 0;
          v41 = v5 & 0xC000000000000001;
          v6 = _swiftEmptyArrayStorage;
          v25 = v22;
          while (1)
          {
            if (v41)
            {
              v26 = v5;
              v27 = sub_1004A6794();
            }

            else
            {
              if (v24 >= *(v22 + 16))
              {
                goto LABEL_44;
              }

              v26 = v5;
              v27 = *(v5 + 8 * v24 + 32);
            }

            v28 = v27;
            v29 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            v22 = sub_100273598(v27, a2 + 1);

            v30 = *(v22 + 16);
            v31 = *(v6 + 2);
            v5 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              goto LABEL_45;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v5 <= *(v6 + 3) >> 1)
            {
              if (*(v22 + 16))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v31 <= v5)
              {
                v33 = v31 + v30;
              }

              else
              {
                v33 = v31;
              }

              v6 = sub_100274058(isUniquelyReferenced_nonNull_native, v33, 1, v6);
              if (*(v22 + 16))
              {
LABEL_32:
                if ((*(v6 + 3) >> 1) - *(v6 + 2) < v30)
                {
                  goto LABEL_47;
                }

                swift_arrayInitWithCopy();

                if (v30)
                {
                  v34 = *(v6 + 2);
                  v35 = __OFADD__(v34, v30);
                  v36 = v34 + v30;
                  if (v35)
                  {
                    goto LABEL_48;
                  }

                  *(v6 + 2) = v36;
                }

                goto LABEL_18;
              }
            }

            if (v30)
            {
              goto LABEL_46;
            }

LABEL_18:
            ++v24;
            v5 = v26;
            v22 = v25;
            if (v29 == i)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          ;
        }

        v6 = _swiftEmptyArrayStorage;
LABEL_51:

        goto LABEL_52;
      }
    }

    else
    {
      v19 = 0;
      v21 = 0;
      if (v5)
      {
        goto LABEL_14;
      }
    }

    if (v16)
    {
      if (v21)
      {
        sub_10000C9C0(&qword_1005D64D0, &unk_1004EAEA0);
        v6 = swift_allocObject();
        *(v6 + 1) = xmmword_1004CEAA0;

        sub_100274CE8(v9, v11, v14, v16, v19, v21, v43);
        v37 = v43[3];
        *(v6 + 4) = v43[2];
        *(v6 + 5) = v37;
        v38 = v43[5];
        *(v6 + 6) = v43[4];
        *(v6 + 7) = v38;
        v39 = v43[1];
        *(v6 + 2) = v43[0];
        *(v6 + 3) = v39;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v6 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v6 = _swiftEmptyArrayStorage;
    }

LABEL_52:

    return v6;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100273998(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6558, &qword_1004EAEC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = v8 << 6;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_100273A98(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6570, &qword_1004EAEE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_100273BA8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000C9C0(&qword_1005D65C8, &qword_1004EAF30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C9C0(&unk_1005D65D0, &qword_1004EAF38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100273CF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6550, &qword_1004EAEC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100273DF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6548, &qword_1004EAEB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100273F30(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10000C9C0(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100274058(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D64D0, &unk_1004EAEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100274178(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65B0, &qword_1004EAF18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002742A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65B8, &unk_1004EAF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002743C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6590, &unk_1004EAF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002744F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6598, &qword_1004F76C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1002745FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D65A0, &qword_1004EAF10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100274708(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C9C0(&qword_1005D6588, &qword_1004EAEF8);
  v10 = *(type metadata accessor for ReplacementNode(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for ReplacementNode(0) - 8);
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

char *sub_1002748E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6568, &qword_1004ECFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1002749F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000C9C0(&qword_1005D6580, &qword_1004EAEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100274B0C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1004A5734();
  v4 = [v2 addressListFromHeaderValue:v3];

  if (v4)
  {
    sub_10000C9C0(&qword_1005D6540, &qword_1004EAEB0);
    v5 = sub_1004A5C14();

    if (v5 >> 62)
    {
LABEL_20:
      v6 = sub_1004A6A34();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004A6794();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v7 + 32);
        swift_unknownObjectRetain();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v10 = [v8 emailAddressValue];
      swift_unknownObjectRelease();
      ++v7;
      if (v10)
      {
        sub_1004A5BF4();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004A5C44();
        }

        sub_1004A5C84();
        v7 = v9;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100274CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, _OWORD *a7@<X8>)
{
  *&v30 = a1;
  *(&v30 + 1) = a2;
  *&v47 = a3;
  *(&v47 + 1) = a4;
  v48._countAndFlagsBits = 64;
  v48._object = 0xE100000000000000;
  sub_1004A5994(v48);
  if ((*(&v47 + 1) & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  }

  else
  {
    v10 = v47 & 0xFFFFFFFFFFFFLL;
  }

  v49._countAndFlagsBits = a5;
  v49._object = a6;
  sub_1004A5994(v49);

  result = sub_1004A5AB4();
  v15 = HIBYTE(*(&v47 + 1)) & 0xFLL;
  if ((*(&v47 + 1) & 0x2000000000000000) == 0)
  {
    v15 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v15 < v10)
  {
    __break(1u);
  }

  else
  {
    v29 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v19 = sub_1004A5AB4();
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v32 = v30;
    v33 = v47;
    *&v34 = v29;
    *(&v34 + 1) = v16;
    *&v35 = v17;
    *(&v35 + 1) = v18;
    *&v36 = v19;
    *(&v36 + 1) = v21;
    *&v37 = v23;
    *(&v37 + 1) = v25;
    v38[0] = v30;
    v38[1] = v47;
    v39 = v29;
    v40 = v16;
    v41 = v17;
    v42 = v18;
    v43 = v19;
    v44 = v21;
    v45 = v23;
    v46 = v25;
    sub_100275568(&v32, v31);
    result = sub_1002755F4(v38);
    v26 = v35;
    a7[2] = v34;
    a7[3] = v26;
    v27 = v37;
    a7[4] = v36;
    a7[5] = v27;
    v28 = v33;
    *a7 = v32;
    a7[1] = v28;
  }

  return result;
}

uint64_t sub_100274EBC(uint64_t a1, unint64_t a2)
{

  v2 = sub_1004A59D4();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    do
    {
      if (v4 == 2573 && v5 == 0xE200000000000000 || (sub_1004A6D34() & 1) != 0)
      {
        goto LABEL_3;
      }

      if ((v5 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v5) & 0xF;
      }

      else
      {
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v7)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        v12 = sub_1004A5884();
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v9 = v4;
        }

        else
        {
          v8 = ((v4 & 0x1000000000000000) != 0 ? (v5 & 0xFFFFFFFFFFFFFFFLL) + 32 : sub_1004A67E4());
          v9 = *v8;
        }

        v10 = v9;
        v11 = (__clz(~v9) - 24) << 16;
        v12 = v10 < 0 ? v11 : 65541;
      }

      if (v12 >> 14 != 4 * v7)
      {
        goto LABEL_3;
      }

      v13 = sub_1001E11BC(v4, v5);
      if ((v13 & 0x100000000) != 0)
      {
        goto LABEL_56;
      }

      if ((v13 & 0xFFFFFF80) != 0)
      {
LABEL_3:
      }

      else
      {
        v14 = sub_1001E11BC(v4, v5);
        if ((v14 & 0x100000000) != 0)
        {
          goto LABEL_57;
        }

        v15 = v14;

        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_55;
        }

        if (v15 - 34 <= 0x3A && ((1 << (v15 - 34)) & 0x4000000540004C1) != 0)
        {

          v37._countAndFlagsBits = 34;
          v37._object = 0xE100000000000000;
          sub_1004A5994(v37);
          v16 = 0;
          goto LABEL_32;
        }
      }

      v4 = sub_1004A59D4();
      v5 = v6;
    }

    while (v6);
  }

  v16 = 1;
LABEL_32:

  v17 = sub_1004A59D4();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    do
    {
      if (v19 == 34 && v20 == 0xE100000000000000 || (sub_1004A6D34() & 1) != 0)
      {

        v21._countAndFlagsBits = 8796;
      }

      else
      {
        if ((v19 != 92 || v20 != 0xE100000000000000) && (sub_1004A6D34() & 1) == 0)
        {
          v38._countAndFlagsBits = v19;
          v38._object = v20;
          sub_1004A5984(v38);

          goto LABEL_39;
        }

        v21._countAndFlagsBits = 23644;
      }

      v21._object = 0xE200000000000000;
      sub_1004A5994(v21);
LABEL_39:
      v19 = sub_1004A59D4();
      v20 = v22;
    }

    while (v22);
  }

  if ((v16 & 1) == 0)
  {
    v39._countAndFlagsBits = 34;
    v39._object = 0xE100000000000000;
    sub_1004A5994(v39);
  }

  v23 = 0;
  v24 = sub_1004A5AB4();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  NFCInstance = unorm2_getNFCInstance();
  if (NFCInstance)
  {
    sub_1002A7678(v24, v26, v28, v30, NFCInstance);
    v34 = v33;
    v36 = v35;

    if (v34)
    {

      return v36;
    }
  }

  else
  {
  }

  return v23;
}

uint64_t sub_1002752CC@<X0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>)
{
  v6 = sub_1002A8490(a2, a3);
  v8 = sub_1002A062C(v6, v7, a4);
  v10 = sub_1002733C8(v8, v9);

  if (*(v10 + 2))
  {
    v11 = *(v10 + 3);
    v28 = *(v10 + 2);
    v29 = v11;
    v12 = *(v10 + 5);
    v30 = *(v10 + 4);
    v31 = v12;
    v13 = *(v10 + 7);
    v32 = *(v10 + 6);
    v33 = v13;
    v25 = v29;
    v26 = v28;
    v23 = v31;
    v24 = v30;
    v21 = v13;
    v22 = v32;
    sub_100275568(&v28, v27);

    v16 = v21;
    v15 = v22;
    v18 = v23;
    v17 = v24;
    v20 = v25;
    v19 = v26;
  }

  else
  {

    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  *a1 = v19;
  a1[1] = v20;
  a1[2] = v17;
  a1[3] = v18;
  a1[4] = v15;
  a1[5] = v16;
  return result;
}

uint64_t _s9IMAP2MIME12EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1004A6D34() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1004A6D34() & 1) == 0 || (sub_10027F698(a1[4], a1[5], a1[6], a1[7], a2[4], a2[5], a2[6], a2[7]) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = a1[11];
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];

  return sub_10027F698(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10027546C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1002754B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

ValueMetadata *type metadata accessor for EmailAddress()
{
  return &type metadata for EmailAddress;
}

{
  return &type metadata for EmailAddress;
}

unint64_t sub_10027551C()
{
  result = qword_1005D64D8;
  if (!qword_1005D64D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D64D8);
  }

  return result;
}

unint64_t sub_1002755A0()
{
  result = qword_1005D65A8;
  if (!qword_1005D65A8)
  {
    result = swift_getWitnessTable(byte_1004ED710, &type metadata for ICUError, v0, v1);
    atomic_store(result, &qword_1005D65A8);
  }

  return result;
}

uint64_t sub_10027564C(_OWORD *a1, uint64_t a2, uint64_t (*a3)(_OWORD *))
{
  swift_beginAccess();
  if (*(a2 + 16) == 2 && (swift_beginAccess(), v7 = a1[10], v8 = a1[8], v56 = a1[9], v57 = v7, v9 = a1[10], v58[0] = a1[11], *(v58 + 9) = *(a1 + 185), v10 = a1[6], v11 = a1[4], v52 = a1[5], v53 = v10, v12 = a1[6], v13 = a1[8], v54 = a1[7], v55 = v13, v14 = a1[2], v48 = a1[1], v49 = v14, v15 = a1[4], v17 = a1[1], v16 = a1[2], v50 = a1[3], v51 = v15, v67 = v56, v68 = v9, v69[0] = a1[11], *(v69 + 9) = *(a1 + 185), v63 = v52, v64 = v12, v65 = v54, v66 = v8, v59 = v17, v60 = v16, v61 = v50, v62 = v11, sub_100021348(&v59) != 1))
  {
    v70[8] = v67;
    v70[9] = v68;
    v71[0] = v69[0];
    *(v71 + 9) = *(v69 + 9);
    v70[4] = v63;
    v70[5] = v64;
    v70[6] = v65;
    v70[7] = v66;
    v70[0] = v59;
    v70[1] = v60;
    v70[2] = v61;
    v70[3] = v62;
    v46[8] = v56;
    v46[9] = v57;
    v47[0] = v58[0];
    *(v47 + 9) = *(v58 + 9);
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_1002764DC(v46, v44);
    v29 = a3(v70);
    if (v3)
    {
      sub_100276474(&v48);
    }

    else
    {
      v30 = v29;
      sub_100276474(&v48);
      swift_beginAccess();
      *(a2 + 16) = v30;
    }

    sub_100276450(v42);
    swift_beginAccess();
    v31 = a1[10];
    v44[8] = a1[9];
    v44[9] = v31;
    v45[0] = a1[11];
    *(v45 + 9) = *(a1 + 185);
    v32 = a1[6];
    v44[4] = a1[5];
    v44[5] = v32;
    v33 = a1[8];
    v44[6] = a1[7];
    v44[7] = v33;
    v34 = a1[2];
    v44[0] = a1[1];
    v44[1] = v34;
    v35 = a1[4];
    v44[2] = a1[3];
    v44[3] = v35;
    v36 = v42[9];
    a1[9] = v42[8];
    a1[10] = v36;
    a1[11] = v43[0];
    *(a1 + 185) = *(v43 + 9);
    v37 = v42[5];
    a1[5] = v42[4];
    a1[6] = v37;
    v38 = v42[7];
    a1[7] = v42[6];
    a1[8] = v38;
    v39 = v42[1];
    a1[1] = v42[0];
    a1[2] = v39;
    v40 = v42[3];
    a1[3] = v42[2];
    a1[4] = v40;
    v28 = v44;
  }

  else
  {
    sub_100276450(&v48);
    swift_beginAccess();
    v18 = a1[10];
    v67 = a1[9];
    v68 = v18;
    v69[0] = a1[11];
    *(v69 + 9) = *(a1 + 185);
    v19 = a1[6];
    v63 = a1[5];
    v64 = v19;
    v20 = a1[8];
    v65 = a1[7];
    v66 = v20;
    v21 = a1[2];
    v59 = a1[1];
    v60 = v21;
    v22 = a1[4];
    v61 = a1[3];
    v62 = v22;
    v23 = v57;
    a1[9] = v56;
    a1[10] = v23;
    a1[11] = v58[0];
    *(a1 + 185) = *(v58 + 9);
    v24 = v53;
    a1[5] = v52;
    a1[6] = v24;
    v25 = v55;
    a1[7] = v54;
    a1[8] = v25;
    v26 = v49;
    a1[1] = v48;
    a1[2] = v26;
    v27 = v51;
    a1[3] = v50;
    a1[4] = v27;
    v28 = &v59;
  }

  return sub_100276474(v28);
}

uint64_t sub_100275984(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  result = sub_10027564C(a2, a3, a4);
  if (!v4)
  {
    *&v23 = v7;
    BYTE8(v23) = v8;
    *&v24 = v9;
    *(&v24 + 1) = v10;
    *v25 = v11;
    memset(&v25[8], 0, 48);
    v25[56] = 2;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30[0] = 2;
    *&v30[8] = 0;
    *&v30[16] = 0;
    v30[24] = 2;
    UInt32.init(_:)(&v23);
    swift_beginAccess();
    v13 = a2[10];
    v31[8] = a2[9];
    v31[9] = v13;
    v32[0] = a2[11];
    *(v32 + 9) = *(a2 + 185);
    v14 = a2[6];
    v31[4] = a2[5];
    v31[5] = v14;
    v15 = a2[8];
    v31[6] = a2[7];
    v31[7] = v15;
    v16 = a2[2];
    v31[0] = a2[1];
    v31[1] = v16;
    v17 = a2[4];
    v31[2] = a2[3];
    v31[3] = v17;
    v18 = v29;
    a2[9] = v28;
    a2[10] = v18;
    a2[11] = *v30;
    *(a2 + 185) = *&v30[9];
    v19 = *&v25[48];
    a2[5] = *&v25[32];
    a2[6] = v19;
    v20 = v27;
    a2[7] = v26;
    a2[8] = v20;
    v21 = v24;
    a2[1] = v23;
    a2[2] = v21;
    v22 = *&v25[16];
    a2[3] = *v25;
    a2[4] = v22;

    sub_100276474(v31);
    swift_beginAccess();
    return *(a3 + 16);
  }

  return result;
}

uint64_t sub_100275AEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t (*a7)(uint64_t *, uint64_t, uint64_t, uint64_t, void))
{
  v13 = a1[3];
  v14 = a1[5];
  swift_beginAccess();
  v15 = *(a6 + 9);
  v39[8] = *(a6 + 8);
  v39[9] = v15;
  v40[0] = *(a6 + 10);
  *(v40 + 9) = *(a6 + 169);
  v16 = *(a6 + 5);
  v39[4] = *(a6 + 4);
  v39[5] = v16;
  v17 = *(a6 + 7);
  v39[6] = *(a6 + 6);
  v39[7] = v17;
  v18 = *(a6 + 1);
  v39[0] = *a6;
  v39[1] = v18;
  v19 = *(a6 + 3);
  v39[2] = *(a6 + 2);
  v39[3] = v19;
  if (sub_100021348(v39) != 1)
  {
    v30 = *a1;
    v29 = a1[1];
    v31 = *(a1 + 16);
    v32 = a1[4];
    v33 = v32 >> 59;
    if ((v32 >> 59) <= 5)
    {
      if (v33)
      {
        if (v33 == 5)
        {
          a6[5] = v30;
          a6[6] = v29;
          a6[7] = v31 & 1;
          a6[8] = v13;
        }
      }

      else
      {
        a6[21] = v30;
        a6[22] = v29;
        *(a6 + 184) = v31 & 1;
      }
    }

    else
    {
      switch(v33)
      {
        case 6:
          a6[18] = v30;
          a6[19] = v29;
          *(a6 + 160) = v31 & 1;
          break;
        case 8:
          a6[9] = v30;
          a6[10] = v29;
          *(a6 + 88) = v31 & 1;
          break;
        case 9:
          v34 = *(a1 + 17);
          v35 = *(a1 + 21);
          a6[12] = v30;
          a6[13] = v29;
          *(a6 + 112) = v31;
          *(a6 + 113) = v34;
          *(a6 + 117) = v35;
          *(a6 + 119) = *(a1 + 23);
          a6[15] = v13;
          a6[16] = v32;
          a6[17] = v14;

          break;
      }
    }
  }

  swift_beginAccess();
  v20 = *(a6 + 8);
  v21 = *(a6 + 10);
  v37[9] = *(a6 + 9);
  v38[0] = v21;
  *(v38 + 9) = *(a6 + 169);
  v22 = *(a6 + 5);
  v37[4] = *(a6 + 4);
  v37[5] = v22;
  v23 = *(a6 + 7);
  v37[6] = *(a6 + 6);
  v37[7] = v23;
  v37[8] = v20;
  v24 = *(a6 + 1);
  v37[0] = *a6;
  v37[1] = v24;
  v25 = *(a6 + 3);
  v37[2] = *(a6 + 2);
  v37[3] = v25;
  result = sub_100021348(v37);
  if (result != 1)
  {

    v28 = static SectionSpecifier.Part.__derived_struct_equals(_:_:)(v27, _swiftEmptyArrayStorage);

    if (v28)
    {
      return a7(a1, a2, a3, a4, a5 & 1);
    }
  }

  return result;
}

unint64_t sub_100275D34()
{
  if (*(v0 + 184) == 2)
  {
    return 0;
  }

  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  if (v2)
  {
    v4 = v3 - v2;
  }

  else
  {
    v4 = 0;
  }

  if (v4 < 0)
  {
    __break(1u);
LABEL_79:

    return 0;
  }

  v7 = sub_1002A84A8(0, v4, v2, v3);
  v9 = v8;
  if (!v5)
  {
    v14 = v6;
    v15 = sub_1002881FC(0, v7, 0, v6);
    result = sub_1002881FC(v7, v9, 0, v14);
    if (__OFADD__(v15, result))
    {
      __break(1u);
    }

    else if ((v15 + result) >= v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v10 = v5;
  v11 = v6;
  v12 = sub_1002881FC(0, v7, v5, v6);
  v13 = sub_1002881FC(v7, v9, v10, v11);
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_82;
  }

  if (v12 + v13 < v12)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_13:
  result = sub_1004A58D4();
  v17 = HIBYTE(v16) & 0xF;
  v18 = result & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v19 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    goto LABEL_79;
  }

  if ((v16 & 0x1000000000000000) == 0)
  {
    if ((v16 & 0x2000000000000000) != 0)
    {
      v42[0] = result;
      v42[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v17)
        {
          v18 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            v31 = v42 + 1;
            while (1)
            {
              v32 = *v31 - 48;
              if (v32 > 9)
              {
                break;
              }

              v33 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                break;
              }

              v21 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                break;
              }

              ++v31;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_89:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v17)
        {
          v21 = 0;
          v36 = v42;
          while (1)
          {
            v37 = *v36 - 48;
            if (v37 > 9)
            {
              break;
            }

            v38 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v38 + v37;
            if (__OFADD__(v38, v37))
            {
              break;
            }

            ++v36;
            if (!--v17)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_73;
      }

      if (v17)
      {
        v18 = v17 - 1;
        if (v17 != 1)
        {
          v21 = 0;
          v25 = v42 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              break;
            }

            v27 = 10 * v21;
            if ((v21 * 10) >> 64 != (10 * v21) >> 63)
            {
              break;
            }

            v21 = v27 - v26;
            if (__OFSUB__(v27, v26))
            {
              break;
            }

            ++v25;
            if (!--v18)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      goto LABEL_87;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      result = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_21:
      v20 = *result;
      if (v20 == 43)
      {
        if (v18 >= 1)
        {
          if (--v18)
          {
            v21 = 0;
            if (result)
            {
              v28 = (result + 1);
              while (1)
              {
                v29 = *v28 - 48;
                if (v29 > 9)
                {
                  goto LABEL_73;
                }

                v30 = 10 * v21;
                if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                {
                  goto LABEL_73;
                }

                v21 = v30 + v29;
                if (__OFADD__(v30, v29))
                {
                  goto LABEL_73;
                }

                ++v28;
                if (!--v18)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_72;
          }

          goto LABEL_73;
        }

        goto LABEL_88;
      }

      if (v20 != 45)
      {
        if (v18)
        {
          v21 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_73;
              }

              v35 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_73;
              }

              v21 = v35 + v34;
              if (__OFADD__(v35, v34))
              {
                goto LABEL_73;
              }

              ++result;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_73:
        v21 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_74;
      }

      if (v18 >= 1)
      {
        if (--v18)
        {
          v21 = 0;
          if (result)
          {
            v22 = (result + 1);
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                goto LABEL_73;
              }

              v24 = 10 * v21;
              if ((v21 * 10) >> 64 != (10 * v21) >> 63)
              {
                goto LABEL_73;
              }

              v21 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                goto LABEL_73;
              }

              ++v22;
              if (!--v18)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_72:
          LOBYTE(v18) = 0;
LABEL_74:
          v43 = v18;
          v39 = v18;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      goto LABEL_86;
    }

LABEL_83:
    result = sub_1004A67E4();
    v18 = v41;
    goto LABEL_21;
  }

  v43 = 0;
  v21 = sub_10010C28C(result, v16, 10);
  v39 = v40;
LABEL_75:

  if (v39)
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

uint64_t sub_100276114(_OWORD *a1, uint64_t a2, char **a3, void *a4)
{
  swift_beginAccess();
  if (*(a2 + 16) == 2 && (swift_beginAccess(), v9 = a1[10], v10 = a1[8], v58 = a1[9], v59 = v9, v11 = a1[10], v60[0] = a1[11], *(v60 + 9) = *(a1 + 185), v12 = a1[6], v13 = a1[4], v54 = a1[5], v55 = v12, v14 = a1[6], v15 = a1[8], v56 = a1[7], v57 = v15, v16 = a1[2], v50 = a1[1], v51 = v16, v17 = a1[4], v19 = a1[1], v18 = a1[2], v52 = a1[3], v53 = v17, v69 = v58, v70 = v11, v71[0] = a1[11], *(v71 + 9) = *(a1 + 185), v65 = v54, v66 = v14, v67 = v56, v68 = v10, v61 = v19, v62 = v18, v63 = v52, v64 = v13, sub_100021348(&v61) != 1))
  {
    v72[8] = v69;
    v72[9] = v70;
    v73[0] = v71[0];
    *(v73 + 9) = *(v71 + 9);
    v72[4] = v65;
    v72[5] = v66;
    v72[6] = v67;
    v72[7] = v68;
    v72[0] = v61;
    v72[1] = v62;
    v72[2] = v63;
    v72[3] = v64;
    v48[8] = v58;
    v48[9] = v59;
    v49[0] = v60[0];
    *(v49 + 9) = *(v60 + 9);
    v48[4] = v54;
    v48[5] = v55;
    v48[6] = v56;
    v48[7] = v57;
    v48[0] = v50;
    v48[1] = v51;
    v48[2] = v52;
    v48[3] = v53;
    sub_1002764DC(v48, v46);
    v31 = sub_1002A4C50(v72, a3, a4);
    if (v4)
    {
      sub_100276474(&v50);
    }

    else
    {
      v32 = v31;
      sub_100276474(&v50);
      swift_beginAccess();
      *(a2 + 16) = v32;
    }

    sub_100276450(v44);
    swift_beginAccess();
    v33 = a1[10];
    v46[8] = a1[9];
    v46[9] = v33;
    v47[0] = a1[11];
    *(v47 + 9) = *(a1 + 185);
    v34 = a1[6];
    v46[4] = a1[5];
    v46[5] = v34;
    v35 = a1[8];
    v46[6] = a1[7];
    v46[7] = v35;
    v36 = a1[2];
    v46[0] = a1[1];
    v46[1] = v36;
    v37 = a1[4];
    v46[2] = a1[3];
    v46[3] = v37;
    v38 = v44[9];
    a1[9] = v44[8];
    a1[10] = v38;
    a1[11] = v45[0];
    *(a1 + 185) = *(v45 + 9);
    v39 = v44[5];
    a1[5] = v44[4];
    a1[6] = v39;
    v40 = v44[7];
    a1[7] = v44[6];
    a1[8] = v40;
    v41 = v44[1];
    a1[1] = v44[0];
    a1[2] = v41;
    v42 = v44[3];
    a1[3] = v44[2];
    a1[4] = v42;
    v30 = v46;
  }

  else
  {
    sub_100276450(&v50);
    swift_beginAccess();
    v20 = a1[10];
    v69 = a1[9];
    v70 = v20;
    v71[0] = a1[11];
    *(v71 + 9) = *(a1 + 185);
    v21 = a1[6];
    v65 = a1[5];
    v66 = v21;
    v22 = a1[8];
    v67 = a1[7];
    v68 = v22;
    v23 = a1[2];
    v61 = a1[1];
    v62 = v23;
    v24 = a1[4];
    v63 = a1[3];
    v64 = v24;
    v25 = v59;
    a1[9] = v58;
    a1[10] = v25;
    a1[11] = v60[0];
    *(a1 + 185) = *(v60 + 9);
    v26 = v55;
    a1[5] = v54;
    a1[6] = v26;
    v27 = v57;
    a1[7] = v56;
    a1[8] = v27;
    v28 = v51;
    a1[1] = v50;
    a1[2] = v28;
    v29 = v53;
    a1[3] = v52;
    a1[4] = v29;
    v30 = &v61;
  }

  return sub_100276474(v30);
}

double sub_100276450(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100276474(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D65E0, &unk_1004EB070);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100276514(_OWORD *a1, uint64_t a2, char **a3)
{
  swift_beginAccess();
  if (*(a2 + 16) == 2 && (swift_beginAccess(), v7 = a1[10], v8 = a1[8], v56 = a1[9], v57 = v7, v9 = a1[10], v58[0] = a1[11], *(v58 + 9) = *(a1 + 185), v10 = a1[6], v11 = a1[4], v52 = a1[5], v53 = v10, v12 = a1[6], v13 = a1[8], v54 = a1[7], v55 = v13, v14 = a1[2], v48 = a1[1], v49 = v14, v15 = a1[4], v17 = a1[1], v16 = a1[2], v50 = a1[3], v51 = v15, v67 = v56, v68 = v9, v69[0] = a1[11], *(v69 + 9) = *(a1 + 185), v63 = v52, v64 = v12, v65 = v54, v66 = v8, v59 = v17, v60 = v16, v61 = v50, v62 = v11, sub_100021348(&v59) != 1))
  {
    v70[8] = v67;
    v70[9] = v68;
    v71[0] = v69[0];
    *(v71 + 9) = *(v69 + 9);
    v70[4] = v63;
    v70[5] = v64;
    v70[6] = v65;
    v70[7] = v66;
    v70[0] = v59;
    v70[1] = v60;
    v70[2] = v61;
    v70[3] = v62;
    v46[8] = v56;
    v46[9] = v57;
    v47[0] = v58[0];
    *(v47 + 9) = *(v58 + 9);
    v46[4] = v52;
    v46[5] = v53;
    v46[6] = v54;
    v46[7] = v55;
    v46[0] = v48;
    v46[1] = v49;
    v46[2] = v50;
    v46[3] = v51;
    sub_1002764DC(v46, v44);
    v29 = sub_1002993E4(v70, a3);
    if (v3)
    {
      sub_100276474(&v48);
    }

    else
    {
      v30 = v29;
      sub_100276474(&v48);
      swift_beginAccess();
      *(a2 + 16) = v30;
    }

    sub_100276450(v42);
    swift_beginAccess();
    v31 = a1[10];
    v44[8] = a1[9];
    v44[9] = v31;
    v45[0] = a1[11];
    *(v45 + 9) = *(a1 + 185);
    v32 = a1[6];
    v44[4] = a1[5];
    v44[5] = v32;
    v33 = a1[8];
    v44[6] = a1[7];
    v44[7] = v33;
    v34 = a1[2];
    v44[0] = a1[1];
    v44[1] = v34;
    v35 = a1[4];
    v44[2] = a1[3];
    v44[3] = v35;
    v36 = v42[9];
    a1[9] = v42[8];
    a1[10] = v36;
    a1[11] = v43[0];
    *(a1 + 185) = *(v43 + 9);
    v37 = v42[5];
    a1[5] = v42[4];
    a1[6] = v37;
    v38 = v42[7];
    a1[7] = v42[6];
    a1[8] = v38;
    v39 = v42[1];
    a1[1] = v42[0];
    a1[2] = v39;
    v40 = v42[3];
    a1[3] = v42[2];
    a1[4] = v40;
    v28 = v44;
  }

  else
  {
    sub_100276450(&v48);
    swift_beginAccess();
    v18 = a1[10];
    v67 = a1[9];
    v68 = v18;
    v69[0] = a1[11];
    *(v69 + 9) = *(a1 + 185);
    v19 = a1[6];
    v63 = a1[5];
    v64 = v19;
    v20 = a1[8];
    v65 = a1[7];
    v66 = v20;
    v21 = a1[2];
    v59 = a1[1];
    v60 = v21;
    v22 = a1[4];
    v61 = a1[3];
    v62 = v22;
    v23 = v57;
    a1[9] = v56;
    a1[10] = v23;
    a1[11] = v58[0];
    *(a1 + 185) = *(v58 + 9);
    v24 = v53;
    a1[5] = v52;
    a1[6] = v24;
    v25 = v55;
    a1[7] = v54;
    a1[8] = v25;
    v26 = v49;
    a1[1] = v48;
    a1[2] = v26;
    v27 = v51;
    a1[3] = v50;
    a1[4] = v27;
    v28 = &v59;
  }

  return sub_100276474(v28);
}

uint64_t sub_100276848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_100276890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Message.enumerateDecodedPlainText(input:outputLimit:cache:_:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v10 = a1;

  return sub_10028BB78(v5, v10, a2, a3, a4, a5, v11);
}

uint64_t Message.enumerateDecodedHTMLText(input:outputLimit:cache:_:)(uint64_t a1, char *a2, char *a3, char *a4, char *a5)
{
  v10 = a1;

  return sub_10028C3BC(v5, v10, a2, a3, a4, a5, v11);
}

uint64_t sub_100276AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void *a7, uint64_t (*a8)(void), uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t (*a12)(uint64_t), uint64_t (*a13)(uint64_t *, uint64_t, uint64_t, uint64_t, void))
{
  v113 = 0;
  v81[16] = a10;
  v82 = a6;
  v83 = a7;
  v84 = &v113;
  v85 = a8;
  v86 = a9;
  v15 = swift_allocObject();
  v16 = v15 + 1;
  sub_100276450(&v130);
  v17 = v139;
  v15[9] = v138;
  v15[10] = v17;
  v15[11] = v140[0];
  *(v15 + 185) = *(v140 + 9);
  v18 = v135;
  v15[5] = v134;
  v15[6] = v18;
  v19 = v137;
  v15[7] = v136;
  v15[8] = v19;
  v20 = v131;
  v15[1] = v130;
  v15[2] = v20;
  v21 = v133;
  v15[3] = v132;
  v15[4] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = 2;
  v77 = v15;
  v78 = v22;
  v79 = a11;
  v80 = v81;
  v73 = v15 + 1;
  v74 = UInt32.init(_:);
  v75 = 0;
  v23 = v141;
  sub_100296AD8(a5, a1, a2, a3, a4);
  if (v23)
  {
  }

  else
  {
    LODWORD(v141) = a10;
    v28 = v15 + 1;
    v125 = _swiftEmptyArrayStorage;
    v126 = v24;
    v127 = v25;
    v128 = v26;
    v129 = v27;
    sub_100295F74(a12, v76, a13, v72, 0, 0);
    swift_beginAccess();
    if (*(v22 + 16) == 2 && (swift_beginAccess(), v30 = v15[10], v31 = v15[8], v99 = v15[9], v100 = v30, v32 = v15[10], v101[0] = v15[11], *(v101 + 9) = *(v15 + 185), v33 = v15[6], v34 = v15[4], v95 = v15[5], v96 = v33, v35 = v15[6], v36 = v15[8], v97 = v15[7], v98 = v36, v37 = v15[2], v91 = *v16, v92 = v37, v38 = v15[4], v40 = *v16, v39 = v15[2], v93 = v15[3], v94 = v38, v110 = v99, v111 = v32, v112[0] = v15[11], *(v112 + 9) = *(v15 + 185), v106 = v95, v107 = v35, v108 = v97, v109 = v31, v102 = v40, v103 = v39, v104 = v93, v105 = v34, sub_100021348(&v102) != 1))
    {
      v122 = v110;
      v123 = v111;
      v124[0] = v112[0];
      *(v124 + 9) = *(v112 + 9);
      v118 = v106;
      v119 = v107;
      v120 = v108;
      v121 = v109;
      v114 = v102;
      v115 = v103;
      v116 = v104;
      v117 = v105;
      v89[8] = v99;
      v89[9] = v100;
      v90[0] = v101[0];
      *(v90 + 9) = *(v101 + 9);
      v89[4] = v95;
      v89[5] = v96;
      v89[6] = v97;
      v89[7] = v98;
      v89[0] = v91;
      v89[1] = v92;
      v89[2] = v93;
      v89[3] = v94;
      sub_1002764DC(v89, v87);
      v52 = sub_1002770A0(v141, a6, a7);
      if (v53)
      {
        v54 = a8(v52);

        v113 = v54 & 1;
      }

      else
      {
        v54 = v113;
      }

      sub_100276474(&v91);
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = 2;
      }

      *(v22 + 16) = v55;
      v56 = v15[10];
      v87[8] = v15[9];
      v87[9] = v56;
      v88[0] = v15[11];
      *(v88 + 9) = *(v15 + 185);
      v57 = v15[6];
      v87[4] = v15[5];
      v87[5] = v57;
      v58 = v15[8];
      v87[6] = v15[7];
      v87[7] = v58;
      v59 = v15[2];
      v87[0] = *v28;
      v87[1] = v59;
      v60 = v15[4];
      v87[2] = v15[3];
      v87[3] = v60;
      v61 = v139;
      v15[9] = v138;
      v15[10] = v61;
      v15[11] = v140[0];
      *(v15 + 185) = *(v140 + 9);
      v62 = v135;
      v15[5] = v134;
      v15[6] = v62;
      v63 = v137;
      v15[7] = v136;
      v15[8] = v63;
      v64 = v131;
      *v28 = v130;
      v15[2] = v64;
      v65 = v133;
      v15[3] = v132;
      v15[4] = v65;
      v51 = v87;
    }

    else
    {
      swift_beginAccess();
      v41 = v15[10];
      v122 = v15[9];
      v123 = v41;
      v124[0] = v15[11];
      *(v124 + 9) = *(v15 + 185);
      v42 = v15[6];
      v118 = v15[5];
      v119 = v42;
      v43 = v15[8];
      v120 = v15[7];
      v121 = v43;
      v44 = v15[2];
      v114 = *v16;
      v115 = v44;
      v45 = v15[4];
      v116 = v15[3];
      v117 = v45;
      v46 = v139;
      v15[9] = v138;
      v15[10] = v46;
      v15[11] = v140[0];
      *(v15 + 185) = *(v140 + 9);
      v47 = v135;
      v15[5] = v134;
      v15[6] = v47;
      v48 = v137;
      v15[7] = v136;
      v15[8] = v48;
      v49 = v131;
      *v16 = v130;
      v15[2] = v49;
      v50 = v133;
      v15[3] = v132;
      v15[4] = v50;
      v51 = &v114;
    }

    sub_100276474(v51);
  }
}

unint64_t sub_100276FAC()
{
  result = qword_1005D65E8;
  if (!qword_1005D65E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextPartEnumerationResult, &type metadata for TextPartEnumerationResult, v0, v1);
    atomic_store(result, &qword_1005D65E8);
  }

  return result;
}

uint64_t sub_100277010(uint64_t a1, char a2, uint64_t a3, void *a4, char *a5, uint64_t (*a6)(uint64_t))
{
  v8 = sub_1002770A0(a2 & 1, a3, a4);
  if (v9)
  {
    v10 = a6(v8);

    *a5 = v10 & 1;
  }

  else
  {
    v10 = *a5;
  }

  if (v10)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1002770A0(char a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 136);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 128);
  if ((v5 & 0xF0) != 0x50)
  {
    return 0;
  }

  v6 = *(v3 + 96);
  v7 = *(v3 + 104);
  if (*(v3 + 112))
  {
    return 0;
  }

  v25 = *(v3 + 112);
  v11 = sub_10027C548(v6, v7);
  if (a1)
  {
    if (v11 != 1819112552 || v12 != 0xE400000000000000)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_12;
  }

  if (v11 == 0x6E69616C70 && v12 == 0xE500000000000000)
  {
    goto LABEL_10;
  }

LABEL_11:
  v13 = sub_1004A6D34();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v26[0] = v6;
  v26[1] = v7;
  v27 = v25;
  v28 = v5;
  v29 = v4;
  if (*(v3 + 88) == 2 || (v14 = sub_1002A8490(*(v3 + 72), *(v3 + 80)), v16 = sub_10027046C(v14, v15), v16 == 5))
  {
    v16 = 0;
  }

  if (a2 <= 0)
  {
    return 0;
  }

  result = sub_1002958F8(*(v3 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32));
  v19 = v18 - result;
  if (!result)
  {
    v19 = 0;
  }

  if (v19 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v20 = result;
    v21 = v18;
    v22 = 2 * v19;
    if (v22 >= a2)
    {
      v23 = a2;
    }

    else
    {
      v23 = v22;
    }

    v24 = sub_100270634(v16, v23, v20, v21, v26, a3);

    return v24;
  }

  return result;
}

uint64_t sub_1002772C8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t sub_1002773B4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9IMAP2MIME11DisplayPartO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v14) & 1;
}

double DisplayPart.Attachment.contentType.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  sub_10026E678(v3, v4, v5, v6, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8;
  *(a1 + 40) = v7;

  return result;
}

__n128 DisplayPart.Attachment.contentType.setter(uint64_t a1)
{
  sub_10026E76C(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));

  v3 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  result = *(a1 + 32);
  *(v1 + 40) = result;
  return result;
}

uint64_t DisplayPart.Attachment.contentDisposition.getter()
{
  v1 = *(v0 + 56);
  sub_10026B2E0(v1, *(v0 + 64));

  return v1;
}

uint64_t DisplayPart.Attachment.contentDisposition.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10026B32C(v3[7], v3[8]);

  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
  return result;
}

uint64_t DisplayPart.Attachment.contentID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t DisplayPart.Attachment.contentID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t DisplayPart.Attachment.encodedBytes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2;
  return result;
}

__n128 DisplayPart.Attachment.init(part:contentDisposition:contentType:contentTransferEncoding:estimatedDecodedSize:encodedBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a5 + 16);
  *(a9 + 8) = *a5;
  *a9 = a1;
  *(a9 + 24) = v10;
  result = *(a5 + 32);
  *(a9 + 40) = result;
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  *(a9 + 72) = a4;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

BOOL sub_1002776DC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(v13, v14);
}

uint64_t sub_1002777C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(_OWORD *), uint64_t a9)
{
  v140 = a6;
  v73 = a1;
  v74 = a2;
  v75 = a3;
  v76 = a4;
  v12 = sub_100297350(a1, a2, a3, a4);
  v13 = sub_1002975B0(_swiftEmptyArrayStorage, v12);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    *&v124 = sub_100257570(_swiftEmptyArrayStorage);
    sub_100297A70(v15, v16, a5 & 1, &v124, v12);

    v17 = v124;
  }

  else
  {

    v17 = sub_100257570(_swiftEmptyArrayStorage);
  }

  v18 = swift_allocObject();
  v79 = &v70;
  *(v18 + 16) = v17;
  __chkstk_darwin(v18);
  v69[2] = v140;
  v69[3] = a7;
  v69[4] = a8;
  v69[5] = a9;
  v19 = swift_allocObject();
  v71 = a8;
  sub_100276450(&v103);
  v21 = v112;
  v19[9] = v111;
  v19[10] = v21;
  v19[11] = v113[0];
  *(v19 + 185) = *(v113 + 9);
  v22 = v108;
  v19[5] = v107;
  v19[6] = v22;
  v23 = v110;
  v19[7] = v109;
  v19[8] = v23;
  v24 = v104;
  v19[1] = v103;
  v19[2] = v24;
  v25 = v106;
  v19[3] = v105;
  v19[4] = v25;
  v26 = swift_allocObject();
  v72 = v69;
  *(v26 + 16) = 2;
  v27 = (v26 + 16);
  __chkstk_darwin(v26);
  v68[2] = v19;
  v68[3] = v28;
  v78 = v28;
  v68[4] = sub_1002798A4;
  v68[5] = v69;
  __chkstk_darwin(v28);
  v67[2] = v19 + 1;
  v67[3] = UInt32.init(_:);
  v67[4] = 0;
  v29 = v77;
  sub_100296AD8(3, v73, v74, v75, v76);
  if (v29)
  {
  }

  else
  {
    v76 = a9;
    v77 = a7;
    v20 = v19 + 1;
    v135 = _swiftEmptyArrayStorage;
    v136 = v30;
    v137 = v31;
    v138 = v32;
    v139 = v33;
    sub_100295F74(sub_100277324, v68, sub_100277344, v67, sub_10027989C, v18);
    swift_beginAccess();
    if (*v27 == 2 && (swift_beginAccess(), v35 = v19[10], v36 = v19[8], v89 = v19[9], v90 = v35, v37 = v19[10], v91[0] = v19[11], *(v91 + 9) = *(v19 + 185), v38 = v19[6], v39 = v19[4], v85 = v19[5], v86 = v38, v40 = v19[6], v41 = v19[8], v87 = v19[7], v88 = v41, v42 = v19[2], v82[0] = *v20, v82[1] = v42, v43 = v19[4], v45 = *v20, v44 = v19[2], v83 = v19[3], v84 = v43, v100 = v89, v101 = v37, v102[0] = v19[11], *(v102 + 9) = *(v19 + 185), v96 = v85, v97 = v40, v98 = v87, v99 = v36, v92 = v45, v93 = v44, v94 = v83, v95 = v39, sub_100021348(&v92) != 1))
    {
      v132 = v100;
      v133 = v101;
      v134[0] = v102[0];
      *(v134 + 9) = *(v102 + 9);
      v128 = v96;
      v129 = v97;
      v130 = v98;
      v131 = v99;
      v124 = v92;
      v125 = v93;
      v126 = v94;
      v127 = v95;
      sub_10000E268(v82, v80, &qword_1005D65E0, &unk_1004EB070);
      sub_10000E268(v82, v80, &qword_1005D65E0, &unk_1004EB070);
      v56 = v77;

      sub_1002788DC(&v124, v140, v56, v114);
      v119 = v114[4];
      v120 = v114[5];
      v121 = v114[6];
      v122 = v114[7];
      v115 = v114[0];
      v116 = v114[1];
      v117 = v114[2];
      v118 = v114[3];
      if (sub_10027971C(&v115) != 1)
      {
        v123[4] = v119;
        v123[5] = v120;
        v123[6] = v121;
        v123[7] = v122;
        v123[0] = v115;
        v123[1] = v116;
        v123[2] = v117;
        v123[3] = v118;
        v71(v123);
        sub_100025F40(v114, &qword_1005D6610, &unk_1004EC260);
      }

      sub_100025F40(v82, &qword_1005D65E0, &unk_1004EB070);
      *(v78 + 16) = 2;
      v57 = v19[10];
      v80[8] = v19[9];
      v80[9] = v57;
      v81[0] = v19[11];
      *(v81 + 9) = *(v19 + 185);
      v58 = v19[6];
      v80[4] = v19[5];
      v80[5] = v58;
      v59 = v19[8];
      v80[6] = v19[7];
      v80[7] = v59;
      v60 = v19[2];
      v80[0] = *v20;
      v80[1] = v60;
      v61 = v19[4];
      v80[2] = v19[3];
      v80[3] = v61;
      v62 = v112;
      v19[9] = v111;
      v19[10] = v62;
      v19[11] = v113[0];
      *(v19 + 185) = *(v113 + 9);
      v63 = v108;
      v19[5] = v107;
      v19[6] = v63;
      v64 = v110;
      v19[7] = v109;
      v19[8] = v64;
      v65 = v104;
      *v20 = v103;
      v19[2] = v65;
      v66 = v106;
      v19[3] = v105;
      v19[4] = v66;
      sub_100025F40(v80, &qword_1005D65E0, &unk_1004EB070);
    }

    else
    {
      swift_beginAccess();
      v46 = v19[10];
      v132 = v19[9];
      v133 = v46;
      v134[0] = v19[11];
      *(v134 + 9) = *(v19 + 185);
      v47 = v19[6];
      v128 = v19[5];
      v129 = v47;
      v48 = v19[8];
      v130 = v19[7];
      v131 = v48;
      v49 = v19[2];
      v124 = *v20;
      v125 = v49;
      v50 = v19[4];
      v126 = v19[3];
      v127 = v50;
      v51 = v112;
      v19[9] = v111;
      v19[10] = v51;
      v19[11] = v113[0];
      *(v19 + 185) = *(v113 + 9);
      v52 = v108;
      v19[5] = v107;
      v19[6] = v52;
      v53 = v110;
      v19[7] = v109;
      v19[8] = v53;
      v54 = v104;
      *v20 = v103;
      v19[2] = v54;
      v55 = v106;
      v19[3] = v105;
      v19[4] = v55;
      sub_100025F40(&v124, &qword_1005D65E0, &unk_1004EB070);
    }
  }
}

uint64_t Message.decodedAttachmentByteCountUpperBound(attachment:)(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    result = *(a1 + 120) - v2;
  }

  else
  {
    result = 0;
  }

  if (*(a1 + 96) >= 4u)
  {
    v4 = ceil(result * 3.0 * 0.25);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        result = v4 + 10;
        if (!__OFADD__(v4, 10))
        {
          return result;
        }

LABEL_13:
        __break(1u);
        return result;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

unint64_t Message.decode(attachment:into:)(uint64_t a1, void *a2, uint64_t a3)
{
  result = sub_100270074(*(a1 + 96), a2, a3, *(a1 + 112), *(a1 + 120));
  if (!v3 && (v5 & 1) != 0)
  {
    sub_100279410();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

void sub_100277F50(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v3 = sub_10029B748(a1);
    if ((v4 & 1) != 0 && *(*(a2 + 56) + 8 * v3) >= 2uLL)
    {
    }
  }
}

uint64_t sub_100277FA8(uint64_t a1, uint64_t a2, void *a3, void (*a4)(_OWORD *))
{

  sub_1002764DC(a1, v9);
  sub_1002788DC(a1, a2, a3, v10);
  v15 = v10[4];
  v16 = v10[5];
  v17 = v10[6];
  v18 = v10[7];
  v11 = v10[0];
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  if (sub_10027971C(&v11) != 1)
  {
    v9[4] = v15;
    v9[5] = v16;
    v9[6] = v17;
    v9[7] = v18;
    v9[0] = v11;
    v9[1] = v12;
    v9[2] = v13;
    v9[3] = v14;
    a4(v9);
    sub_100025F40(v10, &qword_1005D6610, &unk_1004EC260);
  }

  return 2;
}

void sub_1002780A0(__int128 *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = *(a1 + 5);
  if (!v6)
  {
    goto LABEL_17;
  }

  v11 = a1[1];
  v72 = *a1;
  v73 = v11;
  v74 = *(a1 + 4);
  v75 = v6;
  if (*(a2 + 88) == 2 || (v12 = sub_1002A8490(*(a2 + 72), *(a2 + 80)), v14 = sub_10027046C(v12, v13), v14 == 5))
  {
    v14 = 0;
  }

  v76[0] = v72;
  v76[1] = v73;
  v77 = v74;
  sub_10028AA80(v76, &v69);
  if (v71 != 5)
  {
LABEL_31:
    sub_100279734(&v69);
    goto LABEL_32;
  }

  v15 = v70;
  if (!v70)
  {
LABEL_32:

    sub_1002764DC(a2, &v61);
    sub_100278534(a2, v14, a4, &v61);
    if (sub_100021348(&v61) == 1)
    {
      sub_1002796FC(&v53);
    }

    else
    {
      v49 = v65;
      v50 = v66;
      v51 = v67;
      v52 = v68;
      v45 = v61;
      v46 = v62;
      v47 = v63;
      v48 = v64;
      sub_100279788(&v45);
      v57 = v49;
      v58 = v50;
      v59 = v51;
      v60 = v52;
      v53 = v45;
      v54 = v46;
      v55 = v47;
      v56 = v48;
      UInt32.init(_:)(&v53);
    }

    v40 = v58;
    a5[4] = v57;
    a5[5] = v40;
    v41 = v60;
    a5[6] = v59;
    a5[7] = v41;
    v42 = v54;
    *a5 = v53;
    a5[1] = v42;
    v29 = v55;
    v30 = v56;
    goto LABEL_36;
  }

  v16 = v69;
  if ((v69 != 0x6E69616C70 || v70 != 0xE500000000000000) && (sub_1004A6D34() & 1) == 0)
  {
    if (v16 == 1819112552 && v15 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {
      if (a3 < 1)
      {
        sub_100279734(&v69);
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v31 = sub_1002958F8(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
        v33 = v32 - v31;
        if (!v31)
        {
          v33 = 0;
        }

        if (v33 + 0x4000000000000000 < 0)
        {
          goto LABEL_44;
        }

        v34 = v31;
        v35 = v32;
        v36 = 2 * v33;
        if (v36 < a3)
        {
          a3 = v36;
        }

        sub_10000E268(a1, &v61, &qword_1005D6600, &qword_1004EB5B8);

        v37 = sub_100270634(v14, a3, v34, v35, &v72, a4);
        v39 = v38;

        sub_100025F40(a1, &qword_1005D6600, &qword_1004EB5B8);
        sub_100279734(&v69);
        if (!v39)
        {
          goto LABEL_17;
        }
      }

      *&v45 = v37;
      *(&v45 + 1) = v39;
      sub_1002797A8(&v45);
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (a3 < 1)
  {
    v23 = 0;
    v25 = 0xE000000000000000;
LABEL_38:
    v43 = *(a2 + 112);
    v78[0] = *(a2 + 96);
    v78[1] = v43;
    v78[2] = *(a2 + 128);
    sub_10000E268(v78, &v61, &qword_1005D6600, &qword_1004EB5B8);
    v44 = sub_1002998FC(v78);
    sub_100279734(&v69);
    *&v45 = v23;
    *(&v45 + 1) = v25;
    LOBYTE(v46) = v44;
    sub_1002797C8(&v45);
LABEL_39:
    v57 = v49;
    v58 = v50;
    v59 = v51;
    v60 = v52;
    v53 = v45;
    v54 = v46;
    v55 = v47;
    v56 = v48;
    UInt32.init(_:)(&v53);
    v65 = v57;
    v66 = v58;
    v67 = v59;
    v68 = v60;
    v61 = v53;
    v62 = v54;
    v63 = v55;
    v64 = v56;
    goto LABEL_18;
  }

  v17 = sub_1002958F8(*(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32));
  v19 = v18 - v17;
  if (!v17)
  {
    v19 = 0;
  }

  if (v19 + 0x4000000000000000 >= 0)
  {
    v20 = v17;
    v21 = v18;
    v22 = 2 * v19;
    if (v22 < a3)
    {
      a3 = v22;
    }

    sub_10000E268(a1, &v61, &qword_1005D6600, &qword_1004EB5B8);

    v23 = sub_100270634(v14, a3, v20, v21, &v72, a4);
    v25 = v24;

    sub_100025F40(a1, &qword_1005D6600, &qword_1004EB5B8);
    if (v25)
    {
      goto LABEL_38;
    }

    sub_100279734(&v69);
LABEL_17:
    sub_1002796FC(&v61);
LABEL_18:
    v26 = v66;
    a5[4] = v65;
    a5[5] = v26;
    v27 = v68;
    a5[6] = v67;
    a5[7] = v27;
    v28 = v62;
    *a5 = v61;
    a5[1] = v28;
    v29 = v63;
    v30 = v64;
LABEL_36:
    a5[2] = v29;
    a5[3] = v30;
    return;
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_100278534(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(a1 + 136);
  if (!v7)
  {

    sub_1002796A8(a1);
LABEL_7:
    sub_1002797E4(&v94);
LABEL_24:
    v48 = v99;
    a4[4] = v98;
    a4[5] = v48;
    v49 = v101;
    a4[6] = v100;
    a4[7] = v49;
    v50 = v95;
    *a4 = v94;
    a4[1] = v50;
    v51 = v97;
    a4[2] = v96;
    a4[3] = v51;
    return;
  }

  v8 = *(a1 + 128);
  v9 = *(a1 + 112);
  v91[0] = *(a1 + 96);
  v91[1] = v9;
  v92 = v8;
  v93 = v7;
  v10 = *(a1 + 56);
  v89 = *(a1 + 40);
  v90 = v10;
  v11 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {

    sub_1002796A8(a1);

    goto LABEL_7;
  }

  v13 = v90;
  v14 = *(&v89 + 1);
  v15 = v89;

  sub_10000E268(&v89, &v94, &qword_1005D6608, &qword_1004EB5C0);
  sub_1002722A8(v91, a3, &v86);

  v16 = sub_10026CF58(v15, v14, v13 & 1, v11, a3);
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v57 = v21;
  v58 = v20;
  v59 = *a1;
  v55 = v16;
  v56 = *(a1 + 32);
  if (*(a1 + 160) == 2)
  {

    v23 = 0;
    v24 = 0;
LABEL_20:
    v42 = sub_1002958F8(v17, v18, v19, v56);
    v44 = v42;
    v45 = v43;
    if (v42)
    {
      v46 = v43 - v42;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_10026FEC0(v46, a2);

    sub_1002796A8(a1);
    *v60 = v22;
    *&v60[40] = v88;
    *&v60[24] = v87;
    *&v60[8] = v86;
    *&v60[56] = v55;
    *&v61 = v58;
    *(&v61 + 1) = v57;
    *&v62 = v23;
    *(&v62 + 1) = v24;
    LOBYTE(v63) = a2;
    *(&v63 + 1) = v47;
    *&v64 = v44;
    *(&v64 + 1) = v45;
    v69 = v61;
    v70 = v62;
    v71 = v63;
    v72 = v64;
    v65 = *v60;
    v66 = *&v60[16];
    v67 = *&v60[32];
    v68 = *&v60[48];
    UInt32.init(_:)(&v65);
    v74 = v86;
    v75 = v87;
    v76 = v88;
    v73 = v59;
    v77 = v55;
    v78 = v58;
    v79 = v57;
    v80 = v23;
    v81 = v24;
    v82 = a2;
    v83 = v47;
    v84 = v44;
    v85 = v45;
    sub_1002797FC(v60, &v94);
    sub_100279834(&v73);
    v98 = v69;
    v99 = v70;
    v100 = v71;
    v101 = v72;
    v94 = v65;
    v95 = v66;
    v96 = v67;
    v97 = v68;
    goto LABEL_24;
  }

  v53 = *(a1 + 16);
  v54 = *(a1 + 24);
  v52 = *(a1 + 8);
  v25 = *(a1 + 144);
  v26 = *(a1 + 152);
  if (v25)
  {
    v27 = v26 - v25;
  }

  else
  {
    v27 = 0;
  }

  if (v27 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v30 = sub_1002A84A8(0, v27, v25, v26);
  v32 = v31;
  if (v28)
  {
    v33 = v28;
    v34 = v29;
    v35 = sub_1002881FC(0, v30, v28, v29);
    v36 = sub_1002881FC(v30, v32, v33, v34);
    if (!__OFADD__(v35, v36))
    {
      v19 = v54;
      if (v35 + v36 >= v35)
      {

        v23 = sub_1004A58D4();
        v24 = v37;
        v17 = v52;
        v18 = v53;
LABEL_19:
        v22 = v59;
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v38 = v29;
  v39 = sub_1002881FC(0, v30, 0, v29);
  v40 = sub_1002881FC(v30, v32, 0, v38);
  if (__OFADD__(v39, v40))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v53;
  v19 = v54;
  if (v39 + v40 >= v39)
  {

    v23 = sub_1004A58D4();
    v24 = v41;
    v17 = v52;
    goto LABEL_19;
  }

LABEL_29:
  __break(1u);
}

void sub_1002788DC(uint64_t a1@<X0>, int64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  if (*(a1 + 184) != 2)
  {

    sub_1002796A8(a1);
    goto LABEL_53;
  }

  v6 = *(a1 + 128);
  v96[1] = *(a1 + 112);
  v96[2] = v6;
  v96[0] = *(a1 + 96);
  if (!*(&v6 + 1))
  {
    if (static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, _swiftEmptyArrayStorage))
    {
      sub_1002A3EE0("text/plain", "", 0);
      v18 = 0uLL;
      if (v17)
      {
        v19 = v17;
        sub_10028A894(v15, v16, &v97);
        v20 = v99;
        if (v99 <= 0xFDuLL)
        {
          v58 = v97;
          v60 = v98;
          *&v103 = _swiftEmptyArrayStorage;
          sub_1002A0858(v19, &v103);

          v18 = v58;
          v22 = v60;
          v21 = v103;
        }

        else
        {

          v20 = 0;
          v21 = 0;
          v22 = 0uLL;
          v18 = 0uLL;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
        v22 = 0uLL;
      }

      v88 = v18;
      v89 = v22;
      *&v90 = v20;
      *(&v90 + 1) = v21;
      sub_1002780A0(&v88, a1, a2, a3, &v77);

      sub_1002796A8(a1);
LABEL_52:
      v65 = v81;
      v66 = v82;
      v67 = v83;
      v68 = v84;
      v61 = v77;
      v62 = v78;
      v63 = v79;
      v64 = v80;
      v71 = v79;
      v72 = v80;
      v69 = v77;
      v70 = v78;
      v75 = v83;
      v76 = v84;
      v73 = v81;
      v74 = v82;
      if (sub_10027971C(&v69) != 1)
      {
        v107 = v65;
        v108 = v66;
        v109 = v67;
        v110 = v68;
        v103 = v61;
        v104 = v62;
        v105 = v63;
        v106 = v64;
        goto LABEL_55;
      }

LABEL_53:
      sub_1002796FC(&v103);
LABEL_55:
      v52 = v108;
      a4[4] = v107;
      a4[5] = v52;
      v53 = v110;
      a4[6] = v109;
      a4[7] = v53;
      v54 = v104;
      *a4 = v103;
      a4[1] = v54;
      v55 = v106;
      a4[2] = v105;
      a4[3] = v55;
      return;
    }

    sub_1002796A8(a1);
    goto LABEL_30;
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 104);
  v9 = *(a1 + 112);
  v10 = *(a1 + 120);
  v11 = *(a1 + 136);
  v12 = *(a1 + 128);
  *&v97 = v7;
  *(&v97 + 1) = v8;
  *&v98 = v9;
  *(&v98 + 1) = v10;
  v99 = v12;
  v100 = v11;
  if (*(a1 + 88) == 2)
  {
  }

  else
  {
    v23 = sub_1002A8490(*(a1 + 72), *(a1 + 80));
    v56 = a4;
    v25 = v24;

    v26 = v25;
    a4 = v56;
    v27 = sub_10027046C(v23, v26);
    if (v27 != 5)
    {
      goto LABEL_12;
    }
  }

  v27 = 0;
LABEL_12:
  v101[0] = v7;
  v101[1] = v8;
  v101[2] = v9;
  v101[3] = v10;
  v102 = v12;
  sub_10028AA80(v101, &v85);
  if (v87 != 5)
  {
    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    sub_100279734(&v85);
    goto LABEL_29;
  }

  v28 = v86;
  if (!v86)
  {
    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
LABEL_29:
    sub_100278534(a1, v27, a3, &v88);
    if (sub_100021348(&v88) != 1)
    {
      v73 = v92;
      v74 = v93;
      v75 = v94;
      v76 = v95;
      v69 = v88;
      v70 = v89;
      v71 = v90;
      v72 = v91;
      sub_100279788(&v69);
      v107 = v73;
      v108 = v74;
      v109 = v75;
      v110 = v76;
      v103 = v69;
      v104 = v70;
      v105 = v71;
      v106 = v72;
      UInt32.init(_:)(&v103);
      goto LABEL_51;
    }

LABEL_30:
    sub_1002796FC(&v77);
    goto LABEL_52;
  }

  v29 = a4;
  v30 = v85;
  if ((v85 != 0x6E69616C70 || v86 != 0xE500000000000000) && (sub_1004A6D34() & 1) == 0)
  {
    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    if (v30 == 1819112552 && v28 == 0xE400000000000000 || (sub_1004A6D34() & 1) != 0)
    {
      if (a2 < 1)
      {
        sub_100279734(&v85);

        sub_1002796A8(a1);
        v48 = 0;
        v50 = 0xE000000000000000;
        a4 = v29;
      }

      else
      {
        v41 = sub_1002958F8(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
        v43 = v42 - v41;
        if (!v41)
        {
          v43 = 0;
        }

        if (v43 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v44 = v41;
        v45 = v42;
        v46 = 2 * v43;
        if (v46 >= a2)
        {
          v47 = a2;
        }

        else
        {
          v47 = v46;
        }

        sub_10000E268(v96, &v103, &qword_1005D6600, &qword_1004EB5B8);

        v48 = sub_100270634(v27, v47, v44, v45, &v97, a3);
        v50 = v49;

        sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
        sub_100279734(&v85);

        sub_1002796A8(a1);
        a4 = v29;
        if (!v50)
        {
LABEL_25:
          sub_1002796FC(&v103);
LABEL_51:
          v81 = v107;
          v82 = v108;
          v83 = v109;
          v84 = v110;
          v77 = v103;
          v78 = v104;
          v79 = v105;
          v80 = v106;
          goto LABEL_52;
        }
      }

      *&v69 = v48;
      *(&v69 + 1) = v50;
      sub_1002797A8(&v69);
      goto LABEL_50;
    }

    sub_100279734(&v85);
    a4 = v29;
    goto LABEL_29;
  }

  if (a2 < 1)
  {
    v38 = 0;
    v40 = 0xE000000000000000;
    a4 = v29;
LABEL_49:
    v51 = sub_1002998FC(v96);
    sub_100279734(&v85);

    sub_1002796A8(a1);
    *&v69 = v38;
    *(&v69 + 1) = v40;
    LOBYTE(v70) = v51;
    sub_1002797C8(&v69);
LABEL_50:
    v92 = v73;
    v93 = v74;
    v94 = v75;
    v95 = v76;
    v88 = v69;
    v89 = v70;
    v90 = v71;
    v91 = v72;
    UInt32.init(_:)(&v88);
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v103 = v88;
    v104 = v89;
    v105 = v90;
    v106 = v91;
    goto LABEL_51;
  }

  v31 = sub_1002958F8(*(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v33 = v32 - v31;
  if (!v31)
  {
    v33 = 0;
  }

  if (v33 + 0x4000000000000000 >= 0)
  {
    v34 = v31;
    v35 = v32;
    v36 = 2 * v33;
    if (v36 >= a2)
    {
      v37 = a2;
    }

    else
    {
      v37 = v36;
    }

    sub_10000E268(v96, &v103, &qword_1005D6600, &qword_1004EB5B8);

    v38 = sub_100270634(v27, v37, v34, v35, &v97, a3);
    v40 = v39;

    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    a4 = v29;
    if (v40)
    {
      goto LABEL_49;
    }

    sub_100025F40(v96, &qword_1005D6600, &qword_1004EB5B8);
    sub_100279734(&v85);

    sub_1002796A8(a1);
    goto LABEL_25;
  }

  __break(1u);
LABEL_61:
  __break(1u);
}

BOOL _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static SectionSpecifier.Part.__derived_struct_equals(_:_:)(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  v6 = *(a1 + 24);
  v25[0] = *(a1 + 8);
  v25[1] = v6;
  v26 = *(a1 + 40);
  v7 = *(a2 + 24);
  v23[0] = *(a2 + 8);
  v23[1] = v7;
  v24 = *(a2 + 40);
  if (!_s9IMAP2MIME9MediaTypeO21__derived_enum_equalsySbAC_ACtFZ_0(v25, v23) || (sub_10026B9CC(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v11 = *(a2 + 64);
  v10 = *(a2 + 72);
  if (v9 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v9 == 1)
  {
    if (v11 != 1)
    {
      return 0;
    }
  }

  else if (v9)
  {
    if (v11 < 3)
    {
      return 0;
    }

    if (*(a1 + 56) != *(a2 + 56) || v9 != v11)
    {
      v12 = *(a1 + 72);
      v13 = *(a2 + 72);
      v14 = sub_1004A6D34();
      v10 = v13;
      v15 = v14;
      v8 = v12;
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((sub_10026B84C(v8, v10) & 1) == 0)
  {
    return 0;
  }

  v16 = *(a1 + 88);
  v17 = *(a2 + 88);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v17 || (*(a1 + 80) != *(a2 + 80) || v16 != v17) && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if ((sub_10026F4F0() & 1) == 0 || *(a1 + 104) != *(a2 + 104))
  {
    return 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    v19 = *(a1 + 120) - v18;
  }

  else
  {
    v19 = 0;
  }

  v21 = *(a2 + 112);
  if (v21)
  {
    result = 0;
    if (!v18 || v19 != *(a2 + 120) - v21)
    {
      return result;
    }
  }

  else
  {
    result = v19 == 0;
    if (!v18 || v19)
    {
      return result;
    }
  }

  return v21 && v18 == v21;
}

uint64_t _s9IMAP2MIME11DisplayPartO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v38[4] = a1[4];
  v38[5] = v3;
  v4 = a1[7];
  v38[6] = a1[6];
  v38[7] = v4;
  v5 = a1[1];
  v38[0] = *a1;
  v38[1] = v5;
  v6 = a1[3];
  v38[2] = a1[2];
  v38[3] = v6;
  v7 = sub_100279920(v38);
  v8 = sub_100279590(v38);
  if (!v7)
  {
    v17 = *v8;
    v18 = *(v8 + 8);
    v19 = *(v8 + 16);
    v20 = a2[5];
    v43 = a2[4];
    v44 = v20;
    v21 = a2[7];
    v45 = a2[6];
    v46 = v21;
    v22 = a2[1];
    v39 = *a2;
    v40 = v22;
    v23 = a2[3];
    v41 = a2[2];
    v42 = v23;
    if (!sub_100279920(&v39))
    {
      if (v24 = sub_100279590(&v39), v25 = *(v24 + 16), v17 == *v24) && v18 == *(v24 + 8) || (sub_1004A6D34())
      {
        v16 = v19 == v25;
        return v16 & 1;
      }
    }

LABEL_14:
    v16 = 0;
    return v16 & 1;
  }

  if (v7 != 1)
  {
    v43 = *(v8 + 64);
    v44 = *(v8 + 80);
    v45 = *(v8 + 96);
    v46 = *(v8 + 112);
    v39 = *v8;
    v40 = *(v8 + 16);
    v41 = *(v8 + 32);
    v42 = *(v8 + 48);
    v26 = a2[5];
    v36[4] = a2[4];
    v36[5] = v26;
    v27 = a2[7];
    v36[6] = a2[6];
    v36[7] = v27;
    v28 = a2[1];
    v36[0] = *a2;
    v36[1] = v28;
    v29 = a2[3];
    v36[2] = a2[2];
    v36[3] = v29;
    if (sub_100279920(v36) == 2)
    {
      v30 = sub_100279590(v36);
      v31 = v30[5];
      v37[4] = v30[4];
      v37[5] = v31;
      v32 = v30[7];
      v37[6] = v30[6];
      v37[7] = v32;
      v33 = v30[1];
      v37[0] = *v30;
      v37[1] = v33;
      v34 = v30[3];
      v37[2] = v30[2];
      v37[3] = v34;
      v16 = _s9IMAP2MIME11DisplayPartO10AttachmentV2eeoiySbAE_AEtFZ_0(&v39, v37);
      return v16 & 1;
    }

    goto LABEL_14;
  }

  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = a2[5];
  v43 = a2[4];
  v44 = v11;
  v12 = a2[7];
  v45 = a2[6];
  v46 = v12;
  v13 = a2[1];
  v39 = *a2;
  v40 = v13;
  v14 = a2[3];
  v41 = a2[2];
  v42 = v14;
  if (sub_100279920(&v39) != 1)
  {
    goto LABEL_14;
  }

  v15 = sub_100279590(&v39);
  if (v9 == *v15 && v10 == v15[1])
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1004A6D34();
  }

  return v16 & 1;
}

unint64_t sub_100279410()
{
  result = qword_1005D65F0;
  if (!qword_1005D65F0)
  {
    result = swift_getWitnessTable(aY_27, &_s20OutputBufferTooSmallVN, v0, v1);
    atomic_store(result, &qword_1005D65F0);
  }

  return result;
}

unint64_t sub_100279468()
{
  result = qword_1005D65F8;
  if (!qword_1005D65F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DisplayPart.AlternativePartStrategy, &type metadata for DisplayPart.AlternativePartStrategy, v0, v1);
    atomic_store(result, &qword_1005D65F8);
  }

  return result;
}

uint64_t sub_1002794C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40) >> 4;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100279518(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 128) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
      *(a1 + 40) = 16 * -a2;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      return result;
    }

    *(a1 + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002795A0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 96) & 7 | (a2 << 62);
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v2;
  return result;
}

uint64_t sub_1002795D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100279618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1002796FC(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xFFFFFFFF0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_10027971C(uint64_t a1)
{
  if ((*(a1 + 40) >> 4) > 0x80000000)
  {
    return -(*(a1 + 40) >> 4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100279788(uint64_t result)
{
  v1 = *(result + 96) & 7 | 0x8000000000000000;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t sub_1002797A8(uint64_t result)
{
  v1 = *(result + 96) & 7 | 0x4000000000000000;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

uint64_t sub_1002797C8(uint64_t result)
{
  v1 = *(result + 96) & 7;
  *(result + 40) &= 0xFuLL;
  *(result + 96) = v1;
  return result;
}

double sub_1002797E4(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100279864()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002798C4()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 201, 7);
}

uint64_t Message.extractAttachments(lineEnding:writeAttachment:writeWithoutAttachments:cache:)(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = a1;

  return sub_10028D4F8(v6, v12, a2, a3, a4, a5, a6, v13);
}

void sub_1002799A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t), uint64_t a9, void *a10)
{
  sub_10027B720(3u, a1, a2, a3, a4, a10, &v29);
  if (!v10)
  {
    v14 = v36;
    *&v38 = v29;
    BYTE8(v38) = v30;
    v39 = v31;
    v40 = v32;
    *&v41 = v33;
    WORD4(v41) = v34;
    v42 = v35;
    sub_10027A644();
    v52[2] = v40;
    v52[3] = v41;
    v53 = v42;
    v52[0] = v38;
    v52[1] = v39;
    sub_100279E40(3u, a5, a8, a9);
    v54 = 0;
    sub_10027B6BC(v52);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = v15 - 1;
      for (i = (v14 + 56); ; i += 88)
      {
        v18 = *(i - 2);
        v19 = *(i - 1);
        v20 = *i;
        v21 = *(i + 1);
        v22 = *(i + 2);
        v23 = *(i + 3);
        v24 = *(i + 4);
        v25 = *(i + 6);
        v26 = *(i + 7);
        v27 = i[40];
        v43[0] = *(i - 3);
        v43[1] = v18;
        v43[2] = v19;
        v44 = v20;
        v45 = v21;
        v46 = v22;
        v47 = v23;
        v48 = v24;
        v49 = v27;
        v50 = v25;
        v51 = v26;
        v29 = v43[0];
        v30 = v18;
        *&v31 = v19;
        BYTE8(v31) = v20;
        *&v32 = v21;
        *(&v32 + 1) = v22;
        v33 = v23;
        v34 = v24;
        LOBYTE(v35) = v27;
        v36 = v25;
        v37 = v26;

        sub_10027C1E4(v21, v22, v23, v24, v27);
        sub_100279DB4(v43, v28);
        sub_100279DEC(&v29);
        a6(v43);
        sub_100279DEC(v43);
        if (!v16)
        {
          break;
        }

        --v16;
      }
    }
  }
}

uint64_t UnsafeExtractedAttachment.filename.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UnsafeExtractedAttachment.filename.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_100279C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6618, &qword_1004EB620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UnsafeExtractedAttachment.unsafeBytes.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2;
  return result;
}

double UnsafeExtractedAttachment.init(part:filename:encoding:mediaType:unsafeBytes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *(a5 + 16);
  *&v14[7] = *a5;
  *&v14[23] = v9;
  *&v16[9] = *v14;
  *&v16[25] = *&v14[16];
  v14[39] = *(a5 + 32);
  *&v16[41] = *&v14[32];
  *&v15 = a1;
  *(&v15 + 1) = a2;
  *v16 = a3;
  v16[8] = a4;
  *&v16[56] = a6;
  v17 = a7;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v19 = a4;
  v22 = *&v14[32];
  v21 = *&v14[16];
  v20 = *v14;
  v23 = a6;
  v24 = a7;
  sub_100279DB4(&v15, &v13);
  sub_100279DEC(v18);
  v10 = *&v16[32];
  *(a8 + 32) = *&v16[16];
  *(a8 + 48) = v10;
  *(a8 + 64) = *&v16[48];
  *(a8 + 80) = v17;
  result = *&v15;
  v12 = *v16;
  *a8 = v15;
  *(a8 + 16) = v12;
  return result;
}

uint64_t sub_100279E1C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 0xA)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_100279E40(unsigned int a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v71 = a1;
  v9 = sub_10000C9C0(&qword_1005D6620, &qword_1004EB7F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  v12 = v4[8];
  v70 = *(v12 + 16);
  if (v70)
  {
    v69 = *(v4 + 56);
    if (v69 == 2)
    {
      v13 = *v4;
      sub_10027B5FC();
      swift_allocError();
      *v14 = v13;
      swift_willThrow();

      return;
    }

    v23 = v4[5];
    v68 = v4[6];
    v24 = *(v4 + 57);
    v25 = *(v4 + 8);
    v27 = v4[2];
    v26 = v4[3];
    v67 = v23;
    v28 = v4[4];
    if (v24 == 1)
    {
      v29 = v25;
      v66 = v26;
      v30 = sub_1002958F8(v25, v27, v26, v28);
      v26 = v66;
      LODWORD(v25) = v29;
      if (v30)
      {
        v32 = v31 - v30;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 1;
    }

    sub_10029BAA0(a2, v32, v24 ^ 1, 0, 0, a3, a4, v25, v27, v26, v28);
    v34 = 0;
    v35 = (v12 + 32);
    v66 = &v73;
    v64 = v76;
    v36 = v68 - v67;
    if (!v67)
    {
      v36 = 0;
    }

    v63 = v36;
    v62 = &v75;
    v61 = &v74;
    v65 = a2;
    while (1)
    {
      v77[0] = *v35;
      v37 = v35[1];
      v38 = v35[2];
      v39 = v35[3];
      v78 = *(v35 + 8);
      v77[2] = v38;
      v77[3] = v39;
      v77[1] = v37;
      v40 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
      }

      memmove(__dst, v35, 0x48uLL);
      if (a2)
      {
        if (a2 != 1)
        {
          v72 = 10;
          v51 = sub_10027B650(v77, v76);
          v75 = 11565;
          __chkstk_darwin(v51);
          *(&v60 - 64) = v34 == 0;
          *(&v60 - 7) = a3;
          *(&v60 - 6) = a4;
          *(&v60 - 5) = &v72;
          v42 = v66;
          v56 = v66;
          v57 = &v75;
          v44 = __chkstk_darwin(v52);
          v58 = sub_10027B688;
          v59 = v53;
          if (v69)
          {
            if (v63 < 0)
            {
              goto LABEL_48;
            }

            sub_100287598(0, v63, v67, v68, sub_10027B6A0, &v56);
          }

          else
          {
            if (v34)
            {
              (a3)(&v72, v42, v44);
            }

            v54 = &v75;
            v55 = &v81;
LABEL_39:
            (a3)(v54, *(v55 - 32), v44);
            a3(v67, v68);
            a3(&v72, v42);
          }

          a2 = v65;
          goto LABEL_41;
        }

        v72 = 13;
        v41 = sub_10027B650(v77, v76);
        v74 = 11565;
        __chkstk_darwin(v41);
        *(&v60 - 64) = v34 == 0;
        *(&v60 - 7) = a3;
        *(&v60 - 6) = a4;
        *(&v60 - 5) = &v72;
        v42 = v66;
        v56 = v66;
        v57 = &v74;
        v44 = __chkstk_darwin(v43);
        v58 = sub_10027C52C;
        v59 = v45;
        if ((v69 & 1) == 0)
        {
          if (v34)
          {
            (a3)(&v72, v42, v44);
          }

          v54 = &v74;
          v55 = &v80;
          goto LABEL_39;
        }

        a2 = v65;
        v46 = v63;
        if (v63 < 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_10027B650(v77, v76);
        v73 = 11565;
        __chkstk_darwin(&v60);
        *(&v60 - 64) = v34 == 0;
        *(&v60 - 7) = a3;
        *(&v60 - 6) = a4;
        *(&v60 - 5) = "\r\n";
        v56 = "";
        v57 = &v73;
        v49 = __chkstk_darwin(v47);
        v58 = sub_10027C52C;
        v59 = v50;
        if ((v69 & 1) == 0)
        {
          v60 = v48;
          if (v34)
          {
            (a3)("\r\n", "", v49);
          }

          (a3)(&v73, v61, v49);
          a3(v67, v68);
          a3("\r\n", "");
          goto LABEL_41;
        }

        v46 = v63;
        if (v63 < 0)
        {
          goto LABEL_46;
        }
      }

      sub_100287598(0, v46, v67, v68, sub_10027C50C, &v56);
LABEL_41:
      sub_100279E40(v71, a2, a3, a4);
      sub_10027B6BC(__dst);
      if (v5)
      {
        return;
      }

      ++v34;
      v35 = (v35 + 72);
      if (v40 == v70)
      {
        sub_10029C448(v67, v68, v69 & 1, a2, a3, a4);
        return;
      }
    }
  }

  v15 = *(v4 + 57);
  v16 = *(v4 + 8);
  v17 = v4[2];
  v18 = v4[3];
  v19 = v4[4];
  if (v15 == 1)
  {
    v20 = sub_1002958F8(v16, v17, v18, v19);
    if (v20)
    {
      v22 = v21 - v20;
    }

    else
    {
      v22 = 0;
    }

    sub_10029BAA0(a2, v22, 0, 0, 0, a3, a4, v16, v17, v18, v19);
  }

  else
  {
    v33 = type metadata accessor for PartReplacement(0);
    (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
    sub_10029BF90(a2, v11, a3, a4, v16, v17, v18, v19);
    sub_100025F40(v11, &qword_1005D6620, &qword_1004EB7F0);
  }
}
char *sub_100016728(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100016748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100016748(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004A84(&qword_100029188, &qword_10001D0B8);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100016890(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000010001AF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 2;
  }

  v5._countAndFlagsBits = 0xD000000000000011;
  v5._object = 0x800000010001AFB0;
  if (String.hasPrefix(_:)(v5))
  {
    return 20;
  }

  v6._countAndFlagsBits = 0xD000000000000018;
  v6._object = 0x800000010001AFD0;
  if (String.hasPrefix(_:)(v6))
  {
    return 4;
  }

  if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return 3;
  }

  v7._countAndFlagsBits = 0x6F6C2D616964656DLL;
  v7._object = 0xE900000000000077;
  if (String.hasPrefix(_:)(v7))
  {
    return 5;
  }

  v8._object = 0xED0000776F6C2D72;
  v8._countAndFlagsBits = 0x65706F6C65766564;
  if (String.hasPrefix(_:)(v8))
  {
    return 6;
  }

  v9._countAndFlagsBits = 0x6F6C2D72656E6F74;
  v9._object = 0xE900000000000077;
  if (String.hasPrefix(_:)(v9))
  {
    return 6;
  }

  v10._countAndFlagsBits = 0xD000000000000011;
  v10._object = 0x800000010001AFF0;
  if (String.hasPrefix(_:)(v10))
  {
    return 7;
  }

  v11._countAndFlagsBits = 0x6D652D616964656DLL;
  v11._object = 0xEB00000000797470;
  if (String.hasPrefix(_:)(v11))
  {
    return 10;
  }

  v12._object = 0xE90000000000006DLL;
  v12._countAndFlagsBits = 0x616A2D616964656DLL;
  if (String.hasPrefix(_:)(v12))
  {
    return 12;
  }

  v13._countAndFlagsBits = 0x656E2D616964656DLL;
  v13._object = 0xEC00000064656465;
  if (String.hasPrefix(_:)(v13))
  {
    return 11;
  }

  v14._object = 0xEF7974706D652D72;
  v14._countAndFlagsBits = 0x65706F6C65766564;
  if (String.hasPrefix(_:)(v14))
  {
    return 13;
  }

  v15._countAndFlagsBits = 0x6D652D72656E6F74;
  v15._object = 0xEB00000000797470;
  if (String.hasPrefix(_:)(v15))
  {
    return 13;
  }

  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x800000010001B010;
  if (String.hasPrefix(_:)(v16))
  {
    return 14;
  }

  v17._countAndFlagsBits = 0xD000000000000012;
  v17._object = 0x800000010001B030;
  if (String.hasPrefix(_:)(v17))
  {
    return 15;
  }

  v18._countAndFlagsBits = 0xD000000000000013;
  v18._object = 0x800000010001B050;
  if (String.hasPrefix(_:)(v18))
  {
    return 15;
  }

  v19._object = 0xE90000000000006ELL;
  v19._countAndFlagsBits = 0x65706F2D726F6F64;
  if (String.hasPrefix(_:)(v19))
  {
    return 16;
  }

  v20._countAndFlagsBits = 0x706F2D7265766F63;
  v20._object = 0xEA00000000006E65;
  if (String.hasPrefix(_:)(v20))
  {
    return 17;
  }

  v21._countAndFlagsBits = 0x636F6C7265746E69;
  v21._object = 0xEE006E65706F2D6BLL;
  if (String.hasPrefix(_:)(v21))
  {
    return 17;
  }

  v22._countAndFlagsBits = 0x2D656E696C66666FLL;
  v22._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v22))
  {
    return 26;
  }

  v23._countAndFlagsBits = 0x72612D6C6F6F7073;
  v23._object = 0xEF6C6C75662D6165;
  if (String.hasPrefix(_:)(v23))
  {
    return 21;
  }

  v24._object = 0x800000010001B070;
  v24._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v24))
  {
    return 22;
  }

  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x800000010001B090;
  if (String.hasPrefix(_:)(v25))
  {
    return 18;
  }

  v26._countAndFlagsBits = 0x766F2D7265737566;
  v26._object = 0xEF706D65742D7265;
  if (String.hasPrefix(_:)(v26))
  {
    return 18;
  }

  v27._object = 0x800000010001B0B0;
  v27._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v27))
  {
    return 18;
  }

  v28._countAndFlagsBits = 0x7261656E2D63706FLL;
  v28._object = 0xEC0000006C6F652DLL;
  if (String.hasPrefix(_:)(v28))
  {
    return 18;
  }

  v29._countAndFlagsBits = 0x6566696C2D63706FLL;
  v29._object = 0xED00007265766F2DLL;
  if (String.hasPrefix(_:)(v29))
  {
    return 25;
  }

  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x800000010001B0D0;
  if (String.hasPrefix(_:)(v30))
  {
    return 23;
  }

  v31._countAndFlagsBits = 0xD00000000000001CLL;
  v31._object = 0x800000010001B0F0;
  if (String.hasPrefix(_:)(v31))
  {
    return 27;
  }

  v32._object = 0x800000010001B110;
  v32._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v32))
  {
    return 28;
  }

  v33._object = 0x800000010001B130;
  v33._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v33))
  {
    return 29;
  }

  v34._object = 0x800000010001B150;
  v34._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v34))
  {
    return 30;
  }

  v35._object = 0x800000010001B170;
  v35._countAndFlagsBits = 0xD000000000000010;
  if (String.hasPrefix(_:)(v35))
  {
    return 31;
  }

  v36._countAndFlagsBits = 0x726F7272652DLL;
  v36._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v36))
  {
    return 25;
  }

  v37._countAndFlagsBits = 0x676E696E7261772DLL;
  v37._object = 0xE800000000000000;
  if (String.hasSuffix(_:)(v37))
  {
    return 18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100016F40(uint64_t a1, void *a2)
{
  v4 = [objc_opt_self() mainBundle];
  v15._object = 0xE000000000000000;
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  v6.value._countAndFlagsBits = 1684957515;
  v6.value._object = 0xE400000000000000;
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v15._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v15);

  v9 = sub_100016890(v8._countAndFlagsBits, v8._object);
  v10 = 0;
  if (v9 <= 4u)
  {
    if (v9 < 3u)
    {
      return v9 | (v10 << 8);
    }

    if (v9 == 3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v9 > 0x1Fu)
    {
LABEL_13:
      if (v9 - 5 >= 3)
      {
        return v9 | (v10 << 8);
      }

      goto LABEL_14;
    }

    if (((1 << v9) & 0x77F400) == 0)
    {
      if (((1 << v9) & 0xFF880800) != 0)
      {
        v10 = 2;
        return v9 | (v10 << 8);
      }

      if (v9 != 9)
      {
        goto LABEL_13;
      }

LABEL_14:
      v10 = 1;
      return v9 | (v10 << 8);
    }
  }

  v11 = v9;
  v12._countAndFlagsBits = 0x726F7272652DLL;
  v12._object = 0xE600000000000000;
  if (String.hasSuffix(_:)(v12))
  {
    v10 = 2;
  }

  else
  {
    v13._countAndFlagsBits = 0x676E696E7261772DLL;
    v13._object = 0xE800000000000000;
    v10 = String.hasSuffix(_:)(v13);
  }

  v9 = v11;
  return v9 | (v10 << 8);
}

char *sub_1000170C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v23 = _swiftEmptyArrayStorage;
    sub_100016728(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = objc_opt_self();
    v5 = (a1 + 40);
    while (1)
    {
      v6 = *(v5 - 1);
      v7 = *v5;

      v8 = [v4 mainBundle];
      v24._object = 0xE000000000000000;
      v9._countAndFlagsBits = v6;
      v9._object = v7;
      v10.value._countAndFlagsBits = 1684957515;
      v10.value._object = 0xE400000000000000;
      v11._countAndFlagsBits = v6;
      v11._object = v7;
      v24._countAndFlagsBits = 0;
      v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v24);

      v13 = sub_100016890(v12._countAndFlagsBits, v12._object);
      v14 = 0;
      if (v13 <= 4u)
      {
        break;
      }

      if (v13 <= 0x1Fu)
      {
        if (((1 << v13) & 0x77F400) != 0)
        {
          goto LABEL_10;
        }

        if (((1 << v13) & 0xFF880800) != 0)
        {
          v14 = 2;
          goto LABEL_17;
        }

        if (v13 == 9)
        {
          goto LABEL_16;
        }
      }

      if (v13 - 5 < 3)
      {
LABEL_16:
        v14 = 1;
      }

LABEL_17:
      v23 = v2;
      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v22 = v13;
        sub_100016728((v18 > 1), v19 + 1, 1);
        v13 = v22;
        v2 = v23;
      }

      *(v2 + 2) = v19 + 1;
      v20 = &v2[24 * v19];
      v20[32] = v13;
      v20[33] = v14;
      *(v20 + 40) = v12;
      v5 += 2;
      if (!--v1)
      {
        goto LABEL_20;
      }
    }

    if (v13 < 3u)
    {
      goto LABEL_17;
    }

    if (v13 == 3)
    {
      goto LABEL_16;
    }

LABEL_10:
    v15 = v13;
    v16._countAndFlagsBits = 0x726F7272652DLL;
    v16._object = 0xE600000000000000;
    if (String.hasSuffix(_:)(v16))
    {
      v14 = 2;
    }

    else
    {
      v17._countAndFlagsBits = 0x676E696E7261772DLL;
      v17._object = 0xE800000000000000;
      v14 = String.hasSuffix(_:)(v17);
    }

    v13 = v15;
    goto LABEL_17;
  }

LABEL_20:
  v23 = v2;

  sub_10001599C(&v23);

  return v23;
}

__n128 sub_10001732C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100017388(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1000173DC()
{
  result = qword_100029190;
  if (!qword_100029190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029190);
  }

  return result;
}

uint64_t sub_100017430()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t getEnumTagSinglePayload for PrintStateReasonSeverity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrintStateReasonSeverity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PrinterStateReasonValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 31;
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

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrinterStateReasonValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100017770()
{
  result = qword_100029198;
  if (!qword_100029198)
  {
    sub_100004C24(&qword_1000291A0, qword_10001D1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029198);
  }

  return result;
}

unint64_t sub_1000177D8()
{
  result = qword_1000291A8;
  if (!qword_1000291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291A8);
  }

  return result;
}

unint64_t sub_100017830()
{
  result = qword_1000291B0;
  if (!qword_1000291B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000291B0);
  }

  return result;
}

unint64_t sub_100017884(unint64_t result)
{
  if (result >= 0x20)
  {
    return 32;
  }

  return result;
}

uint64_t sub_1000178DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v40 = a2;
  v42 = a4;
  v5 = type metadata accessor for BorderlessButtonStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ButtonStyleConfiguration.Label();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100004A84(&qword_1000291B8, &qword_10001D408);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  v38 = sub_100004A84(&qword_1000291C0, &qword_10001D410);
  __chkstk_darwin(v38);
  v17 = &v37 - v16;
  v41 = a1;
  ButtonStyleConfiguration.label.getter();
  BorderlessButtonStyle.init()();
  sub_100017D80(&qword_1000291C8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
  sub_100017D80(&qword_1000291D0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
  View.buttonStyle<A>(_:)();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if (qword_100028A28 != -1)
  {
    swift_once();
  }

  v18 = qword_100029350;
  KeyPath = swift_getKeyPath();
  v20 = &v15[*(sub_100004A84(&qword_1000291D8, &qword_10001D448) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = &v15[*(sub_100004A84(&qword_1000291E0, &qword_10001D450) + 36)];
  v22 = *(sub_100004A84(&qword_1000291E8, &qword_10001D458) + 28);

  static SymbolRenderingMode.palette.getter();
  v23 = type metadata accessor for SymbolRenderingMode();
  (*(*(v23 - 8) + 56))(v21 + v22, 0, 1, v23);
  *v21 = swift_getKeyPath();
  v24 = &v15[*(v13 + 36)];
  v25 = v40;
  *v24 = v39;
  v24[1] = v25;

  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v26 = 1.2;
  }

  else
  {
    v26 = 1.0;
  }

  static UnitPoint.center.getter();
  v28 = v27;
  v30 = v29;
  sub_100017E88(v15, v17, &qword_1000291B8, &qword_10001D408);
  v31 = &v17[*(v38 + 36)];
  *v31 = v26;
  *(v31 + 1) = v26;
  *(v31 + 2) = v28;
  *(v31 + 3) = v30;
  v32 = static Animation.easeOut(duration:)();
  v33 = ButtonStyleConfiguration.isPressed.getter();
  v34 = v42;
  sub_100017E88(v17, v42, &qword_1000291C0, &qword_10001D410);
  result = sub_100004A84(&qword_1000291F0, &qword_10001D490);
  v36 = v34 + *(result + 36);
  *v36 = v32;
  *(v36 + 8) = v33 & 1;
  return result;
}

uint64_t sub_100017D80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017DF4(uint64_t a1)
{
  v2 = sub_100004A84(&qword_1000291F8, &qword_10001D498);
  __chkstk_darwin(v2 - 8);
  sub_100017EF0(a1, &v5 - v3);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_100017E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004A84(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100017EF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004A84(&qword_1000291F8, &qword_10001D498);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100017F64()
{
  result = qword_100029200;
  if (!qword_100029200)
  {
    sub_100004C24(&qword_1000291F0, &qword_10001D490);
    sub_10001801C();
    sub_10000A0B0(&qword_100029250, &qword_100029258, qword_10001D4B0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029200);
  }

  return result;
}

unint64_t sub_10001801C()
{
  result = qword_100029208;
  if (!qword_100029208)
  {
    sub_100004C24(&qword_1000291C0, &qword_10001D410);
    sub_1000180A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029208);
  }

  return result;
}

unint64_t sub_1000180A8()
{
  result = qword_100029210;
  if (!qword_100029210)
  {
    sub_100004C24(&qword_1000291B8, &qword_10001D408);
    sub_100018160();
    sub_10000A0B0(&qword_100029240, &qword_100029248, &qword_10001D4A8, &protocol conformance descriptor for _ForegroundStyleModifier2<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029210);
  }

  return result;
}

unint64_t sub_100018160()
{
  result = qword_100029218;
  if (!qword_100029218)
  {
    sub_100004C24(&qword_1000291E0, &qword_10001D450);
    sub_100018218();
    sub_10000A0B0(&qword_100029238, &qword_1000291E8, &qword_10001D458, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029218);
  }

  return result;
}

unint64_t sub_100018218()
{
  result = qword_100029220;
  if (!qword_100029220)
  {
    sub_100004C24(&qword_1000291D8, &qword_10001D448);
    type metadata accessor for ButtonStyleConfiguration.Label();
    type metadata accessor for BorderlessButtonStyle();
    sub_100017D80(&qword_1000291C8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100017D80(&qword_1000291D0, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000A0B0(&qword_100029228, &qword_100029230, &qword_10001D4A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100029220);
  }

  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}
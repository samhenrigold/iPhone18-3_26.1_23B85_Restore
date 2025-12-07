uint64_t sub_1002C4150(uint64_t a1)
{
  v2 = sub_1002E2560();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C418C(uint64_t a1)
{
  v2 = sub_1002E2560();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C41C8(void *a1@<X8>)
{
  sub_1002C4028();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C421C()
{
  v2 = sub_100087F98();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (sub_100071914(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1002E5444();
    v6 = v4 && v0 == 0xE300000000000000;
    if (v6 || (sub_1002E4C70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1000D3BC4();
      v9 = v4 && v0 == v8;
      if (v9 || (sub_100071914(v7, 0xEA00000000007974) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = sub_100018340();
        if (v1 == v10 && v0 == v11)
        {

          return 3;
        }

        else
        {
          sub_100071914(v10, v11);
          sub_1000379AC();
          if (v1)
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
}

uint64_t sub_1002C42EC(uint64_t a1)
{
  v2 = sub_1002DEA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C4328(uint64_t a1)
{
  v2 = sub_1002DEA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C43E8()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAD78, &qword_100A354F0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DEA90();
  sub_1000162E4(&type metadata for LocationElevatedAqiNewsConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C46B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C43BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C4720()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationElevatedAqiNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C4768()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB248, &qword_100A38948);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E25B4();
  sub_10000FB60(&type metadata for LocationElevatedAqiNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationElevatedAqiNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB258, 255, type metadata accessor for LocationElevatedAqiNewsConfiguration._Storage, "\tj ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C4890(uint64_t a1)
{
  v2 = sub_1002E25B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C48CC(uint64_t a1)
{
  v2 = sub_1002E25B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C4908(void *a1@<X8>)
{
  sub_1002C4768();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C495C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002C4ABC(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x696C617551726961;
      break;
    case 3:
      result = 0x6C41657265766573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C4B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C495C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C4B70(uint64_t a1)
{
  v2 = sub_1002DEA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C4BAC(uint64_t a1)
{
  v2 = sub_1002DEA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C4C6C()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAD68, &qword_100A354E8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DEA3C();
  sub_1000162E4(&type metadata for LocationElevatedAqiSevereConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C4F3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C4C40(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C4FA4()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationElevatedAqiSevereConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C4FEC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB260, &qword_100A38950);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2608();
  sub_10000FB60(&type metadata for LocationElevatedAqiSevereConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationElevatedAqiSevereConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB270, 255, type metadata accessor for LocationElevatedAqiSevereConfiguration._Storage, "Yj ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C5114(uint64_t a1)
{
  v2 = sub_1002E2608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C5150(uint64_t a1)
{
  v2 = sub_1002E2608();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C518C(void *a1@<X8>)
{
  sub_1002C4FEC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C5208(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002C53BC(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x696C617551726961;
      break;
    case 3:
      result = 0x6C41657265766573;
      break;
    case 4:
      result = 0x697472417377656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C5468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C5208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C5490@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002C53B4();
  *a1 = result;
  return result;
}

uint64_t sub_1002C54B8(uint64_t a1)
{
  v2 = sub_1002DE9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C54F4(uint64_t a1)
{
  v2 = sub_1002DE9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C5530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1002E5660();

  sub_100040B64();
  sub_1002E58C0(*v6);
  sub_100040B64();
  sub_1002E58C0(*v5);
  sub_100040B64();
  sub_1002E58C0(*a4);
  sub_100040B64();
  return v4;
}

uint64_t sub_1002C55B8()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_severeAlert, &OBJC_IVAR____TtCV7Weather42LocationElevatedAqiSevereNewsConfiguration8_Storage_newsArticle);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002C5680()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAD58, &qword_100A354E0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE9E8();
  sub_100088818(&type metadata for LocationElevatedAqiSevereNewsConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002C59CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C5654(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C5A3C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationElevatedAqiSevereNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002C5A8C()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB278, &qword_100A38958);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E265C();
  sub_10000FB60(&type metadata for LocationElevatedAqiSevereNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationElevatedAqiSevereNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB288, 255, type metadata accessor for LocationElevatedAqiSevereNewsConfiguration._Storage, byte_100A34DD8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C5BB4(uint64_t a1)
{
  v2 = sub_1002E265C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C5BF0(uint64_t a1)
{
  v2 = sub_1002E265C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C5C2C(void *a1@<X8>)
{
  sub_1002C5A8C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C5C80(uint64_t a1)
{
  v2 = sub_1002DE994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C5CBC(uint64_t a1)
{
  v2 = sub_1002DE994();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C5D7C()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAD48, &qword_100A354D8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DE994();
  sub_1000162E4(&type metadata for LocationMinorAlertConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C604C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C5D50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C60B4()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationMinorAlertConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C60FC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB290, &qword_100A38960);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E26B0();
  sub_10000FB60(&type metadata for LocationMinorAlertConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationMinorAlertConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB2A0, 255, type metadata accessor for LocationMinorAlertConfiguration._Storage, byte_100A34D88);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C6224(uint64_t a1)
{
  v2 = sub_1002E26B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C6260(uint64_t a1)
{
  v2 = sub_1002E26B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C629C(void *a1@<X8>)
{
  sub_1002C60FC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C62F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x696C617551726961 && a2 == 0xEA00000000007974)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1002C6454(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x696C617551726961;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C64DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C62F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C6504(uint64_t a1)
{
  v2 = sub_1002DE940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C6540(uint64_t a1)
{
  v2 = sub_1002DE940();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C6600()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAD38, &qword_100A354D0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DE940();
  sub_1000162E4(&type metadata for LocationNhpConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C68D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C65D4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C6938()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNhpConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C6980()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB2A8, &qword_100A38968);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2704();
  sub_10000FB60(&type metadata for LocationNhpConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNhpConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB2B8, 255, type metadata accessor for LocationNhpConfiguration._Storage, "Ik ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C6AA8(uint64_t a1)
{
  v2 = sub_1002E2704();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C6AE4(uint64_t a1)
{
  v2 = sub_1002E2704();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C6B20(void *a1@<X8>)
{
  sub_1002C6980();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002C6B9C()
{
  sub_100020DF0();
  *(v0 + 16) = v1;
  sub_10003DE74();
  sub_10003DE74();
  sub_1002E547C();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  sub_1000212EC();
}

uint64_t sub_1002C6C48(uint64_t a1)
{
  v2 = sub_1002DE8EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C6C84(uint64_t a1)
{
  v2 = sub_1002DE8EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C6CC0()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_severeAlert, &OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather34LocationNhpMinorAlertConfiguration8_Storage_airQuality);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002C6D88()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAD28, &qword_100A354C8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE8EC();
  sub_100088818(&type metadata for LocationNhpMinorAlertConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002C70D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C6D5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C7144()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNhpMinorAlertConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002C7194()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB2C0, &qword_100A38970);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2758();
  sub_10000FB60(&type metadata for LocationNhpMinorAlertConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNhpMinorAlertConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB2D0, 255, type metadata accessor for LocationNhpMinorAlertConfiguration._Storage, byte_100A34CE8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C72BC(uint64_t a1)
{
  v2 = sub_1002E2758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C72F8(uint64_t a1)
{
  v2 = sub_1002E2758();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C7334(void *a1@<X8>)
{
  sub_1002C7194();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C73B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x696C617551726961 && a2 == 0xEA00000000007974)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1002C7560(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x697472417377656ELL;
      break;
    case 4:
      result = 0x696C617551726961;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C7608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C73B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C7630(uint64_t a1)
{
  v2 = sub_1002DE898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C766C(uint64_t a1)
{
  v2 = sub_1002DE898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C76A8()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_newsArticle, &OBJC_IVAR____TtCV7Weather28LocationNhpNewsConfiguration8_Storage_airQuality);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002C7770()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAD18, &qword_100A354C0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE898();
  sub_100088818(&type metadata for LocationNhpNewsConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002C7ABC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C7744(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C7B2C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNhpNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002C7B7C()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB2D8, &qword_100A38978);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E27AC();
  sub_10000FB60(&type metadata for LocationNhpNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNhpNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB2E8, 255, type metadata accessor for LocationNhpNewsConfiguration._Storage, byte_100A34C98);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C7CA4(uint64_t a1)
{
  v2 = sub_1002E27AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C7CE0(uint64_t a1)
{
  v2 = sub_1002E27AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C7D1C(void *a1@<X8>)
{
  sub_1002C7B7C();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002C7D54()
{
  sub_100020DF0();
  v0 = sub_1002E5434();
  v1 = type metadata accessor for LocationViewComponent(v0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_10002820C();
  __chkstk_darwin(v3);
  sub_1002E53C8();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);

  sub_10002C598();
  v4 = sub_1002C01CC();

  if (v4)
  {
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v5 = sub_100021CEC();
    sub_100659078(v5, v6);
    sub_1000496A8();
    sub_100040B64();
    sub_10000C918();
    sub_100040B64();
  }

  sub_1000212EC();
}

uint64_t sub_1002C7E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7364973 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int SizingBehavior.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1002C7F68(char a1)
{
  if (a1)
  {
    return 7364973;
  }

  else
  {
    return 0x6E6F6D6D6F63;
  }
}

uint64_t sub_1002C7FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C7E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C7FCC@<X0>(_BYTE *a1@<X8>)
{
  result = variable initialization expression of WindowFocusManager.isFocused();
  *a1 = result;
  return result;
}

uint64_t sub_1002C7FF4(uint64_t a1)
{
  v2 = sub_1002DE844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C8030(uint64_t a1)
{
  v2 = sub_1002DE844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002C806C()
{

  sub_10000FB30();
  sub_100040B64();
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002C8100(uint64_t a1)
{
  result = type metadata accessor for LocationViewComponent(319);
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

void sub_1002C81CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  v22 = v21;
  sub_10001E790();
  v23 = type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_10022C350(&qword_100CAAD08, &qword_100A354B8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v25);
  sub_10003038C();
  sub_10001930C(v22, v22[3]);
  sub_1002DE844();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    HIBYTE(v30) = 0;
    sub_1002DE454();
    sub_1002E5920(&type metadata for LocationCommonConfigurationComponents, &v30 + 1);
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v26, 255, v27, aA_7);
    sub_1002E5920(v23, &v30);
    v28 = sub_1000BA488();
    v29(v28);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v22);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002C841C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C81A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C846C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002C7D54();
  return v1 & 1;
}

void sub_1002C849C()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB2F0, &qword_100A38980);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2800();
  sub_10000FB60(&type metadata for LocationNoAqiConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB300, 255, type metadata accessor for LocationNoAqiConfiguration._Storage, "9l ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C85C4(uint64_t a1)
{
  v2 = sub_1002E2800();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C8600(uint64_t a1)
{
  v2 = sub_1002E2800();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C863C(void *a1@<X8>)
{
  sub_1002C849C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C8688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002C8798(char a1)
{
  if (!a1)
  {
    return 0x6E6F6D6D6F63;
  }

  if (a1 == 1)
  {
    return 7364973;
  }

  return 0x697472417377656ELL;
}

uint64_t sub_1002C87F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C8688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C881C(uint64_t a1)
{
  v2 = sub_1002DE7F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C8858(uint64_t a1)
{
  v2 = sub_1002DE7F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C8910()
{
  sub_10000E8AC();
  sub_10006A6F8();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100020E28();
  __chkstk_darwin(v2);
  sub_1002E4C00();
  sub_10022C350(&qword_100CAACF8, &qword_100A354B0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8D8();
  v4 = sub_10002C598();
  sub_10001930C(v4, v5);
  v6 = sub_1002DE7F0();
  sub_100092684(&type metadata for LocationNoAqiNewsConfiguration._Storage.CodingKeys, v7, v6);
  sub_1000BB54C();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E57B4();
    sub_1000B911C(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v8, 255, v9, aA_7);
    sub_100037F98();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1001706A4();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_1000B0C24();
    v11(v10);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_1002E4C38();
  sub_100133ACC();
  sub_10000C8F4();
}

uint64_t sub_1002C8B84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C88E4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C8BE4()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002C9E1C();
  return v1 & 1;
}

void sub_1002C8C24()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB308, &qword_100A38988);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2854();
  sub_10000FB60(&type metadata for LocationNoAqiNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB318, 255, type metadata accessor for LocationNoAqiNewsConfiguration._Storage, byte_100A34BF8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C8D4C(uint64_t a1)
{
  v2 = sub_1002E2854();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C8D88(uint64_t a1)
{
  v2 = sub_1002E2854();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C8DC4(void *a1@<X8>)
{
  sub_1002C8C24();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C8E10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002C8F24(char a1)
{
  if (!a1)
  {
    return 0x6E6F6D6D6F63;
  }

  if (a1 == 1)
  {
    return 7364973;
  }

  return 0xD000000000000015;
}

uint64_t sub_1002C8F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C8E10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C8FA4(uint64_t a1)
{
  v2 = sub_1002DE79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C8FE0(uint64_t a1)
{
  v2 = sub_1002DE79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C9098()
{
  sub_10000E8AC();
  sub_10006A6F8();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100020E28();
  __chkstk_darwin(v2);
  sub_1002E4C00();
  sub_10022C350(&qword_100CAACE8, &qword_100A354A8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8D8();
  v4 = sub_10002C598();
  sub_10001930C(v4, v5);
  v6 = sub_1002DE79C();
  sub_100092684(&type metadata for LocationNoAqiNhpConfiguration._Storage.CodingKeys, v7, v6);
  sub_1000BB54C();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E57B4();
    sub_1000B911C(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v8, 255, v9, aA_7);
    sub_100037F98();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1001706A4();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_1000B0C24();
    v11(v10);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_1002E4C38();
  sub_100133ACC();
  sub_10000C8F4();
}

uint64_t sub_1002C930C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C906C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C936C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiNhpConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002C9E1C();
  return v1 & 1;
}

void sub_1002C93AC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB320, &qword_100A38990);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E28A8();
  sub_10000FB60(&type metadata for LocationNoAqiNhpConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiNhpConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB330, 255, type metadata accessor for LocationNoAqiNhpConfiguration._Storage, byte_100A34BA8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C94D4(uint64_t a1)
{
  v2 = sub_1002E28A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C9510(uint64_t a1)
{
  v2 = sub_1002E28A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C954C(void *a1@<X8>)
{
  sub_1002C93AC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002C95A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1002C9700(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x697472417377656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002C978C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C95A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002C97B4(uint64_t a1)
{
  v2 = sub_1002DE748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C97F0(uint64_t a1)
{
  v2 = sub_1002DE748();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C98B0()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAACD8, &qword_100A354A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DE748();
  sub_1000162E4(&type metadata for LocationNoAqiNhpNewsConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002C9B80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002C9884(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002C9BE8()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiNhpNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002C9C30()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB338, &qword_100A38998);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E28FC();
  sub_10000FB60(&type metadata for LocationNoAqiNhpNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiNhpNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB348, 255, type metadata accessor for LocationNoAqiNhpNewsConfiguration._Storage, ")m ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002C9D58(uint64_t a1)
{
  v2 = sub_1002E28FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002C9D94(uint64_t a1)
{
  v2 = sub_1002E28FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002C9DD0(void *a1@<X8>)
{
  sub_1002C9C30();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002C9E1C()
{
  sub_10000C778();
  v0 = sub_1002E5718();
  v1 = type metadata accessor for LocationViewComponent(v0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000281F0();
  __chkstk_darwin(v3);
  sub_100030230();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);

  sub_10002FDB4();
  v4 = sub_1002C01CC();

  if (v4)
  {
    sub_1000D419C();
    sub_100066B44();
    sub_100066B44();
    v5 = sub_100003984();
    v7 = sub_100659078(v5, v6);
    sub_100040F4C();
    sub_100040B64();
    sub_100040B64();
    if (v7)
    {
      sub_1002E50E4();
      sub_100066B44();
      sub_100066B44();
      v8 = sub_100003984();
      sub_100659078(v8, v9);
      sub_1000496A8();
      sub_100040B64();
      sub_1002E5638();
    }
  }

  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002C9F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002CA098(char a1)
{
  if (!a1)
  {
    return 0x6E6F6D6D6F63;
  }

  if (a1 == 1)
  {
    return 7364973;
  }

  return 0x6C41657265766573;
}

uint64_t sub_1002CA0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002C9F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CA11C(uint64_t a1)
{
  v2 = sub_1002DE6F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CA158(uint64_t a1)
{
  v2 = sub_1002DE6F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CA1E4()
{
  sub_1002E58B4();
  result = type metadata accessor for LocationViewComponent(319);
  if (v1 <= 0x3F)
  {
    sub_1002E4BF0();
    updated = swift_updateClassMetadata2();
    return sub_1002E54EC(updated);
  }

  return result;
}

void sub_1002CA2A0()
{
  sub_10000E8AC();
  sub_10006A6F8();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_100020E28();
  __chkstk_darwin(v2);
  sub_1002E4C00();
  sub_10022C350(&qword_100CAACC8, &qword_100A35498);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v3);
  sub_10000C8D8();
  v4 = sub_10002C598();
  sub_10001930C(v4, v5);
  v6 = sub_1002DE6F4();
  sub_100092684(&type metadata for LocationNoAqiSevereConfiguration._Storage.CodingKeys, v7, v6);
  sub_1000BB54C();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E57B4();
    sub_1000B911C(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v8, 255, v9, aA_7);
    sub_100037F98();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1001706A4();
    sub_1000C831C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_1000B0C24();
    v11(v10);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_1002E4C38();
  sub_100133ACC();
  sub_10000C8F4();
}

uint64_t sub_1002CA514@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CA274(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CA574()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiSevereConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002C9E1C();
  return v1 & 1;
}

void sub_1002CA5B4()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB350, &qword_100A389A0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2950();
  sub_10000FB60(&type metadata for LocationNoAqiSevereConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiSevereConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB360, 255, type metadata accessor for LocationNoAqiSevereConfiguration._Storage, "ym ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CA6DC(uint64_t a1)
{
  v2 = sub_1002E2950();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CA718(uint64_t a1)
{
  v2 = sub_1002E2950();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CA754(void *a1@<X8>)
{
  sub_1002CA5B4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CA7A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002CA904(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x6C41657265766573;
      break;
    case 3:
      result = 0x697472417377656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002CA994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002CA7A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CA9BC(uint64_t a1)
{
  v2 = sub_1002DE6A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CA9F8(uint64_t a1)
{
  v2 = sub_1002DE6A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CAAB8()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAACB8, &qword_100A35490);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DE6A0();
  sub_1000162E4(&type metadata for LocationNoAqiSevereNewsConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002CAD88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CAA8C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CADF0()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiSevereNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002CAE38()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB368, &qword_100A389A8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E29A4();
  sub_10000FB60(&type metadata for LocationNoAqiSevereNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiSevereNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB378, 255, type metadata accessor for LocationNoAqiSevereNewsConfiguration._Storage, byte_100A34AB8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CAF60(uint64_t a1)
{
  v2 = sub_1002E29A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CAF9C(uint64_t a1)
{
  v2 = sub_1002E29A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CAFD8(void *a1@<X8>)
{
  sub_1002CAE38();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CB02C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1002CB18C(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x6C41657265766573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002CB218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002CB02C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CB240(uint64_t a1)
{
  v2 = sub_1002DE64C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CB27C(uint64_t a1)
{
  v2 = sub_1002DE64C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CB33C()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAACA8, &qword_100A35488);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DE64C();
  sub_1000162E4(&type metadata for LocationNoAqiSevereNhpConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002CB60C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CB310(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CB674()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiSevereNhpConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002CB6BC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB380, &qword_100A389B0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E29F8();
  sub_10000FB60(&type metadata for LocationNoAqiSevereNhpConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiSevereNhpConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB390, 255, type metadata accessor for LocationNoAqiSevereNhpConfiguration._Storage, byte_100A34A68);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CB7E4(uint64_t a1)
{
  v2 = sub_1002E29F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CB820(uint64_t a1)
{
  v2 = sub_1002E29F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CB85C(void *a1@<X8>)
{
  sub_1002CB6BC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CB8D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1002CBA84(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x6C41657265766573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x697472417377656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002CBB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002CB8D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CBB58(uint64_t a1)
{
  v2 = sub_1002DE5F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CBB94(uint64_t a1)
{
  v2 = sub_1002DE5F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CBBD0()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_severeAlert, &OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather39LocationNoAqiSevereNhpNewsConfiguration8_Storage_newsArticle);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002CBC98()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAC98, &qword_100A35480);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE5F8();
  sub_100088818(&type metadata for LocationNoAqiSevereNhpNewsConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002CBFE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CBC6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CC054()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationNoAqiSevereNhpNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002CC0A4()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB398, &qword_100A389B8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2A4C();
  sub_10000FB60(&type metadata for LocationNoAqiSevereNhpNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationNoAqiSevereNhpNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB3A8, 255, type metadata accessor for LocationNoAqiSevereNhpNewsConfiguration._Storage, "in ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CC1CC(uint64_t a1)
{
  v2 = sub_1002E2A4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CC208(uint64_t a1)
{
  v2 = sub_1002E2A4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CC244(void *a1@<X8>)
{
  sub_1002CC0A4();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002CC298()
{
  sub_10000C778();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1002E5718();
  v7 = type metadata accessor for LocationViewComponent(v6);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000281F0();
  __chkstk_darwin(v9);
  sub_100030230();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);

  v10 = sub_1002C01CC();

  if (v10)
  {
    sub_100066B44();
    sub_100073C90(*v5);
    sub_100066B44();
    v11 = sub_100003984();
    v13 = sub_100659078(v11, v12);
    sub_100040B64();
    sub_100040B64();
    if (v13)
    {
      sub_1000D419C();
      sub_100066B44();
      sub_100073C90(*v3);
      sub_100066B44();
      v14 = sub_100003984();
      v16 = sub_100659078(v14, v15);
      sub_100040F4C();
      sub_100040B64();
      sub_100040B64();
      if (v16)
      {
        sub_1002E50E4();
        sub_100066B44();
        sub_100073C90(*v1);
        sub_100066B44();
        v17 = sub_100003984();
        sub_100659078(v17, v18);
        sub_1000496A8();
        sub_100040B64();
        sub_1002E5638();
      }
    }
  }

  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002CC478()
{
  v2 = sub_100087F98();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (sub_100071914(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1002E5444();
    v6 = v4 && v0 == 0xE300000000000000;
    if (v6 || (sub_1002E4C70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1002E4D54();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (sub_100071914(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = sub_1000D3BC4();
        if (v4 && v0 == v11)
        {

          return 3;
        }

        else
        {
          sub_100071914(v10, 0xEA00000000007974);
          sub_1000379AC();
          if (v1)
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
}

uint64_t sub_1002CC548(uint64_t a1)
{
  v2 = sub_1002DE5A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CC584(uint64_t a1)
{
  v2 = sub_1002DE5A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CC618()
{
  result = type metadata accessor for LocationViewComponent(319);
  if (v1 <= 0x3F)
  {
    sub_1002E4BF0();
    updated = swift_updateClassMetadata2();
    return sub_1002E54EC(updated);
  }

  return result;
}

void sub_1002CC6DC()
{
  sub_10000E8AC();
  sub_100086704();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_100008064();
  __chkstk_darwin(v4);
  sub_10002137C();
  __chkstk_darwin(v5);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAC88, &qword_100A35478);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  sub_1000D3E24();
  v7 = sub_1002DE5A4();
  sub_1000162E4(&type metadata for LocationSevereConfiguration._Storage.CodingKeys, v8, v7);
  sub_1002E50A8();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100021D14();
    sub_1000EFEEC(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v11 = sub_1000E1628(v9, 255, v10, aA_7);
    sub_10003C2C4(v11);
    sub_10001E774();
    sub_10003DE74();
    sub_100017644();
    sub_10001E774();
    sub_10003DE74();
    sub_100018304();
    v12 = sub_1002E4C10();
    v13(v12);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_100045220();
  sub_10000C8F4();
}

uint64_t sub_1002CC9AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CC6B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CCA14()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationSevereConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CC298();
  return v1 & 1;
}

void sub_1002CCA5C()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB3B0, &qword_100A389C0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2AA0();
  sub_10000FB60(&type metadata for LocationSevereConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationSevereConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB3C0, 255, type metadata accessor for LocationSevereConfiguration._Storage, byte_100A349C8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CCB84(uint64_t a1)
{
  v2 = sub_1002E2AA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CCBC0(uint64_t a1)
{
  v2 = sub_1002E2AA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CCBFC(void *a1@<X8>)
{
  sub_1002CCA5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CCC78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x696C617551726961 && a2 == 0xEA00000000007974)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1002CCE24(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x6C41657265766573;
      break;
    case 3:
      result = 0x697472417377656ELL;
      break;
    case 4:
      result = 0x696C617551726961;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002CCED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002CCC78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CCEF8(uint64_t a1)
{
  v2 = sub_1002DE550();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CCF34(uint64_t a1)
{
  v2 = sub_1002DE550();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CCF70()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_severeAlert, &OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_newsArticle, &OBJC_IVAR____TtCV7Weather31LocationSevereNewsConfiguration8_Storage_airQuality);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002CD038()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAC78, &qword_100A35470);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE550();
  sub_100088818(&type metadata for LocationSevereNewsConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002CD384@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CD00C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CD3F4()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationSevereNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002CD444()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB3C8, &qword_100A389C8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2AF4();
  sub_10000FB60(&type metadata for LocationSevereNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationSevereNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB3D8, 255, type metadata accessor for LocationSevereNewsConfiguration._Storage, "\to ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CD56C(uint64_t a1)
{
  v2 = sub_1002E2AF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CD5A8(uint64_t a1)
{
  v2 = sub_1002E2AF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CD5E4(void *a1@<X8>)
{
  sub_1002CD444();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CD660(uint64_t a1)
{
  v2 = sub_1002DE4FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CD69C(uint64_t a1)
{
  v2 = sub_1002DE4FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CD6D8()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_severeAlert, &OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather33LocationSevereNhpAqiConfiguration8_Storage_airQuality);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002CD7A0()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAC68, &qword_100A35468);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE4FC();
  sub_100088818(&type metadata for LocationSevereNhpAqiConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002CDAEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CD774(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CDB5C()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationSevereNhpAqiConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002CDBAC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB3E0, &qword_100A389D0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2B48();
  sub_10000FB60(&type metadata for LocationSevereNhpAqiConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationSevereNhpAqiConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB3F0, 255, type metadata accessor for LocationSevereNhpAqiConfiguration._Storage, "Yo ");
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CDCD4(uint64_t a1)
{
  v2 = sub_1002E2B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CDD10(uint64_t a1)
{
  v2 = sub_1002E2B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CDD4C(void *a1@<X8>)
{
  sub_1002CDBAC();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002CDDC8()
{
  sub_10000C778();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1002E5718();
  v8 = type metadata accessor for LocationViewComponent(v7);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000281F0();
  __chkstk_darwin(v10);
  sub_100030230();
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);

  sub_1002E54F8();
  v11 = sub_1002C01CC();

  if (v11)
  {
    sub_1000436B8();
    sub_100066B44();
    sub_100073C90(*v6);
    sub_100066B44();
    v12 = sub_100003984();
    sub_100659078(v12, v13);
    sub_1000496A8();
    sub_100040B64();
    sub_100040B64();
    sub_1000436B8();
    sub_100066B44();
    sub_100073C90(*v4);
    sub_100066B44();
    v14 = sub_100003984();
    sub_100659078(v14, v15);
    sub_1000496A8();
    sub_100040B64();
    sub_100040B64();
    sub_1000D419C();
    v17 = v16;
    sub_100066B44();
    sub_100073C90(*v2);
    sub_100066B44();
    v18 = sub_100003984();
    sub_100659078(v18, v19);
    sub_1000496A8();
    sub_100040B64();
    sub_100040B64();
    if (v17)
    {
      sub_1000D419C();
      sub_100066B44();
      sub_100073C90(*v22);
      sub_100066B44();
      v20 = sub_100003984();
      sub_100659078(v20, v21);
      sub_1000496A8();
      sub_100040B64();
      sub_1002E5638();
    }
  }

  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002CDFE4()
{
  v2 = sub_100087F98();
  v4 = v4 && v3 == 0xE600000000000000;
  if (v4 || (sub_100071914(v2, 0xE600000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    sub_1002E5444();
    v6 = v4 && v0 == 0xE300000000000000;
    if (v6 || (sub_1002E4C70() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = sub_1002E4D54();
      v9 = v1 == v7 && v0 == v8;
      if (v9 || (sub_100071914(v7, v8) & 1) != 0)
      {

        return 2;
      }

      else
      {
        sub_1002E54E0();
        v11 = v1 == v10 && 0x8000000100ABACA0 == v0;
        if (v11 || (sub_100071914(0xD000000000000015, 0x8000000100ABACA0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = sub_1000D3BC4();
          if (v4 && v0 == v13)
          {

            return 4;
          }

          else
          {
            sub_100071914(v12, 0xEA00000000007974);
            sub_1000379AC();
            if (v1)
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
}

uint64_t sub_1002CE0F4(uint64_t a1)
{
  v2 = sub_1002DE4A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CE130(uint64_t a1)
{
  v2 = sub_1002DE4A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CE16C()
{
  sub_1002C5530(&OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_map, &OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_severeAlert, &OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_airQuality);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002CE208()
{
  sub_1002E58B4();
  result = type metadata accessor for LocationViewComponent(319);
  if (v1 <= 0x3F)
  {
    sub_1002E4BF0();
    updated = swift_updateClassMetadata2();
    return sub_1002E54EC(updated);
  }

  return result;
}

void sub_1002CE2C8()
{
  sub_10000E8AC();
  sub_10006A6F8();
  v2 = type metadata accessor for LocationViewComponent(0);
  v3 = sub_100021368(v2);
  __chkstk_darwin(v3);
  sub_10000C8A8(v4, v24);
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_1001924BC();
  __chkstk_darwin(v7);
  sub_100030230();
  sub_10022C350(&qword_100CAAC58, &qword_100A35460);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_100014230();
  sub_100040BB8();
  v9 = sub_1002DE4A8();
  sub_100088818(&type metadata for LocationSevereNhpConfiguration._Storage.CodingKeys, v10, v9);
  sub_1002E5510();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4B78();
    sub_1000C8578(&type metadata for LocationCommonConfigurationComponents);
    sub_10002FDA0();
    sub_100005644();
    v13 = sub_1000E1628(v11, 255, v12, aA_7);
    sub_1000B98A4(v13);
    sub_10001E774();
    sub_10003DE74();
    sub_100051D38();
    sub_1002E5534();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    v14 = sub_10003A120();
    sub_1000BEA00(v14, v15, v16, v17);
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    v18 = sub_10003A120();
    sub_1000BEA00(v18, v19, v20, v21);
    v22 = sub_1002E4C10();
    v23(v22);
    sub_10001E774();
    sub_10003DE74();
  }

  sub_100006F14(v1);
  sub_1000E1700();
  sub_10000C8F4();
}

uint64_t sub_1002CE614@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CE29C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CE684()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationSevereNhpConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CDDC8();
  return v1 & 1;
}

void sub_1002CE6D4()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB3F8, &qword_100A389D8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2B9C();
  sub_10000FB60(&type metadata for LocationSevereNhpConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationSevereNhpConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB408, 255, type metadata accessor for LocationSevereNhpConfiguration._Storage, byte_100A348D8);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CE7FC(uint64_t a1)
{
  v2 = sub_1002E2B9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CE838(uint64_t a1)
{
  v2 = sub_1002E2B9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CE874(void *a1@<X8>)
{
  sub_1002CE6D4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CE8AC()
{
  sub_1002E5650();
  *(v0 + 16) = v1;
  sub_1002E50FC();
  sub_10003DE74();
  sub_1002E547C();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  sub_1002E55D0();
  sub_10003DE74();
  sub_1002E551C();
  sub_10003DE74();
  return v0;
}

void sub_1002CE958()
{
  sub_100020DF0();
  v1 = sub_1002E5434();
  v2 = type metadata accessor for LocationViewComponent(v1);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_10002820C();
  __chkstk_darwin(v4);
  sub_1002E53C8();
  v5 = *(v0 + 16);
  type metadata accessor for LocationCommonConfigurationComponents._Storage(0);

  sub_10002C598();
  v6 = sub_1002C01CC();

  if (v6)
  {
    sub_10000804C();
    sub_100066B44();
    sub_1002E4C54();
    v7 = sub_100021CEC();
    sub_100659078(v7, v8);
    sub_10001424C();
    sub_100040B64();
    sub_1002E4CC0();
    sub_100040B64();
    if (v5)
    {
      sub_10000804C();
      sub_100066B44();
      sub_1002E4C54();
      v9 = sub_100021CEC();
      sub_100659078(v9, v10);
      sub_10001424C();
      sub_100040B64();
      sub_1002E4CC0();
      sub_100040B64();
      sub_10000804C();
      sub_100066B44();
      sub_1002E4C54();
      v11 = sub_100021CEC();
      sub_100659078(v11, v12);
      sub_10001424C();
      sub_100040B64();
      sub_1002E4CC0();
      sub_100040B64();
      sub_10000804C();
      sub_100066B44();
      sub_1002E4C54();
      v13 = sub_100021CEC();
      sub_100659078(v13, v14);
      sub_10001424C();
      sub_100040B64();
      sub_1002E4CC0();
      sub_100040B64();
      sub_10000804C();
      sub_100066B44();
      sub_1002E4C54();
      v15 = sub_100021CEC();
      sub_100659078(v15, v16);
      sub_1000496A8();
      sub_100040B64();
      sub_10000C918();
      sub_100040B64();
    }
  }

  sub_1000212EC();
}

uint64_t sub_1002CEB80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6D6D6F63 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 7364973 && a2 == 0xE300000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C41657265766573 && a2 == 0xEB00000000747265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000100ABACA0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697472417377656ELL && a2 == 0xEB00000000656C63;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x696C617551726961 && a2 == 0xEA00000000007974)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
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

unint64_t sub_1002CED84(char a1)
{
  result = 0x6E6F6D6D6F63;
  switch(a1)
  {
    case 1:
      result = 7364973;
      break;
    case 2:
      result = 0x6C41657265766573;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x697472417377656ELL;
      break;
    case 5:
      result = 0x696C617551726961;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002CEE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002CEB80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CEE74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002CED7C();
  *a1 = result;
  return result;
}

uint64_t sub_1002CEE9C(uint64_t a1)
{
  v2 = sub_1002DE400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CEED8(uint64_t a1)
{
  v2 = sub_1002DE400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002CEF14()
{

  sub_1002E50CC();
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_severeAlert);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_nextHourPrecipitation);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_newsArticle);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather34LocationSevereNhpNewsConfiguration8_Storage_airQuality);
  sub_100040B64();
  return v0;
}

uint64_t sub_1002CEFD4(uint64_t a1)
{
  result = type metadata accessor for LocationViewComponent(319);
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

void sub_1002CF0A8()
{
  sub_10000E8AC();
  v2 = v1;
  sub_10001E790();
  type metadata accessor for LocationViewComponent(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v4);
  sub_10004396C();
  __chkstk_darwin(v5);
  sub_100020104();
  __chkstk_darwin(v6);
  sub_100053394();
  __chkstk_darwin(v7);
  sub_1000B9E20();
  sub_10022C350(&qword_100CAAC38, &qword_100A35458);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v8);
  sub_10001320C();
  sub_10000E890(v2);
  sub_1002DE400();
  sub_1002E54AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
    v13 = v2;
  }

  else
  {
    sub_1002E57B4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10002FDA0();
    sub_100005644();
    sub_1000E1628(v9, 255, v10, aA_7);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1001706A4();
    sub_1002E53F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1000519EC();
    sub_1002E53F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    sub_1000E0F34();
    sub_1002E53F8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001E774();
    sub_10003DE74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = sub_1000E64B8();
    v12(v11);
    sub_10001E774();
    sub_10003DE74();
    v13 = 0;
  }

  sub_100006F14(v13);
  sub_10000C8F4();
}

uint64_t sub_1002CF57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CF07C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1002CF5CC()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationSevereNhpNewsConfiguration._Storage(v0);
  sub_100003B2C();
  sub_1002CE958();
  return v1 & 1;
}

void sub_1002CF5FC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB410, &qword_100A389E0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2BF0();
  sub_10000FB60(&type metadata for LocationSevereNhpNewsConfiguration.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationSevereNhpNewsConfiguration._Storage(0);
    v5 = sub_1000E1628(&qword_100CAB420, 255, type metadata accessor for LocationSevereNhpNewsConfiguration._Storage, byte_100A34888);
    sub_10000E864(v5, v6);
    v7 = sub_10000565C();
    v8(v7);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002CF724(uint64_t a1)
{
  v2 = sub_1002E2BF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CF760(uint64_t a1)
{
  v2 = sub_1002E2BF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CF79C(void *a1@<X8>)
{
  sub_1002CF5FC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002CF7D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100ABE4F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x8000000100ABDD30 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100ABE510 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x8000000100ABE530 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000021 && 0x8000000100ABE550 == a2)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
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

unint64_t sub_1002CF9BC(char a1)
{
  result = 0x72656767697274;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1002CFA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002CF7D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002CFAC4(uint64_t a1)
{
  v2 = sub_1002DD3D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002CFB00(uint64_t a1)
{
  v2 = sub_1002DD3D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002CFB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  v29 = sub_1000038D8();
  type metadata accessor for LocationViewerActiveLocationState(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000037D8();
  sub_100021D38();
  sub_10022C350(&qword_100CAA898, &qword_100A35340);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v31);
  sub_100003CF8();
  sub_1002E4C1C(v27);
  sub_1002DD3D8();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100066B44();
  sub_1002E4F10();
  sub_1000E1628(v32, 255, v33, byte_100A948C0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v28)
  {
    sub_1000A7B9C();
    sub_100040B64();
  }

  else
  {
    sub_1000A7B9C();
    sub_100040B64();
    sub_1002DD2DC();
    sub_1002E4DF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1002DD42C();
    sub_1002E4DF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1002DD480();
    sub_1002E4DF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1002E4DF8();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1002DD4D4();
    sub_1002E4DF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v34 = sub_1000E17A0();
  v35(v34);
  sub_10000C8F4();
}

void sub_1002CFE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  sub_1002E58F8();
  v30 = v29;
  sub_10001E790();
  type metadata accessor for LocationViewerActiveLocationState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000038E4();
  sub_10022C350(&qword_100CAAC08, &qword_100A35450);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v32);
  sub_10000C8D8();
  sub_10001930C(v30, v30[3]);
  sub_1002DD3D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    sub_1002E4CCC();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002E4F10();
    sub_1000E1628(v33, 255, v34, byte_100A948E8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10003DE74();
    sub_1002DE2B0();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v27) = a16;
    sub_1002DE304();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState) = a14;
    sub_1002DE358();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v27 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger) = a12;
    *(v27 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_1002DE3AC();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v35 = sub_100053370();
    v36(v35);
    *(v27 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState) = v37;
  }

  sub_100006F14(v30);
  sub_1002E5454();
  sub_10000C8F4();
}

uint64_t sub_1002D0210@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002CFE24(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1002D0260(uint64_t *a1@<X8>)
{
  sub_1007529E8();
  if (!v1)
  {
    *a1 = v3;
  }
}

BOOL sub_1002D02B0()
{
  v0 = sub_100003B38();
  type metadata accessor for LocationViewerViewState._Storage(v0);
  sub_100003B2C();
  return sub_1000BAD54();
}

void sub_1002D02E0()
{
  sub_100032568();
  sub_1000BD310();
  sub_10022C350(&qword_100CAAAA8, &qword_100A353F0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10001320C();
  sub_10000E890(v0);
  sub_1002DDC2C();
  sub_1002E54AC();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for LocationViewerViewState._Storage(0);
  sub_1002E5294();
  v4 = sub_1000E1628(v2, 255, v3, byte_100A347E8);
  sub_1000C84A4(v4, v5);
  v6 = sub_1000B97B8();
  v7(v6);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002D03F0()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAAA90, &qword_100A353E8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002DDC2C();
  sub_10000FB60(&type metadata for LocationViewerViewState.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for LocationViewerViewState._Storage(0);
    sub_1002E5294();
    v7 = sub_1000E1628(v5, 255, v6, "qp ");
    sub_10000E864(v7, v8);
    v9 = sub_10000565C();
    v10(v9);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002D0508(uint64_t a1)
{
  v2 = sub_1002DDC2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D0544(uint64_t a1)
{
  v2 = sub_1002DDC2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D058C(void *a1@<X8>)
{
  sub_1002D03F0();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002D05D4(uint64_t *a1@<X8>)
{
  sub_100752C88();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002D09E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636566694C707061 && a2 == 0xEC000000656C6379;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000100ABE5C0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6163696669746F6ELL && a2 == 0xED0000736E6F6974;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000012 && 0x8000000100ABAF40 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1701669236 && a2 == 0xE400000000000000;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 2003134838 && a2 == 0xE400000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6569566C61646F6DLL && a2 == 0xE900000000000077;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4472656874616577 && a2 == 0xEB00000000617461;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6174536775626564 && a2 == 0xEA00000000006574;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000014 && 0x8000000100ABE610 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1002D0DF4(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x636566694C707061;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6D6E6F7269766E65;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x6163696669746F6ELL;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 1701669236;
      break;
    case 8:
      result = 2003134838;
      break;
    case 9:
      result = 0x6569566C61646F6DLL;
      break;
    case 10:
      result = 0x4472656874616577;
      break;
    case 11:
      result = 0x6174536775626564;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1002D0F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002D09E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002D0FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1002D0DEC();
  *a1 = result;
  return result;
}

uint64_t sub_1002D0FE8(uint64_t a1)
{
  v2 = sub_1002DD528();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D1024(uint64_t a1)
{
  v2 = sub_1002DD528();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D1068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v25 = sub_1000038D8();
  type metadata accessor for ModalViewState(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  v27 = sub_1000038CC();
  type metadata accessor for ViewState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  v29 = sub_1000038CC();
  type metadata accessor for TimeState(v29);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000038E4();
  v31 = sub_1000038CC();
  type metadata accessor for NotificationsOptInState(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  v33 = sub_1000038CC();
  type metadata accessor for NotificationsState(v33);
  sub_1000037E8();
  __chkstk_darwin(v34);
  sub_1000038E4();
  v35 = sub_1000038CC();
  type metadata accessor for LocationsState(v35);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_1000038E4();
  v37 = sub_1000038CC();
  type metadata accessor for EnvironmentState(v37);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_1000037D8();
  sub_10003038C();
  type metadata accessor for AppConfigurationState(0);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000037D8();
  sub_10022C350(&qword_100CAA8C8, &qword_100A35348);
  sub_1000037C4();
  v41 = v40;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_100003CF8();
  v43 = sub_100053370();
  sub_10001930C(v43, v44);
  sub_1002DD528();
  sub_100020E58();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002DD57C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v23)
  {
    v49 = sub_1000E17A0();
    v50(v49);
  }

  else
  {
    sub_1002DD5D0();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1002E524C();
    sub_100066B44();
    sub_1002E5090();
    sub_1000E1628(v45, 255, v46, aQ_24);
    sub_1002E583C();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100040C90();
    sub_100040B64();
    sub_100003CD0();
    swift_beginAccess();
    sub_1002E5234();
    sub_100066B44();
    sub_1002E5024();
    sub_1000E1628(v47, 255, v48, byte_100A892DC);
    sub_1002E583C();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100040E90();
    sub_100040B64();
    sub_1002E521C();
    sub_100066B44();
    sub_1002E500C();
    sub_1000E1628(v51, 255, v52, aY_39);
    sub_1000C8AD8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000FFC1C();
    sub_100040B64();
    sub_1002E5204();
    sub_100066B44();
    sub_1002E4FF4();
    sub_1000E1628(v53, 255, v54, aU_33);
    sub_1000C8AD8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100040FDC();
    sub_100040B64();
    sub_1002E51EC();
    sub_100066B44();
    sub_1002E4FDC();
    sub_1000E1628(v55, 255, v56, byte_100A673C0);
    sub_1000C8AD8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000453BC();
    sub_100040B64();
    sub_1002E51D4();
    sub_100066B44();
    sub_1002E4FC4();
    sub_1000E1628(v57, 255, v58, "u*\x1B");
    sub_1000C8AD8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000E139C();
    sub_100040B64();
    sub_1002E51BC();
    sub_100066B44();
    sub_1002E4FAC();
    sub_1000E1628(v59, 255, v60, byte_100A89EE4);
    sub_1000C8AD8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1002E4B48();
    sub_100040B64();
    sub_1002E51A4();
    sub_100066B44();
    sub_1002E4F94();
    sub_1000E1628(v61, 255, v62, "e_\x1B");
    sub_1000C8AD8();
    sub_100003CDC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100192384();
    sub_100040B64();
    sub_1002DD624();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v63 = sub_1002DD678();
    sub_1002E57E4(v63, v64, v65, &type metadata for DebugState, v63);
    v66 = sub_1002DD6CC();
    sub_1002E57E4(v66, v67, v68, &type metadata for ContentStatusBannerState, v66);
    (*(v41 + 8))(v24);
  }

  sub_10000C8F4();
}

void sub_1002D192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  v26 = v25;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  v28 = sub_1000038CC();
  type metadata accessor for ViewState(v28);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_1000038E4();
  v30 = sub_1000038CC();
  type metadata accessor for TimeState(v30);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_1000038E4();
  v32 = sub_1000038CC();
  type metadata accessor for NotificationsOptInState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_1000038E4();
  v34 = sub_1000038CC();
  type metadata accessor for NotificationsState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  v36 = sub_1000038CC();
  type metadata accessor for LocationsState(v36);
  sub_1000037E8();
  __chkstk_darwin(v37);
  sub_1000038E4();
  v38 = sub_1000038CC();
  type metadata accessor for EnvironmentState(v38);
  sub_1000037E8();
  __chkstk_darwin(v39);
  sub_1000037D8();
  sub_1000426CC();
  type metadata accessor for AppConfigurationState(0);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_1000037D8();
  sub_10022C350(&qword_100CAAB98, &qword_100A35448);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v41);
  sub_100003CF8();
  sub_10000E890(v26);
  sub_1002DD528();
  sub_100020E58();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002DE10C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + 16) = v62;
    sub_1002DE160();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v23 + 24) = v62;
    sub_1002E5090();
    sub_1000E1628(v42, 255, v43, a9_8);
    sub_1002E5464();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1002E5620();
    sub_10003DE74();
    sub_1002E5024();
    sub_1000E1628(v44, 255, v45, "}%\x1B");
    sub_1002E5464();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1002E5620();
    sub_10003DE74();
    sub_1002E500C();
    sub_1000E1628(v46, 255, v47, aA_17);
    sub_1002E5464();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1002E5620();
    sub_10003DE74();
    sub_1002E4FF4();
    sub_1000E1628(v48, 255, v49, asc_100A5F744);
    sub_1002E5464();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1002E5620();
    sub_10003DE74();
    sub_1002E4FDC();
    sub_1000E1628(v50, 255, v51, byte_100A673E8);
    sub_1002E5464();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1002E5620();
    sub_10003DE74();
    sub_1002E4FC4();
    sub_1000E1628(v52, 255, v53, "]*\x1B");
    sub_1002E5464();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1002E5620();
    sub_10003DE74();
    sub_1002E4FAC();
    sub_1000E1628(v54, 255, v55, aU_31);
    sub_1002E5464();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10003DE74();
    LOBYTE(v62) = 9;
    sub_1002E4F94();
    sub_1000E1628(v56, 255, v57, "M_\x1B");
    sub_1002E5464();
    sub_1000E646C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10003DE74();
    sub_1002DE1B4();
    sub_1000E6634(&type metadata for WeatherDataState);
    v58 = v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
    *v58 = v62;
    *(v58 + 8) = v63;
    *(v58 + 24) = v64;
    sub_1002DE208();
    sub_1000E6634(&type metadata for DebugState);
    v59 = v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
    *v59 = 9;
    *(v59 + 8) = v63;
    sub_1002DE25C();
    sub_1000E6634(&type metadata for ContentStatusBannerState);
    v60 = sub_1002E4BE0();
    v61(v60);
    *(v23 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners) = v62;
  }

  sub_100006F14(v26);
  sub_10000C8F4();
}

uint64_t sub_1002D24D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002D1900(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1002D259C()
{
  sub_100032568();
  sub_1000BD310();
  sub_10022C350(&qword_100CAAB10, &qword_100A35428);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10001320C();
  sub_10000E890(v0);
  sub_1002DDCD4();
  sub_1002E54AC();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for MainState._Storage(0);
  sub_1002E4F40();
  v4 = sub_1000E1628(v2, 255, v3, ")q ");
  sub_1000C84A4(v4, v5);
  v6 = sub_1000B97B8();
  v7(v6);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002D26AC()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAAAF8, &qword_100A35420);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002DDCD4();
  sub_10000FB60(&type metadata for MainState.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for MainState._Storage(0);
    sub_1002E4F40();
    v7 = sub_1000E1628(v5, 255, v6, byte_100A34770);
    sub_10000E864(v7, v8);
    v9 = sub_10000565C();
    v10(v9);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002D27C4(uint64_t a1)
{
  v2 = sub_1002DDCD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D2800(uint64_t a1)
{
  v2 = sub_1002DDCD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D283C(void *a1@<X8>)
{
  sub_1002D26AC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002D2884@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100754948();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002D29EC()
{
  v0 = sub_100003B38();
  type metadata accessor for MinorAlertContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002D2B5C()
{
  v0 = sub_100003B38();
  type metadata accessor for NhpContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

void sub_1002D2BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000B7B64();
  v26 = v25;
  v28 = *v27;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v29, v30, v31, v32);
  *(v24 + 16) = v26;
  sub_1002E4ECC(v24 + v28, v33);
  sub_100097AA4();
  swift_endAccess();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  sub_1002E551C();
  sub_10003DE74();
  sub_1000426D8();
}

void sub_1002D2CFC()
{
  sub_10000C778();
  v40[2] = v2;
  v40[3] = v1;
  v40[4] = v3;
  v41 = v4;
  v6 = v5;
  v7 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003848();
  v40[5] = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_1002E4BCC(v11, v12, v13, v14, v15, v16, v17, v18, v40[0]);
  v19 = sub_10022C350(&qword_100CAA860, &unk_100A35328);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v20);
  sub_100014230();
  v21 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v23);
  v25 = v40 - v24;
  type metadata accessor for LocationCommonViewComponents._Storage(0);

  sub_100021CEC();
  v26 = sub_1002C1A50();

  if (!v26)
  {
    goto LABEL_14;
  }

  v27 = v41;
  sub_100003CD0();
  swift_beginAccess();
  v40[0] = v6;
  sub_1002E57CC();
  sub_100003CD0();
  swift_beginAccess();
  v28 = *(v19 + 48);
  sub_1002E57CC();
  sub_1002E57CC();
  sub_1000038B4(v0, 1, v7);
  if (!v29)
  {
    sub_100095588();
    sub_1000038B4(v0 + v28, 1, v7);
    if (!v29)
    {
      v30 = v40[6];
      sub_10003DE74();
      v31 = sub_1009A24BC(v27, v30);
      sub_1002E5054();
      sub_100040B64();
      sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
      sub_100003A60();
      sub_100040B64();
      v32 = sub_1000C8954();
      sub_1000180EC(v32, v33, &unk_100A2F7B0);
      if (!v31)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
    sub_10002061C();
    sub_100040B64();
LABEL_10:
    sub_1000180EC(v0, &qword_100CAA860, &unk_100A35328);
    goto LABEL_14;
  }

  sub_1000180EC(v25, &qword_100CA5008, &unk_100A2F7B0);
  sub_1000038B4(v0 + v28, 1, v7);
  if (!v29)
  {
    goto LABEL_10;
  }

  sub_1000180EC(v0, &qword_100CA5008, &unk_100A2F7B0);
LABEL_12:
  sub_100074718();
  sub_100066B44();
  sub_100073ADC();
  sub_100082590();
  v34 = sub_100005480();
  sub_1009A24BC(v34, v35);
  sub_100003C98();
  sub_100040B64();
  sub_10003C310();
  sub_100040B64();
  if (v25)
  {
    sub_100074718();
    sub_100066B44();
    sub_100073ADC();
    sub_100082590();
    v36 = sub_100005480();
    sub_1009A24BC(v36, v37);
    sub_100003C98();
    sub_100040B64();
    sub_10003C310();
    sub_100040B64();
    sub_100074718();
    sub_100066B44();
    sub_100073ADC();
    sub_100082590();
    v38 = sub_100005480();
    sub_1009A24BC(v38, v39);
    sub_100003C98();
    sub_100040B64();
    sub_10003C310();
    sub_100040B64();
  }

LABEL_14:
  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002D3110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1002E5660();

  sub_1000180EC(v4 + *v6, &qword_100CA5008, &unk_100A2F7B0);
  sub_1002E503C();
  sub_100040B64();
  sub_10016515C(*v5);
  sub_100040B64();
  sub_10016515C(*a4);
  sub_100040B64();
  return v4;
}

uint64_t sub_1002D3198()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_map, &OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather20NhpMinorAlertContent8_Storage_severeAlert);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002D3234()
{
  sub_1002E58B4();
  sub_1001ACFB8(v0, &unk_100CA76D0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1002E4BF0();
      updated = swift_updateClassMetadata2();
      sub_1002E54EC(updated);
    }
  }
}

uint64_t sub_1002D33B8()
{
  v0 = sub_100003B38();
  type metadata accessor for NhpMinorAlertContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

uint64_t sub_1002D347C()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_map, &OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_newsArticle, &OBJC_IVAR____TtCV7Weather14NhpNewsContent8_Storage_nextHourPrecipitation);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D35C8()
{
  v0 = sub_100003B38();
  type metadata accessor for NhpNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

uint64_t sub_1002D3624()
{
  sub_1002E562C();
  v2 = OBJC_IVAR____TtCV7Weather12NoAqiContent8_Storage_map;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v3, v4, v5, v6);
  *(v0 + 16) = v1;
  sub_1002E4ECC(v0 + v2, v7);
  sub_100097AA4();
  swift_endAccess();
  return v0;
}

void sub_1002D36A8()
{
  sub_10000C778();
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  v5 = sub_10022C350(&qword_100CAA860, &unk_100A35328);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000C8C8();
  v7 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_100003848();
  v20[1] = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  type metadata accessor for LocationCommonViewComponents._Storage(0);

  sub_1002E54F8();
  v13 = sub_1002C1A50();

  if (v13)
  {
    v20[0] = v4;
    sub_100003CD0();
    swift_beginAccess();
    sub_100095588();
    sub_100003CD0();
    swift_beginAccess();
    v14 = *(v5 + 48);
    sub_100095588();
    sub_100095588();
    sub_100005404(v0);
    if (!v15)
    {
      sub_100095588();
      sub_100005404(v0 + v14);
      if (!v15)
      {
        sub_1002E4B60();
        sub_10003DE74();
        v16 = sub_1000C8954();
        sub_1009A24BC(v16, v17);
        sub_100040B64();
        v18 = sub_10002C598();
        sub_1000180EC(v18, v19, &unk_100A2F7B0);
        sub_100040B64();
        sub_1000180EC(v0, &qword_100CA5008, &unk_100A2F7B0);
        goto LABEL_11;
      }

      sub_1000180EC(v12, &qword_100CA5008, &unk_100A2F7B0);
      sub_10002061C();
      sub_100040B64();
LABEL_10:
      sub_1000180EC(v0, &qword_100CAA860, &unk_100A35328);
      goto LABEL_11;
    }

    sub_1000180EC(v12, &qword_100CA5008, &unk_100A2F7B0);
    sub_100005404(v0 + v14);
    if (!v15)
    {
      goto LABEL_10;
    }

    sub_1000180EC(v0, &qword_100CA5008, &unk_100A2F7B0);
  }

LABEL_11:
  sub_10000536C();
}

uint64_t sub_1002D39BC()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtCV7Weather12NoAqiContent8_Storage_map, &qword_100CA5008, &unk_100A2F7B0);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002D3A5C(uint64_t a1)
{
  sub_1002D5E34(319, &unk_100CA76D0, type metadata accessor for LocationComponentContainerViewModel);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002D3B3C()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiContent._Storage(v0);
  sub_100003B2C();
  sub_1002D36A8();
  return v1 & 1;
}

uint64_t sub_1002D3C48()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002D3F1C();
  return v1 & 1;
}

uint64_t sub_1002D3D40()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiNhpContent._Storage(v0);
  sub_100003B2C();
  sub_1002D3F1C();
  return v1 & 1;
}

uint64_t sub_1002D3EA0()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiNhpNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

void sub_1002D3F1C()
{
  sub_10000C778();
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v3);
  sub_1002E4BCC(v4, v5, v6, v7, v8, v9, v10, v11, v30);
  v12 = sub_10022C350(&qword_100CAA860, &unk_100A35328);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  sub_100003CB4();
  v14 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100020E28();
  __chkstk_darwin(v16);
  sub_10003C300();
  type metadata accessor for LocationCommonViewComponents._Storage(0);

  sub_10000C918();
  v17 = sub_1002C1A50();

  if (!v17)
  {
    goto LABEL_11;
  }

  sub_100003CD0();
  swift_beginAccess();
  sub_100095588();
  sub_100003CD0();
  swift_beginAccess();
  v18 = *(v12 + 48);
  sub_1002E58CC();
  sub_100095588();
  sub_100095588();
  sub_10000E7EC(v0);
  if (v19)
  {
    sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
    sub_10000E7EC(v0 + v18);
    if (v19)
    {
      sub_1000180EC(v0, &qword_100CA5008, &unk_100A2F7B0);
LABEL_13:
      sub_100074718();
      sub_100066B44();
      sub_100073ADC();
      sub_100082590();
      v28 = sub_100005480();
      sub_1009A24BC(v28, v29);
      sub_100003C98();
      sub_100040B64();
      sub_10003C310();
      sub_100040B64();
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_100095588();
  sub_10000E7EC(v0 + v18);
  if (v19)
  {
    sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
    sub_10002061C();
    sub_100040B64();
LABEL_10:
    sub_1000180EC(v0, &qword_100CAA860, &unk_100A35328);
    goto LABEL_11;
  }

  sub_10003DE74();
  v20 = sub_100020E44();
  sub_1009A24BC(v20, v21);
  sub_100003C98();
  sub_100040B64();
  sub_10000C90C();
  sub_1000180EC(v22, v23, v24);
  sub_100040B64();
  sub_10000C90C();
  sub_1000180EC(v25, v26, v27);
  if (&qword_100CA5008)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002D4328()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiSevereContent._Storage(v0);
  sub_100003B2C();
  sub_1002D3F1C();
  return v1 & 1;
}

uint64_t sub_1002D4488()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiSevereNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002D45F0()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiSevereNhpContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002D46AC()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_map, &OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_newsArticle, &OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather25NoAqiSevereNhpNewsContent8_Storage_severeAlert);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D47F8()
{
  v0 = sub_100003B38();
  type metadata accessor for NoAqiSevereNhpNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

unint64_t sub_1002D4854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a1 + 18);
  v5 = *(a1 + 21);
  v6 = *(a1 + 19);
  v7 = *(a1 + 22);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 18);
  v11 = *(a2 + 21);
  v12 = *(a2 + 19);
  v13 = *(a2 + 22);
  if (v7)
  {
    v14 = 0x1000000000000;
  }

  else
  {
    v14 = 0;
  }

  v15 = (v6 << 24) | (v5 << 40);
  v16 = v4 == 0;
  v17 = 0x10000;
  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0x10000;
  }

  v19 = v14 | v18 | v15 | (v3 << 8);
  if (v13)
  {
    v20 = 0x1000000000000;
  }

  else
  {
    v20 = 0;
  }

  if (!v10)
  {
    v17 = 0;
  }

  return sub_100549EA8(v19 | v2, v20 | v17 | (v12 << 24) | (v11 << 40) | (v9 << 8) | v8);
}

uint64_t sub_1002D48F8(uint64_t a1)
{
  v2 = sub_1002DD720();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D4934(uint64_t a1)
{
  v2 = sub_1002DD720();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D49A4()
{
  sub_100032568();
  v1 = v0;
  sub_10022C350(&qword_100CAA940, &unk_100A35350);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_10000E890(v1);
  sub_1002DD720();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1002DD774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v3 = sub_10000C8E8();
  v4(v3);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002D4B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  sub_1002E58F8();
  v26 = v25;
  sub_10001E790();
  sub_10022C350(&qword_100CAAB88, &qword_100A35440);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v27);
  sub_100014230();
  sub_1002E4C1C(v26);
  v28 = sub_1002DD720();
  sub_1000E672C(&type metadata for NotificationsOptInViewState._Storage.CodingKeys, v29, v28);
  if (v24)
  {
    sub_1000370B0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002DE0B8();
    sub_1002E4D28(&unk_100C5DB70, v30);
    v31 = sub_100020E44();
    v32(v31);
    *(v23 + 16) = *(&a10 + 1);
    *(v23 + 18) = HIBYTE(a10);
    *(v23 + 21) = a12;
    *(v23 + 19) = a11;
    *(v23 + 22) = a13;
  }

  sub_100006F14(v26);
  sub_1002E5454();
  sub_10000C8F4();
}

uint64_t sub_1002D4CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D4AD8();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1002D4CFC(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  sub_10075499C(a2, a3, a4, a5, a6, a7, a8, a9);
  if (!v9)
  {
    *a1 = v11;
  }
}

unint64_t sub_1002D4D4C()
{
  sub_100003A00();
  type metadata accessor for NotificationsOptInViewState._Storage();
  v0 = sub_100003B2C();
  return sub_1002D4854(v0, v1) & 1;
}

void sub_1002D4D7C()
{
  sub_100032568();
  sub_1000BD310();
  sub_10022C350(&qword_100CAAA80, &qword_100A353E0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10001320C();
  sub_10000E890(v0);
  sub_1002DDBD8();
  sub_1002E54AC();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NotificationsOptInViewState._Storage();
  sub_1002E5264();
  v5 = sub_1000E1628(v2, v3, v4, byte_100A34478);
  sub_1000C84A4(v5, v6);
  v7 = sub_1000B97B8();
  v8(v7);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002D4E84()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAAA68, &qword_100A353D8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002DDBD8();
  sub_10000FB60(&type metadata for NotificationsOptInViewState.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for NotificationsOptInViewState._Storage();
    sub_1002E5264();
    v8 = sub_1000E1628(v5, v6, v7, byte_100A344A0);
    sub_10000E864(v8, v9);
    v10 = sub_10000565C();
    v11(v10);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002D4F94(uint64_t a1)
{
  v2 = sub_1002DDBD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D4FD0(uint64_t a1)
{
  v2 = sub_1002DDBD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D5018(void *a1@<X8>)
{
  sub_1002D4E84();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002D5060(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  sub_100754A54(a2, a3, a4, a5, a6, a7, a8, a9);
  if (!v9)
  {
    *a1 = v11;
  }
}

void sub_1002D50A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000B7B64();
  sub_1002E5650();
  v25 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_summaryPlatterViewModel;
  v26 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_100003934();
  sub_10001B350(v27, v28, v29, v26);
  v30 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_newsViewModel;
  type metadata accessor for DetailComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v31, v32, v33, v34);
  v35 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel;
  sub_100003934();
  sub_10001B350(v36, v37, v38, v26);
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4ECC(v24 + v25, v39);
  sub_100097AA4();
  swift_endAccess();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1002E4ECC(v24 + v30, v40);
  sub_100097AA4();
  swift_endAccess();
  sub_100024084();
  sub_1002E55D0();
  sub_10003DE74();
  sub_1002E4ECC(v24 + v35, v41);
  sub_100097AA4();
  swift_endAccess();
  sub_1000426D8();
}

void sub_1002D5224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  v104 = v23;
  v25 = v24;
  v97 = type metadata accessor for DetailComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_1000038E4();
  sub_100003990(v27);
  v95 = sub_10022C350(&qword_100CAA958, &qword_100A5B780);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v28);
  sub_1000039BC();
  sub_100003990(v29);
  v30 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_10000E70C();
  v96 = v33;
  v34 = sub_1000038CC();
  v35 = type metadata accessor for MonthlyAveragesChartModel(v34);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  v102 = v37;
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v101 = v39;
  v40 = sub_1000038CC();
  type metadata accessor for ConditionDetailPlatterViewModel(v40);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CAA960, &qword_100A6DBD0);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  v48 = &v93 - v47;
  v49 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  v103 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_1002E4C00();
  v55 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v56 = sub_100003810(v55);
  __chkstk_darwin(v56);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v57);
  sub_10003C300();
  sub_100066B44();
  sub_100066B44();
  v58 = sub_1006276A4(v21, v20);
  sub_100040B64();
  sub_100040B64();
  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100003CD0();
  swift_beginAccess();
  v94 = v25;
  sub_1002E5824();
  sub_100003CD0();
  swift_beginAccess();
  v59 = *(v44 + 48);
  sub_10001BCC4();
  sub_1002E5824();
  sub_1002E5824();
  sub_10000C814(v48);
  v60 = v44;
  if (v62)
  {
    sub_1000180EC(v22, &qword_100CA71A0, &unk_100A322C0);
    sub_10000C814(&v48[v59]);
    if (v62)
    {
      sub_1000180EC(v48, &qword_100CA71A0, &unk_100A322C0);
      goto LABEL_13;
    }

LABEL_10:
    v63 = &qword_100CAA960;
    v64 = &qword_100A6DBD0;
    v65 = v48;
LABEL_11:
    sub_1000180EC(v65, v63, v64);
    goto LABEL_30;
  }

  v61 = v103;
  sub_100095588();
  sub_10000C814(&v48[v59]);
  if (v62)
  {
    sub_1000180EC(v22, &qword_100CA71A0, &unk_100A322C0);
    sub_100025094();
    sub_100040B64();
    goto LABEL_10;
  }

  sub_100024084();
  sub_1002E5808();
  sub_100954420(v61, v44);
  sub_10004E40C();
  sub_100040B64();
  sub_1000180EC(v22, &qword_100CA71A0, &unk_100A322C0);
  sub_1000C8954();
  sub_100040B64();
  sub_1000180EC(v48, &qword_100CA71A0, &unk_100A322C0);
  if ((&qword_100CA71A0 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  sub_1002E5144();
  v66 = v94;
  sub_100066B44();
  v67 = v104;
  sub_100066B44();
  v68 = sub_100014268();
  sub_1003AC2A0(v68, v69);
  sub_1002E515C();
  sub_100040B64();
  sub_1000314C8();
  sub_100040B64();
  if ((&qword_100CA71A0 & 1) == 0)
  {
    goto LABEL_30;
  }

  v103 = v60;
  v70 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_newsViewModel;
  sub_100003CD0();
  swift_beginAccess();
  v71 = v96;
  sub_1000314B0(v66 + v70, v96);
  v72 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_newsViewModel;
  sub_100003CD0();
  swift_beginAccess();
  v73 = *(v95 + 48);
  v74 = v98;
  sub_1000314B0(v71, v98);
  sub_1000314B0(v72 + v67, v74 + v73);
  LOBYTE(v75) = v97;
  sub_1000038B4(v74, 1, v97);
  if (v62)
  {
    sub_1000180EC(v71, &qword_100CA7188, &qword_100A35360);
    sub_10000554C(v74 + v73);
    v76 = v99;
    if (v62)
    {
      sub_1000180EC(v74, &qword_100CA7188, &qword_100A35360);
LABEL_24:
      sub_100040D98();
      v80 = v100;
      sub_100066B44();
      sub_1002E53D8();
      sub_100066B44();
      sub_100954420(v80, v72);
      sub_10004E40C();
      sub_100040B64();
      sub_1002E5638();
      if ((v75 & 1) == 0)
      {
        goto LABEL_30;
      }

      v81 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel;
      sub_100003CD0();
      swift_beginAccess();
      sub_1000314B0(v66 + v81, v76);
      v82 = OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel;
      sub_100003CD0();
      swift_beginAccess();
      v83 = *(v103 + 48);
      sub_1002E53D8();
      sub_100095588();
      sub_1000314B0(v67 + v82, v81 + v83);
      sub_10000C814(v81);
      if (v62)
      {
        sub_1000180EC(v76, &qword_100CA71A0, &unk_100A322C0);
        sub_10000C814(v81 + v83);
        if (v62)
        {
          sub_1000180EC(v81, &qword_100CA71A0, &unk_100A322C0);
          goto LABEL_30;
        }
      }

      else
      {
        sub_100095588();
        sub_10000C814(v81 + v83);
        if (!v84)
        {
          sub_100024084();
          sub_1002E5808();
          v85 = sub_100005480();
          sub_100954420(v85, v86);
          sub_10004E40C();
          sub_100040B64();
          sub_10000C90C();
          sub_1000180EC(v87, v88, v89);
          sub_10003C310();
          sub_100040B64();
          sub_10000C90C();
          sub_1000180EC(v90, v91, v92);
          goto LABEL_30;
        }

        sub_1000180EC(v76, &qword_100CA71A0, &unk_100A322C0);
        sub_100025094();
        sub_100040B64();
      }

      v63 = &qword_100CAA960;
      v64 = &qword_100A6DBD0;
      v65 = v81;
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  sub_100095588();
  sub_10000554C(v74 + v73);
  v72 = v99;
  if (v77)
  {
    sub_1000180EC(v71, &qword_100CA7188, &qword_100A35360);
    sub_1000BA470();
    sub_100040B64();
LABEL_22:
    v63 = &qword_100CAA958;
    v64 = &qword_100A5B780;
    v65 = v74;
    goto LABEL_11;
  }

  sub_1002E5114();
  sub_10003DE74();
  v78 = sub_1002E52D0();
  LODWORD(v102) = sub_100428860(v78, v79);
  sub_1002E512C();
  sub_100040B64();
  v75 = &qword_100A35360;
  sub_1000180EC(v71, &qword_100CA7188, &qword_100A35360);
  v76 = v72;
  sub_100040B64();
  sub_1000180EC(v74, &qword_100CA7188, &qword_100A35360);
  if (v102)
  {
    goto LABEL_24;
  }

LABEL_30:
  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002D5B7C()
{
  sub_100040B64();
  v1 = sub_1000039EC(OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_summaryPlatterViewModel);
  sub_1000180EC(v1, v2, &unk_100A322C0);
  sub_1002E5330();
  sub_1000180EC(v0 + OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_newsViewModel, &qword_100CA7188, &qword_100A35360);
  sub_100025094();
  sub_100040B64();
  v3 = sub_1000039EC(OBJC_IVAR____TtCV7Weather36PrecipitationAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel);
  sub_1000180EC(v3, v4, &unk_100A322C0);
  return v0;
}

void sub_1002D5C80(uint64_t a1)
{
  type metadata accessor for PrecipitationAveragesHeroChartViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1002D5E34(319, &qword_100CAA068, type metadata accessor for ConditionDetailPlatterViewModel);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MonthlyAveragesChartModel(319);
      if (v3 <= 0x3F)
      {
        sub_1002D5E34(319, &qword_100CAA070, type metadata accessor for DetailComponentContainerViewModel);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ConditionDetailPlatterViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1002D5E34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002D5EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, __int128 a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, char a34)
{
  sub_1002E56CC();
  v51 = v35;
  v50 = v36;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  memcpy((v34 + 16), v47, 0xC2uLL);
  *(v34 + 216) = v46;
  *(v34 + 224) = v44;
  *(v34 + 232) = v42;
  *(v34 + 240) = v40;
  *(v34 + 248) = v38;
  *(v34 + 256) = v50;
  *(v34 + 264) = v51;
  *(v34 + 272) = a27;
  *(v34 + 288) = a28;
  *(v34 + 296) = a29;
  *(v34 + 304) = a30;
  *(v34 + 312) = a31;
  v48 = OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL;
  type metadata accessor for URL();
  sub_1000037E8();
  (*(v49 + 32))(v34 + v48, a32);
  *(v34 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView) = a33;
  *(v34 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource) = a34 & 1;
  sub_1002E56B0();
}

void sub_1002D5FFC()
{
  sub_10000C778();
  sub_10001E790();
  type metadata accessor for URL();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10003038C();
  memcpy(v31, (v0 + 16), 0xC2uLL);
  v17 = *(v0 + 224);
  v18 = *(v0 + 216);
  v19 = *(v0 + 248);
  v20 = *(v0 + 240);
  v21 = *(v0 + 264);
  v3 = *(v0 + 288);
  v15 = *(v0 + 280);
  v16 = *(v0 + 272);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  LODWORD(v14) = *(v0 + 296);
  HIDWORD(v14) = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = sub_1002E58D8();
  v8(v7);
  v9 = *(v0 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView);
  v10 = *(v0 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource);
  swift_allocObject();
  BYTE1(v12) = v10;
  LOBYTE(v12) = v9;
  LOBYTE(v11) = v14;
  sub_1002D5EE8(v31, v18, v17, v6, v20, v19, HIDWORD(v14), v21, v16, v15, v3, v11, v5, v4, v1, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  sub_1002DD184(v31, &v22);

  sub_10000536C();
}

void sub_1002D61E4()
{
  sub_10000C778();
  sub_1000E1520();
  type metadata accessor for URL();
  sub_10000FB48();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_100003C38();
  sub_100021390();
  __chkstk_darwin(v7);
  sub_1000B9E20();
  memcpy(v29, (v1 + 16), 0xC2uLL);
  memcpy(v30, (v0 + 16), 0xC2uLL);
  sub_1002DD184(v29, v28);
  sub_1002DD184(v30, v28);
  v8 = sub_1005CCDCC(v29, v30);
  sub_1002DD1E0(v30);
  sub_1002DD1E0(v29);
  if (v8)
  {
    v9 = *(v1 + 216) == *(v0 + 216) && *(v1 + 224) == *(v0 + 224);
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100749614(*(v1 + 232), *(v0 + 232)))
    {
      v10 = *(v1 + 240) == *(v0 + 240) && *(v1 + 248) == *(v0 + 248);
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100749700(*(v1 + 256), *(v0 + 256)))
      {
        v11 = *(v1 + 272);
        v12 = *(v0 + 272);
        if (v11)
        {
          if (!v12)
          {
            goto LABEL_36;
          }

          v13 = *(v1 + 264) == *(v0 + 264) && v11 == v12;
          if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v12)
        {
          goto LABEL_36;
        }

        v14 = *(v1 + 288);
        v15 = *(v0 + 288);
        if (v14)
        {
          if (!v15)
          {
            goto LABEL_36;
          }

          v16 = *(v1 + 280) == *(v0 + 280) && v14 == v15;
          if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else if (v15)
        {
          goto LABEL_36;
        }

        if (sub_1007497D8(*(v1 + 296), *(v0 + 296)))
        {

          v17 = sub_10002FDB4();
          v19 = sub_1002D6624(v17, v18);

          if (v19)
          {

            v20 = sub_10002FDB4();
            v22 = sub_1002D6930(v20, v21);

            if (v22)
            {
              v23 = *(v5 + 16);
              v23(v3, v1 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v2);
              v24 = sub_1002E547C();
              (v23)(v24);
              static URL.== infix(_:_:)();
              v25 = *(v5 + 8);
              v26 = sub_100014268();
              v25(v26);
              v27 = sub_10000C8E8();
              v25(v27);
            }
          }
        }
      }
    }
  }

LABEL_36:
  sub_10000536C();
}

void sub_1002D64EC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1002E562C();
    sub_1000A403C();
    if (v4)
    {
      v5 = 0;
      sub_1002E4F88();
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & v6;
      v10 = (v7 + 63) >> 6;
LABEL_8:
      if (v9)
      {
        sub_1000E17AC();
LABEL_15:
        v15 = *(*(v3 + 48) + (v11 | (v5 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v15);
        v16 = Hasher._finalize()();
        v17 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(v2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v16 = v18 + 1;
          if (*(*(v2 + 48) + v18) == v15)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v5 >= v10)
          {
            return;
          }

          ++v12;
          if (*(v3 + 56 + 8 * v5))
          {
            sub_1000C825C();
            v9 = v14 & v13;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t sub_1002D6624(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = *(result + 56);
  v26 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v5;
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v27 = v9;
  v28 = result;
  if ((v7 & v5) != 0)
  {
    do
    {
      v11 = __clz(__rbit64(v8));
      v12 = (v8 - 1) & v8;
LABEL_13:
      v15 = *(*(v3 + 48) + (v11 | (v4 << 6)));
      Hasher.init(_seed:)();
      sub_100542CB0(v15);
      String.hash(into:)();

      v16 = Hasher._finalize()();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }

      v29 = v12;
      v19 = ~v17;
      while (1)
      {
        v20 = 0xE800000000000000;
        v21 = 0x73776F626E696172;
        switch(*(*(a2 + 48) + v18))
        {
          case 1:
            v21 = 0x6E696E746867696CLL;
            v20 = 0xE900000000000067;
            break;
          case 2:
            v20 = 0xE400000000000000;
            v21 = 1818845544;
            break;
          case 3:
            v20 = 0xE500000000000000;
            v21 = 0x656B6F6D73;
            break;
          case 4:
            v20 = 0xE300000000000000;
            v21 = 6778726;
            break;
          case 5:
            v20 = 0xE400000000000000;
            v21 = 1702519144;
            break;
          default:
            break;
        }

        v22 = 0xE800000000000000;
        v23 = 0x73776F626E696172;
        switch(v15)
        {
          case 1:
            v23 = 0x6E696E746867696CLL;
            v22 = 0xE900000000000067;
            break;
          case 2:
            v22 = 0xE400000000000000;
            v23 = 1818845544;
            break;
          case 3:
            v22 = 0xE500000000000000;
            v23 = 0x656B6F6D73;
            break;
          case 4:
            v22 = 0xE300000000000000;
            v23 = 6778726;
            break;
          case 5:
            v22 = 0xE400000000000000;
            v23 = 1702519144;
            break;
          default:
            break;
        }

        if (v21 == v23 && v20 == v22)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          goto LABEL_35;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v10 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_35:
      v9 = v27;
      v3 = v28;
      v8 = v29;
    }

    while (v29);
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v26 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002D6930(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v26 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v27 = v8;
  v28 = result;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v29 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
      Hasher.init(_seed:)();
      sub_100542D8C(v13);
      String.hash(into:)();

      v14 = Hasher._finalize()();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = 0xE800000000000000;
        v19 = 0x746E617361656C70;
        switch(*(*(a2 + 48) + v16))
        {
          case 1:
            v19 = 0x617361656C706E75;
            v18 = 0xEA0000000000746ELL;
            break;
          case 2:
            v18 = 0xE300000000000000;
            v19 = 7630696;
            break;
          case 3:
            v18 = 0xE600000000000000;
            v19 = 0x796C6C696863;
            break;
          case 4:
            v18 = 0xE500000000000000;
            v20 = 1734833517;
            goto LABEL_23;
          case 5:
            v18 = 0xE300000000000000;
            v19 = 7959140;
            break;
          case 6:
            v18 = 0xE500000000000000;
            v20 = 1684957559;
LABEL_23:
            v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
            break;
          case 7:
            v18 = 0xE400000000000000;
            v19 = 1835819363;
            break;
          default:
            break;
        }

        v21 = 0xE800000000000000;
        v22 = 0x746E617361656C70;
        switch(v13)
        {
          case 1:
            v22 = 0x617361656C706E75;
            v21 = 0xEA0000000000746ELL;
            break;
          case 2:
            v21 = 0xE300000000000000;
            v22 = 7630696;
            break;
          case 3:
            v21 = 0xE600000000000000;
            v22 = 0x796C6C696863;
            break;
          case 4:
            v21 = 0xE500000000000000;
            v23 = 1734833517;
            goto LABEL_32;
          case 5:
            v21 = 0xE300000000000000;
            v22 = 7959140;
            break;
          case 6:
            v21 = 0xE500000000000000;
            v23 = 1684957559;
LABEL_32:
            v22 = v23 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
            break;
          case 7:
            v21 = 0xE400000000000000;
            v22 = 1835819363;
            break;
          default:
            break;
        }

        if (v19 == v22 && v18 == v21)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          goto LABEL_41;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          return 0;
        }
      }

LABEL_41:
      v8 = v27;
      v3 = v28;
      v7 = v29;
    }

    while (v29);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v26 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1002D6C88()
{
  sub_10000C778();
  if (v2 == v3 || (sub_100003A00(), sub_1000A403C(), !v4))
  {
LABEL_19:
    sub_10000536C();
    return;
  }

  v5 = 0;
  sub_1002E4F88();
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
LABEL_8:
  if (v9)
  {
    sub_1002E587C();
LABEL_15:
    v15 = *(*(v1 + 48) + 8 * (v11 | (v5 << 6)));
    v16 = static Hasher._hash(seed:_:)();
    v17 = ~(-1 << *(v0 + 32));
    while (1)
    {
      v18 = v16 & v17;
      if (((*(v0 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
      {
        goto LABEL_19;
      }

      v16 = v18 + 1;
      if (*(*(v0 + 48) + 8 * v18) == v15)
      {
        goto LABEL_8;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_19;
    }

    ++v12;
    if (*(v1 + 56 + 8 * v5))
    {
      sub_1000C825C();
      v9 = v14 & v13;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1002D6D94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000100ABE9D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ALL && 0x8000000100ABE9F0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000100ABEA10 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100ABEA30 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69746152646E6977 && a2 == 0xEA0000000000676ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C617551726961 && a2 == 0xEF656C7469547974;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000019 && 0x8000000100ABEA60 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x8000000100ABEA80 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E6F43726568746FLL && a2 == 0xEF736E6F69746964;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7470697263736564 && a2 == 0xEC000000736E6F69;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000011 && 0x8000000100ABEAA0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x8000000100ABEAC0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x756F537972746E65 && a2 == 0xEB00000000656372)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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
}

unint64_t sub_1002D7190(char a1)
{
  result = 0x69746152646E6977;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 4:
      return result;
    case 5:
      result = 0x696C617551726961;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6E6F43726568746FLL;
      break;
    case 9:
      result = 0x7470697263736564;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0x756F537972746E65;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1002D733C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002D6D94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002D7364(uint64_t a1)
{
  v2 = sub_1002DD7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D73A0(uint64_t a1)
{
  v2 = sub_1002DD7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002D73DC()
{
  memcpy(__dst, (v0 + 16), 0xC2uLL);
  sub_1002DD1E0(__dst);

  v1 = OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL;
  type metadata accessor for URL();
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1002D7484()
{
  sub_1002D73DC();
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D7500(uint64_t a1)
{
  result = type metadata accessor for URL();
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

void sub_1002D75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10000E8AC();
  sub_1000038D8();
  type metadata accessor for URL();
  sub_1000037C4();
  v49 = v27;
  v50 = v26;
  __chkstk_darwin(v26);
  sub_1000037D8();
  v30 = v29 - v28;
  v31 = sub_10022C350(&qword_100CAA968, &qword_100A35368);
  sub_1000037C4();
  v33 = v32;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_100021D38();
  v35 = sub_10000C924();
  sub_10001930C(v35, v36);
  sub_1002DD7C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v53, v23 + 2, 0xC2uLL);
  memcpy(v52, v23 + 2, sizeof(v52));
  sub_1002DD184(v53, v51);
  sub_1002DD81C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v24)
  {
    memcpy(v51, v52, 0xC2uLL);
    sub_1002DD1E0(v51);
    v37 = sub_10002FDB4();
    v38(v37);
  }

  else
  {
    memcpy(v51, v52, 0xC2uLL);
    sub_1002DD1E0(v51);
    v39 = v23[27];
    sub_1002E59A8(1);
    sub_100163724();
    KeyedEncodingContainer.encode(_:forKey:)();
    if (v39)
    {
      v40 = sub_10002FDB4();
      v41(v40);
    }

    else
    {

      sub_1002DD870();
      sub_100163724();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v42 = v23[30];
      sub_1002E59A8(3);
      sub_1000BEA18();
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v42)
      {

        sub_1002DD8C4();
        sub_1002E4DE8();
        sub_100163724();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v43 = v23[33];
        sub_1002E59A8(5);
        sub_1000BEA18();
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
        if (!v43)
        {

          v44 = v23[35];
          sub_1002E59A8(6);
          sub_1000BEA18();
          KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
          if (!v44)
          {

            sub_1002DD918();
            sub_1002E4DE8();
            sub_100163724();
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            sub_10022C350(&qword_100CAA998, &qword_100A35370);
            sub_1002DDF48(&qword_100CAA9A0, sub_1002DD96C);
            sub_1002E4DE8();
            sub_100163724();
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            sub_10022C350(&qword_100CAA9B0, &qword_100A35378);
            sub_1002DD9C0(&qword_100CAA9B8, sub_1002DDA34);
            sub_1002E4DE8();
            sub_100163724();
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            (*(v49 + 16))(v30, v23 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v50);
            sub_1002E4EF8();
            sub_1000E1628(v45, 255, v46, &protocol conformance descriptor for URL);
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            (*(v49 + 8))(v30, v50);
            KeyedEncodingContainer.encode(_:forKey:)();
            sub_1002DDA88();
            sub_1002E4DE8();
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            v47 = sub_100014268();
            v48(v47);
            goto LABEL_7;
          }
        }
      }

      (*(v33 + 8))(v25, v31);
    }
  }

LABEL_7:
  sub_10000C8F4();
}

uint64_t sub_1002D7BD8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = swift_allocObject();
  a2(a1);
  return v4;
}

void sub_1002D7C30()
{
  sub_10000E8AC();
  v4 = v0;
  v6 = v5;
  type metadata accessor for URL();
  sub_1000037C4();
  v19 = v8;
  v20 = v7;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000426CC();
  sub_10022C350(&qword_100CAAB30, &qword_100A35438);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v9);
  sub_10000C8D8();
  *(v4 + 264) = 0u;
  *(v4 + 280) = 0u;
  v10 = v6[3];
  sub_10000E890(v6);
  sub_1002DD7C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1002E53B8();

    if (v3)
    {

      if (!v10)
      {
LABEL_5:
        if (!v6)
        {
LABEL_7:
          swift_deallocPartialClassInstance();
          goto LABEL_8;
        }

LABEL_6:
        (*(v19 + 8))(v4 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v20);
        goto LABEL_7;
      }
    }

    else if (!v10)
    {
      goto LABEL_5;
    }

    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_1002DDDF8();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  memcpy((v4 + 16), v22, 0xC2uLL);
  sub_10019230C(1);
  *(v4 + 216) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v4 + 224) = v11;
  sub_1002DDE4C();
  sub_1002E4E3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v4 + 232) = v21;
  sub_10019230C(3);
  *(v4 + 240) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v4 + 248) = v12;
  sub_1002DDEA0();
  sub_1002E4E3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v4 + 256) = v21;
  sub_10019230C(5);
  *(v4 + 264) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v4 + 272) = v13;

  sub_10019230C(6);
  *(v4 + 280) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v4 + 288) = v14;

  sub_1002DDEF4();
  sub_1002E4E3C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v4 + 296) = v21;
  sub_10022C350(&qword_100CAA998, &qword_100A35370);
  sub_1002DDF48(&qword_100CAAB58, sub_1002DDFBC);
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v4 + 304) = v21;
  sub_10022C350(&qword_100CAA9B0, &qword_100A35378);
  sub_1002DD9C0(&qword_100CAAB68, sub_1002DE010);
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v4 + 312) = v21;
  sub_1002E4EF8();
  sub_1000E1628(v15, 255, v16, &protocol conformance descriptor for URL);
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v4 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_onlineFeedbackURL, v2, v20);
  sub_100008080();
  *(v4 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_showOnlineFeedbackSafariView) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_1002DE064();
  sub_100008080();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = sub_1002E53E8();
  v18(v17);
  *(v4 + OBJC_IVAR____TtCV7Weather29ReportWeatherContentViewModel8_Storage_entrySource) = 11;
LABEL_8:
  sub_100006F14(v6);
  sub_10000C8F4();
}

void sub_1002D82FC(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  sub_100754B10(a2, a3, a4, a5, a6, a7, a8, a9, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (!v9)
  {
    *a1 = v11;
  }
}

uint64_t sub_1002D834C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1002D7BAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1002D839C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memcpy(__dst, (a1 + 16), 0xC2uLL);
  sub_1002DD184(__dst, &v4);
  return memcpy(a2, __dst, 0xC2uLL);
}

uint64_t sub_1002D83F4(const void *a1)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002D5FFC();
    sub_1000E6720();

    sub_1002E573C();
  }

  memcpy(__dst, (v4 + 16), 0xC2uLL);
  memcpy((v4 + 16), a1, 0xC2uLL);
  return sub_1002DD1E0(__dst);
}

void sub_1002D8480()
{
  v2 = sub_1000E66F8();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    sub_1002D5FFC();
    sub_1000E6720();

    sub_1002E573C();
  }

  *(v3 + 232) = v0;
}

void sub_1002D84CC()
{
  v2 = sub_1000E66F8();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    sub_1002D5FFC();
    sub_1000E6720();

    sub_1002E573C();
  }

  *(v3 + 256) = v0;
}

void sub_1002D8518()
{
  v2 = sub_1000E66F8();
  v3 = *v1;
  if ((v2 & 1) == 0)
  {
    sub_1002D5FFC();
    sub_1000E6720();

    sub_1002E573C();
  }

  *(v3 + 296) = v0;
}

uint64_t sub_1002D855C()
{
  v0 = sub_100003B38();
  type metadata accessor for ReportWeatherContentViewModel._Storage(v0);
  sub_100003B2C();
  sub_1002D61E4();
  return v1 & 1;
}

void sub_1002D858C()
{
  sub_100032568();
  sub_1000BD310();
  sub_10022C350(&qword_100CAB198, &qword_100A38908);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10001320C();
  sub_10000E890(v0);
  sub_1002E2368();
  sub_1002E54AC();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ReportWeatherContentViewModel._Storage(0);
  sub_1002E5174();
  v4 = sub_1000E1628(v2, 255, v3, "9u ");
  sub_1000C84A4(v4, v5);
  v6 = sub_1000B97B8();
  v7(v6);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002D869C()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAB180, &qword_100A38900);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002E2368();
  sub_10000FB60(&type metadata for ReportWeatherContentViewModel.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for ReportWeatherContentViewModel._Storage(0);
    sub_1002E5174();
    v7 = sub_1000E1628(v5, 255, v6, "!u ");
    sub_10000E864(v7, v8);
    v9 = sub_10000565C();
    v10(v9);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

uint64_t sub_1002D87B4(uint64_t a1)
{
  v2 = sub_1002E2368();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D87F0(uint64_t a1)
{
  v2 = sub_1002E2368();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D8838(uint64_t *a1@<X8>)
{
  sub_100755288();
  if (!v1)
  {
    *a1 = v3;
  }
}

void sub_1002D8880(void *a1@<X8>)
{
  sub_1002D869C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002D88C8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, (a1 + 16), sizeof(__dst));
  memcpy(v22, (a2 + 16), sizeof(v22));
  if ((__dst[0] & 0x8000000000000000) != 0)
  {
    v7 = __dst[0] & 0x7FFFFFFFFFFFFFFFLL;
    v8 = *&__dst[1];
    v9 = *&__dst[3];
    v10 = *&__dst[5];
    v11 = *&__dst[7];
    v12 = *&__dst[9];
    v13 = __dst[11];
    if ((v22[0] & 0x8000000000000000) != 0)
    {
      v15 = *&v22[1];
      v16 = *&v22[3];
      v17 = *&v22[5];
      v18 = *&v22[7];
      v19 = *&v22[9];
      v14 = v22[0] & 0x7FFFFFFFFFFFFFFFLL;
      v20 = v22[11];
      sub_10029C25C(v22, v6);
      sub_10029C25C(__dst, v6);
      v3 = sub_1005F7E98(&v7, &v14);
      goto LABEL_7;
    }
  }

  else if ((v22[0] & 0x8000000000000000) == 0)
  {
    type metadata accessor for ReportWeatherContentViewModel._Storage(0);
    sub_10029C25C(v22, &v14);
    sub_10029C25C(__dst, &v14);
    sub_100003940();
    sub_1002D61E4();
LABEL_7:
    v4 = v3;
    sub_10026AD10(v22);
    sub_10026AD10(__dst);
    return v4 & 1;
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1002D8A1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000379AC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1002D8A88(uint64_t a1)
{
  v2 = sub_1002DDADC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D8AC4(uint64_t a1)
{
  v2 = sub_1002DDADC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002D8B00()
{
  sub_1002DDD7C(*(v0 + 16));

  return swift_deallocClassInstance();
}

void sub_1002D8B80()
{
  sub_10000E8AC();
  v1 = v0;
  v3 = v2;
  sub_10022C350(&qword_100CAA9D8, &unk_100A35380);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10001320C();
  sub_1002E4C1C(v3);
  sub_1002DDADC();
  sub_1002E54AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v9, (v1 + 16), 0x60uLL);
  memcpy(v8, (v1 + 16), sizeof(v8));
  sub_10029C25C(v9, v7);
  sub_1002DDB30();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v7, v8, sizeof(v7));
  sub_10026AD10(v7);
  v5 = sub_100014268();
  v6(v5);
  sub_10000C8F4();
}

uint64_t sub_1002D8CDC()
{
  sub_1000E6720();
  swift_allocObject();
  sub_1002E5680();
  sub_1002D8D20();
  return v0;
}

void sub_1002D8D20()
{
  sub_10000E8AC();
  sub_1002E58F8();
  v3 = v2;
  sub_10001E790();
  sub_10022C350(&qword_100CAAB20, &qword_100A35430);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_100014230();
  sub_1002E4C1C(v3);
  v5 = sub_1002DDADC();
  sub_1000E672C(&type metadata for ReportWeatherViewState._Storage.CodingKeys, v6, v5);
  if (v1)
  {
    sub_1000370B0();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1002DDD28();
    sub_1002E4D28(&type metadata for ReportWeatherViewModel, v7);
    v8 = sub_100020E44();
    v9(v8);
    memcpy((v0 + 16), v10, 0x60uLL);
  }

  sub_100006F14(v3);
  sub_1002E5454();
  sub_10000C8F4();
}

uint64_t sub_1002D8E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002D8CDC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002D8EE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007552DC();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002D8F38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656761726F74735FLL && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000379AC();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

Swift::Int StubLocalSearchRequestService.Errors.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002D8FEC()
{
  sub_100003A00();
  type metadata accessor for ReportWeatherViewState._Storage();
  v0 = sub_100003B2C();
  return sub_1002D88C8(v0, v1) & 1;
}

void sub_1002D901C()
{
  sub_100032568();
  sub_1000BD310();
  sub_10022C350(&qword_100CAAA58, &qword_100A353D0);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10001320C();
  sub_10000E890(v0);
  sub_1002DDB84();
  sub_1002E54AC();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ReportWeatherViewState._Storage();
  sub_1002E50B4();
  v5 = sub_1000E1628(v2, v3, v4, byte_100A342C0);
  sub_1000C84A4(v5, v6);
  v7 = sub_1000B97B8();
  v8(v7);
  sub_1002E5564();
  sub_10008835C();
}

void sub_1002D9124()
{
  sub_100032568();
  sub_1000C8948();
  sub_10022C350(&qword_100CAAA40, &qword_100A353C8);
  sub_10000FB48();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CB4();
  sub_100013528();
  v3 = sub_1002DDB84();
  sub_10000FB60(&type metadata for ReportWeatherViewState.CodingKeys, v4, v3);
  if (v1)
  {
    sub_100006F14(v0);
  }

  else
  {
    type metadata accessor for ReportWeatherViewState._Storage();
    sub_1002E50B4();
    v8 = sub_1000E1628(v5, v6, v7, byte_100A342E8);
    sub_10000E864(v8, v9);
    v10 = sub_10000565C();
    v11(v10);
    sub_1002E54B8();
  }

  sub_10008653C();
  sub_10008835C();
}

Swift::Int sub_1002D9234(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002D9274(uint64_t a1)
{
  v2 = sub_1002DDB84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D92B0(uint64_t a1)
{
  v2 = sub_1002DDB84();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002D92F8(void *a1@<X8>)
{
  sub_1002D9124();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1002D9340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100755394();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1002D93F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D94F4()
{
  v0 = sub_100003B38();
  type metadata accessor for SevereContent._Storage(v0);
  sub_100003B2C();
  sub_1002BE23C();
  return v1 & 1;
}

uint64_t sub_1002D95B0()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_map, &OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_newsArticle, &OBJC_IVAR____TtCV7Weather17SevereNewsContent8_Storage_severeAlert);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D96FC()
{
  v0 = sub_100003B38();
  type metadata accessor for SevereNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

uint64_t sub_1002D97C0()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_map, &OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather19SevereNhpAqiContent8_Storage_severeAlert);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D990C()
{
  v0 = sub_100003B38();
  type metadata accessor for SevereNhpAqiContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

uint64_t sub_1002D99D0()
{
  sub_1002D3110(&OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_map, &OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality, &OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_nextHourPrecipitation, &OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_severeAlert);
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

uint64_t sub_1002D9B1C()
{
  v0 = sub_100003B38();
  type metadata accessor for SevereNhpContent._Storage(v0);
  sub_100003B2C();
  sub_1002D2CFC();
  return v1 & 1;
}

uint64_t sub_1002D9B78()
{
  sub_1002E5650();
  v2 = v1;
  v3 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v4, v5, v6, v7);
  *(v0 + 16) = v2;
  sub_1002E4ECC(v0 + v3, v8);
  sub_100097AA4();
  swift_endAccess();
  sub_10003DE74();
  sub_1000885A0();
  sub_10003DE74();
  sub_1002E55D0();
  sub_10003DE74();
  sub_1002E551C();
  sub_10003DE74();
  return v0;
}

void sub_1002D9C80()
{
  sub_10000C778();
  v3 = v2;
  v5 = v4;
  type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000281F0();
  __chkstk_darwin(v7);
  sub_10000E70C();
  v33 = v8;
  v9 = sub_10022C350(&qword_100CAA860, &unk_100A35328);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  sub_10001320C();
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_10000C8A8(v13, v31);
  __chkstk_darwin(v14);
  sub_10004E424();
  type metadata accessor for LocationCommonViewComponents._Storage(0);

  sub_10001BCC4();
  v15 = sub_1002C1A50();

  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v3;
  v17 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  sub_100003CD0();
  swift_beginAccess();
  sub_1000314B0(v5 + v17, v1);
  v18 = OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map;
  sub_100003CD0();
  swift_beginAccess();
  v19 = *(v9 + 48);
  sub_1000314B0(v1, v0);
  sub_1000314B0(v16 + v18, v0 + v19);
  sub_10000C814(v0);
  if (!v20)
  {
    sub_100095588();
    sub_10000C814(v0 + v19);
    if (!v20)
    {
      sub_1002E4B60();
      sub_10003DE74();
      sub_1009A24BC(v32, v33);
      sub_100003C98();
      sub_100040B64();
      sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
      sub_100021CEC();
      sub_100040B64();
      v21 = sub_10002C598();
      sub_1000180EC(v21, v22, &unk_100A2F7B0);
      if ((&qword_100CA5008 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
    sub_10002061C();
    sub_100040B64();
LABEL_10:
    sub_1000180EC(v0, &qword_100CAA860, &unk_100A35328);
    goto LABEL_14;
  }

  sub_1000180EC(v1, &qword_100CA5008, &unk_100A2F7B0);
  sub_10000C814(v0 + v19);
  if (!v20)
  {
    goto LABEL_10;
  }

  sub_1000180EC(v0, &qword_100CA5008, &unk_100A2F7B0);
LABEL_12:
  sub_100074718();
  sub_100066B44();
  sub_100082590();
  v23 = sub_100003A60();
  sub_1009A24BC(v23, v24);
  sub_100003C98();
  sub_100040B64();
  sub_10001BCC4();
  sub_100040B64();
  if (&qword_100CA5008)
  {
    sub_100074718();
    sub_100066B44();
    sub_100082590();
    v25 = sub_100003A60();
    sub_1009A24BC(v25, v26);
    sub_100003C98();
    sub_100040B64();
    sub_10001BCC4();
    sub_100040B64();
    sub_100074718();
    sub_100066B44();
    sub_100082590();
    v27 = sub_100003A60();
    sub_1009A24BC(v27, v28);
    sub_100003C98();
    sub_100040B64();
    sub_10001BCC4();
    sub_100040B64();
    sub_100074718();
    sub_100066B44();
    sub_100082590();
    v29 = sub_100003A60();
    sub_1009A24BC(v29, v30);
    sub_100003C98();
    sub_100040B64();
    sub_10001BCC4();
    sub_100040B64();
  }

LABEL_14:
  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002DA0B0()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_map, &qword_100CA5008, &unk_100A2F7B0);
  sub_1002E506C();
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_newsArticle);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_nextHourPrecipitation);
  sub_100040B64();
  sub_1000039EC(OBJC_IVAR____TtCV7Weather20SevereNhpNewsContent8_Storage_severeAlert);
  sub_100040B64();
  return v0;
}

void sub_1002DA180(uint64_t a1)
{
  sub_1002D5E34(319, &unk_100CA76D0, type metadata accessor for LocationComponentContainerViewModel);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocationComponentContainerViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002DA2A0()
{
  v0 = sub_100003B38();
  type metadata accessor for SevereNhpNewsContent._Storage(v0);
  sub_100003B2C();
  sub_1002D9C80();
  return v1 & 1;
}

void sub_1002DA2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1002E56CC();
  v27 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_summaryPlatterViewModel;
  v28 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  sub_100003934();
  sub_10001B350(v29, v30, v31, v28);
  v32 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_newsViewModel;
  type metadata accessor for DetailComponentContainerViewModel(0);
  sub_100003934();
  sub_10001B350(v33, v34, v35, v36);
  v37 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel;
  sub_100003934();
  sub_10001B350(v38, v39, v40, v28);
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1000870B0(v26 + v27, v41, v42, v43);
  sub_100097AA4();
  swift_endAccess();
  sub_1002E4EC0();
  sub_10003DE74();
  sub_1000870B0(v26 + v32, v44, v45, v46);
  sub_100097AA4();
  swift_endAccess();
  sub_10003DE74();
  sub_10003DE74();
  sub_1000870B0(v26 + v37, v47, v48, v49);
  sub_100097AA4();
  swift_endAccess();
  sub_1002E56B0();
}

void sub_1002DA490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  v93 = v25;
  v26 = sub_1000038D8();
  v87 = type metadata accessor for DetailComponentContainerViewModel(v26);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003990(v28);
  v86 = sub_10022C350(&qword_100CAA958, &qword_100A5B780);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  sub_100003990(v30);
  v31 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  v32 = sub_100003810(v31);
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  v90 = v34;
  v35 = sub_1000038CC();
  v36 = type metadata accessor for MonthlyAveragesChartModel(v35);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v39 = sub_1000038CC();
  type metadata accessor for ConditionDetailPlatterViewModel(v39);
  sub_1000037E8();
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CAA960, &qword_100A6DBD0);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_1000B9E20();
  v46 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  v92 = v50;
  sub_10000386C();
  __chkstk_darwin(v51);
  sub_10003C300();
  v52 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  sub_100003C38();
  sub_1000886FC();
  __chkstk_darwin(v54);
  sub_100030230();
  sub_100066B44();
  sub_100066B44();
  v55 = sub_10026F56C(v21, v24);
  sub_100040B64();
  sub_100040B64();
  if ((v55 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_100003CD0();
  swift_beginAccess();
  sub_1002E5824();
  sub_100003CD0();
  swift_beginAccess();
  v56 = *(v43 + 48);
  sub_1002E58CC();
  sub_1002E5824();
  sub_1002E5824();
  sub_10000E7EC(v22);
  if (v57)
  {
    sub_1000180EC(v23, &qword_100CA71A0, &unk_100A322C0);
    sub_10000E7EC(v22 + v56);
    if (v57)
    {
      v83 = v43;
      sub_1000180EC(v22, &qword_100CA71A0, &unk_100A322C0);
      goto LABEL_13;
    }

LABEL_10:
    v58 = &qword_100CAA960;
    v59 = &qword_100A6DBD0;
    v60 = v22;
LABEL_11:
    sub_1000180EC(v60, v58, v59);
    goto LABEL_30;
  }

  sub_100095588();
  sub_10000E7EC(v22 + v56);
  if (v57)
  {
    sub_1000180EC(v23, &qword_100CA71A0, &unk_100A322C0);
    sub_100025094();
    sub_100040B64();
    goto LABEL_10;
  }

  v83 = v43;
  sub_100024084();
  sub_10003DE74();
  sub_100954420(v92, v91);
  sub_10004E40C();
  sub_100040B64();
  sub_1000180EC(v23, &qword_100CA71A0, &unk_100A322C0);
  sub_1000C8954();
  sub_100040B64();
  sub_1000180EC(v22, &qword_100CA71A0, &unk_100A322C0);
  if ((&qword_100CA71A0 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  sub_1002E5144();
  sub_100066B44();
  sub_100066B44();
  v61 = sub_1000314C8();
  sub_1003AC2A0(v61, v62);
  sub_1002E515C();
  sub_100040B64();
  sub_100014268();
  sub_100040B64();
  if ((&qword_100CA71A0 & 1) == 0)
  {
    goto LABEL_30;
  }

  v63 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_newsViewModel;
  sub_100003CD0();
  swift_beginAccess();
  sub_1000314B0(v20 + v63, v90);
  v64 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_newsViewModel;
  sub_100003CD0();
  swift_beginAccess();
  v65 = *(v86 + 48);
  sub_1000314B0(v90, v88);
  sub_1000314B0(v64 + v93, v88 + v65);
  v66 = v87;
  sub_1000038B4(v88, 1, v87);
  if (v57)
  {
    sub_1000180EC(v90, &qword_100CA7188, &qword_100A35360);
    sub_10000554C(v88 + v65);
    v67 = v89;
    if (v57)
    {
      sub_1000180EC(v88, &qword_100CA7188, &qword_100A35360);
LABEL_24:
      sub_100040D98();
      sub_100066B44();
      sub_1002E53D8();
      sub_100066B44();
      sub_100954420(v91, v64);
      sub_10004E40C();
      sub_100040B64();
      sub_1002E5638();
      if ((v66 & 1) == 0)
      {
        goto LABEL_30;
      }

      sub_100040D98();
      sub_100066B44();
      sub_100066B44();
      sub_100954420(v91, v64);
      sub_10004E40C();
      sub_100040B64();
      sub_1002E5638();
      v71 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel;
      sub_100003CD0();
      swift_beginAccess();
      sub_1000314B0(v20 + v71, v67);
      v72 = OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel;
      sub_100003CD0();
      swift_beginAccess();
      v73 = *(v83 + 48);
      sub_1002E53D8();
      sub_100095588();
      sub_1000314B0(v93 + v72, v71 + v73);
      sub_10000E7EC(v71);
      if (v57)
      {
        sub_1000180EC(v67, &qword_100CA71A0, &unk_100A322C0);
        sub_10000E7EC(v71 + v73);
        if (v57)
        {
          sub_1000180EC(v71, &qword_100CA71A0, &unk_100A322C0);
          goto LABEL_30;
        }
      }

      else
      {
        sub_100095588();
        sub_10000E7EC(v71 + v73);
        if (!v74)
        {
          sub_100024084();
          sub_1002E5808();
          v75 = sub_10008672C();
          sub_100954420(v75, v76);
          sub_10004E40C();
          sub_100040B64();
          sub_10000C90C();
          sub_1000180EC(v77, v78, v79);
          sub_100027E24();
          sub_100040B64();
          sub_10000C90C();
          sub_1000180EC(v80, v81, v82);
          goto LABEL_30;
        }

        sub_1000180EC(v67, &qword_100CA71A0, &unk_100A322C0);
        sub_100025094();
        sub_100040B64();
      }

      v58 = &qword_100CAA960;
      v59 = &qword_100A6DBD0;
      v60 = v71;
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  sub_100095588();
  sub_10000554C(v88 + v65);
  v67 = v89;
  if (v68)
  {
    sub_1000180EC(v90, &qword_100CA7188, &qword_100A35360);
    sub_1000BA470();
    sub_100040B64();
LABEL_22:
    v58 = &qword_100CAA958;
    v59 = &qword_100A5B780;
    v60 = v88;
    goto LABEL_11;
  }

  sub_1002E5114();
  sub_10003DE74();
  v66 = sub_100428860(v85, v84);
  sub_1002E512C();
  sub_100040B64();
  v64 = &qword_100A35360;
  sub_1000180EC(v90, &qword_100CA7188, &qword_100A35360);
  sub_10001BCC4();
  sub_100040B64();
  v69 = sub_1002E52D0();
  sub_1000180EC(v69, v70, &qword_100A35360);
  if (v66)
  {
    goto LABEL_24;
  }

LABEL_30:
  sub_1002E52C4();
  sub_10000536C();
}

uint64_t sub_1002DAE48()
{
  sub_100040B64();
  v1 = sub_1000039EC(OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_summaryPlatterViewModel);
  sub_1000180EC(v1, v2, &unk_100A322C0);
  sub_1002E5330();
  sub_1000180EC(v0 + OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_newsViewModel, &qword_100CA7188, &qword_100A35360);
  sub_100040B64();
  sub_10016515C(OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_aboutAverageTemperaturePlatterViewModel);
  sub_100040B64();
  v3 = sub_1000039EC(OBJC_IVAR____TtCV7Weather34TemperatureAveragesDetailViewModel8_Storage_historicalFactsPlatterViewModel);
  sub_1000180EC(v3, v4, &unk_100A322C0);
  return v0;
}

uint64_t sub_1002DAF48(uint64_t (*a1)(void))
{
  a1();
  sub_1002E4D48();

  return swift_deallocClassInstance();
}

void sub_1002DAFC8(uint64_t a1)
{
  type metadata accessor for TemperatureAveragesHeroChartViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1002D5E34(319, &qword_100CAA068, type metadata accessor for ConditionDetailPlatterViewModel);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MonthlyAveragesChartModel(319);
      if (v3 <= 0x3F)
      {
        sub_1002D5E34(319, &qword_100CAA070, type metadata accessor for DetailComponentContainerViewModel);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ConditionDetailPlatterViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1002DB360()
{
  sub_10000C778();
  v3 = v2;
  sub_100017580();
  v4 = type metadata accessor for Elevation();
  sub_1000037C4();
  __chkstk_darwin(v5);
  sub_1000281F0();
  __chkstk_darwin(v6);
  sub_10000E70C();
  sub_1000038CC();
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v8);
  sub_10000E70C();
  v9 = sub_10022C350(&qword_100CAAAE0, &qword_100A35410);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_100031BFC();
  __chkstk_darwin(v11);
  sub_10000E70C();
  v55 = v12;
  if (v0 != v3 && (sub_1002E5670(), v14))
  {
    v54 = v13;
    v15 = 0;
    sub_1002E539C();
    sub_100011430();
    sub_1002E4DA4();
    while (v1)
    {
      sub_100165168();
LABEL_12:
      v19 = sub_1002E52DC();
      v20(v19);
      v21 = sub_1002E540C();
      v22(v21);
      v23 = sub_10022C350(&qword_100CAAAE8, &qword_100A35418);
      v24 = *(v23 + 48);
      v25 = sub_10002FDB4();
      v26(v25);
      (*(v0 + 32))(v54 + v24, v1, v4);
      sub_10000E7B0();
      sub_10001B350(v27, v28, v29, v23);
      v1 = v56;
LABEL_13:
      sub_100051BBC();
      v30 = sub_10000C8E8();
      v32 = sub_10022C350(v30, v31);
      sub_1000BAEAC(v32);
      if (v14)
      {
        goto LABEL_20;
      }

      v33 = sub_100073CB4();
      v34(v33);
      v35 = sub_1002E5570();
      v36(v35);
      sub_100237FB4();
      v0 = v37;
      v39 = v38;
      v40 = sub_100020E44();
      v41(v40);
      if ((v39 & 1) == 0)
      {
        sub_10003E21C();
        v50 = sub_100014268();
        v51(v50);
        goto LABEL_20;
      }

      v42 = sub_1002E5368();
      v43(v42);
      sub_1000E1628(&qword_100CAAAF0, 255, &type metadata accessor for Elevation, &protocol conformance descriptor for Elevation);
      sub_1000370B0();
      dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = sub_100033FE0();
      v39(v44);
      v45 = sub_100014268();
      v39(v45);
      v4 = &qword_100A35418;
      if ((&qword_100A35418 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v0 = v55;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v52)
      {
        sub_10022C350(&qword_100CAAAE8, &qword_100A35418);
        sub_100003934();
        sub_10001B350(v46, v47, v48, v49);
        v1 = 0;
        goto LABEL_13;
      }

      ++v15;
      if (*(v53 + 8 * v16))
      {
        sub_10003B93C();
        v56 = v17;
        v15 = v18;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    sub_10000536C();
  }
}

void sub_1002DB758()
{
  sub_100020DF0();
  if (v3 != v4 && (sub_1000131F4(), v20))
  {
    v5 = 0;
    sub_1002E4F88();
    sub_100030378();
    sub_1002E589C();
    v7 = v6 >> 6;
    while (v2)
    {
      sub_1002E4CD8();
LABEL_12:
      v12 = v8 | (v5 << 6);
      v13 = *(*(v0 + 48) + 8 * v12);
      v14 = (*(v0 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
      v17 = sub_100238064(v13);
      if (v18)
      {
        v19 = (*(v1 + 56) + 16 * v17);
        v20 = *v19 == v15 && v19[1] == v16;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v5 >= v7)
      {
        goto LABEL_18;
      }

      ++v9;
      if (*(v0 + 64 + 8 * v5))
      {
        sub_1000C825C();
        v2 = v11 & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1000212EC();
  }
}

void sub_1002DB840()
{
  sub_10000C778();
  v2 = v1;
  sub_100017580();
  v71 = type metadata accessor for Date();
  sub_1000037C4();
  v67 = v3;
  __chkstk_darwin(v4);
  sub_100003848();
  v68 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_1002E4BCC(v7, v8, v9, v10, v11, v12, v13, v14, v62);
  v15 = sub_10022C350(&qword_100CAAAD0, &qword_100A35400);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100031BFC();
  __chkstk_darwin(v17);
  sub_1000B9E30();
  if (v0 != v2 && (sub_1002E5670(), v54))
  {
    v66 = v18;
    v19 = 0;
    v64 = v0;
    sub_1002E539C();
    sub_100069460();
    v22 = v21 >> 6;
    v63 = v0;
    v69 = v23;
    while (v20)
    {
      sub_100074730();
      v70 = v24;
      v26 = v25 | (v19 << 6);
LABEL_11:
      (*(v67 + 16))(v65, *(v64 + 48) + *(v67 + 72) * v26, v71);
      v31 = (*(v64 + 56) + 16 * v26);
      v33 = *v31;
      v32 = v31[1];
      v34 = sub_1000E17C0();
      v36 = sub_10022C350(v34, v35);
      v37 = (v69 + *(v36 + 48));
      (*(v67 + 32))();
      *v37 = v33;
      v37[1] = v32;
      sub_10000E7B0();
      sub_10001B350(v38, v39, v40, v36);

LABEL_12:
      sub_100051BBC();
      v41 = sub_1000E17C0();
      v43 = sub_10022C350(v41, v42);
      sub_10000C814(v66);
      if (v54)
      {
        goto LABEL_24;
      }

      v44 = (v66 + *(v43 + 48));
      v45 = sub_100014268();
      v46(v45);
      v47 = *v44;
      v48 = v44[1];
      sub_100237FB4();
      v50 = v49;
      v52 = v51;
      (*(v67 + 8))(v68, v71);
      if ((v52 & 1) == 0)
      {

        goto LABEL_24;
      }

      v53 = (*(v2 + 56) + 16 * v50);
      v54 = *v53 == v47 && v53[1] == v48;
      if (v54)
      {

        v20 = v70;
      }

      else
      {
        v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = v70;
        if ((v55 & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v22)
      {
        v56 = sub_1000E17C0();
        sub_10022C350(v56, v57);
        sub_100003934();
        sub_10001B350(v58, v59, v60, v61);
        v70 = 0;
        goto LABEL_12;
      }

      ++v19;
      if (*(v63 + 8 * v27))
      {
        sub_10003B93C();
        v70 = v28;
        v26 = v30 | (v29 << 6);
        v19 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    sub_10000536C();
  }
}

void sub_1002DBBC4()
{
  sub_10000C778();
  if (v2 != v3 && (sub_1000131F4(), v4))
  {
    v5 = 0;
    sub_1002E4F88();
    sub_100030378();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      sub_1000E17AC();
LABEL_12:
      v15 = *(*(v0 + 56) + (v11 | (v5 << 6)));

      v16 = sub_10000C918();
      v17 = sub_1002380B0(v16);
      v19 = v18;

      if ((v19 & 1) == 0 || v15 != *(*(v1 + 56) + v17))
      {
        goto LABEL_14;
      }
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_14;
      }

      ++v12;
      if (*(v0 + 64 + 8 * v5))
      {
        sub_1000C825C();
        v8 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    sub_10000536C();
  }
}

void sub_1002DBCBC()
{
  sub_10000C778();
  sub_1002E562C();
  v63 = type metadata accessor for Locale();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  sub_1000426CC();
  v8 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003CB4();
  v61 = sub_10022C350(&qword_100CAA9F8, &qword_100A35390);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v62 = v11;
  v12 = sub_1000038CC();
  type metadata accessor for WeatherData(v12);
  sub_1000037C4();
  v67 = v13;
  __chkstk_darwin(v14);
  sub_100003C38();
  sub_100053394();
  __chkstk_darwin(v15);
  sub_10004396C();
  __chkstk_darwin(v16);
  sub_10000E70C();
  v17 = sub_10022C350(&qword_100CAAA00, &qword_100A35398);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_100020E28();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v65 = v20;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_35:
    sub_10000536C();
  }

  else
  {
    v21 = 0;
    v60 = v1 + 64;
    sub_100069460();
    v24 = v23 >> 6;
    v58 = (v6 + 8);
    v25 = v64;
    v59 = v23 >> 6;
    while (v22)
    {
      sub_100074730();
      v66 = v26;
LABEL_11:
      sub_1002E5390();
      v33 = *v31;
      v32 = v31[1];
      sub_1002E5890(v67);
      sub_100031250();
      sub_100066B44();
      v34 = sub_10022C350(&qword_100CAAA08, &qword_100A353A0);
      *v3 = v33;
      v3[1] = v32;
      sub_10003BCE0();
      sub_10003DE74();
      sub_10000E7B0();
      sub_1002E5980(v35, v36, v37, v34);
      v27 = v65;
LABEL_12:
      sub_100051BBC();
      v38 = sub_10022C350(&qword_100CAAA08, &qword_100A353A0);
      sub_1000038B4(v27, 1, v38);
      if (v42)
      {
        goto LABEL_35;
      }

      v39 = v3;
      sub_10003BCE0();
      sub_10003DE74();
      sub_100031B34();
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_100031250();
      sub_100066B44();
      v42 = *v4 == *v25 && v4[1] == v25[1];
      if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100040B64();
        sub_1000314C8();
        sub_100040B64();
        v22 = v66;
      }

      else
      {
        v43 = *(v61 + 48);
        sub_100095588();
        sub_100095588();
        sub_1000038B4(v62, 1, v63);
        if (v42)
        {
          sub_100005404(v62 + v43);
          v44 = v62;
          if (!v42)
          {
            goto LABEL_32;
          }

          sub_1000180EC(v62, &qword_100CAA9F0, qword_100A44F50);
          v25 = v64;
        }

        else
        {
          sub_100095588();
          sub_100005404(v62 + v43);
          if (v49)
          {
            sub_10003E21C();
            v57(v2, v63);
            v44 = v62;
LABEL_32:
            sub_1000180EC(v44, &qword_100CAA9F8, &qword_100A35390);
LABEL_33:
            sub_100040B64();
LABEL_34:
            sub_100040B64();
            goto LABEL_35;
          }

          v50 = sub_1002E58D8();
          v51(v50);
          sub_1000E1628(&qword_100CAAA10, 255, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
          sub_10000C924();
          v52 = dispatch thunk of static Equatable.== infix(_:_:)();
          v53 = *v58;
          v54 = sub_1000BA488();
          v53(v54);
          v55 = sub_1000E17C0();
          v53(v55);
          sub_1000180EC(v62, &qword_100CAA9F0, qword_100A44F50);
          v25 = v64;
          if ((v52 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        v56 = static WeatherDataModel.== infix(_:_:)();
        sub_100040B64();
        sub_100003A80();
        sub_100040B64();
        v3 = v39;
        v22 = v66;
        v24 = v59;
        if ((v56 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    v27 = v65;
    while (1)
    {
      v28 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        sub_10022C350(&qword_100CAAA08, &qword_100A353A0);
        sub_100003934();
        sub_10001B350(v45, v46, v47, v48);
        v66 = 0;
        goto LABEL_12;
      }

      ++v21;
      if (*(v60 + 8 * v28))
      {
        sub_10003B93C();
        v66 = v29;
        v21 = v30;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1002DC374()
{
  sub_10000C778();
  v4 = v3;
  v6 = v5;
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v7);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = v75 - v9;
  v81 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v82 = v12;
  v13 = sub_1000038CC();
  v80 = type metadata accessor for CalendarMoonPhaseData(v13);
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000281F0();
  __chkstk_darwin(v17);
  sub_100020104();
  __chkstk_darwin(v18);
  sub_10000E70C();
  v79 = v19;
  sub_1000038CC();
  v20 = type metadata accessor for Date();
  sub_1000037C4();
  v83 = v21;
  __chkstk_darwin(v22);
  sub_100003848();
  v84 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v89 = v25;
  v26 = sub_10022C350(&qword_100CAA850, &qword_100A35318);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100031BFC();
  __chkstk_darwin(v28);
  sub_10004E424();
  if (v6 != v4 && *(v6 + 16) == *(v4 + 16))
  {
    v77 = v4;
    v78 = v29;
    v92 = v15;
    v75[2] = v10;
    v30 = 0;
    v76 = v6;
    sub_1002E539C();
    v75[1] = v6;
    sub_100069460();
    v75[0] = v32 >> 6;
    v75[3] = v83 + 16;
    v93 = (v83 + 32);
    v94 = v2;
    v87 = v0;
    v88 = (v83 + 8);
    v90 = v1;
    while (1)
    {
      while (1)
      {
        if (!v31)
        {
          v36 = v78;
          v37 = v75[0];
          while (!__OFADD__(v30, 1))
          {
            if (v30 + 1 >= v37)
            {
              sub_10022C350(&qword_100CAA858, &qword_100A35320);
              sub_100003934();
              sub_10001B350(v70, v71, v72, v73);
              v91 = 0;
              goto LABEL_12;
            }

            sub_1002E570C();
            if (v38)
            {
              sub_10003B93C();
              v91 = v39;
              v35 = v41 | (v40 << 6);
              v30 = v40;
              goto LABEL_11;
            }
          }

          __break(1u);
          return;
        }

        sub_100074730();
        v91 = v33;
        v35 = v34 | (v30 << 6);
        v36 = v78;
LABEL_11:
        v42 = v83;
        v43 = v89;
        (*(v83 + 16))(v89, *(v76 + 48) + *(v83 + 72) * v35, v20);
        sub_1002E52AC();
        sub_100066B44();
        v44 = sub_10022C350(&qword_100CAA858, &qword_100A35320);
        (*(v42 + 32))(v36, v43, v20);
        sub_1002E527C();
        sub_10003DE74();
        sub_10000E7B0();
        sub_10001B350(v45, v46, v47, v44);
        v1 = v90;
LABEL_12:
        sub_100051BBC();
        v48 = sub_10022C350(&qword_100CAA858, &qword_100A35320);
        sub_1000038B4(v1, 1, v48);
        if (v49)
        {
          v50 = 1;
        }

        else
        {
          v50 = 0;
        }

        if (v49)
        {
          goto LABEL_37;
        }

        v86 = v50;
        v51 = *v93;
        (*v93)(v84, v1, v20);
        sub_1002E527C();
        sub_10003DE74();
        sub_100237FB4();
        v53 = v52;
        v54 = *v88;
        v55 = sub_1002E58CC();
        v54(v55);
        if ((v53 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_1002E52AC();
        sub_100066B44();
        v56 = MoonPhase.rawValue.getter();
        v58 = v57;
        if (v56 == MoonPhase.rawValue.getter() && v58 == v59)
        {
        }

        else
        {
          v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v61 & 1) == 0)
          {
            sub_100040B64();
LABEL_34:
            sub_100040B64();
            goto LABEL_37;
          }
        }

        v85 = v54;
        v62 = *(v81 + 48);
        v63 = v82;
        sub_100095588();
        sub_1002E4E08();
        sub_100095588();
        sub_10000554C(v63);
        if (!v49)
        {
          break;
        }

        sub_100040B64();
        sub_100021CEC();
        sub_100040B64();
        sub_10000554C(v63 + v62);
        if (!v49)
        {
          goto LABEL_36;
        }

        sub_1000180EC(v63, &unk_100CB2CF0, &unk_100A2D7F0);
        v1 = v90;
        v31 = v91;
      }

      sub_1002E4E08();
      sub_100095588();
      sub_10000554C(v63 + v62);
      if (v64)
      {
        break;
      }

      v51(v89, v63 + v62, v20);
      sub_1000426B4();
      sub_1000E1628(&qword_100CA39D0, 255, v65, &protocol conformance descriptor for Date);
      v66 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = sub_1002E4CC0();
      v68 = v85;
      v85(v67);
      sub_100040B64();
      sub_100040B64();
      v69 = sub_10002C598();
      v68(v69);
      sub_1000180EC(v63, &unk_100CB2CF0, &unk_100A2D7F0);
      v1 = v90;
      v31 = v91;
      if ((v66 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_100040B64();
    sub_100040B64();
    v74 = sub_1002E4CC0();
    v85(v74);
LABEL_36:
    sub_1000180EC(v63, qword_100CA4F80, &unk_100A580C0);
  }

LABEL_37:
  sub_10000536C();
}
uint64_t sub_1000B2BEC(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  sub_10000DA94(&qword_1002DA9E8, type metadata accessor for TSDataSyncDatasetGroupConfig, aQ_31);
  v9 = Set.init(minimumCapacity:)();
  v16 = v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1000B30A8(v11, v5);
      sub_1000EA5DC(v8, v5);
      sub_1000B310C(v8, type metadata accessor for TSDataSyncDatasetGroupConfig);
      v11 += v12;
      --v10;
    }

    while (v10);

    return v16;
  }

  else
  {
    v13 = v9;
  }

  return v13;
}

uint64_t sub_1000B2D90(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
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

    sub_1000EAA70(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000B2EA4()
{
  result = qword_1002DB2F8;
  if (!qword_1002DB2F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002DB2F8);
  }

  return result;
}

unint64_t sub_1000B2EE8()
{
  result = qword_1002DB320;
  if (!qword_1002DB320)
  {
    result = swift_getWitnessTable(a1_18, &_s11amsd_ErrorsON_0, v0, v1);
    atomic_store(result, &qword_1002DB320);
  }

  return result;
}

unint64_t sub_1000B2F3C()
{
  result = qword_1002DB328;
  if (!qword_1002DB328)
  {
    result = swift_getWitnessTable(asc_10022FB4C, &type metadata for TSDataSyncConfigServer, v0, v1);
    atomic_store(result, &qword_1002DB328);
  }

  return result;
}

unint64_t sub_1000B2F90()
{
  result = qword_1002DB330;
  if (!qword_1002DB330)
  {
    result = swift_getWitnessTable(byte_100231D90, &type metadata for TSDataSyncDatasetGroupConfigIdentifier, v0, v1);
    atomic_store(result, &qword_1002DB330);
  }

  return result;
}

unint64_t sub_1000B2FE4()
{
  result = qword_1002DB338;
  if (!qword_1002DB338)
  {
    result = swift_getWitnessTable(byte_100232710, &type metadata for TSDataSyncDeviceState.Errors, v0, v1);
    atomic_store(result, &qword_1002DB338);
  }

  return result;
}

uint64_t sub_1000B3038(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DB308, &qword_100231BA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B30A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B310C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B3164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B3274(uint64_t a1)
{
  sub_1000A1E28(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1000B3634(319, &qword_1002DA9F0, &type metadata for String, &type metadata accessor for Optional);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1000A1F0C(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        v8 = type metadata accessor for Date();
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_1000B3414(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_1000B3634(319, &unk_1002DB3C8, &type metadata for TSDataSyncDeviceMetricsFields, &type metadata accessor for Optional);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1000B3414(uint64_t a1)
{
  if (!qword_1002DB3B8)
  {
    sub_10009A468(&qword_1002DB3C0, &qword_100231C08);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1002DB3B8);
    }
  }
}

__n128 sub_1000B3478(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B348C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B34E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1000B357C(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1000B3634(319, &unk_1002DB498, &type metadata for TSDataSyncDatasetConfig, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B3634(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_1000B3684(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000B36A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1000B36E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000B38E4()
{
  v0 = sub_100005BE8();
  sub_10000C5E8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B39A0()
{
  v0 = sub_100005BE8();
  sub_10000C5E8(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B3A48(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_100005BE8();
  v4 = a2(a1);
  sub_10000A1CC(v4, v5);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3A98(char a1)
{
  sub_100005BE8();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B3AF0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_100005BE8();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B3B38(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v4 = 0xD000000000000013;
    }
  }

  else
  {
    v4 = 0x72656D75736E6F63;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3BF4(uint64_t a1)
{
  sub_1000BB0CC(a1);
  sub_10000DE78();
  sub_1000050AC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3C5C(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x64695F72657375;
    }

    else
    {
      v4 = 0x695F746E65696C63;
    }
  }

  else
  {
    v4 = 1684632420;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3CE8(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 1701080931;
  }

  else
  {
    v4 = 0x64695F666572;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3D4C(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 0x645F6769666E6F63;
  }

  else
  {
    v4 = 1635018093;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3DF8(uint64_t a1)
{
  sub_1000BB0CC(a1);
  sub_10000DE78();
  sub_1000050AC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B3E60(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 1635018093;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3ECC(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 0x746E65746E6F63;
  }

  else
  {
    v4 = 0x745F64726F636572;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B3F5C(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B400C(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 0x745F64726F636572;
  }

  else
  {
    v4 = 0x746E65746E6F63;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B4084(uint64_t a1)
{
  v1 = sub_1000BB0CC(a1);
  sub_1000050AC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4100(uint64_t a1)
{
  sub_1000BB0CC(a1);
  sub_10000DE78();
  sub_1000050AC(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000B4180(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_10000C5E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B41CC(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  sub_10000C5E8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000B429C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a3(v6, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4318(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000B435C(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 0x6C616E6F73726570;
  }

  else
  {
    v4 = 0x79616C506F747561;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B4438(uint64_t a1)
{
  v2 = sub_1000BB0CC(a1);
  if (v1)
  {
    v4 = 0x6C72755F61746164;
  }

  else
  {
    v4 = 0x63617073656D616ELL;
  }

  sub_10000BC50(v2, v4, v3);

  return Hasher._finalize()();
}

Swift::Int sub_1000B44C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  v5 = a3(a2);
  sub_10000A1CC(v5, v6);

  return Hasher._finalize()();
}

uint64_t sub_1000B4518(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736769666E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100272550 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x8000000100272570 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000100272590 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000017 && 0x8000000100272610 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001002725B0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001002725D0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001FLL && 0x8000000100272630 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x72657474696ALL && a2 == 0xE600000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x8000000100272650 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000015 && 0x8000000100272670 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x8000000100272690 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x467363697274656DLL && a2 == 0xED000073646C6569)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
  }
}

unint64_t sub_1000B49A0(char a1)
{
  result = 0x736769666E6F63;
  switch(a1)
  {
    case 1:
    case 11:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x4274736575716572;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0x72657474696ALL;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x467363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000B4B58(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Date();
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10000306C();
  v145 = v10 - v9;
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v11 - 8);
  sub_10000308C();
  v140 = v12 - v13;
  sub_100005238();
  __chkstk_darwin(v14);
  sub_100002DD0();
  v142 = v15;
  sub_100005238();
  __chkstk_darwin(v16);
  sub_100002DD0();
  v144 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  v20 = &v135 - v19;
  __chkstk_darwin(v21);
  v23 = &v135 - v22;
  v146 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v24);
  sub_10000308C();
  v141 = v25 - v26;
  sub_100005238();
  __chkstk_darwin(v27);
  sub_100002DD0();
  v143 = v28;
  sub_100005238();
  __chkstk_darwin(v29);
  v31 = &v135 - v30;
  __chkstk_darwin(v32);
  sub_100002DF4();
  __chkstk_darwin(v33);
  v35 = &v135 - v34;
  sub_1000B95B4(*a1, *a2);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

  v37 = a1[2];
  v38 = a2[2];
  if (v37)
  {
    if (!v38)
    {
      return 0;
    }

    v39 = a1[1] == a2[1] && v37 == v38;
    if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v38)
  {
    return 0;
  }

  v137 = v7;
  type metadata accessor for TSDataSyncDeviceState(0);
  v138 = v5;
  v139 = a2;
  sub_1000BB13C();
  v135 = a1;
  v136 = v40;
  sub_1000B9E6C();
  v41 = v138;
  sub_1000B9E6C();
  sub_100007AFC(v35);
  if (v39)
  {
    sub_100007AFC(a2 + v35);
    if (v39)
    {
      sub_100004E24(v35, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_22;
    }

LABEL_19:
    v44 = &qword_1002DACF0;
    v45 = &qword_100232140;
    v46 = v35;
LABEL_20:
    sub_100004E24(v46, v44, v45);
    return 0;
  }

  sub_1000B9E6C();
  sub_100007AFC(a2 + v35);
  if (v42)
  {
    sub_10000F3B4();
    v43(v23, v41);
    goto LABEL_19;
  }

  v47 = v137;
  (*(v137 + 32))(v145, a2 + v35, v41);
  sub_100004A14();
  sub_1000B8EA0(v48, v49, &protocol conformance descriptor for Date);
  v50 = v41;
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = *(v47 + 8);
  v52(v145, v50);
  v52(v23, v50);
  sub_100004E24(v35, &qword_1002DA970, &qword_1002318B0);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v54 = v135;
  v53 = v136;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v55 = v53[8];
  sub_1000BB13C();
  sub_100010D4C(v54 + v55, v2);
  v56 = v139 + v55;
  v57 = v139;
  sub_100010D4C(v56, v53 + v2);
  sub_10000A7B8(v2);
  if (v39)
  {
    sub_100007AFC(v53 + v2);
    if (v39)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  sub_1000B9E6C();
  sub_100007AFC(v53 + v2);
  if (v58)
  {
    sub_10000F3B4();
    v59(v20, &qword_1002318B0);
LABEL_31:
    v44 = &qword_1002DACF0;
    v45 = &qword_100232140;
    v46 = v2;
    goto LABEL_20;
  }

  v60 = v137;
  v61 = sub_1000BB0BC();
  v62(v61);
  sub_100004A14();
  v65 = sub_1000B8EA0(v63, v64, &protocol conformance descriptor for Date);
  v68 = sub_1000BB0E4(v20, v66, v67, v65);
  v69 = *(v60 + 8);
  v53 = (v60 + 8);
  v70 = v57;
  v57 = v139;
  v69(v70, &qword_1002318B0);
  v69(v20, &qword_1002318B0);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v71 = v136[9];
  sub_1000BB13C();
  sub_100010D4C(v54 + v71, v31);
  sub_100010D4C(v57 + v71, v53 + v31);
  if (sub_100004DFC(v31, 1, &qword_1002318B0) == 1)
  {
    sub_100007AFC(v53 + v31);
    if (!v39)
    {
      goto LABEL_40;
    }

    sub_100004E24(v31, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    v72 = v144;
    sub_1000B9E6C();
    sub_100007AFC(v53 + v31);
    if (v39)
    {
      sub_10000F3B4();
      v73(v72, &qword_1002318B0);
LABEL_40:
      v44 = &qword_1002DACF0;
      v45 = &qword_100232140;
      v46 = v31;
      goto LABEL_20;
    }

    sub_10000DB3C();
    v74 = sub_1000BB0BC();
    v75(v74);
    sub_100004A14();
    v78 = sub_1000B8EA0(v76, v77, &protocol conformance descriptor for Date);
    sub_1000BB0E4(v72, v79, v80, v78);
    v81 = sub_1000BB148();
    qword_1002318B0(v81, v71);
    qword_1002318B0(v72, v71);
    sub_100004E24(v31, &qword_1002DA970, &qword_1002318B0);
    if ((&qword_1002DA970 & 1) == 0)
    {
      return 0;
    }
  }

  v82 = v136;
  if (*(v54 + v136[10]) != *(v57 + v136[10]))
  {
    return 0;
  }

  sub_1000BB11C(v136[11]);
  if (!v39)
  {
    return 0;
  }

  if (*(v54 + v82[12]) != *(v57 + v82[12]))
  {
    return 0;
  }

  sub_1000BB11C(v82[13]);
  if (!v39)
  {
    return 0;
  }

  sub_1000BB11C(v82[14]);
  if (!v39)
  {
    return 0;
  }

  v83 = v82[15];
  sub_1000BB13C();
  v84 = v57;
  v85 = v143;
  sub_100010D4C(v54 + v83, v143);
  v86 = v84;
  sub_100010D4C(v84 + v83, v53 + v85);
  sub_10000A7B8(v85);
  if (v39)
  {
    sub_100007AFC(v53 + v85);
    if (v39)
    {
      sub_100004E24(v85, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_60;
    }

LABEL_58:
    v44 = &qword_1002DACF0;
    v45 = &qword_100232140;
    v46 = v85;
    goto LABEL_20;
  }

  v87 = v142;
  sub_1000B9E6C();
  sub_100007AFC(v53 + v85);
  if (v88)
  {
    sub_10000F3B4();
    v89(v87, &qword_1002318B0);
    goto LABEL_58;
  }

  sub_10000DB3C();
  v90 = sub_1000BB0BC();
  v91(v90);
  sub_100004A14();
  v94 = sub_1000B8EA0(v92, v93, &protocol conformance descriptor for Date);
  sub_1000BB0E4(v87, v95, v96, v94);
  v97 = sub_1000BB148();
  qword_1002318B0(v97, v83);
  qword_1002318B0(v87, v83);
  sub_100004E24(v143, &qword_1002DA970, &qword_1002318B0);
  if ((&qword_1002DA970 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v98 = v82[16];
  sub_1000BB13C();
  v99 = v54 + v98;
  v100 = v141;
  sub_100010D4C(v99, v141);
  sub_100010D4C(v86 + v98, v53 + v100);
  sub_10000A7B8(v100);
  if (v39)
  {
    sub_100007AFC(v53 + v100);
    if (v39)
    {
      sub_100004E24(v100, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_70;
    }

LABEL_68:
    v44 = &qword_1002DACF0;
    v45 = &qword_100232140;
    v46 = v100;
    goto LABEL_20;
  }

  v101 = v140;
  sub_1000B9E6C();
  sub_100007AFC(v53 + v100);
  if (v102)
  {
    sub_10000F3B4();
    v103(v101, &qword_1002318B0);
    goto LABEL_68;
  }

  sub_10000DB3C();
  v104 = sub_1000BB0BC();
  v105(v104);
  sub_100004A14();
  v108 = sub_1000B8EA0(v106, v107, &protocol conformance descriptor for Date);
  v111 = sub_1000BB0E4(v101, v109, v110, v108);
  v112 = *(v98 + 8);
  v112(v85, &qword_1002318B0);
  v112(v101, &qword_1002318B0);
  sub_100004E24(v100, &qword_1002DA970, &qword_1002318B0);
  if ((v111 & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  v113 = v136[17];
  v114 = *(v139 + v113);
  if (*(v135 + v113))
  {
    if (!v114)
    {
      return 0;
    }

    sub_1001139C4();
    v116 = v115;

    if ((v116 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v114)
  {
    return 0;
  }

  v118 = v136[18];
  v119 = (v135 + v118);
  v120 = *(v135 + v118 + 16);
  v161[0] = *(v135 + v118);
  v161[1] = v120;
  v121 = *(v135 + v118 + 16);
  v122 = *(v135 + v118 + 48);
  v162 = *(v135 + v118 + 32);
  v163 = v122;
  v123 = (v139 + v118);
  v124 = v123[1];
  v164[0] = *v123;
  v164[1] = v124;
  v125 = v123[3];
  v164[2] = v123[2];
  v164[3] = v125;
  v126 = v161[0];
  v158 = v121;
  v159 = v162;
  v160 = v119[3];
  if (*(&v161[0] + 1) == 1)
  {
    if (*(&v164[0] + 1) == 1)
    {
      *&v152[0] = *&v161[0];
      *(&v152[0] + 1) = 1;
      sub_100008A50(v119);
      sub_1000BB100();
      sub_1000BB100();
      sub_100004E24(v152, &qword_1002DB2E0, &unk_10023F030);
      return 1;
    }

LABEL_80:
    v152[0] = v161[0];
    sub_100008A50(v119);
    v153 = v128;
    v154 = v127;
    v130 = v129[2];
    v155 = v129[1];
    v156 = v130;
    v157 = v129[3];
    sub_1000BB100();
    sub_1000BB100();
    v44 = &unk_1002DB540;
    v45 = &unk_100232148;
    v46 = v152;
    goto LABEL_20;
  }

  if (*(&v164[0] + 1) == 1)
  {
    goto LABEL_80;
  }

  v147 = v164[0];
  v131 = v123[2];
  v148 = v123[1];
  v149 = v131;
  v150 = v123[3];
  v152[2] = v131;
  v152[3] = v150;
  v152[0] = v164[0];
  v152[1] = v148;
  v132 = v119[1];
  v133 = v119[2];
  *(&v164[7] + 8) = v119[3];
  *(&v164[6] + 8) = v133;
  *(&v164[5] + 8) = v132;
  *(&v164[4] + 8) = v161[0];
  v134 = sub_1000B66FC();
  sub_100010D4C(v161, v151);
  sub_100010D4C(v164, v151);
  sub_100004E24(&v147, &qword_1002DB2E0, &unk_10023F030);
  v151[0] = v126;
  v151[1] = v158;
  v151[2] = v159;
  v151[3] = v160;
  sub_100004E24(v151, &qword_1002DB2E0, &unk_10023F030);
  return v134;
}

void sub_1000B5760()
{
  sub_100004868();
  v2 = sub_100099DF4(&qword_1002DB520, &unk_100232130);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  sub_100002810();
  v8 = sub_1000B9AFC();
  sub_10000A484(&type metadata for TSDataSyncDeviceState.CodingKeys, v9, v8);
  *&v25 = *v0;
  LOBYTE(v21) = 0;
  sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
  sub_1000B9C90(&qword_1002DACD8, &qword_1002DACE0, byte_100231EB0, &protocol conformance descriptor for <> Set<A>);
  sub_100003B2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v1)
  {
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    LOBYTE(v25) = 1;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = type metadata accessor for TSDataSyncDeviceState(0);
    LOBYTE(v25) = 2;
    type metadata accessor for Date();
    sub_100004A14();
    sub_1000B8EA0(v11, v12, &protocol conformance descriptor for Date);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000065B8(v10[7]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000065B8(v10[8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000065B8(v10[9]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v25) = 6;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 7;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 8;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 9;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v25) = 10;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000065B8(v10[15]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000065B8(v10[16]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = 13;
    sub_100099DF4(&qword_1002DB3C0, &qword_100231C08);
    sub_1000B9D2C();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v0 + v10[18]);
    v14 = v13[1];
    v25 = *v13;
    v26 = v14;
    v15 = v13[3];
    v17 = *v13;
    v16 = v13[1];
    v27 = v13[2];
    v28 = v15;
    v21 = v17;
    v22 = v16;
    v18 = v13[3];
    v23 = v13[2];
    v24 = v18;
    v20 = 14;
    sub_1000B9E6C();
    sub_1000B9E18();
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19[0] = v21;
    v19[1] = v22;
    v19[2] = v23;
    v19[3] = v24;
    sub_100004E24(v19, &qword_1002DB2E0, &unk_10023F030);
    (*(v4 + 8))(v7, v2);
  }

  sub_100005074();
}

void sub_1000B5BC0()
{
  sub_100004868();
  v3 = v2;
  v62 = v4;
  type metadata accessor for Date();
  sub_100003724();
  v67 = v6;
  v68 = v5;
  __chkstk_darwin(v5);
  sub_10000306C();
  v70 = v8 - v7;
  v9 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v9 - 8);
  sub_10000308C();
  v63 = v10 - v11;
  sub_100005238();
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  __chkstk_darwin(v15);
  v17 = &v60 - v16;
  __chkstk_darwin(v18);
  sub_100002DF4();
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  v66 = sub_100099DF4(&qword_1002DB4F8, &unk_100232120);
  sub_100003724();
  v64 = v22;
  sub_100003774();
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  v71 = type metadata accessor for TSDataSyncDeviceState(0);
  sub_10000307C();
  __chkstk_darwin(v26);
  sub_10000306C();
  v72 = (v28 - v27);
  v29 = v3[3];
  v69 = v3;
  sub_10000C4FC(v3, v29);
  sub_1000B9AFC();
  v65 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    v31 = 0;
    LODWORD(v42) = 0;
    v32 = 0;
    v33 = 0;
    v70 = v0;
    sub_100004118(v69);
    v34 = v72;
    v36 = 0;
    v37 = 0;
    v47 = 0;
  }

  else
  {
    v30 = v70;
    v61 = v14;
    sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
    sub_1000B9C90(&qword_1002DACB8, &qword_1002DACC0, byte_100231ED8, &protocol conformance descriptor for <> Set<A>);
    sub_100002990();
    v31 = v66;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v72;
    *v72 = v73;
    sub_10000B9BC(1);
    *(v38 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v38 + 2) = v39;
    LOBYTE(v73) = 2;
    sub_100004A14();
    sub_1000B8EA0(v40, v41, &protocol conformance descriptor for Date);
    v42 = v68;
    sub_10000B334();
    v60 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v21, &v38[v71[6]]);
    sub_100013DB8(3);
    sub_10000B334();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v67 + 32))(&v38[v71[7]], v30, v42);
    sub_100013DB8(4);
    sub_10000B334();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v1, &v38[v71[8]]);
    sub_100013DB8(5);
    sub_10000B334();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v17, &v38[v71[9]]);
    sub_10000B9BC(6);
    *&v38[v71[10]] = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000B9BC(7);
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v72[v71[11]] = v44;
    sub_10000B9BC(8);
    *&v72[v71[12]] = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000B9BC(9);
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v72[v71[13]] = v45;
    sub_10000AF40(10);
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v72[v71[14]] = v46;
    sub_100013DB8(11);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = 1;
    v70 = 0;
    sub_1000A99D8(v61, &v72[v71[15]]);
    sub_100013DB8(12);
    v48 = v70;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v70 = v48;
    if (v48)
    {
      v49 = sub_1000BB12C();
      v50(v49);
      v37 = 0;
      v36 = 0;
    }

    else
    {
      sub_1000A99D8(v63, &v72[v71[16]]);
      sub_100099DF4(&qword_1002DB3C0, &qword_100231C08);
      sub_1000B9B50();
      sub_100002990();
      v51 = v70;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v70 = v51;
      if (v51)
      {
        v52 = sub_1000BB12C();
        v53(v52);
        v36 = 0;
        v37 = 1;
      }

      else
      {
        *&v72[v71[17]] = v73;
        sub_1000B9C3C();
        v54 = v70;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v55 = (v64 + 8);
        v70 = v54;
        if (!v54)
        {
          (*v55)(v65, v66);
          v56 = v72;
          v57 = &v72[v71[18]];
          v58 = v74;
          *v57 = v73;
          *(v57 + 1) = v58;
          v59 = v76;
          *(v57 + 2) = v75;
          *(v57 + 3) = v59;
          sub_1000B9EC8();
          sub_100004118(v69);
          sub_1000B9F24(v56, type metadata accessor for TSDataSyncDeviceState);
          goto LABEL_21;
        }

        (*v55)(v65, v66);
        v37 = 1;
        v36 = 1;
      }
    }

    sub_100004118(v69);
    sub_10000EDC8();
    v32 = 1;
    v33 = 1;
    v34 = v72;

    if (v17)
    {

      if ((v31 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  if (!v31)
  {
LABEL_6:
    v35 = v71;
    if (v42)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v35 = v71;
  sub_100004E24(&v34[v71[6]], &qword_1002DA970, &qword_1002318B0);
  if (v42)
  {
LABEL_7:
    (*(v67 + 8))(&v34[v35[7]], v68);
    if ((v32 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v32)
  {
LABEL_8:
    if (v33)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  sub_100004E24(&v34[v35[8]], &qword_1002DA970, &qword_1002318B0);
  if (v33)
  {
LABEL_9:
    sub_100004E24(&v34[v35[9]], &qword_1002DA970, &qword_1002318B0);
    if ((v47 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  if (!v47)
  {
LABEL_10:
    if (v37)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  sub_100004E24(&v34[v35[15]], &qword_1002DA970, &qword_1002318B0);
  if (v37)
  {
LABEL_11:
    sub_100004E24(&v34[v35[16]], &qword_1002DA970, &qword_1002318B0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (v36)
  {
LABEL_20:
  }

LABEL_21:
  sub_100005074();
}

uint64_t sub_1000B64E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001002725F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x646F43726F727265 && a2 == 0xE900000000000065;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6F44726F727265 && a2 == 0xEB000000006E6961;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746544726F727265 && a2 == 0xEC000000736C6961)
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

unint64_t sub_1000B6660(char a1)
{
  result = 0x646F43726F727265;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6D6F44726F727265;
      break;
    case 3:
      result = 0x746544726F727265;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

BOOL sub_1000B66FC()
{
  sub_100002FBC();
  v3 = *(v2 + 8);
  v4 = *(v0 + 8);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *v1 == *v0 && v3 == v4;
    if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(v0 + 24);
  if (*(v1 + 24))
  {
    if (!*(v0 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(v1 + 16) != *(v0 + 16))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(v1 + 40);
  v8 = *(v0 + 40);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v1 + 32) == *(v0 + 32) && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v1 + 56);
  v11 = *(v0 + 56);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = *(v1 + 48) == *(v0 + 48) && v10 == v11;
    return v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v11;
}

void sub_1000B67F4()
{
  sub_10000508C();
  sub_100099DF4(&qword_1002DB558, &qword_100232158);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000B9F7C();
  sub_10000A484(&type metadata for TSDataSyncDeviceMetricsFields.CodingKeys, v3, v2);
  sub_100003B48();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000048A0();
}

void sub_1000B6948()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DB548, &qword_100232150);
  sub_100003724();
  v7 = v6;
  sub_100003774();
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_10000C4FC(v2, v2[3]);
  sub_1000B9F7C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    sub_10000D484();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    sub_10000AF40(1);
    sub_10000D484();
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v14 & 1;
    sub_10000AF40(2);
    sub_10000D484();
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v15;
    sub_10000D484();
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = *(v7 + 8);
    v25 = v16;
    v19 = v18;
    v17(v10, v5);
    v29[0] = v11;
    v29[1] = v13;
    v20 = v26;
    v29[2] = v27;
    v30 = v40;
    v21 = v28;
    v31 = v26;
    v32 = v28;
    *&v33 = v25;
    *(&v33 + 1) = v19;
    sub_1000B9FD0(v29, v34);
    sub_100004118(v2);
    v34[0] = v11;
    v34[1] = v13;
    v34[2] = v27;
    v35 = v40;
    v36 = v20;
    v37 = v21;
    v38 = v25;
    v39 = v19;
    sub_1000B2E50(v34);
    v22 = sub_1000BB160();
    v23 = v33;
    *(v4 + 32) = v22;
    *(v4 + 48) = v23;
  }

  sub_100005074();
}

uint64_t sub_1000B6BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B4518(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B6BF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B4998();
  *a1 = result;
  return result;
}

uint64_t sub_1000B6C20(uint64_t a1)
{
  v2 = sub_1000B9AFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6C5C(uint64_t a1)
{
  v2 = sub_1000B9AFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B6CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B64E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B6CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B6658();
  *a1 = result;
  return result;
}

uint64_t sub_1000B6D24(uint64_t a1)
{
  v2 = sub_1000B9F7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B6D60(uint64_t a1)
{
  v2 = sub_1000B9F7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B6D9C@<D0>(_OWORD *a1@<X8>)
{
  sub_1000B6948();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

BOOL sub_1000B6DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1000B6E50(uint64_t a1)
{
  v2 = sub_1000BAB40();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000B6E8C(uint64_t a1)
{
  v2 = sub_1000BAB40();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000B6EE4(uint64_t a1)
{
  v2 = sub_1000BB008();

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_1000B6F20(uint64_t a1)
{
  v2 = sub_1000BB008();

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000B6F5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656372756F536469 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F446469 && a2 == 0xE800000000000000)
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

uint64_t sub_1000B7084(char a1)
{
  if (!a1)
  {
    return 0x63617073656D616ELL;
  }

  if (a1 == 1)
  {
    return 0x656372756F536469;
  }

  return 0x6E69616D6F446469;
}

uint64_t sub_1000B70E0(uint64_t a1)
{
  v4 = sub_10000B7D8(a1) == *v1 && v3 == *(v1 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100152BEC(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000B716C()
{
  sub_10000508C();
  sub_100099DF4(&qword_1002DB600, &qword_100232190);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000BA388();
  sub_10000A484(&type metadata for TSDataSyncDatasetGroupConfigIdentifier.CodingKeys, v3, v2);
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000BA430();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000048A0();
}

uint64_t sub_1000B72B8(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000B7360()
{
  sub_100005BE8();
  sub_1000B72B8(v1);
  return Hasher._finalize()();
}

void sub_1000B7398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, unsigned __int8 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = sub_100099DF4(&qword_1002DB5E8, &qword_100232188);
  sub_100003724();
  v33 = v32;
  sub_100003774();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  sub_10000C4FC(v28, v28[3]);
  sub_1000BA388();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100004118(v28);
  }

  else
  {
    a14 = 0;
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v38;
    a12 = 1;
    sub_1000BA3DC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    a10 = a13;
    a11 = 2;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v36;
    v43 = v42;
    (*(v33 + 8))(v41, v31);
    sub_100004118(v28);
    *v30 = v37;
    *(v30 + 8) = v39;
    *(v30 + 16) = a10;
    *(v30 + 24) = v40;
    *(v30 + 32) = v43;
  }

  sub_100005074();
}

uint64_t sub_1000B75A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4C525561746164 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x80000001002726B0 == a2)
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

uint64_t sub_1000B76C4(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x4C525561746164;
  }

  return 0xD000000000000015;
}

uint64_t sub_1000B7724(uint64_t a1)
{
  v3 = sub_10000B7D8(a1);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = v3 == *v1 && v4 == *(v1 + 8);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152BEC(v5, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v6 == v9 && v7 == v10;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100143328();
}

void sub_1000B7818()
{
  sub_10000508C();
  sub_100099DF4(&qword_1002DB598, &qword_100232170);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000BA008();
  sub_10000A484(&type metadata for TSDataSyncDatasetGroupConfig.CodingKeys, v3, v2);
  sub_1000BA104();
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for TSDataSyncDatasetGroupConfig(0);
    type metadata accessor for URL();
    sub_100007EF4();
    sub_1000B8EA0(v4, v5, &protocol conformance descriptor for URL);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100099DF4(&qword_1002DB580, &qword_100232168);
    sub_1000BA158(&qword_1002DB5B0, sub_1000BA1D0, &protocol conformance descriptor for <A> [A]);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = sub_10000EF58();
  v7(v6);
  sub_1000048A0();
}

void sub_1000B7A24(uint64_t a1)
{
  sub_1000B72B8(a1);
  v3 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  type metadata accessor for URL();
  sub_100007EF4();
  sub_1000B8EA0(v4, v5, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v6 = *(v1 + *(v3 + 24));

  sub_10011404C(a1, v6);
}

Swift::Int sub_1000B7AE8()
{
  sub_100005BE8();
  v1 = v0[1];
  v7 = *v0;
  v8 = v1;
  v9 = *(v0 + 4);
  sub_1000B72B8(v6);
  v2 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  type metadata accessor for URL();
  sub_100007EF4();
  sub_1000B8EA0(v3, v4, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  sub_10011404C(v6, *(v0 + *(v2 + 24)));
  return Hasher._finalize()();
}

void sub_1000B7BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v25 = v24;
  v26 = type metadata accessor for URL();
  sub_100003724();
  v42 = v27;
  __chkstk_darwin(v28);
  sub_10000306C();
  v31 = v30 - v29;
  sub_100099DF4(&qword_1002DB560, &qword_100232160);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v32);
  v33 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  sub_10000307C();
  __chkstk_darwin(v34);
  sub_10000306C();
  v37 = v36 - v35;
  sub_10000C4FC(v25, v25[3]);
  sub_1000BA008();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100004118(v25);
  }

  else
  {
    sub_1000BA05C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v37 = v43;
    *(v37 + 8) = v44;
    *(v37 + 16) = v45;
    *(v37 + 24) = v46;
    *(v37 + 32) = v47;
    LOBYTE(v43) = 1;
    sub_100007EF4();
    sub_1000B8EA0(v38, v39, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v42 + 32))(v37 + *(v33 + 20), v31, v26);
    sub_100099DF4(&qword_1002DB580, &qword_100232168);
    sub_1000BA158(&qword_1002DB588, sub_1000BA0B0, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = sub_100008D54();
    v41(v40);
    *(v37 + *(v33 + 24)) = v43;
    sub_1000B9EC8();
    sub_100004118(0);
    sub_1000B9F24(v37, type metadata accessor for TSDataSyncDatasetGroupConfig);
  }

  sub_100005074();
}

uint64_t sub_1000B7F88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E74657361746164 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65646F4D636E7973 && a2 == 0xE800000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x656C756465686373 && a2 == 0xED00004354557349)
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

Swift::Int sub_1000B813C(unsigned __int8 a1)
{
  sub_100005BE8();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000B817C(char a1)
{
  result = 0x4E74657361746164;
  switch(a1)
  {
    case 1:
      result = 0x797469726F697270;
      break;
    case 2:
      result = 0x65646F4D636E7973;
      break;
    case 3:
    case 4:
      result = 0x656C756465686373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B821C(uint64_t a1)
{
  v4 = sub_10000B7D8(a1) == *v1 && v3 == *(v1 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v5 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v6 = *(v1 + 32);
  v7 = sub_1000B9204(*(v2 + 32));
  v9 = v8;
  if (v7 == sub_1000B9204(v6) && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
LABEL_24:
      v14 = 0;
      return v14 & 1;
    }
  }

  v13 = *(v2 + 40) == *(v1 + 40) && *(v2 + 48) == *(v1 + 48);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  v14 = *(v2 + 56) ^ *(v1 + 56) ^ 1;
  return v14 & 1;
}

void sub_1000B8334()
{
  sub_10000508C();
  sub_100099DF4(&qword_1002DB5D8, &qword_100232180);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v1);
  sub_100002810();
  v2 = sub_1000BA224();
  sub_10000A484(&type metadata for TSDataSyncDatasetConfig.CodingKeys, v3, v2);
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000BA334();
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v4 = sub_10000EF58();
  v5(v4);
  sub_1000048A0();
}

void sub_1000B84C4(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  sub_1000B9204(*(v1 + 32));
  String.hash(into:)();

  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 56) & 1);
}

Swift::Int sub_1000B8544()
{
  sub_100005BE8();
  String.hash(into:)();
  String.hash(into:)();
  v1 = sub_1000B9204(*(v0 + 32));
  sub_10000A1CC(v1, v2);

  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 56) & 1);
  return Hasher._finalize()();
}

void sub_1000B85BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100004868();
  v26 = v25;
  v28 = v27;
  sub_100099DF4(&qword_1002DB5C0, &qword_100232178);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v29);
  sub_10000C4FC(v26, v26[3]);
  sub_1000BA224();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_100004118(v26);
  }

  else
  {
    LOBYTE(v46[0]) = 0;
    sub_1000BB0AC();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v42 = v31;
    sub_10000AF40(1);
    sub_1000BB0AC();
    v32 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v33;
    v39 = v32;
    LOBYTE(v43[0]) = 2;
    sub_1000BA278();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10000AF40(3);
    sub_1000BB0AC();
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    v40 = v34;
    sub_1000BB0AC();
    v35 = KeyedDecodingContainer.decode(_:forKey:)();
    v36 = sub_100005270();
    v37(v36);
    v43[0] = v30;
    v43[1] = v42;
    v43[2] = v39;
    v43[3] = v41;
    v44 = 0;
    *v45 = v38;
    *&v45[8] = v40;
    v45[16] = v35 & 1;
    sub_1000BA2CC(v43, v46);
    sub_100004118(v26);
    v46[0] = v30;
    v46[1] = v42;
    v46[2] = v39;
    v46[3] = v41;
    v47 = 0;
    v48 = v38;
    v49 = v40;
    v50 = v35 & 1;
    sub_1000BA304(v46);
    *(v28 + 32) = sub_1000BB160();
    *(v28 + 41) = *&v45[1];
  }

  sub_100005074();
}

unint64_t sub_1000B8894(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3560, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000B88E0(char a1)
{
  if (!a1)
  {
    return 1684632420;
  }

  if (a1 == 1)
  {
    return 0x444972657375;
  }

  return 0x4449746E65696C63;
}

uint64_t sub_1000B8950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B6F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B707C();
  *a1 = result;
  return result;
}

uint64_t sub_1000B89A0(uint64_t a1)
{
  v2 = sub_1000BA388();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B89DC(uint64_t a1)
{
  v2 = sub_1000BA388();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000B8A20(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000B72B8(v2);
  return Hasher._finalize()();
}

unint64_t sub_1000B8AC4()
{
  result = qword_1002DB4D0;
  if (!qword_1002DB4D0)
  {
    result = swift_getWitnessTable(byte_100231D18, &type metadata for TSDataSyncDatasetGroupConfigIdentifier, v0, v1);
    atomic_store(result, &qword_1002DB4D0);
  }

  return result;
}

uint64_t sub_1000B8B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B75A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8B48(uint64_t a1)
{
  v2 = sub_1000BA008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8B84(uint64_t a1)
{
  v2 = sub_1000BA008();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000B8BC8(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000B7A24(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1000B8C38(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1000B8C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B7F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B8134();
  *a1 = result;
  return result;
}

uint64_t sub_1000B8CDC(uint64_t a1)
{
  v2 = sub_1000BA224();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8D18(uint64_t a1)
{
  v2 = sub_1000BA224();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000B8D5C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000B84C4(v2);
  return Hasher._finalize()();
}

double sub_1000B8D98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_1000B85BC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, *v15, *&v15[2], v15[4], v15[5], v16, v18, v19, v21, v22, v23, v24, v25, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v17;
    a9[2] = *v20;
    result = *&v20[9];
    *(a9 + 41) = *&v20[9];
  }

  return result;
}

unint64_t sub_1000B8E04()
{
  result = qword_1002DB4D8;
  if (!qword_1002DB4D8)
  {
    result = swift_getWitnessTable(a1_15, &type metadata for TSDataSyncDatasetConfig, v0, v1);
    atomic_store(result, &qword_1002DB4D8);
  }

  return result;
}

uint64_t sub_1000B8EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1000B8EF4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B8894(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B8F24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B88E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B901C()
{
  result = qword_1002DB4E8;
  if (!qword_1002DB4E8)
  {
    result = swift_getWitnessTable(asc_1002320F8, &type metadata for TSDataSyncConfigDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DB4E8);
  }

  return result;
}

unint64_t sub_1000B9070()
{
  result = qword_1002DB4F0;
  if (!qword_1002DB4F0)
  {
    result = swift_getWitnessTable(asc_1002320C0, &type metadata for TSDataSyncConfigDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DB4F0);
  }

  return result;
}

uint64_t sub_1000B90C4()
{
  v0 = String.lowercased()();
  v1 = v0._countAndFlagsBits == 1684632420 && v0._object == 0xE400000000000000;
  if (v1 || (sub_100004EE8(1684632420, 0xE400000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v3 = v0._countAndFlagsBits == 0x646972657375 && v0._object == 0xE600000000000000;
    if (v3 || (sub_100004EE8(0x646972657375, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (v0._countAndFlagsBits == 0x6469746E65696C63 && v0._object == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v5 = sub_100004EE8(0x6469746E65696C63, 0xE800000000000000);

      if (v5)
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

unint64_t sub_1000B91B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B35C8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000B9204(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
    case 4:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B9300@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B91B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000B9330@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B9204(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B940C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
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
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1000B95B4(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  sub_100003724();
  __chkstk_darwin(v4);
  sub_10000308C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_100002DD0();
  v57 = v9;
  sub_100005238();
  __chkstk_darwin(v10);
  v13 = &v48 - v12;
  if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v14 = 0;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v64 = a2 + 56;
  v54 = a1 + 56;
  v53 = v19;
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    v48 = (v18 - 1) & v18;
LABEL_13:
    v49 = v14;
    v52 = a1;
    v51 = v11;
    v63 = *(v11 + 72);
    sub_1000044EC();
    sub_1000B9EC8();
    v50 = v13;
    v22 = v57;
    sub_1000B3164(v13, v57);
    Hasher.init(_seed:)();
    v23 = *(v22 + 16);
    v66 = *v22;
    v67 = v23;
    v68 = *(v22 + 32);
    sub_1000B72B8(v65);
    v24 = v59;
    v25 = *(v59 + 20);
    type metadata accessor for URL();
    sub_100007EF4();
    sub_1000B8EA0(&qword_1002DAC98, v26, &protocol conformance descriptor for URL);
    v56 = v25;
    dispatch thunk of Hashable.hash(into:)();
    v55 = *(v22 + *(v24 + 24));
    sub_10011404C(v65, v55);
    v27 = Hasher._finalize()();
    v28 = -1 << *(a2 + 32);
    v29 = v27 & ~v28;
    if (((*(v64 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_57:
      sub_1000BB094();
      sub_1000B9F24(v57, v47);
      return;
    }

    v62 = ~v28;
    v30 = v67;
    v31 = v66;
    v60 = v68;
    v61 = *(&v67 + 1);
    v58 = v67;
    while (1)
    {
      sub_1000044EC();
      sub_1000B9EC8();
      v32 = *(v7 + 16);
      v33 = *(v7 + 24);
      v34 = *(v7 + 32);
      v35 = *v7 == v31 && *(v7 + 8) == *(&v31 + 1);
      if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_52;
      }

      v36 = a2;
      v37 = 0x4449746E65696C63;
      if (v32 == 1)
      {
        v37 = 0x444972657375;
      }

      v38 = 0xE600000000000000;
      if (v32 != 1)
      {
        v38 = 0xE800000000000000;
      }

      v39 = v32 ? v37 : 1684632420;
      v40 = v32 ? v38 : 0xE400000000000000;
      if (v30)
      {
        v41 = v30 == 1 ? 0x444972657375 : 0x4449746E65696C63;
        v42 = v30 == 1 ? 0xE600000000000000 : 0xE800000000000000;
      }

      else
      {
        v42 = 0xE400000000000000;
        v41 = 1684632420;
      }

      if (v39 == v41 && v40 == v42)
      {
        break;
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v36;
      v30 = v58;
      if (v44)
      {
        goto LABEL_45;
      }

LABEL_52:
      sub_1000BB094();
      sub_1000B9F24(v7, v46);
      v29 = (v29 + 1) & v62;
      if (((*(v64 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    a2 = v36;
    v30 = v58;
LABEL_45:
    v45 = v33 == v61 && v34 == v60;
    if (!v45 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0 || (sub_100143328() & 1) == 0)
    {
      goto LABEL_52;
    }

    sub_1000B9F24(v7, type metadata accessor for TSDataSyncDatasetGroupConfig);
    sub_1000B9F24(v57, type metadata accessor for TSDataSyncDatasetGroupConfig);
    a1 = v52;
    v11 = v51;
    v13 = v50;
    v14 = v49;
    v15 = v54;
    v19 = v53;
    v18 = v48;
  }

  while (v48);
LABEL_8:
  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return;
    }

    v21 = *(v15 + 8 * v14);
    ++v20;
    if (v21)
    {
      v48 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_1000B9AFC()
{
  result = qword_1002DB500;
  if (!qword_1002DB500)
  {
    result = swift_getWitnessTable(aA_20, &type metadata for TSDataSyncDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB500);
  }

  return result;
}

unint64_t sub_1000B9B50()
{
  result = qword_1002DB508;
  if (!qword_1002DB508)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002DB3C0, &qword_100231C08);
    v4[0] = sub_1000B8EA0(&qword_1002DB510, &type metadata accessor for AccountIdentity, &protocol conformance descriptor for AccountIdentity);
    v4[1] = sub_1000B8EA0(&qword_1002DACC8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1002DB508);
  }

  return result;
}

unint64_t sub_1000B9C3C()
{
  result = qword_1002DB518;
  if (!qword_1002DB518)
  {
    result = swift_getWitnessTable(aY_16, &type metadata for TSDataSyncDeviceMetricsFields, v0, v1);
    atomic_store(result, &qword_1002DB518);
  }

  return result;
}

uint64_t sub_1000B9C90(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10009A468(&qword_1002DACB0, &qword_10022FB98);
    v10 = sub_1000B8EA0(a2, type metadata accessor for TSDataSyncDatasetGroupConfig, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B9D2C()
{
  result = qword_1002DB528;
  if (!qword_1002DB528)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002DB3C0, &qword_100231C08);
    v4[0] = sub_1000B8EA0(&qword_1002DB530, &type metadata accessor for AccountIdentity, &protocol conformance descriptor for AccountIdentity);
    v4[1] = sub_1000B8EA0(&qword_1002DACE8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1002DB528);
  }

  return result;
}

unint64_t sub_1000B9E18()
{
  result = qword_1002DB538;
  if (!qword_1002DB538)
  {
    result = swift_getWitnessTable(aQ_19, &type metadata for TSDataSyncDeviceMetricsFields, v0, v1);
    atomic_store(result, &qword_1002DB538);
  }

  return result;
}

uint64_t sub_1000B9E6C()
{
  sub_100002FBC();
  sub_100099DF4(v2, v3);
  sub_10000307C();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000B9EC8()
{
  sub_100002FBC();
  v2(0);
  sub_10000307C();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000B9F24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000B9F7C()
{
  result = qword_1002DB550;
  if (!qword_1002DB550)
  {
    result = swift_getWitnessTable(byte_100232890, &type metadata for TSDataSyncDeviceMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB550);
  }

  return result;
}

unint64_t sub_1000BA008()
{
  result = qword_1002DB568;
  if (!qword_1002DB568)
  {
    result = swift_getWitnessTable(byte_100232840, &type metadata for TSDataSyncDatasetGroupConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB568);
  }

  return result;
}

unint64_t sub_1000BA05C()
{
  result = qword_1002DB570;
  if (!qword_1002DB570)
  {
    result = swift_getWitnessTable(aA_22, &type metadata for TSDataSyncDatasetGroupConfigIdentifier, v0, v1);
    atomic_store(result, &qword_1002DB570);
  }

  return result;
}

unint64_t sub_1000BA0B0()
{
  result = qword_1002DB590;
  if (!qword_1002DB590)
  {
    result = swift_getWitnessTable(byte_100231E20, &type metadata for TSDataSyncDatasetConfig, v0, v1);
    atomic_store(result, &qword_1002DB590);
  }

  return result;
}

unint64_t sub_1000BA104()
{
  result = qword_1002DB5A0;
  if (!qword_1002DB5A0)
  {
    result = swift_getWitnessTable(aY_18, &type metadata for TSDataSyncDatasetGroupConfigIdentifier, v0, v1);
    atomic_store(result, &qword_1002DB5A0);
  }

  return result;
}

uint64_t sub_1000BA158(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10009A468(&qword_1002DB580, &qword_100232168);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BA1D0()
{
  result = qword_1002DB5B8;
  if (!qword_1002DB5B8)
  {
    result = swift_getWitnessTable(byte_100231DF8, &type metadata for TSDataSyncDatasetConfig, v0, v1);
    atomic_store(result, &qword_1002DB5B8);
  }

  return result;
}

unint64_t sub_1000BA224()
{
  result = qword_1002DB5C8;
  if (!qword_1002DB5C8)
  {
    result = swift_getWitnessTable(a1_14, &type metadata for TSDataSyncDatasetConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB5C8);
  }

  return result;
}

unint64_t sub_1000BA278()
{
  result = qword_1002DB5D0;
  if (!qword_1002DB5D0)
  {
    result = swift_getWitnessTable(byte_1002327C8, &type metadata for TSDataSyncConfigDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DB5D0);
  }

  return result;
}

unint64_t sub_1000BA334()
{
  result = qword_1002DB5E0;
  if (!qword_1002DB5E0)
  {
    result = swift_getWitnessTable(byte_1002327A0, &type metadata for TSDataSyncConfigDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DB5E0);
  }

  return result;
}

unint64_t sub_1000BA388()
{
  result = qword_1002DB5F0;
  if (!qword_1002DB5F0)
  {
    result = swift_getWitnessTable(byte_100232750, &type metadata for TSDataSyncDatasetGroupConfigIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB5F0);
  }

  return result;
}

unint64_t sub_1000BA3DC()
{
  result = qword_1002DB5F8;
  if (!qword_1002DB5F8)
  {
    result = swift_getWitnessTable(aQ_20, &type metadata for TSDataSyncConfigDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DB5F8);
  }

  return result;
}

unint64_t sub_1000BA430()
{
  result = qword_1002DB608;
  if (!qword_1002DB608)
  {
    result = swift_getWitnessTable(aI_19, &type metadata for TSDataSyncConfigDatasetSource, v0, v1);
    atomic_store(result, &qword_1002DB608);
  }

  return result;
}

uint64_t sub_1000BA484(uint64_t a1, int a2)
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

uint64_t sub_1000BA4C4(uint64_t result, int a2, int a3)
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

_BYTE *sub_1000BA534(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TSDataSyncDeviceMetricsFields.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TSDataSyncDeviceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncDeviceState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000BA850(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000BA930()
{
  result = qword_1002DB610;
  if (!qword_1002DB610)
  {
    result = swift_getWitnessTable(byte_100232268, &type metadata for TSDataSyncConfigDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DB610);
  }

  return result;
}

unint64_t sub_1000BA988()
{
  result = qword_1002DB618;
  if (!qword_1002DB618)
  {
    result = swift_getWitnessTable(byte_100232320, &type metadata for TSDataSyncDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB618);
  }

  return result;
}

unint64_t sub_1000BA9E0()
{
  result = qword_1002DB620;
  if (!qword_1002DB620)
  {
    result = swift_getWitnessTable(asc_1002323D8, &type metadata for TSDataSyncDeviceMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB620);
  }

  return result;
}

unint64_t sub_1000BAA38()
{
  result = qword_1002DB628;
  if (!qword_1002DB628)
  {
    result = swift_getWitnessTable(aQ_21, &type metadata for TSDataSyncDatasetGroupConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB628);
  }

  return result;
}

unint64_t sub_1000BAA90()
{
  result = qword_1002DB630;
  if (!qword_1002DB630)
  {
    result = swift_getWitnessTable(byte_100232548, &type metadata for TSDataSyncDatasetConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB630);
  }

  return result;
}

unint64_t sub_1000BAAE8()
{
  result = qword_1002DB638;
  if (!qword_1002DB638)
  {
    result = swift_getWitnessTable(byte_100232600, &type metadata for TSDataSyncDatasetGroupConfigIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB638);
  }

  return result;
}

unint64_t sub_1000BAB40()
{
  result = qword_1002DB640;
  if (!qword_1002DB640)
  {
    result = swift_getWitnessTable(aY_17, &type metadata for TSDataSyncDeviceState.Errors, v0, v1);
    atomic_store(result, &qword_1002DB640);
  }

  return result;
}

unint64_t sub_1000BAB98()
{
  result = qword_1002DB648;
  if (!qword_1002DB648)
  {
    result = swift_getWitnessTable(byte_100232650, &type metadata for TSDataSyncDeviceState.Errors, v0, v1);
    atomic_store(result, &qword_1002DB648);
  }

  return result;
}

unint64_t sub_1000BABF0()
{
  result = qword_1002DB650;
  if (!qword_1002DB650)
  {
    result = swift_getWitnessTable(byte_100232628, &type metadata for TSDataSyncDeviceState.Errors, v0, v1);
    atomic_store(result, &qword_1002DB650);
  }

  return result;
}

unint64_t sub_1000BAC48()
{
  result = qword_1002DB658;
  if (!qword_1002DB658)
  {
    result = swift_getWitnessTable(aA_23, &type metadata for TSDataSyncDatasetGroupConfigIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB658);
  }

  return result;
}

unint64_t sub_1000BACA0()
{
  result = qword_1002DB660;
  if (!qword_1002DB660)
  {
    result = swift_getWitnessTable(aI_20, &type metadata for TSDataSyncDatasetGroupConfigIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB660);
  }

  return result;
}

unint64_t sub_1000BACF8()
{
  result = qword_1002DB668;
  if (!qword_1002DB668)
  {
    result = swift_getWitnessTable(byte_1002324B8, &type metadata for TSDataSyncDatasetConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB668);
  }

  return result;
}

unint64_t sub_1000BAD50()
{
  result = qword_1002DB670;
  if (!qword_1002DB670)
  {
    result = swift_getWitnessTable(byte_1002324E0, &type metadata for TSDataSyncDatasetConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB670);
  }

  return result;
}

unint64_t sub_1000BADA8()
{
  result = qword_1002DB678;
  if (!qword_1002DB678)
  {
    result = swift_getWitnessTable(byte_100232400, &type metadata for TSDataSyncDatasetGroupConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB678);
  }

  return result;
}

unint64_t sub_1000BAE00()
{
  result = qword_1002DB680;
  if (!qword_1002DB680)
  {
    result = swift_getWitnessTable(byte_100232428, &type metadata for TSDataSyncDatasetGroupConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB680);
  }

  return result;
}

unint64_t sub_1000BAE58()
{
  result = qword_1002DB688;
  if (!qword_1002DB688)
  {
    result = swift_getWitnessTable(byte_100232348, &type metadata for TSDataSyncDeviceMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB688);
  }

  return result;
}

unint64_t sub_1000BAEB0()
{
  result = qword_1002DB690;
  if (!qword_1002DB690)
  {
    result = swift_getWitnessTable(aQ_22, &type metadata for TSDataSyncDeviceMetricsFields.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB690);
  }

  return result;
}

unint64_t sub_1000BAF08()
{
  result = qword_1002DB698;
  if (!qword_1002DB698)
  {
    result = swift_getWitnessTable(aA_24, &type metadata for TSDataSyncDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB698);
  }

  return result;
}

unint64_t sub_1000BAF60()
{
  result = qword_1002DB6A0;
  if (!qword_1002DB6A0)
  {
    result = swift_getWitnessTable(asc_1002322B8, &type metadata for TSDataSyncDeviceState.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DB6A0);
  }

  return result;
}

unint64_t sub_1000BAFB4()
{
  result = qword_1002DB6A8;
  if (!qword_1002DB6A8)
  {
    result = swift_getWitnessTable(byte_1002321F0, &type metadata for TSDataSyncConfigDatasetSyncMode, v0, v1);
    atomic_store(result, &qword_1002DB6A8);
  }

  return result;
}

unint64_t sub_1000BB008()
{
  result = qword_1002DB6B0;
  if (!qword_1002DB6B0)
  {
    result = swift_getWitnessTable(aA_21, &type metadata for TSDataSyncDeviceState.Errors, v0, v1);
    atomic_store(result, &qword_1002DB6B0);
  }

  return result;
}

uint64_t sub_1000BB0CC(uint64_t a1)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_1000BB0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000BB100()
{

  return sub_1000B9E6C();
}

__n128 sub_1000BB160()
{
  v2 = *(v1 - 200);
  *v0 = *(v1 - 216);
  v0[1] = v2;
  return *(v1 - 184);
}

uint64_t sub_1000BB174@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = *(type metadata accessor for TSDataSyncConfigStoreCore(0) + 20);
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 16))(a1, v2 + v11, v12);
  sub_100007F0C();
  v13 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v14 = *(v6 + 104);
  v14(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v4);
  sub_1000BBBB0();
  sub_1000065DC();
  v15 = *(v6 + 8);
  v15(v10, v4);
  v14(v10, v13, v4);
  sub_1000065DC();
  return (v15)(v10, v4);
}

uint64_t sub_1000BB314()
{
  v2 = type metadata accessor for URL();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000306C();
  v8 = v7 - v6;
  sub_10000C4FC(v0, v0[3]);
  sub_1000BB174(v8);
  v9 = dispatch thunk of FileStore.contents(at:)();
  if (v1)
  {
    return (*(v4 + 8))(v8, v2);
  }

  v12 = v9;
  v13 = v10;
  (*(v4 + 8))(v8, v2);
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000BBC04(&qword_1002DB6C8, byte_100231FC8);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10000D170(v12, v13);
}

uint64_t sub_1000BB4C0(uint64_t a1)
{
  v2 = type metadata accessor for FileStoreProtectionType();
  sub_100003724();
  v45 = v3;
  __chkstk_darwin(v4);
  sub_10000306C();
  v7 = v6 - v5;
  type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v46 = v9;
  v47 = v8;
  __chkstk_darwin(v8);
  sub_10000306C();
  v12 = v11 - v10;
  v50 = type metadata accessor for URL();
  sub_100003724();
  v49 = v13;
  __chkstk_darwin(v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TSDataSyncDeviceState(0);
  sub_1000BBC04(&qword_1002DB6C0, byte_100231FA0);
  v20 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v22 = v21;

  if (!v1)
  {
    v43 = v20;
    v44 = v22;
    v40 = v16;
    v41 = v7;
    v39 = v2;
    v24 = v48;
    v25 = *(v48 + 3);
    v42 = *(v48 + 4);
    sub_10000C4FC(v48, v25);
    v26 = type metadata accessor for TSDataSyncConfigStoreCore(0);
    v27 = v49;
    (*(v49 + 16))(v19, &v24[*(v26 + 20)], v50);
    sub_100007F0C();
    v28 = v46;
    v29 = v47;
    (*(v46 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v47);
    sub_1000BBBB0();
    URL.append<A>(component:directoryHint:)();
    (*(v28 + 8))(v12, v29);
    dispatch thunk of FileStore.createFolder(at:createIntermediateFolders:)();
    v30 = *(v27 + 8);
    v49 = v27 + 8;
    v47 = v30;
    v30(v19, v50);
    v31 = *(v48 + 3);
    v46 = *(v48 + 4);
    v42 = sub_10000C4FC(v48, v31);
    v32 = v40;
    sub_1000BB174(v40);
    v33 = v45;
    v34 = v41;
    v35 = v39;
    (*(v45 + 104))(v41, enum case for FileStoreProtectionType.completeUntilFirstUserAuthentication(_:), v39);
    v37 = v43;
    v36 = v44;
    dispatch thunk of FileStore.createFile(at:contents:protectionType:)();
    sub_10000D170(v37, v36);
    (*(v33 + 8))(v34, v35);
    return v47(v32, v50);
  }

  return result;
}

uint64_t sub_1000BB8D0()
{
  type metadata accessor for URL.DirectoryHint();
  sub_100003724();
  v23 = v2;
  v24 = v1;
  __chkstk_darwin(v1);
  sub_10000306C();
  v22 = v4 - v3;
  v5 = type metadata accessor for URL();
  sub_100003724();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v21 - v12;
  sub_10000C4FC(v0, *(v0 + 3));
  sub_1000BB174(v13);
  v14 = v25;
  dispatch thunk of FileStore.removeItem(at:)();
  if (v14)
  {
    return (*(v7 + 8))(v13, v5);
  }

  v25 = *(v7 + 8);
  v25(v13, v5);
  v16 = *(v0 + 3);
  v21[2] = *(v0 + 4);
  v21[1] = sub_10000C4FC(v0, v16);
  v17 = type metadata accessor for TSDataSyncConfigStoreCore(0);
  (*(v7 + 16))(v10, &v0[*(v17 + 20)], v5);
  sub_100007F0C();
  v18 = v22;
  v19 = v23;
  v20 = v24;
  (*(v23 + 104))(v22, enum case for URL.DirectoryHint.inferFromPath(_:), v24);
  sub_1000BBBB0();
  URL.append<A>(component:directoryHint:)();
  (*(v19 + 8))(v18, v20);
  dispatch thunk of FileStore.removeItem(at:)();
  return (v25)(v10, v5);
}

uint64_t type metadata accessor for TSDataSyncConfigStoreCore(uint64_t a1)
{
  result = qword_1002DB728;
  if (!qword_1002DB728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000BBBB0()
{
  result = qword_1002DB6B8;
  if (!qword_1002DB6B8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1002DB6B8);
  }

  return result;
}

uint64_t sub_1000BBC04(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for TSDataSyncDeviceState(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BBC70(uint64_t a1)
{
  result = sub_1000BBCF4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000BBCF4()
{
  result = qword_1002DB738;
  if (!qword_1002DB738)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1002DB738);
  }

  return result;
}

uint64_t sub_1000BBD50(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000BBD90(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000BBDE0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v16[-v8 - 8];
  v10 = type metadata accessor for AccountDataState(0);
  sub_1000C6030(v10, qword_100310590);
  v11 = sub_1000C5FF8(v10, qword_100310590);
  sub_1000C6094(v16);
  static Date.distantPast.getter();
  sub_100002728(v9, 0, 1, v0);
  sub_100002728(v6, 1, 1, v0);
  static Date.distantPast.getter();
  sub_100002728(&v11[v10[9]], 1, 1, v0);
  sub_100002728(&v11[v10[11]], 1, 1, v0);
  v12 = v10[13];
  v13 = type metadata accessor for CachedServerDataSyncAttempt(0);
  sub_100002728(&v11[v12], 1, 1, v13);
  sub_100002728(&v11[v10[14]], 1, 1, v0);
  memcpy(v11, v16, 0x148uLL);
  sub_1000A99D8(v9, &v11[v10[5]]);
  sub_1000A99D8(v6, &v11[v10[6]]);
  result = (*(v1 + 32))(&v11[v10[7]], v3, v0);
  *&v11[v10[8]] = 3;
  *&v11[v10[10]] = 3;
  *&v11[v10[12]] = 0;
  return result;
}

void sub_1000BC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, void *a30)
{
  sub_100004868();
  v32 = v30;
  v34 = v33;
  v36 = v35;
  v104 = v37;
  v105 = v38;
  v119 = v39;
  v41 = v40;
  v107 = v42;
  v106 = v43;
  v102 = type metadata accessor for FileStoreError();
  sub_100003724();
  v99 = v44;
  __chkstk_darwin(v45);
  sub_1000030E4();
  sub_100008280(v46);
  v98 = type metadata accessor for URL();
  sub_100003724();
  v97 = v47;
  __chkstk_darwin(v48);
  sub_1000030E4();
  sub_100008280(v49);
  v103 = type metadata accessor for Log();
  sub_100003724();
  __chkstk_darwin(v50);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v51);
  sub_10000D478();
  v53 = sub_100008280(v52);
  v100 = type metadata accessor for AccountDataState(v53);
  sub_10000307C();
  __chkstk_darwin(v54);
  sub_10000306C();
  v57 = v56 - v55;
  v58 = type metadata accessor for AccountIdentity();
  sub_100003724();
  v60 = v59;
  __chkstk_darwin(v61);
  sub_10000306C();
  v64 = (v63 - v62);
  swift_defaultActor_initialize();
  v65 = sub_10000C4FC(v41, v41[3]);
  v114 = v60;
  v66 = *(v60 + 16);
  v66(v64, v65, v58);
  v95 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v115 = v58;
  v66(v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID, v64, v58);
  v67 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account;
  v116 = v41;
  sub_100007974(v41, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  v94 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics;
  sub_100007974(v119, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics);
  v68 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_store);
  *v68 = v36;
  v68[1] = v34;
  v69 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_requester);
  *v69 = v104;
  v69[1] = v105;
  v70 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_scheduler);
  *v70 = v106;
  v70[1] = v107;
  v71 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_notifier);
  *v71 = a21;
  v71[1] = a22;
  v72 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountFinder);
  *v72 = a23;
  v72[1] = a24;
  v73 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore);
  *v73 = a25;
  v73[1] = a26;
  v74 = (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_deviceInformation);
  *v74 = a27;
  v74[1] = a28;
  v111 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults;
  sub_100007974(a29, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults);
  v110 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag;
  *(v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag) = a30;
  v75 = *(v34 + 8);
  v76 = a30;
  v75(v64, v36, v34);
  if (!v31)
  {
    sub_1000084E4(v57, v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v81 = type metadata accessor for LogInterpolation();
    sub_100003B78(v81);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v118 = type metadata accessor for AccountDataAccessActor(0);
    v117[0] = v32;

    v82 = AMSLogKey();
    if (v82)
    {
      v83 = v82;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v89 = v115;
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v117);
    LogInterpolation.init(stringLiteral:)();
    v118 = v115;
    sub_100007914(v117);
    sub_1000C70AC();
    v91();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v117, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    goto LABEL_15;
  }

  v117[0] = v31;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v113 = v76;

    if (qword_1002DA590 != -1)
    {
      swift_once();
    }

    sub_1000C5FF8(v100, qword_100310590);
    sub_100007F24();
    sub_1000C6B44(v85, v32 + v84);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v86 = type metadata accessor for LogInterpolation();
    sub_100003B78(v86);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    v118 = type metadata accessor for AccountDataAccessActor(0);
    v117[0] = v32;

    v87 = AMSLogKey();
    if (v87)
    {
      v88 = v87;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000C726C();
    }

    else
    {
      sub_1000033C0();
    }

    sub_10000D40C();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v117);
    LogInterpolation.init(stringLiteral:)();
    v89 = v115;
    v118 = v115;
    sub_100007914(v117);
    sub_1000C70AC();
    v90();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v117, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

LABEL_15:
    sub_100004118(a29);
    sub_100004118(v119);
    v92 = sub_10003CD30();
    v93(v92, v103);
    (*(v114 + 8))(v64, v89);
    goto LABEL_16;
  }

  v112 = v67;
  v77 = (*(v99 + 88))(v101, v102);
  if (v77 != enum case for FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:))
  {
    (*(v99 + 8))(v101, v102);
    goto LABEL_8;
  }

  v109 = v77;

  (*(v99 + 96))(v101, v102);
  (*(v97 + 32))(v96, v101, v98);
  sub_1000C6B9C(&qword_1002DB900, &type metadata accessor for FileStoreError, &protocol conformance descriptor for FileStoreError);
  swift_allocError();
  v79 = v78;
  v108 = *(sub_100099DF4(&qword_1002DB908, &unk_100232B00) + 48);
  (*(v97 + 16))(v79, v96, v98);
  *(v79 + v108) = default argument 1 of FileStoreError.fileIsLockedAwaitingFirstDeviceUnlock(_:)();
  (*(v99 + 104))(v79, v109, v102);
  swift_willThrow();
  (*(v97 + 8))(v96, v98);
  v80 = *(v114 + 8);
  v80(v64, v115);

  v80(v32 + v95, v115);
  sub_100004118((v32 + v112));
  sub_100004118((v32 + v94));
  sub_100004118((v32 + v111));

  type metadata accessor for AccountDataAccessActor(0);
  swift_defaultActor_destroy();

  sub_100004118(a29);
  sub_100004118(v119);
  sub_1000050CC();
  swift_deallocPartialClassInstance();
LABEL_16:
  sub_100004118(v116);
  sub_100005074();
}

uint64_t sub_1000BCB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 40) = a5;
  *(v7 + 16) = a4;
  return _swift_task_switch(sub_1000BCB3C);
}

uint64_t sub_1000BCB3C()
{
  sub_100007F3C();
  sub_1000BCBCC();
  sub_100002E08();

  return v0();
}

void sub_1000BCBCC()
{
  sub_100004868();
  v100 = v1;
  v106 = v2;
  v4 = v3;
  v130 = v5;
  v6 = type metadata accessor for LogInterpolation.StringInterpolation();
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  sub_1000030E4();
  v9 = sub_100008280(v8);
  v107 = type metadata accessor for CachedServerDataSyncTaskSchedule(v9);
  sub_10000307C();
  __chkstk_darwin(v10);
  sub_1000030E4();
  sub_100008280(v11);
  v117 = type metadata accessor for Log();
  sub_100003724();
  v118 = v12;
  __chkstk_darwin(v13);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v14);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v16);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v17);
  v19 = v98 - v18;
  v20 = type metadata accessor for AccountDataState(0);
  v21 = (v20 - 8);
  __chkstk_darwin(v20);
  sub_10000306C();
  v24 = v23 - v22;
  v25 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  sub_10000307C();
  __chkstk_darwin(v26);
  sub_10000306C();
  v29 = (v28 - v27);
  v30 = v0;
  v31 = (v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  v32 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  v33 = v30;
  v119 = v30;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  sub_1000C6B44(v33 + v32, v24);
  v34 = v4[1];
  v111 = *v4;
  v112 = v34;
  v35 = v4[3];
  v114 = v4[2];
  v116 = v35;
  v113 = v4[4];
  v98[3] = v4;
  v115 = v4[5];
  v36 = sub_10000C4FC(v31, v31[3]);
  v37 = sub_10000F2C8(v36);
  v39 = v38;
  v40 = sub_10000C4FC(v31, v31[3]);
  v41 = v25[5];
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  v43 = *(v42 + 16);
  v99 = v44;
  v98[7] = v43;
  v98[6] = v42 + 16;
  v43(v29 + v41, v40);
  sub_1000C6E74(v21[7]);
  sub_1000C6E74(v21[8]);
  sub_1000C6E74(v21[11]);
  sub_1000C6E74(v21[13]);
  v45 = *(v24 + v21[14]);
  sub_1000C68A8(v24 + v21[15], v29 + v25[18], &qword_1002DB940, &qword_100232B48);
  v46 = *(v24 + v21[10]);
  sub_100004A2C();
  sub_100010478();
  *v29 = v37;
  v29[1] = v39;
  sub_100003E60();
  sub_100003E60();
  sub_100003E60();
  sub_100003E60();
  *(v29 + v25[10]) = v130;
  sub_100003E60();
  sub_100003E60();
  *(v29 + v25[17]) = v45;
  *(v29 + v25[19]) = v47;
  v115 = v19;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v48 = type metadata accessor for LogInterpolation();
  sub_100003B78(v48);
  v50 = *(v49 + 72);
  sub_1000C724C();
  v53 = v51 & ~v52;
  v109 = 3 * v50;
  v112 = v52;
  v113 = v46;
  v54 = swift_allocObject();
  v105 = xmmword_1002329D0;
  *(v54 + 16) = xmmword_1002329D0;
  v111 = type metadata accessor for AccountDataAccessActor(0);
  v124 = v111;
  v123[0] = v119;

  v55 = AMSLogKey();
  if (v55)
  {
    v56 = v55;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v123);
  LogInterpolation.init(stringLiteral:)();
  v114 = 2 * v50;
  v124 = v25;
  v116 = v50;
  v57 = sub_100007914(v123);
  sub_1000C6B44(v29, v57);
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v123, &unk_1002DFC10, &qword_10022E6D0);
  v58 = v115;
  Log.default(_:)();

  v59 = *(v118 + 8);
  v118 += 8;
  v115 = v59;
  (v59)(v58, v117);
  v60 = v110;
  sub_10013A2DC(v29, v106, v110);
  static Log.accountsDataSync.getter();
  *(sub_10000D494() + 16) = v105;
  sub_10000C5F8();
  v61 = AMSLogKey();
  if (v61)
  {
    v62 = v61;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v123);
  sub_1000041A0();
  LogInterpolation.init(stringLiteral:)();
  v124 = v107;
  v63 = sub_100007914(v123);
  sub_1000C6B44(v60, v63);
  sub_1000041A0();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v123, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  sub_100005280();
  v64();
  type metadata accessor for Date();
  sub_1000C6B9C(&qword_1002DB968, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    Date.distance(to:)();
    sub_10013AB18(v125, v65);
    v66 = v125[0];
    v108 = v125[1];
    v67 = v125[2];
    v104 = v125[3];
    v68 = v125[4];
    v103 = v125[5];
    v69 = v126;
  }

  else
  {
    v108 = 0;
    v67 = 0;
    v104 = 0;
    v68 = 0;
    v103 = 0;
    v69 = 0;
    v66 = 2;
  }

  v101 = v69;
  v102 = v67;
  static Log.accountsDataSync.getter();
  *(sub_10000D494() + 16) = xmmword_1002329F0;
  sub_10000C5F8();
  v70 = AMSLogKey();
  v98[4] = v53;
  if (v70)
  {
    v71 = v70;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v123);
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v72._countAndFlagsBits = 0x206E6F69746361;
  v72._object = 0xE700000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v72);
  v124 = &type metadata for CachedServerDataSyncScheduleAction;
  v73 = swift_allocObject();
  v123[0] = v73;
  v74 = v108;
  *(v73 + 16) = v66;
  *(v73 + 24) = v74;
  v75 = v102;
  v76 = v104;
  *(v73 + 32) = v102;
  *(v73 + 40) = v76;
  v77 = v103;
  *(v73 + 48) = v68;
  *(v73 + 56) = v77;
  v78 = v68;
  v79 = v101;
  *(v73 + 64) = v101;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v123, &unk_1002DFC10, &qword_10022E6D0);
  v80._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v80);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  sub_100005280();
  v81();
  if (v66 == 2)
  {
    static Log.accountsDataSync.getter();
    *(sub_10000D494() + 16) = v105;
    sub_10000C5F8();
    v82 = AMSLogKey();
    if (v82)
    {
      v83 = v82;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000C7334();

    sub_100004118(v123);
    sub_1000041A0();
    LogInterpolation.init(stringLiteral:)();
    v124 = v99;
    sub_100007914(v123);
    sub_1000C72AC();
    v88();
    sub_1000041A0();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v123, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    sub_100005280();
    v89();
    sub_1000BD95C();
  }

  else
  {
    v84 = v66 & 0xFF01;
    v129 = v75 & 1;
    v122 = v78 & 1;
    v121 = v79 & 1;
    static Log.accountsDataSync.getter();
    v85 = sub_10000D494();
    sub_1000C72F8(v85, xmmword_1002329E0);
    sub_10000C5F8();
    v86 = AMSLogKey();
    if (v86)
    {
      v87 = v86;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v90 = v110;
    sub_1000C7334();

    sub_100004118(v123);
    sub_1000041A0();
    LogInterpolation.init(stringLiteral:)();
    v120[3] = v99;
    sub_100007914(v120);
    v91 = v119;
    sub_1000C72AC();
    v92();
    sub_1000041A0();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v120, &unk_1002DFC10, &qword_10022E6D0);
    sub_1000041A0();
    LogInterpolation.init(stringLiteral:)();
    Log.default(_:)();

    sub_100005280();
    v93();
    v94 = *(v91 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_scheduler + 8);
    v95 = (v90 + *(v107 + 32));
    v96 = *v95;
    v97 = v95[1];
    v127[0] = v84;
    v127[1] = v108;
    v127[2] = v102 & 0xFF00 | v129;
    v127[3] = v104;
    v127[4] = v122;
    v127[5] = v103;
    v128 = v101 & 0x101FF00 | v121;
    (*(v94 + 8))(v90, v96, v97, v127);
  }

  sub_100006C84();
  sub_100010478();
  sub_100010478();
  sub_100005074();
}

void sub_1000BD95C()
{
  sub_100004868();
  v2 = v1;
  type metadata accessor for Log();
  sub_100003724();
  __chkstk_darwin(v3);
  sub_1000030E4();
  if (dispatch thunk of static DeviceInformation.deviceIsRunningInternalBuild()() & 1) != 0 && (sub_10000C4FC((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults), *(v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults + 24)), v4 = dispatch thunk of AccountDataDefaults.autoSyncDisabledForAccountData.getter(), (v4) && (v2 & 1) == 0)
  {
    v11 = v4;
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v5 = type metadata accessor for LogInterpolation();
    sub_100003B78(v5);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_100232A00;
    v13 = type metadata accessor for AccountDataAccessActor(0);
    v12[0] = v0;

    v6 = AMSLogKey();
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(v12);
    LogInterpolation.init(stringLiteral:)();
    v13 = type metadata accessor for AccountIdentity();
    sub_100007914(v12);
    sub_10000B7EC();
    (*(v8 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_1000C7074();
    LogInterpolation.init(stringLiteral:)();
    v13 = &type metadata for Bool;
    LOBYTE(v12[0]) = 1;
    static LogInterpolation.safe(_:)();
    sub_1000C7074();
    LogInterpolation.init(stringLiteral:)();
    v13 = &type metadata for Bool;
    LOBYTE(v12[0]) = v11 & 1;
    static LogInterpolation.safe(_:)();
    sub_1000C7074();
    LogInterpolation.init(stringLiteral:)();
    v13 = &type metadata for Bool;
    LOBYTE(v12[0]) = 0;
    static LogInterpolation.safe(_:)();
    sub_1000C7074();
    Log.default(_:)();

    v9 = sub_10003CD30();
    v10(v9);
  }

  else
  {
    sub_1000BDD00();
  }

  sub_100005074();
}

void sub_1000BDD00()
{
  sub_100004868();
  v245 = v1;
  v2 = v0;
  v237 = v4;
  v238 = v3;
  v236 = v5;
  v6 = sub_100099DF4(&qword_1002DB950, &qword_100232E50);
  sub_1000030B8(v6);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003018();
  v228 = v8;
  sub_100013FAC();
  type metadata accessor for MetricsEvent();
  sub_100003724();
  v218 = v10;
  v219 = v9;
  __chkstk_darwin(v9);
  sub_1000030E4();
  v217 = v11;
  v12 = sub_100013FAC();
  v215 = type metadata accessor for AccountDataServerRequest(v12);
  sub_100003724();
  v220 = v13;
  __chkstk_darwin(v14);
  sub_1000C72C0();
  v221 = v16;
  v222 = v15;
  __chkstk_darwin(v17);
  sub_10000D478();
  v227 = v18;
  v19 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v19);
  sub_100003774();
  __chkstk_darwin(v20);
  sub_100003018();
  v225 = v21;
  v22 = sub_100013FAC();
  v224 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(v22);
  sub_10000307C();
  __chkstk_darwin(v23);
  sub_1000030E4();
  v231 = v24;
  sub_100013FAC();
  v247 = type metadata accessor for Date();
  sub_100003724();
  v239 = v25;
  __chkstk_darwin(v26);
  sub_1000C72C0();
  v226 = v27;
  v216 = v28;
  __chkstk_darwin(v29);
  sub_10000D478();
  v229 = v30;
  v31 = sub_100013FAC();
  v32 = type metadata accessor for AccountDataState(v31);
  sub_10000307C();
  __chkstk_darwin(v33);
  sub_1000037D4();
  v214 = v34;
  sub_100005238();
  __chkstk_darwin(v35);
  sub_100002DD0();
  v223 = v36;
  sub_100005238();
  __chkstk_darwin(v37);
  sub_100002DD0();
  v240 = v38;
  sub_100005238();
  __chkstk_darwin(v39);
  sub_10000D478();
  v246 = v40;
  sub_100013FAC();
  v41 = type metadata accessor for LogInterpolation.StringInterpolation();
  v42 = sub_1000030B8(v41);
  __chkstk_darwin(v42);
  sub_1000030E4();
  v235 = v43;
  sub_100013FAC();
  v244 = type metadata accessor for Log();
  sub_100003724();
  v249 = v44;
  __chkstk_darwin(v45);
  sub_1000037D4();
  v213 = v46;
  sub_100005238();
  __chkstk_darwin(v47);
  sub_100002DD0();
  v230 = v48;
  sub_100005238();
  __chkstk_darwin(v49);
  sub_100002DD0();
  v241 = v50;
  sub_100005238();
  __chkstk_darwin(v51);
  sub_10000D478();
  v234 = v52;
  sub_100013FAC();
  v242 = type metadata accessor for AccountIdentity.DSID();
  sub_100003724();
  v54 = v53;
  __chkstk_darwin(v55);
  sub_10000306C();
  v58 = v57 - v56;
  v59 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v60 = sub_1000030B8(v59);
  __chkstk_darwin(v60);
  sub_1000037D4();
  v233 = v61;
  sub_100005238();
  __chkstk_darwin(v62);
  sub_100002DD0();
  v232 = v63;
  sub_100005238();
  __chkstk_darwin(v64);
  v66 = &v200 - v65;
  __chkstk_darwin(v67);
  v69 = &v200 - v68;
  v70 = v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  v255 = v32;
  v71 = *(v32 + 56);
  v243 = v70;
  sub_1000C68A8(v70 + v71, v69, &qword_1002DA970, &qword_1002318B0);
  type metadata accessor for CachedServerDataService();
  v72 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v248 = v2;
  AccountIdentity.dsid.getter();
  sub_100005DB0();
  (*(v54 + 8))(v58, v242);
  if (*(&v253 + 1))
  {
    sub_10000C4FC(&v252, *(&v253 + 1));
    sub_10009B8B0();
    sub_100004118(&v252);
  }

  else
  {
    sub_100004E24(&v252, &qword_1002DB958, &qword_100232B60);
    sub_100007B78();
    sub_100002728(v73, v74, v75, v247);
  }

  v76 = sub_100132328(v69, v66);
  sub_100004E24(v66, &qword_1002DA970, &qword_1002318B0);
  sub_100004E24(v69, &qword_1002DA970, &qword_1002318B0);
  v242 = v72;
  if (v76)
  {
    v77 = v234;
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v78 = type metadata accessor for LogInterpolation();
    sub_100003B78(v78);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329E0;
    *(&v253 + 1) = type metadata accessor for AccountDataAccessActor(0);
    *&v252 = v248;

    v79 = AMSLogKey();
    v80 = v247;
    if (v79)
    {
      v81 = v79;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v252);
    LogInterpolation.init(stringLiteral:)();
    *(&v253 + 1) = type metadata accessor for AccountIdentity();
    sub_100007914(&v252);
    sub_10000B7EC();
    (*(v92 + 16))();
    sub_1000C71BC();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(&v252, &unk_1002DFC10, &qword_10022E6D0);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v93._countAndFlagsBits = 0xD000000000000015;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v93);
    v94 = v232;
    sub_1000C68A8(v243 + v255[14], v232, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v94, 1, v80) == 1)
    {
      sub_100004E24(v94, &qword_1002DA970, &qword_1002318B0);
      v252 = 0u;
      v253 = 0u;
    }

    else
    {
      *(&v253 + 1) = v80;
      v95 = sub_100007914(&v252);
      (*(v239 + 32))(v95, v94, v80);
    }

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(&v252, &unk_1002DFC10, &qword_10022E6D0);
    v96._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v96);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    (*(v249 + 8))(v77, v244);
  }

  else
  {
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v82 = type metadata accessor for LogInterpolation();
    sub_100003B78(v82);
    sub_1000C724C();
    v85 = v83 & ~v84;
    v234 = v76;
    v235 = v86;
    v201 = 3 * v86;
    v212 = v84;
    v87 = swift_allocObject();
    v200 = xmmword_1002329D0;
    *(v87 + 16) = xmmword_1002329D0;
    v232 = v85;
    v211 = type metadata accessor for AccountDataAccessActor(0);
    *(&v253 + 1) = v211;
    v88 = v248;
    *&v252 = v248;

    v89 = AMSLogKey();
    v90 = v247;
    if (v89)
    {
      v91 = v89;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    sub_1000C71BC();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118(&v252);
    LogInterpolation.init(stringLiteral:)();
    v97 = type metadata accessor for AccountIdentity();
    *(&v253 + 1) = v97;
    sub_100007914(&v252);
    sub_10000B7EC();
    v99 = v242;
    v203 = *(v98 + 16);
    v204 = v97;
    v202 = v98 + 16;
    v203();
    sub_1000C71BC();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(&v252, &unk_1002DFC10, &qword_10022E6D0);
    v100 = v241;
    Log.default(_:)();

    v101 = *(v249 + 8);
    v249 += 8;
    v210 = v101;
    v101(v100, v244);
    sub_100007F24();
    v102 = v240;
    sub_1000C6B44(v243, v240);
    v103 = v238[1];
    v205 = *v238;
    v206 = v103;
    v104 = v238[2];
    v105 = v238[3];
    v106 = v238[5];
    v207 = v238[4];
    v208 = v104;
    v209 = v106;
    v107 = v233;
    sub_1000C68A8(v102 + v255[9], v233, &qword_1002DA970, &qword_1002318B0);
    if (sub_100004DFC(v107, 1, v90) == 1)
    {
      v241 = v105;
      sub_100004E24(v107, &qword_1002DA970, &qword_1002318B0);
      v108 = *(v102 + v255[8]);
      v109 = v246;
      if (v108 == 3)
      {
        sub_1000C7234(&v252);
        if (sub_100013900(&v252) == 1 || v254 != 1)
        {
          sub_1000C7234(v251);
          v123 = sub_10000B7F8(v255[5]);
          sub_1000C68A8(v123, v124, v125, v126);
          v127 = sub_10000B7F8(v255[6]);
          sub_1000C68A8(v127, v128, v129, v130);
          v131 = sub_1000C6F40();
          v102(v131);
          v132 = sub_1000C7090();
          v102(v132);
          sub_100010960();
          sub_1000C7128();
          v109 = v246;
          sub_100007B78();
          sub_100002728(v133, v134, v135, v136);
          v137 = sub_10000B7F8(v255[14]);
          v117 = v255;
          sub_1000C68A8(v137, v138, v139, v140);
          memcpy(v109, v251, 0x148uLL);
          *&v109[v255[8]] = 3;
          *&v109[v255[10]] = v108;
        }

        else
        {
          sub_1000C7234(v251);
          v99 = &qword_1002DA970;
          sub_1000C68A8(v102 + v255[5], &v109[v255[5]], &qword_1002DA970, &qword_1002318B0);
          sub_1000C68A8(v102 + v255[6], &v109[v255[6]], &qword_1002DA970, &qword_1002318B0);
          v110 = sub_1000C6F40();
          v102(v110);
          v111 = sub_1000C7090();
          v102(v111);
          sub_100010960();
          sub_1000C7128();
          v109 = v246;
          sub_100007B78();
          sub_100002728(v112, v113, v114, v115);
          v116 = sub_10000B7F8(v255[14]);
          v117 = v255;
          sub_1000C68A8(v116, v118, v119, v120);
          memcpy(v109, v251, 0x148uLL);
          *&v109[v255[8]] = v108;
          *&v109[v255[10]] = 3;
        }

        *&v109[v117[12]] = v99;
        sub_1000C68A8(v251, &v250, &qword_1002DB920, &qword_100238870);
        v99 = v242;
      }

      else
      {
        sub_10013168C();
      }

      v105 = v241;
    }

    else
    {
      v121 = v239;
      v122 = v229;
      (*(v239 + 32))(v229, v107, v90);
      v109 = v246;
      sub_100130B68();
      (*(v121 + 8))(v122, v90);
    }

    sub_100004A2C();
    sub_100010478();
    v141 = v245;
    sub_1000C2798(v99 + v88, v109);
    if (v141)
    {
      sub_100004A2C();
      sub_100010478();
    }

    else
    {
      v241 = v105;
      v245 = 0;
      v142 = 2 * v235;
      static Log.accountsDataSync.getter();
      v143 = sub_1000C7354();
      sub_1000C72F8(v143, v200);
      *(&v253 + 1) = v211;
      *&v252 = v88;

      v144 = AMSLogKey();
      if (v144)
      {
        v145 = v144;
        v146 = v88;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v146 = v88;
      }

      sub_1000C71BC();
      static LogInterpolation.prefix(_:_:)();

      sub_100004118(&v252);
      sub_1000C71A4();
      LogInterpolation.init(stringLiteral:)();
      *(&v253 + 1) = v255;
      sub_100007914(&v252);
      sub_1000065FC();
      sub_1000C6B44(v246, v147);
      static LogInterpolation.sensitive(_:)();
      sub_100004E24(&v252, &unk_1002DFC10, &qword_10022E6D0);
      v148 = v230;
      Log.default(_:)();

      v210(v148, v244);
      v149 = (v146 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
      v150 = v223;
      sub_1000C6B44(v243, v223);
      v151 = sub_10000C4FC(v149, v149[3]);
      v240 = sub_10000F2C8(v151);
      v233 = v152;
      v153 = sub_10000C4FC(v149, v149[3]);
      v154 = v224;
      v155 = v231;
      (v203)(v231 + *(v224 + 20), v153, v204);
      v156 = v255[5];
      v230 = v142;
      sub_1000C6E34(v156);
      sub_1000C6E34(v255[6]);
      sub_1000C6E34(v255[9]);
      sub_1000C6E34(v255[11]);
      v157 = *(v150 + v255[12]);
      sub_100002854();
      sub_1000C68A8(v158, v159, v160, v161);
      v162 = *(v150 + v255[8]);
      sub_100004A2C();
      sub_100010478();
      v163 = v233;
      *v155 = v240;
      v155[1] = v163;
      v164 = v206;
      *(v155 + v154[6]) = v205;
      *(v155 + v154[7]) = v164;
      v165 = v207;
      *(v155 + v154[8]) = v208;
      *(v155 + v154[9]) = v165;
      *(v155 + v154[10]) = v236;
      *(v155 + v154[11]) = v209;
      *(v155 + v154[12]) = v241;
      *(v155 + v154[17]) = v157;
      *(v155 + v154[19]) = v162 != 3;
      v166 = v225;
      sub_100002854();
      sub_1000C68A8(v167, v168, v169, v170);
      v171 = type metadata accessor for CachedServerDataSyncAttempt(0);
      LODWORD(v155) = sub_100004DFC(v166, 1, v171);
      sub_100004E24(v166, &qword_1002DB940, &qword_100232B48);
      if (v155 == 1)
      {
        v172 = v248;
        (*(*(v248 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_transactionStore + 8) + 8))(5);
        sub_100007F24();
        v173 = v214;
        sub_1000C6B44(v243, v214);
        v174 = *(v173 + v255[10]);
        v175 = v227;
        if (v174 == 3 || (sub_1000C7234(&v252), sub_100013900(&v252) == 1))
        {
          AccountIdentity.dsid.getter();
        }

        else
        {
          v180 = v253;
          AccountIdentity.dsid.getter();
          v181 = type metadata accessor for AccountDataServerRequest.Put(0);
          *(v175 + *(v181 + 20)) = v180;
          *(v175 + *(v181 + 24)) = v174;
        }

        swift_storeEnumTagMultiPayload();
        sub_100004A2C();
        sub_100010478();
        v182 = (v172 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics);
        v183 = v217;
        sub_100125960(v175, v236);
        sub_10000C4FC(v182, v182[3]);
        dispatch thunk of MetricsQueue.enqueue(event:)();
        (*(v218 + 8))(v183, v219);
        type metadata accessor for TaskPriority();
        sub_100007B78();
        sub_100002728(v184, v185, v186, v187);
        sub_100013DC4();
        v188 = v222;
        sub_1000C6B44(v175, v222);
        v189 = v239;
        (*(v239 + 16))(v226, v237, v247);
        sub_1000C6E1C();
        v192 = sub_1000C6B9C(v190, v191, a1_5);
        v193 = (*(v220 + 80) + 40) & ~*(v220 + 80);
        v194 = (v221 + v193 + 7) & 0xFFFFFFFFFFFFFFF8;
        v195 = (*(v189 + 80) + v194 + 48) & ~*(v189 + 80);
        v196 = swift_allocObject();
        *(v196 + 2) = v172;
        *(v196 + 3) = v192;
        *(v196 + 4) = v172;
        sub_1000084E4(v188, &v196[v193]);
        v197 = &v196[v194];
        v198 = v238;
        v199 = *(v238 + 1);
        *v197 = *v238;
        *(v197 + 1) = v199;
        *(v197 + 2) = *(v198 + 2);
        (*(v189 + 32))(&v196[v195], v226, v247);
        swift_retain_n();
        sub_10013ABD4(0, 0, v228, &unk_100232B70, v196);

        sub_100010478();
        sub_100006C84();
        sub_100010478();
      }

      else
      {
        v176 = v213;
        static Log.accountsDataSync.getter();
        v177 = sub_1000C7354();
        sub_1000C72F8(v177, xmmword_1002329F0);
        *(&v253 + 1) = v211;
        *&v252 = v248;

        v178 = AMSLogKey();
        if (v178)
        {
          v179 = v178;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_1000C726C();
        }

        else
        {
          sub_1000033C0();
        }

        sub_10000D40C();
        static LogInterpolation.prefix(_:_:)();

        sub_100004118(&v252);
        sub_1000C71A4();
        LogInterpolation.init(stringLiteral:)();
        Log.default(_:)();

        v210(v176, v244);
        sub_100006C84();
        sub_100010478();
        sub_100004A2C();
      }

      sub_100010478();
    }
  }

  sub_100005074();
}

uint64_t sub_1000BF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a4;
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_1000BF208;

  return sub_1000BF3B8();
}

uint64_t sub_1000BF208()
{
  sub_100004194();
  sub_1000030F8();
  v3 = v2;
  v4 = *v1;
  sub_100004504();
  *v5 = v4;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BF328);
  }

  else
  {
    sub_100002E08();

    return v6();
  }
}

uint64_t sub_1000BF328()
{
  sub_100004194();
  sub_1001252AC(*(v0 + 32), (*(v0 + 16) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics));
  v1 = sub_1000C6DEC();
  v2(v1);

  sub_100002E08();

  return v3();
}

uint64_t sub_1000BF3B8()
{
  sub_100007F3C();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for Date();
  v1[4] = v3;
  sub_100003B78(v3);
  v1[5] = v4;
  v1[6] = sub_100003FA8();
  v5 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  sub_1000030B8(v5);
  v1[7] = sub_100003FA8();
  swift_task_alloc();
  sub_10000DEA0();
  v1[8] = v6;
  *v6 = v7;
  v6[1] = sub_1000BF4DC;

  return sub_1000BF8F4();
}

uint64_t sub_1000BF4DC()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_1000BF5D4()
{
  sub_100004194();
  static Date.now.getter();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1000BF670;

  return sub_1000BFFF8();
}

uint64_t sub_1000BF670()
{
  sub_10000DB4C();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000BF874;
  }

  else
  {
    v5 = sub_1000BF7F4;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1000BF7F4()
{
  sub_100004194();
  sub_100004E24(*(v0 + 56), &qword_1002DB948, &unk_100232B50);

  sub_100002E08();

  return v1();
}

uint64_t sub_1000BF874()
{
  sub_100004194();
  sub_100004E24(*(v0 + 56), &qword_1002DB948, &unk_100232B50);

  sub_100002E08();

  return v1();
}

uint64_t sub_1000BF8F4()
{
  sub_100004194();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v5);
  v1[22] = sub_100003FA8();
  v6 = type metadata accessor for Log();
  v1[23] = v6;
  sub_100003B78(v6);
  v1[24] = v7;
  v1[25] = sub_1000C70D8();
  v1[26] = swift_task_alloc();
  v8 = sub_10000AA8C();

  return _swift_task_switch(v8);
}

uint64_t sub_1000BF9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = *(v14 + 168);
  static Log.accountsDataSync.getter();
  *(v14 + 216) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v16 = type metadata accessor for LogInterpolation();
  sub_100003B78(v16);
  *(v14 + 224) = *(v17 + 72);
  *(v14 + 264) = *(v18 + 80);
  sub_1000C71C8();
  *(swift_allocObject() + 16) = xmmword_1002329F0;
  v19 = type metadata accessor for AccountDataAccessActor(0);
  *(v14 + 16) = v15;
  *(v14 + 232) = v19;
  *(v14 + 40) = v19;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v22 = *(v14 + 208);
  v23 = *(v14 + 192);
  v41 = *(v14 + 184);
  v42 = *(v14 + 168);
  v24 = *(v14 + 152);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v14 + 16));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100002860();
  v25._countAndFlagsBits = 0xD000000000000011;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v25);
  *(v14 + 72) = type metadata accessor for AccountDataServerRequest(0);
  sub_100007914((v14 + 48));
  sub_100013DC4();
  sub_1000C6B44(v24, v26);
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v14 + 48, &unk_1002DFC10, &qword_10022E6D0);
  v27._countAndFlagsBits = sub_10000286C();
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v27);
  LogInterpolation.init(stringInterpolation:)();
  Log.default(_:)();

  v28 = *(v23 + 8);
  *(v14 + 240) = v28;
  *(v14 + 248) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v22, v41);
  v43 = (*(v42 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_requester + 8) + 8);
  v44 = *v43 + **v43;
  swift_task_alloc();
  sub_10000DEA0();
  *(v14 + 256) = v29;
  *v29 = v30;
  v29[1] = sub_1000BFCEC;
  sub_100003BBC();

  return v37(v31, v32, v33, v34, v35, v36, v37, v38, v41, v43, v44, a12, a13, a14);
}

uint64_t sub_1000BFCEC()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_1000BFDE4(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[21];
  static Log.accountsDataSync.getter();
  v4 = swift_allocObject();
  v1[10] = v3;
  *(v4 + 16) = xmmword_1002329D0;
  v1[13] = v2;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = v1[30];
  v7 = v1[25];
  v8 = v1[23];
  v9 = v1[18];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v1 + 10);
  LogInterpolation.init(stringLiteral:)();
  v1[17] = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v10 = sub_100007914(v1 + 14);
  sub_1000C68A8(v9, v10, &qword_1002DB948, &unk_100232B50);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24((v1 + 14), &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v13(v7, v8);

  sub_100002E08();

  return v11();
}

uint64_t sub_1000BFFF8()
{
  sub_100004194();
  v1[187] = v0;
  v1[186] = v2;
  v1[185] = v3;
  v1[184] = v4;
  v5 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v5);
  v1[188] = sub_100003FA8();
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v6);
  v1[189] = sub_1000C70D8();
  v1[190] = swift_task_alloc();
  v7 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v7);
  v1[191] = sub_1000C70D8();
  v1[192] = swift_task_alloc();
  v8 = type metadata accessor for CachedServerDataSyncTaskScheduleInput(0);
  v1[193] = v8;
  sub_1000030B8(v8);
  v1[194] = sub_100003FA8();
  v9 = type metadata accessor for Log();
  v1[195] = v9;
  sub_100003B78(v9);
  v1[196] = v10;
  v1[197] = sub_1000C70D8();
  v1[198] = swift_task_alloc();
  v1[199] = swift_task_alloc();
  v1[200] = swift_task_alloc();
  v11 = type metadata accessor for AccountDataServerResponse(0);
  v1[201] = v11;
  sub_1000030B8(v11);
  v1[202] = sub_100003FA8();
  v12 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v1[203] = v12;
  sub_1000030B8(v12);
  v1[204] = sub_100003FA8();
  v13 = type metadata accessor for AccountDataState(0);
  v1[205] = v13;
  sub_1000030B8(v13);
  v1[206] = sub_1000C70D8();
  v1[207] = swift_task_alloc();
  v1[208] = swift_task_alloc();
  v1[209] = swift_task_alloc();
  v1[210] = swift_task_alloc();
  v14 = sub_10000AA8C();

  return _swift_task_switch(v14);
}

uint64_t sub_1000C0228()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1664);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1496) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_1000C6B44(v5, v1);
  v151 = v5;
  sub_1000C6B44(v5, v2);
  sub_1000C68A8(v4, v3, &qword_1002DB948, &unk_100232B50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001301C4();

    sub_100004A2C();
  }

  else
  {
    v6 = *(v0 + 1664);
    v7 = *(v0 + 1640);
    sub_1000084E4(*(v0 + 1632), *(v0 + 1616));
    v8 = *(v6 + *(v7 + 40));
    v9 = *(v0 + 1672);
    v10 = *(v0 + 1664);
    if (v8 == 3)
    {
      v11 = *(v0 + 1640);
      v12 = *(v0 + 1616);
      v13 = *(v0 + 1608);
      v147 = v13;
      v149 = v8;
      memmove((v0 + 16), v12, 0x148uLL);
      PIScheduledRotationConfiguration.rotationInterval.getter();
      v14 = v11[5];
      v148 = v7;
      v15 = *(v13 + 20);
      v16 = type metadata accessor for Date();
      sub_10000307C();
      v18 = *(v17 + 32);
      v18(&v9[v14], &v12[v15], v16);
      sub_100002728(&v9[v14], 0, 1, v16);
      sub_100007B78();
      sub_100002728(v19, v20, v21, v16);
      v18(&v9[v11[7]], &v12[*(v147 + 28)], v16);
      LOWORD(v18) = *(v10 + v11[8]);
      sub_100007B78();
      sub_100002728(v22, v23, v24, v16);
      sub_100007B78();
      sub_100002728(v25, v26, v27, v16);
      sub_1000C68A8(v10 + v11[13], &v9[v11[13]], &qword_1002DB940, &qword_100232B48);
      sub_100004A2C();
      sub_100010478();
      sub_100007B78();
      sub_100002728(v28, v29, v30, v16);
      memcpy(v9, (v0 + 16), 0x148uLL);
      *&v9[v11[8]] = v18;
      *&v9[*(v148 + 40)] = v149;
      *&v9[v11[12]] = 0;
      goto LABEL_7;
    }

    sub_100130740();
    sub_100010478();
    sub_100004A2C();
  }

  sub_100010478();
LABEL_7:
  v31 = *(v0 + 1672);
  v32 = *(v0 + 1496);
  sub_10012540C(*(v0 + 1472), *(v0 + 1680), v31, (v32 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics), *(v0 + 1488));
  v33 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  *(v0 + 1688) = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  sub_1000C2798(v32 + v33, v31);
  v145 = v33;
  v34 = *(v0 + 1496);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v35 = type metadata accessor for LogInterpolation();
  sub_100003B78(v35);
  sub_1000C724C();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v129 = type metadata accessor for AccountDataAccessActor(0);
  *(v0 + 1024) = v129;
  *(v0 + 1000) = v34;

  v36 = AMSLogKey();
  v146 = v32;
  if (v36)
  {
    v37 = v36;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v130 = *(v0 + 1656);
  v38 = *(v0 + 1640);
  v134 = *(v0 + 1672);
  v136 = *(v0 + 1600);
  v39 = *(v0 + 1568);
  v40 = *(v0 + 1552);
  v41 = *(v0 + 1544);
  v138 = *(v0 + 1560);
  v142 = *(v0 + 1496);
  v144 = *(v0 + 1488);
  v42 = *(v0 + 1480);
  sub_100008A64();
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v0 + 1000));
  LogInterpolation.init(stringLiteral:)();
  *(v0 + 1056) = v38;
  sub_100007914((v0 + 1032));
  sub_1000065FC();
  sub_1000C6B44(v134, v43);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v0 + 1032, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v128 = *(v39 + 8);
  v128(v136, v138);
  v44 = (v142 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account);
  sub_1000C6B44(v151, v130);
  v131 = *v42;
  v132 = v42[1];
  v135 = v42[4];
  v137 = v42[2];
  v139 = v42[5];
  v143 = v42[3];
  v45 = sub_10000C4FC(v44, v44[3]);
  v46 = sub_10000F2C8(v45);
  v48 = v47;
  v49 = sub_10000C4FC(v44, v44[3]);
  v50 = v41[5];
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  v126 = *(v51 + 16);
  v127 = v52;
  (v126)(v40 + v50, v49);
  sub_1000C6E54(v38[5]);
  sub_1000C6E54(v38[6]);
  sub_1000C6E54(v38[9]);
  sub_1000C6E54(v38[11]);
  v53 = *(v130 + v38[12]);
  sub_1000C68A8(v130 + v38[13], v40 + v41[18], &qword_1002DB940, &qword_100232B48);
  v150 = v38;
  LODWORD(v49) = *(v130 + v38[8]);
  sub_100004A2C();
  sub_100010478();
  *v40 = v46;
  v40[1] = v48;
  *(v40 + v41[6]) = v131;
  *(v40 + v41[7]) = v132;
  *(v40 + v41[8]) = v137;
  *(v40 + v41[9]) = v135;
  *(v40 + v41[10]) = 8;
  *(v40 + v41[11]) = v139;
  *(v40 + v41[12]) = v143;
  *(v40 + v41[17]) = v53;
  *(v40 + v41[19]) = v49 != 3;
  v54 = sub_1000104CC(v40, v144);
  if (v54 != 11)
  {
    v58 = v54;
    v133 = v53;
    v59 = *(v0 + 1496);
    static Log.accountsDataSync.getter();
    *(swift_allocObject() + 16) = xmmword_1002329E0;
    *(v0 + 1152) = v129;
    *(v0 + 1128) = v59;

    v60 = AMSLogKey();
    if (v60)
    {
      v61 = v60;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v140 = *(v0 + 1520);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 1128));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    sub_100002860();
    v65._countAndFlagsBits = 0xD00000000000001DLL;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v65);
    *(v0 + 1184) = &type metadata for CachedServerDataSyncTrigger;
    *(v0 + 1160) = v58;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1000C7198();
    sub_100004E24(v66, v67, v68);
    v69._countAndFlagsBits = sub_10000BEA8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v69);
    LogInterpolation.init(stringInterpolation:)();
    *(v0 + 1216) = v127;
    v70 = sub_100007914((v0 + 1192));
    v126(v70, v146 + v145, v127);
    static LogInterpolation.traceableSensitive(_:)();
    sub_1000C7198();
    sub_100004E24(v71, v72, v73);
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v74._countAndFlagsBits = 0xD000000000000010;
    v74._object = 0x8000000100272BC0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v74);
    v75 = *(v151 + v38[12]);
    *(v0 + 1248) = &type metadata for UInt;
    *(v0 + 1224) = v75;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_1000C7198();
    sub_100004E24(v76, v77, v78);
    v79._countAndFlagsBits = sub_100002E14();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v79);
    sub_1000C68A8(v151 + v38[6], v140, &qword_1002DA970, &qword_1002318B0);
    v80 = type metadata accessor for Date();
    if (sub_100004DFC(v140, 1, v80) == 1)
    {
      sub_100004E24(*(v0 + 1520), &qword_1002DA970, &qword_1002318B0);
      *(v0 + 1256) = 0u;
      *(v0 + 1272) = 0u;
    }

    else
    {
      *(v0 + 1280) = v80;
      sub_100007914((v0 + 1256));
      sub_10000B7EC();
      (*(v81 + 32))();
    }

    v82 = *(v0 + 1504);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1256, &unk_1002DFC10, &qword_10022E6D0);
    v83._countAndFlagsBits = sub_1000C6F80();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v83);
    sub_1000C68A8(v151 + v38[13], v82, &qword_1002DB940, &qword_100232B48);
    v84 = type metadata accessor for CachedServerDataSyncAttempt(0);
    v85 = sub_100013DDC();
    v141 = v84;
    if (sub_100004DFC(v85, v86, v84) == 1)
    {
      sub_100004E24(*(v0 + 1504), &qword_1002DB940, &qword_100232B48);
      *(v0 + 1288) = 0u;
      *(v0 + 1304) = 0u;
    }

    else
    {
      *(v0 + 1312) = v84;
      sub_100007914((v0 + 1288));
      v87 = sub_100005C58();
      sub_1000084E4(v87, v88);
    }

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1288, &unk_1002DFC10, &qword_10022E6D0);
    v89._countAndFlagsBits = sub_1000C6EE8();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v89);
    v90 = *(v151 + v150[8]);
    if (v90 == 3)
    {
      v91 = 0;
      *(v0 + 1320) = 0;
      *(v0 + 1328) = 0;
      *(v0 + 1336) = 0;
    }

    else
    {
      *(v0 + 1320) = v90;
      v91 = &type metadata for AccountDataChange;
    }

    v92 = *(v0 + 1512);
    *(v0 + 1344) = v91;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1320, &unk_1002DFC10, &qword_10022E6D0);
    v93._countAndFlagsBits = sub_1000C6F9C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v93);
    sub_1000C68A8(v151 + v150[5], v92, &qword_1002DA970, &qword_1002318B0);
    v94 = sub_100013DDC();
    if (sub_100004DFC(v94, v95, v80) == 1)
    {
      sub_100004E24(*(v0 + 1512), &qword_1002DA970, &qword_1002318B0);
      *(v0 + 1352) = 0u;
      *(v0 + 1368) = 0u;
    }

    else
    {
      *(v0 + 1376) = v80;
      sub_100007914((v0 + 1352));
      sub_10000B7EC();
      (*(v96 + 32))();
    }

    v97 = *(v0 + 1656);
    v98 = *(v0 + 1648);
    v99 = *(v0 + 1640);
    v100 = *(v0 + 1592);
    v101 = *(v0 + 1560);
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v0 + 1352, &unk_1002DFC10, &qword_10022E6D0);
    v102._countAndFlagsBits = sub_10000286C();
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v102);
    LogInterpolation.init(stringInterpolation:)();
    Log.default(_:)();

    v128(v100, v101);
    sub_100007F24();
    sub_1000C6B44(v151, v97);
    memcpy((v0 + 344), v97, 0x148uLL);
    sub_1000C6E94(v150[5]);
    sub_1000C6E94(v150[6]);
    (*(*(v80 - 8) + 16))(&v98[v99[7]], &v97[v99[7]], v80);
    LOWORD(v100) = *&v97[v150[8]];
    sub_1000C68A8(&v97[v150[9]], &v98[v150[9]], &qword_1002DA970, &qword_1002318B0);
    LOWORD(v101) = *&v97[v99[10]];
    sub_1000C6E94(v150[11]);
    v103 = *&v97[v150[12]];
    sub_100007B78();
    sub_100002728(v104, v105, v106, v141);
    sub_1000C6E94(v99[14]);
    sub_1000C68A8(v0 + 344, v0 + 672, &qword_1002DB920, &qword_100238870);
    sub_100004A2C();
    sub_100010478();
    memcpy(v98, (v0 + 344), 0x148uLL);
    *&v98[v150[8]] = v100;
    *&v98[v99[10]] = v101;
    *&v98[v150[12]] = v103;
    sub_1000C2798(v146 + v145, v98);
    v107 = *(v0 + 1496);
    static Log.accountsDataSync.getter();
    v108 = swift_allocObject();
    sub_1000C72F8(v108, xmmword_1002329D0);
    *(v0 + 1408) = v129;
    *(v0 + 1384) = v107;

    v109 = AMSLogKey();
    if (v109)
    {
      v110 = v109;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v121 = *(v0 + 1648);
    v122 = *(v0 + 1640);
    v123 = *(v0 + 1584);
    v124 = *(v0 + 1560);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 1384));
    LogInterpolation.init(stringLiteral:)();
    *(v0 + 1440) = v122;
    sub_100007914((v0 + 1416));
    sub_100007F24();
    sub_1000C6B44(v121, v125);
    static LogInterpolation.sensitive(_:)();
    sub_100004E24(v0 + 1416, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    v128(v123, v124);
    sub_1000BCBCC();
    sub_100004A2C();
    sub_100010478();
    v53 = v133;
  }

  if (v53)
  {
    sub_100003F74();
    v55 = sub_1000C6DEC();
    v56(v55);
    sub_100006C84();
    sub_100010478();
    sub_10000DE88();
    sub_100010478();
    sub_1000050CC();
    sub_100010478();

    sub_100002E08();

    return v57();
  }

  else
  {
    v62 = *(v0 + 1496);
    static Log.accountsDataSync.getter();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v0 + 1088) = v129;
    *(v0 + 1064) = v62;

    v63 = AMSLogKey();
    if (v63)
    {
      v64 = v63;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v111 = *(v0 + 1640);
    v112 = *(v0 + 1576);
    v113 = *(v0 + 1560);
    v114 = *(v0 + 1496);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v0 + 1064));
    LogInterpolation.init(stringLiteral:)();
    *(v0 + 1120) = v111;
    sub_100007914((v0 + 1096));
    sub_100007F24();
    sub_1000C6B44(v151, v115);
    static LogInterpolation.sensitive(_:)();
    sub_100004E24(v0 + 1096, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    v128(v112, v113);
    v116 = sub_1000C7278(v114 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_notifier);
    v117(v116);
    swift_task_alloc();
    sub_10000DEA0();
    *(v0 + 1696) = v118;
    *v118 = v119;
    v118[1] = sub_1000C1558;

    return sub_1000C288C();
  }
}

uint64_t sub_1000C1558()
{
  sub_10000DB4C();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 1704) = v4;
  *v4 = v3;
  v4[1] = sub_1000C16DC;

  return sub_1000C36A4();
}

uint64_t sub_1000C16DC()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_1000C17D4()
{
  sub_100003F74();
  v0 = sub_1000C6DEC();
  v1(v0);
  sub_100006C84();
  sub_100010478();
  sub_10000DE88();
  sub_100010478();
  sub_1000050CC();
  sub_100010478();

  sub_100002E08();

  return v2();
}

uint64_t sub_1000C1950()
{
  sub_100004194();
  *(v1 + 912) = v0;
  *(v1 + 904) = v2;
  *(v1 + 896) = v3;
  *(v1 + 993) = v4;
  *(v1 + 888) = v5;
  *(v1 + 992) = v6;
  v7 = type metadata accessor for AccountDataState(0);
  *(v1 + 920) = v7;
  sub_1000030B8(v7);
  *(v1 + 928) = sub_1000C70D8();
  *(v1 + 936) = swift_task_alloc();
  v8 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v8);
  *(v1 + 944) = sub_100003FA8();
  v9 = type metadata accessor for Log();
  *(v1 + 952) = v9;
  sub_100003B78(v9);
  *(v1 + 960) = v10;
  *(v1 + 968) = sub_1000C70D8();
  *(v1 + 976) = swift_task_alloc();
  v11 = sub_10000AA8C();

  return _swift_task_switch(v11);
}

uint64_t sub_1000C1A64(uint64_t a1)
{
  v2 = *(v1 + 912);
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  sub_1000C724C();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v44 = type metadata accessor for AccountDataAccessActor(0);
  *(v1 + 696) = v44;
  *(v1 + 672) = v2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v47 = *(v1 + 952);
  v6 = *(v1 + 936);
  v7 = *(v1 + 928);
  v8 = *(v1 + 920);
  v50 = *(v1 + 912);
  v9 = *(v1 + 993);
  v10 = *(v1 + 992);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v1 + 672));
  LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x676E69676E616843;
  v11._object = 0xE900000000000020;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v11);
  *(v1 + 728) = &type metadata for AccountDataChange.CodingKeys;
  *(v1 + 704) = v10 & 1;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v1 + 704, &unk_1002DFC10, &qword_10022E6D0);
  v12._countAndFlagsBits = 544175136;
  v12._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v12);
  *(v1 + 760) = &type metadata for Bool;
  *(v1 + 736) = v9;
  LogInterpolation.StringInterpolation.appendInterpolation(_:)();
  sub_100004E24(v1 + 736, &unk_1002DFC10, &qword_10022E6D0);
  v13._countAndFlagsBits = 1919903264;
  v13._object = 0xE400000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(v13);
  LogInterpolation.init(stringInterpolation:)();
  *(v1 + 792) = type metadata accessor for AccountIdentity();
  sub_100007914((v1 + 768));
  sub_10000B7EC();
  (*(v14 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v1 + 768, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v15 = sub_10003CD30();
  v16 = v47;
  v48 = v17;
  v17(v15, v16);
  v18 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  v49 = v18;
  sub_1000C6B44(v50 + v18, v7);
  if (v10)
  {
    v19 = 2;
  }

  else
  {
    v19 = v9;
  }

  if (v10)
  {
    v20 = v9;
  }

  else
  {
    v20 = 2;
  }

  v21 = *&v7[v8[8]];
  v22 = *&v7[v8[8]];
  v23 = v21 >> 8;
  if (v10)
  {
    LOWORD(v23) = v9;
  }

  else
  {
    LOBYTE(v21) = v9;
  }

  if (v22 == 3)
  {
    v24 = v19;
  }

  else
  {
    v24 = v21;
  }

  if (v22 == 3)
  {
    v25 = v20;
  }

  else
  {
    v25 = v23;
  }

  memcpy((v1 + 16), v7, 0x148uLL);
  sub_1000C6F60(v8[5]);
  sub_1000C6F60(v8[6]);
  v26 = v8[7];
  v27 = type metadata accessor for Date();
  sub_10000307C();
  (*(v28 + 16))(&v6[v26], &v7[v26], v27);
  sub_1000C6F60(v8[9]);
  LOWORD(v26) = *&v7[v8[10]];
  sub_1000C68A8(&v7[v8[11]], &v6[v8[11]], &qword_1002DA970, &qword_1002318B0);
  v29 = *&v7[v8[12]];
  sub_1000C68A8(&v7[v8[13]], &v6[v8[13]], &qword_1002DB940, &qword_100232B48);
  sub_1000C68A8(v1 + 16, v1 + 344, &qword_1002DB920, &qword_100238870);
  sub_100004A2C();
  sub_100010478();
  sub_100007B78();
  sub_100002728(v30, v31, v32, v27);
  memcpy(v6, (v1 + 16), 0x148uLL);
  *&v6[v8[8]] = v24 | (v25 << 8);
  *&v6[v8[10]] = v26;
  *&v6[v8[12]] = v29;
  sub_1000C2798(v50 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID, v6);
  sub_1000BCBCC();
  v33 = *(v1 + 912);
  static Log.accountsDataSync.getter();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  *(v1 + 824) = v44;
  *(v1 + 800) = v33;

  v34 = AMSLogKey();
  if (v34)
  {
    v35 = v34;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000C726C();
  }

  else
  {
    sub_1000033C0();
  }

  v36 = *(v1 + 968);
  v37 = *(v1 + 920);
  v45 = *(v1 + 952);
  v46 = *(v1 + 912);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v1 + 800));
  LogInterpolation.init(stringLiteral:)();
  *(v1 + 856) = v37;
  sub_100007914((v1 + 832));
  sub_100007F24();
  sub_1000C6B44(v50 + v49, v38);
  static LogInterpolation.sensitive(_:)();
  sub_100004E24(v1 + 832, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v48(v36, v45);
  v39 = sub_1000C7278(v46 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_notifier);
  v40(v39);
  swift_task_alloc();
  sub_10000DEA0();
  *(v1 + 984) = v41;
  *v41 = v42;
  v41[1] = sub_1000C218C;

  return sub_1000C288C();
}

uint64_t sub_1000C218C()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  v3 = sub_10000AA8C();

  return _swift_task_switch(v3);
}

uint64_t sub_1000C2284()
{
  sub_10000DB4C();
  sub_100004A2C();
  sub_100010478();

  sub_100002E08();

  return v0();
}

void sub_1000C2330()
{
  sub_100004868();
  v1 = type metadata accessor for AccountDataState(0);
  sub_10000307C();
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v29 - v6;
  type metadata accessor for Log();
  sub_100003724();
  v32 = v9;
  v33 = v8;
  __chkstk_darwin(v8);
  sub_1000030E4();
  v31 = v10;
  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v11 = type metadata accessor for LogInterpolation();
  sub_100003B78(v11);
  sub_10000A1F0();
  v30 = v12;
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v37[3] = type metadata accessor for AccountDataAccessActor(0);
  v37[0] = v0;
  v34 = v0;

  v13 = AMSLogKey();
  if (v13)
  {
    v14 = v13;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v37);
  LogInterpolation.init(stringLiteral:)();
  v30 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  v36[3] = type metadata accessor for AccountIdentity();
  sub_100007914(v36);
  sub_10000B7EC();
  v16 = v34;
  (*(v15 + 16))();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v36, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v17 = sub_10003CD30();
  v18(v17);
  v19 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
  sub_1000109B8();
  swift_beginAccess();
  sub_100007F24();
  v20 = v16;
  sub_1000C6B44(v16 + v19, v4);
  sub_1000C7234(v36);
  sub_1000C7150(&v4[v1[5]], &v7[v1[5]]);
  sub_1000C7150(&v4[v1[6]], &v7[v1[6]]);
  v21 = v1[7];
  v22 = type metadata accessor for Date();
  sub_10000307C();
  (*(v23 + 16))(&v7[v21], &v4[v21], v22);
  v24 = v1[9];
  LODWORD(v33) = *&v4[v1[8]];
  sub_1000C7150(&v4[v24], &v7[v24]);
  LOWORD(v21) = *&v4[v1[10]];
  sub_1000C7150(&v4[v1[11]], &v7[v1[11]]);
  v25 = *&v4[v1[12]];
  sub_1000C68A8(&v4[v1[13]], &v7[v1[13]], &qword_1002DB940, &qword_100232B48);
  sub_1000C68A8(v36, &v35, &qword_1002DB920, &qword_100238870);
  sub_100010478();
  sub_100007B78();
  sub_100002728(v26, v27, v28, v22);
  memcpy(v7, v36, 0x148uLL);
  *&v7[v1[8]] = v33;
  *&v7[v1[10]] = v21;
  *&v7[v1[12]] = v25;
  sub_1000C2798(v20 + v30, v7);
  sub_100010478();
  sub_100005074();
}

uint64_t sub_1000C2798(uint64_t a1, uint64_t a2)
{
  sub_1000C7304();
  result = v5(a2);
  if (!v3)
  {
    v7 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_state;
    swift_beginAccess();
    sub_1000C6844(a2, v2 + v7);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1000C282C(void *a1)
{
  v1 = sub_10000C4FC(a1, a1[3]);
  sub_10000F2C8(v1);
  sub_1000C7304();
  v2();
}

uint64_t sub_1000C288C()
{
  sub_100004194();
  v1[216] = v0;
  v1[215] = v2;
  v1[214] = v3;
  v4 = type metadata accessor for Log();
  v1[217] = v4;
  sub_100003B78(v4);
  v1[218] = v5;
  v1[219] = sub_1000C70D8();
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v1[222] = swift_task_alloc();
  v6 = type metadata accessor for AccountIdentity.DSID();
  v1[223] = v6;
  sub_100003B78(v6);
  v1[224] = v7;
  v1[225] = sub_100003FA8();
  v8 = sub_10000AA8C();

  return _swift_task_switch(v8);
}

uint64_t sub_1000C29A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = *(v14 + 1800);
  v16 = *(v14 + 1792);
  v17 = *(v14 + 1784);
  v18 = (*(v14 + 1728) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountFinder);
  v19 = *v18;
  v20 = v18[1];
  AccountIdentity.dsid.getter();
  v21 = (*(v20 + 16))(v15, v19, v20);
  *(v14 + 1808) = v21;
  (*(v16 + 8))(v15, v17);
  if (!v21)
  {
    v28 = *(v14 + 1728);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100002834();
    v29 = type metadata accessor for LogInterpolation();
    sub_100003B78(v29);
    sub_10000A1F0();
    sub_1000C71C8();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v14 + 1480) = type metadata accessor for AccountDataAccessActor(0);
    *(v14 + 1456) = v28;

    v30 = AMSLogKey();
    if (v30)
    {
      v31 = v30;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v51 = *(v14 + 1760);
    v52 = *(v14 + 1744);
    v53 = *(v14 + 1736);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 1456));
    LogInterpolation.init(stringLiteral:)();
    *(v14 + 1512) = type metadata accessor for AccountIdentity();
    sub_100007914((v14 + 1488));
    sub_10000B7EC();
    (*(v54 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 1488, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v52 + 8))(v51, v53);
    goto LABEL_24;
  }

  v22 = [v21 accountStore];
  *(v14 + 1816) = v22;
  if (!v22)
  {
    v32 = *(v14 + 1728);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    sub_100003F9C();
    v33 = type metadata accessor for LogInterpolation();
    sub_100003B78(v33);
    sub_10000A1F0();
    sub_1000C71D4();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v14 + 1544) = type metadata accessor for AccountDataAccessActor(0);
    *(v14 + 1520) = v32;

    v34 = AMSLogKey();
    if (v34)
    {
      v35 = v34;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000C726C();
    }

    else
    {
      sub_1000033C0();
    }

    sub_10000D40C();
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 1520));
    LogInterpolation.init(stringLiteral:)();
    v55 = [v21 identifier];
    v56 = v55;
    if (v55)
    {
      v55 = sub_100003AE0(0, &qword_1002DB930, NSString_ptr);
    }

    else
    {
      *(v14 + 1560) = 0u;
    }

    v57 = *(v14 + 1768);
    v58 = *(v14 + 1744);
    v59 = *(v14 + 1736);
    *(v14 + 1552) = v56;
    *(v14 + 1576) = v55;
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 1552, &unk_1002DFC10, &qword_10022E6D0);
    Log.fault(_:)();

    (*(v58 + 8))(v57, v59);
LABEL_24:
    sub_1000029A4();

    sub_100002E08();
    sub_100003BBC();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }

  v23 = v22;
  memcpy((v14 + 80), *(v14 + 1720), 0x148uLL);
  type metadata accessor for AccountDataState(0);
  sub_100013524();
  memcpy((v14 + 736), (v14 + 1064), 0x148uLL);
  if (sub_100013900(v14 + 736) == 1)
  {
    v24 = *(v14 + 1728);
    static Log.accountsDataSync.getter();
    sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
    v25 = type metadata accessor for LogInterpolation();
    sub_100003B78(v25);
    sub_10000A1F0();
    *(swift_allocObject() + 16) = xmmword_1002329D0;
    *(v14 + 1608) = type metadata accessor for AccountDataAccessActor(0);
    *(v14 + 1584) = v24;

    v26 = AMSLogKey();
    if (v26)
    {
      v27 = v26;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v60 = *(v14 + 1744);
    a10 = *(v14 + 1776);
    a11 = *(v14 + 1736);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 1584));
    LogInterpolation.init(stringLiteral:)();
    *(v14 + 1640) = type metadata accessor for AccountIdentity();
    sub_100007914((v14 + 1616));
    sub_10000B7EC();
    (*(v61 + 16))();
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 1616, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    (*(v60 + 8))(a10, a11);
    goto LABEL_24;
  }

  memcpy((v14 + 408), (v14 + 736), 0x148uLL);
  sub_1000C7480();
  sub_1000C609C(v36, v21);
  v37 = *(v14 + 416);
  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = *(v14 + 408) & 0xFFFFFFFFFFFFLL;
  }

  if (v38)
  {
    v39 = String._bridgeToObjectiveC()();
    [v21 setUsername:v39];
  }

  v40 = String._bridgeToObjectiveC()();
  sub_100004E24(v14 + 1064, &qword_1002DB920, &qword_100238870);
  [v21 ams_setCreditsString:v40];

  v41 = [v23 ams_saveAccount:v21];
  *(v14 + 1824) = v41;
  *(v14 + 16) = v14;
  *(v14 + 56) = v14 + 1840;
  *(v14 + 24) = sub_1000C3208;
  v42 = swift_continuation_init();
  *(v14 + 1448) = sub_100099DF4(&qword_1002DB938, &qword_100232B40);
  *(v14 + 1424) = v42;
  *(v14 + 1392) = _NSConcreteStackBlock;
  *(v14 + 1400) = 1107296256;
  *(v14 + 1408) = sub_1000C3620;
  *(v14 + 1416) = &unk_1002B6238;
  [v41 resultWithCompletion:v14 + 1392];
  sub_100003BBC();

  return _swift_continuation_await(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C3208()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 1832) = v4;
  if (v4)
  {
    v5 = sub_1000C33AC;
  }

  else
  {
    v5 = sub_1000C3318;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1000C3318()
{
  sub_100007F3C();
  v1 = *(v0 + 1824);
  v2 = *(v0 + 1808);

  sub_1000029A4();

  sub_100002E08();

  return v3();
}

uint64_t sub_1000C33AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000A504();
  v15 = v14[228];
  v16 = v14[216];
  swift_willThrow();

  static Log.accountsDataSync.getter();
  sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  sub_100002834();
  v17 = type metadata accessor for LogInterpolation();
  sub_100003B78(v17);
  sub_10000A1F0();
  sub_1000C71C8();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v14[209] = type metadata accessor for AccountDataAccessActor(0);
  v14[206] = v16;

  v18 = AMSLogKey();
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = v14[227];
  v21 = v14[219];
  v22 = v14[218];
  v37 = v14[226];
  v38 = v14[217];
  static LogInterpolation.prefix(_:_:)();

  sub_100004118(v14 + 206);
  LogInterpolation.init(stringLiteral:)();
  v23 = _convertErrorToNSError(_:)();
  v24 = AMSLogableError();

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v14[213] = &type metadata for String;
  v14[210] = v25;
  v14[211] = v27;
  static LogInterpolation.safe(_:)();
  sub_100004E24((v14 + 210), &unk_1002DFC10, &qword_10022E6D0);
  Log.error(_:)();

  (*(v22 + 8))(v21, v38);
  sub_1000029A4();

  sub_100002E08();
  sub_100003BBC();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, a11, a12, a13, a14);
}

uint64_t sub_1000C3620(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = sub_10000C4FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001A734C();
  }

  else
  {
    v8 = *v5;

    return sub_1001A5EA0(v8, v4);
  }
}

uint64_t sub_1000C36A4()
{
  sub_100004194();
  v1[353] = v0;
  v1[352] = v2;
  v1[351] = v3;
  v1[350] = v4;
  v5 = type metadata accessor for LogInterpolation.StringInterpolation();
  sub_1000030B8(v5);
  v1[354] = sub_100003FA8();
  v6 = type metadata accessor for Log();
  v1[355] = v6;
  sub_100003B78(v6);
  v1[356] = v7;
  v1[357] = sub_1000C70D8();
  v1[358] = swift_task_alloc();
  v1[359] = swift_task_alloc();
  v1[360] = swift_task_alloc();
  v1[361] = swift_task_alloc();
  v1[362] = swift_task_alloc();
  v8 = sub_10000AA8C();

  return _swift_task_switch(v8);
}

uint64_t sub_1000C37B0(uint64_t a1)
{
  v2 = *(v1 + 2824);
  static Log.accountsDataSync.getter();
  *(v1 + 2904) = sub_100099DF4(&qword_1002DE6B0, &unk_100232AF0);
  v3 = type metadata accessor for LogInterpolation();
  sub_100003B78(v3);
  *(v1 + 2912) = *(v4 + 72);
  *(v1 + 3080) = *(v5 + 80);
  sub_1000C71C8();
  *(swift_allocObject() + 16) = xmmword_1002329D0;
  v6 = type metadata accessor for AccountDataAccessActor(0);
  *(v1 + 2920) = v6;
  *(v1 + 2424) = v6;
  *(v1 + 2400) = v2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = *(v1 + 2896);
  v10 = *(v1 + 2848);
  v22 = *(v1 + 2840);
  v11 = *(v1 + 2808);
  static LogInterpolation.prefix(_:_:)();

  sub_100004118((v1 + 2400));
  LogInterpolation.init(stringLiteral:)();
  v12 = type metadata accessor for AccountIdentity();
  *(v1 + 2928) = v12;
  *(v1 + 2392) = v12;
  sub_100007914((v1 + 2368));
  sub_10000B7EC();
  v14 = *(v13 + 16);
  *(v1 + 2936) = v14;
  *(v1 + 2944) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14();
  static LogInterpolation.traceableSensitive(_:)();
  sub_100004E24(v1 + 2368, &unk_1002DFC10, &qword_10022E6D0);
  Log.default(_:)();

  v15 = *(v10 + 8);
  *(v1 + 2952) = v15;
  *(v1 + 2960) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v9, v22);
  sub_100003AE0(0, &qword_1002DB910, AMSMetricsIdentifierKey_ptr);
  *(v1 + 2968) = sub_1000C5C14(0x644972657375, 0xE600000000000000, 1, 0);
  memcpy((v1 + 80), v11, 0x148uLL);
  v16 = type metadata accessor for AccountDataState(0);
  *(v1 + 2976) = v16;
  *(v1 + 3084) = *&v11[*(v16 + 32)];
  *(v1 + 3086) = *&v11[*(v16 + 40)];
  sub_100013524();
  memcpy((v1 + 736), (v1 + 1720), 0x148uLL);
  v17 = _swiftEmptyArrayStorage;
  if (sub_100013900(v1 + 736) != 1)
  {
    *(v1 + 2784) = *(v1 + 784);
    sub_1000C68A8(v1 + 2784, v1 + 2792, &qword_1002DB928, &qword_100232B30);
    sub_100004E24(v1 + 1720, &qword_1002DB920, &qword_100238870);
    if (*(v1 + 2784))
    {
      v17 = *(v1 + 2784);
    }
  }

  *(v1 + 2984) = v17;
  *(v1 + 2992) = *(*(v1 + 2824) + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_bag);
  v23 = sub_1000C6DDC();
  v19 = v18;
  v20 = swift_task_alloc();
  *(v1 + 3000) = v20;
  *v20 = v1;
  v20[1] = sub_1000C3B80;

  return (v23)(v19);
}

uint64_t sub_1000C3B80()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  v4 = *(v3 + 2992);
  v5 = *v0;
  sub_100004504();
  *v6 = v5;
  *(v8 + 3008) = v7;

  v9 = sub_10000AA8C();

  return _swift_task_switch(v9);
}

uint64_t sub_1000C4180()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *(v1 + 2760) = v3;
  *(v1 + 2752) = v4;
  *(v1 + 2744) = v0;
  v6 = *(v5 + 2992);
  v7 = *v0;
  sub_100004504();
  *v8 = v7;
  *(v10 + 3089) = v9;

  v11 = sub_10000AA8C();

  return _swift_task_switch(v11);
}

uint64_t sub_1000C4298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (*(v14 + 3089))
  {
    v15 = *(v14 + 2920);
    v16 = *(v14 + 2824);
    static Log.accountsDataSync.getter();
    *(sub_1000C7168() + 16) = xmmword_1002329D0;
    *(v14 + 2168) = v15;
    *(v14 + 2144) = v16;

    v17 = AMSLogKey();
    if (v17)
    {
      v18 = v17;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v99 = *(v14 + 3048);
    v24 = *(v14 + 3040);
    sub_1000026E8();
    v112 = v25;
    sub_100008B78();
    v104 = v26;
    v27 = *(v14 + 2928);
    v109 = *(v14 + 2872);
    v111 = *(v14 + 2840);
    v101 = *(v14 + 2800);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 2144));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v28 = 0xD000000000000010;
    v29._countAndFlagsBits = 0xD000000000000029;
    v29._object = 0x8000000100272830;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v29);
    *(v14 + 2200) = &type metadata for String;
    *(v14 + 2176) = v24;
    *(v14 + 2184) = v99;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    v30 = &unk_1002DFC10;
    sub_100004E24(v14 + 2176, &unk_1002DFC10, &qword_10022E6D0);
    v31._countAndFlagsBits = 0xD000000000000033;
    v31._object = 0x8000000100272860;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v31);
    LogInterpolation.init(stringInterpolation:)();
    *(v14 + 2232) = v27;
    v32 = sub_100007914((v14 + 2208));
    v104(v32, v101, v27);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 2208, &unk_1002DFC10, &qword_10022E6D0);
    LOBYTE(v33) = v109;
    Log.error(_:)();

    v34 = v112(v109, v111);
    v42 = *(v14 + 3032);
    if (((*(v14 + 3024) - 1) & *(v14 + 3024)) != 0)
    {
      while (1)
      {
        *(v14 + 3032) = v42;
        sub_10000AF4C();
        sub_10000BF9C(v45, v46);
        sub_100004F04();
        sub_1000C703C();
        sub_1000C741C();
        if (v47)
        {
          break;
        }

        sub_1000C7468();
        sub_100004E24(v14 + 1392, &qword_1002DB920, &qword_100238870);
        if ((v33 & 1) == 0)
        {
          goto LABEL_29;
        }

        v113 = v30;
        v48 = *(v14 + 2920);
        sub_10000B344();
        static Log.accountsDataSync.getter();
        *(swift_allocObject() + 16) = xmmword_1002329D0;
        *(v14 + 2648) = v48;
        *(v14 + 2624) = v27;

        v49 = AMSLogKey();
        if (v49)
        {
          v50 = v49;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        sub_100004514();
        v110 = *(v14 + 2952);
        sub_100008B78();
        v100 = v51;
        v52 = *(v14 + 2928);
        v105 = *(v14 + 2888);
        v108 = *(v14 + 2840);
        v97 = *(v14 + 2800);
        sub_1000C7394();

        sub_1000C6EB4();
        v53._countAndFlagsBits = 0xD000000000000020;
        v53._object = 0x8000000100272910;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v53);
        *(v14 + 2680) = &type metadata for String;
        *(v14 + 2656) = v113;
        *(v14 + 2664) = &qword_10022E6D0;

        LogInterpolation.StringInterpolation.appendInterpolation(_:)();
        sub_100004E24(v14 + 2656, &unk_1002DFC10, &qword_10022E6D0);
        v54._countAndFlagsBits = 0xD00000000000002CLL;
        v54._object = 0x8000000100272940;
        LogInterpolation.StringInterpolation.appendLiteral(_:)(v54);
        LogInterpolation.init(stringInterpolation:)();
        *(v14 + 2712) = v52;
        v55 = sub_100007914((v14 + 2688));
        v100(v55, v97, v52);
        sub_1000C7450();
        sub_100004E24(v14 + 2688, &unk_1002DFC10, &qword_10022E6D0);
        Log.default(_:)();

        v110(v105, v108);
        objc_opt_self();
        v30 = String._bridgeToObjectiveC()();

        v33 = AccountIdentity.amsAccountIdentity()();
        v27 = sub_1000C73B4(v33, "_removeStoreForNamespace:accountID:bag:");
      }

LABEL_29:
      sub_1000C6DDC();
      v80 = v79;
      v81 = swift_task_alloc();
      v82 = sub_1000C72D4(v81);
      *v82 = v83;
      sub_100007B84(v82);
      sub_1000C71E0();

      __asm { BR              X3 }
    }

    while (!__OFADD__(v42, 1))
    {
      sub_10000EF68();
      if (v43 == v44)
      {
        v56 = *(v14 + 2984);

        v57 = *(v56 + 16);
        if (v57)
        {
          sub_1000048CC();
          v90 = objc_opt_self();
          v58 = v56 + 56;
          do
          {
            v114 = v57;
            sub_10000691C();

            static Log.accountsDataSync.getter();
            v59 = sub_1000C7058();
            sub_1000C6CF8(v59, xmmword_100232A10);
            if (AMSLogKey())
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_1000C7438();
            }

            else
            {
              sub_1000C72E0();
            }

            v106 = *(v14 + 2992);
            v28 = *(v14 + 2912);
            v92 = *(v14 + 2864);
            v93 = *(v14 + 2840);
            v95 = *(v14 + 2952);
            v102 = *(v14 + 2968);
            sub_10000A7DC();

            sub_100004118((v14 + 2112));
            LogInterpolation.init(stringLiteral:)();
            sub_1000C6FE4();
            sub_1000C7404();
            sub_100004E24(v14 + 2592, &unk_1002DFC10, &qword_10022E6D0);
            sub_10000A4D0();
            sub_100003568();
            sub_1000C73D4();
            sub_100008C54();
            Log.default(_:)();

            v95(v92, v93);
            sub_100013D74();
            sub_100002FFC();
            sub_1000C721C();

            v60 = AccountIdentity.amsAccountIdentity()();
            isa = Date._bridgeToObjectiveC()().super.isa;
            v62 = Date._bridgeToObjectiveC()().super.isa;
            LOBYTE(v87) = 0;
            v63 = [v90 _setConsumerIdentifier:&qword_10022E6D0 forKey:v102 inNamespace:v59 accountID:v60 bag:v106 at:isa serverProvidedAt:v62 skipSync:v87];

            v58 += 32;
            v57 = v114 - 1;
          }

          while (v114 != 1);
        }

        sub_100003B88();

        sub_100002E08();
        sub_1000C71E0();

        __asm { BRAA            X1, X16 }
      }

      sub_1000C72EC();
      ++v42;
    }

    __break(1u);
  }

  else
  {
    v19 = *(v14 + 2752);
    v20 = *(v14 + 2920);
    v21 = *(v14 + 2824);
    static Log.accountsDataSync.getter();
    *(sub_1000C7168() + 16) = xmmword_1002329D0;
    *(v14 + 2264) = v20;
    *(v14 + 2240) = v21;

    v22 = AMSLogKey();
    if (v22)
    {
      v23 = v22;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v66 = *(v14 + 3048);
    v67 = *(v14 + 3040);
    v107 = *(v14 + 2992);
    v103 = *(v14 + 2968);
    sub_1000026E8();
    v98 = v68;
    sub_100008B78();
    v91 = v69;
    v89 = *(v14 + 2928);
    v94 = *(v14 + 2880);
    v96 = *(v14 + 2840);
    v88 = *(v14 + 2800);
    static LogInterpolation.prefix(_:_:)();

    sub_100004118((v14 + 2240));
    LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v70._countAndFlagsBits = 0xD000000000000022;
    v70._object = 0x80000001002728A0;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v70);
    *(v14 + 2296) = &type metadata for String;
    *(v14 + 2272) = v67;
    *(v14 + 2280) = v66;

    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v14 + 2272, &unk_1002DFC10, &qword_10022E6D0);
    v71._object = 0x80000001002728D0;
    v71._countAndFlagsBits = 0xD000000000000010;
    LogInterpolation.StringInterpolation.appendLiteral(_:)(v71);
    *(v14 + 2328) = &type metadata for Double;
    *(v14 + 2304) = v19;
    LogInterpolation.StringInterpolation.appendInterpolation(_:)();
    sub_100004E24(v14 + 2304, &unk_1002DFC10, &qword_10022E6D0);
    sub_1000C7100(0x202Eu);
    LogInterpolation.init(stringInterpolation:)();
    *(v14 + 2360) = v89;
    v72 = sub_100007914((v14 + 2336));
    v91(v72, v88, v89);
    static LogInterpolation.traceableSensitive(_:)();
    sub_100004E24(v14 + 2336, &unk_1002DFC10, &qword_10022E6D0);
    Log.default(_:)();

    v98(v94, v96);
    v73 = objc_opt_self();
    v74 = String._bridgeToObjectiveC()();
    v75 = AccountIdentity.amsAccountIdentity()();
    v76 = Date._bridgeToObjectiveC()().super.isa;
    v77 = [v73 _applyExpiryForKey:v103 inNamespace:v74 accountID:v75 bag:v107 at:v76 consumerIDResetInterval:v19];
    *(v14 + 3064) = v77;

    *(v14 + 16) = v14;
    *(v14 + 56) = v14 + 2768;
    *(v14 + 24) = sub_1000C4E2C;
    v78 = swift_continuation_init();
    *(v14 + 2104) = sub_100099DF4(&qword_1002DB918, &unk_100232B20);
    *(v14 + 2080) = v78;
    *(v14 + 2048) = _NSConcreteStackBlock;
    *(v14 + 2056) = 1107296256;
    *(v14 + 2064) = sub_1000C5C90;
    *(v14 + 2072) = &unk_1002B61C0;
    [v77 resultWithCompletion:?];
    sub_1000C71E0();
  }

  return _swift_continuation_await(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C4E2C()
{
  sub_100004194();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 3072) = v4;
  if (v4)
  {
    v5 = sub_1000C5410;
  }

  else
  {

    v5 = sub_1000C4F48;
  }

  return _swift_task_switch(v5);
}

id sub_1000C5C14(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = String._bridgeToObjectiveC()();

  v7 = [swift_getObjCClassFromMetadata() keyWithName:v6 crossDeviceSync:a3 & 1 isActiveITunesAccountRequired:a4 & 1];

  return v7;
}

void *sub_1000C5C90(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001A734C();
  }

  else if (a2)
  {
    swift_unknownObjectRetain();

    return sub_1001A7350();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000C5D24(uint64_t a1, void *a2, void *a3)
{
  result = sub_10000C4FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1001A734C();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1001A7350();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C5DB4()
{
  sub_100004A2C();
  sub_100010478();
  v1 = OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_accountID;
  type metadata accessor for AccountIdentity();
  sub_10000307C();
  (*(v2 + 8))(v0 + v1);
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_account));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_metrics));
  sub_100004118((v0 + OBJC_IVAR____TtC12amsaccountsd22AccountDataAccessActor_defaults));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000C5E68()
{
  sub_1000C5DB4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for AccountDataAccessActor(uint64_t a1)
{
  result = qword_1002DB790;
  if (!qword_1002DB790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C5EE8(uint64_t a1)
{
  result = type metadata accessor for AccountDataState(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AccountIdentity();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000C5FF8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000C6030(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1000C609C(uint64_t a1, void *a2)
{
  type metadata accessor for AMSAccountFlag(0);
  sub_100003AE0(0, &qword_1002DA6C8, NSNumber_ptr);
  sub_1000C6B9C(&qword_1002DA648, type metadata accessor for AMSAccountFlag, byte_10022E648);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a2 ams_setAccountFlags:isa];
}

uint64_t sub_1000C6194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000DB4C();
  sub_10000873C();
  sub_100002860();
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_1000C72A0();
  v21 = [v19 v20];

  v22 = [v21 valuePromise];
  v14[20] = v22;

  v14[2] = v14;
  v14[7] = v17;
  v14[3] = sub_1000C62DC;
  swift_continuation_init();
  v23 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
  sub_10000BC68(v23);
  v14[11] = 1107296256;
  sub_1000C6E04();
  [v22 resultWithCompletion:v16];

  return _swift_continuation_await(v15, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C62DC()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1000C6450;
  }

  else
  {
    v5 = sub_1000C63DC;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1000C63DC()
{
  sub_100004194();
  v1 = *(v0 + 144);

  v2 = sub_10012429C(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000C6450()
{
  sub_100007F3C();
  v1 = *(v0 + 160);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(&_swiftEmptySetSingleton);
}

uint64_t sub_1000C64CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_1000C64F0);
}

uint64_t sub_1000C64F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000DB4C();
  sub_10000873C();
  sub_100002860();
  v18 = String._bridgeToObjectiveC()();
  v19 = sub_1000C72A0();
  v21 = [v19 v20];

  v22 = [v21 valuePromise];
  v14[22] = v22;

  v14[2] = v14;
  v14[7] = v17;
  v14[3] = sub_1000C6638;
  swift_continuation_init();
  v23 = sub_100099DF4(&qword_1002DF140, &qword_100232B38);
  sub_10000BC68(v23);
  v14[11] = 1107296256;
  sub_1000C6E04();
  [v22 resultWithCompletion:v16];

  return _swift_continuation_await(v15, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C6638()
{
  sub_100004194();
  sub_1000030F8();
  sub_1000037E8();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_1000C67C8;
  }

  else
  {
    v5 = sub_1000C6738;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_1000C6738()
{
  sub_100007F3C();
  v1 = *(v0 + 168);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = sub_100124144(v3, v2, v1);
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6 & 1);
}

uint64_t sub_1000C67C8()
{
  sub_100007F3C();
  v1 = *(v0 + 176);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0, 1);
}

uint64_t sub_1000C6844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C68A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100099DF4(a3, a4);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_1000C6904()
{
  v1 = type metadata accessor for AccountDataServerRequest(0);
  sub_100003B78(v1);
  v2 = type metadata accessor for Date();
  sub_1000030B8(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1000C6A64;
  sub_100002854();

  return sub_1000BF158(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C6A64()
{
  sub_100004194();
  sub_1000030F8();
  v1 = *v0;
  sub_100004504();
  *v2 = v1;

  sub_100002E08();

  return v3();
}

uint64_t sub_1000C6B44(uint64_t a1, uint64_t a2)
{
  v3 = sub_100003F9C();
  v4(v3);
  sub_10000307C();
  v5 = sub_1000050CC();
  v6(v5);
  return a2;
}

uint64_t sub_1000C6B9C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1000C6BE4()
{
  sub_100002834();
  v2 = type metadata accessor for Date();
  sub_1000030B8(v2);
  v3 = *(v0 + 40);
  swift_task_alloc();
  sub_10000DEA0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_100013D70;
  sub_100002854();

  return sub_1000BCB14(v6, v7, v8, v9, v3, v10, v11);
}

uint64_t sub_1000C6CF8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  *(v3 + 2136) = v4;
  *(v3 + 2112) = v2;
}

uint64_t sub_1000C6D1C()
{
  *(v1 - 128) = *(v0 + 2992);

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000C6D7C@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 104) = a1;
  *(v3 - 96) = v1;
  *(v3 - 112) = v2[369];
  v5 = v2[355];
  *(v3 - 128) = v2[361];
  *(v3 - 120) = v5;

  return static LogInterpolation.prefix(_:_:)();
}

void sub_1000C6E04()
{
  v1[12] = sub_1000C5D24;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_1000C6E34@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v5 + a1, v2 + v1, v3, v4);
}

uint64_t sub_1000C6E54@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v5 + a1, v3 + v1, v2, v4);
}

uint64_t sub_1000C6E74@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v5 + v1, v2, v3);
}

uint64_t sub_1000C6E94@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v2 + a1, v3 + a1, v1, v4);
}

uint64_t sub_1000C6EB4()
{
  sub_100004118((v0 + 2624));

  return LogInterpolation.StringInterpolation.init(literalCapacity:interpolationCount:)();
}

id sub_1000C6F0C(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v32 = *(v30 - 128);

  return [a16 a2];
}

uint64_t sub_1000C6F60@<X0>(uint64_t a1@<X8>)
{

  return sub_1000C68A8(v4 + a1, v2 + a1, v1, v3);
}

uint64_t sub_1000C6FB8()
{
  v0[307] = v1;
  v0[304] = *(v2 - 120);
  v0[305] = *(v2 - 104);
}

uint64_t sub_1000C6FE4()
{
  v0[327] = v1;
  v0[324] = *(v2 - 120);
  v0[325] = *(v2 - 104);
}

uint64_t sub_1000C7010()
{
  v0[327] = v1;
  v0[324] = *(v2 - 112);
  v0[325] = *(v2 - 96);
}

void *sub_1000C703C()
{

  return memcpy((v0 + 1064), (v0 + 1392), 0x148uLL);
}

uint64_t sub_1000C7058()
{

  return swift_allocObject();
}

uint64_t sub_1000C7074()
{

  return sub_100004E24(v2 - 112, v0, v1);
}

uint64_t sub_1000C70D8()
{

  return swift_task_alloc();
}

void sub_1000C7100(unsigned __int16 a1)
{
  v2 = a1 | 0x69746E6564690000;
  v3 = 0xEC0000003D207974;

  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v2);
}

uint64_t sub_1000C7128()
{

  return type metadata accessor for CachedServerDataSyncAttempt(0);
}

uint64_t sub_1000C7150(uint64_t a1, uint64_t a2)
{

  return sub_1000C68A8(a1, a2, v2, v3);
}

uint64_t sub_1000C7168()
{

  return swift_allocObject();
}

void sub_1000C7200(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000020;

  v2 = a1 | 0x8000000000000000;
  LogInterpolation.StringInterpolation.appendLiteral(_:)(*&v3);
}

uint64_t sub_1000C721C()
{
}

void *sub_1000C7234(void *a1)
{

  return memcpy(a1, v1, 0x148uLL);
}

uint64_t sub_1000C7334()
{

  return static LogInterpolation.prefix(_:_:)();
}

uint64_t sub_1000C7354()
{

  return swift_allocObject();
}

uint64_t *sub_1000C7374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v22 + 2712) = a22;

  return sub_100007914((v22 + 2688));
}

uint64_t sub_1000C7394()
{

  return static LogInterpolation.prefix(_:_:)();
}

id sub_1000C73B4(uint64_t a1, const char *a2)
{
  v7 = *(v5 - 104);

  return [v2 a2];
}

uint64_t sub_1000C73D4()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_1000C73EC()
{

  return LogInterpolation.StringInterpolation.appendInterpolation(_:)();
}

uint64_t sub_1000C7404()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

void sub_1000C7438()
{
}

uint64_t sub_1000C7450()
{

  return static LogInterpolation.traceableSensitive(_:)();
}

uint64_t sub_1000C7468()
{
}

void sub_1000C7480()
{
  v1 = sub_1000C795C();
  v2 = *(v1 + 16);
  if (v2)
  {
    v51 = v0;
    sub_1001070B0(0, v2, 0);
    v58 = _swiftEmptyArrayStorage;
    v4 = sub_1000C87E4(v1);
    v5 = 0;
    v6 = v1 + 64;
    v52 = v3;
    v54 = v2;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v6 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_46;
      }

      if (*(v1 + 36) != v3)
      {
        goto LABEL_47;
      }

      sub_10000694C();
      v9 = v8;
      v10.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v11 = v58;
      v13 = v58[2];
      v12 = v58[3];
      if (v13 >= v12 >> 1)
      {
        sub_1000037F8(v12);
        v11 = v58;
      }

      v11[2] = v13 + 1;
      v14 = &v11[2 * v13];
      v14[4].super.super.isa = v9;
      v14[5].super.super.isa = v10.super.super.isa;
      v15 = 1 << *(v1 + 32);
      if (v4 >= v15)
      {
        goto LABEL_48;
      }

      v6 = v1 + 64;
      v16 = *(v1 + 64 + 8 * v7);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_49;
      }

      v58 = v11;
      if (*(v1 + 36) != v57)
      {
        goto LABEL_50;
      }

      if ((v16 & (-2 << (v4 & 0x3F))) != 0)
      {
        sub_100003104();
      }

      else
      {
        v17 = v7 << 6;
        v18 = v7 + 1;
        v19 = (v1 + 72 + 8 * v7);
        while (v18 < (v15 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            sub_1000C87D4(v4, v57, v56 & 1);
            v15 = __clz(__rbit64(v20)) + v17;
            goto LABEL_19;
          }
        }

        sub_1000C87D4(v4, v57, v56 & 1);
      }

LABEL_19:
      ++v5;
      v4 = v15;
      v3 = v52;
      if (v5 == v54)
      {

        v0 = v51;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v58 = _swiftEmptyArrayStorage;
LABEL_22:
  sub_100099DF4(&qword_1002DB9B0, &qword_100232BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10022E400;
  v23 = AMSAccountFlagAgeVerificationExpiration;
  v24 = *(v0 + 320);
  *(inited + 32) = AMSAccountFlagAgeVerificationExpiration;
  *(inited + 40) = v24;
  type metadata accessor for AMSAccountFlag(0);
  sub_10001391C(&qword_1002DA648, type metadata accessor for AMSAccountFlag, byte_10022E648);
  v25 = v23;
  v26 = Dictionary.init(dictionaryLiteral:)();
  v27 = *(v26 + 16);
  if (v27)
  {
    sub_1001070B0(0, v27, 0);
    v28 = _swiftEmptyArrayStorage;
    v30 = sub_1000C87E4(v26);
    v31 = 0;
    v32 = v26 + 64;
    v53 = v29;
    v55 = v27;
    v33 = 1;
    while ((v30 & 0x8000000000000000) == 0 && v30 < v33 << *(v26 + 32))
    {
      v34 = v30 >> 6;
      v35 = v33 << v30;
      if ((*(v32 + 8 * (v30 >> 6)) & (v33 << v30)) == 0)
      {
        goto LABEL_52;
      }

      if (*(v26 + 36) != v29)
      {
        goto LABEL_53;
      }

      sub_10000694C();
      v37 = v36;
      v38.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      v40 = v28[2];
      v39 = v28[3];
      v41 = v28;
      if (v40 >= v39 >> 1)
      {
        sub_1000037F8(v39);
        v41 = v28;
      }

      v41[2] = v40 + 1;
      v42 = &v41[2 * v40];
      v42[4].super.super.isa = v37;
      v42[5].super.super.isa = v38.super.super.isa;
      v43 = 1 << *(v26 + 32);
      if (v30 >= v43)
      {
        goto LABEL_54;
      }

      v32 = v26 + 64;
      v44 = *(v26 + 64 + 8 * v34);
      if ((v44 & v35) == 0)
      {
        goto LABEL_55;
      }

      v28 = v41;
      if (*(v26 + 36) != v57)
      {
        goto LABEL_56;
      }

      if ((v44 & (-2 << (v30 & 0x3F))) != 0)
      {
        sub_100003104();
        v45 = v55;
      }

      else
      {
        v46 = v34 << 6;
        v47 = v34 + 1;
        v48 = (v26 + 72 + 8 * v34);
        v45 = v55;
        while (v47 < (v43 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_1000C87D4(v30, v57, v56 & 1);
            v43 = __clz(__rbit64(v49)) + v46;
            goto LABEL_40;
          }
        }

        sub_1000C87D4(v30, v57, v56 & 1);
LABEL_40:
        v33 = 1;
      }

      ++v31;
      v30 = v43;
      v29 = v53;
      if (v31 == v45)
      {

        goto LABEL_44;
      }
    }

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
    return;
  }

  v28 = _swiftEmptyArrayStorage;
LABEL_44:
  sub_1000C83BC(v28);
  sub_1000C7BBC(v58);
}

uint64_t sub_1000C795C()
{
  sub_100099DF4(&qword_1002DB9D0, &qword_100232BD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100232B90;
  v28 = AMSAccountFlagAutoPlay;
  *(inited + 32) = AMSAccountFlagAutoPlay;
  *(inited + 40) = v0[25];
  v27 = AMSAccountFlagIsDisabledAccount;
  *(inited + 48) = AMSAccountFlagIsDisabledAccount;
  *(inited + 56) = v0[105];
  v26 = AMSAccountFlagPersonalization;
  *(inited + 64) = AMSAccountFlagPersonalization;
  *(inited + 72) = v0[241];
  v25 = AMSAccountFlagHasAgreedToTerms;
  *(inited + 80) = AMSAccountFlagHasAgreedToTerms;
  *(inited + 88) = v0[89];
  v24 = AMSAccountFlagHasAgreedToAppClipTerms;
  *(inited + 96) = AMSAccountFlagHasAgreedToAppClipTerms;
  *(inited + 104) = v0[88];
  v2 = AMSAccountFlagHasFamilySharingEnabled;
  *(inited + 112) = AMSAccountFlagHasFamilySharingEnabled;
  *(inited + 120) = v0[90];
  v3 = AMSAccountFlagIsInBadCredit;
  *(inited + 128) = AMSAccountFlagIsInBadCredit;
  *(inited + 136) = v0[106];
  v4 = AMSAccountFlagHasiCloudFamily;
  *(inited + 144) = AMSAccountFlagHasiCloudFamily;
  *(inited + 152) = v0[107];
  v5 = AMSAccountFlagIsInRestrictedRegion;
  *(inited + 160) = AMSAccountFlagIsInRestrictedRegion;
  *(inited + 168) = v0[108];
  v6 = AMSAccountFlagIsManagedAccount;
  *(inited + 176) = AMSAccountFlagIsManagedAccount;
  *(inited + 184) = v0[109];
  v7 = AMSAccountFlagIsRestrictedAccount;
  *(inited + 192) = AMSAccountFlagIsRestrictedAccount;
  *(inited + 200) = v0[160];
  v8 = AMSAccountFlagRetailDemo;
  *(inited + 208) = AMSAccountFlagRetailDemo;
  *(inited + 216) = v0[264];
  v9 = AMSAccountFlagUnderThirteen;
  *(inited + 224) = AMSAccountFlagUnderThirteen;
  *(inited + 232) = v0[313];
  type metadata accessor for AMSAccountFlag(0);
  sub_10001391C(&qword_1002DA648, type metadata accessor for AMSAccountFlag, byte_10022E648);
  v10 = v28;
  v11 = v27;
  v12 = v26;
  v13 = v25;
  v14 = v24;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v9;
  return Dictionary.init(dictionaryLiteral:)();
}

void *sub_1000C7BBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100099DF4(&qword_1002DB9B8, &qword_100232BC8);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_1000C8494(v2, 1, &v4);

  return v4;
}

Swift::Int sub_1000C7C70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100099DF4(&qword_1002DB9A0, &qword_100232BB0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaDictionary.makeIterator()();
    while (1)
    {
      v3 = __CocoaDictionary.Iterator.next()();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      sub_100003AE0(0, &qword_1002DEA60, AMSAccountIdentity_ptr);
      swift_dynamicCast();
      sub_100003AE0(0, &qword_1002DB980, AMSAccountCachedServerDataAccountResult_ptr);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_1000C8158(v4 + 1, 1);
      }

      v2 = v17;
      result = NSObject._rawHashValue(seed:)(*(v17 + 40));
      v6 = v17 + 64;
      v7 = -1 << *(v17 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v17 + 48) + 8 * v10) = v16;
      *(*(v17 + 56) + 8 * v10) = v15;
      ++*(v17 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000C7E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100099DF4(&qword_1002DB9B8, &qword_100232BC8);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v2;
  v35 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_1000EA578(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = *(v19 + 8 * v18);
    if ((v36 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v24 = Hasher._finalize()();

    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v7 + 48) + 8 * v28) = v20;
    *(*(v7 + 56) + 8 * v28) = v21;
    ++*(v7 + 16);
    v5 = v35;
    v12 = v37;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

Swift::Int sub_1000C8158(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100099DF4(&qword_1002DB9A0, &qword_100232BB0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return result;
  }

  v32 = v2;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_1000EA578(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v19;
      v22 = v20;
    }

    result = NSObject._rawHashValue(seed:)(*(v7 + 40));
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1000C83BC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_10010723C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_100099DF4(&qword_1002DB9C8, &qword_100238270);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000C8494(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for AMSAccountFlag(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    v12 = sub_10014EBB0();
    v13 = v8[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v8[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100099DF4(&qword_1002DB9C0, &qword_100232BD0);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v9;
    *(v19[7] + 8 * v12) = v10;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_1000C7E98(v15, a2 & 1);
  v17 = sub_10014EBB0();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000100272E40;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  type metadata accessor for AMSAccountFlag(0);
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792);
  __break(1u);
  return result;
}

Swift::Int sub_1000C8760(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1000C87D4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1000C8834()
{
  sub_100004194();
  v0[23] = v1;
  v0[24] = v2;
  v0[21] = v3;
  v0[22] = v4;
  v5 = type metadata accessor for AccountDataServerResponse(0);
  v0[25] = v5;
  sub_1000030B8(v5);
  v0[26] = sub_100003FA8();
  v6 = type metadata accessor for IndexSet();
  v0[27] = v6;
  v0[28] = *(v6 - 8);
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v7 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v0[31] = v7;
  sub_1000030B8(v7);
  v0[32] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v8);
}

uint64_t sub_1000C8950()
{
  sub_100004194();
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  *(v0 + 264) = MetricsActivity.init(label:)();
  dispatch thunk of MetricsActivity.activate()();
  v2 = swift_task_alloc();
  *(v0 + 272) = v2;
  *v2 = v0;
  v2[1] = sub_1000C8A08;

  return sub_1000C920C();
}

uint64_t sub_1000C8A08()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 280) = v4;
  *(v2 + 288) = v0;

  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1000C8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = [objc_allocWithZone(AMSURLResponseDecoder) init];
  sub_1000CA3B8(&qword_1002DB9D8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  for (i = 200; i != 300; ++i)
  {
    v14[19] = i;
    dispatch thunk of SetAlgebra.insert(_:)();
  }

  v17 = v14[35];
  v18 = v14[30];
  v19 = v14[27];
  v20 = v14[28];
  (*(v20 + 32))(v18, v14[29], v19);
  IndexSet.insert(_:)(304);
  IndexSet.insert(_:)(409);
  IndexSet.insert(_:)(429);
  IndexSet._bridgeToObjectiveC()(v21);
  v23 = v22;
  (*(v20 + 8))(v18, v19);
  [v15 setAllowedStatusCodes:v23];

  v24 = [objc_allocWithZone(AMSURLSession) init];
  v14[37] = v24;
  [v24 setResponseDecoder:v15];

  v25 = [objc_allocWithZone(type metadata accessor for AuthURLDelegate()) init];
  v14[38] = v25;
  [v24 setDelegate:v25];
  v26 = v17;
  v27 = [v24 dataTaskPromiseWithRequest:v26 activity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  v14[39] = v27;
  swift_unknownObjectRelease();

  v14[2] = v14;
  v14[7] = v14 + 20;
  v14[3] = sub_1000C8E00;
  v28 = swift_continuation_init();
  v14[17] = sub_100099DF4(&qword_1002DB9E0, &qword_10023F930);
  v14[10] = _NSConcreteStackBlock;
  v14[11] = 1107296256;
  v14[12] = sub_1000C5D24;
  v14[13] = &unk_1002B6308;
  v14[14] = v28;
  [v27 resultWithCompletion:v14 + 10];

  return _swift_continuation_await(v14 + 2, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C8E00()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = *(v3 + 48);
  sub_10000381C();

  return _swift_task_switch(v4);
}

uint64_t sub_1000C8F00()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);

  sub_1000C9A28(v4, v3, v2);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = *(v0 + 280);
  if (v1)
  {

    **(v0 + 256) = v1;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 208);

    sub_1000CA240(v9, v8);
    swift_storeEnumTagMultiPayload();
  }

  sub_100004A44();
  sub_100006960(v10, v11);
  dispatch thunk of MetricsActivity.complete<A>(with:)();

  sub_100003828();

  sub_100002E08();

  return v12();
}

uint64_t sub_1000C904C()
{
  **(v1 + 256) = *(v1 + 288);
  swift_storeEnumTagMultiPayload();
  sub_100004A44();
  sub_100006960(v2, v3);
  dispatch thunk of MetricsActivity.complete<A>(with:)();

  sub_100003828();

  sub_100002E08();

  return v4();
}

uint64_t sub_1000C9118(uint64_t a1)
{
  v2 = *(v1 + 312);
  v4 = *(v1 + 296);
  v3 = *(v1 + 304);
  v5 = *(v1 + 280);
  swift_willThrow();

  **(v1 + 256) = *(v1 + 320);
  swift_storeEnumTagMultiPayload();
  sub_100004A44();
  sub_100006960(v6, v7);
  dispatch thunk of MetricsActivity.complete<A>(with:)();

  sub_100003828();

  sub_100002E08();

  return v8();
}

uint64_t sub_1000C920C()
{
  sub_100004194();
  v0[10] = v1;
  v0[11] = v2;
  v3 = type metadata accessor for URL();
  v0[12] = v3;
  v0[13] = *(v3 - 8);
  v0[14] = sub_100003FA8();
  v4 = type metadata accessor for AccountDataServerRequest(0);
  v0[15] = v4;
  sub_1000030B8(v4);
  v0[16] = sub_100003FA8();
  sub_10000381C();

  return _swift_task_switch(v5);
}

uint64_t sub_1000C92E0()
{
  v1 = *(v0 + 80);
  v2 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:*(v0 + 88)];
  *(v0 + 136) = v2;
  [v2 setRequestEncoding:3];
  v3 = sub_1000C9EDC(v1);
  *(v0 + 144) = 0;
  v4 = v3;
  v5 = *(v0 + 128);
  v6 = *(v0 + 80);
  [v2 setAccount:v3];

  sub_1000CA2F8(v6, v5);
  *(v0 + 216) = swift_getEnumCaseMultiPayload();
  sub_1000CA35C(v5);
  swift_getObjectType();
  *(v0 + 152) = sub_10012EF24();
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_1000C9490;

  return sub_100169384();
}

uint64_t sub_1000C9490()
{
  sub_100004194();
  sub_1000030F8();
  sub_10000452C();
  *v2 = v1;
  v3 = *v0;
  sub_10000452C();
  *v4 = v3;
  *(v6 + 168) = v5;

  sub_10000381C();

  return _swift_task_switch(v7);
}

uint64_t sub_1000C959C()
{
  v1 = *(v0 + 144);
  sub_10012F174(*(v0 + 80), *(v0 + 168), *(v0 + 112));
  if (v1)
  {
    v2 = *(v0 + 136);

    sub_100002E08();

    return v3();
  }

  else
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 80);

    if (v5 == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 5;
    }

    v8 = sub_10012ECCC(v6);
    *(v0 + 176) = v8;
    sub_100099DF4(&qword_1002DB9E8, &unk_10023F950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10022E400;
    *(inited + 32) = 0x646975472D58;
    *(inited + 40) = 0xE600000000000000;
    v10 = [objc_opt_self() deviceGUID];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(inited + 48) = v11;
    *(inited + 56) = v13;
    v14 = Dictionary.init(dictionaryLiteral:)();
    *(v0 + 184) = v14;
    v15 = swift_task_alloc();
    *(v0 + 192) = v15;
    *v15 = v0;
    v15[1] = sub_1000C9798;
    v16 = *(v0 + 112);

    return sub_1001A833C(v7, v16, v14, v8);
  }
}

uint64_t sub_1000C9798(uint64_t a1)
{
  v4 = *v2;
  sub_10000452C();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 200) = v1;

  if (!v1)
  {
    *(v4 + 208) = a1;
  }

  sub_10000381C();

  return _swift_task_switch(v6);
}

uint64_t sub_1000C98D4()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);
  v6 = *(v0 + 208);

  return v5(v6);
}

uint64_t sub_1000C9984()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v2, v4);

  sub_100002E08();

  return v5();
}

void *sub_1000C9A28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v42 = a2;
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  sub_1000037D4();
  v43 = v8;
  __chkstk_darwin(v9);
  v47 = &v40 - v10;
  v11 = type metadata accessor for Date();
  sub_100003724();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D4();
  v44 = v15;
  __chkstk_darwin(v16);
  v45 = &v40 - v17;
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  static Date.now.getter();
  v21 = sub_10019A1E0(a1);
  if (!v21 || (v22 = sub_100197EB0(v21), , !v22))
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  [a1 responseStatusCode];
  static HTTPHelpers.throwForRetryAfter(statusCode:headers:now:)();
  if (v3)
  {
    (*(v13 + 8))(v20, v11);
  }

  else
  {
    v40 = a3;
    v41 = v11;
    v23 = [a1 data];
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_10012F594(v46);
    sub_10000D170(v24, v26);
    v28 = v47;
    static HTTPHelpers.timestamp(fromSecondsHeader:headers:now:)();
    v29 = v43;
    sub_100012C2C(v28, v43, &qword_1002DA970, &qword_1002318B0);
    v30 = v41;
    if (sub_100004DFC(v29, 1, v41) == 1)
    {
      Date.addingTimeInterval(_:)();
      v31 = sub_100004DFC(v29, 1, v30);
      v32 = v40;
      if (v31 != 1)
      {
        sub_10003CD48(v29, &qword_1002DA970, &qword_1002318B0);
      }
    }

    else
    {
      (*(v13 + 32))(v45, v29, v30);
      v32 = v40;
    }

    static HTTPHelpers.responseTimestamp(from:)();

    v43 = type metadata accessor for AccountDataServerResponse(0);
    v33 = &v32[*(v43 + 20)];
    v34 = v45;
    v35 = v41;
    (*(v13 + 16))(v33, v45, v41);
    v36 = [a1 responseStatusCode];
    v37 = *(v13 + 8);
    v37(v34, v35);
    sub_10003CD48(v47, &qword_1002DA970, &qword_1002318B0);
    result = (v37)(v20, v35);
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v38 = v43;
      v39 = v40;
      (*(v13 + 32))(&v40[*(v43 + 28)], v44, v35);
      result = memcpy(v39, v46, 0x148uLL);
      *&v39[*(v38 + 24)] = v36;
    }
  }

  return result;
}
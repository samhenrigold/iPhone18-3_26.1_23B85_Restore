uint64_t sub_100035830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1000358A4(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (result)
  {
    v5 = result;
    sub_10000F0F4();
    v6 = [a2 rawValues];
    sub_100003514(&qword_100060350, &unk_100046850);
    v7 = sub_1000448EC();

    v9[3] = sub_100003514(&qword_100060358, &unk_100046860);
    v9[0] = v7;
    v8 = a1;
    result = sub_100028F50(v9, a1);
    if (result)
    {
      sub_100044AEC();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000359D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_100043B7C();
  sub_1000061E8();
  v51 = v8;
  __chkstk_darwin(v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004498C();
  sub_1000061E8();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  v49 = *(type metadata accessor for MediaAPIRequest(0) + 44);
  sub_10000464C(a2 + v49, 1, 1, v7);
  v17 = sub_100044ADC();
  v18 = sub_100006644(v17);
  if (v18)
  {
    v19 = sub_100023B70(v18);
  }

  else
  {
    v19 = 0;
  }

  *(a2 + 8) = v19;
  v20 = sub_100044ADC();
  v21 = sub_100003450(v20);
  v52 = v6;
  if (v21)
  {
    v22 = sub_100002A8C(v21);
  }

  else
  {
    v22 = 0;
  }

  *(a2 + 56) = v22;
  v23 = sub_100044ADC();
  v24 = sub_100044ABC();

  *(a2 + 48) = v24 & 1;
  v25 = sub_100044ADC();
  v26 = sub_100044ACC();
  v28 = v27;

  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  v29 = sub_100044ADC();
  sub_100044ACC();
  v31 = v30;

  if (v31)
  {
    sub_10004497C();
    v32 = sub_10004495C();
    v34 = v33;

    (*(v13 + 8))(v16, v11);
  }

  else
  {
    v32 = 0;
    v34 = 0xF000000000000000;
  }

  *(a2 + 16) = v32;
  *(a2 + 24) = v34;
  v35 = sub_100044ADC();
  v36 = sub_100006644(v35);
  if (v36)
  {
    v37 = sub_100023B70(v36);
  }

  else
  {
    v37 = 0;
  }

  *a2 = v37;
  v38 = sub_100044ADC();
  sub_100044ACC();
  v40 = v39;

  if (v40)
  {
    v41 = v52;
    sub_100043B5C();

    if (sub_1000046E4(v41, 1, v7) == 1)
    {
      sub_100028EE8(v41);
    }

    else
    {
      v42 = v50;
      v43 = *(v51 + 32);
      v43(v50, v41, v7);
      v44 = v49;
      sub_100028EE8(a2 + v49);
      v43((a2 + v44), v42, v7);
      sub_10000464C(a2 + v44, 0, 1, v7);
    }
  }

  v45 = sub_100044ADC();
  v46 = sub_100044AAC();
  v48 = v47;

  if ((v48 & 1) == 0)
  {
    *(a2 + 64) = v46;
    *(a2 + 72) = 0;
  }
}

uint64_t type metadata accessor for MediaAPIRequest(uint64_t a1)
{
  result = qword_100061828;
  if (!qword_100061828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100035ECC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
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
    v9 = sub_100003514(&qword_100060488, &unk_100046970);
    v10 = a1 + *(a3 + 44);

    return sub_1000046E4(v10, a2, v9);
  }
}

void *sub_100035F80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_100003514(&qword_100060488, &unk_100046970);
    v8 = v5 + *(a4 + 44);

    return sub_10000464C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10003600C(uint64_t a1)
{
  sub_100036180(319, &qword_100060EC0, &qword_100060EC8, &unk_100047540);
  if (v1 <= 0x3F)
  {
    sub_100028B6C(319, &qword_100061838, &type metadata for Data);
    if (v2 <= 0x3F)
    {
      sub_100028B6C(319, &qword_100060ED8, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_100036180(319, &qword_100061840, &qword_100061310, &unk_100047AB0);
        if (v4 <= 0x3F)
        {
          sub_1000361D4(319, &unk_100061848, type metadata accessor for AMSMediaTaskType);
          if (v5 <= 0x3F)
          {
            sub_1000361D4(319, &qword_100061028, &type metadata accessor for URL);
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

void sub_100036180(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000A584(a3, a4);
    v5 = sub_100044B3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000361D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100044B3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100036228(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  v6 = sub_1000363AC(a2);
  if (v6)
  {
    v7 = v6;
    sub_10000F0F4();
    v13 = sub_100003514(&qword_100060060, "lZ");
    v12[0] = v7;
    v8 = a1;

    result = sub_100028F50(v12, a1);
    if (result)
    {

      sub_100044AEC();
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_5:
  v9 = sub_100036418(a2);
  if (!v9)
  {
    return v5;
  }

  v10 = v9;
  sub_10000F0F4();
  v13 = sub_100003514(&qword_100060338, qword_1000466E8);
  v12[0] = v10;
  v11 = a1;

  result = sub_100028F50(v12, a1);
  if (result)
  {

    sub_100044AEC();
    return v5;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1000363AC(void *a1)
{
  v1 = [a1 responseDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1000448EC();

  return v3;
}

uint64_t sub_100036418(void *a1)
{
  v1 = [a1 responseDataItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100003514(&qword_100060060, "lZ");
  v3 = sub_100044A1C();

  return v3;
}

uint64_t sub_100036484(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000364C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100036510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_100044DAC();
  }
}

uint64_t sub_10003652C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_100044DAC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000365E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003652C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_10003660C(uint64_t a1)
{
  v2 = sub_100036A30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036648(uint64_t a1)
{
  v2 = sub_100036A30();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100036684(void *a1)
{
  v3 = sub_100003514(&qword_100061890, &qword_100048100);
  sub_1000061E8();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_100004454(a1, a1[3]);
  sub_100036A30();
  sub_100044E6C();
  if (!v1)
  {
    v9 = sub_100044D1C();
    (*(v5 + 8))(v8, v3);
  }

  sub_100004408(a1);
  return v9;
}

uint64_t sub_1000367D4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003514(&qword_1000618A0, &qword_100048108);
  sub_1000061E8();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_100004454(a1, a1[3]);
  sub_100036A30();
  sub_100044E7C();
  sub_100044D5C();
  return (*(v6 + 8))(v9, v4);
}

void *sub_100036908@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100036684(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

ValueMetadata *sub_100036950(uint64_t a1, void *a2)
{
  sub_100044C4C(27);
  sub_100003514(&qword_1000618A8, &qword_100048110);
  v4 = sub_10004499C();

  v6._object = 0x800000010004A960;
  v6._countAndFlagsBits = 0xD000000000000015;
  sub_1000449CC(v6);
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_1000449CC(v7);
  v8._countAndFlagsBits = 32010;
  v8._object = 0xE200000000000000;
  sub_1000449CC(v8);
  return v4;
}

unint64_t sub_100036A30()
{
  result = qword_100061898;
  if (!qword_100061898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061898);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaClient.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100036B20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100036B5C()
{
  result = qword_1000618B0;
  if (!qword_1000618B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618B0);
  }

  return result;
}

unint64_t sub_100036BB4()
{
  result = qword_1000618B8;
  if (!qword_1000618B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618B8);
  }

  return result;
}

unint64_t sub_100036C0C()
{
  result = qword_1000618C0;
  if (!qword_1000618C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618C0);
  }

  return result;
}

uint64_t sub_100036C60(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003514(&qword_100061918, &unk_100048460);
    v2 = sub_100044CFC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1000034B8(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000476C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000476C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000476C(v31, v32);
    result = sub_100044BDC(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v17];
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v23 = v2[6] + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_10000476C(v32, (v2[7] + 32 * v18));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100036F24(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003514(&qword_100061910, &unk_100048450);
    v2 = sub_100044CFC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v13 = *v11;
    v12 = v11[1];

    sub_100003514(&qword_100060350, &unk_100046850);
    swift_dynamicCast();
    result = sub_100006DFC(v13, v12);
    v14 = result;
    if (v15)
    {
      v16 = (v2[6] + 16 * result);
      *v16 = v13;
      v16[1] = v12;

      *(v2[7] + 8 * v14) = v21;
      result = swift_unknownObjectRelease();
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      *(v2[7] + 8 * result) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_20;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t static MetricsContext.== infix(_:_:)(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a1 ^ a3))
  {
    return 0;
  }

  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    sub_100037218();
    v7 = sub_100036C60(a2);
    v8 = sub_100037370(v7);
    sub_100036C60(a4);
    isa = sub_1000448DC().super.isa;

    v4 = [v8 isEqualToDictionary:isa];
  }

  return v4;
}

unint64_t sub_100037218()
{
  result = qword_1000618C8;
  if (!qword_1000618C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000618C8);
  }

  return result;
}

uint64_t sub_10003725C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D796E6F6E417369 && a2 == 0xEB0000000073756FLL;
  if (v4 || (sub_100044DAC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616C7265766FLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_100044DAC();

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

uint64_t sub_100037330(char a1)
{
  if (a1)
  {
    return 0x79616C7265766FLL;
  }

  else
  {
    return 0x6D796E6F6E417369;
  }
}

id sub_100037370(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_1000448DC().super.isa;

  v3 = [v1 initWithDictionary:isa];

  return v3;
}

uint64_t sub_10003741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003725C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100037328();
  *a1 = result;
  return result;
}

uint64_t sub_10003748C(uint64_t a1)
{
  v2 = sub_1000377EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000374C8(uint64_t a1)
{
  v2 = sub_1000377EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t MetricsContext.init(from:)(void *a1)
{
  sub_100003514(&qword_1000618D0, &unk_100048230);
  sub_1000061E8();
  __chkstk_darwin(v3);
  v4 = a1[3];
  sub_100004454(a1, v4);
  sub_1000377EC();
  sub_100044E6C();
  if (!v1)
  {
    LOBYTE(v17[0]) = 0;
    LOBYTE(v4) = sub_100044D2C();
    sub_10002A818();
    sub_100044D4C();
    v8 = v17[0];
    v9 = v17[1];
    v10 = objc_opt_self();
    v16 = v8;
    isa = sub_100043B9C().super.isa;
    v17[0] = 0;
    v12 = [v10 JSONObjectWithData:isa options:0 error:v17];

    if (v12)
    {
      v13 = v17[0];
      sub_100044B5C();
      sub_100023364(v16, v9);
      swift_unknownObjectRelease();
      v14 = sub_100037F68();
      v15(v14);
      sub_100003514(&qword_100060050, &qword_1000469B0);
      swift_dynamicCast();
    }

    else
    {
      v4 = v17[0];
      sub_100043AAC();

      swift_willThrow();
      sub_100023364(v16, v9);
      v5 = sub_100037F68();
      v6(v5);
    }
  }

  sub_100004408(a1);
  return v4 & 1;
}

unint64_t sub_1000377EC()
{
  result = qword_1000618D8;
  if (!qword_1000618D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618D8);
  }

  return result;
}

uint64_t MetricsContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003514(&qword_1000618E0, &qword_100048240);
  sub_1000061E8();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  sub_100004454(a1, a1[3]);
  sub_1000377EC();
  sub_100044E7C();
  LOBYTE(v22[0]) = 0;
  sub_100044D6C();
  if (v3 || !a3)
  {
    return (*(v8 + 8))(v11, v6);
  }

  v13 = objc_opt_self();
  isa = sub_1000448DC().super.isa;
  v22[0] = 0;
  v15 = [v13 dataWithJSONObject:isa options:0 error:v22];

  v16 = v22[0];
  if (!v15)
  {
    v20 = v16;
    sub_100043AAC();

    swift_willThrow();
    return (*(v8 + 8))(v11, v6);
  }

  v17 = sub_100043BAC();
  v19 = v18;

  v22[0] = v17;
  v22[1] = v19;
  v21[7] = 1;
  sub_10002A8C8();
  sub_100044D8C();
  (*(v8 + 8))(v11, v6);
  return sub_100023364(v17, v19);
}

uint64_t sub_100037AB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = MetricsContext.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

ValueMetadata *MetricsContext.description.getter(char a1, uint64_t a2)
{
  sub_100044C4C(45);
  sub_100003514(&qword_1000618E8, &qword_100048248);
  v4 = sub_10004499C();

  v10._object = 0x800000010004A980;
  v10._countAndFlagsBits = 0xD000000000000016;
  sub_1000449CC(v10);
  if (a1)
  {
    v5._countAndFlagsBits = 1702195828;
  }

  else
  {
    v5._countAndFlagsBits = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v5._object = v6;
  sub_1000449CC(v5);

  v11._countAndFlagsBits = 0x65766F202020200ALL;
  v11._object = 0xEE00203A79616C72;
  sub_1000449CC(v11);
  if (a2)
  {

    sub_100003514(&qword_1000618F0, &qword_100048250);
    v7._countAndFlagsBits = sub_10004499C();
    object = v7._object;
  }

  else
  {
    object = 0xE900000000000064;
    v7._countAndFlagsBits = 0x656E696665646E75;
  }

  v7._object = object;
  sub_1000449CC(v7);

  v12._countAndFlagsBits = 8194601;
  v12._object = 0xE300000000000000;
  sub_1000449CC(v12);
  return v4;
}

uint64_t sub_100037CA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_100037CFC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MetricsContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100037E28);
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

unint64_t sub_100037E64()
{
  result = qword_1000618F8;
  if (!qword_1000618F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000618F8);
  }

  return result;
}

unint64_t sub_100037EBC()
{
  result = qword_100061900;
  if (!qword_100061900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061900);
  }

  return result;
}

unint64_t sub_100037F14()
{
  result = qword_100061908;
  if (!qword_100061908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061908);
  }

  return result;
}

uint64_t sub_100037FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000444BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  *(v3 + qword_100061920) = 0;
  (*(v6 + 16))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v8 = sub_10004438C();
  sub_1000305B0();

  sub_1000443BC();
  (*(v6 + 8))(a3, v5);
  v9 = *(v8 + qword_100061920);
  *(v8 + qword_100061920) = v11[1];

  return v8;
}

uint64_t ObjectGraph.deinit()
{
  v0 = sub_1000443DC();

  return v0;
}

uint64_t ObjectGraph.__deallocating_deinit()
{
  v0 = sub_1000443DC();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t type metadata accessor for ObjectGraph(uint64_t a1)
{
  result = qword_100061928;
  if (!qword_100061928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100038290(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  sub_100003514(a3, a4);
  v14 = sub_10004482C();
  v15 = sub_100044A5C();
  sub_10000464C(v13, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v14;

  sub_100039BCC(0, 0, v13, a6, v16);

  return v14;
}

uint64_t sub_1000383C0(uint64_t a1, uint64_t a2, int a3)
{
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v3 = sub_10004413C();
  sub_1000061E8();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10001E7F8();
  v9 = v8 - v7;
  v34 = sub_1000440CC();
  sub_1000061E8();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_10001E7F8();
  v15 = v14 - v13;
  v16 = sub_10004411C();
  sub_1000061E8();
  v18 = v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v30[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v24 = &v30[-v23];
  sub_1000440DC();
  v25 = &enum case for JetPackSigningPolicy.required(_:);
  if ((v31 & 1) == 0)
  {
    v25 = &enum case for JetPackSigningPolicy.ignore(_:);
  }

  (*(v18 + 104))(v24, *v25, v16);
  (*(v18 + 16))(v22, v24, v16);
  v37 = sub_10004415C();
  v38 = &protocol witness table for JetPackManagedKeyProvider;
  sub_1000049E0(v36);
  sub_10004414C();
  sub_10004409C();
  sub_100043B4C();
  sub_10004412C();
  v37 = v3;
  v38 = &protocol witness table for JetPackFileStreamSource;
  v26 = sub_1000049E0(v36);
  (*(v5 + 16))(v26, v9, v3);
  v27 = sub_1000440AC();
  v35[3] = sub_100034B5C();
  v35[4] = &protocol witness table for OS_dispatch_queue;
  v35[0] = v27;
  v28 = sub_1000440BC();
  (*(v5 + 8))(v9, v3);
  (*(v11 + 8))(v15, v34);
  (*(v18 + 8))(v24, v16);
  sub_100004408(v35);
  sub_100004408(v36);
  return v28;
}

uint64_t sub_1000386D4@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1000440FC();
  if (!v3)
  {
    if (v6 >> 60 == 15)
    {
      swift_willThrow();
      return swift_errorRetain();
    }

    else
    {
      *a3 = result;
      a3[1] = v6;
    }
  }

  return result;
}

uint64_t sub_100038738(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004417C();
  sub_1000061E8();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10001E7F8();
  v8 = v7 - v6;
  v9 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v12 = sub_100043B7C();
  sub_10000464C(v11, 1, 1, v12);
  sub_10004416C();
  sub_1000440EC();
  (*(v4 + 8))(v8, v2);
  return sub_10000470C(v11, &qword_100060488, &unk_100046970);
}

uint64_t sub_1000388A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004461C();
  sub_1000061E8();
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004410C();
  sub_1000061E8();
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v16);
  (*(v13 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  (*(v6 + 16))(v10, a2, v4);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v15 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v17, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  (*(v6 + 32))(v19 + v18, v10, v4);
  return sub_100038290(&unk_1000484A0, v19, &qword_100061978, &qword_1000484A8, &unk_10005AFE0, &unk_1000484B8);
}

uint64_t sub_100038ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = sub_1000444FC();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_10004461C();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_10004445C();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  sub_10004417C();
  v3[29] = swift_task_alloc();
  v7 = sub_10004453C();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_100038CC0, 0, 0);
}

uint64_t sub_100038CC0()
{
  v1 = v0[18];
  v2 = sub_10004410C();
  v0[5] = v2;
  v0[6] = &protocol witness table for DiskJetPackResourceBundle;
  v3 = sub_1000049E0(v0 + 2);
  (*(*(v2 - 8) + 16))(v3, v1, v2);
  sub_10004418C();
  sub_10004452C();
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[26];
  (*(v0[24] + 16))(v0[25], v0[19], v0[23]);
  sub_10004444C();
  v0[10] = v6;
  v0[11] = &protocol witness table for LocalizedStringsBundle;
  v10 = sub_1000049E0(v0 + 7);
  (*(v5 + 16))(v10, v4, v6);
  v0[15] = v9;
  v0[16] = &protocol witness table for BagLanguageSource;
  v11 = sub_1000049E0(v0 + 12);
  (*(v8 + 16))(v11, v7, v9);
  sub_1000444EC();
  v0[33] = sub_10004451C();
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_100038F34;
  v13 = v0[22];

  return static AppleServicesLocalizer.load(using:)(v13);
}

uint64_t sub_100038F34()
{
  sub_10003A328();
  v3 = v2;
  sub_10003A308();
  v5 = v4;
  v6 = *v1;
  sub_10000EAE0();
  *v7 = v6;
  *(v5 + 280) = v0;

  if (v0)
  {
    v8 = sub_100039164;
  }

  else
  {
    *(v5 + 288) = v3;
    v8 = sub_10003904C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10003904C()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[27];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[17];
  v11[3] = v0[33];
  v11[4] = &protocol witness table for AppleServicesLocalizer;
  *v11 = v1;
  (*(v8 + 8))(v9, v10);
  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  sub_10002DEF4();

  return v12();
}

uint64_t sub_100039164()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  sub_10002DEF4();

  return v7();
}

uint64_t sub_100039258()
{
  v1 = sub_10004410C();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_10004461C();
  sub_1000061E8();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v14 + v15, v16 | 7);
}

uint64_t sub_100039388()
{
  sub_10003A328();
  v2 = v1;
  v4 = v3;
  v5 = *(sub_10004410C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10004461C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000394C0;

  return sub_100038ABC(v4, v0 + v6, v0 + v9);
}

uint64_t sub_1000394C0()
{
  sub_10000EAD4();
  sub_10003A308();
  v1 = *v0;
  sub_10000EAE0();
  *v2 = v1;

  sub_10002DEF4();

  return v3();
}

uint64_t sub_1000395A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 112) = v7;
  *v7 = v6;
  v7[1] = sub_100039694;

  return v9(v6 + 16);
}

uint64_t sub_100039694()
{
  sub_10000EAD4();
  sub_10003A308();
  v2 = *v1;
  sub_10000EAE0();
  *v3 = v2;
  *(v4 + 120) = v0;

  if (v0)
  {
    v5 = sub_1000397FC;
  }

  else
  {
    v5 = sub_100039798;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100039798()
{
  sub_10000EAD4();
  sub_1000447EC();
  sub_100015C44(v0 + 16);
  sub_10002DEF4();

  return v1();
}

uint64_t sub_1000397FC()
{
  sub_10000EAD4();
  sub_1000447CC();

  sub_10002DEF4();

  return v0();
}

uint64_t sub_100039864(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 64) = v7;
  *v7 = v6;
  v7[1] = sub_100039958;

  return v9(v6 + 16);
}

uint64_t sub_100039958()
{
  sub_10000EAD4();
  sub_10003A308();
  v2 = *v1;
  sub_10000EAE0();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_100039AC0;
  }

  else
  {
    v5 = sub_100039A5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100039A5C()
{
  sub_10000EAD4();
  sub_1000447EC();
  sub_100004408((v0 + 16));
  sub_10002DEF4();

  return v1();
}

uint64_t sub_100039AC0()
{
  sub_10000EAD4();
  sub_1000447CC();

  sub_10002DEF4();

  return v0();
}

uint64_t sub_100039B28()
{
  sub_10003A314();
  v0 = swift_task_alloc();
  v1 = sub_10003A2D8(v0);
  *v1 = v2;
  v3 = sub_10003A2AC(v1);

  return v4(v3);
}

uint64_t sub_100039BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_100039E98(a3, v22 - v10);
  v12 = sub_100044A5C();
  if (sub_1000046E4(v11, 1, v12) == 1)
  {
    sub_10000470C(v11, &qword_100060A50, &unk_100047080);
  }

  else
  {
    sub_100044A4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_100044A3C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1000449AC() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10000470C(a3, &qword_100060A50, &unk_100047080);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000470C(a3, &qword_100060A50, &unk_100047080);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_100039E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060A50, &unk_100047080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039F08(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10003A000;

  return v6(a1);
}

uint64_t sub_10003A000()
{
  sub_10000EAD4();
  sub_10003A308();
  v1 = *v0;
  sub_10000EAE0();
  *v2 = v1;

  sub_10002DEF4();

  return v3();
}

uint64_t sub_10003A0E4()
{
  sub_10003A328();
  v0 = swift_task_alloc();
  v1 = sub_10003A2D8(v0);
  *v1 = v2;
  v3 = sub_10003A2E8(v1);

  return v4(v3);
}

uint64_t sub_10003A178()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003A1B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003A1FC()
{
  sub_10003A314();
  v0 = swift_task_alloc();
  v1 = sub_10003A2D8(v0);
  *v1 = v2;
  v3 = sub_10003A2AC(v1);

  return v4(v3);
}

id sub_10003A334(uint64_t a1)
{
  v1 = sub_100043A9C();
  v2 = [v1 ams_sanitizedForSecureCoding];

  return v2;
}

uint64_t sub_10003A378(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a2;
  v44 = a3;
  v48 = a1;
  v4 = sub_100043B7C();
  sub_1000061E8();
  v6 = v5;
  __chkstk_darwin(v7);
  v45 = v8;
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004461C();
  sub_1000061E8();
  v41 = v10;
  v42 = v9;
  __chkstk_darwin(v9);
  v40 = v11;
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v13 = sub_100043DBC();
  v47 = sub_1000060A4(v13, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v50 = type metadata accessor for RemoteJavaScriptLoader();
  v49[0] = v3;

  v14 = AMSLogKey();
  if (v14)
  {
    v15 = v14;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v49);
  sub_100043CFC();
  v50 = v4;
  v16 = sub_1000049E0(v49);
  v17 = *(v6 + 16);
  v38 = v4;
  v39 = v17;
  v17(v16, v48, v4);
  sub_100043D0C();
  sub_100006100(v49);
  sub_100043D9C();

  v19 = v43;
  v18 = v44;
  v20 = sub_10003045C(v43, v44);
  v47 = v20;
  sub_100003514(&qword_100060E40, &qword_100047528);
  sub_100043AFC(v21);
  v23 = v22;
  v24 = [v20 requestWithMethod:2 URL:v22 parameters:0];

  sub_10004481C();
  v25 = v41;
  v26 = v42;
  (*(v41 + 16))(v12, v19, v42);
  v27 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v28 = (v40 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  (*(v25 + 32))(v29 + v27, v12, v26);
  *(v29 + v28) = v18;
  v30 = sub_10004448C();
  v50 = v30;
  v51 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v49);
  v31 = v18;
  sub_10004447C();
  sub_100003514(&qword_100060DA8, &unk_100047470);
  sub_1000326D8(&qword_100061A20, &qword_100060DA8, &unk_100047470);
  sub_1000447DC();

  sub_100004408(v49);
  v32 = v46;
  v33 = v38;
  v39(v46, v48, v38);
  v34 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v35 = swift_allocObject();
  (*(v6 + 32))(v35 + v34, v32, v33);
  v50 = v30;
  v51 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v49);
  sub_10004447C();
  sub_100003514(&qword_100061A28, &unk_100048518);
  sub_1000326D8(&qword_100061A30, &qword_100061A28, &unk_100048518);
  sub_1000447DC();

  sub_100004408(v49);
  v50 = v30;
  v51 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v49);
  sub_10004447C();
  v36 = sub_10004476C();

  sub_100004408(v49);
  return v36;
}

uint64_t sub_10003A950(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = sub_1000304EC(a2, a3);
  sub_100003514(&qword_100060DA8, &unk_100047470);
  v5 = [v4 dataTaskPromiseWithRequest:v3];
  v6 = sub_10004481C();

  return v6;
}

uint64_t sub_10003A9CC(id *a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-1] - v5;
  v7 = sub_10004498C();
  __chkstk_darwin(v7 - 8);
  v8 = [*a1 data];
  v9 = sub_100043BAC();
  v11 = v10;

  sub_10004497C();
  sub_10004496C();
  v13 = v12;
  sub_100023364(v9, v11);
  sub_100003514(&qword_100061A28, &unk_100048518);
  if (v13)
  {
    v14 = sub_100043B7C();
    (*(*(v14 - 8) + 16))(v6, a2, v14);
    sub_10000464C(v6, 0, 1, v14);
    v17[3] = sub_10004484C();
    v17[4] = &protocol witness table for JSSource;
    sub_1000049E0(v17);
    sub_10004483C();
    return sub_1000447BC();
  }

  else
  {
    sub_10003AE90();
    swift_allocError();
    return sub_1000447AC();
  }
}

double sub_10003ABC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000ABA0(a1, a2);
  v3 = sub_1000448FC();
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_10003AC78()
{
  sub_10004461C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003AD08(uint64_t *a1)
{
  v3 = *(sub_10004461C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003A950(a1, v1 + v4, v5);
}

uint64_t sub_10003ADA4()
{
  sub_100043B7C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003AE20(id *a1)
{
  v3 = *(sub_100043B7C() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10003A9CC(a1, v4);
}

unint64_t sub_10003AE90()
{
  result = qword_100061A38;
  if (!qword_100061A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteJavaScriptLoader.LoadError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10003AF80);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10003AFBC()
{
  result = qword_100061A40;
  if (!qword_100061A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061A40);
  }

  return result;
}

uint64_t sub_10003B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_bag;
  sub_10004461C();
  sub_10002DF24();
  (*(v17 + 32))(v8 + v16, a2);
  *(v8 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_clientInfo) = a3;
  v18 = (v8 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_mediaClient);
  *v18 = a4;
  v18[1] = a5;
  v19 = v8 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_metricsContext;
  *v19 = a6;
  *(v19 + 8) = a7;
  v20 = OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_url;
  sub_100043B7C();
  sub_10002DF24();
  (*(v21 + 32))(v8 + v20, a8);
  return v8;
}

uint64_t sub_10003B118()
{
  sub_10003B2B4();
  sub_10003B4A4(v6);
  sub_10003B548(v5);
  sub_10003B6C0(v4, v3);
  sub_100004454(v3, v3[3]);
  sub_10004454C();
  v2[3] = sub_10004448C();
  v2[4] = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v2);
  sub_10004447C();
  sub_1000443CC();
  v0 = sub_10004476C();

  sub_100004408(v4);
  sub_100004408(v5);
  sub_100004408(v6);
  sub_100004408(v2);
  sub_100004408(v3);
  return v0;
}

uint64_t sub_10003B21C(uint64_t a1)
{
  type metadata accessor for ObjectGraph(0);

  v1 = sub_1000443EC();

  sub_10004439C();

  return v1;
}

uint64_t sub_10003B280@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003B21C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003B2B4()
{
  v1 = v0;
  v2 = type metadata accessor for BaseBootstrap(0);
  v3 = (v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v7 = OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_bag;
  v8 = v3[7];
  sub_10004461C();
  sub_10002DF24();
  (*(v9 + 16))(&v5[v8], v1 + v7);
  v10 = *(v1 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_clientInfo);
  v11 = *(v1 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_mediaClient);
  v12 = *(v1 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_mediaClient + 8);
  *v5 = v6;
  *&v5[v3[8]] = v10;
  v13 = &v5[v3[9]];
  *v13 = v11;
  *(v13 + 1) = v12;
  v14 = v6;
  v15 = v10;

  sub_100004B1C();
  sub_10003C060(v5);
  sub_1000447FC();

  sub_100004454(v21, v21[3]);
  v16 = *(v1 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_metricsContext + 8);
  LOBYTE(v19[0]) = *(v1 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_metricsContext);
  v19[1] = v16;
  sub_10004457C();
  sub_100004454(v20, v20[3]);
  sub_100043B7C();
  sub_10004457C();
  sub_10003C0BC(v19);
  sub_100004408(v19);
  sub_100004408(v20);
  return sub_100004408(v21);
}

uint64_t sub_10003B4A4(void *a1)
{
  sub_100004454(a1, a1[3]);
  type metadata accessor for ServiceRequestHandler();
  swift_allocObject();
  sub_10004457C();

  sub_10003C0BC(v2);
  return sub_100004408(v2);
}

uint64_t sub_10003B548(void *a1)
{
  sub_100004454(a1, a1[3]);
  type metadata accessor for URLSessionHandler();
  sub_10004456C();
  sub_10003C0BC(v2);
  return sub_100004408(v2);
}

void sub_10003B5D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for URLSessionHandler();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC16UtilityExtension17URLSessionHandler_objectGraph] = a1;
  v9.receiver = v5;
  v9.super_class = v4;

  v6 = objc_msgSendSuper2(&v9, "init");
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  sub_1000443CC();
  sub_10004462C();
  v7 = v10;
  v8 = v6;
  [v7 setDelegate:{v8, v9.receiver, v9.super_class}];

  *a2 = v8;
}

id sub_10003B6C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v31 = sub_10004461C();
  sub_1000061E8();
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100043B7C();
  sub_1000061E8();
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v14 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004454(a1, a1[3]);
  result = [objc_allocWithZone(JSVirtualMachine) init];
  if (result)
  {
    v16 = result;
    sub_10000477C(0, &qword_100060490, JSVirtualMachine_ptr);
    v36[0] = v16;
    sub_10004457C();

    sub_100004454(v39, v39[3]);
    sub_10003C0F8();
    v28[2] = v37;
    v28[3] = v38;
    v28[1] = sub_100004454(v36, v37);
    v17 = v30;
    v28[0] = *(v30 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_clientInfo);
    v18 = OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_bag;
    v19 = v10;
    v20 = v8;
    (*(v10 + 16))(v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_url, v8);
    v21 = v29;
    v22 = v31;
    (*(v4 + 16))(v29, v17 + v18, v31);
    v23 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v24 = (v12 + *(v4 + 80) + v23) & ~*(v4 + 80);
    v25 = swift_allocObject();
    (*(v19 + 32))(v25 + v23, v14, v20);
    (*(v4 + 32))(v25 + v24, v21, v22);
    v26 = v28[0];
    *(v25 + ((v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28[0];
    v27 = v26;
    sub_10004455C();

    sub_100004454(v35, v35[3]);
    sub_10003C0F8();
    sub_100004454(v34, v34[3]);
    type metadata accessor for JSDataProvider();
    sub_10004456C();
    sub_100004454(v33, v33[3]);
    sub_10003C0F8();
    sub_100004408(v33);
    sub_100004408(v34);
    sub_100004408(v35);
    sub_100004408(v36);
    return sub_100004408(v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003BACC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for JSSourceLoader();
  swift_allocObject();
  v8 = sub_10002FC50(a2, a3, a4, a1);

  return v8;
}

uint64_t sub_10003BB48@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSDataProvider();
  swift_allocObject();

  result = sub_100013800(v4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10003BBAC()
{
  v1 = OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_bag;
  sub_10004461C();
  sub_10002DF24();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC16UtilityExtension16ServiceBootstrap_url;
  sub_100043B7C();
  sub_10002DF24();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_10003BC7C()
{
  sub_10003BBAC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ServiceBootstrap(uint64_t a1)
{
  result = qword_100061A98;
  if (!qword_100061A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003BD28(uint64_t a1)
{
  result = sub_10004461C();
  if (v2 <= 0x3F)
  {
    result = sub_100043B7C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10003BE1C()
{
  v1 = sub_100043B7C();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_10004461C();
  sub_1000061E8();
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v5 + v7 + v13) & ~v13;
  v15 = v4 | v13;
  v16 = (*(v12 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return _swift_deallocObject(v0, v16 + 8, v15 | 7);
}

uint64_t sub_10003BF60(uint64_t a1)
{
  v3 = *(sub_100043B7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10004461C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10003BACC(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_10003C060(uint64_t a1)
{
  v2 = type metadata accessor for BaseBootstrap(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10003C0BC(void *a1)
{
  sub_100004454(a1, v1);

  return sub_10004458C();
}

void *sub_10003C0F8()
{

  return sub_10004458C();
}

void *sub_10003C114()
{
  type metadata accessor for ServiceConnection();
  v0 = swift_allocObject();
  result = sub_10003CD64();
  qword_100065228 = v0;
  return result;
}

uint64_t sub_10003C150()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0;
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003C4AC;
  aBlock[3] = &unk_10005B200;
  v2 = _Block_copy(aBlock);
  v3 = v1;

  v4 = [v3 remoteObjectProxyWithErrorHandler:v2];
  _Block_release(v2);

  sub_100044B5C();
  swift_unknownObjectRelease();
  sub_100003514(&qword_100061D08, &unk_1000486B0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10003C28C(uint64_t a1, uint64_t a2)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v3 = sub_100043DBC();
  sub_1000060A4(v3, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v10 = type metadata accessor for ServiceConnection();
  v9[0] = a2;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v9);
  sub_100043CFC();
  swift_getErrorValue();
  v10 = v8;
  v6 = sub_1000049E0(v9);
  (*(*(v8 - 8) + 16))(v6);
  sub_100043D0C();
  sub_100006100(v9);
  sub_100043D8C();
}

void sub_10003C4AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10003C514(void **a1)
{
  v2 = v1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v20 = type metadata accessor for ServiceConnection();
  v17 = v2;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v17);
  sub_100043CFC();
  v20 = sub_10003CF60();
  v17 = a1;
  v7 = a1;
  sub_100043D0C();
  sub_100006100(&v17);
  sub_100043D9C();

  v8 = *(v2 + 32);
  *(v2 + 32) = v7;
  v9 = v7;

  v10 = objc_opt_self();
  v11 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP16UtilityExtension24ClientConnectionProtocol_];
  [v9 setRemoteObjectInterface:v11];
  v12 = [v10 interfaceWithProtocol:&OBJC_PROTOCOL____TtP16UtilityExtension25ServiceConnectionProtocol_];
  [v9 setExportedInterface:v12];
  v13 = swift_allocObject();
  swift_weakInit();
  v21 = sub_10003CFDC;
  v22 = v13;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10003CAE8;
  v20 = &unk_10005B1B0;
  v14 = _Block_copy(&v17);

  [v9 setInvalidationHandler:v14];
  _Block_release(v14);
  v21 = sub_10003CFFC;
  v22 = v2;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10003CAE8;
  v20 = &unk_10005B1D8;
  v15 = _Block_copy(&v17);

  [v9 setInterruptionHandler:v15];
  _Block_release(v15);
  [v9 setExportedObject:*(v2 + 16)];
  [v9 resume];

  return 1;
}

void sub_10003C900(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v3 = sub_100043DBC();
    sub_1000060A4(v3, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    v7[3] = type metadata accessor for ServiceConnection();
    v7[0] = v2;

    v4 = AMSLogKey();
    if (v4)
    {
      v5 = v4;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v7);
    sub_100043CFC();
    sub_100043D9C();

    v6 = *(v2 + 32);
    *(v2 + 32) = 0;
  }
}

uint64_t sub_10003CAE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10003CB2C(uint64_t a1)
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v2 = sub_100043DBC();
  sub_1000060A4(v2, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v6[3] = type metadata accessor for ServiceConnection();
  v6[0] = a1;

  v3 = AMSLogKey();
  if (v3)
  {
    v4 = v3;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v6);
  sub_100043CFC();
  sub_100043D9C();
}

uint64_t sub_10003CCDC()
{

  return v0;
}

uint64_t sub_10003CD0C()
{
  sub_10003CCDC();

  return _swift_deallocClassInstance(v0, 40, 7);
}

void *sub_10003CD64()
{
  type metadata accessor for ServiceConnectionExportedObject(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtC16UtilityExtension31ServiceConnectionExportedObject_serviceOptions;
  v3 = type metadata accessor for ServiceOptions(0);
  sub_10000464C(v1 + v2, 1, 1, v3);
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

id sub_10003CDD4()
{
  *&v0[OBJC_IVAR____TtC16UtilityExtension20XPCServiceConnection_connectionListener] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServiceConnection();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10003CE38(uint64_t a1, void **a2)
{
  if (qword_10005FF38 != -1)
  {
    swift_once();
  }

  sub_10003C514(a2);
  return 1;
}

id sub_10003CEF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCServiceConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10003CF60()
{
  result = qword_100061CF8;
  if (!qword_100061CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100061CF8);
  }

  return result;
}

uint64_t sub_10003CFA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003CFE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D01C(uint64_t a1, uint64_t a2)
{
  sub_100041BCC();
  sub_100043A3C();
  return v3;
}

uint64_t sub_10003D33C(uint64_t a1, uint64_t a2)
{
  sub_100041B78();
  sub_100043A3C();
  return v3;
}

uint64_t sub_10003D690(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  sub_1000447CC();
}

uint64_t sub_10003D704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v3 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_100003514(&qword_100061E58, &qword_100048750);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for JSServiceRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_100043A5C();
  swift_allocObject();
  sub_100043A4C();
  sub_100041C20();
  sub_100043A3C();
  v34 = v10;
  v35 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;

  sub_1000423D4(v8, 0, 1, v9);
  sub_100041C78(v8, v14, v15);
  type metadata accessor for JSDataProvider();
  sub_100013414();
  sub_1000443CC();
  sub_10004462C();
  v33 = v39[0];
  sub_100003514(&qword_100060540, &qword_1000469D0);
  v32 = sub_10004482C();
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v16 = sub_100043DBC();
  sub_1000060A4(v16, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v17 = sub_100043D4C();
  sub_10000EA9C(v17);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v39[3] = type metadata accessor for ServiceConnectionExportedObject(0);
  v39[0] = v37;

  v18 = AMSLogKey();
  v19 = v35;
  if (v18)
  {
    v20 = v18;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v39);
  sub_100043CFC();
  sub_100043D9C();

  v21 = sub_100044A5C();
  v22 = v36;
  sub_1000423D4(v36, 1, 1, v21);
  v24 = v23;
  sub_100041CD8(v14, v19, v23);
  v25 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v26 = (v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v28[4] = v33;
  sub_100041C78(v19, v28 + v25, v24);
  v29 = v37;
  *(v28 + v26) = v38;
  *(v28 + v27) = v29;
  v30 = v32;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;

  sub_10003E284(0, 0, v22, &unk_100048760, v28);

  sub_100041FE0();
  return v30;
}

uint64_t sub_10003DC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[22] = a7;
  v8[23] = a8;
  v12 = swift_task_alloc();
  v8[24] = v12;
  *v12 = v8;
  v12[1] = sub_10003DD18;

  return sub_1000149A0((v8 + 17), a5, a6, a4);
}

uint64_t sub_10003DD18()
{
  sub_10000EAD4();
  sub_10003A308();
  v2 = *v1;
  sub_10000EAE0();
  *v3 = v2;
  *(v4 + 200) = v0;

  if (v0)
  {
    v5 = sub_10003E018;
  }

  else
  {
    v5 = sub_10003DE1C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10003DE1C()
{
  v1 = v0[17];
  v2 = v0[18];
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v3 = v0[22];
  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v5 = sub_100043D4C();
  sub_10000EA9C(v5);
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v0[13] = type metadata accessor for ServiceConnectionExportedObject(0);
  v0[10] = v3;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v0 + 10);
  sub_100043CFC();
  sub_100043D9C();

  v0[19] = v1;
  v0[20] = v2;
  sub_1000447EC();
  sub_100023364(v1, v2);
  sub_10002DEF4();

  return v8();
}

uint64_t sub_10003E018()
{
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v1 = v0[22];
  v2 = sub_100043DBC();
  sub_1000060A4(v2, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100013414();
  v3 = sub_100043D4C();
  sub_10000EA9C(v3);
  *(swift_allocObject() + 16) = xmmword_100046830;
  v0[5] = type metadata accessor for ServiceConnectionExportedObject(0);
  v0[2] = v1;

  v4 = AMSLogKey();
  if (v4)
  {
    v5 = v4;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v0 + 2);
  sub_100043CFC();
  swift_getErrorValue();
  v6 = v0[14];
  v7 = v0[15];
  v0[9] = v7;
  v8 = sub_1000049E0(v0 + 6);
  (*(*(v7 - 8) + 16))(v8, v6, v7);
  sub_100043D0C();
  sub_10002D86C((v0 + 6), &qword_100061D00, &qword_1000465F0);
  sub_100043D8C();

  v9 = sub_100043A9C();
  sub_1000447CC();

  sub_10002DEF4();

  return v10();
}

uint64_t sub_10003E284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  sub_10002D80C(a3, v24 - v10, &qword_100060A50, &unk_100047080);
  v12 = sub_100044A5C();
  v13 = sub_1000046E4(v11, 1, v12);

  if (v13 == 1)
  {
    sub_10002D86C(v11, &qword_100060A50, &unk_100047080);
  }

  else
  {
    sub_100044A4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100044A3C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000449AC() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10002D86C(a3, &qword_100060A50, &unk_100047080);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10002D86C(a3, &qword_100060A50, &unk_100047080);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10003E568()
{

  sub_10002D86C(v0 + OBJC_IVAR____TtC16UtilityExtension31ServiceConnectionExportedObject_serviceOptions, &qword_100061E30, &unk_100048740);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ServiceConnectionExportedObject(uint64_t a1)
{
  result = qword_100061D40;
  if (!qword_100061D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003E638(uint64_t a1)
{
  sub_10003E6D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10003E6D4(uint64_t a1)
{
  if (!qword_100061D50)
  {
    type metadata accessor for ServiceOptions(255);
    v1 = sub_100044B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_100061D50);
    }
  }
}

void sub_10003E72C(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void *))
{
  v126 = a7;
  v127 = a8;
  v130 = a5;
  v131 = a6;
  v119 = a3;
  v118 = a2;
  v116 = sub_100043B7C();
  v123 = *(v116 - 8);
  __chkstk_darwin(v116);
  v111 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004461C();
  __chkstk_darwin(v14 - 8);
  v110 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100003514(&qword_100061E28, &qword_100048738);
  __chkstk_darwin(v114);
  v115 = &v104 - v16;
  v17 = sub_100003514(&qword_100061E30, &unk_100048740);
  v18 = __chkstk_darwin(v17 - 8);
  v113 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v112 = &v104 - v21;
  __chkstk_darwin(v20);
  v23 = &v104 - v22;
  v120 = type metadata accessor for ServiceOptions(0);
  v24 = __chkstk_darwin(v120);
  v109 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v125 = &v104 - v26;
  v132 = swift_allocObject();
  v133 = a11;
  *(v132 + 16) = a11;
  _Block_copy(a11);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v117 = v23;
  v121 = a1;
  v124 = a4;
  v27 = sub_100043DBC();
  v134 = sub_1000060A4(v27, qword_100065200);
  v28 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v29 = *(sub_100043D4C() - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v135 = *(v29 + 72);
  v31 = v30 + 2 * v135;
  v129 = v28;
  v32 = swift_allocObject();
  v128 = xmmword_1000468F0;
  *(v32 + 16) = xmmword_1000468F0;
  v33 = type metadata accessor for ServiceConnectionExportedObject(0);
  v137 = v33;
  v136 = a10;

  v34 = AMSLogKey();
  if (v34)
  {
    v35 = v34;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(&v136);
  sub_100043CFC();
  sub_100043D9C();

  sub_100043A5C();
  swift_allocObject();
  sub_100043A4C();
  v131 = sub_10003D01C(v130, v131);
  v37 = v36;

  if (!v37)
  {
    *(swift_allocObject() + 16) = v128;
    v137 = v33;
    v136 = a10;

    v43 = AMSLogKey();
    if (v43)
    {
      v44 = v43;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(&v136);
    sub_100043CFC();
    sub_100043D8C();

    sub_1000419FC();
    swift_allocError();
    *v66 = 0;
    goto LABEL_36;
  }

  swift_allocObject();
  sub_100043A4C();
  v38 = sub_10003D33C(v126, v127);
  v40 = v39;

  if (v40 == 1)
  {

    *(swift_allocObject() + 16) = v128;
    v137 = v33;
    v136 = a10;

    v41 = AMSLogKey();
    if (v41)
    {
      v42 = v41;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(&v136);
    sub_100043CFC();
    sub_100043D8C();

    sub_1000419FC();
    swift_allocError();
    v68 = 1;
LABEL_35:
    *v67 = v68;
LABEL_36:
    v102 = sub_100043A9C();
    v103 = v133;
    v133[2](v133, v102);

    v101 = v103;
    goto LABEL_37;
  }

  v122 = a10;
  sub_10000477C(0, &qword_100061E40, AMSSnapshotBag_ptr);
  v45 = v118;
  v46 = v119;
  sub_10000AC04(v118, v119);
  v47 = sub_10003F788(v45, v46);
  if (!v47)
  {

    sub_100041A50(v38, v40);
    *(swift_allocObject() + 16) = v128;
    v137 = v33;
    v136 = v122;

    v69 = AMSLogKey();
    if (v69)
    {
      v70 = v69;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(&v136);
    sub_100043CFC();
    sub_100043D8C();

    sub_1000419FC();
    swift_allocError();
    v68 = 2;
    goto LABEL_35;
  }

  v48 = v47;
  v108 = v30;
  v107 = v31;
  v118 = v33;
  v119 = v37;
  v49 = v120;
  v50 = *(v123 + 16);
  v51 = v125;
  v52 = v125 + *(v120 + 32);
  v106 = a9;
  v123 += 16;
  v105 = v50;
  (v50)(v52);
  *v51 = v121;
  *(v51 + 8) = v48;
  *(v51 + 16) = v124;
  *(v51 + 24) = v38 & 1;
  *(v51 + 32) = v40;
  v53 = v117;
  sub_100041CD8(v51, v117, type metadata accessor for ServiceOptions);
  sub_10000464C(v53, 0, 1, v49);
  v54 = OBJC_IVAR____TtC16UtilityExtension31ServiceConnectionExportedObject_serviceOptions;
  v55 = v122;
  swift_beginAccess();
  v56 = *(v114 + 48);
  v57 = v48;
  v58 = v115;
  sub_10002D80C(v53, v115, &qword_100061E30, &unk_100048740);
  v114 = v54;
  v59 = v55 + v54;
  v60 = v49;
  sub_10002D80C(v59, v58 + v56, &qword_100061E30, &unk_100048740);
  v61 = sub_1000046E4(v58, 1, v49);
  v130 = v40;
  v126 = v57;
  v127 = v38;
  if (v61 != 1)
  {
    v71 = v112;
    sub_10002D80C(v58, v112, &qword_100061E30, &unk_100048740);
    if (sub_1000046E4(v58 + v56, 1, v60) != 1)
    {
      v78 = v109;
      sub_100041C78(v58 + v56, v109, type metadata accessor for ServiceOptions);
      v79 = v126;
      sub_100041A64(v127, v130);
      v63 = v121;
      v80 = v121;
      v81 = v124;
      v82 = sub_10004269C(v71, v78);
      sub_100041FE0();
      sub_10002D86C(v117, &qword_100061E30, &unk_100048740);
      sub_100041FE0();
      sub_10002D86C(v58, &qword_100061E30, &unk_100048740);
      v75 = v118;
      if (v82)
      {
        goto LABEL_27;
      }

LABEL_22:
      *(swift_allocObject() + 16) = v128;
      v137 = v75;
      v136 = v122;

      v76 = AMSLogKey();
      if (v76)
      {
        v77 = v76;
        sub_10004494C();
      }

      sub_100043D2C();

      sub_100004408(&v136);
      sub_100043CFC();
      sub_100043D9C();

      v83 = v113;
      sub_100041CD8(v125, v113, type metadata accessor for ServiceOptions);
      sub_10000464C(v83, 0, 1, v120);
      v84 = v114;
      v85 = v122;
      swift_beginAccess();
      sub_100041A78(v83, v85 + v84);
      swift_endAccess();
      *(v85 + 16) = 0;

      goto LABEL_27;
    }

    v72 = v126;
    sub_100041A64(v127, v130);
    v63 = v121;
    v73 = v121;
    v74 = v124;
    sub_10002D86C(v117, &qword_100061E30, &unk_100048740);
    sub_100041FE0();
LABEL_21:
    sub_10002D86C(v58, &qword_100061E28, &qword_100048738);
    v75 = v118;
    goto LABEL_22;
  }

  v62 = v57;
  sub_100041A64(v38, v40);
  v63 = v121;
  v64 = v121;
  v65 = v124;
  sub_10002D86C(v53, &qword_100061E30, &unk_100048740);
  if (sub_1000046E4(v58 + v56, 1, v49) != 1)
  {
    goto LABEL_21;
  }

  sub_10002D86C(v58, &qword_100061E30, &unk_100048740);
LABEL_27:
  if (*(v122 + 16))
  {

    sub_100041A50(v127, v130);
  }

  else
  {
    v86 = v110;
    sub_1000445EC();
    v87 = v111;
    v105(v111, v106, v116);
    type metadata accessor for ServiceBootstrap(0);
    swift_allocObject();
    v88 = v86;
    v89 = v124;
    sub_10003B010(v63, v88, v124, v131, v119, v127 & 1, v130, v87);
    v90 = v63;
    v91 = v89;
    v92 = sub_10003B118();

    *(v122 + 16) = v92;
  }

  v93 = *(v122 + 16);
  if (v93)
  {
    v94 = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);

    v95 = sub_100044A7C();
    sub_10004189C(sub_10003A334, 0, v95, v93, &unk_10005B2B0, sub_10000E47C, sub_1000423A8);

    v96 = swift_allocObject();
    v96[2] = v122;
    v96[3] = sub_1000423C8;
    v97 = v132;
    v96[4] = v132;
    v98 = swift_allocObject();
    swift_weakInit();
    v99 = swift_allocObject();
    v99[2] = v98;
    v99[3] = sub_1000423C8;
    v99[4] = v97;
    swift_retain_n();

    v100 = sub_100044A7C();
    v137 = v94;
    v138 = &protocol witness table for OS_dispatch_queue;
    v136 = v100;
    sub_10004478C();

    sub_100041FE0();
    sub_100004408(&v136);
  }

  else
  {
    sub_100041FE0();
  }

  v101 = v133;
LABEL_37:
  _Block_release(v101);
}

id sub_10003F788(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_100043B9C().super.isa;
  v6 = [v4 initWithData:isa];

  sub_100023364(a1, a2);
  return v6;
}

uint64_t sub_10003F800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v5 = sub_100043DBC();
  sub_1000060A4(v5, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v9[3] = type metadata accessor for ServiceConnectionExportedObject(0);
  v9[0] = a2;

  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v9);
  sub_100043CFC();
  sub_100043D9C();

  return a3(0);
}

uint64_t sub_10003F9D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v7 = sub_100043DBC();
    sub_1000060A4(v7, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    *(swift_allocObject() + 16) = xmmword_100046830;
    v13 = type metadata accessor for ServiceConnectionExportedObject(0);
    v12[0] = v6;

    v8 = AMSLogKey();
    if (v8)
    {
      v9 = v8;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v12);
    sub_100043CFC();
    swift_getErrorValue();
    v13 = v11;
    v10 = sub_1000049E0(v12);
    (*(*(v11 - 8) + 16))(v10);
    sub_100043D0C();
    sub_10002D86C(v12, &qword_100061D00, &qword_1000465F0);
    sub_100043D8C();

    *(v6 + 16) = 0;

    a3(a1);
  }

  return result;
}

void sub_10003FE70(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_100043A9C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_10003FED4(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  _Block_copy(a4);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v7 = sub_100043DBC();
  sub_1000060A4(v7, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v22 = type metadata accessor for ServiceConnectionExportedObject(0);
  v21[0] = a3;

  v8 = AMSLogKey();
  if (v8)
  {
    v9 = v8;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v21);
  sub_100043CFC();
  sub_100043D9C();

  if (*(a3 + 16))
  {
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a1;
    v10[4] = a2;
    v22 = sub_10004448C();
    v23 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(v21);

    sub_10000AC04(a1, a2);
    sub_10004447C();
    sub_100003514(&qword_100060540, &qword_1000469D0);
    sub_100041828();
    v11 = sub_1000447DC();

    sub_100004408(v21);
    v12 = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    v13 = sub_100044A7C();
    sub_10004189C(sub_10003A334, 0, v13, v11, &unk_10005B378, sub_1000419D4, sub_1000419DC);

    v14 = swift_allocObject();
    v14[2] = a3;
    v14[3] = sub_1000417D4;
    v14[4] = v6;
    v15 = swift_allocObject();
    v15[2] = a3;
    v15[3] = sub_1000417D4;
    v15[4] = v6;
    swift_retain_n();
    swift_retain_n();
    v16 = sub_100044A7C();
    v22 = v12;
    v23 = &protocol witness table for OS_dispatch_queue;
    v21[0] = v16;
    sub_10004478C();

    sub_100004408(v21);
  }

  else
  {
    sub_10004171C();
    swift_allocError();
    *v17 = 0;
    v18 = sub_100043A9C();
    (a4)[2](a4, 0, v18);
  }

  _Block_release(a4);
}

uint64_t sub_100040394(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  v4 = *a1;
  v5 = a1[1];
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v6 = sub_100043DBC();
  sub_1000060A4(v6, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v11[3] = type metadata accessor for ServiceConnectionExportedObject(0);
  v11[0] = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v11);
  sub_100043CFC();
  sub_100043D9C();

  return a3(v4, v5, 0);
}

uint64_t sub_100040578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, unint64_t, uint64_t))
{
  v5 = sub_100043CDC();
  __chkstk_darwin(v5 - 8);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v6 = sub_100043DBC();
  sub_1000060A4(v6, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v14 = type metadata accessor for ServiceConnectionExportedObject(0);
  v13[0] = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v13);
  sub_100043CCC();
  v15._object = 0x800000010004AE20;
  v15._countAndFlagsBits = 0xD000000000000015;
  sub_100043CBC(v15);
  swift_getErrorValue();
  v14 = v12;
  v9 = sub_1000049E0(v13);
  (*(*(v12 - 8) + 16))(v9);
  sub_100043CAC();
  sub_10002D86C(v13, &qword_100061D00, &qword_1000465F0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100043CBC(v16);
  sub_100043CEC();
  sub_100043D9C();

  return a3(0, 0xF000000000000000, a1);
}

void sub_1000408E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_100043A9C();
      goto LABEL_6;
    }
  }

  else
  {
    isa = sub_100043B9C().super.isa;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, isa);
}

void sub_100040978(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v7[3] = type metadata accessor for ServiceConnectionExportedObject(0);
  v7[0] = a1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v7);
  sub_100043CFC();
  sub_100043D9C();

  a2[2](a2, 0);
  _Block_release(a2);
}

void sub_100040B6C(uint64_t a1, void (**a2)(void, void))
{
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v4 = sub_100043DBC();
  sub_1000060A4(v4, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v7[3] = type metadata accessor for ServiceConnectionExportedObject(0);
  v7[0] = a1;

  v5 = AMSLogKey();
  if (v5)
  {
    v6 = v5;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v7);
  sub_100043CFC();
  sub_100043D9C();

  *(a1 + 16) = 0;

  a2[2](a2, 0);
  _Block_release(a2);
}

uint64_t sub_100040D6C(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
}

void sub_100040DD8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
    _Block_copy(a3);

    v9 = sub_100044A7C();
    sub_10004189C(sub_10003A334, 0, v9, v7, &unk_10005B2B0, sub_10000E47C, sub_1000423A8);

    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = sub_100041714;
    v10[5] = v6;
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = sub_100041714;
    v11[4] = v6;
    v12 = a1;
    swift_retain_n();
    swift_retain_n();
    v15[3] = v8;
    v15[4] = &protocol witness table for OS_dispatch_queue;
    v15[0] = sub_100044A7C();
    sub_10004478C();

    sub_100004408(v15);

    _Block_release(a3);
  }

  else
  {
    sub_10004171C();
    swift_allocError();
    *v13 = 0;
    _Block_copy(a3);
    v14 = sub_100043A9C();
    (a3)[2](a3, v14);

    _Block_release(a3);
  }
}

void sub_100041068(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void))
{
  type metadata accessor for DynamicAccountsStore();
  sub_1000443CC();
  sub_10004462C();
  v6 = DynamicAccountsStore.account.getter();
  v7 = [v6 ams_DSID];

  v8 = a2;
  DynamicAccountsStore.account.setter(a2);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v9 = sub_100043DBC();
  sub_1000060A4(v9, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v15 = type metadata accessor for ServiceConnectionExportedObject(0);
  v14[0] = a3;

  v10 = AMSLogKey();
  if (v10)
  {
    v11 = v10;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v14);
  sub_100043CFC();
  v14[0] = 0x203A646C6FLL;
  v14[1] = 0xE500000000000000;
  v12 = v7;
  sub_100003514(&qword_100061E18, &unk_100048728);
  v16._countAndFlagsBits = sub_10004499C();
  sub_1000449CC(v16);

  v17._countAndFlagsBits = 0x203A77656E20;
  v17._object = 0xE600000000000000;
  sub_1000449CC(v17);
  [v8 ams_DSID];
  v18._countAndFlagsBits = sub_10004499C();
  sub_1000449CC(v18);

  v15 = &type metadata for String;
  sub_100043D3C();
  sub_10002D86C(v14, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  a4(0);
}

uint64_t sub_1000413A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_100043CDC();
  __chkstk_darwin(v5 - 8);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v6 = sub_100043DBC();
  sub_1000060A4(v6, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v14 = type metadata accessor for ServiceConnectionExportedObject(0);
  v13[0] = a2;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v13);
  sub_100043CCC();
  v15._object = 0x800000010004ADC0;
  v15._countAndFlagsBits = 0xD000000000000017;
  sub_100043CBC(v15);
  swift_getErrorValue();
  v14 = v12;
  v9 = sub_1000049E0(v13);
  (*(*(v12 - 8) + 16))(v9);
  sub_100043CAC();
  sub_10002D86C(v13, &qword_100061D00, &qword_1000465F0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_100043CBC(v16);
  sub_100043CEC();
  sub_100043D9C();

  return a3(a1);
}

uint64_t sub_1000416DC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10004171C()
{
  result = qword_100061E10;
  if (!qword_100061E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E10);
  }

  return result;
}

uint64_t sub_100041770()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000417DC()
{

  sub_100023364(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100041828()
{
  result = qword_100061E20;
  if (!qword_100061E20)
  {
    sub_10000A584(&qword_100060540, &qword_1000469D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E20);
  }

  return result;
}

uint64_t sub_10004189C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[3] = sub_10000477C(0, &qword_1000604B8, OS_dispatch_queue_ptr);
  v14[4] = &protocol witness table for OS_dispatch_queue;
  v14[0] = a3;
  v10 = a3;
  v11 = sub_10004482C();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  swift_retain_n();

  sub_10004478C();

  sub_100004408(v14);
  return v11;
}

unint64_t sub_1000419FC()
{
  result = qword_100061E38;
  if (!qword_100061E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E38);
  }

  return result;
}

uint64_t sub_100041A50(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100041A64(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100041A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100061E30, &unk_100048740);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100041AF4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100041B2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100041B78()
{
  result = qword_100061E48;
  if (!qword_100061E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E48);
  }

  return result;
}

unint64_t sub_100041BCC()
{
  result = qword_100061E50;
  if (!qword_100061E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E50);
  }

  return result;
}

unint64_t sub_100041C20()
{
  result = qword_100061E60;
  if (!qword_100061E60)
  {
    type metadata accessor for JSServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E60);
  }

  return result;
}

uint64_t sub_100041C78(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10002DF24();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100041CD8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_10002DF24();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100041D38()
{
  v1 = (type metadata accessor for JSServiceRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[8];
  v6 = sub_100043B7C();
  if (!sub_1000046E4(v0 + v3 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100041E8C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for JSServiceRequest(0);
  sub_10000EA9C(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = *(v1 + v9);
  v15 = *(v1 + v10);
  v16 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1000394C0;

  return sub_10003DC4C(a1, v11, v12, v13, v1 + v7, v14, v15, v16);
}

uint64_t sub_100041FE0()
{
  v1 = sub_100013414();
  v2(v1);
  sub_10002DF24();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100042034()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004206C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10003A2E8(v1);

  return v3(v2);
}

uint64_t sub_10004210C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_10003A2E8(v1);

  return v3(v2);
}

_BYTE *sub_1000421C4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100042290);
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

unint64_t sub_1000422CC()
{
  result = qword_100061E68;
  if (!qword_100061E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E68);
  }

  return result;
}

unint64_t sub_100042324()
{
  result = qword_100061E70;
  if (!qword_100061E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061E70);
  }

  return result;
}

uint64_t sub_10004240C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100043B7C();
    v9 = a1 + *(a3 + 32);

    return sub_1000046E4(v9, a2, v8);
  }
}

uint64_t sub_1000424A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100043B7C();
    v8 = v5 + *(a4 + 32);

    return sub_10000464C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServiceOptions(uint64_t a1)
{
  result = qword_100061ED8;
  if (!qword_100061ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042574(uint64_t a1)
{
  sub_1000059E4(319);
  if (v1 <= 0x3F)
  {
    sub_100042640();
    if (v2 <= 0x3F)
    {
      sub_10000477C(319, &unk_100061F00, AMSProcessInfo_ptr);
      if (v3 <= 0x3F)
      {
        sub_100043B7C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100042640()
{
  result = qword_100061EF8;
  if (!qword_100061EF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100061EF8);
  }

  return result;
}

uint64_t sub_10004269C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
    v6 = v5;
    v7 = v4;
    v8 = sub_100044B0C();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = [v9 profile];
  v11 = sub_10004494C();
  v13 = v12;

  v14 = *(a2 + 8);
  v15 = [v14 profile];
  v16 = sub_10004494C();
  v18 = v17;

  if (v11 == v16 && v13 == v18)
  {
  }

  else
  {
    v20 = sub_100044DAC();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = [v9 profileVersion];
  v22 = sub_10004494C();
  v24 = v23;

  v25 = [v14 profileVersion];
  v26 = sub_10004494C();
  v28 = v27;

  if (v22 == v26 && v24 == v28)
  {
  }

  else
  {
    v30 = sub_100044DAC();

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  sub_10000477C(0, &unk_100061F40, NSObject_ptr);
  if ((sub_100044B0C() & 1) == 0 || (static MetricsContext.== infix(_:_:)(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  v31 = *(type metadata accessor for ServiceOptions(0) + 32);

  return static URL.== infix(_:_:)(a1 + v31, a2 + v31);
}

void sub_100042918()
{
  sub_100042C8C();
  if (qword_10005FF38 != -1)
  {
    sub_100042C6C(&qword_10005FF38);
  }

  if (sub_10003C150())
  {
    sub_100042C44();
    v2[1] = 1107296256;
    v2[2] = sub_100042C40;
    v2[3] = &unk_10005B618;
    _Block_copy(v2);
    sub_100042C9C();

    sub_100042CB8(v1, "handleWithAuthenticateRequest:completion:");
    swift_unknownObjectRelease();
    _Block_release(v0);
  }
}

void sub_1000429DC()
{
  sub_100042C8C();
  if (qword_10005FF38 != -1)
  {
    sub_100042C6C(&qword_10005FF38);
  }

  if (sub_10003C150())
  {
    sub_100042C44();
    v2[1] = 1107296256;
    v2[2] = sub_100042C40;
    v2[3] = &unk_10005B5F0;
    _Block_copy(v2);
    sub_100042C9C();

    sub_100042CB8(v1, "handleWithDialogRequest:completion:");
    swift_unknownObjectRelease();
    _Block_release(v0);
  }
}

void sub_100042AA4()
{
  sub_100042C8C();
  if (qword_10005FF38 != -1)
  {
    sub_100042C6C(&qword_10005FF38);
  }

  if (sub_10003C150())
  {
    sub_100042C44();
    v2[1] = 1107296256;
    v2[2] = sub_100042C40;
    v2[3] = &unk_10005B5C8;
    _Block_copy(v2);
    sub_100042C9C();

    sub_100042CB8(v1, "handleWithEngagementRequest:completion:");
    swift_unknownObjectRelease();
    _Block_release(v0);
  }
}

void sub_100042B68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100042C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100042C6C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_100042C9C()
{
}

id sub_100042CB8(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_100042CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10004362C();
  a25 = v28;
  a26 = v29;
  sub_1000435E4();
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v30 = sub_100043DBC();
  sub_1000060A4(v30, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v31 = sub_100043D4C();
  sub_10000EA9C(v31);
  *(sub_100043550() + 16) = xmmword_100046830;
  a14 = type metadata accessor for URLSessionHandler();
  a11 = v26;
  v26;
  v32 = AMSLogKey();
  if (v32)
  {
    v34 = v32;
    sub_10004494C();
  }

  sub_1000435A0(v32, v33);

  sub_100004408(&a11);
  sub_1000435C4();
  sub_100043CFC();
  a14 = sub_10000477C(0, &unk_100062100, AMSAuthenticateRequest_ptr);
  a11 = v27;
  v35 = v27;
  sub_1000435F4(v35, v36);
  sub_100006100(&a11);
  sub_100043D9C();

  type metadata accessor for ServiceRequestHandler();
  v37 = sub_1000443CC();
  sub_10004357C(v37);
  sub_1000435D4();
  sub_100042918();

  sub_100043610();
}

void sub_100042EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10004362C();
  a25 = v28;
  a26 = v29;
  sub_1000435E4();
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v30 = sub_100043DBC();
  sub_1000060A4(v30, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v31 = sub_100043D4C();
  sub_10000EA9C(v31);
  *(sub_100043550() + 16) = xmmword_100046830;
  a14 = type metadata accessor for URLSessionHandler();
  a11 = v26;
  v26;
  v32 = AMSLogKey();
  if (v32)
  {
    v34 = v32;
    sub_10004494C();
  }

  sub_1000435A0(v32, v33);

  sub_100004408(&a11);
  sub_1000435C4();
  sub_100043CFC();
  a14 = sub_10000477C(0, &qword_1000620F8, AMSDialogRequest_ptr);
  a11 = v27;
  v35 = v27;
  sub_1000435F4(v35, v36);
  sub_100006100(&a11);
  sub_100043D9C();

  type metadata accessor for ServiceRequestHandler();
  v37 = sub_1000443CC();
  sub_10004357C(v37);
  sub_1000435D4();
  sub_1000429DC();

  sub_100043610();
}

void sub_1000430F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10004362C();
  a25 = v28;
  a26 = v29;
  sub_1000435E4();
  if (qword_10005FF30 != -1)
  {
    sub_1000061AC(&qword_10005FF30);
  }

  v30 = sub_100043DBC();
  sub_1000060A4(v30, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v31 = sub_100043D4C();
  sub_10000EA9C(v31);
  *(sub_100043550() + 16) = xmmword_100046830;
  a14 = type metadata accessor for URLSessionHandler();
  a11 = v26;
  v26;
  v32 = AMSLogKey();
  if (v32)
  {
    v34 = v32;
    sub_10004494C();
  }

  sub_1000435A0(v32, v33);

  sub_100004408(&a11);
  sub_1000435C4();
  sub_100043CFC();
  a14 = sub_10000477C(0, &qword_100060330, AMSEngagementRequest_ptr);
  a11 = v27;
  v35 = v27;
  sub_1000435F4(v35, v36);
  sub_100006100(&a11);
  sub_100043D9C();

  type metadata accessor for ServiceRequestHandler();
  v37 = sub_1000443CC();
  sub_10004357C(v37);
  sub_1000435D4();
  sub_100042AA4();

  sub_100043610();
}

uint64_t sub_100043304(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7, int a8, void (*a9)(void))
{
  v13 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v13;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a1;
  a9();
}

void sub_100043408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100043A9C();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_100043488(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for URLSessionHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000434F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100043550()
{

  return swift_allocObject();
}

uint64_t sub_10004357C(uint64_t a1)
{

  return sub_10004462C();
}

uint64_t sub_1000435A0(uint64_t a1, uint64_t a2, ...)
{

  return sub_100043D2C();
}

uint64_t sub_1000435F4(uint64_t a1, uint64_t a2, ...)
{

  return sub_100043D0C();
}

uint64_t sub_100043648()
{
  v0 = swift_allocObject();
  sub_100043680();
  return v0;
}

uint64_t sub_100043680()
{
  setenv("JSC_criticalGCMemoryThreshold", "0.25", 1);
  setenv("JavaScriptCoreUseJIT", "0", 1);
  return v0;
}

id sub_1000436C8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for UtilityExtensionConfiguration()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100043718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043648();
  *a1 = result;
  return result;
}

uint64_t sub_100043740(void **a1)
{
  if (qword_10005FF38 != -1)
  {
    swift_once();
  }

  return sub_10003C514(a1) & 1;
}

id sub_1000437A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityExtensionConfiguration();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1000437FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UtilityExtensionConfiguration();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for UtilityExtension();
  sub_100043984(&qword_100062110, type metadata accessor for UtilityExtension, &unk_1000489D8);
  sub_100043DCC();
  return 0;
}

uint64_t sub_100043984(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}
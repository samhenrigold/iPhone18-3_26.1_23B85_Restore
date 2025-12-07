uint64_t sub_1ABAA5BF4()
{

  return sub_1ABA88934(&STACK[0x200]);
}

void static EntityClass.partWholeRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC18), *(_Records_GDEntityClass_records + 0xC20), *(_Records_GDEntityClass_records + 0xC28), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA5C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v19 = *(v17 - 144);
  *(v17 - 112) = *(v17 - 160);
  *(v17 - 96) = v19;
  *(v16 + 320) = *(v16 + 272);

  return sub_1ABA856C4(v17 - 112, va);
}

void static EntityClass.ratingRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC30), *(_Records_GDEntityClass_records + 0xC38), *(_Records_GDEntityClass_records + 0xC40), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA5D30()
{

  return sub_1ABA88934(&STACK[0x530]);
}

uint64_t sub_1ABAA5D48()
{
}

void static EntityClass.musicalArtist.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC48), *(_Records_GDEntityClass_records + 0xC50), *(_Records_GDEntityClass_records + 0xC58), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA5DCC()
{

  return sub_1ABA88934(&STACK[0x350]);
}

void static EntityClass.contentRating.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC60), *(_Records_GDEntityClass_records + 0xC68), *(_Records_GDEntityClass_records + 0xC70), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA5E50@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 4712);
  v4 = *(a1 + 4720);
  v5 = *(a1 + 4704);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

BOOL sub_1ABAA5E74(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1ABAA5EDC()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1ABAA5F1C(uint64_t a1, uint64_t a2)
{

  return sub_1ABF24EC4();
}

__n128 sub_1ABAA5F84()
{
  result = *&STACK[0x650];
  v1 = *&STACK[0x660];
  *&STACK[0x680] = *&STACK[0x650];
  *&STACK[0x690] = v1;
  LOBYTE(STACK[0x6A0]) = STACK[0x670];
  return result;
}

__n128 sub_1ABAA5FA4()
{
  *(v0 + 4416) = *(v0 + 4368);
  result = *(v0 + 4384);
  *(v0 + 4432) = result;
  return result;
}

uint64_t sub_1ABAA5FC8(uint64_t a1)
{

  return swift_once();
}

void sub_1ABAA5FE8(unint64_t a1@<X8>)
{

  sub_1ABADA514(a1 > 1, v2, 1, v1);
}

uint64_t sub_1ABAA600C()
{

  return sub_1ABF24DB4();
}

uint64_t sub_1ABAA6038(unint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E6300];

  return sub_1ABC0D68C(a1, a2, v3);
}

uint64_t sub_1ABAA6090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 - 72) = a14;

  return sub_1ABF25054();
}

void sub_1ABAA60C0()
{
  *(v0 - 160) = 0;
  *(v0 - 152) = 0;
  *(v0 - 144) = 0;
}

void *sub_1ABAA6120()
{
  v2 = v0[3];

  return sub_1ABA93E20(v0, v2);
}

void sub_1ABAA6170()
{
  *(v3 - 224) = v2 + 1;
  v4 = *(v0 + v1);
  v5 = *(v4 + 16);
  *(v3 - 168) = v4;
  *(v3 - 160) = v5;
}

id sub_1ABAA6190()
{

  return [v0 (v1 + 481)];
}

uint64_t sub_1ABAA6260()
{

  return sub_1ABED261C();
}

void static EntityClass.sportsGameEvent.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC78), *(_Records_GDEntityClass_records + 0xC80), *(_Records_GDEntityClass_records + 0xC88), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1ABAA6314()
{
  v2 = *(v1 - 72);
  *(v0 + 170) = *(v2 + 82);
  v3 = *(v2 + 56);
  *(v0 + 128) = *(v2 + 40);
  *(v0 + 144) = v3;
  result = *(v2 + 72);
  *(v0 + 160) = result;
  return result;
}

void static EntityClass.sportsTeam.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC90), *(_Records_GDEntityClass_records + 0xC98), *(_Records_GDEntityClass_records + 0xCA0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA63AC()
{

  return sub_1ABA88934(&STACK[0x500]);
}

uint64_t sub_1ABAA63D0()
{

  return sub_1ABA88934(&STACK[0x380]);
}

__n128 sub_1ABAA63FC()
{
  result = *(v0 - 256);
  v2 = *(v0 - 240);
  *(v0 - 208) = result;
  *(v0 - 192) = v2;
  return result;
}

uint64_t sub_1ABAA6408()
{

  return sub_1ABA88934(&STACK[0xAA0]);
}

uint64_t sub_1ABAA642C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 5288);
  v4 = *(a1 + 5296);
  v5 = *(a1 + 5280);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

void static EntityClass.time.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABB7E11C(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA64C8()
{

  return sub_1ABA88934(&STACK[0x2F0]);
}

void static EntityClass.album.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD20), *(_Records_GDEntityClass_records + 0xD28), *(_Records_GDEntityClass_records + 0xD30), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA654C()
{

  return sub_1ABA88934(v0 - 256);
}

uint64_t sub_1ABAA6564(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABF24F84();
}

void static EntityClass.musicalWork.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD38), *(_Records_GDEntityClass_records + 0xD40), *(_Records_GDEntityClass_records + 0xD48), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA65E8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 4472);
  v4 = *(a1 + 4480);
  v5 = *(a1 + 4464);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

void static EntityClass.group.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABB7E10C(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.groupRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD68), *(_Records_GDEntityClass_records + 0xD70), *(_Records_GDEntityClass_records + 0xD78), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA6708()
{

  return sub_1ABA88934(&STACK[0xF50]);
}

uint64_t sub_1ABAA6740(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_1ABF24164();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1ABAA6788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1ABA8A238();
  if (*(v31 + 16))
  {
    v32 = v31;
    v33 = v30;
    sub_1ABF25234();
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    sub_1ABF23D34();
    sub_1ABF25294();
    sub_1ABAA51D0();
    v38 = ~v37;
    do
    {
      v39 = v36 & v38;
      if (((1 << (v36 & v38)) & *(v32 + 56 + (((v36 & v38) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
      {
        break;
      }

      v40 = *(v32 + 48) + 40 * v39;
      v41 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v41 == v34 && v42 == v35)
      {
        break;
      }

      v44 = sub_1ABA8CF7C(v41, v42, v34);
      v36 = v39 + 1;
    }

    while ((v44 & 1) == 0);
  }

  sub_1ABA9A2A8();
}

uint64_t sub_1ABAA685C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAA68CC();
  v5 = sub_1ABAA6920();
  v6 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B38](a1, a2, v4, v5, v6);
}

unint64_t sub_1ABAA68CC()
{
  result = qword_1ED870310;
  if (!qword_1ED870310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870310);
  }

  return result;
}

unint64_t sub_1ABAA6920()
{
  result = qword_1ED870308;
  if (!qword_1ED870308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870308);
  }

  return result;
}

uint64_t sub_1ABAA6974@<X0>(uint64_t *a1@<X8>)
{
  result = EntityPredicate.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EntityPredicate.id.getter()
{
  v1 = *v0;

  return v1;
}

void static EntityPredicate.url.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[48], *(_Records_GDEntityPredicate_records + 13), *(_Records_GDEntityPredicate_records + 14), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.dateOfBirth.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9.value._countAndFlagsBits = a3;
  v9.value._object = a4;
  String.fullEventName(prefix:)(v9);
  v10 = sub_1ABF23BD4();

  if (a5)
  {
    sub_1ABA84F5C();
    a5 = sub_1ABF23954();
  }

  AnalyticsSendEvent();

  objc_autoreleasePoolPop(v8);
}

uint64_t static EntityIdentifier.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF251F4();
  v12 = v11;
  if (v11)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1ED871B40);
    (*(v6 + 16))(v9, a1, v4);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24664();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v16 = 136380675;
      sub_1ABB8087C();
      v17 = sub_1ABF24FF4();
      v19 = v18;
      (*(v6 + 8))(v9, v4);
      v20 = sub_1ABADD6D8(v17, v19, &v23);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1ABA78000, v14, v15, "EntityIdentifier: failed to initialize from database value: %{private}s", v16, 0xCu);
      v21 = v22;
      sub_1ABA84B54(v22);
      MEMORY[0x1AC5AB8B0](v21, -1, -1);
      MEMORY[0x1AC5AB8B0](v16, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v4);
    }

    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = v12 & 1;
  return result;
}

Swift::String __swiftcall String.fullEventName(prefix:)(Swift::String_optional prefix)
{
  v3 = v2;
  v4 = v1;
  if (prefix.value._object)
  {
    v12 = prefix;
    v5 = sub_1ABF23C04();
    v7 = v6;

    MEMORY[0x1AC5A9410](v5, v7);
  }

  else
  {
    v12.value._countAndFlagsBits = sub_1ABF23C04();
    v12.value._object = v8;
  }

  MEMORY[0x1AC5A9410](46, 0xE100000000000000);
  MEMORY[0x1AC5A9410](v4, v3);
  countAndFlagsBits = v12.value._countAndFlagsBits;
  object = v12.value._object;
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void static EntityPredicate.imputedDateOfBirth.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.anniversary.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[960], *(_Records_GDEntityPredicate_records + 241), *(_Records_GDEntityPredicate_records + 242), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA6F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAA6FE4();
  v7 = sub_1ABAA6920();
  v8 = MEMORY[0x1E69A0138];

  return MEMORY[0x1EEE09B48](a1, a2, a3, v6, v7, v8);
}

unint64_t sub_1ABAA6FE4()
{
  result = qword_1ED870300;
  if (!qword_1ED870300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870300);
  }

  return result;
}

void static EntityPredicate.imputedAnniversary.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.nonGregorianBirthday.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[876], *(_Records_GDEntityPredicate_records + 220), *(_Records_GDEntityPredicate_records + 221), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.imputedNonGregorianBirthday.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1884], *(_Records_GDEntityPredicate_records + 472), *(_Records_GDEntityPredicate_records + 473), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.dates.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[888], *(_Records_GDEntityPredicate_records + 223), *(_Records_GDEntityPredicate_records + 224), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.occupation.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1020], *(_Records_GDEntityPredicate_records + 256), *(_Records_GDEntityPredicate_records + 257), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t static RelationshipIdentifier.fromDatabaseValue(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF251F4();
  v12 = v11;
  if (v11)
  {
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1ED871B40);
    (*(v6 + 16))(v9, a1, v4);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24664();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v16 = 136380675;
      sub_1ABB8087C();
      v17 = sub_1ABF24FF4();
      v19 = v18;
      (*(v6 + 8))(v9, v4);
      v20 = sub_1ABADD6D8(v17, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1ABA78000, v14, v15, "RelationshipIdentifier: failed to initialize from database value: %{private}s", v16, 0xCu);
      sub_1ABA84B54(v21);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {

      (*(v6 + 8))(v9, v4);
    }

    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = v12 & 1;
  return result;
}

void static EntityPredicate.birthName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[852], *(_Records_GDEntityPredicate_records + 214), *(_Records_GDEntityPredicate_records + 215), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.previousFamilyName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[864], *(_Records_GDEntityPredicate_records + 217), *(_Records_GDEntityPredicate_records + 218), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.bundleIdentifier.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[900], *(_Records_GDEntityPredicate_records + 226), *(_Records_GDEntityPredicate_records + 227), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA7624(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void static EntityPredicate.relationship.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[912], *(_Records_GDEntityPredicate_records + 229), *(_Records_GDEntityPredicate_records + 230), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

unint64_t EntityIdentifier.description.getter()
{
  v1 = *v0;
  EntityClass.init(intValue:)(HIBYTE(*v0), &v11);
  v2 = v12;
  if (v12)
  {
    v4 = v13;
    v3 = v14;
    v5 = v11;

    sub_1ABAA8FA8(v5, v2, v4, v3);
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1ABF24AB4();

  v11 = 0xD000000000000014;
  v12 = 0x80000001ABF88C80;
  MEMORY[0x1AC5A9410](v4, v3);

  MEMORY[0x1AC5A9410](3827488, 0xE300000000000000);
  if ((v1 & 0x80000000000000) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((v1 & 0x80000000000000) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1AC5A9410](v6, v7);

  MEMORY[0x1AC5A9410](3827744, 0xE300000000000000);
  v8 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v8);

  MEMORY[0x1AC5A9410](3831328, 0xE300000000000000);
  v9 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v9);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v11;
}

void static EntityPredicate.isFavorite.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[936], *(_Records_GDEntityPredicate_records + 235), *(_Records_GDEntityPredicate_records + 236), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.phoneticFirstName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2592], *(_Records_GDEntityPredicate_records + 649), *(_Records_GDEntityPredicate_records + 650), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void EntityClass.init(intValue:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 0:
LABEL_2:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    case 1:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_269;
      }

      v6 = sub_1ABA8A714(_Records_GDEntityClass_records);
      break;
    case 2:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_293;
      }

      v4 = *(_Records_GDEntityClass_records + 0x278);
      v5 = *(_Records_GDEntityClass_records + 0x280);
      v6 = *(_Records_GDEntityClass_records + 0x270);
      break;
    case 3:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_297;
      }

      v6 = sub_1ABA9F1E0(_Records_GDEntityClass_records);
      break;
    case 4:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_247;
      }

      v6 = sub_1ABB7E660(_Records_GDEntityClass_records);
      break;
    case 5:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_244;
      }

      v4 = *(_Records_GDEntityClass_records + 0x380);
      v5 = *(_Records_GDEntityClass_records + 0x388);
      v6 = *(_Records_GDEntityClass_records + 0x378);
      break;
    case 6:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_255;
      }

      v4 = *(_Records_GDEntityClass_records + 0x458);
      v5 = *(_Records_GDEntityClass_records + 0x460);
      v6 = *(_Records_GDEntityClass_records + 0x450);
      break;
    case 7:
      if (!_Records_GDEntityClass_records)
      {
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        __break(1u);
LABEL_249:
        __break(1u);
LABEL_250:
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        __break(1u);
LABEL_261:
        __break(1u);
LABEL_262:
        __break(1u);
LABEL_263:
        __break(1u);
LABEL_264:
        __break(1u);
LABEL_265:
        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        __break(1u);
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
LABEL_273:
        __break(1u);
LABEL_274:
        __break(1u);
LABEL_275:
        __break(1u);
LABEL_276:
        __break(1u);
LABEL_277:
        __break(1u);
LABEL_278:
        __break(1u);
LABEL_279:
        __break(1u);
LABEL_280:
        __break(1u);
LABEL_281:
        __break(1u);
LABEL_282:
        __break(1u);
LABEL_283:
        __break(1u);
LABEL_284:
        __break(1u);
LABEL_285:
        __break(1u);
LABEL_286:
        __break(1u);
LABEL_287:
        __break(1u);
LABEL_288:
        __break(1u);
LABEL_289:
        __break(1u);
LABEL_290:
        __break(1u);
LABEL_291:
        __break(1u);
LABEL_292:
        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        __break(1u);
LABEL_295:
        __break(1u);
LABEL_296:
        __break(1u);
LABEL_297:
        __break(1u);
        JUMPOUT(0x1ABAA8C54);
      }

      v4 = *(_Records_GDEntityClass_records + 0x440);
      v5 = *(_Records_GDEntityClass_records + 0x448);
      v6 = *(_Records_GDEntityClass_records + 0x438);
      break;
    case 8:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_278;
      }

      v4 = *(_Records_GDEntityClass_records + 0x2F0);
      v5 = *(_Records_GDEntityClass_records + 0x2F8);
      v6 = *(_Records_GDEntityClass_records + 0x2E8);
      break;
    case 9:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_296;
      }

      v4 = *(_Records_GDEntityClass_records + 0x3B0);
      v5 = *(_Records_GDEntityClass_records + 0x3B8);
      v6 = *(_Records_GDEntityClass_records + 0x3A8);
      break;
    case 10:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_263;
      }

      v4 = *(_Records_GDEntityClass_records + 0x470);
      v5 = *(_Records_GDEntityClass_records + 0x478);
      v6 = *(_Records_GDEntityClass_records + 0x468);
      break;
    case 11:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_246;
      }

      v4 = *(_Records_GDEntityClass_records + 0x218);
      v5 = *(_Records_GDEntityClass_records + 0x220);
      v6 = *(_Records_GDEntityClass_records + 0x210);
      break;
    case 12:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_275;
      }

      v4 = *(_Records_GDEntityClass_records + 0x1A0);
      v5 = *(_Records_GDEntityClass_records + 0x1A0 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x198);
      break;
    case 13:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_270;
      }

      v4 = *(_Records_GDEntityClass_records + 0x140);
      v5 = *(_Records_GDEntityClass_records + 0x140 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x138);
      break;
    case 14:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_253;
      }

      v6 = sub_1ABB7E070(_Records_GDEntityClass_records);
      break;
    case 15:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_258;
      }

      v6 = sub_1ABA8CA50(_Records_GDEntityClass_records);
      break;
    case 16:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_245;
      }

      v6 = sub_1ABA8D1D4(_Records_GDEntityClass_records);
      break;
    case 17:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_277;
      }

      v6 = sub_1ABA9E070(_Records_GDEntityClass_records);
      break;
    case 19:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_249;
      }

      v6 = sub_1ABA88E44(_Records_GDEntityClass_records);
      break;
    case 20:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_262;
      }

      v6 = sub_1ABA9ECB8(_Records_GDEntityClass_records);
      break;
    case 21:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_265;
      }

      v6 = sub_1ABB7E66C(_Records_GDEntityClass_records);
      break;
    case 22:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_252;
      }

      v4 = *(_Records_GDEntityClass_records + 0xF8);
      v5 = *(_Records_GDEntityClass_records + 0xF8 + 8);
      v6 = *(_Records_GDEntityClass_records + 0xF0);
      break;
    case 23:
      static EntityClass.mediaWork.getter();
      goto LABEL_188;
    case 24:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_285;
      }

      v4 = *(_Records_GDEntityClass_records + 0x158);
      v5 = *(_Records_GDEntityClass_records + 0x158 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x150);
      break;
    case 25:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_286;
      }

      v4 = *(_Records_GDEntityClass_records + 0x128);
      v5 = *(_Records_GDEntityClass_records + 0x128 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x120);
      break;
    case 26:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_261;
      }

      v4 = *(_Records_GDEntityClass_records + 0x188);
      v5 = *(_Records_GDEntityClass_records + 0x188 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x180);
      break;
    case 27:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_288;
      }

      v4 = *(_Records_GDEntityClass_records + 0x1B8);
      v5 = *(_Records_GDEntityClass_records + 0x1B8 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x1B0);
      break;
    case 28:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_290;
      }

      v4 = *(_Records_GDEntityClass_records + 0x1D0);
      v5 = *(_Records_GDEntityClass_records + 0x1D0 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x1C8);
      break;
    case 29:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_295;
      }

      v4 = *(_Records_GDEntityClass_records + 0x1E8);
      v5 = *(_Records_GDEntityClass_records + 0x1E8 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x1E0);
      break;
    case 30:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_272;
      }

      v4 = *(_Records_GDEntityClass_records + 0x110);
      v5 = *(_Records_GDEntityClass_records + 0x110 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x108);
      break;
    case 31:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_294;
      }

      v4 = *(_Records_GDEntityClass_records + 0x200);
      v5 = *(_Records_GDEntityClass_records + 0x208);
      v6 = *(_Records_GDEntityClass_records + 0x1F8);
      break;
    case 32:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_256;
      }

      v4 = *(_Records_GDEntityClass_records + 0x230);
      v5 = *(_Records_GDEntityClass_records + 0x238);
      v6 = *(_Records_GDEntityClass_records + 0x228);
      break;
    case 33:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_289;
      }

      v4 = *(_Records_GDEntityClass_records + 0x248);
      v5 = *(_Records_GDEntityClass_records + 0x250);
      v6 = *(_Records_GDEntityClass_records + 0x240);
      break;
    case 34:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_274;
      }

      v4 = *(_Records_GDEntityClass_records + 0x260);
      v5 = *(_Records_GDEntityClass_records + 0x268);
      v6 = *(_Records_GDEntityClass_records + 0x258);
      break;
    case 35:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_259;
      }

      v4 = *(_Records_GDEntityClass_records + 0x290);
      v5 = *(_Records_GDEntityClass_records + 0x298);
      v6 = *(_Records_GDEntityClass_records + 0x288);
      break;
    case 36:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_271;
      }

      v4 = *(_Records_GDEntityClass_records + 0x2A8);
      v5 = *(_Records_GDEntityClass_records + 0x2B0);
      v6 = *(_Records_GDEntityClass_records + 0x2A0);
      break;
    case 37:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_251;
      }

      v4 = *(_Records_GDEntityClass_records + 0x2C0);
      v5 = *(_Records_GDEntityClass_records + 0x2C8);
      v6 = *(_Records_GDEntityClass_records + 0x2B8);
      break;
    case 38:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_291;
      }

      v4 = *(_Records_GDEntityClass_records + 0x2D8);
      v5 = *(_Records_GDEntityClass_records + 0x2E0);
      v6 = *(_Records_GDEntityClass_records + 0x2D0);
      break;
    case 39:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_292;
      }

      v4 = *(_Records_GDEntityClass_records + 0x308);
      v5 = *(_Records_GDEntityClass_records + 0x310);
      v6 = *(_Records_GDEntityClass_records + 0x300);
      break;
    case 40:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_260;
      }

      v4 = *(_Records_GDEntityClass_records + 0x320);
      v5 = *(_Records_GDEntityClass_records + 0x328);
      v6 = *(_Records_GDEntityClass_records + 0x318);
      break;
    case 41:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_283;
      }

      v4 = *(_Records_GDEntityClass_records + 0x338);
      v5 = *(_Records_GDEntityClass_records + 0x340);
      v6 = *(_Records_GDEntityClass_records + 0x330);
      break;
    case 42:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_280;
      }

      v4 = *(_Records_GDEntityClass_records + 0x350);
      v5 = *(_Records_GDEntityClass_records + 0x358);
      v6 = *(_Records_GDEntityClass_records + 0x348);
      break;
    case 43:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_279;
      }

      v4 = *(_Records_GDEntityClass_records + 0x368);
      v5 = *(_Records_GDEntityClass_records + 0x370);
      v6 = *(_Records_GDEntityClass_records + 0x360);
      break;
    case 44:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_248;
      }

      v4 = *(_Records_GDEntityClass_records + 0x398);
      v5 = *(_Records_GDEntityClass_records + 0x3A0);
      v6 = *(_Records_GDEntityClass_records + 0x390);
      break;
    case 45:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_250;
      }

      v6 = sub_1ABB7E060(_Records_GDEntityClass_records);
      break;
    case 46:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_267;
      }

      v4 = *(_Records_GDEntityClass_records + 0x3E0);
      v5 = *(_Records_GDEntityClass_records + 0x3E8);
      v6 = *(_Records_GDEntityClass_records + 0x3D8);
      break;
    case 47:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_268;
      }

      v4 = *(_Records_GDEntityClass_records + 0x3F8);
      v5 = *(_Records_GDEntityClass_records + 0x400);
      v6 = *(_Records_GDEntityClass_records + 0x3F0);
      break;
    case 48:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_264;
      }

      v6 = sub_1ABB7E050(_Records_GDEntityClass_records);
      break;
    case 49:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_254;
      }

      v4 = *(_Records_GDEntityClass_records + 0x428);
      v5 = *(_Records_GDEntityClass_records + 0x430);
      v6 = *(_Records_GDEntityClass_records + 0x420);
      break;
    case 50:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_287;
      }

      v4 = *(_Records_GDEntityClass_records + 0x488);
      v5 = *(_Records_GDEntityClass_records + 0x490);
      v6 = *(_Records_GDEntityClass_records + 0x480);
      break;
    case 51:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_257;
      }

      v6 = sub_1ABB7E040(_Records_GDEntityClass_records);
      break;
    case 52:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_276;
      }

      v4 = *(_Records_GDEntityClass_records + 0x4B8);
      v5 = *(_Records_GDEntityClass_records + 0x4C0);
      v6 = *(_Records_GDEntityClass_records + 0x4B0);
      break;
    case 53:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_266;
      }

      v4 = *(_Records_GDEntityClass_records + 0x4D0);
      v5 = *(_Records_GDEntityClass_records + 0x4D8);
      v6 = *(_Records_GDEntityClass_records + 0x4C8);
      break;
    case 55:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_284;
      }

      v4 = *(_Records_GDEntityClass_records + 0x4E8);
      v5 = *(_Records_GDEntityClass_records + 0x4F0);
      v6 = *(_Records_GDEntityClass_records + 0x4E0);
      break;
    case 56:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_282;
      }

      v6 = sub_1ABB7E030(_Records_GDEntityClass_records);
      break;
    case 57:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_281;
      }

      v4 = *(_Records_GDEntityClass_records + 0x518);
      v5 = *(_Records_GDEntityClass_records + 0x520);
      v6 = *(_Records_GDEntityClass_records + 0x510);
      break;
    case 58:
      static EntityClass.administratorRelationshipType.getter();
      goto LABEL_188;
    case 59:
      static EntityClass.county.getter();
      goto LABEL_188;
    case 60:
      static EntityClass.visualIdentifierRelationshipType.getter();
      goto LABEL_188;
    case 61:
      static EntityClass.song.getter();
      goto LABEL_188;
    case 62:
      static EntityClass.songRelationshipType.getter();
      goto LABEL_188;
    case 63:
      static EntityClass.animal.getter();
      goto LABEL_188;
    case 64:
      static EntityClass.softwareRelationshipType.getter();
      goto LABEL_188;
    case 65:
      static EntityClass.vehicle.getter();
      goto LABEL_188;
    case 66:
      static EntityClass.onFoot.getter();
      goto LABEL_188;
    case 67:
      static EntityClass.automobile.getter();
      goto LABEL_188;
    case 68:
      static EntityClass.plane.getter();
      goto LABEL_188;
    case 69:
      static EntityClass.bicycle.getter();
      goto LABEL_188;
    case 70:
      static EntityClass.ship.getter();
      goto LABEL_188;
    case 71:
      static EntityClass.bus.getter();
      goto LABEL_188;
    case 72:
      static EntityClass.locomotiveTrain.getter();
      goto LABEL_188;
    case 73:
      static EntityClass.transportationActivity.getter();
      goto LABEL_188;
    case 74:
      static EntityClass.workingActivity.getter();
      goto LABEL_188;
    case 75:
      static EntityClass.meetingActivity.getter();
      goto LABEL_188;
    case 76:
      static EntityClass.eatingActivity.getter();
      goto LABEL_188;
    case 77:
      static EntityClass.watchingTVActivity.getter();
      goto LABEL_188;
    case 78:
      static EntityClass.communicatingActivity.getter();
      goto LABEL_188;
    case 79:
      static EntityClass.shoppingActivity.getter();
      goto LABEL_188;
    case 80:
      static EntityClass.travelingActivity.getter();
      goto LABEL_188;
    case 81:
      static EntityClass.readingActivity.getter();
      goto LABEL_188;
    case 82:
      static EntityClass.vacationingActivity.getter();
      goto LABEL_188;
    case 83:
      static EntityClass.gamingActivity.getter();
      goto LABEL_188;
    case 84:
      static EntityClass.socializingActivity.getter();
      goto LABEL_188;
    case 85:
      static EntityClass.wakingUpActivity.getter();
      goto LABEL_188;
    case 86:
      static EntityClass.goingToBedActivity.getter();
      goto LABEL_188;
    case 87:
      static EntityClass.sleepingActivity.getter();
      goto LABEL_188;
    case 88:
      static EntityClass.exercisingActivity.getter();
      goto LABEL_188;
    case 89:
      static EntityClass.mindfulnessActivity.getter();
      goto LABEL_188;
    case 90:
      static EntityClass.onThePhoneActivity.getter();
      goto LABEL_188;
    case 91:
      static EntityClass.facetimeActivity.getter();
      goto LABEL_188;
    case 92:
      static EntityClass.walkingActivity.getter();
      goto LABEL_188;
    case 93:
      static EntityClass.runningActivity.getter();
      goto LABEL_188;
    case 94:
      static EntityClass.bicyclingActivity.getter();
      goto LABEL_188;
    case 95:
      static EntityClass.hikingActivity.getter();
      goto LABEL_188;
    case 96:
      static EntityClass.modeOfTransportation.getter(a1);
      goto LABEL_188;
    case 97:
      static EntityClass.automobileModel.getter(a1);
      goto LABEL_188;
    case 98:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_273;
      }

      v4 = *(_Records_GDEntityClass_records + 0x170);
      v5 = *(_Records_GDEntityClass_records + 0x170 + 8);
      v6 = *(_Records_GDEntityClass_records + 0x168);
      break;
    case 99:
      static EntityClass.transportationActivityType.getter();
      goto LABEL_188;
    case 100:
      static EntityClass.workingActivityType.getter();
      goto LABEL_188;
    case 101:
      static EntityClass.meetingActivityType.getter();
      goto LABEL_188;
    case 102:
      static EntityClass.eatingActivityType.getter();
      goto LABEL_188;
    case 103:
      static EntityClass.watchingMediaActivityType.getter();
      goto LABEL_188;
    case 104:
      static EntityClass.communicatingActivityType.getter();
      goto LABEL_188;
    case 105:
      static EntityClass.shoppingActivityType.getter();
      goto LABEL_188;
    case 106:
      static EntityClass.mindfulActivityType.getter();
      goto LABEL_188;
    case 107:
      static EntityClass.sleepActivityType.getter();
      goto LABEL_188;
    case 108:
      static EntityClass.travelActivityType.getter();
      goto LABEL_188;
    case 109:
      static EntityClass.readingActivityType.getter();
      goto LABEL_188;
    case 110:
      static EntityClass.vacationActivityType.getter();
      goto LABEL_188;
    case 111:
      static EntityClass.socialActivityType.getter();
      goto LABEL_188;
    case 112:
      static EntityClass.wakingActivityType.getter();
      goto LABEL_188;
    case 113:
      static EntityClass.goingToBedActivityType.getter();
      goto LABEL_188;
    case 114:
      static EntityClass.phoneCallActivityType.getter();
      goto LABEL_188;
    case 115:
      static EntityClass.facetimeActivityType.getter();
      goto LABEL_188;
    case 116:
      static EntityClass.walkingActivityType.getter();
      goto LABEL_188;
    case 117:
      static EntityClass.runningActivityType.getter();
      goto LABEL_188;
    case 118:
      static EntityClass.bikingActivityType.getter();
      goto LABEL_188;
    case 119:
      static EntityClass.hikingActivityType.getter();
      goto LABEL_188;
    case 120:
      static EntityClass.typeOfPhysicalExercise.getter();
      goto LABEL_188;
    case 121:
      static EntityClass.localizedNameRelationshipType.getter();
      goto LABEL_188;
    case 122:
      static EntityClass.commuteActivity.getter();
      goto LABEL_188;
    case 123:
      static EntityClass.diningActivity.getter();
      goto LABEL_188;
    case 124:
      static EntityClass.attendingAPerformanceActivity.getter();
      goto LABEL_188;
    case 125:
      static EntityClass.stationaryActivity.getter();
      goto LABEL_188;
    case 126:
      static EntityClass.knowledgeSource.getter(a1);
      goto LABEL_188;
    case 127:
      static EntityClass.confidenceRelationshipType.getter();
      goto LABEL_188;
    case -128:
      static EntityClass.commuteActivityType.getter();
      goto LABEL_188;
    case -127:
      static EntityClass.make.getter();
      goto LABEL_188;
    default:
      switch(a1)
      {
        case -126:
          static EntityClass.locationVisitActivity.getter();
          goto LABEL_188;
        case -125:
          static EntityClass.performanceRelationshipType.getter();
          goto LABEL_188;
        case -124:
          static EntityClass.partWholeRelationshipType.getter();
          goto LABEL_188;
        case -123:
          static EntityClass.ratingRelationshipType.getter();
          goto LABEL_188;
        case -122:
          static EntityClass.musicalArtist.getter();
          goto LABEL_188;
        case -121:
          static EntityClass.contentRating.getter();
          goto LABEL_188;
        case -120:
          static EntityClass.sportsGameEvent.getter();
          goto LABEL_188;
        case -119:
          static EntityClass.sportsTeam.getter();
          goto LABEL_188;
        case -118:
          static EntityClass.drivingActivity.getter();
          goto LABEL_188;
        case -117:
          static EntityClass.drivingActivityType.getter();
          goto LABEL_188;
        case -116:
          static EntityClass.behaviorActivity.getter();
          goto LABEL_188;
        case -115:
          static EntityClass.behaviorActivityType.getter();
          goto LABEL_188;
        case -114:
          static EntityClass.time.getter(a1);
          goto LABEL_188;
        case -113:
          static EntityClass.album.getter();
          goto LABEL_188;
        case -112:
          static EntityClass.musicalWork.getter();
          goto LABEL_188;
        case -111:
          static EntityClass.group.getter(a1);
          goto LABEL_188;
        case -110:
          static EntityClass.groupRelationshipType.getter();
          goto LABEL_188;
        case -109:
          static EntityClass.livingBeingRelationship.getter();
          goto LABEL_188;
        case -108:
          static EntityClass.entityAliasRelationshipType.getter();
          goto LABEL_188;
        case -107:
          static EntityClass.pet.getter();
          goto LABEL_188;
        case -106:
          static EntityClass.dog.getter();
          goto LABEL_188;
        case -105:
          static EntityClass.cat.getter();
          goto LABEL_188;
        case -104:
          static EntityClass.extractionTagRelationshipType.getter();
          goto LABEL_188;
        case -103:
          static EntityClass.movie.getter();
          goto LABEL_188;
        case -102:
          static EntityClass.sportsOrganization.getter();
          goto LABEL_188;
        case -101:
          static EntityClass.sportsLeague.getter();
          goto LABEL_188;
        case -100:
          static EntityClass.athlete.getter();
          goto LABEL_188;
        case -99:
          static EntityClass.personInTheArts.getter();
          goto LABEL_188;
        case -98:
          static EntityClass.musician.getter();
          goto LABEL_188;
        case -97:
          static EntityClass.televisionProgram.getter();
          goto LABEL_188;
        case -96:
          static EntityClass.sportsActivity.getter();
          goto LABEL_188;
        case -95:
          static EntityClass.screenTimeSegment.getter(a1);
          goto LABEL_188;
        case -94:
          static EntityClass.myPet.getter();
          goto LABEL_188;
        case -93:
          static EntityClass.myDog.getter();
          goto LABEL_188;
        case -92:
          static EntityClass.myCat.getter();
          goto LABEL_188;
        case -91:
          static EntityClass.walletOrder.getter(a1);
          goto LABEL_188;
        case -90:
          static EntityClass.walletTransaction.getter();
          goto LABEL_188;
        case -89:
          static EntityClass.orderEmailRelationshipType.getter();
          goto LABEL_188;
        case -88:
          static EntityClass.orderTransactionRelationshipType.getter();
          goto LABEL_188;
        case -86:
          static EntityClass.payment.getter(a1);
          goto LABEL_188;
        case -85:
          static EntityClass.transaction.getter(a1);
          goto LABEL_188;
        case -84:
          static EntityClass.email.getter(a1);
          goto LABEL_188;
        case -83:
          static EntityClass.shippinginfo.getter(a1);
          goto LABEL_188;
        case -82:
          static EntityClass.shipmentFullFillmentInfo.getter(a1);
          goto LABEL_188;
        case -81:
          static EntityClass.orderShippingInfoRelationshipType.getter();
          goto LABEL_188;
        case -80:
          static EntityClass.entityOrganizationRelationshipType.getter();
          goto LABEL_188;
        case -79:
          static EntityClass.shipmentFullFillmentEmailRelationshipType.getter();
          goto LABEL_188;
        case -78:
          static EntityClass.orderShipmentFullFillmentRelationshipType.getter();
          goto LABEL_188;
        case -77:
          static EntityClass.orderPaymentRelationshipType.getter();
          goto LABEL_188;
        case -76:
          static EntityClass.fromToEmailRelationshipType.getter();
          goto LABEL_188;
        case -74:
          static EntityClass.orderPersonRelationshipType.getter();
          goto LABEL_188;
        case -73:
          static EntityClass.holidayEvent.getter();
          goto LABEL_188;
        case -72:
          static EntityClass.shipmentPersonRelationshipType.getter();
          goto LABEL_188;
        case -71:
          static EntityClass.emailInfoRelationshipType.getter();
          goto LABEL_188;
        default:
          goto LABEL_2;
      }
  }

  sub_1ABA8882C(v6, v4, v5, v11);
LABEL_188:
  v7 = v11[1];
  v8 = v11[2];
  v9 = v11[3];
  v10 = v12;
  *a2 = v11[0];
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
}

void static EntityPredicate.phoneticMiddleName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2604], *(_Records_GDEntityPredicate_records + 652), *(_Records_GDEntityPredicate_records + 653), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAA8FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void static EntityPredicate.phoneticFamilyName.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2616], *(_Records_GDEntityPredicate_records + 655), *(_Records_GDEntityPredicate_records + 656), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAA9058(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[47] = a2;
  v3[48].n128_u64[0] = a1;
  v3[48].n128_u64[1] = v2;
}

uint64_t sub_1ABAA9068(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void static EntityPredicate.identifierType.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[540], *(_Records_GDEntityPredicate_records + 136), *(_Records_GDEntityPredicate_records + 137), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.sourceURL.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[168], *(_Records_GDEntityPredicate_records + 43), *(_Records_GDEntityPredicate_records + 44), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAA9158()
{
}

__n128 sub_1ABAA9170()
{
  result = *&STACK[0x1010];
  v1 = *&STACK[0x1020];
  *&STACK[0x1040] = *&STACK[0x1010];
  *&STACK[0x1050] = v1;
  return result;
}

uint64_t sub_1ABAA9198()
{

  return type metadata accessor for CustomGraphDateRelationship(0);
}

uint64_t sub_1ABAA91B0()
{
  sub_1ABA84B54(*(v2 - 136));

  return sub_1ABD0ADB0(v0, v1);
}

void sub_1ABAA91E0()
{

  JUMPOUT(0x1AC5A9410);
}

void static EntityPredicate.username.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[552], *(_Records_GDEntityPredicate_records + 139), *(_Records_GDEntityPredicate_records + 140), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

unint64_t EntityIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1ABF23E64() & 1) != 0 || (result = sub_1ABF23E64(), (result))
  {
    v7 = sub_1ABF23D44();
    v8 = sub_1ABAA958C(v7, a1, a2);
    a1 = MEMORY[0x1AC5A9330](v8);
    a2 = v9;
  }

  v10 = HIBYTE(a2) & 0xF;
  v11 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_75;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v14 = sub_1ABB81138(a1, a2, 10);
    v33 = v32;

    if (v33)
    {
      goto LABEL_75;
    }

    goto LABEL_79;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1ABF24B74();
    }

    v13 = *result;
    if (v13 == 43)
    {
      if (v11 >= 1)
      {
        if (v11 != 1)
        {
          v14 = 0;
          if (result)
          {
            sub_1ABA9932C();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v16 & v15)
              {
                goto LABEL_73;
              }

              sub_1ABA7D45C();
              if (!v16)
              {
                goto LABEL_73;
              }

              v14 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                goto LABEL_73;
              }

              sub_1ABA7E4F0();
              if (v16)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_64;
        }

        goto LABEL_73;
      }

      goto LABEL_85;
    }

    if (v13 != 45)
    {
      if (v11)
      {
        v14 = 0;
        if (result)
        {
          while (1)
          {
            v26 = *result - 48;
            if (v26 > 9)
            {
              goto LABEL_73;
            }

            v27 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              goto LABEL_73;
            }

            v14 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_73;
            }

            ++result;
            if (!--v11)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_73:
      v14 = 0;
      v19 = 1;
LABEL_74:
      if (v19)
      {
LABEL_75:
        result = sub_1ABAAA650(a1, a2);
        if (v30)
        {
          v14 = 0;
          v31 = 1;
LABEL_81:
          *a3 = v14;
          *(a3 + 8) = v31;
          return result;
        }

        v14 = result;
LABEL_80:
        v31 = 0;
        goto LABEL_81;
      }

LABEL_79:

      goto LABEL_80;
    }

    if (v11 >= 1)
    {
      if (v11 != 1)
      {
        v14 = 0;
        if (result)
        {
          sub_1ABA9932C();
          while (1)
          {
            sub_1ABA7D44C();
            if (!v16 & v15)
            {
              goto LABEL_73;
            }

            sub_1ABA7D45C();
            if (!v16)
            {
              goto LABEL_73;
            }

            v14 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              goto LABEL_73;
            }

            sub_1ABA7E4F0();
            if (v16)
            {
              goto LABEL_74;
            }
          }
        }

LABEL_64:
        v19 = 0;
        goto LABEL_74;
      }

      goto LABEL_73;
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v10)
      {
        while (1)
        {
          sub_1ABA7D44C();
          if (!v16 & v15)
          {
            break;
          }

          sub_1ABA7D45C();
          if (!v16)
          {
            break;
          }

          v14 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v16)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        sub_1ABA93390();
        while (1)
        {
          sub_1ABA7D44C();
          if (!v16 & v15)
          {
            break;
          }

          sub_1ABA7D45C();
          if (!v16)
          {
            break;
          }

          v14 = v21 - v20;
          if (__OFSUB__(v21, v20))
          {
            break;
          }

          sub_1ABA7E4F0();
          if (v16)
          {
            goto LABEL_74;
          }
        }
      }

      goto LABEL_73;
    }

    goto LABEL_84;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      sub_1ABA93390();
      while (1)
      {
        sub_1ABA7D44C();
        if (!v16 & v15)
        {
          break;
        }

        sub_1ABA7D45C();
        if (!v16)
        {
          break;
        }

        v14 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          break;
        }

        sub_1ABA7E4F0();
        if (v16)
        {
          goto LABEL_74;
        }
      }
    }

    goto LABEL_73;
  }

LABEL_86:
  __break(1u);
  return result;
}

unint64_t sub_1ABAA958C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1ABF23D74();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      sub_1ABF23EC4();
      sub_1ABA8FF18();
      return sub_1ABA906A8();
    }
  }

  __break(1u);
  return result;
}

void static EntityPredicate.hasProfileImage.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2556], *(_Records_GDEntityPredicate_records + 640), *(_Records_GDEntityPredicate_records + 641), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.contactLabel.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[432], *(_Records_GDEntityPredicate_records + 109), *(_Records_GDEntityPredicate_records + 110), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA9718(uint64_t a1)
{
  v2 = *v1;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v2);
  return sub_1ABF25294();
}

void static EntityPredicate.contactFavoriteActionType.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[948], *(_Records_GDEntityPredicate_records + 238), *(_Records_GDEntityPredicate_records + 239), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.subAdministrativeArea.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[468], *(_Records_GDEntityPredicate_records + 118), *(_Records_GDEntityPredicate_records + 119), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasContactInformation.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1704], *(_Records_GDEntityPredicate_records + 427), *(_Records_GDEntityPredicate_records + 428), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAA98A0(uint64_t a1)
{
  v2 = sub_1ABAA98EC();

  return MEMORY[0x1EEE09B08](a1, v2);
}

unint64_t sub_1ABAA98EC()
{
  result = qword_1ED870B10;
  if (!qword_1ED870B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870B10);
  }

  return result;
}

void static EntityPredicate.hasAddress.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[840], *(_Records_GDEntityPredicate_records + 211), *(_Records_GDEntityPredicate_records + 212), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.locationLabel.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.entityAliasRelationship.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2640], *(_Records_GDEntityPredicate_records + 661), *(_Records_GDEntityPredicate_records + 662), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasLocation.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[612], *(_Records_GDEntityPredicate_records + 154), *(_Records_GDEntityPredicate_records + 155), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasLocationRelationship.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.identifier.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.entityAliasRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xD98), *(_Records_GDEntityClass_records + 0xDA0), *(_Records_GDEntityClass_records + 0xDA8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.signalLabel.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2628], *(_Records_GDEntityPredicate_records + 658), *(_Records_GDEntityPredicate_records + 659), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.confirmationConfidence.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2784], *(_Records_GDEntityPredicate_records + 697), *(_Records_GDEntityPredicate_records + 698), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAAA034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v50 = v23;
  v24 = sub_1ABF22FD4();
  sub_1ABA7BB64();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7BC58();
  v30 = v29 - v28;
  v31 = sub_1ABAD219C(&qword_1EB4DA7D8, &qword_1ABF67A60);
  sub_1ABA7AB80(v31);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA8176C();
  v51 = v20;
  sub_1ABF22F24();
  v33 = MEMORY[0x1E69B2880];
  sub_1ABAAA2F8(&unk_1ED870CB0, MEMORY[0x1E69B2880], MEMORY[0x1E69B2888]);

  sub_1ABF23F04();
  sub_1ABAAA2F8(&qword_1ED870CA8, v33, MEMORY[0x1E69B2890]);
  v49 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1ABF24864();
    v34 = sub_1ABA9A69C();
    if (sub_1ABA7E1E0(v34, v35, v24) == 1)
    {

      goto LABEL_12;
    }

    (*(v26 + 32))(v30, v22, v24);
    v50(&v51, v30);
    if (v21)
    {
      break;
    }

    v36 = sub_1ABA8C53C();
    v37(v36);
    v38 = v52;
    if (v52)
    {
      v48 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABAAA4F4();
        v49 = v42;
      }

      v39 = *(v49 + 16);
      v40 = v39 + 1;
      if (v39 >= *(v49 + 24) >> 1)
      {
        v46 = *(v49 + 16);
        v47 = v39 + 1;
        sub_1ABAAA4F4();
        v39 = v46;
        v40 = v47;
        v49 = v43;
      }

      *(v49 + 16) = v40;
      v41 = v49 + 16 * v39;
      *(v41 + 32) = v48;
      *(v41 + 40) = v38;
    }
  }

  v44 = sub_1ABA8C53C();
  v45(v44);

LABEL_12:
  sub_1ABA7BC90();
}

uint64_t sub_1ABAAA2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABAAA374@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MorphunTokenizer(0);
  sub_1ABF21F24();
  sub_1ABAAA4A0();
  sub_1ABAAA44C();
  v2 = sub_1ABF23B44();

  if ((v2 & 1) != 0 || (result = sub_1ABF22FC4(), (result)) && (result = sub_1ABF22FB4(), (result & 1) == 0))
  {
    result = sub_1ABF22FA4();
    *a1 = result;
    a1[1] = v4;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }

  return result;
}

unint64_t sub_1ABAAA44C()
{
  result = qword_1ED870D70;
  if (!qword_1ED870D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870D70);
  }

  return result;
}

unint64_t sub_1ABAAA4A0()
{
  result = qword_1ED870D68;
  if (!qword_1ED870D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870D68);
  }

  return result;
}

void sub_1ABAAA4F4()
{
  sub_1ABAA4428();
  if (v4)
  {
    sub_1ABA93188();
    if (v5 != v6)
    {
      sub_1ABAA4834();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1ABA7BBA0();
    }
  }

  sub_1ABA8E5E4();
  if (v3)
  {
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v7 = sub_1ABAA21A8();
    sub_1ABA80590(v7);
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = sub_1ABAA3730();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t sub_1ABAAA5C0()
{
  result = qword_1ED870668;
  if (!qword_1ED870668)
  {
    sub_1ABAE2850(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870668);
  }

  return result;
}

void sub_1ABAAA624(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[57] = a2;
  v3[58].n128_u64[0] = a1;
  v3[58].n128_u64[1] = v2;
}

uint64_t sub_1ABAAA634(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

unint64_t sub_1ABAAA650(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            v7 = 0;
            sub_1ABA93390();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v9 && v8)
              {
                break;
              }

              sub_1ABA81688();
              if (!v9)
              {
                break;
              }

              sub_1ABA7E4FC();
              if (v8)
              {
                break;
              }

              sub_1ABA7E4F0();
              if (v9)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          v7 = 0;
          while (1)
          {
            sub_1ABA7D44C();
            if (!v9 && v8)
            {
              break;
            }

            sub_1ABA81688();
            if (!v9)
            {
              break;
            }

            sub_1ABA7E4FC();
            if (v8)
            {
              break;
            }

            sub_1ABA7E4F0();
            if (v9)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          v7 = 0;
          sub_1ABA93390();
          while (1)
          {
            sub_1ABA7D44C();
            if (!v9 && v8)
            {
              break;
            }

            sub_1ABA81688();
            if (!v9)
            {
              break;
            }

            v8 = 10 * v7 >= v12;
            v7 = 10 * v7 - v12;
            if (!v8)
            {
              break;
            }

            sub_1ABA7E4F0();
            if (v9)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1ABF24B74();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              sub_1ABA9932C();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v9 && v8)
                {
                  goto LABEL_73;
                }

                sub_1ABA81688();
                if (!v9)
                {
                  goto LABEL_73;
                }

                sub_1ABA7E4FC();
                if (v8)
                {
                  goto LABEL_73;
                }

                sub_1ABA7E4F0();
                if (v9)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_63;
          }

          goto LABEL_73;
        }

        goto LABEL_83;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              v13 = *result - 48;
              if (v13 > 9)
              {
                goto LABEL_73;
              }

              if (!is_mul_ok(v7, 0xAuLL))
              {
                goto LABEL_73;
              }

              v8 = __CFADD__(10 * v7, v13);
              v7 = 10 * v7 + v13;
              if (v8)
              {
                goto LABEL_73;
              }

              ++result;
              if (!--v4)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_73:
        v7 = 0;
        v11 = 1;
        goto LABEL_74;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            sub_1ABA9932C();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v9 && v8)
              {
                goto LABEL_73;
              }

              sub_1ABA81688();
              if (!v9)
              {
                goto LABEL_73;
              }

              v8 = 10 * v7 >= v10;
              v7 = 10 * v7 - v10;
              if (!v8)
              {
                goto LABEL_73;
              }

              sub_1ABA7E4F0();
              if (v9)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_63:
          v11 = 0;
LABEL_74:
          v14 = v11;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v7 = sub_1ABB808D4(result, a2, 10);
  v14 = v15;
LABEL_75:

  if (v14)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void static EntityPredicate.sameAs.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[144], *(_Records_GDEntityPredicate_records + 37), *(_Records_GDEntityPredicate_records + 38), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.empty.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(*_Records_GDEntityPredicate_records, *(_Records_GDEntityPredicate_records + 1), *(_Records_GDEntityPredicate_records + 2), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAAA998(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[52] = a2;
  v3[53].n128_u64[0] = a1;
  v3[53].n128_u64[1] = v2;
}

uint64_t ViewService.sourceConfidenceView.getter@<X0>(void *a1@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = *(v1 + OBJC_IVAR___GDSwiftViewService_accessRequester);
  v5 = sub_1ABF23BD4();
  v17[0] = 0;
  v6 = [v4 requestAssertionForViewName:v5 error:v17];

  v7 = v17[0];
  if (v6)
  {
    v16 = a1;
    v8 = *(v1 + OBJC_IVAR___GDSwiftViewService_databaseCache);
    v9 = v8[5];
    v10 = v8[6];
    sub_1ABA93E20(v8 + 2, v9);
    v11 = *(v10 + 8);
    v12 = v7;
    result = v11(v6, v9, v10);
    if (v2)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v16[3] = result;
      v16[4] = v14;
      *v16 = v6;
      v16[1] = 0xD000000000000010;
      v16[2] = 0x80000001ABF94630;
    }
  }

  else
  {
    v15 = v17[0];
    sub_1ABF21BE4();

    return swift_willThrow();
  }

  return result;
}

uint64_t UnfairRecursiveLockedBox.access<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  os_unfair_recursive_lock_lock_with_options();
  a1(v3 + *(*v3 + 88));
  return sub_1ABAAABF0(v3, a3, MEMORY[0x1E69E9B88]);
}

uint64_t ViewService.SourceConfidenceView.confidenceMap(source:)(uint64_t a1, uint64_t a2)
{
  sub_1ABAAACF4();
  v4 = sub_1ABF239C4();
  swift_getObjectType();
  sub_1ABF22464();
  if (v2)
  {
  }

  return v4;
}

unint64_t sub_1ABAAACF4()
{
  result = qword_1EB4CFA90[0];
  if (!qword_1EB4CFA90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFA90);
  }

  return result;
}

uint64_t sub_1ABAAAD68(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), unint64_t a4, unint64_t *a5)
{
  v61 = a3;
  v59 = a1;
  v72 = sub_1ABF223D4();
  v57 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v65 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1ABF22EE4();
  v56 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  MEMORY[0x1EEE9AC00](v62);
  v10 = &v46 - v9;
  v55 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  MEMORY[0x1EEE9AC00](v55);
  v12 = (&v46 - v11);
  v13 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v49 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - v17;

  sub_1ABF22CE4();
  v67[3] = sub_1ABF22D14();
  v67[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v67);
  sub_1ABF22D24();
  v66[3] = MEMORY[0x1E69E6158];
  v66[4] = MEMORY[0x1E69A0130];
  v66[0] = v61;
  v66[1] = a4;
  v70 = sub_1ABF22424();
  v71 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v68);
  v53 = a4;

  sub_1ABF22AD4();
  sub_1ABA925A4(v66, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v67);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v68);
  sub_1ABAAB754();
  v19 = v60;
  v20 = sub_1ABF22294();
  (*(v58 + 8))(v15, v13);
  v21 = v49;
  if (v19)
  {
    return (*(v21 + 8))(v18, v16);
  }

  v47 = v18;
  v48 = v16;
  v54 = sub_1ABAAB7C8(v20);
  if (!v54)
  {

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1ABF24AB4();

    v68 = 0xD00000000000002ELL;
    v69 = 0x80000001ABF94650;
    MEMORY[0x1AC5A9410](v61, v53);
    v43 = v68;
    v44 = v69;
    sub_1ABB93C20();
    swift_allocError();
    *v45 = v43;
    *(v45 + 8) = v44;
    *(v45 + 16) = 1;
    swift_willThrow();
    v16 = v48;
    v21 = v49;
    v18 = v47;
    return (*(v21 + 8))(v18, v16);
  }

  v46 = 0;
  v58 = 0;
  v59 = 0;
  v23 = 0;
  v53 = v20 & 0xC000000000000001;
  v50 = v20 + 32;
  v24 = (v56 + 8);
  v61 = (v57 + 32);
  v60 = (v57 + 8);
  v25 = v63;
  v52 = a5;
  v51 = v20;
LABEL_5:
  v26 = v53;
  sub_1ABAAB7C0(v23, v53 == 0, v20);
  if (v26)
  {
    result = MEMORY[0x1AC5AA170](v23, v20);
    v27 = result;
  }

  else
  {
    v27 = *(v50 + 8 * v23);
  }

  v28 = __OFADD__(v23, 1);
  v29 = v23 + 1;
  if (!v28)
  {
    v57 = v29;
    v68 = v27;
    *v12 = v27;
    sub_1ABF22BB4();
    sub_1ABAAB818(&qword_1EB4D0208, MEMORY[0x1E69A0008], MEMORY[0x1E69A0018]);
    v56 = v27;

    sub_1ABF24474();
    while (1)
    {
      while (1)
      {
        v30 = v64;
        sub_1ABF244A4();
        sub_1ABAAB818(&qword_1EB4D0200, MEMORY[0x1E69A00E0], MEMORY[0x1E69A00E8]);
        v31 = sub_1ABF23BB4();
        (*v24)(v30, v25);
        if (v31)
        {
          sub_1ABA925A4(v12, &unk_1EB4D5810, &qword_1ABF48B70);

          v42 = v52;
          swift_isUniquelyReferenced_nonNull_native();
          v68 = *v42;
          sub_1ABAAB8D0();
          *v42 = v68;

          v23 = v57;
          v20 = v51;
          if (v57 == v54)
          {

            return (*(v49 + 8))(v47, v48);
          }

          goto LABEL_5;
        }

        v32 = sub_1ABF245D4();
        sub_1ABAAB860(v33, v10);
        v32(&v68, 0);
        sub_1ABF244B4();
        v35 = *v10;
        v34 = *(v10 + 1);
        (*v61)(v65, &v10[*(v62 + 48)], v72);
        v36 = v35 == 0x79546C616E676973 && v34 == 0xEA00000000006570;
        if (!v36 && (sub_1ABF25054() & 1) == 0)
        {
          break;
        }

        v39 = v65;
        v58 = sub_1ABF23CC4();
        v59 = v40;
        (*v60)(v39, v72);
LABEL_22:
        v25 = v63;
      }

      if (v35 == 0x6E656469666E6F63 && v34 == 0xEA00000000006563)
      {
      }

      else
      {
        v38 = sub_1ABF25054();

        if ((v38 & 1) == 0)
        {
          (*v60)(v65, v72);
          goto LABEL_22;
        }
      }

      v41 = v65;
      sub_1ABF24334();
      (*v60)(v41, v72);
      v25 = v63;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABAAB754()
{
  result = qword_1ED870CC0;
  if (!qword_1ED870CC0)
  {
    sub_1ABAE2850(&qword_1EB4D50F0, &unk_1ABF3A620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED870CC0);
  }

  return result;
}

unint64_t sub_1ABAAB7D0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1ABAAB7F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1ABF24CA4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1ABAAB818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABAAB860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABAAB8D0()
{
  sub_1ABAA0A1C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1ABAAB9DC(v9, v10, v5, v3);
  sub_1ABA7D0D8();
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_1ABF25104();
    __break(1u);
    return;
  }

  sub_1ABA8BC34();
  v12 = sub_1ABAD219C(&qword_1EB4D1F80, &qword_1ABF35170);
  if (sub_1ABA97424(v12))
  {
    v13 = sub_1ABA82DB8();
    sub_1ABAAB9DC(v13, v14, v6, v4);
    sub_1ABAA3404();
    if (!v16)
    {
      goto LABEL_12;
    }

    v2 = v15;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v8;
    sub_1ABA8B438();
  }

  else
  {
    sub_1ABAA3414();
    sub_1ABAABBD4(v17, v18, v19, v6, v4, v20, v8);

    sub_1ABA8B438();
  }
}

unint64_t sub_1ABAAB9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABF25234();
  sub_1ABF25254();
  if (a2)
  {
    sub_1ABF23D34();
  }

  sub_1ABF25254();
  if (a4)
  {
    sub_1ABF23D34();
  }

  v8 = sub_1ABF25294();

  return sub_1ABAABAB4(a1, a2, a3, a4, v8);
}

unint64_t sub_1ABAABAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[1];
      v17 = v15[2];
      v18 = v15[3];
      if (v16)
      {
        if (!a2)
        {
          goto LABEL_21;
        }

        v19 = *v15 == a1 && v16 == a2;
        if (!v19 && (sub_1ABF25054() & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else if (a2)
      {
        goto LABEL_21;
      }

      if (v18)
      {
        if (a4)
        {
          v20 = v17 == a3 && v18 == a4;
          if (v20 || (sub_1ABF25054() & 1) != 0)
          {
            return v8;
          }
        }
      }

      else if (!a4)
      {
        return v8;
      }

LABEL_21:
      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1ABAABBD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a6[7] + 8 * result) = a7;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_1ABAABC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_1ABADD2A0(v5, a2, a3, a4, v4);
}

uint64_t sub_1ABAABC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1ABAE9F4C();
}

uint64_t sub_1ABAABCF8()
{
}

void sub_1ABAABD10()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABAABD54()
{

  return sub_1ABF237F4();
}

uint64_t sub_1ABAABDA0(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 2;
  return result;
}

__n128 sub_1ABAABDB0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABAABDBC(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_1ABF25234();
  SourceConfidenceIdentifier.hash(into:)(v4);
  return sub_1ABF25294();
}

uint64_t SourceConfidenceIdentifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_1ABF25254();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1ABF25254();
  }

  sub_1ABF25254();
  sub_1ABF23D34();
  if (!v2)
  {
    return sub_1ABF25254();
  }

LABEL_3:
  sub_1ABF25254();

  return sub_1ABF23D34();
}

uint64_t Sequence<>.groupedByContentHash(uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v16 = a1;
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v10);
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v15 = a5;
  sub_1ABAAC184();
  v30 = sub_1ABF23A14();
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  v29 = sub_1ABF23934();
  v23 = a3;
  v24 = a4;
  v25 = a5;
  sub_1ABF23A44();
  swift_getWitnessTable();
  sub_1ABF23FA4();

  v30 = v31;
  v29 = sub_1ABF23934();
  v18 = a3;
  v19 = a4;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  sub_1ABF23A44();
  sub_1ABF23FA4();

  if (!v6)
  {
    return v31;
  }

  return result;
}

unint64_t sub_1ABAAC184()
{
  result = qword_1EB4CFD00;
  if (!qword_1EB4CFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CFD00);
  }

  return result;
}

uint64_t sub_1ABAAC1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v5(AssociatedTypeWitness, a4);
}

uint64_t sub_1ABAAC2B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_1ABF241F4();
  swift_getWitnessTable();
  sub_1ABF23FC4();
  sub_1ABAAC184();
  sub_1ABF23A44();
  return sub_1ABF23A74();
}

BOOL sub_1ABAAC3D8()
{
  swift_getAssociatedTypeWitness();
  v0 = ExtendedTripleProtocol.contentHash()();
  return v0 < ExtendedTripleProtocol.contentHash()();
}

Swift::Int __swiftcall ExtendedTripleProtocol.contentHash()()
{
  v2 = v1;
  v3 = v0;
  sub_1ABF252A4();
  (*(v2 + 8))(v21, v3, v2);
  MEMORY[0x1AC5AA8D0](v21[0]);
  v4 = sub_1ABA8F3D4();
  v6 = v5(v4);
  sub_1ABA7D834(v6, v7, v8, v9, v10);

  v11 = sub_1ABA8F3D4();
  v13 = v12(v11);
  sub_1ABA7D834(v13, v14, v15, v16, v17);

  v18 = sub_1ABA8F3D4();
  v19(v18);
  sub_1ABF23D34();

  return sub_1ABF25284();
}

uint64_t sub_1ABAAC598(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a2[1];
  if (*a2)
  {
    swift_getAssociatedTypeWitness();
    v11 = sub_1ABF241F4();
    WitnessTable = swift_getWitnessTable();
    sub_1ABAAC7F4(v11, WitnessTable, a7);
    sub_1ABF23A64();
    if (v10)
    {
      a3(v10, v10);

      if (v7)
      {
        return result;
      }

      sub_1ABF23A44();
    }

    else
    {
      sub_1ABF23A44();
    }

    return sub_1ABF23A74();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    swift_getAssociatedTypeWitness();
    sub_1ABF241F4();
    swift_getWitnessTable();
    return sub_1ABF23FD4();
  }
}

uint64_t sub_1ABAAC7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABF252A4();
  sub_1ABF23FD4();
  memcpy(__dst, __src, sizeof(__dst));
  return sub_1ABF25284();
}

uint64_t sub_1ABAAC888()
{
  swift_getAssociatedTypeWitness();
  v0 = ExtendedTripleProtocol.contentHash()();
  return MEMORY[0x1AC5AA8A0](v0);
}

uint64_t sub_1ABAAC914(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  ExtendedTripleProtocol.contentHash()();
  sub_1ABF241F4();
  sub_1ABF23A64();
  if (v16)
  {
    sub_1ABAACC20(AssociatedTypeWitness, AssociatedTypeWitness);
    v7 = *(AssociatedTypeWitness - 8);
    swift_allocObject();
    v8 = a3;
    v9 = sub_1ABF24114();
    (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
    sub_1ABAACCBC(v9, AssociatedTypeWitness);
    v8(v16, v11);
    if (v3)
    {
    }

    sub_1ABF23A44();
  }

  else
  {
    sub_1ABAACC20(AssociatedTypeWitness, AssociatedTypeWitness);
    v13 = *(AssociatedTypeWitness - 8);
    swift_allocObject();
    v14 = sub_1ABF24114();
    (*(v13 + 16))(v15, a1, AssociatedTypeWitness);
    sub_1ABAACCBC(v14, AssociatedTypeWitness);
    sub_1ABF23A44();
  }

  return sub_1ABF23A74();
}

uint64_t sub_1ABAACC20(uint64_t a1, uint64_t a2)
{
  if (sub_1ABAACC8C(a2, a2))
  {

    return sub_1ABAD219C(&qword_1EB4D1910, &qword_1ABF33AA0);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8]();
  }
}

uint64_t sub_1ABAACC8C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t static SourceConfidenceIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1ABF25054() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_1ABF25054() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1ABAACDB8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = *(Strong + 32);
    v6 = swift_task_alloc();
    v6[2] = v4;
    v6[3] = v3;
    v6[4] = v2;
    v7 = type metadata accessor for ExpirableLazyBox.State(0, v4, v3, v2);

    sub_1ABA7AEC8(sub_1ABAAD42C, v6, v5, v7, MEMORY[0x1E69E7CA8] + 8);
  }

  sub_1ABA7BBE0();

  return v8();
}

void *LRUCache.init(capacity:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 88);
  sub_1ABF247E4();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(v4 + 80);
  sub_1ABA7EB00();
  sub_1ABF247E4();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  v2[2] = a1;
  type metadata accessor for LRUCacheNode(255, v9, v5, *(v4 + 96));
  sub_1ABA7EB00();
  swift_getTupleTypeMetadata2();
  sub_1ABF24154();
  v2[3] = sub_1ABF239C4();
  sub_1ABA7B9B4(v12, 1, 1, v9);
  sub_1ABA7B9B4(v8, 1, 1, v5);
  v2[4] = sub_1ABA81FBC(v12, v8);
  swift_weakAssign();
  swift_weakAssign();
  return v2;
}

uint64_t sub_1ABAAD194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAAD23C@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;

  return sub_1ABF21EB4();
}

__n128 sub_1ABAAD254()
{
  result = *&STACK[0x1040];
  v1 = *&STACK[0x1050];
  *&STACK[0x1070] = *&STACK[0x1040];
  *&STACK[0x1080] = v1;
  return result;
}

id sub_1ABAAD268(void *a1)
{

  return [a1 (v2 + 3448)];
}

uint64_t sub_1ABAAD280()
{

  return swift_beginAccess();
}

void sub_1ABAAD2A0()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABAAD2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1ABA8A59C(*(a1 + *(a3 + 20)));
  }

  return sub_1ABA7E1E0(a1, a2, v6);
}

uint64_t ViewService.SiriRemembersView.databaseURL.getter()
{
  sub_1ABAA0880();
  sub_1ABF21CF4();
  sub_1ABA7BBB0();
  v0 = sub_1ABA7D000();

  return v1(v0);
}

uint64_t LRUCache.__deallocating_deinit()
{
  LRUCache.deinit();

  return swift_deallocClassInstance();
}

void sub_1ABAAD44C(uint64_t a1)
{
  sub_1ABF242C4();
  if (!v1)
  {
    *(*a1 + 16) = 0;

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v3 = sub_1ABF237F4();
    sub_1ABA7AA24(v3, qword_1ED871B40);
    v4 = sub_1ABF237D4();
    v5 = sub_1ABF24654();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1ABA78000, v4, v5, "ExpirableLazyBox value destroyed", v6, 2u);
      MEMORY[0x1AC5AB8B0](v6, -1, -1);
    }
  }
}

uint64_t sub_1ABAAD548()
{
  sub_1ABAAD59C();

  return swift_deallocClassInstance();
}

uint64_t LRUCache.deinit()
{

  return v0;
}

id static NSUserDefaults.makeIntelligencePlatformUserDefaults()()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1ABAAD730(0xD00000000000001ELL, 0x80000001ABF953B0);
  objc_autoreleasePoolPop(v0);
  if (v2)
  {
    return v2;
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

id sub_1ABAAD730(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1ABF23BD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t UserDefault.init(key:defaultValue:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UserDefault(0, a5, a3, a4);
  v13 = (a6 + *(v12 + 28));
  *v13 = a1;
  v13[1] = a2;
  result = (*(*(a5 - 8) + 32))(a6, a3, a5);
  *(a6 + *(v12 + 32)) = a4;
  return result;
}

void sub_1ABAAD88C()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABF21EB4();
    v5 = sub_1ABA8A56C(*(v4 + 52));

    sub_1ABA7B9B4(v5, v6, v0, v7);
  }
}

uint64_t sub_1ABAAD914(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1ABA8A59C(*(a1 + 24));
  }

  sub_1ABF21EB4();
  v5 = sub_1ABA8A56C(*(a3 + 52));

  return sub_1ABA7E1E0(v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for Features.FeatureFlag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
        JUMPOUT(0x1ABAADA68);
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
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

void static EntityPredicate.orderNumber.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2832], *(_Records_GDEntityPredicate_records + 709), *(_Records_GDEntityPredicate_records + 710), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.trackingNumber.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2928], *(_Records_GDEntityPredicate_records + 733), *(_Records_GDEntityPredicate_records + 734), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.senderDomain.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2868], *(_Records_GDEntityPredicate_records + 718), *(_Records_GDEntityPredicate_records + 719), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasMerchant.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2892], *(_Records_GDEntityPredicate_records + 724), *(_Records_GDEntityPredicate_records + 725), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.organizationIdentifier.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[3180], *(_Records_GDEntityPredicate_records + 796), *(_Records_GDEntityPredicate_records + 797), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasDate.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1ABAADD88(uint64_t *a1)
{
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = type metadata accessor for ViewDatabasePasProvider();
    v5 = swift_allocObject();
    *(v5 + 16) = [objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC660 &qword_1ABF77500))];
    v6 = type metadata accessor for ViewDatabaseGRDBProvider();
    v7 = swift_allocObject();
    *(v7 + 16) = [objc_allocWithZone(sub_1ABAD219C(&qword_1EB4DC668 &qword_1ABF77508))];
    v8 = type metadata accessor for VectorDatabaseClientProvider();
    v9 = swift_allocObject();
    *(v9 + 16) = [objc_allocWithZone(sub_1ABAD219C(&unk_1EB4DC670 &qword_1ABF77510))];
    type metadata accessor for ViewDatabaseInstances();
    v3 = swift_allocObject();
    v3[10] = v4;
    v3[11] = &off_1F2081468;
    v3[6] = &off_1F20804C0;
    v3[7] = v5;
    v3[5] = v6;
    v3[2] = v7;
    v3[15] = v8;
    v3[16] = &off_1F20A1618;
    v3[12] = v9;
    *(*a1 + 16) = v3;
  }

  return v3;
}

id sub_1ABAADFC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1ABAD219C(&qword_1EB4DC3F0, &qword_1ABF767C8);
  sub_1ABAAE088();
  v6 = sub_1ABAAE0CC(0, 5);
  *&v1[qword_1EB4DC3E8] = sub_1ABAAEA48(&v6, v3);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_1ABAAE088()
{
  result = qword_1ED872240;
  if (!qword_1ED872240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED872240);
  }

  return result;
}

id sub_1ABAAE0CC(uint64_t a1, uint64_t a2)
{
  v2 = [swift_getObjCClassFromMetadata() mapTableWithKeyOptions:a1 valueOptions:a2];

  return v2;
}

uint64_t sub_1ABAAE14C(uint64_t a1)
{
  result = sub_1ABF21CF4();
  if (v2 <= 0x3F)
  {
    result = sub_1ABAAE1D0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1ABAAE1D0()
{
  result = qword_1ED871EF0;
  if (!qword_1ED871EF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED871EF0);
  }

  return result;
}

uint64_t static ViewService.clientService.getter(uint64_t a1)
{
  if (qword_1ED872150 != -1)
  {
    a1 = sub_1ABA81D90(&qword_1ED872150);
  }

  v1 = *(qword_1ED8721E0 + OBJC_IVAR____TtC20IntelligencePlatform22ViewServiceUserManager_lockedServices);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v1 + 24));
  sub_1ABAAE60C((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

id sub_1ABAAE2E0()
{
  result = [objc_allocWithZone(type metadata accessor for ViewServiceUserManager()) init];
  qword_1ED8721E0 = result;
  return result;
}

id sub_1ABAAE358()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC20IntelligencePlatform22ViewServiceUserManager_lockedServices;
  type metadata accessor for ViewServiceUserManager.GuardedData();
  v4 = swift_allocObject();
  sub_1ABAAE434();
  sub_1ABAD219C(&qword_1EB4DC680, &qword_1ABF77718);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *&v1[v3] = v5;
  sub_1ABF236F4();
  sub_1ABAAE5B4();
  sub_1ABF22034();
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

void *sub_1ABAAE434()
{
  type metadata accessor for ViewService();
  sub_1ABAAE4A8();
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = sub_1ABF239C4();
  return v0;
}

unint64_t sub_1ABAAE4A8()
{
  result = qword_1ED872120[0];
  if (!qword_1ED872120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED872120);
  }

  return result;
}

unint64_t sub_1ABAAE500()
{
  result = qword_1ED872148;
  if (!qword_1ED872148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED872148);
  }

  return result;
}

void sub_1ABAAE568(uint64_t a1, unint64_t *a2, uint64_t a3)
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

unint64_t sub_1ABAAE5B4()
{
  result = qword_1ED872138;
  if (!qword_1ED872138)
  {
    sub_1ABF236F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED872138);
  }

  return result;
}

void sub_1ABAAE628(id a1@<X2>, uint64_t *a2@<X0>, void *a3@<X1>, void *a4@<X8>)
{
  if (a1)
  {
    v6 = [a1 identifier];
    v7 = sub_1ABF23C04();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = *a2;
  swift_beginAccess();
  v11 = *(v10 + 32);
  v12 = *(v11 + 16);
  v13 = a3;
  v14 = v13;
  if (v12 && (v15 = sub_1ABAF8B08(v13, v7, v9), (v16 & 1) != 0))
  {
    v17 = *(*(v11 + 56) + 8 * v15);
    swift_endAccess();
    v18 = v17;
  }

  else
  {
    swift_endAccess();
    v19 = sub_1ABAAE850(a2);
    v20 = sub_1ABAADD88(a2);
    v21 = objc_allocWithZone(type metadata accessor for RemoteViewAccessRequester());
    v22 = v14;
    v23 = v19;
    v24 = sub_1ABE41874(v23, v22);
    v25 = v22;
    v26 = v24;

    v27 = sub_1ABEBE9A8(v26, v26, v20, v25);
    swift_beginAccess();

    v18 = v27;
    v28 = v25;
    swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v10 + 32);
    sub_1ABAFC280(v18, v28, v7, v9);
    *(v10 + 32) = v30;

    swift_endAccess();
  }

  *a4 = v18;
}

id sub_1ABAAE850(uint64_t *a1)
{
  v1 = *(*a1 + 24);
  if (v1)
  {
    v2 = *(*a1 + 24);
  }

  else
  {
    v4 = [objc_allocWithZone(GDRemoteViewAccessRequester) init];
    v5 = *(*a1 + 24);
    *(*a1 + 24) = v4;

    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1ABAAEA48(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1ABF24B64();
  v4 = sub_1ABF24B54();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v4;
}

uint64_t sub_1ABAAEAF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a1 + ((*(v2 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v2 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2);
}

uint64_t sub_1ABAAEC74()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAAECAC(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1ABA84F5C();
  v3 = sub_1ABF23974();

  return v3;
}

uint64_t storeEnumTagSinglePayload for MockLocationFeatures(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void sub_1ABAAEE98(uint64_t result)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = *(result + 88);
    if (v2)
    {
      for (i = 51; i > 1; --i)
      {
        v4 = sqlite3_step([*(v2 + 24) stmt]);
        if (v4 != 5)
        {
          if (v4 != 6)
          {
            break;
          }

          usleep(0x186A0u);
        }
      }

      if (v4 != 100)
      {
        if (v4 != 101)
        {
          v5 = GDViewLog();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            v6[0] = 67109120;
            v6[1] = v4;
            _os_log_error_impl(&dword_1ABA78000, v5, OS_LOG_TYPE_ERROR, "SQLITE ERROR %d\n", v6, 8u);
          }
        }

        *(v2 + 32) = 1;
      }
    }

    sub_1ABAAEFEC(result);
  }
}

void sub_1ABAAEFEC(uint64_t a1)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), *(a1 + 8));
    v2 = *(a1 + 24);
    *(a1 + 24) = 0;

    v3 = *(a1 + 32);
    *(a1 + 32) = 0;

    v4 = *(a1 + 40);
    *(a1 + 40) = 0;

    v5 = *(a1 + 48);
    *(a1 + 48) = 0;

    v6 = *(a1 + 56);
    *(a1 + 56) = 0;

    v7 = *(a1 + 64);
    *(a1 + 64) = 0;

    v8 = *(a1 + 72);
    *(a1 + 72) = 0;

    v9 = *(a1 + 80);
    *(a1 + 80) = 0;
  }
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.__allocating_init(tag:score:inferenceEventIdValue:)(char *a1, uint64_t a2, double a3)
{
  v7 = *a1;
  v5 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag());
  return PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(tag:score:inferenceEventId:)(&v7, a2, a3);
}

void static EntityClass.email.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABAB5FF0(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.shipmentFullFillmentInfo.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABAB1F74(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.payment.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABAB5EDC(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.transaction.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABAB5F68(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1ABAAFAE0()
{
  result = *&STACK[0x20F0];
  v1 = *&STACK[0x2100];
  *&STACK[0x2120] = *&STACK[0x20F0];
  *&STACK[0x2130] = v1;
  return result;
}

__n128 sub_1ABAAFB00()
{
  result = *&STACK[0x1DF0];
  v1 = *&STACK[0x1E00];
  *&STACK[0x1E20] = *&STACK[0x1DF0];
  *&STACK[0x1E30] = v1;
  return result;
}

__n128 sub_1ABAAFB14()
{
  result = *&STACK[0x2030];
  v1 = *&STACK[0x2040];
  *&STACK[0x2060] = *&STACK[0x2030];
  *&STACK[0x2070] = v1;
  return result;
}

void static EntityPredicate.imputedOccurrenceDate.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1848], *(_Records_GDEntityPredicate_records + 463), *(_Records_GDEntityPredicate_records + 464), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasPayment.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[3060], *(_Records_GDEntityPredicate_records + 766), *(_Records_GDEntityPredicate_records + 767), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.paymentIdentifier.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[3156], *(_Records_GDEntityPredicate_records + 790), *(_Records_GDEntityPredicate_records + 791), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.totalAmount.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[3132], *(_Records_GDEntityPredicate_records + 784), *(_Records_GDEntityPredicate_records + 785), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.quantity.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[660], *(_Records_GDEntityPredicate_records + 166), *(_Records_GDEntityPredicate_records + 167), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.unit.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[672], *(_Records_GDEntityPredicate_records + 169), *(_Records_GDEntityPredicate_records + 170), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasTransaction.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2820], *(_Records_GDEntityPredicate_records + 706), *(_Records_GDEntityPredicate_records + 707), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityPredicate.hasEmail.getter()
{
  if (_Records_GDEntityPredicate_records)
  {
    v0 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2880], *(_Records_GDEntityPredicate_records + 721), *(_Records_GDEntityPredicate_records + 722), v11);
    sub_1ABA8F1F8(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1ABAAFEB4()
{
  v0 = sub_1ABA90C64();
  sub_1ABAB0C08(v0);
  v1 = sub_1ABA895D4();

  return sub_1ABAB12A0(v1, v2);
}

uint64_t sub_1ABAAFEEC(uint64_t a1)
{
  v2 = sub_1ABA9F054(a1);
  v3 = v1(v2);
  sub_1ABAA023C(v3, v4, v5);

  return sub_1ABF25294();
}

uint64_t sub_1ABAAFF38(uint64_t a1, uint64_t a2)
{
  sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1ABF24294();
  sub_1ABA7B9B4(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1ABF4AA50;
  v9[5] = v8;
  sub_1ABC03B98(0, 0, v6, &unk_1ABF4AA60, v9);
}

IntelligencePlatform::PersonEntityTagType_optional __swiftcall PersonEntityTagType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF250B4();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t PersonEntityTagType.rawValue.getter()
{
  result = 0x7465736E75;
  switch(*v0)
  {
    case 1:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x726568746FLL;
    case 3:
      return 0x666C6573796DLL;
    case 4:
      return 0x796C696D6166;
    case 5:
      return 0x746E65726170;
    case 6:
      return 0x726568746F6DLL;
    case 7:
      v4 = 1752457574;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 8:
      return 0x676E696C626973;
    case 9:
      v3 = 0x6568746F7262;
      goto LABEL_25;
    case 0xA:
      v4 = 1953720691;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 0xB:
      return 0x726150646E617267;
    case 0xC:
      return 0x746F6D646E617267;
    case 0xD:
      return 0x746166646E617267;
    case 0xE:
      v2 = 0x6C696843796DLL;
      goto LABEL_18;
    case 0xF:
      return 0x646C696863;
    case 0x10:
      return 7237491;
    case 0x11:
      v5 = 0x746867756164;
      goto LABEL_32;
    case 0x12:
      v3 = 0x656E74726170;
LABEL_25:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      break;
    case 0x13:
      result = 1701210487;
      break;
    case 0x14:
      v2 = 0x6E6162737568;
LABEL_18:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 0x15:
      result = 0x646E65697266;
      break;
    case 0x16:
      result = sub_1ABA7EEF4(16);
      break;
    case 0x17:
      v5 = 0x6B726F776F63;
LABEL_32:
      result = v5 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
      break;
    case 0x18:
      result = 0x726F62686769656ELL;
      break;
    case 0x19:
      result = 0x74616D6573756F68;
      break;
    case 0x1A:
      result = 0x696E6D756C61;
      break;
    case 0x1B:
      result = 0x746550796DLL;
      break;
    case 0x1C:
      result = 0x676F44796DLL;
      break;
    case 0x1D:
      result = 0x746143796DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABAB08B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1ABAD219C(a2, a3);
  sub_1ABA7D08C();
  (*(v4 + 8))(a1);
  return a1;
}

id PersonEntityTaggingService.PersonEntityTaggingOptions.init(tagNameThresholds:)(uint64_t a1)
{
  v2 = v1;
  sub_1ABAB20D0();
  v4 = sub_1ABF239C4();
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v17._countAndFlagsBits = v14;
    v17._object = v15;
    PersonEntityTagType.init(rawValue:)(v17);
    v18 = v35;
    if (v35 != 30)
    {
      v32 = v2;
      swift_isUniquelyReferenced_nonNull_native();
      v35 = v4;
      v19 = sub_1ABAAFEB4();
      v33 = v20;
      if (__OFADD__(v4[2], (v20 & 1) == 0))
      {
        goto LABEL_22;
      }

      v21 = v19;
      sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
      if (sub_1ABF24C64())
      {
        v22 = sub_1ABAAFEB4();
        v24 = v33;
        if ((v33 & 1) != (v23 & 1))
        {
          goto LABEL_24;
        }

        v21 = v22;
      }

      else
      {
        v24 = v33;
      }

      v4 = v35;
      if (v24)
      {
        *(v35[7] + 8 * v21) = v16;
      }

      else
      {
        v35[(v21 >> 6) + 8] |= 1 << v21;
        *(v4[6] + v21) = v18;
        *(v4[7] + 8 * v21) = v16;
        v25 = v4[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_23;
        }

        v4[2] = v27;
      }

      v2 = v32;
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      v28 = type metadata accessor for PersonEntityTaggingService.PersonEntityTaggingOptions();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds] = v4;
      v34.receiver = v29;
      v34.super_class = v28;

      v30 = objc_msgSendSuper2(&v34, sel_init);
      swift_getObjectType();
      swift_deallocPartialClassInstance();

      return v30;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABAB0C20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_1ABA9FF78();
  a3();
  sub_1ABAA00D8();
  v8 = v8 && v3 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28(v4, v7, v6);
  }

  return v9 & 1;
}

uint64_t sub_1ABAB0E10(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    sub_1ABAD219C(a2, a3);
    sub_1ABA89740();
    v5 = sub_1ABF24D54();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1ABAB0EB0(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7)
{
  v11 = _Block_copy(aBlock);
  sub_1ABAA08C0();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v11;
  v12[5] = a1;
  v13 = a3;
  v14 = a4;
  v15 = a1;

  return sub_1ABAAFF38(a7, v12);
}

uint64_t sub_1ABAB0F34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1ABAB0F50(float a1)
{
  *v2 = a1;

  return v1;
}

__n128 sub_1ABAB0F68()
{
  result = *&STACK[0xFB0];
  v1 = *&STACK[0xFC0];
  *&STACK[0xFE0] = *&STACK[0xFB0];
  *&STACK[0xFF0] = v1;
  return result;
}

uint64_t sub_1ABAB0F7C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_1ABAB0F94()
{

  return objc_allocWithZone(v0);
}

__n128 _s20IntelligencePlatform31CustomGraphAttendeeRelationshipV11subentityIdAA19SubentityIdentifierVvg_0@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1ABAB1024()
{
}

__n128 sub_1ABAB1044()
{
  result = *&STACK[0xAD0];
  v1 = *&STACK[0xAE0];
  *&STACK[0xB00] = *&STACK[0xAD0];
  *&STACK[0xB10] = v1;
  LOBYTE(STACK[0xB20]) = STACK[0xAF0];
  return result;
}

uint64_t sub_1ABAB10D8(uint64_t a1)
{

  return sub_1ABB13550(v1, a1);
}

uint64_t sub_1ABAB1100()
{
}

void *sub_1ABAB1170()
{
  v4 = (*(v0 + 160) + 112 * v1);

  return memcpy((v2 - 216), v4, 0x70uLL);
}

uint64_t sub_1ABAB1194()
{

  return sub_1ABF21814();
}

uint64_t sub_1ABAB11D4()
{
  *(v0 - 120) = *(v0 - 104);

  return EntityIdentifier.stringValue.getter();
}

unint64_t sub_1ABAB12A0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE500000000000000;
      v8 = 0x7465736E75;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v8 = 0x726568746FLL;
          break;
        case 3:
          v7 = 0xE600000000000000;
          v8 = 0x666C6573796DLL;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x796C696D6166;
          break;
        case 5:
          v7 = 0xE600000000000000;
          v8 = 0x746E65726170;
          break;
        case 6:
          v8 = 0x726568746F6DLL;
          v7 = 0xE600000000000000;
          break;
        case 7:
          v7 = 0xE600000000000000;
          v13 = 1752457574;
          goto LABEL_30;
        case 8:
          v7 = 0xE700000000000000;
          v8 = 0x676E696C626973;
          break;
        case 9:
          v7 = 0xE700000000000000;
          v12 = 0x6568746F7262;
          goto LABEL_28;
        case 0xA:
          v7 = 0xE600000000000000;
          v13 = 1953720691;
LABEL_30:
          v8 = v13 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 0xB:
          v8 = 0x726150646E617267;
          v11 = 7630437;
          goto LABEL_25;
        case 0xC:
          v8 = 0x746F6D646E617267;
          goto LABEL_24;
        case 0xD:
          v8 = 0x746166646E617267;
LABEL_24:
          v11 = 7497064;
LABEL_25:
          v7 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 0xE:
          v7 = 0xE700000000000000;
          v10 = 0x6C696843796DLL;
          goto LABEL_20;
        case 0xF:
          v8 = 0x646C696863;
          break;
        case 0x10:
          v7 = 0xE300000000000000;
          v8 = 7237491;
          break;
        case 0x11:
          v7 = 0xE800000000000000;
          v14 = 0x746867756164;
          goto LABEL_35;
        case 0x12:
          v7 = 0xE700000000000000;
          v12 = 0x656E74726170;
LABEL_28:
          v8 = v12 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 0x13:
          v7 = 0xE400000000000000;
          v8 = 1701210487;
          break;
        case 0x14:
          v7 = 0xE700000000000000;
          v10 = 0x6E6162737568;
LABEL_20:
          v8 = v10 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 0x15:
          v7 = 0xE600000000000000;
          v8 = 0x646E65697266;
          break;
        case 0x16:
          v8 = 0xD000000000000010;
          v7 = 0x80000001ABF81E70;
          break;
        case 0x17:
          v7 = 0xE800000000000000;
          v14 = 0x6B726F776F63;
LABEL_35:
          v8 = v14 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 0x18:
          v7 = 0xE800000000000000;
          v8 = 0x726F62686769656ELL;
          break;
        case 0x19:
          v8 = 0x74616D6573756F68;
          v7 = 0xE900000000000065;
          break;
        case 0x1A:
          v7 = 0xE600000000000000;
          v8 = 0x696E6D756C61;
          break;
        case 0x1B:
          v9 = 1699772781;
          goto LABEL_38;
        case 0x1C:
          v8 = 0x676F44796DLL;
          break;
        case 0x1D:
          v9 = 1631811949;
LABEL_38:
          v8 = v9 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      v15 = 0xE500000000000000;
      v16 = 0x7465736E75;
      switch(a1)
      {
        case 1:
          v15 = 0xE700000000000000;
          v16 = 0x6E776F6E6B6E75;
          break;
        case 2:
          v16 = 0x726568746FLL;
          break;
        case 3:
          v15 = 0xE600000000000000;
          v16 = 0x666C6573796DLL;
          break;
        case 4:
          v15 = 0xE600000000000000;
          v16 = 0x796C696D6166;
          break;
        case 5:
          v15 = 0xE600000000000000;
          v16 = 0x746E65726170;
          break;
        case 6:
          v16 = 0x726568746F6DLL;
          v15 = 0xE600000000000000;
          break;
        case 7:
          v15 = 0xE600000000000000;
          v21 = 1752457574;
          goto LABEL_67;
        case 8:
          v15 = 0xE700000000000000;
          v16 = 0x676E696C626973;
          break;
        case 9:
          v15 = 0xE700000000000000;
          v20 = 0x6568746F7262;
          goto LABEL_65;
        case 10:
          v15 = 0xE600000000000000;
          v21 = 1953720691;
LABEL_67:
          v16 = v21 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
          break;
        case 11:
          v16 = 0x726150646E617267;
          v19 = 7630437;
          goto LABEL_62;
        case 12:
          v16 = 0x746F6D646E617267;
          goto LABEL_61;
        case 13:
          v16 = 0x746166646E617267;
LABEL_61:
          v19 = 7497064;
LABEL_62:
          v15 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          break;
        case 14:
          v15 = 0xE700000000000000;
          v18 = 0x6C696843796DLL;
          goto LABEL_57;
        case 15:
          v16 = 0x646C696863;
          break;
        case 16:
          v15 = 0xE300000000000000;
          v16 = 7237491;
          break;
        case 17:
          v15 = 0xE800000000000000;
          v22 = 0x746867756164;
          goto LABEL_72;
        case 18:
          v15 = 0xE700000000000000;
          v20 = 0x656E74726170;
LABEL_65:
          v16 = v20 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
          break;
        case 19:
          v15 = 0xE400000000000000;
          v16 = 1701210487;
          break;
        case 20:
          v15 = 0xE700000000000000;
          v18 = 0x6E6162737568;
LABEL_57:
          v16 = v18 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
          break;
        case 21:
          v15 = 0xE600000000000000;
          v16 = 0x646E65697266;
          break;
        case 22:
          v16 = 0xD000000000000010;
          v15 = 0x80000001ABF81E70;
          break;
        case 23:
          v15 = 0xE800000000000000;
          v22 = 0x6B726F776F63;
LABEL_72:
          v16 = v22 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
          break;
        case 24:
          v15 = 0xE800000000000000;
          v16 = 0x726F62686769656ELL;
          break;
        case 25:
          v16 = 0x74616D6573756F68;
          v15 = 0xE900000000000065;
          break;
        case 26:
          v15 = 0xE600000000000000;
          v16 = 0x696E6D756C61;
          break;
        case 27:
          v17 = 1699772781;
          goto LABEL_75;
        case 28:
          v16 = 0x676F44796DLL;
          break;
        case 29:
          v17 = 1631811949;
LABEL_75:
          v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
          break;
        default:
          break;
      }

      if (v8 == v16 && v7 == v15)
      {
        break;
      }

      v24 = sub_1ABF25054();

      if ((v24 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_1ABAB1994(uint64_t a1)
{
  sub_1ABA8CE94(a1);

  sub_1ABAB1A04(v2);
  sub_1ABA7D1BC();

  sub_1ABA8AF24();
  return sub_1ABAB0E10(v1, v3, v4, v5);
}

uint64_t sub_1ABAB1A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v32 = MEMORY[0x1E69E7CC0];
  sub_1ABAB1D90(0, v1, 0);
  v2 = v32;
  result = sub_1ABAB0E08();
  v7 = result;
  v8 = 0;
  v9 = a1 + 64;
  v27 = v5;
  v28 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (*(a1 + 36) != v5)
    {
      goto LABEL_23;
    }

    v30 = v8;
    v31 = v5;
    v29 = v6;
    v11 = *(*(a1 + 56) + 8 * v7);
    result = PersonEntityTagType.rawValue.getter();
    v12 = result;
    v14 = v13;
    v16 = *(v2 + 16);
    v15 = *(v2 + 24);
    v17 = v2;
    if (v16 >= v15 >> 1)
    {
      result = sub_1ABAB1D90((v15 > 1), v16 + 1, 1);
      v17 = v2;
    }

    *(v17 + 16) = v16 + 1;
    v18 = (v17 + 24 * v16);
    v18[4] = v12;
    v18[5] = v14;
    v18[6] = v11;
    v19 = 1 << *(a1 + 32);
    if (v7 >= v19)
    {
      goto LABEL_24;
    }

    v9 = a1 + 64;
    v20 = *(a1 + 64 + 8 * v10);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v2 = v17;
    if (*(a1 + 36) != v31)
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v19 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (a1 + 72 + 8 * v10);
      while (v23 < (v19 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1ABAC933C(v7, v31, v29 & 1);
          v19 = __clz(__rbit64(v25)) + v22;
          goto LABEL_19;
        }
      }

      result = sub_1ABAC933C(v7, v31, v29 & 1);
    }

LABEL_19:
    v6 = 0;
    v8 = v30 + 1;
    v7 = v19;
    v5 = v27;
    if (v30 + 1 == v28)
    {
      return v2;
    }
  }

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
  return result;
}

void *sub_1ABAB1C58(void *result, int64_t a2, char a3, void *a4)
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
    sub_1ABAD219C(&qword_1EB4D10B0, &qword_1ABF33238);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D10B8, &qword_1ABF33240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1ABAB1D90(void *a1, int64_t a2, char a3)
{
  result = sub_1ABAB1C58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void (*sub_1ABAB1DFC(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void)))(void)
{
  a3();
  a4();
  sub_1ABA89740();
  sub_1ABF240C4();
  sub_1ABA9EFD8();

  return a4;
}

uint64_t PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(gdTag:score:inferenceEventIdValue:)(double a1, uint64_t a2, uint64_t a3)
{
  PersonEntityTagType.init(gdTagType:)(&v6);
  swift_getObjectType();
  PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.__allocating_init(tag:score:inferenceEventIdValue:)(&v6, a3, a1);
  sub_1ABA9EFD8();
  swift_deallocPartialClassInstance();
  return a3;
}

uint64_t sub_1ABAB1F84(uint64_t a1)
{
  v5 = (v1 + *(a1 + 24));

  return sub_1ABC8B318(v2, v3, v5);
}

void static EntityClass.pet.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAA0C5C(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v14);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v12, v14[0], v14[1], v15);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.dog.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xDC8), *(_Records_GDEntityClass_records + 0xDD0), *(_Records_GDEntityClass_records + 0xDD8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1ABAB20D0()
{
  result = qword_1ED86D3E0;
  if (!qword_1ED86D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D3E0);
  }

  return result;
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(tag:score:inferenceEventId:)(_BYTE *a1, uint64_t a2, double a3)
{
  v3[OBJC_IVAR___GDScoredPersonEntityTagInner_tag] = *a1;
  *&v3[OBJC_IVAR___GDScoredPersonEntityTagInner_score] = a3;
  *&v3[OBJC_IVAR___GDScoredPersonEntityTagInner_inferenceEventId] = a2;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag();
  return objc_msgSendSuper2(&v5, sel_init);
}

void static EntityClass.cat.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xDE0), *(_Records_GDEntityClass_records + 0xDE8), *(_Records_GDEntityClass_records + 0xDF0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.extractionTagRelationshipType.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xDF8), *(_Records_GDEntityClass_records + 0xE00), *(_Records_GDEntityClass_records + 0xE08), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB22E8()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABAB2378()
{
  sub_1ABC10824();
  sub_1ABA8C008();
  sub_1ABA89C7C();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  sub_1ABA949A0(v1);
  sub_1ABAA9184();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABAB2408(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = v2[1];
  v30 = *v2;
  v31 = v6;
  v32 = v2[2];
  v33 = *(v2 + 6);
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D5840, &qword_1ABF4B658);
  result = sub_1ABF22464();
  if (!v3)
  {
    v8 = v28[1];
    v9 = OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds;
    swift_beginAccess();
    v10 = *(a2 + v9);
    v28[0] = MEMORY[0x1E69E7CC0];
    sub_1ABA8F320();
    if (v29)
    {
      v11 = 0;
    }

    else
    {
      v11 = v28[2];
    }

    v26 = v11;

    v12 = 0;
    while (v5)
    {
LABEL_11:
      sub_1ABA7D74C();
      v15 = (*(v8 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(*(v8 + 56) + 8 * v14);
      swift_bridgeObjectRetain_n();
      v19._countAndFlagsBits = v16;
      v19._object = v17;
      PersonEntityTagType.init(rawValue:)(v19);
      if (v27 == 30)
      {
        v20 = 0;
      }

      else
      {
        v20 = v27;
      }

      if (*(v10 + 16) && (v21 = sub_1ABAAFEB4(), (v22 & 1) != 0) && *(*(v10 + 56) + 8 * v21) <= v18)
      {
        v27 = v20;
        v23 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag());
        PersonEntityTaggingService.ScoreRankedPersonEntityTags.ScoredPersonEntityTag.init(tag:score:inferenceEventId:)(&v27, v26, v18);

        MEMORY[0x1AC5A9710](v24);
        if (*((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABF24184();
      }

      else
      {
      }
    }

    while (1)
    {
      v13 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= a2)
      {

        v28[0] = sub_1ABAB4C50(v25, sub_1ABAE3054, sub_1ABB4E6FC);
        sub_1ABAB34A0(v28, sub_1ABAB4CF4, sub_1ABAE8C4C, &OBJC_IVAR___GDScoredPersonEntityTagInner_score, sub_1ABAE304C);

        return v28[0];
      }

      v5 = *(v8 + 64 + 8 * v13);
      ++v12;
      if (v5)
      {
        v12 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

__n128 sub_1ABAB2AA8@<Q0>(uint64_t a1@<X8>)
{
  result = *v1;
  v5 = *(v1 + 16);
  *v3 = a1;
  *(v3 + 8) = result;
  *(v3 + 24) = v5;
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1ABAB2AC0()
{

  return sub_1ABF25234();
}

id sub_1ABAB2B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  a16 = a18;
  a17 = a19;
  v22 = *(v20 + 24);

  return sub_1ABC4EFE4(&a16, v19, v22, a4);
}

void sub_1ABAB2B6C(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6[2] = a2;
  v6[3].n128_u64[0] = a1;
  v6[3].n128_u64[1] = v2;
  v6[4].n128_u8[0] = v3;
  *(v5 + 16) = v6;
  *(v4 + 32) = v5 | 0x4000000000000000;
}

uint64_t sub_1ABAB2BAC()
{
  v2 = *(v0 - 200);
  v3 = *(v0 - 192);
  *(v0 - 128) = v2;
  *(v0 - 120) = v3;
  *(v0 - 65) = 10;

  return sub_1ABB0DBF0(v2, v3);
}

uint64_t sub_1ABAB2BE0(uint64_t a1)
{

  return swift_allocObject();
}

void sub_1ABAB2C04()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABAB2C24(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 2;
  return result;
}

uint64_t sub_1ABAB2C34(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1ABA7FDA0;

  return v7();
}

uint64_t sub_1ABAB2D1C(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = sub_1ABF23C04();
  v9 = v8;
  v4[5] = v8;
  v10 = a2;
  a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1ABAB354C;

  return sub_1ABAB3D24(v7, v9, a2);
}

uint64_t sub_1ABAB2E08()
{
  sub_1ABA7BBF8();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1ABAB4E7C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1ABAB2EAC(v4, v2, v3);
}

uint64_t sub_1ABAB2EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  return sub_1ABA8C014();
}

uint64_t sub_1ABAB2EC4()
{
  v22 = v1;
  v2 = v1[11];
  v3 = v1[12];

  EntityIdentifier.init(_:)(v2, v3, v21);
  if (v21[1])
  {
    v6 = v1 + 11;
    v5 = v1[11];
    v4 = v6[1];
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1ABF24AB4();

    strcpy(v21, "Identifier: ");
    BYTE5(v21[1]) = 0;
    HIWORD(v21[1]) = -5120;
    MEMORY[0x1AC5A9410](v5, v4);
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF8B970);
    return sub_1ABF24CD4();
  }

  else
  {
    v8 = v21[0];
    v9 = v1[13];
    if (v9)
    {
      v10 = v1[13];
    }

    else
    {
      if (qword_1EB4CED70 == -1)
      {
        v9 = 0;
      }

      else
      {
        sub_1ABA993E0(&qword_1EB4CED70);
        v9 = v1[13];
      }

      v10 = qword_1EB4CED78;
    }

    memcpy(v1 + 2, (v1[14] + 16), 0x48uLL);
    v21[0] = v8;
    v11 = v9;
    sub_1ABA8A3B0();
    v14 = sub_1ABAB2408(v12, v13);
    if (v0)
    {

      sub_1ABA7C144();

      return v16();
    }

    else
    {
      v17 = v14;
      v18 = v15;
      v21[0] = v8;
      objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags());

      v19 = PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(v21, v17, v18);

      sub_1ABA82A20();

      return v20(v19);
    }
  }
}

uint64_t sub_1ABAB3104(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v7 = sub_1ABF22854();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  sub_1ABF24AB4();
  MEMORY[0x1AC5A9410](0xD000000000000044, 0x80000001ABF8C440);
  MEMORY[0x1AC5A9410](a3, a4);
  MEMORY[0x1AC5A9410](0x454E4E490A306620, 0xEF204E494F4A2052);
  MEMORY[0x1AC5A9410](a3, a4);
  MEMORY[0x1AC5A9410](0xD000000000000038, 0x80000001ABF8C490);
  MEMORY[0x1AC5A9410](a3, a4);
  MEMORY[0x1AC5A9410](0xD00000000000002ALL, 0x80000001ABF8C4D0);
  MEMORY[0x1AC5A9410](a3, a4);
  MEMORY[0x1AC5A9410](0xD00000000000011DLL, 0x80000001ABF8C500);
  sub_1ABF22BB4();
  sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1ABF34740;
  *&v24[0] = v11;
  v13 = EntityIdentifier.stringValue.getter();
  v14 = MEMORY[0x1E69A0138];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  sub_1ABF22834();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v16 = v23[1];
  v17 = sub_1ABF22B84();
  if (v16)
  {

    sub_1ABAB480C(v24, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v19 = v17;

    sub_1ABAB480C(v24, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v8 + 8))(v10, v7);
    *&v24[0] = sub_1ABF239C4();
    result = sub_1ABAAB7C8(v19);
    v20 = result;
    for (i = 0; ; ++i)
    {
      if (v20 == i)
      {

        return *&v24[0];
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1AC5AA170](i, v19);
        v22 = result;
      }

      else
      {
        if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v22 = *(v19 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      v26 = v22;
      sub_1ABC1D1DC(v24);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABAB34A0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), void *a4, void (*a5)(uint64_t *, int64_t, uint64_t *))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a2(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_1ABAB4D10(v14, a3, a4, a5);
  return sub_1ABF24BA4();
}

uint64_t sub_1ABAB354C()
{
  sub_1ABA906D0();
  sub_1ABA9E694();
  v4 = *(v3 + 24);
  v5 = *(v3 + 16);
  v6 = *v2;
  sub_1ABA7BBC0();
  *v7 = v6;

  sub_1ABA88B68();
  v9 = *(v8 + 32);
  if (v0)
  {
    sub_1ABF21BD4();

    v10 = sub_1ABA7AD00();
    v11(v10, 0, v1);

    _Block_release(v9);
  }

  else
  {
    sub_1ABA7AD00();
    sub_1ABA89148();
    v12();
    _Block_release(v9);
  }

  sub_1ABA8C598();

  return v13();
}

uint64_t sub_1ABAB3724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  a6(a1, a2);
  v10 = sub_1ABF240D4();
  return a7(a3, v10, a5);
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(idValue:scoredPersonEntityTags:inferenceEventIdValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v5 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags());
  v6 = a3;
  v7 = v5;
  PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(&v10, a2, v6);
  sub_1ABA7D1BC();
  ObjectType = swift_getObjectType();
  sub_1ABA8A608(ObjectType);
  return v7;
}

id PersonEntityTaggingService.ScoreRankedPersonEntityTags.init(id:scoredPersonEntityTags:inferenceEventId:)(void *a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_id] = *a1;
  *&v3[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_scoredPersonEntityTags] = a2;
  *&v3[OBJC_IVAR___GDScoreRankedPersonEntityTagsInner_inferenceEventId] = a3;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for PersonEntityTaggingService.ScoreRankedPersonEntityTags();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1ABAB3964()
{
  sub_1ABA7BC04();
  v0 = swift_task_alloc();
  v1 = sub_1ABA8864C(v0);
  *v1 = v2;
  v3 = sub_1ABA93490(v1);

  return v4(v3);
}

uint64_t sub_1ABAB39FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1ABAB4F64;

  return v6(a1);
}

uint64_t sub_1ABAB3AF4()
{
  sub_1ABA8C008();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_1ABA8864C(v6);
  *v7 = v8;
  v7[1] = sub_1ABAB2788;

  return sub_1ABAB2C34(v2, v3, v4, v5);
}

uint64_t sub_1ABAB3BB8()
{
  v3 = *(v1 - 104);

  return sub_1ABA96210(v0, v3);
}

__n128 sub_1ABAB3BD0()
{
  result = *&STACK[0xF80];
  v1 = *&STACK[0xF90];
  *&STACK[0xFB0] = *&STACK[0xF80];
  *&STACK[0xFC0] = v1;
  return result;
}

uint64_t sub_1ABAB3BE4(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

id sub_1ABAB3C04()
{
  v2 = *(v0 + 3480);

  return objc_allocWithZone(v2);
}

uint64_t sub_1ABAB3C3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1ABAB2788;

  return v6();
}

uint64_t sub_1ABAB3D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1ABA8C014();
}

uint64_t sub_1ABAB3D3C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v13 = a3;
  result = sub_1ABAB3D88(a1, v6, v7, v8, v9, &v13);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v11;
    *(a4 + 16) = v12 & 1;
  }

  return result;
}

uint64_t sub_1ABAB3D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v123 = a4;
  v124 = a5;
  v126 = a1;
  v131 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v115 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v134 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1ABF22EE4();
  sub_1ABA7BB64();
  v117 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1ABAD219C(&qword_1EB4D1200, &unk_1ABF4B4D0);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v112 - v15;
  v116 = sub_1ABAD219C(&unk_1EB4D5810, &qword_1ABF48B70);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v112 - v18);
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v127 = v20;
  v128 = v21;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v23 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7BB64();
  v121 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v112 - v26;
  v28 = *a6;

  sub_1ABF22CE4();
  v125 = sub_1ABF239C4();
  v119 = v28;
  v133[0] = v28;
  v133[0] = sub_1ABF24FF4();
  v133[1] = v29;
  v122 = v23;
  v120 = v27;
  v30 = v127;
  sub_1ABF22C84();

  sub_1ABA7D098();
  sub_1ABAB47C4(v31, &qword_1EB4D50F0, &unk_1ABF3A620, v32);
  v33 = v129;
  v34 = sub_1ABF222A4();
  v118 = v33;
  if (v33)
  {
    v35 = sub_1ABA90070();
    v36(v35);
    if (qword_1ED870750 != -1)
    {
      sub_1ABA7D72C(&qword_1ED870750);
    }

    v37 = sub_1ABF237F4();
    sub_1ABA7AA24(v37, qword_1ED870758);
    v38 = v118;
    v39 = v118;
    v40 = sub_1ABF237D4();
    v41 = sub_1ABF24664();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v119;
    if (v42)
    {
      v30 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v30 = 138412290;
      v44 = v38;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v45;
      *v23 = v45;
      _os_log_impl(&dword_1ABA78000, v40, v41, "Failed to query entityTagging view during ET query. This is not fatal, defaulting to graph results. Error: %@", v30, 0xCu);
      sub_1ABAB480C(v23, &unk_1EB4D57F0, &qword_1ABF390C0);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    else
    {
    }

    v105 = 0;
    v106 = sub_1ABA8E8C8();
    goto LABEL_40;
  }

  v46 = v34;
  v47 = v116;
  v48 = v117;
  v49 = sub_1ABA90070();
  v50(v49);
  if (!v46)
  {
    v106 = sub_1ABA8E8C8();
    v105 = v118;
    v43 = v119;
LABEL_40:
    v133[0] = v43;
    v109 = sub_1ABAB3104(v106, v133, v107, v108);
    v110 = v125;
    if (v105)
    {
      (*(v23 + 8))(v120, v30);
    }

    else
    {
      v110 = sub_1ABAB48D8(v109, v125, sub_1ABC1D890, sub_1ABAB4960);
      (*(v23 + 8))(v120, v30);
    }

    return v110;
  }

  v133[0] = v46;
  *v19 = v46;
  v30 = *(v47 + 36);
  sub_1ABF22BB4();
  v23 = sub_1ABAAB818(&qword_1EB4D0208, MEMORY[0x1E69A0008], MEMORY[0x1E69A0018]);
  sub_1ABF24474();
  v116 = 0;
  v129 = (v48 + 8);
  v127 = (v115 + 8);
  v128 = (v115 + 32);
  LODWORD(v117) = 1;
LABEL_8:
  v51 = v132;
  while (1)
  {
    sub_1ABF244A4();
    sub_1ABAAB818(&qword_1EB4D0200, MEMORY[0x1E69A00E0], MEMORY[0x1E69A00E8]);
    v52 = sub_1ABF23BB4();
    (*v129)(v13, v51);
    if (v52)
    {
      sub_1ABAB480C(v19, &unk_1EB4D5810, &qword_1ABF48B70);
      v106 = sub_1ABA8E8C8();
      v105 = v118;
      v43 = v119;
      goto LABEL_40;
    }

    v53 = sub_1ABF245D4();
    sub_1ABAAB860(v54, v16);
    v53(v133, 0);
    sub_1ABF244B4();
    v55 = *v16;
    v56 = *(v16 + 1);
    v57 = v131;
    (*v128)(v134, &v16[*(v130 + 48)], v131);
    v58 = v55 == 1684628589 && v56 == 0xE400000000000000;
    if (v58 || (sub_1ABA838BC(), (sub_1ABF25054() & 1) != 0))
    {
      (*v127)(v134, v57);

      goto LABEL_8;
    }

    v59 = v55 == 0x6469746E657665 && v56 == 0xE700000000000000;
    v60 = v125;
    if (v59 || (sub_1ABA838BC(), (sub_1ABF25054() & 1) != 0))
    {
      v116 = sub_1ABF251F4();
      LODWORD(v117) = v61;
    }

    v62 = sub_1ABF24334();
    if (v63)
    {
      v93 = sub_1ABA838BC();
      sub_1ABA94FC8(v93, v94, v95, v96, v97, v98, v99, v100, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v102 = v101;

      if (v102)
      {
        v103 = v125;
        LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
        v133[0] = v103;
        sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
        sub_1ABF24C64();
        v104 = v133[0];

        v125 = v104;
        sub_1ABF24C84();
      }

      (*v127)(v134, v131);
      goto LABEL_8;
    }

    v115 = v62;
    HIDWORD(v114) = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v60;
    v64 = sub_1ABA838BC();
    v112 = sub_1ABA94FC8(v64, v65, v66, v67, v68, v69, v70, v71, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
    v72 = *(v60 + 16);
    LODWORD(v125) = v73;
    v74 = (v73 & 1) == 0;
    v113 = v72 + v74;
    if (__OFADD__(v72, v74))
    {
      break;
    }

    sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
    if (sub_1ABF24C64())
    {
      v75 = sub_1ABA838BC();
      v83 = sub_1ABA94FC8(v75, v76, v77, v78, v79, v80, v81, v82, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
      v85 = v125;
      if ((v125 & 1) != (v84 & 1))
      {
        goto LABEL_46;
      }

      v86 = v131;
      v87 = v115;
    }

    else
    {
      v86 = v131;
      v87 = v115;
      v83 = v112;
      v85 = v125;
    }

    v88 = v133[0];
    v125 = v133[0];
    if (v85)
    {
      *(*(v133[0] + 56) + 8 * v83) = v87;
    }

    else
    {
      *(v133[0] + 8 * (v83 >> 6) + 64) |= 1 << v83;
      v89 = (v88[6] + 16 * v83);
      *v89 = v55;
      v89[1] = v56;
      *(v88[7] + 8 * v83) = v87;
      v90 = v88[2];
      v91 = __OFADD__(v90, 1);
      v92 = v90 + 1;
      if (v91)
      {
        goto LABEL_45;
      }

      v88[2] = v92;
    }

    v51 = v132;
    (*v127)(v134, v86);
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABAB47C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABAB480C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1ABAD219C(a2, a3);
  sub_1ABA7BBB0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t EntityIdentifier.stringValue.getter()
{
  v1 = 3826797;
  if ((*v0 & 0x80000000000000) == 0)
  {
    v1 = 3828069;
  }

  v4 = v1;
  v2 = sub_1ABF24FF4();
  MEMORY[0x1AC5A9410](v2);

  return v4;
}

uint64_t sub_1ABAB48D8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_1ABAB4960(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v89 = a5;
  sub_1ABAB4C04(&v78);
  v8 = v79;
  v9 = v81;
  v10 = v82;
  v64 = v83;
  v66 = v78;
  v68 = v84;
  v56 = v80;
  v11 = (v80 + 64) >> 6;
  v60 = a1;

  v58 = a3;

  if (v10)
  {
    while (1)
    {
      HIDWORD(v70) = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v66 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v66 + 56) + 8 * v14);
      v75 = *v15;
      v76 = v16;
      v77 = v17;

      v64(&v72, &v75);

      v18 = v72;
      v19 = v73;
      v20 = v74;
      v21 = *v89;
      v35 = sub_1ABA94FC8(v72, v73, v22, v23, v24, v25, v26, v27, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73);
      v36 = v21[2];
      v37 = (v28 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        break;
      }

      v39 = v28;
      if (v21[3] >= v38)
      {
        if ((v70 & 0x100000000) == 0)
        {
          sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
          sub_1ABF24C74();
        }
      }

      else
      {
        sub_1ABC04E64(v38, BYTE4(v70) & 1, v29, v30, v31, v32, v33, v34, v56, v58, v60, SBYTE4(v60), SHIWORD(v60), v62, v64, v66, v68, v70, v72, v73, *&v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89);
        v46 = sub_1ABA94FC8(v18, v19, v40, v41, v42, v43, v44, v45, v57, v59, v61, v63, v65, v67, v69, v71, v72, v73);
        if ((v39 & 1) != (v47 & 1))
        {
          goto LABEL_27;
        }

        v35 = v46;
      }

      v10 &= v10 - 1;
      v48 = *v89;
      if (v39)
      {
        v49 = *(v48[7] + 8 * v35);

        if (v20 >= v49)
        {
          v50 = v20;
        }

        else
        {
          v50 = v49;
        }

        *(v48[7] + 8 * v35) = v50;
      }

      else
      {
        v48[(v35 >> 6) + 8] |= 1 << v35;
        v51 = (v48[6] + 16 * v35);
        *v51 = v18;
        v51[1] = v19;
        *(v48[7] + 8 * v35) = v20;
        v52 = v48[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_26;
        }

        v48[2] = v54;
      }

      a4 = 1;
      v9 = v12;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_1ABAB4C48(v66);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v70) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABAB4C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_1ABAB4C50(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (a1 >> 62)
  {
    v8 = sub_1ABF24CA4();
    if (v8)
    {
      v9 = v8;
      v4 = a2(v8, 0);
      a3(v4 + 32, v9, a1);
      v11 = v10;

      if (v11 == v9)
      {
        return v4;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

void sub_1ABAB4D10(uint64_t *a1, uint64_t (*a2)(uint64_t), void *a3, void (*a4)(uint64_t *, int64_t, uint64_t *))
{
  v9 = a1[1];
  v10 = sub_1ABF24FE4();
  if (v10 < v9)
  {
    v11 = v10;
    v12 = a2(v9 / 2);
    v14[0] = v13;
    v14[1] = (v9 / 2);
    sub_1ABC1DF44(v14, v15, a1, v11, a3, a4);
    if (v4)
    {
      if (v9 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v9 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v9)
  {
    sub_1ABAB4E14(0, v9, 1, a1, a3);
  }
}

uint64_t sub_1ABAB4E14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 8 * a3);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        if (*(*v10 + *a5) >= *(v8 + *a5))
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        *v10 = v8;
        v10[1] = v11;
        --v10;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      v6 += 8;
      --v7;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1ABAB4E7C()
{
  sub_1ABA7BBF8();
  sub_1ABAB10C8();
  v3 = *v2;
  sub_1ABA7BBC0();
  *v4 = v3;

  sub_1ABA82A20();
  if (!v1)
  {
    v5 = v0;
  }

  return v6(v5);
}

uint64_t sub_1ABAB4F64()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  sub_1ABA80A84();

  return v3();
}

uint64_t sub_1ABAB5044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABBB76E8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAB5070(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * result - 64;
  return result;
}

uint64_t sub_1ABAB5160()
{
}

void sub_1ABAB5190()
{

  JUMPOUT(0x1AC5A9410);
}

uint64_t sub_1ABAB51C8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABF24F14();
}

uint64_t sub_1ABAB51E4(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 3;
  return result;
}

void sub_1ABAB5200(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *v5 = a1;
  *(v5 + 8) = v3;
  *(v5 + 16) = a2;
  *(v5 + 32) = v4;
  *(v5 + 40) = a3;
}

uint64_t sub_1ABAB5214()
{

  return sub_1ABA88934(&STACK[0xB90]);
}

uint64_t sub_1ABAB5278(uint64_t a1)
{

  return sub_1ABF24C64();
}

__n128 sub_1ABAB5298()
{
  result = *&STACK[0xE90];
  v1 = *&STACK[0xEA0];
  *&STACK[0xEC0] = *&STACK[0xE90];
  *&STACK[0xED0] = v1;
  LOBYTE(STACK[0xEE0]) = STACK[0xEB0];
  return result;
}

uint64_t sub_1ABAB52B8(uint64_t a1, uint64_t a2)
{

  return sub_1ABF23D34();
}

uint64_t sub_1ABAB532C(uint64_t a1)
{

  return sub_1ABF25054();
}

void *sub_1ABAB5358()
{
  *(v1 - 152) = v0;
  v3 = *(v1 - 104);

  return sub_1ABA93E20((v1 - 128), v3);
}

uint64_t sub_1ABAB53B8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABF252C4();
}

uint64_t sub_1ABAB540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return sub_1ABAD219C(a5, a6);
}

void sub_1ABAB5464()
{
  v2 = *(v1 - 88);
  *(v1 - 120) = v2 + 16;
  *(v1 - 112) = v2 + 32;
  *(v1 - 160) = v2 + 8;
  *(v1 - 152) = v0;
}

__n128 sub_1ABAB548C()
{
  result = *&STACK[0xE30];
  v1 = *&STACK[0xE40];
  *&STACK[0xE60] = *&STACK[0xE30];
  *&STACK[0xE70] = v1;
  LOBYTE(STACK[0xE80]) = STACK[0xE50];
  return result;
}

uint64_t sub_1ABAB54E0(uint64_t a1)
{

  return sub_1ABF24E64();
}

uint64_t sub_1ABAB5528(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABF25054();
}

void *sub_1ABAB5540()
{
  *(v1 - 128) = v0;
  v3 = *(v1 - 96);

  return sub_1ABA93E20((v1 - 120), v3);
}

void sub_1ABAB5588(uint64_t a1@<X8>)
{
  *v3 = a1;
  *(v3 + 8) = v1;
  *(v3 + 16) = 2;
  *(v3 + 24) = v2;
}

void *sub_1ABAB55C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return memcpy(va, v13, 0x69uLL);
}

uint64_t sub_1ABAB5604(uint64_t a1)
{

  return swift_allocObject();
}

__n128 sub_1ABAB5660()
{
  result = *&STACK[0xDD0];
  v1 = *&STACK[0xDE0];
  *&STACK[0xE00] = *&STACK[0xDD0];
  *&STACK[0xE10] = v1;
  LOBYTE(STACK[0xE20]) = STACK[0xDF0];
  return result;
}

uint64_t sub_1ABAB5680(uint64_t a1, uint64_t a2)
{

  return sub_1ABF24EC4();
}

void sub_1ABAB56BC()
{
  v2 = *(v0 + 16) + 1;

  sub_1ABADAADC(0, v2, 1, v0);
}

uint64_t sub_1ABAB5704(uint64_t a1)
{

  return sub_1ABA7E1E0(a1, 1, v1);
}

void *sub_1ABAB571C@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 32), (v1 - 200), 0x62uLL);
}

uint64_t sub_1ABAB5744()
{
}

uint64_t sub_1ABAB578C(uint64_t a1)
{

  return swift_dynamicCast();
}

__n128 sub_1ABAB5828()
{
  result = *&STACK[0xD70];
  v1 = *&STACK[0xD80];
  *&STACK[0xDA0] = *&STACK[0xD70];
  *&STACK[0xDB0] = v1;
  LOBYTE(STACK[0xDC0]) = STACK[0xD90];
  return result;
}

uint64_t sub_1ABAB591C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_1ABAB5950()
{

  return sub_1ABF22D34();
}

uint64_t sub_1ABAB599C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1ABAB59CC()
{

  return sub_1ABF25234();
}

uint64_t sub_1ABAB59E4(__n128 *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, uint64_t a29)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = a28;
  return a29;
}

__n128 sub_1ABAB5A24()
{
  result = *&STACK[0xD10];
  v1 = *&STACK[0xD20];
  *&STACK[0xD40] = *&STACK[0xD10];
  *&STACK[0xD50] = v1;
  LOBYTE(STACK[0xD60]) = STACK[0xD30];
  return result;
}

uint64_t sub_1ABAB5A44()
{
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  return sub_1ABADD6D8(v3, v4, (v1 - 216));
}

uint64_t sub_1ABAB5A78(_WORD *a1)
{
  *a1 = 0;

  return sub_1ABF23724();
}

uint64_t sub_1ABAB5AA4(uint64_t a1)
{

  return sub_1ABF25054();
}

uint64_t sub_1ABAB5AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1ABAB5B14(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1ABAB5B64()
{

  return sub_1ABAD219C(v0, v1);
}

uint64_t sub_1ABAB5B88()
{

  return swift_slowAlloc();
}

uint64_t sub_1ABAB5BA4()
{

  return sub_1ABA88934(&STACK[0x860]);
}

__n128 sub_1ABAB5BBC()
{
  v2 = *(v0 + 56);
  *(v1 + 64) = *(v0 + 40);
  *(v1 + 80) = v2;
  *(v1 + 96) = *(v0 + 72);
  result = *(v0 + 81);
  *(v1 + 105) = result;
  return result;
}

uint64_t sub_1ABAB5C5C()
{

  return sub_1ABB4E3B4(v1, v0);
}

__n128 sub_1ABAB5C84()
{
  result = *&STACK[0xB30];
  v1 = *&STACK[0xB40];
  *&STACK[0xB60] = *&STACK[0xB30];
  *&STACK[0xB70] = v1;
  LOBYTE(STACK[0xB80]) = STACK[0xB50];
  return result;
}

void sub_1ABAB5CBC()
{
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

__n128 sub_1ABAB5CE8()
{
  result = *(v0 + 41);
  *(v1 + 41) = result;
  return result;
}

void sub_1ABAB5D34(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
  v4[3].n128_u64[1] = v2;
  v4[4].n128_u16[0] = v3;
}

uint64_t sub_1ABAB5D80(_WORD *a1)
{
  *a1 = 0;

  return sub_1ABF23724();
}

uint64_t sub_1ABAB5DA4(uint64_t a1)
{

  return sub_1ABF217D4();
}

void sub_1ABAB5DD4()
{
}

uint64_t sub_1ABAB5E34@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 3104);
  v4 = *(a1 + 3112);
  v5 = *(a1 + 3096);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

uint64_t sub_1ABAB5E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_1ABA88934(&a65);
}

uint64_t sub_1ABAB5E8C()
{

  return sub_1ABA88934(&STACK[0xF80]);
}

uint64_t sub_1ABAB5EB0()
{

  return sub_1ABA88934(&STACK[0xA70]);
}

uint64_t sub_1ABAB5EC8()
{
  v1 = *(v0 - 176);
  *(v0 - 104) = *(v0 - 184);
  *(v0 - 96) = v1;
  result = *(v0 - 168);
  *(v0 - 88) = result;
  return result;
}

void sub_1ABAB5EEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = MEMORY[0x1E69E62F8];

  sub_1ABD14134(319, a2, a3, a4, v5);
}

uint64_t sub_1ABAB5F38()
{

  return sub_1ABA88934(&STACK[0xE60]);
}

uint64_t sub_1ABAB5F50()
{

  return swift_getAssociatedTypeWitness();
}

void sub_1ABAB5F78(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{

  sub_1ABD14134(319, a2, a3, a4, type metadata accessor for OneOf);
}

__n128 sub_1ABAB5FA0()
{
  result = *(v0 - 208);
  v2 = *(v0 - 192);
  *(v0 - 160) = result;
  *(v0 - 144) = v2;
  return result;
}

uint64_t sub_1ABAB5FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v19 = *(v17 - 144);
  *(v17 - 112) = *(v17 - 160);
  *(v17 - 96) = v19;
  *(v16 + 320) = *(v16 + 272);

  return sub_1ABA856C4(v17 - 112, va);
}

uint64_t sub_1ABAB6000()
{

  return sub_1ABA88934(&STACK[0x950]);
}

uint64_t sub_1ABAB6024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, ...)
{
  va_start(va, a4);
  v6 = *(a3 + v4);

  return sub_1ABA8882C(v6, a1, a2, va);
}

void static EntityClass.movie.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE10), *(_Records_GDEntityClass_records + 0xE18), *(_Records_GDEntityClass_records + 0xE20), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sportsOrganization.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE28), *(_Records_GDEntityClass_records + 0xE30), *(_Records_GDEntityClass_records + 0xE38), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB6120(uint64_t a1)
{

  return swift_allocObject();
}

void static EntityClass.sportsLeague.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE40), *(_Records_GDEntityClass_records + 0xE48), *(_Records_GDEntityClass_records + 0xE50), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB61B4@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 3768) = a1;

  return sub_1ABA856C4(&STACK[0xF80], va);
}

void static EntityClass.athlete.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE58), *(_Records_GDEntityClass_records + 0xE60), *(_Records_GDEntityClass_records + 0xE68), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.personInTheArts.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE70), *(_Records_GDEntityClass_records + 0xE78), *(_Records_GDEntityClass_records + 0xE80), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.musician.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xE88), *(_Records_GDEntityClass_records + 0xE90), *(_Records_GDEntityClass_records + 0xE98), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABAB6320(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[72] = a2;
  v3[73].n128_u64[0] = a1;
  v3[73].n128_u64[1] = v2;
}

void static EntityClass.televisionProgram.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xEA0), *(_Records_GDEntityClass_records + 0xEA8), *(_Records_GDEntityClass_records + 0xEB0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.sportsActivity.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABAA1B1C(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v14);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v12, v14[0], v14[1], v15);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.screenTimeSegment.getter(uint64_t a1)
{
  if (_Records_GDEntityClass_records)
  {
    v1 = sub_1ABB7E0FC(_Records_GDEntityClass_records);
    v4 = sub_1ABA8882C(v1, v2, v3, v15);
    sub_1ABA8F1BC(v4, v5, v6, v7, v8, v9, v10, v11, v12, v14, v13, v15[0], v15[1], v16);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.myPet.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xEE8), *(_Records_GDEntityClass_records + 0xEF0), *(_Records_GDEntityClass_records + 0xEF8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void static EntityClass.myDog.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF00), *(_Records_GDEntityClass_records + 0xF08), *(_Records_GDEntityClass_records + 0xF10), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB6580()
{

  return swift_slowAlloc();
}

__n128 sub_1ABAB659C()
{
  result = *&STACK[0x320];
  v1 = *&STACK[0x330];
  *&STACK[0x350] = *&STACK[0x320];
  *&STACK[0x360] = v1;
  LOBYTE(STACK[0x370]) = STACK[0x340];
  return result;
}

id sub_1ABAB65E0()
{

  return [v1 v2];
}

void sub_1ABAB6610()
{

  JUMPOUT(0x1AC5A9410);
}

void sub_1ABAB663C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, uint64_t a15, uint64_t a16)
{
  *(v16 + 72) = a16;
  *(v16 + 80) = a15;
  *(v16 + 88) = a14;
}

uint64_t sub_1ABAB666C()
{

  return sub_1ABF21894();
}

void sub_1ABAB66A4()
{
  *(v1 + 256) = v2;
  *(v0 + 41) = *(v0 + 139);
  *(v1 + 260) = *(v0 + 142);
}

uint64_t sub_1ABAB66BC()
{
}

void static EntityClass.myCat.getter()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xF18), *(_Records_GDEntityClass_records + 0xF20), *(_Records_GDEntityClass_records + 0xF28), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABAB6744@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  v3 = *(a1 + 4784);
  v4 = *(a1 + 4792);
  v5 = *(a1 + 4776);

  return sub_1ABA91D48(v5, v3, v4, &a2);
}

__n128 sub_1ABAB6778()
{
  result = *&STACK[0x2F0];
  v1 = *&STACK[0x300];
  *&STACK[0x320] = *&STACK[0x2F0];
  *&STACK[0x330] = v1;
  LOBYTE(STACK[0x340]) = STACK[0x310];
  return result;
}

uint64_t sub_1ABAB67A0()
{

  return sub_1ABF24BD4();
}

void sub_1ABAB67D0(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v4[1] = a2;
  v4[2].n128_u64[0] = a1;
  v4[2].n128_u64[1] = v2;
  v4[3].n128_u16[0] = v3;
}

uint64_t sub_1ABAB6804@<X0>(char a1@<W8>)
{
  *(v1 - 128) = a1;

  return sub_1ABF24E34();
}

uint64_t sub_1ABAB6828()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);

  return sub_1ABA96210(v2, v3);
}

__n128 sub_1ABAB68A4()
{
  result = *&STACK[0x2C0];
  v1 = *&STACK[0x2D0];
  *&STACK[0x2F0] = *&STACK[0x2C0];
  *&STACK[0x300] = v1;
  LOBYTE(STACK[0x310]) = STACK[0x2E0];
  return result;
}

uint64_t sub_1ABAB68E0(uint64_t a1, uint64_t a2)
{
  sub_1ABA7AA24(a1, a2);

  return sub_1ABF237D4();
}

uint64_t sub_1ABAB6908()
{

  return sub_1ABF24BD4();
}

uint64_t sub_1ABAB6938(uint64_t a1)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t sub_1ABAB6950()
{

  return sub_1ABD1927C(v0 - 176, v0 - 240);
}

uint64_t sub_1ABAB6994(uint64_t a1, __n128 a2)
{

  return sub_1ABF24F54();
}

void sub_1ABAB69C8(unint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v3[67] = a2;
  v3[68].n128_u64[0] = a1;
  v3[68].n128_u64[1] = v2;
}

uint64_t sub_1ABAB6B40@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABAB6ABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAB6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABA946D8(a1, a2, a5, a6);
  }
}

uint64_t sub_1ABAB7210@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1ABAD4E20(a2);
  *a1 = result;
  return result;
}

void sub_1ABAB7254(uint64_t a2@<X8>)
{
  sub_1ABAB7288();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_1ABAB729C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABAB72D0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for MockLocationFeatures(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

char *sub_1ABAB7390(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

uint64_t sub_1ABAB73B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1ABAB76A4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABAB76E0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v15 = type metadata accessor for AppleMusicEventEntryView();
  v14 = type metadata accessor for CustomGraphSongEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1ABA7D034();
  v4 = sub_1ABA7D034();
  sub_1ABA7BC4C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7BC4C();
  v6 = swift_getAssociatedConformanceWitness();
  sub_1ABA8EEAC();
  v9 = sub_1ABAE6834(v7, v8, &protocol conformance descriptor for CustomGraphSongEvent);
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  v16 = v3;
  v17 = v4;
  v18 = v14;
  v19 = v2;
  v20 = AssociatedConformanceWitness;
  v21 = v6;
  v22 = v9;
  v23 = v1;
  v24 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TypedGraphObjectSequence.Iterator(255, &v16);
  v11 = sub_1ABAE6834(&qword_1EB4D1BD8, type metadata accessor for AppleMusicEventEntryView, &unk_1ABF34760);
  WitnessTable = swift_getWitnessTable();
  v16 = v15;
  v17 = v14;
  v18 = v10;
  v19 = v11;
  v20 = v9;
  v21 = WitnessTable;
  type metadata accessor for EventBaseView.EventViewSequence(255, &v16);
  return swift_getWitnessTable();
}

uint64_t sub_1ABAB78E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(a3 + 36);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v8 = *(a3 + 40);
  }

  return sub_1ABA7E1E0(a1 + v8, a2, v7);
}

uint64_t sub_1ABAB7990(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1ABF21EB4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(a4 + 36);
  }

  else
  {
    v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v10 = *(a4 + 40);
  }

  return sub_1ABA7B9B4(a1 + v10, a2, a2, v9);
}

uint64_t sub_1ABAB7B00(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v15 = type metadata accessor for AppleMusicEventEntryView();
  v14 = type metadata accessor for CustomGraphSongEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1ABA7D034();
  v4 = sub_1ABA7D034();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  sub_1ABA8EEE4();
  v9 = sub_1ABAF0C8C(v7, v8, &protocol conformance descriptor for CustomGraphSongEvent);
  sub_1ABA7D034();
  v16 = v3;
  v17 = v4;
  v18 = v14;
  v19 = v2;
  v20 = AssociatedConformanceWitness;
  v21 = v6;
  v22 = v9;
  v23 = v1;
  v24 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TypedGraphObjectSequence.Iterator(255, &v16);
  v11 = sub_1ABAF0C8C(&qword_1EB4D1BD8, type metadata accessor for AppleMusicEventEntryView, &unk_1ABF34760);
  WitnessTable = swift_getWitnessTable();
  v16 = v15;
  v17 = v14;
  v18 = v10;
  v19 = v11;
  v20 = v9;
  v21 = WitnessTable;
  type metadata accessor for EventBaseView.EventViewSequence(255, &v16);
  return swift_getWitnessTable();
}

uint64_t sub_1ABAB7D14()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ABAB7D4C@<X0>(uint64_t *a1@<X8>)
{
  result = static AssetRegistry.createCreateBackend.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABAB7E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRegistryAsset(0);
  v5 = sub_1ABA7E1E0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAB7EC0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AssetRegistryAsset(0);

  return sub_1ABA7B9B4(a1, v5, a3, v6);
}

uint64_t sub_1ABAB7F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 40);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_1ABAB8058(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = a2;
  }

  return result;
}

uint64_t sub_1ABAB81E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABB0307C(a2, a3);
  *a1 = result & 1;
  return result;
}

unint64_t sub_1ABAB83F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1ABAB8444(char a1)
{
  result = 0x6C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x6C61697274;
      break;
    case 2:
      result = 0x4E74656863746172;
      break;
    case 3:
      result = 0x6F666E4972657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABAB85D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 16) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t sub_1ABAB8864()
{
  sub_1ABA8071C();
  if (v0)
  {
    return 1868983913;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1ABAB88AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABB16514(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1ABAB8ED4()
{
  v1 = sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 8, v4 | 7);
}

uint64_t sub_1ABAB9198(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAB922C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

__n128 sub_1ABAB92CC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ABAB9318()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ABAB93C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABB39520(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAB9668()
{
  sub_1ABB43418(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1ABAB96A4()
{
  sub_1ABB439B0(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_1ABA807B4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAB96E4()
{

  sub_1ABA807B4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

BOOL sub_1ABAB9884(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1ABAB98D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAB9908()
{

  v0 = sub_1ABA8FE90();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAB9A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xA)
    {
      return v8 - 9;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABAB9AF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21EB4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 9;
  }

  return result;
}

uint64_t sub_1ABAB9B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABF21EB4();
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAB9C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21EB4();
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAB9DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABAB9E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAB9FA4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABABA0E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABABA134()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ABABA180()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABABA1D0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SearchableViewDatabaseTable(0);
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABABA258(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchableViewDatabaseTable(0);
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABABA300(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

unint64_t sub_1ABABA3A0(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < a2 || result >= a3)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABABA3B4(unint64_t result, unint64_t a2, unint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABABA3C8(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABABA500()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ABABA6CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABBA8060(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABABAC90@<X0>(uint64_t *a1@<X8>)
{
  result = PopularityMetric.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABABB070(char a1)
{
  if (a1)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1ABABB090@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABBB7640(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1ABABB1D8()
{
  sub_1ABB37328(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 50));
  sub_1ABB37328(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));
  sub_1ABA8913C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABB22C@<X0>(uint64_t *a1@<X8>)
{
  result = static NSUserDefaults.ecrRankerResultsMockFile.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABABB3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABABB410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstructuredImage.Asset(0);

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABABB488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABBC9010(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1ABABB624()
{
  sub_1ABB3E388(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 50));
  sub_1ABB3E388(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));
  sub_1ABA8913C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABB678@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABBCBC04();
  *a1 = result;
  return result;
}

uint64_t sub_1ABABB840()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABABB880()
{
  _Block_release(*(v0 + 24));

  v1 = sub_1ABAB52E8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABBC1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1ABC01C3C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABABBC70@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1ABBFFC40(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1ABABBD58()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1ABABBDB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABABBDF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABABBE38()
{
  _Block_release(*(v0 + 32));

  v1 = sub_1ABAA08C0();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABABC560()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1ABABC650()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ABABC8F8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABABC980(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  type metadata accessor for EventBaseView.EventViewSequence.EventViewSequenceIterator(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1ABABCA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 80);
    if (v10 > 2)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1ABABCAEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21EB4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return sub_1ABA7B9B4(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = -a2;
  }

  return result;
}

uint64_t sub_1ABABCC40()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 16);
  v2 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  sub_1ABA82818();
  sub_1ABA81898();
  v7 = v6;
  v9 = (*(v6 + 80) + v8 + 8) & ~*(v6 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v0 + v5, v2);

  (*(v7 + 8))(v0 + v9, v1);
  sub_1ABA96210(*(v0 + v11), *(v0 + v11 + 8));
  sub_1ABA7BC1C();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1ABABCD8C()
{
  sub_1ABA7E2A8();
  v1 = *(v0 + 16);
  v2 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  sub_1ABA81898();
  v7 = v6;
  v9 = (v8 + *(v6 + 80)) & ~*(v6 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v4 + 8))(v0 + v5, v2);
  (*(v7 + 8))(v0 + v9, v1);
  sub_1ABA96210(*(v0 + v11), *(v0 + v11 + 8));
  sub_1ABA7BC1C();

  return MEMORY[0x1EEE6BDD0](v12, v13, v14);
}

uint64_t sub_1ABABCEC4()
{
  v1 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v3 = v2;
  v4 = *(v2 + 80);
  sub_1ABA82818();
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + ((v4 + 32) & ~v4), v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v4 | 7);
}

__n128 sub_1ABABD06C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1ABABD284(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABABD2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  v7 = a1 + *(a3 + 36);

  return sub_1ABA7E1E0(v7, a2, v6);
}

uint64_t sub_1ABABD318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABF21EB4();
  v8 = a1 + *(a4 + 36);

  return sub_1ABA7B9B4(v8, a2, a2, v7);
}

id sub_1ABABD3B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  result = static GraphObjectObjectiveCConvertible.objectiveCGraphObjectEntityIdentifier(from:)(&v7, a3, a4, a5);
  *a2 = result;
  return result;
}

uint64_t sub_1ABABD498()
{
  v1 = *(sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1ABF22424();
  if (!sub_1ABA7E1E0(v0 + v3, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1ABABD640()
{
  sub_1ABA97340();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA952EC(AssociatedTypeWitness, v1, v2, v3, &associated conformance descriptor for GraphObjectBareContextProtocol.GraphObjectBareContextProtocol.TripleProvider: TripleProviderProtocol);
  v4 = sub_1ABA7E7A8();
  v5 = sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7EDF8();
  v7 = swift_getAssociatedConformanceWitness();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  v10[0] = v4;
  v10[1] = v5;
  v10[2] = AssociatedConformanceWitness;
  v10[3] = v7;
  v10[4] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for EntitySequence(255, v10);
  return sub_1ABA9084C(v8);
}

uint64_t sub_1ABABD758()
{
  sub_1ABA97340();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA952EC(AssociatedTypeWitness, v1, v2, v3, &associated conformance descriptor for GraphObjectBareContextProtocol.GraphObjectBareContextProtocol.TripleProvider: TripleProviderProtocol);
  sub_1ABA7E7A8();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7E7A8();
  sub_1ABA7EDF8();
  swift_getAssociatedConformanceWitness();
  v4 = sub_1ABA97BBC();
  v6 = type metadata accessor for TypedGraphObjectSequence(v4, v5);
  return sub_1ABA8C114(v6);
}

uint64_t sub_1ABABD884(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1[2];
  v2 = a1[3];
  v10 = a1[5];
  sub_1ABA97340();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7E7C8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7E7C8();
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  v11[0] = AssociatedTypeWitness;
  v11[1] = v5;
  v11[2] = v1;
  v11[3] = v3;
  v11[4] = AssociatedConformanceWitness;
  v11[5] = v7;
  v11[6] = v2;
  v11[7] = v10;
  v11[8] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for DynamicGraphObjectSequence(255, v11);
  return sub_1ABA7D930(v8);
}

uint64_t sub_1ABABD9EC(uint64_t a1)
{
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  sub_1ABAA2D04();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABAA2D04();
  v2 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedTypeWitness();
  v7[0] = AssociatedTypeWitness;
  v7[1] = v2;
  v7[2] = AssociatedConformanceWitness;
  v7[3] = v4;
  v7[4] = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for EntitySequence(255, v7);
  return sub_1ABA9084C(v5);
}

uint64_t sub_1ABABDB4C()
{
  sub_1ABAA2D04();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_1ABA97BBC();
  v2 = type metadata accessor for TypedGraphObjectSequence(v0, v1);
  return sub_1ABA8C114(v2);
}

uint64_t sub_1ABABDCB4()
{
  sub_1ABAA2D04();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA8394C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D0EC();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedConformanceWitness();
  sub_1ABA96BD0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v0 = sub_1ABA97BBC();
  v2 = type metadata accessor for DynamicGraphObjectSequence(v0, v1);
  return sub_1ABA7D930(v2);
}

__n128 sub_1ABABDE48(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1ABABDE54(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1ABA7F424();
  v4 = sub_1ABA7F424();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  sub_1ABA7F424();
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v1;
  v11[3] = AssociatedTypeWitness;
  v11[4] = AssociatedConformanceWitness;
  v11[5] = v6;
  v11[6] = v2;
  v11[7] = v7;
  v11[8] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for DynamicGraphObjectSequence(255, v11);
  return sub_1ABA7D930(v8);
}

uint64_t sub_1ABABDFE8(uint64_t *a1)
{
  v1 = *a1;
  v10 = *(a1[1] + 8);
  swift_getAssociatedTypeWitness();
  sub_1ABA7E7C8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7E7C8();
  v3 = swift_getAssociatedTypeWitness();
  v4 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedConformanceWitness();
  sub_1ABA7E7C8();
  swift_getAssociatedTypeWitness();
  v11[0] = AssociatedTypeWitness;
  v11[1] = v3;
  v11[2] = v1;
  v11[3] = v4;
  v11[4] = AssociatedConformanceWitness;
  v11[5] = v6;
  v11[6] = v10;
  v11[7] = v7;
  v11[8] = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for DynamicGraphObjectSequence(255, v11);
  return sub_1ABA7D930(v8);
}

uint64_t sub_1ABABE1C4@<X0>(uint64_t *a1@<X8>)
{
  result = static CustomGraphEvent.getInitializationResources()();
  *a1 = result;
  return result;
}

uint64_t sub_1ABABE298@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABCC3164();
  *a1 = result;
  return result;
}

uint64_t sub_1ABABE54C()
{

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABABE580@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t (*a3)(__int128 *)@<X2>, _OWORD *a5@<X4>, _OWORD *x8_0@<X8>)
{
  v6 = a5[1];
  v8[0] = *a5;
  v8[1] = v6;
  v9[0] = a5[2];
  *(v9 + 9) = *(a5 + 41);
  return sub_1ABD08410(a1, a3, v8, x8_0);
}

uint64_t sub_1ABABE610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_1ABA8A59C(*(a1 + *(a3 + 24)));
  }

  v7 = v6;
  v8 = a1 + *(a3 + 20);

  return sub_1ABA7E1E0(v8, a2, v7);
}

uint64_t sub_1ABABE6C0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  result = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_1ABAA1E20(*(a4 + 20));

    return sub_1ABA7B9B4(v9, v10, v11, v12);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABABE78C()
{
  sub_1ABD1B904();
  if (v3)
  {
    return sub_1ABA8A59C(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v8 = v0 + *(v5 + 68);

  return sub_1ABA7E1E0(v8, v6, v7);
}

void sub_1ABABE80C()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    v5 = sub_1ABAA1E20(*(v4 + 68));

    sub_1ABA7B9B4(v5, v6, v7, v8);
  }
}

uint64_t sub_1ABABE894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABABE8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABABE91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v7 = a1 + *(a3 + 20);

  return sub_1ABA7E1E0(v7, a2, v6);
}

uint64_t sub_1ABABE980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
  v8 = a1 + *(a4 + 20);

  return sub_1ABA7B9B4(v8, a2, a2, v7);
}
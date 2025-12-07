uint64_t sub_8FF84(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_8FF98(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t ScoredGenre.copyWith(score:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 8);
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v4;
  *(a1 + 32) = a2;
}

uint64_t sub_90024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B6F6F4264656573 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_900B4(uint64_t a1)
{
  v2 = sub_90BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_900F0(uint64_t a1)
{
  v2 = sub_90BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Genre.Rationale.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AA38, &unk_1C12B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = *v1;
  sub_2698(a1, a1[3]);
  sub_90BC0();

  sub_1B5884();
  v9[1] = v7;
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  sub_90C68(&qword_22AA50, sub_90C14, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();

  return (*(v4 + 8))(v6, v3);
}

uint64_t Genre.Rationale.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AA60, &qword_1C12C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_2698(a1, a1[3]);
  sub_90BC0();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_90C68(&qword_22AA68, sub_90CE0, &protocol conformance descriptor for <A> [A]);
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return sub_2BF8(a1);
}

void __swiftcall Genre.init(storeID:mediaType:sources:rationale:)(BooksPersonalization::Genre *__return_ptr retstr, Swift::UInt64 storeID, BooksPersonalization::Book::MediaType mediaType, Swift::OpaquePointer sources, BooksPersonalization::Genre::Rationale_optional rationale)
{
  v5 = *mediaType;
  v6 = *rationale.value.seedBooks._rawValue;
  retstr->storeID = storeID;
  retstr->mediaType = v5;
  retstr->sources = sources;
  retstr->rationale.value.seedBooks._rawValue = v6;
}

uint64_t sub_904D4()
{
  v1 = 0x444965726F7473;
  v2 = 0x73656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x6C616E6F69746172;
  }

  if (*v0)
  {
    v1 = 0x707954616964656DLL;
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

uint64_t sub_90550@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_92860(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_90578(uint64_t a1)
{
  v2 = sub_90D34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_905B4(uint64_t a1)
{
  v2 = sub_90D34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Genre.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22AA78, &qword_1C12C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  v16 = *(v1 + 8);
  v8 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v8;
  sub_2698(a1, a1[3]);
  sub_90D34();
  sub_1B5884();
  LOBYTE(v15) = 0;
  sub_1B5574();
  if (!v2)
  {
    v9 = v13;
    v10 = v14;
    LOBYTE(v15) = v16;
    v17 = 1;
    sub_8E75C();
    sub_1B5544();
    v15 = v10;
    v17 = 2;
    sub_2B0C(&qword_22AA88, &qword_1C12D0);
    sub_90D88(&qword_22AA90, sub_90E00, &protocol conformance descriptor for <A> [A]);
    sub_1B5544();
    v15 = v9;
    v17 = 3;
    sub_90E54();

    sub_1B54B4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Genre.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AAA8, &qword_1C12D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_2698(a1, a1[3]);
  sub_90D34();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  LOBYTE(v15) = 0;
  v9 = sub_1B5434();
  v17 = 1;
  sub_8E8C4();
  sub_1B5404();
  v10 = v15;
  sub_2B0C(&qword_22AA88, &qword_1C12D0);
  v17 = 2;
  sub_90D88(&qword_22AAB0, sub_90EA8, &protocol conformance descriptor for <A> [A]);
  sub_1B5404();
  v16 = v10;
  v11 = v15;
  v17 = 3;
  sub_90EFC();
  sub_1B5374();
  (*(v6 + 8))(v8, v5);
  v12 = v15;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;

  sub_2BF8(a1);
}

uint64_t ScoredGenre.genre.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
}

uint64_t ScoredGenre.init(genre:score:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  *a2 = *result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = a3;
  return result;
}

unint64_t sub_90BC0()
{
  result = qword_22AA40;
  if (!qword_22AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA40);
  }

  return result;
}

unint64_t sub_90C14()
{
  result = qword_22AA58;
  if (!qword_22AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA58);
  }

  return result;
}

uint64_t sub_90C68(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22AA48, &qword_1CD280);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_90CE0()
{
  result = qword_22AA70;
  if (!qword_22AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA70);
  }

  return result;
}

unint64_t sub_90D34()
{
  result = qword_22AA80;
  if (!qword_22AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA80);
  }

  return result;
}

uint64_t sub_90D88(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_22AA88, &qword_1C12D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_90E00()
{
  result = qword_22AA98;
  if (!qword_22AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AA98);
  }

  return result;
}

unint64_t sub_90E54()
{
  result = qword_22AAA0;
  if (!qword_22AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAA0);
  }

  return result;
}

unint64_t sub_90EA8()
{
  result = qword_22AAB8;
  if (!qword_22AAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAB8);
  }

  return result;
}

unint64_t sub_90EFC()
{
  result = qword_22AAC0;
  if (!qword_22AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAC0);
  }

  return result;
}

uint64_t sub_90F50()
{
  if (*v0)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x65726E6567;
  }
}

uint64_t sub_90F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_91050(uint64_t a1)
{
  v2 = sub_91294();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9108C(uint64_t a1)
{
  v2 = sub_91294();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScoredGenre.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AAC8, &qword_1C12E0);
  v13 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v11 - v4;
  v6 = *v1;
  HIDWORD(v11) = *(v1 + 8);
  v7 = v1[2];
  v8 = v1[3];
  sub_2698(a1, a1[3]);
  sub_91294();

  sub_1B5884();
  v15 = v6;
  v16 = BYTE4(v11);
  v17 = v7;
  v18 = v8;
  v14 = 0;
  sub_912E8();
  v9 = v12;
  sub_1B5544();

  if (!v9)
  {
    LOBYTE(v15) = 1;
    sub_1B5514();
  }

  return (*(v13 + 8))(v5, v3);
}

unint64_t sub_91294()
{
  result = qword_22AAD0;
  if (!qword_22AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAD0);
  }

  return result;
}

unint64_t sub_912E8()
{
  result = qword_22AAD8;
  if (!qword_22AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAD8);
  }

  return result;
}

uint64_t ScoredGenre.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AAE0, &qword_1C12E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_2698(a1, a1[3]);
  sub_91294();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v17 = 0;
  sub_9157C();
  sub_1B5404();
  v16 = v18;
  v15 = v19;
  v9 = v20;
  v10 = v21;
  LOBYTE(v18) = 1;
  sub_1B53D4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;

  sub_2BF8(a1);
}

unint64_t sub_9157C()
{
  result = qword_22AAE8;
  if (!qword_22AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAE8);
  }

  return result;
}

BooksPersonalization::GenreRecommendationSource_optional __swiftcall GenreRecommendationSource.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_212F58;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 5;
  if (v5 < 5)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

unint64_t GenreRecommendationSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x747369486B6F6F62;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 1768055156;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

Swift::Int sub_9171C()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_9180C(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_918E8(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_919E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000079726FLL;
  v4 = 0x747369486B6F6F62;
  v5 = 0x80000000001D4640;
  v6 = 0x80000000001D4610;
  v7 = 0xD000000000000021;
  if (v2 != 3)
  {
    v7 = 1768055156;
    v6 = 0xE400000000000000;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000017;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000000001D45F0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

BooksPersonalization::GenreRecommendationRequest __swiftcall GenreRecommendationRequest.init(allowNegativeScores:overrideSource:)(Swift::Bool allowNegativeScores, BooksPersonalization::GenreRecommendationSource_optional overrideSource)
{
  v3 = *overrideSource.value;
  *v2 = allowNegativeScores;
  v2[1] = v3;
  result.allowNegativeScores = allowNegativeScores;
  return result;
}

uint64_t sub_91AAC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91B58;

  return GenreRecommendationServiceType.fetchRecommendedGenres(request:)(a1, a2, a3);
}

uint64_t sub_91B58(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t GenreRecommendationServiceType.fetchRecommendedGenres(request:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  *(v3 + 32) = *a1;
  *(v3 + 33) = v6;
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_91D90;

  return v9(v3 + 32, a2, a3);
}

uint64_t sub_91D90(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_91ECC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

unint64_t sub_91EE8()
{
  result = qword_22AAF0;
  if (!qword_22AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAF0);
  }

  return result;
}

unint64_t sub_91F40()
{
  result = qword_22AAF8;
  if (!qword_22AAF8)
  {
    sub_1CC1C(&qword_22AB00, &qword_1C14F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AAF8);
  }

  return result;
}

unint64_t sub_91FA8()
{
  result = qword_22AB08;
  if (!qword_22AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB08);
  }

  return result;
}

uint64_t sub_91FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_92044(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_920A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_920EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenreRecommendationRequest(unsigned __int16 *a1, unsigned int a2)
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

_WORD *storeEnumTagSinglePayload for GenreRecommendationRequest(_WORD *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of GenreRecommendationServiceType.fetchRecommendedGenres(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of GenreRecommendationSubserviceType.fetchRecommendedGenres(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_7E684;

  return v9(a1, a2, a3);
}

unint64_t sub_9254C()
{
  result = qword_22AB10;
  if (!qword_22AB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB10);
  }

  return result;
}

unint64_t sub_925A4()
{
  result = qword_22AB18;
  if (!qword_22AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB18);
  }

  return result;
}

unint64_t sub_925FC()
{
  result = qword_22AB20;
  if (!qword_22AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB20);
  }

  return result;
}

unint64_t sub_92654()
{
  result = qword_22AB28;
  if (!qword_22AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB28);
  }

  return result;
}

unint64_t sub_926AC()
{
  result = qword_22AB30;
  if (!qword_22AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB30);
  }

  return result;
}

unint64_t sub_92704()
{
  result = qword_22AB38;
  if (!qword_22AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB38);
  }

  return result;
}

unint64_t sub_9275C()
{
  result = qword_22AB40;
  if (!qword_22AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB40);
  }

  return result;
}

unint64_t sub_927B4()
{
  result = qword_22AB48;
  if (!qword_22AB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB48);
  }

  return result;
}

unint64_t sub_9280C()
{
  result = qword_22AB50;
  if (!qword_22AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB50);
  }

  return result;
}

uint64_t sub_92860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656372756F73 && a2 == 0xE700000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

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

unint64_t URLSessionTransport.Error.errorDescription.getter()
{
  sub_1B5084(41);

  swift_getObjectType();
  sub_2B0C(&qword_22AB58, &qword_1C1A70);
  v1._countAndFlagsBits = sub_1B4834();
  sub_1B48D4(v1);

  return 0xD000000000000027;
}

uint64_t URLSessionTransport.makeCall(with:operationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 288) = a3;
  *(v5 + 296) = a4;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  v6 = sub_1B3F34();
  *(v5 + 304) = v6;
  *(v5 + 312) = *(v6 - 8);
  *(v5 + 320) = swift_task_alloc();
  v7 = sub_1B3B64();
  *(v5 + 328) = v7;
  *(v5 + 336) = *(v7 - 8);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = *v4;

  return _swift_task_switch(sub_92C04, 0, 0);
}

uint64_t sub_92C04()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(v1 + 16);
  if (v4)
  {
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = v4 - 1;
    sub_404C4(v1 + 40 * v4 - 8, v0 + 88);
    sub_264B8((v0 + 88), v0 + 128);
    v8 = swift_allocObject();
    sub_264B8((v0 + 128), (v8 + 2));
    v8[7] = v6;
    v8[8] = v5;
    v8[9] = &unk_1C1A88;
    v8[10] = v3;
    if (v4 != 1)
    {
      v9 = *(v0 + 296);
      v10 = *(v1 + 16);

      if (v4 - 2 >= v10)
      {
LABEL_7:
        __break(1u);
      }

      else
      {
        v11 = v1 + 40 * v4 - 48;
        while (1)
        {
          v12 = v8;
          v13 = *(v0 + 288);
          sub_404C4(v11, v0 + 88);
          sub_264B8((v0 + 88), v0 + 128);
          v8 = swift_allocObject();
          sub_264B8((v0 + 128), (v8 + 2));
          v8[7] = v13;
          v8[8] = v9;
          v8[9] = &unk_1C1A98;
          v8[10] = v12;
          if (!--v7)
          {
            break;
          }

          v9 = *(v0 + 296);
          v14 = *(v1 + 16);

          v11 -= 40;
          if (v7 > v14)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v2 = *(v0 + 352);
    v30 = &unk_1C1A98;
    v3 = v8;
  }

  else
  {
    v30 = &unk_1C1A88;
  }

  *(v0 + 368) = v3;
  v15 = *(v0 + 280);
  (*(*(v0 + 312) + 16))(*(v0 + 320), v15, *(v0 + 304));
  v16 = v2;

  sub_1B3B14();
  v17 = type metadata accessor for ClientCurrency.Request(0);

  sub_1B3B04();
  v18 = *(v15 + *(v17 + 24));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 56);
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;

      v32._countAndFlagsBits = v23;
      v32._object = v24;
      v33._countAndFlagsBits = v21;
      v33._object = v22;
      sub_1B3B24(v32, v33);

      v20 += 4;
      --v19;
    }

    while (v19);
  }

  v25 = *(v0 + 280) + *(v17 + 28);
  if (*(v25 + 8) >> 60 != 15)
  {
    sub_4161C(*v25, *(v25 + 8));
    sub_1B3B44();
  }

  v29 = (v30 + *v30);
  v26 = swift_task_alloc();
  *(v0 + 376) = v26;
  *v26 = v0;
  v26[1] = sub_92FB0;
  v27 = *(v0 + 344);

  return v29(v27);
}

uint64_t sub_92FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[48] = a1;
  v5[49] = a2;
  v5[50] = a3;
  v5[51] = v3;

  if (v3)
  {
    v6 = sub_93494;
  }

  else
  {
    v6 = sub_930C8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_930C8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    v30 = v0[49];
    v31 = v0[50];
    v32 = v0[48];
    sub_93C5C();
    swift_allocError();
    *v33 = v31;
    swift_willThrow();
    v34 = v31;

    sub_41670(v32, v30);

    (*(v0[42] + 8))(v0[43], v0[41]);

    v29 = v0[1];
LABEL_22:

    return v29();
  }

  v2 = v1;
  v3 = [v1 allHeaderFields];
  v4 = &type metadata for AnyHashable;
  v5 = sub_1B46A4();

  v6 = -1;
  v7 = -1 << *(v5 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v5 + 64);
  v9 = (63 - v7) >> 6;

  v11 = 0;
  v39 = _swiftEmptyArrayStorage;
  while (v8)
  {
LABEL_12:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v11 << 6);
    sub_42E44(*(v5 + 48) + 40 * v14, (v0 + 2));
    sub_430C8(*(v5 + 56) + 32 * v14, (v0 + 7));
    sub_42E44((v0 + 2), (v0 + 21));
    if (swift_dynamicCast())
    {
      v15 = v4;
      v16 = v0[30];
      v17 = v0[31];
      sub_430C8((v0 + 7), (v0 + 26));
      if ((swift_dynamicCast() & 1) == 0)
      {

        v4 = v15;
        goto LABEL_6;
      }

      v37 = v0[33];
      v38 = v0[32];
      sub_93CB0((v0 + 2));
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_3324C(0, *(v39 + 2) + 1, 1, v39);
        v39 = result;
      }

      v19 = *(v39 + 2);
      v18 = *(v39 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v35 = *(v39 + 2);
        v36 = v19 + 1;
        result = sub_3324C((v18 > 1), v19 + 1, 1, v39);
        v19 = v35;
        v20 = v36;
        v39 = result;
      }

      *(v39 + 2) = v20;
      v21 = &v39[32 * v19];
      *(v21 + 4) = v16;
      *(v21 + 5) = v17;
      *(v21 + 6) = v38;
      *(v21 + 7) = v37;
      v4 = v15;
    }

    else
    {
LABEL_6:
      result = sub_93CB0((v0 + 2));
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_12;
    }
  }

  v22 = v0[50];
  v24 = v0[42];
  v23 = v0[43];
  v25 = v0[41];

  v26 = [v2 statusCode];

  result = (*(v24 + 8))(v23, v25);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = v0[34];
    v28 = *(v0 + 24);
    *v27 = v26;
    *(v27 + 8) = v39;
    *(v27 + 16) = v28;

    v29 = v0[1];
    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_93494()
{

  (*(v0[42] + 8))(v0[43], v0[41]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_9352C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_935CC;

  return NSURLSession.data(for:delegate:)(a1, 0);
}

uint64_t sub_935CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_936E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_93724(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_93FD8;

  return sub_9352C(a1);
}

uint64_t sub_937CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_937F4, 0, 0);
}

uint64_t sub_937F4()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  sub_2698(v1, v2);
  v11 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_93928;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v9, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_93928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t sub_93A40()
{
  sub_2BF8((v0 + 16));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_93A88(uint64_t a1)
{
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_93B48;

  return sub_937CC(a1, (v1 + 2), v4, v5, v6, v7);
}

uint64_t sub_93B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

unint64_t sub_93C5C()
{
  result = qword_22AB60;
  if (!qword_22AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB60);
  }

  return result;
}

uint64_t sub_93CB0(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22AB68, &qword_1C1AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_93D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226C;

  return URLSessionTransport.makeCall(with:operationId:)(a1, a2, a3, a4);
}

uint64_t sub_93DDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_93E24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of URLSessionTransportMiddleware.interceptCall(with:operationId:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_93FD8;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_93FDC()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0x74754F65726F6373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74754F65726E6567;
  }
}

uint64_t sub_94044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_946CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_9406C(uint64_t a1)
{
  v2 = sub_942A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_940A8(uint64_t a1)
{
  v2 = sub_942A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t WorkServiceConfiguration.GenreRecommendationConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AB70, &qword_1C1C30);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  sub_2698(a1, a1[3]);
  sub_942A8();
  sub_1B5884();
  v14 = 0;
  v9 = v11[5];
  sub_1B54F4();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_1B54F4();
  v12 = 2;
  sub_1B54F4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_942A8()
{
  result = qword_22AB78;
  if (!qword_22AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB78);
  }

  return result;
}

uint64_t WorkServiceConfiguration.GenreRecommendationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AB80, &qword_1C1C38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_2698(a1, a1[3]);
  sub_942A8();
  sub_1B5864();
  if (v2)
  {
    return sub_2BF8(a1);
  }

  v25 = 0;
  v9 = sub_1B53B4();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1B53B4();
  v21 = v12;
  v23 = 2;
  v13 = sub_1B53B4();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  sub_2BF8(a1);
}

unint64_t sub_945C8()
{
  result = qword_22AB88;
  if (!qword_22AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB88);
  }

  return result;
}

unint64_t sub_94620()
{
  result = qword_22AB90;
  if (!qword_22AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB90);
  }

  return result;
}

unint64_t sub_94678()
{
  result = qword_22AB98;
  if (!qword_22AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AB98);
  }

  return result;
}

uint64_t sub_946CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74754F65726E6567 && a2 == 0xEF656D614E747570;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000001D6690 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74754F65726F6373 && a2 == 0xEF656D614E747570)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

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

void *sub_947FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16) <= a1)
  {

    return v2;
  }

  sub_97098();
  v6 = sub_43174();
  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = v5;
  v9 = v4;
  v10 = v3;
  sub_1B5744();
  swift_unknownObjectRetain_n();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];

  if (__OFSUB__(v8 >> 1, v9))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v12 != (v8 >> 1) - v9)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v5 = v8;
    v4 = v9;
    v3 = v10;
LABEL_3:
    sub_51294(v6, v3, v4, v5);
    v2 = v7;
    swift_unknownObjectRelease();
    return v2;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return _swiftEmptyArrayStorage;
  }

  return v2;
}

uint64_t sub_94934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v275 = a3;
  v257 = a2;
  v272 = a5;
  v7 = sub_1B4594();
  v265 = *(v7 - 8);
  __chkstk_darwin(v7);
  v270 = &v234 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B45D4();
  v252 = *(v9 - 8);
  v253 = v9;
  __chkstk_darwin(v9);
  v277 = &v234 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v12 = __chkstk_darwin(v11 - 8);
  v269 = &v234 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v234 - v15;
  v17 = __chkstk_darwin(v14);
  v255 = (&v234 - v18);
  v19 = __chkstk_darwin(v17);
  v250 = (&v234 - v20);
  v21 = __chkstk_darwin(v19);
  v254 = (&v234 - v22);
  v23 = __chkstk_darwin(v21);
  v249 = (&v234 - v24);
  __chkstk_darwin(v23);
  v248 = &v234 - v25;
  v26 = sub_1B4414();
  v276 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v268 = &v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v245 = &v234 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = (&v234 - v32);
  v34 = __chkstk_darwin(v31);
  v36 = &v234 - v35;
  v37 = __chkstk_darwin(v34);
  v274 = (&v234 - v38);
  v39 = __chkstk_darwin(v37);
  v267 = (&v234 - v40);
  __chkstk_darwin(v39);
  v256 = &v234 - v41;
  v42 = sub_1B40C4();
  v43 = *(v42 - 8);
  v262 = v42;
  v263 = v43;
  v44 = __chkstk_darwin(v42);
  v260 = &v234 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v264 = &v234 - v47;
  __chkstk_darwin(v46);
  v247 = &v234 - v48;
  *&v246 = type metadata accessor for Event(0);
  v49 = *(v246 - 8);
  v50 = __chkstk_darwin(v246);
  v244 = &v234 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v234 - v52;
  v54 = *(a4 + 8);
  v280 = *a4;
  v258 = *(a4 + 16);
  v259 = v54;
  v55 = *(a4 + 104);
  v56 = *(a4 + 136);
  v300 = *(a4 + 120);
  v301 = v56;
  v302 = *(a4 + 152);
  v57 = *(a4 + 40);
  v58 = *(a4 + 72);
  v296 = *(a4 + 56);
  v297 = v58;
  v298 = *(a4 + 88);
  v299 = v55;
  v295[0] = *(a4 + 24);
  v295[1] = v57;
  v294 = _swiftEmptyArrayStorage;
  if (qword_228308 != -1)
  {
LABEL_126:
    swift_once();
  }

  v266 = v36;
  v261 = v33;
  v251 = v26;
  v278 = v16;
  v59 = qword_22E350;
  v60 = sub_1B4DB4();
  v271 = v59;
  sub_1B4614("Processing engagement events", 28, 2, &dword_0, v59, v60, _swiftEmptyArrayStorage);
  v26 = *(a1 + 16);
  v279 = v7;
  if (!v26)
  {
    v281 = _swiftEmptyArrayStorage;
    v61 = 0;
    v273 = 0;
    goto LABEL_44;
  }

  v36 = 0;
  v61 = 0;
  v273 = 0;
  v281 = _swiftEmptyArrayStorage;
  v243 = (v263 + 8);
LABEL_4:
  v7 = v61;
  v16 = v36;
  while (1)
  {
    if (v16 >= v26)
    {
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v36 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      goto LABEL_124;
    }

    sub_7A1B4(a1 + ((v49[80] + 32) & ~v49[80]) + *(v49 + 9) * v16, v53);
    if (*(v281 + 2) >= v280)
    {
      break;
    }

    v62 = Event.assetID.getter();
    v64 = sub_CC298(v62, v63);
    if ((v65 & 1) == 0)
    {
      if (*(v275 + 2))
      {
        v33 = v64;
        result = sub_43124(v64);
        if (v67)
        {
          v68 = *(v275 + 7) + 88 * result;
          v69 = *(v68 + 16);
          v288 = *v68;
          v289 = v69;
          v71 = *(v68 + 48);
          v70 = *(v68 + 64);
          v72 = *(v68 + 32);
          v293 = *(v68 + 80);
          v291 = v71;
          v292 = v70;
          v290 = v72;
          v61 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_130;
          }

          sub_5EDD8(&v288, &v282);
          v73 = sub_97494(v53, v295);
          v74 = v243;
          if (v73)
          {
            v239 = v61;
            v75 = Event.eventType.getter();
            v237 = v76;
            v238 = v75;
            v240 = COERCE_DOUBLE(Event.endProgress.getter());
            LODWORD(v241) = v77;
            v78 = Event.isSample.getter();
            v236 = v78 != 2 && (v78 & 1) != 0;
            v79 = v244;
            v80 = v262;
            sub_7A1B4(v53, v244);
            if (swift_getEnumCaseMultiPayload() == 10)
            {

              v81 = sub_2B0C(&qword_22A138, &qword_1C59F0);
              v82 = *(v79 + *(v81 + 64));
              (*v74)(v79 + *(v81 + 48), v80);
              v83 = v82;
            }

            else
            {
              sub_7A218(v79);
              v83 = 0.0;
            }

            v84 = v247;
            Event.timestamp.getter(v247);
            sub_1B4064();
            v86 = v85;
            (*v243)(v84, v80);
            if (v288 == 1)
            {

              v87 = 1;
            }

            else
            {
              v88 = sub_1B5604();

              v87 = v88 & 1;
            }

            v242 = v87;
            if (v241)
            {
              v90 = 0.0;
            }

            else
            {
              v89 = v240;
              v90 = v89;
            }

            v284 = v290;
            v285 = v291;
            v286 = v292;
            v287 = v293;
            v282 = v288;
            v283 = v289;
            v91 = Book.Metadata.genreIDs.getter();
            v92 = v273;
            v93 = sub_7EC1C(v91);

            v241 = sub_7EC1C(v94);
            v273 = v92;
            sub_85554(&v288);

            *&v282 = v33;
            v240 = COERCE_DOUBLE(sub_1B5594());
            v235 = v95;
            v96 = v259;
            v33 = sub_947FC(v259, v93);

            v97 = v33[2];
            if (v97 != v96)
            {
              if (__OFSUB__(v96, v97))
              {
                goto LABEL_131;
              }

              v98 = sub_972C8(0, 0xE000000000000000, v96 - v97);
              *&v282 = v33;
              sub_5FC38(v98);
              v33 = v282;
            }

            v99 = v258;
            v100 = sub_947FC(v258, v241);

            v101 = v100[2];
            if (v101 != v99)
            {
              if (__OFSUB__(v99, v101))
              {
                goto LABEL_132;
              }

              v102 = sub_972C8(0, 0xE000000000000000, v99 - v101);
              *&v282 = v100;
              sub_5FC38(v102);
              v100 = v282;
            }

            v103 = v242;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v242 = v103;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v281 = sub_338B0(0, *(v281 + 2) + 1, 1, v281);
            }

            v106 = *(v281 + 2);
            v105 = *(v281 + 3);
            if (v106 >= v105 >> 1)
            {
              v281 = sub_338B0((v105 > 1), v106 + 1, 1, v281);
            }

            v107 = v86;
            sub_7A218(v53);
            v108 = v281;
            *(v281 + 2) = v106 + 1;
            v109 = &v108[72 * v106];
            v110 = v237;
            *(v109 + 4) = v238;
            *(v109 + 5) = v110;
            *(v109 + 12) = v90;
            *(v109 + 13) = v236;
            *(v109 + 14) = v83;
            *(v109 + 15) = v107;
            v61 = v239;
            v111 = v235;
            *(v109 + 8) = v240;
            *(v109 + 9) = v111;
            *(v109 + 20) = v242;
            *(v109 + 11) = v33;
            *(v109 + 12) = v100;
            v294 = v108;
          }

          else
          {
            sub_7A218(v53);
            sub_85554(&v288);
          }

          if (v36 == v26)
          {
            goto LABEL_44;
          }

          goto LABEL_4;
        }
      }
    }

    sub_7A218(v53);
    ++v16;
    if (v36 == v26)
    {
      goto LABEL_43;
    }
  }

  sub_7A218(v53);
LABEL_43:
  v61 = v7;
LABEL_44:
  v247 = sub_2B0C(&qword_22A048, &unk_1BFC60);
  v112 = swift_allocObject();
  v246 = xmmword_1BCA80;
  *(v112 + 16) = xmmword_1BCA80;
  *(v112 + 56) = &type metadata for Int;
  *(v112 + 64) = &protocol witness table for Int;
  *(v112 + 32) = v61;
  sub_1B4DB4();
  v113 = v271;
  sub_1B4614("Processed %ld engagement events", v234);

  v114 = sub_1B4DB4();
  sub_1B4614("Processing purchase history", 27, 2, &dword_0, v113, v114, _swiftEmptyArrayStorage);
  sub_1B40B4();
  a1 = *(v257 + 16);
  if (a1)
  {
    v36 = 0;
    v16 = 0;
    v243 = (v263 + 8);
    v53 = (v257 + 216);
    v26 = v274;
    v49 = v275;
    v7 = v279;
    while (1)
    {
      if (*v53)
      {
        goto LABEL_48;
      }

      if (!*(v49 + 2))
      {
        goto LABEL_48;
      }

      v33 = *(v53 - 23);
      v115 = sub_43124(v33);
      if ((v116 & 1) == 0)
      {
        goto LABEL_48;
      }

      v117 = *(v49 + 7) + 88 * v115;
      v118 = *(v117 + 16);
      v288 = *v117;
      v289 = v118;
      v120 = *(v117 + 48);
      v119 = *(v117 + 64);
      v121 = *(v117 + 32);
      v293 = *(v117 + 80);
      v291 = v120;
      v292 = v119;
      v290 = v121;
      v36 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        goto LABEL_125;
      }

      v122 = *&v296;
      if (*&v296 <= 0.0)
      {
        goto LABEL_47;
      }

      v123 = sub_5EDD8(&v288, &v282);
      sub_97224(v123, 0.0, 1.0);
      if (v124 >= v122)
      {
        sub_85554(&v288);
LABEL_47:
        ++v16;
        goto LABEL_48;
      }

      sub_1B4044();
      sub_1B4064();
      v126 = v125;
      if (v288 == 1)
      {
        break;
      }

      v129 = sub_1B5604();

      v130 = 0;
      v127 = v258;
      v128 = v273;
      if (v129)
      {
        goto LABEL_58;
      }

LABEL_59:
      LODWORD(v257) = v130;
      v284 = v290;
      v285 = v291;
      v286 = v292;
      v287 = v293;
      v282 = v288;
      v283 = v289;
      v131 = Book.Metadata.genreIDs.getter();
      v132 = sub_7EC1C(v131);

      v134 = sub_7EC1C(v133);
      v273 = v128;
      sub_85554(&v288);

      *&v282 = v33;
      v135 = sub_1B5594();
      v244 = v136;
      v137 = v259;
      v138 = sub_947FC(v259, v132);

      v139 = v138[2];
      if (v139 == v137)
      {
        v140 = v281;
      }

      else
      {
        v140 = v281;
        if (__OFSUB__(v137, v139))
        {
          goto LABEL_128;
        }

        v141 = sub_972C8(0, 0xE000000000000000, v137 - v139);
        *&v282 = v138;
        sub_5FC38(v141);
        v138 = v282;
      }

      v142 = sub_947FC(v127, v134);

      v143 = v142[2];
      if (v143 == v127)
      {
        v49 = v275;
      }

      else
      {
        v49 = v275;
        if (__OFSUB__(v127, v143))
        {
          goto LABEL_129;
        }

        v144 = sub_972C8(0, 0xE000000000000000, v127 - v143);
        *&v282 = v142;
        sub_5FC38(v144);
        v142 = v282;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = sub_338B0(0, *(v140 + 2) + 1, 1, v140);
      }

      v146 = *(v140 + 2);
      v145 = *(v140 + 3);
      v281 = v140;
      if (v146 >= v145 >> 1)
      {
        v281 = sub_338B0((v145 > 1), v146 + 1, 1, v281);
      }

      v147 = v126;
      (*v243)(v260, v262);
      v148 = v281;
      *(v281 + 2) = v146 + 1;
      v149 = &v148[72 * v146];
      strcpy(v149 + 32, "bookPurchased");
      *(v149 + 23) = -4864;
      *(v149 + 6) = 0;
      *(v149 + 14) = 0;
      *(v149 + 15) = v147;
      v150 = v244;
      *(v149 + 8) = v135;
      *(v149 + 9) = v150;
      *(v149 + 20) = v257;
      *(v149 + 11) = v138;
      *(v149 + 12) = v142;
      v294 = v148;
      v16 = v36;
      v7 = v279;
      v26 = v274;
LABEL_48:
      v53 += 384;
      if (!--a1)
      {
        goto LABEL_73;
      }
    }

    v127 = v258;
    v128 = v273;
LABEL_58:
    v130 = 1;
    goto LABEL_59;
  }

  v36 = 0;
  v7 = v279;
LABEL_73:
  v151 = swift_allocObject();
  *(v151 + 16) = v246;
  *(v151 + 56) = &type metadata for Int;
  *(v151 + 64) = &protocol witness table for Int;
  *(v151 + 32) = v36;
  sub_1B4DB4();
  sub_1B4614("Processed %ld purchases", v234);

  if (v36 >= 1)
  {
    sub_9631C(&v294);
  }

  v152 = v294;
  v153 = *(v294 + 2);
  v154 = v280 - v153;
  if (v280 >= v153)
  {
    v155 = v278;
    if (v280 > v153)
    {
      v156 = sub_972C8(0, 0xE000000000000000, v259);
      v157 = sub_972C8(0, 0xE000000000000000, v258);
      *&v288 = 0;
      *(&v288 + 1) = 0xE000000000000000;
      v289 = 0uLL;
      *&v290 = 0;
      *(&v290 + 1) = 0xE000000000000000;
      v7 = v279;
      LODWORD(v291) = 0;
      *(&v291 + 1) = v156;
      *&v292 = v157;
      v158 = sub_97364(&v288, v154);
      sub_97440(&v288);
      v159 = v158;
      v155 = v278;
      sub_5FD2C(v159);
      v152 = v294;
    }

    goto LABEL_80;
  }

  result = v153 - v280;
  v155 = v278;
  if (!__OFSUB__(v153, v280))
  {
    v152 = sub_964B0(result, v294);
    v294 = v152;
LABEL_80:
    v160 = v7;
    sub_1B45C4();
    sub_1B43F4();
    v161 = *(v152 + 2);
    v275 = v152;
    v281 = v161;
    if (v161)
    {
      *&v282 = _swiftEmptyArrayStorage;
      sub_3747C(0, v161, 0);
      v162 = v282;
      v163 = (v152 + 40);
      do
      {
        v165 = *(v163 - 1);
        v164 = *v163;
        *&v282 = v162;
        v166 = *(v162 + 16);
        v167 = *(v162 + 24);

        if (v166 >= v167 >> 1)
        {
          sub_3747C((v167 > 1), v166 + 1, 1);
          v162 = v282;
        }

        *(v162 + 16) = v166 + 1;
        v168 = v162 + 16 * v166;
        *(v168 + 32) = v165;
        *(v168 + 40) = v164;
        v163 += 9;
        --v161;
      }

      while (v161);
      v155 = v278;
      v169 = v279;
      v152 = v275;
    }

    else
    {
      v169 = v160;
    }

    v170 = v248;
    sub_1B4574();
    v171 = *(v265 + 56);
    v271 = v265 + 56;
    v273 = v171;
    v171(v170, 0, 1, v169);
    sub_1B45F4();
    sub_1B43F4();
    v172 = _swiftEmptyArrayStorage;
    v173 = v169;
    v174 = v281;
    if (v281)
    {
      *&v282 = _swiftEmptyArrayStorage;
      sub_3780C(0, v281, 0);
      v172 = v282;
      v175 = *(v282 + 16);
      v176 = (v152 + 48);
      do
      {
        v177 = *v176;
        *&v282 = v172;
        v178 = v172[3];
        if (v175 >= v178 >> 1)
        {
          sub_3780C((v178 > 1), v175 + 1, 1);
          v172 = v282;
        }

        v172[2] = v175 + 1;
        *(v172 + v175 + 8) = v177;
        v176 += 18;
        ++v175;
        --v174;
      }

      while (v174);
      v155 = v278;
      v173 = v279;
    }

    v179 = v249;
    *v249 = v172;
    v180 = *(v265 + 104);
    LODWORD(v260) = enum case for Feature.floatList(_:);
    v280 = v180;
    v180(v179);
    v273(v179, 0, 1, v173);
    sub_1B45F4();
    sub_1B43F4();
    v181 = v281;
    if (v281)
    {
      *&v282 = _swiftEmptyArrayStorage;
      sub_377EC(0, v281, 0);
      v182 = v282;
      v183 = *(v282 + 16);
      v184 = v275;
      v185 = (v275 + 52);
      v186 = v280;
      do
      {
        v188 = *v185;
        v185 += 18;
        v187 = v188;
        *&v282 = v182;
        v189 = *(v182 + 24);
        if (v183 >= v189 >> 1)
        {
          sub_377EC((v189 > 1), v183 + 1, 1);
          v182 = v282;
        }

        *(v182 + 16) = v183 + 1;
        *(v182 + 4 * v183++ + 32) = v187;
        --v181;
      }

      while (v181);
      v190 = v254;
      *v254 = v182;
      v191 = v279;
      v186(v190, enum case for Feature.int32List(_:), v279);
      v273(v190, 0, 1, v191);
      sub_1B45F4();
      sub_1B43F4();
      *&v282 = _swiftEmptyArrayStorage;
      v192 = v281;
      sub_3780C(0, v281, 0);
      v193 = v282;
      v194 = *(v282 + 16);
      v195 = (v184 + 56);
      do
      {
        v196 = *v195;
        *&v282 = v193;
        v197 = v193[3];
        if (v194 >= v197 >> 1)
        {
          sub_3780C((v197 > 1), v194 + 1, 1);
          v193 = v282;
        }

        v193[2] = v194 + 1;
        *(v193 + v194 + 8) = v196;
        v195 += 18;
        ++v194;
        --v192;
      }

      while (v192);
      v155 = v278;
      v173 = v279;
    }

    else
    {
      v198 = v254;
      *v254 = _swiftEmptyArrayStorage;
      (v280)(v198, enum case for Feature.int32List(_:), v173);
      v273(v198, 0, 1, v173);
      sub_1B45F4();
      sub_1B43F4();
      v193 = _swiftEmptyArrayStorage;
    }

    v199 = v250;
    *v250 = v193;
    v200 = v260;
    (v280)(v199, v260, v173);
    v273(v199, 0, 1, v173);
    sub_1B45F4();
    sub_1B43F4();
    v201 = v281;
    if (v281)
    {
      *&v282 = _swiftEmptyArrayStorage;
      sub_3780C(0, v281, 0);
      v202 = v282;
      v203 = *(v282 + 16);
      v204 = 60;
      v205 = v275;
      v206 = v280;
      do
      {
        v207 = *&v205[v204];
        *&v282 = v202;
        v208 = *(v202 + 24);
        if (v203 >= v208 >> 1)
        {
          sub_3780C((v208 > 1), v203 + 1, 1);
          v200 = v260;
          v202 = v282;
        }

        *(v202 + 16) = v203 + 1;
        *(v202 + 4 * v203 + 32) = v207;
        v204 += 72;
        ++v203;
        --v201;
      }

      while (v201);
      v209 = v255;
      *v255 = v202;
      v210 = v279;
      v206(v209, v200, v279);
      v273(v209, 0, 1, v210);
      sub_1B45F4();
      *&v282 = _swiftEmptyArrayStorage;
      v211 = v281;
      sub_3782C(0, v281, 0);
      v212 = v282;
      v213 = v205 + 96;
      do
      {
        v281 = v211;
        v214 = *(v213 - 4);
        v215 = *(v213 - 3);
        LODWORD(v280) = *(v213 - 4);
        v216 = *(v213 - 1);
        v217 = *v213;
        *&v282 = v212;
        v219 = v212[2];
        v218 = v212[3];

        if (v219 >= v218 >> 1)
        {
          sub_3782C((v218 > 1), v219 + 1, 1);
          v212 = v282;
        }

        v212[2] = v219 + 1;
        v220 = &v212[5 * v219];
        v220[4] = v214;
        v220[5] = v215;
        *(v220 + 12) = v280;
        v220[7] = v216;
        v220[8] = v217;
        v213 += 9;
        v211 = v281 - 1;
      }

      while (v281 != &dword_0 + 1);

      v155 = v278;
      v221 = v212;
    }

    else
    {
      v222 = v255;
      v221 = _swiftEmptyArrayStorage;
      *v255 = _swiftEmptyArrayStorage;
      (v280)(v222, v200, v173);
      v273(v222, 0, 1, v173);
      sub_1B45F4();
    }

    sub_156010(v221, 0xD000000000000011, 0x80000000001D67D0, v277);

    v223 = sub_1B45B4();
    v224 = *(v223 + 16);
    v225 = v251;
    if (v224)
    {
      v226 = *(v276 + 16);
      v227 = (*(v276 + 80) + 32) & ~*(v276 + 80);
      v261 = v223;
      v228 = v223 + v227;
      v280 = *(v276 + 72);
      v281 = (v265 + 48);
      v266 = (v265 + 16);
      v267 = (v265 + 32);
      v265 += 8;
      v274 = (v276 + 8);
      v275 = v226;
      v276 += 16;
      v229 = v245;
      v230 = v279;
      (v226)(v245, v223 + v227, v251);
      while (1)
      {
        sub_1B45E4();
        if ((*v281)(v155, 1, v230) == 1)
        {
          (*v274)(v229, v225);
          sub_967AC(v155);
        }

        else
        {
          v231 = v270;
          (*v267)(v270, v278, v230);
          (v275)(v268, v229, v225);
          v232 = v269;
          (*v266)(v269, v231, v230);
          v273(v232, 0, 1, v230);
          v226 = v275;
          sub_1B45F4();
          v233 = v231;
          v155 = v278;
          (*v265)(v233, v230);
          (*v274)(v229, v225);
        }

        v228 += v280;
        if (!--v224)
        {
          break;
        }

        (v226)(v229, v228, v225);
      }
    }

    (*(v252 + 8))(v277, v253);
    return (*(v263 + 8))(v264, v262);
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

Swift::Int sub_9631C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56AB8(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 104;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 11) >= *(v12 + 7))
          {
            break;
          }

          v13 = v12 - 72;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v28 = *(v12 + 8);
          v26 = v15;
          v27 = v16;
          v25 = v14;
          *(v12 + 8) = *(v12 - 1);
          v17 = *(v12 - 24);
          *(v12 + 2) = *(v12 - 40);
          *(v12 + 3) = v17;
          v18 = *(v12 - 56);
          *v12 = *(v12 - 72);
          *(v12 + 1) = v18;
          *v13 = v24;
          v19 = v28;
          v20 = v27;
          v21 = v25;
          *(v13 + 2) = v26;
          *(v13 + 3) = v20;
          *(v13 + 8) = v19;
          *(v13 + 1) = v21;
          v12 = v13;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 72;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v24 = v7 + 4;
    *(&v24 + 1) = v6;
    sub_96814(&v24, v23, v29, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_964B0(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 32;
        v8 = _swiftEmptyArrayStorage;
        v41 = _swiftEmptyArrayStorage;
        v39 = a2 + 32;
        while (1)
        {
          v40 = v6;
          v9 = (v7 + 72 * v5);
          v10 = v5;
          while (1)
          {
            if (v10 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_31;
            }

            v53 = *(v9 + 8);
            v11 = v9[3];
            v51 = v9[2];
            v52 = v11;
            v12 = v9[1];
            v49 = *v9;
            v50 = v12;
            v5 = v10 + 1;
            v13 = v8[2];
            if (v13 >= v3)
            {
              break;
            }

            sub_97860(&v49, &v44);
            result = swift_isUniquelyReferenced_nonNull_native();
            v54 = v8;
            if ((result & 1) == 0)
            {
              result = sub_3784C(0, v13 + 1, 1);
              v8 = v54;
            }

            v15 = v8[2];
            v14 = v8[3];
            if (v15 >= v14 >> 1)
            {
              result = sub_3784C((v14 > 1), v15 + 1, 1);
              v8 = v54;
            }

            v8[2] = v15 + 1;
            v16 = &v8[9 * v15];
            *(v16 + 2) = v49;
            v17 = v50;
            v18 = v51;
            v19 = v52;
            v16[12] = v53;
            *(v16 + 4) = v18;
            *(v16 + 5) = v19;
            *(v16 + 3) = v17;
            v9 = (v9 + 72);
            v10 = v5;
            if (v4 == v5)
            {
              goto LABEL_28;
            }
          }

          if (v40 >= v13)
          {
            goto LABEL_32;
          }

          v20 = &v8[9 * v40];
          v44 = *(v20 + 2);
          v21 = *(v20 + 3);
          v22 = *(v20 + 4);
          v23 = *(v20 + 5);
          v48 = v20[12];
          v46 = v22;
          v47 = v23;
          v45 = v21;
          sub_97860(&v49, v42);
          sub_97860(&v44, v42);
          v24 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v41;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_3784C(0, v41[2] + 1, 1);
            v24 = v55;
          }

          v27 = v24[2];
          v26 = v24[3];
          if (v27 >= v26 >> 1)
          {
            sub_3784C((v26 > 1), v27 + 1, 1);
            v24 = v55;
          }

          v24[2] = v27 + 1;
          v41 = v24;
          v28 = &v24[9 * v27];
          *(v28 + 2) = v44;
          v29 = v45;
          v30 = v46;
          v31 = v47;
          v28[12] = v48;
          *(v28 + 4) = v30;
          *(v28 + 5) = v31;
          *(v28 + 3) = v29;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_56BBC(v8);
            v8 = result;
          }

          if (v40 >= v8[2])
          {
            goto LABEL_33;
          }

          v32 = &v8[9 * v40];
          v42[0] = *(v32 + 2);
          v33 = *(v32 + 3);
          v34 = *(v32 + 4);
          v35 = *(v32 + 5);
          v43 = v32[12];
          v42[2] = v34;
          v42[3] = v35;
          v42[1] = v33;
          v37 = v51;
          v36 = v52;
          v38 = v50;
          v32[12] = v53;
          *(v32 + 4) = v37;
          *(v32 + 5) = v36;
          *(v32 + 3) = v38;
          *(v32 + 2) = v49;
          result = sub_97440(v42);
          if ((v40 + 1) < v3)
          {
            v6 = v40 + 1;
          }

          else
          {
            v6 = 0;
          }

          v7 = v39;
          if (v4 - 1 == v10)
          {
            goto LABEL_28;
          }
        }
      }

      v41 = _swiftEmptyArrayStorage;
LABEL_28:

      return v41;
    }

    return v2;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_967AC(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22A518, &qword_1C0220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_96814(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_52E40(v7);
      v7 = result;
    }

    v80 = v7 + 2;
    v81 = v7[2];
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v7[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_96E20((*a3 + 72 * *v82), (*a3 + 72 * *v84), (*a3 + 72 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 72 * v6 + 28);
      v10 = 72 * v8;
      v11 = *a3 + 72 * v8;
      v12 = *(v11 + 28);
      v13 = v8 + 2;
      v14 = (v11 + 172);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 18;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 72 * v6 - 72;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = v22 + v18;
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x48uLL);
            *(v21 + 32) = v94;
            *(v21 + 48) = v96;
            *(v21 + 64) = v98;
            *v21 = v90;
            *(v21 + 16) = v92;
          }

          ++v20;
          v18 -= 72;
          v10 += 72;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_32F04(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v33 = v7[2];
    v32 = v7[3];
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_32F04((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v34;
    v35 = v7 + 4;
    v36 = &v7[2 * v33 + 4];
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = v7[4];
          v39 = v7[5];
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = &v7[2 * v34];
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v35[2 * v37];
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = &v7[2 * v34];
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = &v35[2 * v37];
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = &v35[2 * v37 - 2];
        v76 = *v75;
        v77 = &v35[2 * v37];
        v78 = v77[1];
        sub_96E20((*a3 + 72 * *v75), (*a3 + 72 * *v77), (*a3 + 72 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > v7[2])
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = v7[2];
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove(&v35[2 * v37], v77 + 2, 16 * (v79 - 1 - v37));
        v7[2] = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v35[2 * v34];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = &v7[2 * v34];
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v35[2 * v37];
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 72 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 44) >= *(v27 + 28))
    {
LABEL_29:
      ++v6;
      v24 += 72;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = v27 - 72;
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 24);
    *(v27 + 32) = *(v27 - 40);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 8);
    v30 = *(v27 - 56);
    *v27 = *(v27 - 72);
    *(v27 + 16) = v30;
    *(v28 + 64) = v99;
    *(v28 + 32) = v95;
    *(v28 + 48) = v97;
    v27 -= 72;
    *v28 = v91;
    *(v28 + 16) = v93;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_96E20(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 72;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 72;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[18 * v9] <= a4)
    {
      memmove(a4, __dst, 72 * v9);
    }

    v12 = &v4[18 * v9];
    if (v8 < 72)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[7] < v6[7])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 18;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 18;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 18;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x48uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[18 * v11] <= a4)
  {
    memmove(a4, __src, 72 * v11);
  }

  v12 = &v4[18 * v11];
  if (v10 >= 72 && v6 > v7)
  {
LABEL_20:
    v5 -= 18;
    do
    {
      v15 = v5 + 18;
      if (*(v6 - 11) < *(v12 - 11))
      {
        v17 = v6 - 18;
        if (v15 != v6)
        {
          memmove(v5, v6 - 18, 0x48uLL);
        }

        if (v12 <= v4 || (v6 -= 18, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 18);
      if (v15 != v12)
      {
        memmove(v5, v12 - 18, 0x48uLL);
      }

      v5 -= 18;
      v12 -= 18;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 72;
  if (v6 != v4 || v6 >= &v4[18 * v18])
  {
    memmove(v6, v4, 72 * v18);
  }

  return 1;
}

void sub_97098()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      swift_stdlib_random();
      v6 = (0 * v2) >> 64;
      if (v2)
      {
        if (-v2 % v2)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_18;
        }

        if (v8 >= v9)
        {
          goto LABEL_19;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_56B08(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_20;
        }

        v16 = &v1[16 * v4 + 32];
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v17 = &v1[16 * v8 + 32];
        *v17 = v12;
        *(v17 + 1) = v11;

        *v18 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }
}

void sub_97224(uint64_t a1, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  swift_stdlib_random();
  if (v5 * vcvtd_n_f64_u64(0, 0x35uLL) + a2 == a3)
  {
    sub_97224(a1, a2, a3);
  }
}

void *sub_972C8(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_1B4B34();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_97364(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v2 = result;
    v4 = sub_1B4B34();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = *v2;
    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    v8 = *(v2 + 1);
    *(v4 + 96) = v2[8];
    *(v4 + 64) = v7;
    *(v4 + 80) = v6;
    *(v4 + 48) = v8;
    v9 = a2 - 1;
    if (v9)
    {
      v10 = v4 + 104;
      do
      {
        sub_97860(v2, v14);
        *v10 = *v2;
        v11 = *(v2 + 1);
        v12 = *(v2 + 2);
        v13 = *(v2 + 3);
        *(v10 + 64) = v2[8];
        *(v10 + 32) = v12;
        *(v10 + 48) = v13;
        *(v10 + 16) = v11;
        v10 += 72;
        --v9;
      }

      while (v9);
    }

    sub_97860(v2, v14);
    return v5;
  }

  return result;
}

BOOL sub_97494(uint64_t a1, double *a2)
{
  v4 = type metadata accessor for Event(0);
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(a1, v6);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();

  switch(a1)
  {
    case 1:
      v7 = &v6[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      ++a2;
      break;
    case 2:
      v7 = &v6[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      a2 += 2;
      break;
    case 3:
      v7 = &v6[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      a2 += 3;
      break;
    case 4:
      v7 = &v6[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      a2 += 5;
      break;
    case 5:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 6;
      break;
    case 6:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 7;
      break;
    case 7:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 8;
      break;
    case 8:
      v7 = &v6[*(sub_2B0C(&qword_22A148, &qword_1BFD68) + 48)];
      a2 += 9;
      break;
    case 9:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 10;
      break;
    case 10:
      v7 = &v6[*(sub_2B0C(&qword_22A138, &qword_1C59F0) + 48)];
      a2 += 11;
      break;
    case 11:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 12;
      break;
    case 12:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 13;
      break;
    case 13:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 14;
      break;
    case 14:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 15;
      break;
    case 15:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 16;
      break;
    case 16:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      a2 += 17;
      break;
    default:
      v7 = &v6[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      break;
  }

  v8 = *a2;
  v9 = sub_1B40C4();
  v10 = (*(*(v9 - 8) + 8))(v7, v9);
  if (v8 <= 0.0)
  {
    return 0;
  }

  sub_97224(v10, 0.0, 1.0);
  return v11 < v8;
}

unint64_t AccessRequirementUnsatisfiedReason.description.getter()
{
  v1 = 0xD00000000000005ALL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000016;
  }

  v2 = 0xD000000000000021;
  if (!*v0)
  {
    v2 = 0xD00000000000002FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_97934()
{
  result = qword_22ABA0;
  if (!qword_22ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABA0);
  }

  return result;
}

BooksPersonalization::Environment_optional __swiftcall Environment.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_213040;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t Environment.rawValue.getter()
{
  v1 = 0x6C65766564;
  v2 = 0x676E6967617473;
  if (*v0 != 2)
  {
    v2 = 0x69746375646F7270;
  }

  if (*v0)
  {
    v1 = 24945;
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

unint64_t sub_97A80()
{
  result = qword_22ABA8;
  if (!qword_22ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABA8);
  }

  return result;
}

Swift::Int sub_97AD4()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_97B8C(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_97C30(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_97CF0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C65766564;
  v4 = 0xE700000000000000;
  v5 = 0x676E6967617473;
  if (*v1 != 2)
  {
    v5 = 0x69746375646F7270;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 24945;
    v2 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_97D68()
{
  result = qword_22ABB0;
  if (!qword_22ABB0)
  {
    sub_1CC1C(&qword_22ABB8, &qword_1C1F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABB0);
  }

  return result;
}

uint64_t sub_97E18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_97E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_97EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000000001D6860 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1B5604();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_97F7C(uint64_t a1)
{
  v2 = sub_98140();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_97FB8(uint64_t a1)
{
  v2 = sub_98140();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenreCollectionRecommendationRequest.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22ABC0, &qword_1C20C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = *v1;
  sub_2698(a1, a1[3]);
  sub_98140();
  sub_1B5884();
  v10 = v7;
  sub_98194();
  sub_1B5544();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_98140()
{
  result = qword_22ABC8;
  if (!qword_22ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABC8);
  }

  return result;
}

unint64_t sub_98194()
{
  result = qword_22ABD0;
  if (!qword_22ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABD0);
  }

  return result;
}

uint64_t GenreCollectionRecommendationRequest.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22ABD8, &qword_1C20C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_2698(a1, a1[3]);
  sub_98140();
  sub_1B5864();
  if (!v2)
  {
    sub_98354();
    sub_1B5404();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return sub_2BF8(a1);
}

unint64_t sub_98354()
{
  result = qword_22ABE0;
  if (!qword_22ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ABE0);
  }

  return result;
}

uint64_t sub_983D8(uint64_t a1)
{
  *(v2 + 2264) = v1;
  *(v2 + 2256) = a1;
  return _swift_task_switch(sub_983FC, 0, 0);
}

uint64_t sub_983FC()
{
  v1 = *(v0 + 2264);
  v2 = v1[5];
  v3 = v1[6];
  sub_2698(v1 + 2, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 2272) = v4;
  *v4 = v0;
  v4[1] = sub_9852C;

  return v6(v0 + 16, v2, v3);
}

uint64_t sub_9852C()
{
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v2 = sub_98B54;
  }

  else
  {
    v2 = sub_98640;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_98640()
{
  v1 = *(v0 + 2264);
  memcpy((v0 + 1136), (v0 + 16), 0x460uLL);
  v2 = v1[10];
  v3 = v1[11];
  sub_2698(v1 + 7, v2);
  *(v0 + 2312) = 1280;
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 2288) = v4;
  *v4 = v0;
  v4[1] = sub_98788;

  return v6(v0 + 2312, v2, v3);
}

uint64_t sub_98788(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2296) = a1;
  *(v3 + 2304) = v1;

  if (v1)
  {
    sub_2B54(v3 + 1136);
    v4 = sub_98B6C;
  }

  else
  {
    v4 = sub_988A8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_988A8()
{
  v27 = v0;
  v1 = *(*(v0 + 2256) + 16);

  if (v1)
  {
    v21 = v1;
    v3 = 0;
    v23 = result + 32;
    v24 = *(v0 + 2296);
    v4 = v24 + 56;
    v5 = _swiftEmptyArrayStorage;
    while (1)
    {
      v20 = v5;
      v6 = (v4 + 40 * v3);
      v7 = v3;
      v8 = v21;
      while (1)
      {
        if (v7 >= v8)
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_26;
        }

        v9 = *(v24 + 16);
        if (v7 == v9)
        {
LABEL_20:
          v5 = v20;
          goto LABEL_22;
        }

        if (v7 >= v9)
        {
          goto LABEL_27;
        }

        v10 = *(v23 + v7);
        v11 = *(v6 - 3);
        v22 = *(v6 - 16);
        v13 = *(v6 - 1);
        v12 = *v6;
        memcpy(__dst, (v0 + 1136), sizeof(__dst));

        Configuration.mediaType(for:)(v11);
        if (v26[0] != 2)
        {
          break;
        }

LABEL_5:
        ++v7;
        v6 += 5;
        if (v3 == v8)
        {
          goto LABEL_20;
        }
      }

      memcpy(__dst, (v0 + 1136), sizeof(__dst));
      v26[0] &= 1u;
      v14 = sub_98C44(v26);
      v15 = sub_2ADF8(v10, v14);

      if ((v15 & 1) != 0 && *(v0 + 1160) == 1)
      {
        break;
      }

      v5 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_33B00(0, *(v20 + 2) + 1, 1, v20);
        v5 = result;
      }

      v4 = v24 + 56;
      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_33B00((v16 > 1), v17 + 1, 1, v5);
        v5 = result;
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[40 * v17];
      *(v18 + 4) = v11;
      v18[40] = v22;
      *(v18 + 6) = v13;
      *(v18 + 7) = v12;
      v18[64] = v10;
      if (v3 == v21)
      {
        goto LABEL_22;
      }
    }

    v8 = v21;
    goto LABEL_5;
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_22:
  sub_2B54(v0 + 1136);

  v19 = *(v0 + 8);

  return v19(v5);
}

BooksPersonalization::Book::MediaType_optional __swiftcall Configuration.mediaType(for:)(Swift::UInt64 a1)
{
  v3 = v1;
  v4 = 0;

  v6 = *(v5 + 16);
  v7 = 32;
  while (v6)
  {
    v8 = *(v5 + v7);
    v7 += 8;
    --v6;
    if (v8 == a1)
    {
LABEL_8:

      goto LABEL_10;
    }
  }

  v4 = 1;

  v10 = *(v9 + 16);
  v11 = 32;
  while (v10)
  {
    v12 = *(v9 + v11);
    v11 += 8;
    --v10;
    if (v12 == a1)
    {
      goto LABEL_8;
    }
  }

  v4 = 2;
LABEL_10:
  *v3 = v4;
  return result;
}

void *sub_98C44(_BYTE *a1)
{
  v2 = v1 + 640;
  if (*a1)
  {
    v2 = v1 + 656;
  }

  v3 = *v2;
  if (*a1)
  {
    v4 = (v1 + 657);
  }

  else
  {
    v4 = (v1 + 641);
  }

  v5 = *v4;
  if (v3 == 1)
  {
    sub_1B57F4();

    sub_1B4884();
    v6 = sub_1B5844();
    v7 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
    v8 = v6 & ~v7;
    if ((*(&_swiftEmptySetSingleton[7] + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v9 = ~v7;
      v10 = _swiftEmptySetSingleton[6];
      while (*(v10 + v8) == 1 && (sub_1B5604() & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if (((*(&_swiftEmptySetSingleton[7] + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_116A7C(0, v8, isUniquelyReferenced_nonNull_native);
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if ((v5 & 1) == 0)
    {
LABEL_22:

      return _swiftEmptySetSingleton;
    }
  }

  sub_1B57F4();
  sub_1B4884();
  v12 = sub_1B5844();
  v13 = -1 << LOBYTE(_swiftEmptySetSingleton[4]);
  v14 = v12 & ~v13;
  if ((*(&_swiftEmptySetSingleton[7] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = _swiftEmptySetSingleton[6];
    while (*(v16 + v14) != 1 && (sub_1B5604() & 1) == 0)
    {
      v14 = (v14 + 1) & v15;
      if (((*(&_swiftEmptySetSingleton[7] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_22;
  }

LABEL_21:
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_116A7C(1, v14, v17);

  return _swiftEmptySetSingleton;
}

uint64_t BookHistoryServiceStressTest.__deallocating_deinit()
{
  sub_2BF8((v0 + 16));
  sub_2BF8((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_98ED0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return sub_983D8(a1);
}

uint64_t sub_98F68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_98FB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of GenreCollectionRecommendationServiceType.fetchRecommendedGenreCollections(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_441B4;

  return v9(a1, a2, a3);
}

unint64_t sub_99174()
{
  result = qword_22AC90;
  if (!qword_22AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AC90);
  }

  return result;
}

unint64_t sub_991CC()
{
  result = qword_22AC98;
  if (!qword_22AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AC98);
  }

  return result;
}

unint64_t sub_99224()
{
  result = qword_22ACA0;
  if (!qword_22ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ACA0);
  }

  return result;
}

void *sub_99278(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  sub_3744C(0, v6, 0);
  v7 = v6;
  result = _swiftEmptyArrayStorage;
  v31 = v4;
  v29 = a1;
  v30 = a2;
  if (v6)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    v11 = v7;
    v12 = v5;
    v13 = v5;
    while (v4)
    {
      if (!v12)
      {
        goto LABEL_23;
      }

      v14 = *v9;
      v15 = *v10;
      v32 = result;
      v17 = result[2];
      v16 = result[3];
      if (v17 >= v16 >> 1)
      {
        v26 = v13;
        v27 = v7;
        sub_3744C((v16 > 1), v17 + 1, 1);
        v13 = v26;
        v7 = v27;
        result = v32;
      }

      result[2] = v17 + 1;
      v18 = &result[2 * v17];
      --v12;
      v18[4] = v14;
      v18[5] = v15;
      --v4;
      ++v10;
      ++v9;
      if (!--v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = v5;
LABEL_13:
  if (v31 > v13)
  {
    while (v7 < v31)
    {
      v19 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_25;
      }

      if (v13 != v7)
      {
        if (v7 >= v13)
        {
          goto LABEL_26;
        }

        v20 = *(v29 + 32 + 8 * v7);
        v21 = *(v30 + 32 + 8 * v7);
        v33 = result;
        v23 = result[2];
        v22 = result[3];
        if (v23 >= v22 >> 1)
        {
          v28 = v7;
          v25 = v13;
          sub_3744C((v22 > 1), v23 + 1, 1);
          v7 = v28;
          v13 = v25;
          result = v33;
        }

        result[2] = v23 + 1;
        v24 = &result[2 * v23];
        v24[4] = v20;
        v24[5] = v21;
        ++v7;
        if (v19 != v31)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t WorkServiceSuggestionsService.fetchBooks(with:configuration:)(uint64_t a1)
{
  *(v2 + 88) = v1;
  v4 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  v5 = sub_1B40F4();
  *(v2 + 120) = v5;
  *(v2 + 128) = *(v5 - 8);
  *(v2 + 136) = swift_task_alloc();
  v6 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v6;
  *(v2 + 80) = *(a1 + 64);
  v7 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;

  return _swift_task_switch(sub_995A4, 0, 0);
}

uint64_t sub_995A4(uint64_t a1)
{
  v2 = *(v1 + 136);
  sub_1B40E4();
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1 + 16;
  sub_1B4444();
  v5 = *(v1 + 112);

  v6 = sub_9A580(v5);
  v7 = v6[2];
  if (v7)
  {
    v24 = v6;
    sub_375F8(0, v7, 0);
    result = v24;
    if (!*(v24 + 16))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v9 = 0;
    v10 = _swiftEmptyArrayStorage[2];
    v11 = (v10 << 6) + 88;
    v12 = (v24 + 40);
    while (1)
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      v25 = *v27;
      HIBYTE(v25) = v27[3];
      v26 = *v28;
      HIBYTE(v26) = v28[3];
      v15 = _swiftEmptyArrayStorage[3];
      if (v10 >= v15 >> 1)
      {
        sub_375F8((v15 > 1), v10 + 1, 1);
        result = v24;
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v16 = (_swiftEmptyArrayStorage + v11);
      *(v16 - 7) = v13;
      *(v16 - 48) = v3;
      *(v16 - 47) = v25;
      *(v16 - 11) = *&v27[3];
      *(v16 - 5) = 0;
      *(v16 - 32) = -1;
      *(v16 - 7) = *&v28[3];
      *(v16 - 31) = v26;
      *(v16 - 1) = 0;
      *(v16 - 3) = _swiftEmptyArrayStorage;
      *(v16 - 2) = 0;
      *v16 = v14;
      if (v7 - 1 == v9)
      {
        break;
      }

      ++v9;
      v11 += 64;
      v12 += 2;
      ++v10;
      if (v9 >= *(result + 16))
      {
        goto LABEL_14;
      }
    }

    v18 = *(v1 + 104);
    v17 = *(v1 + 112);
    v19 = *(v1 + 96);

    (*(v18 + 8))(v17, v19);
  }

  else
  {
    v21 = *(v1 + 104);
    v20 = *(v1 + 112);
    v22 = *(v1 + 96);

    (*(v21 + 8))(v20, v22);
  }

  (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

  v23 = *(v1 + 8);

  return v23(_swiftEmptyArrayStorage);
}

uint64_t sub_998E8@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_1B45D4();
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4414();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  if (a1[38])
  {
    v40 = a2;
    v41 = a3;
    v47 = v9;
    v42 = v3;
    v15 = v14;
    v16 = &v37 - v13;

    v44 = v16;
    sub_1B43F4();

    v43 = v15;
    sub_1B43F4();
    if (qword_228310 != -1)
    {
      swift_once();
    }

    v39 = qword_22E358;
    LODWORD(v38) = sub_1B4D84();
    sub_2B0C(&qword_22A048, &unk_1BFC60);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C00E0;
    sub_1B40F4();
    sub_85D3C();
    v18 = sub_1B5594();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    v21 = sub_76888();
    *(v17 + 64) = v21;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B51F4();
    v22 = v45;
    v23 = v46;
    *(v17 + 96) = &type metadata for String;
    *(v17 + 104) = v21;
    *(v17 + 72) = v22;
    *(v17 + 80) = v23;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B51F4();
    v24 = v45;
    v25 = v46;
    *(v17 + 136) = &type metadata for String;
    *(v17 + 144) = v21;
    *(v17 + 112) = v24;
    *(v17 + 120) = v25;
    sub_1B4614("Running on graph with request ID %{public}@ for output %{public}@ score %{public}@", 82, 2, &dword_0, v39, v38, v17);

    sub_99D20(v40, v47);
    v26 = sub_1B40D4();
    v39 = v27;
    v40 = v26;
    v37 = off_22EE30;
    v38 = qword_22EE28;
    sub_2B0C(&qword_229440, &qword_1BC4E0);
    v28 = *(v11 + 72);
    v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BFC80;
    v31 = v30 + v29;
    v32 = *(v11 + 16);
    v33 = v43;
    v32(v31, v43, v10);
    v34 = v44;
    v32(v31 + v28, v44, v10);

    sub_40F30(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1B45A4();
    v35 = *(v11 + 8);
    v35(v33, v10);
    return (v35)(v34, v10);
  }

  else
  {
    sub_9AE08();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_99D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4824();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v59[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2B0C(&qword_22A518, &qword_1C0220);
  v9 = __chkstk_darwin(v8 - 8);
  v64 = &v59[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v65 = &v59[-v12];
  v13 = __chkstk_darwin(v11);
  v72 = &v59[-v14];
  v15 = __chkstk_darwin(v13);
  v69 = &v59[-v16];
  __chkstk_darwin(v15);
  v18 = &v59[-v17];
  v19 = sub_1B4414();
  v20 = __chkstk_darwin(v19 - 8);
  v62 = &v59[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v79 = &v59[-v23];
  v24 = __chkstk_darwin(v22);
  v70 = &v59[-v25];
  v26 = __chkstk_darwin(v24);
  v75 = &v59[-v27];
  __chkstk_darwin(v26);
  v74 = *(a1 + 32);
  v68 = *(a1 + 33);
  v71 = *(a1 + 40);
  v60 = *(a1 + 48);
  v28 = *(a1 + 64);
  v61 = *(a1 + 56);
  v63 = v28;
  v80 = a2;
  sub_1B45C4();
  sub_1B43F4();
  sub_2B0C(&qword_22ACE8, &qword_1C23D8);
  v29 = swift_allocObject();
  v81 = xmmword_1BCA80;
  *(v29 + 16) = xmmword_1BCA80;
  sub_1B4804();
  v30 = sub_1B47D4();
  v32 = v31;
  v33 = *(v5 + 8);
  v76 = v5 + 8;
  v77 = v4;
  v73 = v33;
  result = v33(v7, v4);
  if (v32 >> 60 == 15)
  {
    goto LABEL_12;
  }

  *(v29 + 32) = v30;
  *(v29 + 40) = v32;
  *v18 = v29;
  v35 = enum case for Feature.bytesList(_:);
  v36 = sub_1B4594();
  v37 = *(v36 - 8);
  v39 = (v37 + 104);
  v38 = *(v37 + 104);
  v66 = v35;
  v78 = v38;
  v38(v18, v35, v36);
  v41 = *(v37 + 56);
  v40 = v37 + 56;
  v67 = v41;
  v41(v18, 0, 1, v36);
  sub_1B45F4();
  sub_1B43F4();
  v42 = swift_allocObject();
  *(v42 + 16) = v81;
  sub_1B4804();
  v43 = sub_1B47D4();
  v45 = v44;

  result = v73(v7, v77);
  if (v45 >> 60 != 15)
  {
    *(v42 + 32) = v43;
    *(v42 + 40) = v45;
    v46 = v69;
    *v69 = v42;
    v47 = v78;
    v78(v46, v66, v36);
    v48 = v67;
    v67(v46, 0, 1, v36);
    sub_1B45F4();
    sub_1B43F4();
    v49 = v39;
    v50 = sub_2B0C(&qword_229460, &qword_1C23E0);
    v51 = swift_allocObject();
    *(v51 + 16) = v81;
    *(v51 + 32) = v68;
    v52 = v72;
    *v72 = v51;
    v53 = enum case for Feature.int32List(_:);
    v47(v52, enum case for Feature.int32List(_:), v36);
    v76 = v40;
    v48(v52, 0, 1, v36);
    sub_1B45F4();
    sub_1B43F4();
    v77 = v50;
    result = swift_allocObject();
    *(result + 16) = v81;
    if (v71 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v71 <= 0x7FFFFFFF)
    {
      v54 = v47;
      *(result + 32) = v71;
      v55 = v65;
      *v65 = result;
      v54(v55, v53, v36);
      v48(v55, 0, 1, v36);
      sub_1B45F4();
      sub_1B43F4();
      v56 = swift_allocObject();
      *(v56 + 16) = v81;
      *(v56 + 32) = v60;
      v57 = v54;
      v58 = v64;
      *v64 = v56;
      v74 = v53;
      v75 = v49;
      v57(v58, v53, v36);
      v48(v58, 0, 1, v36);
      sub_1B45F4();
      sub_1B43F4();
      sub_7EC1C(v61);
      sub_1B4574();
      v48(v55, 0, 1, v36);
      sub_1B45F4();
      sub_1B43F4();
      result = swift_allocObject();
      *(result + 16) = v81;
      if (v63 >= 0xFFFFFFFF80000000)
      {
        if (v63 <= 0x7FFFFFFF)
        {
          *(result + 32) = v63;
          *v55 = result;
          v78(v55, v74, v36);
          v48(v55, 0, 1, v36);
          return sub_1B45F4();
        }

        goto LABEL_11;
      }

LABEL_10:
      __break(1u);
LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_9A580(uint64_t a1)
{
  v2 = sub_1B4414();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = __chkstk_darwin(v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v42 - v6;
  v49 = sub_2B0C(&qword_22A4D8, &unk_1C5FC0);
  v50 = a1;
  sub_1B4454();
  memcpy(v52, v51, 0x1B0uLL);
  v8 = v52[35];
  v9 = v52[36];
  v10 = v52[37];
  v11 = v52[38];
  v12 = v52[39];
  v13 = v52[40];
  sub_9ADC4(v52[35], v52[36], v52[37], v52[38], v52[39], v52[40]);
  sub_726C8(v52);
  if (v11)
  {

    v45 = v7;
    sub_1B43F4();

    sub_1B43F4();
    sub_9AE5C(v8, v9, v10, v11, v12, v13);
    v14 = sub_9AEA0();
    v15 = v48;
    v16 = sub_1B4514();
    v17 = v15;
    if (v15)
    {
      if (qword_228310 == -1)
      {
LABEL_4:
        v18 = qword_22E358;
        v19 = sub_1B4D94();
        v8 = _swiftEmptyArrayStorage;
        sub_1B4614("Unable to extract books from output", 35, 2, &dword_0, v18, v19, _swiftEmptyArrayStorage);

        v20 = v45;
LABEL_30:
        v39 = v47;
        v40 = *(v46 + 8);
        v40(v5, v47);
        v40(v20, v39);
        return v8;
      }
    }

    else
    {
      v21 = v16;
      v48 = v14;
      v22 = *(v16 + 16);
      if (!v22)
      {

        v24 = _swiftEmptyArrayStorage;
LABEL_14:
        v20 = v45;
        v27 = sub_1B4504();
        if (v17)
        {

          if (qword_228310 != -1)
          {
            swift_once();
          }

          v28 = qword_22E358;
          v29 = sub_1B4D94();
          v8 = _swiftEmptyArrayStorage;
          sub_1B4614("Unable to extract book scores from output", 41, 2, &dword_0, v28, v29, _swiftEmptyArrayStorage);
        }

        else
        {
          v30 = *(v27 + 16);
          if (v30)
          {
            v44 = v5;
            v50 = v27;
            v51[0] = _swiftEmptyArrayStorage;
            sub_37708(0, v30, 0);
            v31 = v50;
            v32 = v51[0];
            v33 = *(v51[0] + 16);
            v34 = 32;
            do
            {
              v35 = *(v31 + v34);
              v51[0] = v32;
              v36 = v32[3];
              if (v33 >= v36 >> 1)
              {
                sub_37708((v36 > 1), v33 + 1, 1);
                v31 = v50;
                v32 = v51[0];
              }

              v32[2] = v33 + 1;
              *&v32[v33 + 4] = v35;
              v34 += 4;
              ++v33;
              --v30;
            }

            while (v30);

            v5 = v44;
            v20 = v45;
          }

          else
          {

            v32 = _swiftEmptyArrayStorage;
          }

          if (v32[2] == v24[2])
          {
            v8 = sub_99278(v24, v32);
          }

          else
          {

            if (qword_228310 != -1)
            {
              swift_once();
            }

            v37 = qword_22E358;
            v38 = sub_1B4D94();
            v8 = _swiftEmptyArrayStorage;
            sub_1B4614("Mismatch on book count and scores", 33, 2, &dword_0, v37, v38, _swiftEmptyArrayStorage);
          }
        }

        goto LABEL_30;
      }

      v43 = 0;
      v44 = v5;
      v51[0] = _swiftEmptyArrayStorage;
      sub_3741C(0, v22, 0);
      v23 = 32;
      v24 = v51[0];
      while (1)
      {
        v25 = *(v21 + v23);
        if (v25 < 0)
        {
          break;
        }

        v51[0] = v24;
        v5 = v24[2];
        v26 = v24[3];
        if (v5 >= v26 >> 1)
        {
          sub_3741C((v26 > 1), v5 + 1, 1);
          v24 = v51[0];
        }

        v24[2] = v5 + 1;
        v24[v5 + 4] = v25;
        v23 += 8;
        if (!--v22)
        {

          v17 = v43;
          v5 = v44;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_4;
  }

  sub_9AE08();
  swift_allocError();
  swift_willThrow();
  return v8;
}

id FrameworkAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FrameworkAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_9AC14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_91B58;

  return WorkServiceSuggestionsService.fetchBooks(with:configuration:)(a1);
}

uint64_t sub_9ACDC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

void sub_9ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

unint64_t sub_9AE08()
{
  result = qword_22ACE0;
  if (!qword_22ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ACE0);
  }

  return result;
}

void sub_9AE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

unint64_t sub_9AEA0()
{
  result = qword_22A4F8;
  if (!qword_22A4F8)
  {
    sub_1CC1C(&qword_22A4D8, &unk_1C5FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A4F8);
  }

  return result;
}

unint64_t sub_9AF18()
{
  result = qword_22ACF0;
  if (!qword_22ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ACF0);
  }

  return result;
}

uint64_t sub_9AF6C(uint64_t a1, uint64_t (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a4 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v16;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_9B098@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_9B0C8(uint64_t a1)
{
  v2 = sub_9E638();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B104(uint64_t a1)
{
  v2 = sub_9E638();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B140(uint64_t a1)
{
  v2 = sub_9E68C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B17C(uint64_t a1)
{
  v2 = sub_9E68C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_9B1B8()
{
  v1 = *v0;
  v2 = 0x726F68747561;
  v3 = 0x6B6F6F4264656573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x707954616964656DLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x65726E6567;
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

uint64_t sub_9B298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_9F08C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_9B2CC(uint64_t a1)
{
  v2 = sub_9E440();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B308(uint64_t a1)
{
  v2 = sub_9E440();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B354(uint64_t a1)
{
  v2 = sub_9E590();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B390(uint64_t a1)
{
  v2 = sub_9E590();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B5604();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_9B44C(uint64_t a1)
{
  v2 = sub_9E5E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B488(uint64_t a1)
{
  v2 = sub_9E5E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B4C4(uint64_t a1)
{
  v2 = sub_9E53C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B500(uint64_t a1)
{
  v2 = sub_9E53C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B53C(uint64_t a1)
{
  v2 = sub_9E494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B578(uint64_t a1)
{
  v2 = sub_9E494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_9B5B4(uint64_t a1)
{
  v2 = sub_9E4E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9B5F0(uint64_t a1)
{
  v2 = sub_9E4E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ScorableAttributeType.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22ACF8, &qword_1C24A0);
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v38 - v4;
  v5 = sub_2B0C(&qword_22AD00, &qword_1C24A8);
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v45 = &v38 - v6;
  v7 = sub_2B0C(&qword_22AD08, &qword_1C24B0);
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v42 = &v38 - v8;
  v9 = sub_2B0C(&qword_22AD10, &qword_1C24B8);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v50 = &v38 - v10;
  v11 = sub_2B0C(&qword_22AD18, &qword_1C24C0);
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_2B0C(&qword_22AD20, &qword_1C24C8);
  v40 = *(v14 - 8);
  v41 = v14;
  __chkstk_darwin(v14);
  v39 = &v38 - v15;
  v16 = sub_2B0C(&qword_22AD28, &qword_1C24D0);
  v38 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v56 = sub_2B0C(&qword_22AD30, &qword_1C24D8);
  v19 = *(v56 - 8);
  __chkstk_darwin(v56);
  v20 = *v1;
  v21 = a1[3];
  v22 = a1;
  v24 = &v38 - v23;
  sub_2698(v22, v21);
  sub_9E440();
  sub_1B5884();
  v25 = v20 >> 6;
  if (v20 >> 6 > 1)
  {
    if (v25 == 3)
    {
      v65 = 6;
      sub_9E494();
      v29 = v53;
      v30 = v56;
      sub_1B5454();
      (*(v54 + 8))(v29, v55);
      return (*(v19 + 8))(v24, v30);
    }

    v32 = (v19 + 8);
    if (v20 > 129)
    {
      if (v20 == 130)
      {
        v63 = 4;
        sub_9E53C();
        v34 = v42;
        v35 = v56;
        sub_1B5454();
        v37 = v43;
        v36 = v44;
      }

      else
      {
        v64 = 5;
        sub_9E4E8();
        v34 = v45;
        v35 = v56;
        sub_1B5454();
        v37 = v46;
        v36 = v47;
      }
    }

    else
    {
      if (v20 == 128)
      {
        v57[0] = 0;
        sub_9E68C();
        v33 = v56;
        sub_1B5454();
        (*(v38 + 8))(v18, v16);
        return (*v32)(v24, v33);
      }

      v58 = 1;
      sub_9E638();
      v34 = v39;
      v35 = v56;
      sub_1B5454();
      v37 = v40;
      v36 = v41;
    }

    (*(v37 + 8))(v34, v36);
    return (*v32)(v24, v35);
  }

  else
  {
    if (v25)
    {
      v62 = 3;
      sub_9E590();
      v13 = v50;
      v26 = v56;
      sub_1B5454();
      v61 = v20 & 0x3F;
      sub_63284();
      v27 = v52;
      sub_1B5544();
      v28 = v51;
    }

    else
    {
      v60 = 2;
      sub_9E5E4();
      v26 = v56;
      sub_1B5454();
      v59 = v20;
      sub_63284();
      v27 = v49;
      sub_1B5544();
      v28 = v48;
    }

    (*(v28 + 8))(v13, v27);
    return (*(v19 + 8))(v24, v26);
  }
}

void ScorableAttributeType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v3 == 3)
    {
      v5 = 6;
    }

    else if (*v1 > 0x81u)
    {
      if (v2 == 130)
      {
        v5 = 4;
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      v5 = v2 != 128;
    }

    sub_1B5804(v5);
  }

  else
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    sub_1B5804(v4);
    sub_1B4884();
  }
}

Swift::Int ScorableAttributeType.hashValue.getter()
{
  v2[79] = *v0;
  sub_1B57F4();
  ScorableAttributeType.hash(into:)(v2);
  return sub_1B5844();
}

uint64_t ScorableAttributeType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v3 = sub_2B0C(&qword_22AD78, &qword_1C24E0);
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin(v3);
  v64 = &v44 - v4;
  v5 = sub_2B0C(&qword_22AD80, &qword_1C24E8);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v61 = &v44 - v6;
  v55 = sub_2B0C(&qword_22AD88, &qword_1C24F0);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v60 = &v44 - v7;
  v50 = sub_2B0C(&qword_22AD90, &qword_1C24F8);
  v54 = *(v50 - 8);
  __chkstk_darwin(v50);
  v63 = &v44 - v8;
  v9 = sub_2B0C(&qword_22AD98, &qword_1C2500);
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v62 = &v44 - v10;
  v11 = sub_2B0C(&qword_22ADA0, &qword_1C2508);
  v12 = *(v11 - 8);
  v48 = v11;
  v49 = v12;
  __chkstk_darwin(v11);
  v14 = &v44 - v13;
  v15 = sub_2B0C(&qword_22ADA8, &qword_1C2510);
  v47 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44 - v16;
  v18 = sub_2B0C(&qword_22ADB0, &qword_1C2518);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v22 = a1[3];
  v66 = a1;
  sub_2698(a1, v22);
  sub_9E440();
  v23 = v67;
  sub_1B5864();
  if (v23)
  {
    goto LABEL_9;
  }

  v45 = v15;
  v46 = v14;
  v24 = v62;
  v25 = v63;
  v67 = v19;
  v26 = v64;
  v27 = v65;
  v28 = sub_1B5444();
  if (*(v28 + 16) != 1 || (v29 = *(v28 + 32), v29 == 7))
  {
    v30 = sub_1B5114();
    swift_allocError();
    v31 = v18;
    v33 = v32;
    sub_2B0C(&qword_22ADB8, &qword_1C2520);
    *v33 = &type metadata for ScorableAttributeType;
    sub_1B5314();
    sub_1B50E4();
    (*(*(v30 - 8) + 104))(v33, enum case for DecodingError.typeMismatch(_:), v30);
    swift_willThrow();
    (*(v67 + 8))(v21, v31);
    swift_unknownObjectRelease();
LABEL_9:
    v43 = v66;
    return sub_2BF8(v43);
  }

  if (*(v28 + 32) <= 2u)
  {
    if (*(v28 + 32))
    {
      if (v29 == 1)
      {
        v69 = 1;
        sub_9E638();
        v35 = v46;
        sub_1B5304();
        (*(v49 + 8))(v35, v48);
        (*(v67 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v42 = -127;
      }

      else
      {
        v71 = 2;
        sub_9E5E4();
        v37 = v24;
        sub_1B5304();
        sub_62FFC();
        v39 = v52;
        sub_1B5404();
        v40 = v67;
        (*(v51 + 8))(v37, v39);
        (*(v40 + 8))(v21, v18);
        swift_unknownObjectRelease();
        v42 = v70;
      }

      v43 = v66;
    }

    else
    {
      v68[0] = 0;
      sub_9E68C();
      sub_1B5304();
      (*(v47 + 8))(v17, v45);
      (*(v67 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v42 = 0x80;
      v43 = v66;
    }
  }

  else if (*(v28 + 32) > 4u)
  {
    if (v29 == 5)
    {
      v75 = 5;
      sub_9E4E8();
      v36 = v61;
      sub_1B5304();
      (*(v56 + 8))(v36, v57);
      (*(v67 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v42 = -125;
    }

    else
    {
      v76 = 6;
      sub_9E494();
      sub_1B5304();
      (*(v58 + 8))(v26, v59);
      (*(v67 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v42 = -64;
    }

    v43 = v66;
  }

  else if (v29 == 3)
  {
    v73 = 3;
    sub_9E590();
    sub_1B5304();
    sub_62FFC();
    v41 = v50;
    sub_1B5404();
    (*(v54 + 8))(v25, v41);
    (*(v67 + 8))(v21, v18);
    swift_unknownObjectRelease();
    v42 = v72 | 0x40;
    v27 = v65;
    v43 = v66;
  }

  else
  {
    v74 = 4;
    sub_9E53C();
    v38 = v60;
    sub_1B5304();
    (*(v53 + 8))(v38, v55);
    (*(v67 + 8))(v21, v18);
    swift_unknownObjectRelease();
    v42 = -126;
    v43 = v66;
  }

  *v27 = v42;
  return sub_2BF8(v43);
}

uint64_t sub_9CA4C()
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

uint64_t sub_9CA80()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
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

uint64_t sub_9CAB4()
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

uint64_t sub_9CAE8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
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

uint64_t sub_9CB1C()
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

uint64_t sub_9CB50()
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

Swift::Int sub_9CB88(uint64_t a1)
{
  v3[79] = *v1;
  sub_1B57F4();
  ScorableAttributeType.hash(into:)(v3);
  return sub_1B5844();
}

uint64_t sub_9CC20(uint64_t a1)
{
  sub_1B5834(*v1);
  sub_1B4884();
}

Swift::Int sub_9CCB0()
{
  v1 = *v0;
  sub_1B57F4();
  sub_1B5834(v1);
  sub_1B4884();

  return sub_1B5844();
}

Swift::Int sub_9CD50(uint64_t a1)
{
  v2 = *v1;
  sub_1B57F4();
  sub_1B5834(v2);
  sub_1B4884();

  return sub_1B5844();
}

void ScorableAttribute.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, 0x231uLL);
  v3 = sub_9E6E0(__dst);
  v4 = sub_9E6EC(__dst);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = *v4;
      v8 = 3;
    }

    else
    {
      if (v3 != 4)
      {
        sub_1B5804(5uLL);
        goto LABEL_14;
      }

      v7 = *v4;
      v8 = 4;
    }

    sub_1B5804(v8);
    sub_1B5834(v7);
LABEL_14:
    sub_1B4884();

    return;
  }

  if (v3)
  {
    v5 = *v4;
    if (v3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    sub_1B5804(v6);
    sub_1B5834(v5);
  }

  else
  {
    v9 = v4;
    sub_1B5804(0);
    memcpy(v10, v9, sizeof(v10));
    SeedBook.hash(into:)(a1);
  }
}

Swift::Int ScorableAttribute.hashValue.getter()
{
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v1);
  return sub_1B5844();
}

Swift::Int sub_9CF94(uint64_t a1)
{
  sub_1B57F4();
  ScorableAttribute.hash(into:)(v2);
  return sub_1B5844();
}

void *sub_9CFD0(unsigned __int8 *a1)
{
  v2 = *a1;
  memcpy(__dst, v1, sizeof(__dst));
  v3 = v2 >> 6;
  if (v2 >> 6 <= 1)
  {
    if (v3)
    {
      *&v84[32] = *(v1 + 40);
      *&v84[48] = *(v1 + 56);
      *&v84[64] = *(v1 + 72);
      *&v84[80] = *(v1 + 88);
      *v84 = *(v1 + 8);
      *&v84[16] = *(v1 + 24);
      v86[2] = *(v1 + 40);
      v86[3] = *(v1 + 56);
      v86[4] = *(v1 + 72);
      *&v86[5] = *(v1 + 88);
      v86[0] = *(v1 + 8);
      v86[1] = *(v1 + 24);
      LOBYTE(v82[0]) = v2 & 0x3F;
      sub_5EDD8(v84, __src);
      v43 = Book.Metadata.genreIDs(at:)(v82);
      __src[2] = v86[2];
      __src[3] = v86[3];
      __src[4] = v86[4];
      *&__src[5] = *&v86[5];
      __src[0] = v86[0];
      __src[1] = v86[1];
      sub_85554(__src);
      sub_4299C(__dst, v86);
      v44 = sub_15C748(v43, __dst);
      sub_2601C(__dst);
      goto LABEL_78;
    }

    v89 = *(v1 + 40);
    v90 = *(v1 + 56);
    v91 = *(v1 + 72);
    v92 = *(v1 + 88);
    v87 = *(v1 + 8);
    v88 = *(v1 + 24);
    v86[2] = *(v1 + 40);
    v86[3] = *(v1 + 56);
    v86[4] = *(v1 + 72);
    *&v86[5] = *(v1 + 88);
    v86[0] = *(v1 + 8);
    v86[1] = *(v1 + 24);
    LOBYTE(__src[0]) = v2;
    sub_5EDD8(&v87, v84);
    v4 = Book.Metadata.genreIDs(at:)(__src);
    v78 = v86[2];
    v79 = v86[3];
    v80 = v86[4];
    v81 = *&v86[5];
    v76 = v86[0];
    v77 = v86[1];
    sub_85554(&v76);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & v4[7];
    v8 = (v5 + 63) >> 6;

    for (i = 0; v7; result = sub_5EE90(v84))
    {
      v11 = i;
LABEL_11:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *&__src[0] = *(v4[6] + ((v11 << 9) | (8 * v12)));
      sub_A1064(__src);
      memcpy(v86, __src, 0x231uLL);
      sub_1127B0(v82, v86);
      memcpy(v84, v82, sizeof(v84));
    }

    while (1)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return _swiftEmptySetSingleton;
      }

      v7 = v4[v11 + 7];
      ++i;
      if (v7)
      {
        i = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v3 != 3)
  {
    if (v2 > 129)
    {
      sub_2B0C(&qword_2294E8, &unk_1BC570);
      if (v2 == 130)
      {
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1BCA80;
        LOBYTE(v86[0]) = __dst[8] & 1;
        sub_A1094(v86);
        memcpy((v58 + 32), v86, 0x231uLL);
        v44 = sub_9F2DC(v58);
        swift_setDeallocating();
        sub_5EE90(v58 + 32);
      }

      else
      {
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1BCA80;
        memcpy(v86, v1, 0x231uLL);
        sub_A10C8(v86);
        memcpy((v60 + 32), v86, 0x231uLL);
        sub_4299C(__dst, v84);
        v44 = sub_9F2DC(v60);
        swift_setDeallocating();
        sub_5EE90(v60 + 32);
      }

      swift_deallocClassInstance();
      return v44;
    }

    if (v2 != 128)
    {
      v59 = *&__dst[24];
      sub_4299C(__dst, v86);
      v44 = sub_15C700(v59, __dst);
      sub_2601C(__dst);
      return v44;
    }

    v45 = *&__dst[24];
    *&v87 = _swiftEmptySetSingleton;
    v46 = 1 << *(*&__dst[24] + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(*&__dst[24] + 56);
    v49 = (v46 + 63) >> 6;

    for (j = 0; v48; result = sub_5EE90(v84))
    {
      v51 = j;
LABEL_65:
      v52 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      *&__src[0] = *(*(v45 + 48) + ((v51 << 9) | (8 * v52)));
      sub_A1034(__src);
      memcpy(v86, __src, 0x231uLL);
      sub_1127B0(v82, v86);
      memcpy(v84, v82, sizeof(v84));
    }

    while (1)
    {
      v51 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v51 >= v49)
      {

        return v87;
      }

      v48 = *(v45 + 56 + 8 * v51);
      ++j;
      if (v48)
      {
        j = v51;
        goto LABEL_65;
      }
    }

LABEL_85:
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = 0;
  v15 = *(v1 + 8);
  v16 = *(v1 + 56);
  v82[2] = *(v1 + 40);
  v82[3] = v16;
  v82[4] = *(v1 + 72);
  v17 = *(v1 + 24);
  v82[0] = v15;
  if (v15)
  {
    v18 = 0x6F6F626F69647561;
  }

  else
  {
    v18 = 0x6B6F6F6265;
  }

  if (LOBYTE(v82[0]))
  {
    v19 = 0xE90000000000006BLL;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v62 = v15;
  v61 = v15 ^ 1;
  v20 = _swiftEmptyArrayStorage;
  *&v82[5] = *(v1 + 88);
  v82[1] = v17;
  v63 = v19;
  v64 = v18;
  while (1)
  {
    if (*(&off_213160 + v14 + 32))
    {
      v21 = 0x6F6F626F69647561;
    }

    else
    {
      v21 = 0x6B6F6F6265;
    }

    if (*(&off_213160 + v14 + 32))
    {
      v22 = 0xE90000000000006BLL;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    if (v18 == v21 && v19 == v22)
    {

LABEL_36:
      v32 = __dst[560];
      v70 = *&__dst[552];
      v71 = v13;
      memcpy(__src, &__dst[168], 0x179uLL);
      v78 = *&__dst[128];
      v79 = *&__dst[144];
      *&v80 = *&__dst[160];
      v76 = *&__dst[96];
      v77 = *&__dst[112];
      v69 = *__dst;
      v30 = *&v82[5];
      v68 = *(&v82[3] + 8);
      v67 = BYTE8(v82[4]);
      v28 = *(&v82[1] + 1);
      v29 = v82[2];
      v65 = *(v82 + 8);
      v66 = *(&v82[2] + 8);
      sub_4299C(__dst, v86);
      v31 = v62;
      goto LABEL_37;
    }

    v24 = sub_1B5604();

    if (v24)
    {
      goto LABEL_36;
    }

    if (v82[2])
    {
      goto LABEL_42;
    }

    v69 = *(&v82[1] + 1);
    v88 = *&__dst[112];
    v89 = *&__dst[128];
    v90 = *&__dst[144];
    *&v91 = *&__dst[160];
    v87 = *&__dst[96];
    v25 = *__dst;
    v26 = *&__dst[552];
    v27 = sub_1B5604();
    sub_43050(&v87, v86, &qword_22A4E0, &unk_1C01D0);
    v70 = v26;

    v71 = v13;
    if (v27)
    {
      v28 = *(&v82[1] + 1);
      v29 = v82[2];
      LOBYTE(v75[0]) = v82[2];
      v68 = *(&v82[3] + 8);
      v65 = *(v82 + 8);
      v66 = *(&v82[2] + 8);
      v67 = BYTE8(v82[4]);
      v30 = *&v82[5];
      v31 = v82[0];
      sub_5EDD8(v82, v86);
    }

    else
    {
      if (BYTE8(v82[3]) == 2)
      {
        v66 = *(&v82[2] + 8);
        v67 = BYTE8(v82[4]);
        v68 = *(&v82[3] + 8);
        v28 = v25;
      }

      else
      {
        v28 = v25;
        v67 = 0;
        if (BYTE8(v82[4]))
        {
          v66 = 0u;
          v68 = xmmword_1BCA90;
        }

        else
        {
          *&v41 = *(&v82[2] + 1);
          *(&v41 + 1) = *&v82[4];
          *(&v42 + 1) = *&v82[3];
          *&v42 = BYTE8(v82[3]) & 1;
          v68 = v42;
          v66 = v41;
        }
      }

      v65 = *(v82 + 8);
      v94[0] = *(v82 + 8);
      v30 = *&v82[5];
      v93 = *&v82[5];
      LOBYTE(v75[0]) = 0;
      sub_43050(v94 + 8, v86, &qword_2292C8, &unk_1BCB00);
      sub_43050(v94, v86, &qword_22A8B0, &unk_1C09F8);
      sub_43050(&v93, v86, &qword_22AEC0, &qword_1C30E0);
      v29 = v75[0];
      v31 = v61;
    }

    memcpy(v86, &__dst[168], 0x179uLL);
    *&v84[16] = v88;
    *&v84[32] = v89;
    *&v84[48] = v90;
    *&v84[64] = v91;
    *v84 = v87;
    if (v90 >> 1 == 0xFFFFFFFF)
    {
      v32 = 12;
    }

    else
    {
      v72 = v87;
      sub_12700C(v74);
      v32 = v74[0];
    }

    v78 = *&v84[32];
    v79 = *&v84[48];
    *&v80 = *&v84[64];
    v76 = *v84;
    v77 = *&v84[16];
    memcpy(__src, v86, 0x179uLL);
LABEL_37:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_33128(0, *(v20 + 2) + 1, 1, v20);
    }

    v34 = *(v20 + 2);
    v33 = *(v20 + 3);
    if (v34 >= v33 >> 1)
    {
      v20 = sub_33128((v33 > 1), v34 + 1, 1, v20);
    }

    *&v84[16] = v77;
    *&v84[32] = v78;
    *&v84[48] = v79;
    *&v84[64] = v80;
    *v84 = v76;
    memcpy(v86, __src, 0x179uLL);
    *(v20 + 2) = v34 + 1;
    v35 = &v20[568 * v34];
    *(v35 + 4) = v69;
    v35[40] = v31 & 1;
    *(v35 + 41) = v72;
    *(v35 + 11) = *(&v72 + 3);
    *(v35 + 3) = v65;
    *(v35 + 8) = v28;
    v35[72] = v29 & 1;
    v36 = *(v75 + 3);
    *(v35 + 73) = v75[0];
    *(v35 + 19) = v36;
    *(v35 + 5) = v66;
    *(v35 + 6) = v68;
    v35[112] = v67;
    v37 = *&v74[3];
    *(v35 + 113) = *v74;
    *(v35 + 29) = v37;
    *(v35 + 15) = v30;
    *(v35 + 8) = *v84;
    v38 = *&v84[16];
    v39 = *&v84[32];
    v40 = *&v84[48];
    *(v35 + 24) = *&v84[64];
    *(v35 + 10) = v39;
    *(v35 + 11) = v40;
    *(v35 + 9) = v38;
    memcpy(v35 + 200, v86, 0x179uLL);
    *(v35 + 577) = *v73;
    *(v35 + 145) = *&v73[3];
    v13 = v71;
    *(v35 + 73) = v70;
    v35[592] = v32;
    v19 = v63;
    v18 = v64;
LABEL_42:
    if (v13)
    {
      break;
    }

    v13 = 1;
    v14 = 1;
  }

  v53 = *(v20 + 2);
  if (v53)
  {
    sub_378CC(0, v53, 0);
    v54 = v53 - 1;
    for (k = 32; ; k += 568)
    {
      memcpy(v86, &v20[k], 0x231uLL);
      sub_4299C(v86, v84);
      v57 = _swiftEmptyArrayStorage[2];
      v56 = _swiftEmptyArrayStorage[3];
      if (v57 >= v56 >> 1)
      {
        sub_378CC((v56 > 1), v57 + 1, 1);
      }

      memcpy(v84, v86, sizeof(v84));
      sub_A10C8(v84);
      _swiftEmptyArrayStorage[2] = v57 + 1;
      memcpy(&_swiftEmptyArrayStorage[71 * v57 + 4], v84, 0x231uLL);
      if (!v54)
      {
        break;
      }

      --v54;
    }
  }

  v44 = sub_9DBC4(_swiftEmptyArrayStorage);
LABEL_78:

  return v44;
}

void *sub_9DBC4(uint64_t a1)
{
  result = _swiftEmptySetSingleton;
  v7 = _swiftEmptySetSingleton;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    do
    {
      memcpy(__dst, v4, 0x231uLL);
      sub_5EE34(__dst, v6);
      sub_1127B0(v5, __dst);
      memcpy(v6, v5, 0x231uLL);
      sub_5EE90(v6);
      v4 += 568;
      --v3;
    }

    while (v3);
    return v7;
  }

  return result;
}

uint64_t AttributeScorerType.score(attributeTypes:of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[2] = a1;
  v7 = *(a4 + 8);
  v8 = sub_9E770();
  return v7(sub_9E6FC, v10, a2, &type metadata for ScorableAttribute, v8, a3, a4);
}

uint64_t AttributeScorerType.score(attributeType:of:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  sub_2B0C(&qword_22ADC8, &qword_1C2528);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCA80;
  *(inited + 32) = v7;
  v9 = sub_9FADC(inited);
  swift_setDeallocating();
  v15 = v9;
  v10 = *(a4 + 8);
  v11 = sub_9E770();
  v12 = v10(sub_9E6FC, v14, a2, &type metadata for ScorableAttribute, v11, a3, a4);

  return v12;
}

uint64_t sub_9DDD4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a1 + 8) == 0;
    if (*(a1 + 8))
    {
      v3 = 0x6F6F626F69647561;
    }

    else
    {
      v3 = 0x6B6F6F6265;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE90000000000006BLL;
    }

    if (*(a2 + 8))
    {
      v5 = 0x6F6F626F69647561;
    }

    else
    {
      v5 = 0x6B6F6F6265;
    }

    if (*(a2 + 8))
    {
      v6 = 0xE90000000000006BLL;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_1B5604();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL _s20BooksPersonalization17ScorableAttributeO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x231uLL);
  memcpy(__src, v3, 0x231uLL);
  memcpy(v30, v4, 0x231uLL);
  memcpy(v31, v3, sizeof(v31));
  memcpy(v32, v4, 0x231uLL);
  v5 = sub_9E6E0(v32);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v12 = sub_9E6EC(v32);
      v8 = *v12;
      v9 = *(v12 + 8);
      memcpy(v27, __src, 0x231uLL);
      if (sub_9E6E0(v27) != 3)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v5 != 4)
      {
        v9 = *sub_9E6EC(v32);
        memcpy(v27, __src, 0x231uLL);
        if (sub_9E6E0(v27) != 5)
        {
          goto LABEL_34;
        }

        v14 = *sub_9E6EC(v27);
LABEL_19:
        if (v9)
        {
          v17 = 0x6F6F626F69647561;
        }

        else
        {
          v17 = 0x6B6F6F6265;
        }

        if (v9)
        {
          v18 = 0xE90000000000006BLL;
        }

        else
        {
          v18 = 0xE500000000000000;
        }

        if (v14)
        {
          v19 = 0x6F6F626F69647561;
        }

        else
        {
          v19 = 0x6B6F6F6265;
        }

        if (v14)
        {
          v20 = 0xE90000000000006BLL;
        }

        else
        {
          v20 = 0xE500000000000000;
        }

        if (v17 == v19 && v18 == v20)
        {

          sub_A10F4(v30);
        }

        else
        {
          v22 = sub_1B5604();

          sub_A10F4(v30);
          if ((v22 & 1) == 0)
          {
            return 0;
          }
        }

        return 1;
      }

      v7 = sub_9E6EC(v32);
      v8 = *v7;
      v9 = *(v7 + 8);
      memcpy(v27, __src, 0x231uLL);
      if (sub_9E6E0(v27) != 4)
      {
        goto LABEL_34;
      }
    }

    v13 = sub_9E6EC(v27);
    if (v8 != *v13)
    {
LABEL_35:
      sub_A10F4(v30);
      return 0;
    }

    v14 = *(v13 + 8);
    goto LABEL_19;
  }

  if (!v5)
  {
    v10 = sub_9E6EC(v32);
    memcpy(v27, __src, 0x231uLL);
    if (!sub_9E6E0(v27))
    {
      v23 = sub_9E6EC(v27);
      memcpy(v26, v10, 0x231uLL);
      memcpy(v25, v23, 0x231uLL);
      sub_5EE34(__src, v24);
      sub_5EE34(__dst, v24);
      sub_5EE34(__dst, v24);
      sub_5EE34(__src, v24);
      v16 = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v26, v25);
      sub_A10F4(v30);
      sub_5EE90(__src);
      sub_5EE90(__dst);
      return v16;
    }

    memcpy(v26, __dst, 0x231uLL);
    v11 = sub_9E6EC(v26);
    sub_4299C(v11, v25);
    goto LABEL_34;
  }

  if (v5 != 1)
  {
    v6 = *sub_9E6EC(v32);
    memcpy(v27, __src, 0x231uLL);
    if (sub_9E6E0(v27) == 2)
    {
      goto LABEL_16;
    }

LABEL_34:
    sub_5EE34(__src, v27);
    goto LABEL_35;
  }

  v6 = *sub_9E6EC(v32);
  memcpy(v27, __src, 0x231uLL);
  if (sub_9E6E0(v27) != 1)
  {
    goto LABEL_34;
  }

LABEL_16:
  v15 = *sub_9E6EC(v27);
  sub_A10F4(v30);
  return v6 == v15;
}

uint64_t _s20BooksPersonalization21ScorableAttributeTypeO2eeoiySbAC_ACtFZ_0(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  if (v2 >> 6 > 1)
  {
    if (v4 == 3)
    {
      if (v3 != 192)
      {
        return 0;
      }
    }

    else if (*a1 > 0x81u)
    {
      if (v2 == 130)
      {
        if (v3 != 130)
        {
          return 0;
        }
      }

      else if (v3 != 131)
      {
        return 0;
      }
    }

    else if (v2 == 128)
    {
      if (v3 != 128)
      {
        return 0;
      }
    }

    else if (v3 != 129)
    {
      return 0;
    }

    return 1;
  }

  if (!v4)
  {
    if (v3 <= 0x3F)
    {
      v5 = 0x656E4F6C6576656CLL;
      if (v2 != 1)
      {
        v5 = 0x6F77546C6576656CLL;
      }

      if (*a1)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0x73657661656CLL;
      }

      if (v2)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      goto LABEL_33;
    }

    return 0;
  }

  if ((v3 & 0xC0) != 0x40)
  {
    return 0;
  }

  v3 &= 0x3Fu;
  v9 = v2 & 0x3F;
  if (v9)
  {
    if (v9 == 1)
    {
      v6 = 0x656E4F6C6576656CLL;
    }

    else
    {
      v6 = 0x6F77546C6576656CLL;
    }

    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x73657661656CLL;
  }

LABEL_33:
  v10 = 0x656E4F6C6576656CLL;
  if (v3 != 1)
  {
    v10 = 0x6F77546C6576656CLL;
  }

  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x73657661656CLL;
  }

  if (v3)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE600000000000000;
  }

  if (v6 == v11 && v7 == v12)
  {

    return 1;
  }

  else
  {
    v13 = sub_1B5604();

    return v13 & 1;
  }
}

unint64_t sub_9E440()
{
  result = qword_22AD38;
  if (!qword_22AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD38);
  }

  return result;
}

unint64_t sub_9E494()
{
  result = qword_22AD40;
  if (!qword_22AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD40);
  }

  return result;
}

unint64_t sub_9E4E8()
{
  result = qword_22AD48;
  if (!qword_22AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD48);
  }

  return result;
}

unint64_t sub_9E53C()
{
  result = qword_22AD50;
  if (!qword_22AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD50);
  }

  return result;
}

unint64_t sub_9E590()
{
  result = qword_22AD58;
  if (!qword_22AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD58);
  }

  return result;
}

unint64_t sub_9E5E4()
{
  result = qword_22AD60;
  if (!qword_22AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD60);
  }

  return result;
}

unint64_t sub_9E638()
{
  result = qword_22AD68;
  if (!qword_22AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD68);
  }

  return result;
}

unint64_t sub_9E68C()
{
  result = qword_22AD70;
  if (!qword_22AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AD70);
  }

  return result;
}

uint64_t sub_9E6FC(void *__src)
{
  v2 = *(v1 + 16);
  memcpy(__dst, __src, 0x231uLL);
  v4[2] = __dst;
  return sub_9AF6C(_swiftEmptySetSingleton, sub_A0FE8, v4, v2);
}

unint64_t sub_9E770()
{
  result = qword_22ADC0;
  if (!qword_22ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADC0);
  }

  return result;
}

void *sub_9E7C4(uint64_t a1)
{
  v2 = sub_1B41C4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2B0C(&qword_22AEA0, &qword_1C30D0);
    v9 = sub_1B5054();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_A0FA4(&qword_22AEA8, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_1B4744();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_A0FA4(&qword_22AEB0, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_1B4784();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_9EABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AE98, &qword_1C30C8);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      sub_1B57F4();
      if (v6)
      {
        v7 = 0x6F6F626F69647561;
      }

      else
      {
        v7 = 0x6B6F6F6265;
      }

      if (v6)
      {
        v8 = 0xE90000000000006BLL;
      }

      else
      {
        v8 = 0xE500000000000000;
      }

      sub_1B4884();

      result = sub_1B5844();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v23 = v6;
        v15 = ~v10;
        do
        {
          if (*(*(v3 + 48) + v11))
          {
            v16 = 0x6F6F626F69647561;
          }

          else
          {
            v16 = 0x6B6F6F6265;
          }

          if (*(*(v3 + 48) + v11))
          {
            v17 = 0xE90000000000006BLL;
          }

          else
          {
            v17 = 0xE500000000000000;
          }

          if (v16 == v7 && v17 == v8)
          {

            goto LABEL_4;
          }

          v19 = sub_1B5604();

          if (v19)
          {
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
        LOBYTE(v6) = v23;
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_9ECC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_229260, &qword_1BC340);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1B57F4();

      sub_1B4884();
      result = sub_1B5844();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1B5604();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_9EE2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_2292D0, &qword_1BC390);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_1B57E4();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_9EF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AE90, &qword_1C30C0);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1B57F4();
      sub_1B5804(v10);
      result = sub_1B5844();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_9F08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D6AA0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D6AC0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B6F6F4264656573 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D6AE0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *sub_9F2DC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptySetSingleton;
  }

  v3 = v1;
  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  v4 = sub_1B5054();
  v5 = 0;
  v6 = v4 + 56;
  v46 = v2;
  v47 = v3 + 32;
  while (1)
  {
    memcpy(v56, (v47 + 568 * v5), 0x231uLL);
    sub_1B57F4();
    memcpy(v57, v56, 0x231uLL);
    v7 = sub_9E6E0(v57);
    if (v7 > 2)
    {
      if (v7 == 3)
      {
        v10 = *sub_9E6EC(v57);
        v11 = 3;
      }

      else
      {
        if (v7 != 4)
        {
          sub_9E6EC(v57);
          sub_1B5804(5uLL);
          goto LABEL_20;
        }

        v10 = *sub_9E6EC(v57);
        v11 = 4;
      }

      sub_1B5804(v11);
      sub_1B5834(v10);
LABEL_20:
      sub_1B4884();

      goto LABEL_21;
    }

    if (v7)
    {
      if (v7 == 1)
      {
        v8 = *sub_9E6EC(v57);
        v9 = 1;
      }

      else
      {
        v8 = *sub_9E6EC(v57);
        v9 = 2;
      }

      sub_1B5804(v9);
      sub_1B5834(v8);
    }

    else
    {
      v12 = sub_9E6EC(v57);
      memcpy(__dst, v56, 0x231uLL);
      v13 = sub_9E6EC(__dst);
      sub_1B5804(0);
      sub_1B5834(*v12);
      __src[2] = *(v12 + 40);
      __src[3] = *(v12 + 56);
      __src[4] = *(v12 + 72);
      *&__src[5] = *(v12 + 88);
      __src[0] = *(v12 + 8);
      __src[1] = *(v12 + 24);
      sub_4299C(v13, v55);
      Book.Metadata.hash(into:)(v51);
      if (*(v12 + 144) >> 1 == 0xFFFFFFFFLL)
      {
        sub_1B5814(0);
      }

      else
      {
        v43 = *(v12 + 144);
        __src[2] = *(v12 + 128);
        __src[3] = v43;
        *&__src[4] = *(v12 + 160);
        v44 = *(v12 + 96);
        __src[1] = *(v12 + 112);
        __src[0] = v44;
        *&v50[32] = __src[2];
        *&v50[48] = v43;
        *&v50[64] = *&__src[4];
        *&v50[16] = __src[1];
        *v50 = v44;
        sub_1B5814(1u);
        sub_42CD4(__src, v55);
        InternalAffinitySource.hash(into:)(v51);
        *&v55[32] = *&v50[32];
        *&v55[48] = *&v50[48];
        *&v55[64] = *&v50[64];
        *&v55[16] = *&v50[16];
        *v55 = *v50;
        sub_42D30(v55);
      }

      memcpy(v55, (v12 + 168), 0x179uLL);
      v2 = v46;
      if (sub_42D84(v55) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        memcpy(__src, (v12 + 168), 0x179uLL);
        sub_1B5814(1u);
        BookHistory.hash(into:)();
      }

      v45 = *(v12 + 560);
      sub_12CC70(v51, *(v12 + 552));
      if (v45 == 12)
      {
        sub_1B5814(0);
      }

      else
      {
        LOBYTE(__src[0]) = v45;
        sub_1B5814(1u);
        PositiveAffinitySource.hash(into:)(v51);
      }
    }

LABEL_21:
    v14 = sub_1B5844();
    v15 = ~(-1 << *(v4 + 32));
    v16 = v14 & v15;
    v17 = (v14 & v15) >> 6;
    v18 = *(v6 + 8 * v17);
    v19 = 1 << (v14 & v15);
    if ((v19 & v18) != 0)
    {
      while (1)
      {
        v21 = (*(v4 + 48) + 568 * v16);
        memcpy(__src, v21, 0x231uLL);
        memmove(__dst, v21, 0x231uLL);
        memcpy(v54, v56, sizeof(v54));
        memcpy(v55, __src, sizeof(v55));
        v22 = sub_9E6E0(v55);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            v29 = sub_9E6EC(v55);
            v25 = *v29;
            v26 = *(v29 + 8);
            memcpy(v51, v56, 0x231uLL);
            if (sub_9E6E0(v51) == 3)
            {
LABEL_37:
              v30 = sub_9E6EC(v51);
              if (v25 == *v30)
              {
                v31 = *(v30 + 8);
LABEL_43:
                if (v26)
                {
                  v32 = 0x6F6F626F69647561;
                }

                else
                {
                  v32 = 0x6B6F6F6265;
                }

                if (v26)
                {
                  v33 = 0xE90000000000006BLL;
                }

                else
                {
                  v33 = 0xE500000000000000;
                }

                if (v31)
                {
                  v34 = 0x6F6F626F69647561;
                }

                else
                {
                  v34 = 0x6B6F6F6265;
                }

                if (v31)
                {
                  v35 = 0xE90000000000006BLL;
                }

                else
                {
                  v35 = 0xE500000000000000;
                }

                if (v32 == v34 && v33 == v35)
                {

                  sub_A10F4(__dst);
LABEL_4:
                  v2 = v46;
                  goto LABEL_5;
                }

                v36 = sub_1B5604();

                sub_A10F4(__dst);
                if (v36)
                {
                  goto LABEL_4;
                }

                goto LABEL_24;
              }

              goto LABEL_61;
            }
          }

          else if (v22 == 4)
          {
            v24 = sub_9E6EC(v55);
            v25 = *v24;
            v26 = *(v24 + 8);
            memcpy(v51, v56, 0x231uLL);
            if (sub_9E6E0(v51) == 4)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v26 = *sub_9E6EC(v55);
            memcpy(v51, v56, 0x231uLL);
            if (sub_9E6E0(v51) == 5)
            {
              v31 = *sub_9E6EC(v51);
              goto LABEL_43;
            }
          }
        }

        else
        {
          if (!v22)
          {
            v27 = sub_9E6EC(v55);
            memcpy(v51, v56, 0x231uLL);
            if (!sub_9E6E0(v51))
            {
              v37 = sub_9E6EC(v51);
              memcpy(v50, v27, sizeof(v50));
              memcpy(v49, v37, 0x231uLL);
              sub_5EE34(v56, v48);
              sub_5EE34(__src, v48);
              sub_5EE34(v56, v48);
              sub_5EE34(__src, v48);
              v38 = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v50, v49);
              sub_A10F4(__dst);
              sub_5EE90(v56);
              sub_5EE90(__src);
              if (v38)
              {
                sub_5EE90(v56);
                goto LABEL_4;
              }

              goto LABEL_24;
            }

            sub_5EE34(v56, v50);
            v28 = __src;
            goto LABEL_60;
          }

          if (v22 == 1)
          {
            v23 = *sub_9E6EC(v55);
            memcpy(v51, v56, 0x231uLL);
            if (sub_9E6E0(v51) == 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v23 = *sub_9E6EC(v55);
            memcpy(v51, v56, 0x231uLL);
            if (sub_9E6E0(v51) == 2)
            {
LABEL_23:
              v20 = *sub_9E6EC(v51);
              sub_A10F4(__dst);
              if (v23 == v20)
              {
                goto LABEL_4;
              }

              goto LABEL_24;
            }
          }
        }

        v28 = v56;
LABEL_60:
        sub_5EE34(v28, v50);
LABEL_61:
        sub_A10F4(__dst);
LABEL_24:
        v16 = (v16 + 1) & v15;
        v17 = v16 >> 6;
        v19 = 1 << v16;
        if ((*(v6 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          v18 = *(v6 + 8 * v17);
          v2 = v46;
          break;
        }
      }
    }

    *(v6 + 8 * v17) = v18 | v19;
    result = memcpy((*(v4 + 48) + 568 * v16), v56, 0x231uLL);
    v40 = *(v4 + 16);
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      break;
    }

    *(v4 + 16) = v42;
LABEL_5:
    if (++v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_9FADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AEB8, &qword_1C30D8);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v29 = v1;
    v30 = a1 + 32;
    while (1)
    {
      v6 = *(v30 + v4);
      sub_1B57F4();
      v7 = v6 >> 6;
      if (v6 >> 6 > 1)
      {
        if (v7 == 3)
        {
          v8 = 6;
        }

        else if (v6 > 129)
        {
          v8 = v6 == 130 ? 4 : 5;
        }

        else
        {
          v8 = v6 != 128;
        }

        sub_1B5804(v8);
      }

      else
      {
        if (v7)
        {
          sub_1B5804(3uLL);
        }

        else
        {
          sub_1B5804(2uLL);
        }

        sub_1B4884();
      }

      result = sub_1B5844();
      v10 = -1 << *(v3 + 32);
      v11 = result & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        break;
      }

LABEL_59:
      *(v5 + 8 * v12) = v13 | v14;
      *(*(v3 + 48) + v11) = v6;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v28;
LABEL_4:
      if (++v4 == v29)
      {
        return v3;
      }
    }

    v15 = ~v10;
    while (1)
    {
      v16 = *(*(v3 + 48) + v11);
      v17 = v16 >> 6;
      if (v16 >> 6 > 1)
      {
        if (v17 == 3)
        {
          if (v6 == 192)
          {
            goto LABEL_4;
          }
        }

        else if (*(*(v3 + 48) + v11) > 0x81u)
        {
          if (v16 == 130)
          {
            if (v6 == 130)
            {
              goto LABEL_4;
            }
          }

          else if (v6 == 131)
          {
            goto LABEL_4;
          }
        }

        else if (v16 == 128)
        {
          if (v6 == 128)
          {
            goto LABEL_4;
          }
        }

        else if (v6 == 129)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (v17)
      {
        if (v7 != 1)
        {
          goto LABEL_16;
        }

        v20 = v16 & 0x3F;
        if (v20)
        {
          v22 = v20 == 1;
          v21 = v6 & 0x3F;
          v18 = 0xE800000000000000;
          if (v22)
          {
            v19 = 0x656E4F6C6576656CLL;
            if ((v6 & 0x3F) == 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v19 = 0x6F77546C6576656CLL;
            if ((v6 & 0x3F) == 0)
            {
LABEL_55:
              v24 = 0xE600000000000000;
              if (v19 == 0x73657661656CLL)
              {
                goto LABEL_56;
              }

              goto LABEL_57;
            }
          }
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x73657661656CLL;
          v21 = v6 & 0x3F;
          if ((v6 & 0x3F) == 0)
          {
            goto LABEL_55;
          }
        }

        v22 = v21 == 1;
      }

      else
      {
        if (v6 >= 0x40)
        {
          goto LABEL_16;
        }

        if (*(*(v3 + 48) + v11))
        {
          v18 = 0xE800000000000000;
          if (v16 == 1)
          {
            v19 = 0x656E4F6C6576656CLL;
            if (!v6)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v19 = 0x6F77546C6576656CLL;
            if (!v6)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          v18 = 0xE600000000000000;
          v19 = 0x73657661656CLL;
          if (!v6)
          {
            goto LABEL_55;
          }
        }

        v22 = v6 == 1;
      }

      if (v22)
      {
        v23 = 0x656E4F6C6576656CLL;
      }

      else
      {
        v23 = 0x6F77546C6576656CLL;
      }

      v24 = 0xE800000000000000;
      if (v19 == v23)
      {
LABEL_56:
        if (v18 == v24)
        {

          goto LABEL_4;
        }
      }

LABEL_57:
      v25 = sub_1B5604();

      if (v25)
      {
        goto LABEL_4;
      }

LABEL_16:
      v11 = (v11 + 1) & v15;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v13 & (1 << v11)) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_9FF3C()
{
  result = qword_22ADD0;
  if (!qword_22ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADD0);
  }

  return result;
}

unint64_t sub_9FF94()
{
  result = qword_22ADD8;
  if (!qword_22ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADD8);
  }

  return result;
}

unint64_t sub_9FFEC()
{
  result = qword_22ADE0;
  if (!qword_22ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADE0);
  }

  return result;
}

unint64_t sub_A0044()
{
  result = qword_22ADE8;
  if (!qword_22ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScorableAttributeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3D)
  {
    goto LABEL_17;
  }

  if (a2 + 195 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 195) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 195;
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

      return (*a1 | (v4 << 8)) - 195;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 195;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ScorableAttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 195 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 195) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3D)
  {
    v4 = 0;
  }

  if (a2 > 0x3C)
  {
    v5 = ((a2 - 61) >> 8) + 1;
    *result = a2 - 61;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_A01F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 & 3 | (4 * (v1 >> 6))) - 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_A0224(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (((a2 - 2) >> 2) << 6)) ^ 0x80;
  }

  return result;
}

uint64_t sub_A0274(uint64_t a1)
{
  if ((*(a1 + 48) >> 1) > 0x80000000)
  {
    return -(*(a1 + 48) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A02A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 561))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
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

void sub_A02F0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 552) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 560) = 0;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 561) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *a1 = 0;
      *(a1 + 8) = 2 * -a2;
      bzero((a1 + 16), 0x221uLL);
      return;
    }

    *(a1 + 561) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_A03D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  v3 = *(result + 40) & 1;
  v4 = *(result + 544) | (a2 << 61);
  *(result + 8) &= 1uLL;
  *(result + 40) = v3;
  *(result + 80) = v2;
  *(result + 544) = v4;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScorableAttribute.AuthorAndMediaType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_A0438(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_A0480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScorableAttributeType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScorableAttributeType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_A0698()
{
  result = qword_22ADF0;
  if (!qword_22ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADF0);
  }

  return result;
}

unint64_t sub_A06F0()
{
  result = qword_22ADF8;
  if (!qword_22ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADF8);
  }

  return result;
}

unint64_t sub_A0748()
{
  result = qword_22AE00;
  if (!qword_22AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE00);
  }

  return result;
}

unint64_t sub_A07A0()
{
  result = qword_22AE08;
  if (!qword_22AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE08);
  }

  return result;
}

unint64_t sub_A07F8()
{
  result = qword_22AE10;
  if (!qword_22AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE10);
  }

  return result;
}

unint64_t sub_A0850()
{
  result = qword_22AE18;
  if (!qword_22AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE18);
  }

  return result;
}

unint64_t sub_A08A8()
{
  result = qword_22AE20;
  if (!qword_22AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE20);
  }

  return result;
}

unint64_t sub_A0900()
{
  result = qword_22AE28;
  if (!qword_22AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE28);
  }

  return result;
}

unint64_t sub_A0958()
{
  result = qword_22AE30;
  if (!qword_22AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE30);
  }

  return result;
}

unint64_t sub_A09B0()
{
  result = qword_22AE38;
  if (!qword_22AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE38);
  }

  return result;
}

unint64_t sub_A0A08()
{
  result = qword_22AE40;
  if (!qword_22AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE40);
  }

  return result;
}

unint64_t sub_A0A60()
{
  result = qword_22AE48;
  if (!qword_22AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE48);
  }

  return result;
}

unint64_t sub_A0AB8()
{
  result = qword_22AE50;
  if (!qword_22AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE50);
  }

  return result;
}

unint64_t sub_A0B10()
{
  result = qword_22AE58;
  if (!qword_22AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE58);
  }

  return result;
}

unint64_t sub_A0B68()
{
  result = qword_22AE60;
  if (!qword_22AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE60);
  }

  return result;
}

unint64_t sub_A0BC0()
{
  result = qword_22AE68;
  if (!qword_22AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE68);
  }

  return result;
}

unint64_t sub_A0C18()
{
  result = qword_22AE70;
  if (!qword_22AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE70);
  }

  return result;
}

unint64_t sub_A0C70()
{
  result = qword_22AE78;
  if (!qword_22AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE78);
  }

  return result;
}

unint64_t sub_A0CC8()
{
  result = qword_22AE80;
  if (!qword_22AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE80);
  }

  return result;
}

Swift::Int sub_A0D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AE88, &qword_1C9130);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v8 = ~(-1 << *(v3 + 32));
      v9 = result & v8;
      v10 = (result & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (result & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x6F6F626F69647561;
              v14 = 0xE90000000000006BLL;
              if (!v6)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v14 = 0xE500000000000000;
              v13 = 0x646578696DLL;
              if (!v6)
              {
LABEL_20:
                v16 = 0xE500000000000000;
                if (v13 != 0x6B6F6F6265)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }
            }
          }

          else
          {
            v14 = 0xE500000000000000;
            v13 = 0x6B6F6F6265;
            if (!v6)
            {
              goto LABEL_20;
            }
          }

          if (v6 == 1)
          {
            v15 = 0x6F6F626F69647561;
          }

          else
          {
            v15 = 0x646578696DLL;
          }

          if (v6 == 1)
          {
            v16 = 0xE90000000000006BLL;
          }

          else
          {
            v16 = 0xE500000000000000;
          }

          if (v13 != v15)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v14 == v16)
          {

            goto LABEL_4;
          }

LABEL_22:
          v17 = sub_1B5604();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_A0FA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B41C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A0FE8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v2 = sub_9CFD0(&v4);
  return sub_493C8(v2);
}
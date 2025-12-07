uint64_t sub_24ED0F3D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 153) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24ED0F474(uint64_t a1)
{
  sub_24E60169C(a1, v6, &qword_27F235830, &qword_24F93B8C0);
  if (!v7)
  {
    sub_24E601704(v6, &qword_27F235830, &qword_24F93B8C0);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = sub_24F92B098();
    [v1 removeObjectForKey_];
    goto LABEL_6;
  }

  v3 = sub_24F92B098();

  v4 = sub_24F92B098();
  [v1 setObject:v3 forKey:v4];

LABEL_6:
  return sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
}

uint64_t sub_24ED0F5A8()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_24E601704(v7, &qword_27F2129B0, &unk_24F945320);
    return 0;
  }
}

uint64_t sub_24ED0F6A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92B098();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_24E601704(v11, &qword_27F2129B0, &unk_24F945320);
    goto LABEL_8;
  }

  sub_24E9421D0();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  sub_24F91F508();

  v5 = 0;
LABEL_9:
  v6 = sub_24F91F648();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_24ED0F7FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v6, &unk_27F22EC30, &qword_24F939880);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &unk_27F22EC30, &qword_24F939880);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F518();
    v14 = v13;
    v15 = sub_24F92B098();
    [v2 setDouble:v15 forKey:v14];

    sub_24E601704(a1, &unk_27F22EC30, &qword_24F939880);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_24ED0FA4C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224128, &qword_24F970418);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_24F91F9B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, v6, &qword_27F224128, &qword_24F970418);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F224128, &qword_24F970418);
    v11 = sub_24F92B098();
    [v2 removeObjectForKey_];

    return sub_24E601704(a1, &qword_27F224128, &qword_24F970418);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_24F91F988();
    v13 = sub_24F92B098();

    v14 = sub_24F92B098();
    [v2 setObject:v13 forKey:v14];

    sub_24E601704(a1, &qword_27F224128, &qword_24F970418);
    return (*(v8 + 8))(v10, v7);
  }
}

id NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_24E601704(v8, &qword_27F2129B0, &unk_24F945320);
  }

  return 0;
}

void sub_24ED0FDB8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_24E9421D0();
  v3 = sub_24F92C3E8();
  v4 = sub_24F92B098();
  [v2 setObject:v3 forKey:v4];
}

void NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.setter(uint64_t a1)
{
  v2 = v1;
  sub_24E9421D0();
  v3 = sub_24F92C3E8();
  v4 = sub_24F92B098();
  [v2 setObject:v3 forKey:v4];
}

void (*NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter();
  return sub_24ED0FF34;
}

void sub_24ED0FF34(uint64_t *a1)
{
  v1 = a1[1];
  sub_24E9421D0();
  v3 = sub_24F92C3E8();
  v2 = sub_24F92B098();
  [v1 setObject:v3 forKey:v2];
}

id sub_24ED0FFC8@<X0>(void *a1@<X8>)
{
  result = NSUserDefaults.launchCountSinceLastRequestedUserNotificationsAuthorization.getter();
  *a1 = result;
  return result;
}

uint64_t sub_24ED10010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E2F0, &qword_24F9983D8);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E2F8, &qword_24F9983E0);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  swift_storeEnumTagMultiPayload();
  sub_24ED10314();
  return sub_24F924E28();
}

uint64_t View.bentoBackdrop(cornerRadius:opacity:enabled:backDropWidth:backDropHeight:)(uint64_t a1, char a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, double a9, uint64_t a10)
{
  if (a2)
  {
    *&a1 = 24.0;
  }

  v12[0] = a1;
  *&v12[1] = a9;
  v13 = a3;
  v14 = a4;
  v15 = a5 & 1;
  v16 = a6;
  v17 = a7 & 1;
  return MEMORY[0x25304C420](v12, a8, &type metadata for BentoBackdropModifier, a10);
}

uint64_t sub_24ED10188(void *a1)
{
  sub_24F924038();
  sub_24ED101EC();
  return swift_getWitnessTable();
}

unint64_t sub_24ED101EC()
{
  result = qword_27F22E2E8;
  if (!qword_27F22E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E2E8);
  }

  return result;
}

uint64_t sub_24ED10240(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24ED10294(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_24ED10314()
{
  result = qword_27F22E300;
  if (!qword_27F22E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E2F8, &qword_24F9983E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E300);
  }

  return result;
}

unint64_t sub_24ED1037C()
{
  result = qword_27F22E308;
  if (!qword_27F22E308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E310, &qword_24F9983E8);
    sub_24ED10314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E308);
  }

  return result;
}

double sub_24ED10400()
{
  result = 0.0;
  xmmword_27F39C5F0 = xmmword_24F998330;
  return result;
}

double sub_24ED10414()
{
  *&result = 1054280253;
  xmmword_27F39C600 = xmmword_24F998340;
  return result;
}

uint64_t tryToFetch(artworkFor:into:on:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E643A9C(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E318, &qword_24F9983F0);
  if (swift_dynamicCast())
  {
    v8 = *(&v18 + 1);
    sub_24ED1080C(a1, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E348, &qword_24F998418);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_24E612C80(&v18, v21);
          swift_getObjectType();
          v9 = v22;
          v10 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          (*(v10 + 8))(v9, v10);
          (*(v8 + 8))();
          swift_unknownObjectRelease();

          return __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24E601704(v16, &qword_27F2171D0, &unk_24F980290);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_24E601704(&v18, &qword_27F22E340, &unk_24F9E1A30);
  }

  sub_24E643A9C(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E320, &qword_24F9983F8);
  if (swift_dynamicCast())
  {
    v11 = *(&v18 + 1);
    sub_24ED1080C(a1, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E338, &qword_24F998410);
      if (swift_dynamicCast())
      {
        if (*(&v19 + 1))
        {
          sub_24E612C80(&v18, v21);
          ObjectType = swift_getObjectType();
          (*(v11 + 8))(v21, a3, a4, ObjectType, v11);
LABEL_22:
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      sub_24E601704(v16, &qword_27F2171D0, &unk_24F980290);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    sub_24E601704(&v18, &qword_27F22E330, &qword_24F998408);
  }

  sub_24E643A9C(a2, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E328, &qword_24F998400);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v14 = *(&v18 + 1);
  sub_24ED1080C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E612C80(&v18, v21);
    v15 = swift_getObjectType();
    (*(v14 + 8))(v21, a3, v15, v14);
    goto LABEL_22;
  }

  swift_unknownObjectRelease();
  return sub_24E601704(&v18, &qword_27F2171D0, &unk_24F980290);
}

uint64_t sub_24ED1080C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2171D0, &unk_24F980290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t tryToCancelArtworkFetch(into:on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_24E643A9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E318, &qword_24F9983F0);
  if (swift_dynamicCast())
  {
    goto LABEL_2;
  }

  sub_24E643A9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E320, &qword_24F9983F8);
  if (swift_dynamicCast())
  {
    ObjectType = swift_getObjectType();
    (*(v11 + 16))(a2, a3, a4 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  sub_24E643A9C(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E328, &qword_24F998400);
  result = swift_dynamicCast();
  if (result)
  {
LABEL_2:
    v8 = swift_getObjectType();
    (*(v11 + 16))(a2, a4 & 1, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

int *PickGameActivityPageIntent.init(gameInfo:shouldUseGameIconHeader:isChallengeOnly:challengeDefinitions:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24ED10AA4(a1, a5);
  result = type metadata accessor for PickGameActivityPageIntent(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

uint64_t sub_24ED10AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PickGameActivityPageIntent(uint64_t a1)
{
  result = qword_27F22E388;
  if (!qword_27F22E388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t PickGameActivityPageIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x6F666E49656D6167;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = type metadata accessor for GameActivityDraftGameInfo(0);
  *(inited + 80) = sub_24ED11488(&qword_27F22E350, type metadata accessor for GameActivityDraftGameInfo, &protocol conformance descriptor for GameActivityDraftGameInfo);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24ED114D0(v2, boxed_opaque_existential_1, type metadata accessor for GameActivityDraftGameInfo);
  *(inited + 88) = 0xD000000000000017;
  *(inited + 96) = 0x800000024FA5AD60;
  v6 = type metadata accessor for PickGameActivityPageIntent(0);
  v7 = *(v2 + v6[5]);
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D22598];
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = v9;
  *(inited + 104) = v7;
  *(inited + 144) = 0x656C6C6168437369;
  *(inited + 152) = 0xEF796C6E4F65676ELL;
  v10 = *(v2 + v6[6]);
  *(inited + 184) = v8;
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 200) = 0xD000000000000014;
  *(inited + 208) = 0x800000024FA41C50;
  v11 = *(v2 + v6[7]);
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E358, &qword_24F998448);
  *(inited + 248) = sub_24ED10D8C();
  *(inited + 216) = v11;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

unint64_t sub_24ED10D8C()
{
  result = qword_27F22E360;
  if (!qword_27F22E360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E358, &qword_24F998448);
    sub_24ED10E48(&qword_27F22E368, &qword_27F21B758, &protocol conformance descriptor for ChallengeDefinitionDetail, MEMORY[0x277D22590]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E360);
  }

  return result;
}

uint64_t sub_24ED10E48(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990, &qword_24F998450);
    sub_24ED11488(a2, type metadata accessor for ChallengeDefinitionDetail, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ED10EE4()
{
  v1 = 0x6F666E49656D6167;
  v2 = 0x656C6C6168437369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_24ED10F70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED11950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ED10F98(uint64_t a1)
{
  v2 = sub_24ED11434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED10FD4(uint64_t a1)
{
  v2 = sub_24ED11434();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PickGameActivityPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E370, &qword_24F998458);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PickGameActivityPageIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24ED11434();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v14 = v20;
  v15 = v12;
  v27 = 0;
  sub_24ED11488(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo, &protocol conformance descriptor for GameActivityDraftGameInfo);
  v16 = v21;
  sub_24F92CC68();
  sub_24ED10AA4(v6, v15);
  v26 = 1;
  *(v15 + v10[5]) = sub_24F92CC38() & 1;
  v25 = 2;
  *(v15 + v10[6]) = sub_24F92CC38() & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D990, &qword_24F998450);
  v24 = 3;
  sub_24ED10E48(&qword_27F21D998, &qword_27F21B790, &protocol conformance descriptor for ChallengeDefinitionDetail, MEMORY[0x277D83978]);
  sub_24F92CC18();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[7]) = v23;
  sub_24ED114D0(v15, v19, type metadata accessor for PickGameActivityPageIntent);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24ED11538(v15, type metadata accessor for PickGameActivityPageIntent);
}

unint64_t sub_24ED11434()
{
  result = qword_27F22E378;
  if (!qword_27F22E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E378);
  }

  return result;
}

uint64_t sub_24ED11488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED114D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED11538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED115AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GameActivityDraftGameInfo(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24ED11688(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GameActivityDraftGameInfo(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_24ED11740(uint64_t a1)
{
  type metadata accessor for GameActivityDraftGameInfo(319);
  if (v1 <= 0x3F)
  {
    sub_24ED117D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ED117D4(uint64_t a1)
{
  if (!qword_27F22E398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21D990, &qword_24F998450);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F22E398);
    }
  }
}

unint64_t sub_24ED1184C()
{
  result = qword_27F22E3A0;
  if (!qword_27F22E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E3A0);
  }

  return result;
}

unint64_t sub_24ED118A4()
{
  result = qword_27F22E3A8;
  if (!qword_27F22E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E3A8);
  }

  return result;
}

unint64_t sub_24ED118FC()
{
  result = qword_27F22E3B0;
  if (!qword_27F22E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E3B0);
  }

  return result;
}

uint64_t sub_24ED11950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA5AD60 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C6C6168437369 && a2 == 0xEF796C6E4F65676ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA41C50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t MetricsFieldsContext.contextualAction.getter()
{
  if (qword_27F2106B0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
  __swift_project_value_buffer(v0, qword_27F22E4C0);
  type metadata accessor for Action(0);
  sub_24F929AD8();
  return v2;
}

uint64_t static MetricsFieldsContext.createFieldsContext(impressionsTracker:adamIdString:pageContextOverride:referrer:participatingInCrossfireReferral:pageFields:preloaded:advertRotationData:searchGhostHintData:contextualAction:deviceWindowData:impressionsAppendixData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v54 = a3;
  v55 = a7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225030, &unk_24F98A430);
  v57 = *(v26 - 8);
  v58 = v26;
  MEMORY[0x28223BE20](v26);
  v56 = &v52 - v27;
  v28 = sub_24F929AB8();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F929AA8();
  if (a1)
  {
    v53 = a6;
    v32 = a5;
    v33 = a8;
    v34 = qword_27F210660;
    swift_unknownObjectRetain();
    if (v34 != -1)
    {
      swift_once();
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
    __swift_project_value_buffer(v35, qword_27F22E3D0);
    v61 = a1;
    v62 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    (*(v29 + 32))(a9, v31, v28);
    a8 = v33;
    a5 = v32;
    a6 = v53;
  }

  if (a4)
  {
    v61 = v54;
    v62 = a4;
    if (qword_27F210668 != -1)
    {
      swift_once();
    }

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v36, qword_27F22E3E8);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a6)
  {
    v61 = a5;
    v62 = a6;
    if (qword_27F210670 != -1)
    {
      swift_once();
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v37, qword_27F22E400);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a8)
  {
    v61 = v55;
    v62 = a8;
    if (qword_27F210678 != -1)
    {
      swift_once();
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
    __swift_project_value_buffer(v38, qword_27F22E418);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a10 != 2)
  {
    LOBYTE(v61) = a10 & 1;
    if (qword_27F210680 != -1)
    {
      swift_once();
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
    __swift_project_value_buffer(v39, qword_27F22E430);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a11)
  {
    v61 = a11;
    v40 = v56;
    sub_24F929A78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
    sub_24F929A48();
    (*(v57 + 8))(v40, v58);
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  if (a12 != 2)
  {
    LOBYTE(v61) = a12 & 1;
    if (qword_27F210688 != -1)
    {
      swift_once();
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
    __swift_project_value_buffer(v41, qword_27F22E448);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  sub_24E60169C(a13, &v59, &qword_27F224FA0, &qword_24F975FD0);
  if (v60)
  {
    sub_24E612C80(&v59, &v61);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
    __swift_project_value_buffer(v42, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(&v61);
    (*(v29 + 8))(a9, v28);
    (*(v29 + 32))(a9, v31, v28);
  }

  else
  {
    sub_24E601704(&v59, &qword_27F224FA0, &qword_24F975FD0);
  }

  sub_24E60169C(a14, &v59, qword_27F224FA8, &qword_24F974A80);
  if (!v60)
  {
    result = sub_24E601704(&v59, qword_27F224FA8, &qword_24F974A80);
    v45 = a18;
    if (!a15)
    {
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  sub_24E612C80(&v59, &v61);
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v43, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  sub_24F929A48();
  __swift_destroy_boxed_opaque_existential_1(&v61);
  (*(v29 + 8))(a9, v28);
  result = (*(v29 + 32))(a9, v31, v28);
  v45 = a18;
  if (a15)
  {
LABEL_38:
    v61 = a15;
    v46 = qword_27F2106B0;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
    __swift_project_value_buffer(v47, qword_27F22E4C0);
    type metadata accessor for Action(0);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);

    result = (*(v29 + 32))(a9, v31, v28);
  }

LABEL_41:
  if (v45)
  {
    v61 = v45;
    v62 = a19;
    v48 = qword_27F2106A8;
    swift_unknownObjectRetain();
    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
    __swift_project_value_buffer(v49, qword_27F22E4A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    result = (*(v29 + 32))(a9, v31, v28);
  }

  if (a16)
  {
    v61 = a16;
    v62 = a17;
    v50 = qword_27F2106A0;
    swift_unknownObjectRetain();
    if (v50 != -1)
    {
      swift_once();
    }

    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
    __swift_project_value_buffer(v51, qword_27F22E490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
    sub_24F929A48();
    (*(v29 + 8))(a9, v28);
    swift_unknownObjectRelease();
    return (*(v29 + 32))(a9, v31, v28);
  }

  return result;
}

uint64_t MetricsFieldsContext.adamIdString.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E4D8, &qword_24F998638);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C8E8, &qword_24F956960);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_24F929A58();
  v7 = sub_24F9294C8();
  sub_24F929AD8();
  (*(v1 + 8))(v3, v0);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F21C8E8, &qword_24F956960);
  }

  else
  {
    v9 = sub_24F929498();
    v11 = v10;
    (*(v8 + 8))(v6, v7);
    if (v11)
    {
      return v9;
    }
  }

  if (qword_27F210668 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  __swift_project_value_buffer(v13, qword_27F22E3E8);
  sub_24F929AD8();

  return v14;
}

uint64_t sub_24ED1291C(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_project_value_buffer(v4, a2);
  sub_24F929AD8();
  return v6;
}

uint64_t sub_24ED129D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  __swift_project_value_buffer(v4, a2);
  sub_24F929AD8();
  return v6;
}

uint64_t MetricsFieldsContext.impressionsAppendixData.getter()
{
  if (qword_27F2106A8 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
  __swift_project_value_buffer(v0, qword_27F22E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
  sub_24F929AC8();
  return v2;
}

void *MetricsFieldsContext.searchGhostHintData.getter()
{
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_project_value_buffer(v1, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);

  return sub_24F929AC8();
}

uint64_t sub_24ED12B90()
{
  v0 = sub_24F929AB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  __swift_allocate_value_buffer(v7, qword_27F22E3B8);
  v8 = __swift_project_value_buffer(v0, qword_27F22E3B8);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_24F929AA8();
  sub_24E60169C(v18, &v13, &qword_27F224FA0, &qword_24F975FD0);
  if (v14)
  {
    sub_24E612C80(&v13, v15);
    if (qword_27F210690 != -1)
    {
      swift_once();
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
    __swift_project_value_buffer(v9, qword_27F22E460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v1 + 8))(v6, v0);
    (*(v1 + 32))(v6, v3, v0);
  }

  else
  {
    sub_24E601704(&v13, &qword_27F224FA0, &qword_24F975FD0);
  }

  sub_24E60169C(v16, &v13, qword_27F224FA8, &qword_24F974A80);
  if (v14)
  {
    sub_24E612C80(&v13, v15);
    if (qword_27F210698 != -1)
    {
      swift_once();
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
    __swift_project_value_buffer(v10, qword_27F22E478);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
    sub_24F929A48();
    __swift_destroy_boxed_opaque_existential_1(v15);
    (*(v1 + 8))(v6, v0);
    v11 = *(v1 + 32);
    v11(v6, v3, v0);
  }

  else
  {
    sub_24E601704(&v13, qword_27F224FA8, &qword_24F974A80);
    v11 = *(v1 + 32);
  }

  v11(v8, v6, v0);
  sub_24E601704(v16, qword_27F224FA8, &qword_24F974A80);
  return sub_24E601704(v18, &qword_27F224FA0, &qword_24F975FD0);
}

uint64_t static MetricsFieldsContext.emptyContext.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210658 != -1)
  {
    swift_once();
  }

  v2 = sub_24F929AB8();
  v3 = __swift_project_value_buffer(v2, qword_27F22E3B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED12FB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_allocate_value_buffer(v0, qword_27F22E3D0);
  __swift_project_value_buffer(v0, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.impressionsTrackerKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  v3 = __swift_project_value_buffer(v2, qword_27F22E3D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MetricsFieldsContext.adamIdStringKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210668 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  v3 = __swift_project_value_buffer(v2, qword_27F22E3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED131CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  __swift_allocate_value_buffer(v0, qword_27F22E400);
  __swift_project_value_buffer(v0, qword_27F22E400);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.pageContextOverrideKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210670 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  v3 = __swift_project_value_buffer(v2, qword_27F22E400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13318(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.referrerKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210678 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C910, &unk_24F974C00);
  v3 = __swift_project_value_buffer(v2, qword_27F22E418);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13440()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_allocate_value_buffer(v0, qword_27F22E430);
  __swift_project_value_buffer(v0, qword_27F22E430);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.participatingInCrossfireReferralKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210680 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  v3 = __swift_project_value_buffer(v2, qword_27F22E430);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED1356C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  __swift_allocate_value_buffer(v0, qword_27F22E448);
  __swift_project_value_buffer(v0, qword_27F22E448);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.preloadedKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210688 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225048, &unk_24F974C20);
  v3 = __swift_project_value_buffer(v2, qword_27F22E448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED1369C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
  __swift_allocate_value_buffer(v0, qword_27F22E460);
  __swift_project_value_buffer(v0, qword_27F22E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.advertRotationDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210690 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
  v3 = __swift_project_value_buffer(v2, qword_27F22E460);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED137DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  __swift_allocate_value_buffer(v0, qword_27F22E478);
  __swift_project_value_buffer(v0, qword_27F22E478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225070, &unk_24F974C40);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.searchGhostHintDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F210698 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225068, &unk_24F975FF0);
  v3 = __swift_project_value_buffer(v2, qword_27F22E478);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED1391C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
  __swift_allocate_value_buffer(v0, qword_27F22E490);
  __swift_project_value_buffer(v0, qword_27F22E490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.deviceWindowDataKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2106A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
  v3 = __swift_project_value_buffer(v2, qword_27F22E490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
  __swift_allocate_value_buffer(v0, qword_27F22E4A8);
  __swift_project_value_buffer(v0, qword_27F22E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225060, &unk_24F98A440);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.impressionsAppendixKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2106A8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225058, &unk_24F974C30);
  v3 = __swift_project_value_buffer(v2, qword_27F22E4A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24ED13B9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
  __swift_allocate_value_buffer(v0, qword_27F22E4C0);
  __swift_project_value_buffer(v0, qword_27F22E4C0);
  type metadata accessor for Action(0);
  return sub_24F929A88();
}

uint64_t static MetricsFieldsContext.contextualActionKey.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F2106B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224460, &unk_24F971A10);
  v3 = __swift_project_value_buffer(v2, qword_27F22E4C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MetricsFieldsContext.impressionsTracker.getter()
{
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v0, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929AC8();
  return v2;
}

void *MetricsFieldsContext.advertRotationData.getter()
{
  if (qword_27F210690 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
  __swift_project_value_buffer(v1, qword_27F22E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);

  return sub_24F929AC8();
}

uint64_t MetricsFieldsContext.deviceWindowData.getter()
{
  if (qword_27F2106A0 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225050, &unk_24F975FE0);
  __swift_project_value_buffer(v0, qword_27F22E490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224F90, &qword_24F989D00);
  sub_24F929AC8();
  return v2;
}

uint64_t sub_24ED13ED8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameSource(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Player(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24ED14064(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameSource(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Player(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LeaderboardsCountHeaderItemIntent(uint64_t a1)
{
  result = qword_27F22E4E0;
  if (!qword_27F22E4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED14228(uint64_t a1)
{
  sub_24E7D231C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameSource(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Player(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24ED142F4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x756F72676B636162;
  *(inited + 96) = 0xEA0000000000646ELL;
  v7 = type metadata accessor for LeaderboardsCountHeaderItemIntent(0);
  v8 = v7[5];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 136) = sub_24E7D17FC();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E7D14D8(v1 + v8, boxed_opaque_existential_1);
  *(inited + 144) = 0x72756F53656D6167;
  *(inited + 152) = 0xEA00000000006563;
  v10 = v7[6];
  *(inited + 184) = type metadata accessor for GameSource(0);
  *(inited + 192) = sub_24ED151C4(&qword_27F221F68, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  v11 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24ED1520C(v1 + v10, v11, type metadata accessor for GameSource);
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA4D4E0;
  v12 = (v1 + v7[7]);
  v14 = *v12;
  v13 = v12[1];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  v15 = sub_24E605DB4();
  *(inited + 216) = v14;
  *(inited + 224) = v13;
  *(inited + 248) = v15;
  *(inited + 256) = 0x726579616C70;
  *(inited + 264) = 0xE600000000000000;
  v16 = v7[8];
  *(inited + 296) = type metadata accessor for Player(0);
  *(inited + 304) = sub_24ED151C4(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v17 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24ED1520C(v1 + v16, v17, type metadata accessor for Player);
  *(inited + 312) = 0xD000000000000010;
  *(inited + 320) = 0x800000024FA46670;
  v18 = *(v1 + v7[9]);
  v19 = MEMORY[0x277D22598];
  *(inited + 352) = MEMORY[0x277D839B0];
  *(inited + 360) = v19;
  *(inited + 328) = v18;

  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t sub_24ED14614(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E500, &qword_24F998758);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED15110();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for LeaderboardsCountHeaderItemIntent(0);
    v8[14] = 1;
    type metadata accessor for Page.Background(0);
    sub_24ED151C4(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
    v8[13] = 2;
    type metadata accessor for GameSource(0);
    sub_24ED151C4(&qword_27F221F60, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    type metadata accessor for Player(0);
    sub_24ED151C4(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F92CD18();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24ED14914@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v28);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for GameSource(0);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E4F0, &qword_24F998750);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for LeaderboardsCountHeaderItemIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24ED15110();
  v16 = v33;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  v33 = v5;
  v18 = v31;
  v17 = v32;
  v40 = 0;
  v19 = v11;
  *v14 = sub_24F92CC28();
  v14[1] = v20;
  type metadata accessor for Page.Background(0);
  v39 = 1;
  sub_24ED151C4(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  sub_24F92CC18();
  sub_24E7DF71C(v8, v14 + v12[5]);
  v38 = 2;
  sub_24ED151C4(&qword_27F221F50, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
  v21 = v33;
  sub_24F92CC68();
  sub_24E92E098(v21, v14 + v12[6], type metadata accessor for GameSource);
  v37 = 3;
  v22 = sub_24F92CBC8();
  v23 = (v14 + v12[7]);
  *v23 = v22;
  v23[1] = v24;
  v36 = 4;
  sub_24ED151C4(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  v25 = v29;
  sub_24F92CC68();
  sub_24E92E098(v25, v14 + MEMORY[0x20], type metadata accessor for Player);
  v35 = 5;
  LOBYTE(v25) = sub_24F92CC38();
  (*(v18 + 8))(v19, v17);
  *(v14 + MEMORY[0x24]) = v25 & 1;
  sub_24ED1520C(v14, v27, type metadata accessor for LeaderboardsCountHeaderItemIntent);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return sub_24ED15164(v14, type metadata accessor for LeaderboardsCountHeaderItemIntent);
}

unint64_t sub_24ED14F48()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0xD000000000000010;
  v4 = 0x726579616C70;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x756F72676B636162;
  if (v1 != 1)
  {
    v5 = 0x72756F53656D6167;
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

uint64_t sub_24ED15008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED1538C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ED15030(uint64_t a1)
{
  v2 = sub_24ED15110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED1506C(uint64_t a1)
{
  v2 = sub_24ED15110();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24ED15110()
{
  result = qword_27F22E4F8;
  if (!qword_27F22E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E4F8);
  }

  return result;
}

uint64_t sub_24ED15164(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED151C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED1520C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24ED15288()
{
  result = qword_27F22E508;
  if (!qword_27F22E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E508);
  }

  return result;
}

unint64_t sub_24ED152E0()
{
  result = qword_27F22E510;
  if (!qword_27F22E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E510);
  }

  return result;
}

unint64_t sub_24ED15338()
{
  result = qword_27F22E518;
  if (!qword_27F22E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E518);
  }

  return result;
}

uint64_t sub_24ED1538C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4D4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA46670 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24ED155A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED156C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24ED157F8(uint64_t a1)
{
  sub_24ED19F18(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_24ED19F18(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24ED1595C(uint64_t a1)
{
  if ((sub_24E747804(a1) & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons;
  v4 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Brick_collectionIcons);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 >> 62 ? sub_24F92C738() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v5) == 5)
  {
    return 0;
  }

  v6 = *(v2 + v3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6 >> 62 ? sub_24F92C738() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v7) == 5)
  {
    return 0;
  }

  v8 = *(v2 + v3);
  if (!v8)
  {
    return 0;
  }

  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_24F92C738();
  if (result)
  {
    result = sub_24F92C738();
LABEL_13:
    v10 = sub_24EAC4868(result);
    if (v10 != 5)
    {
      v11 = v10;

      v13 = sub_24EAC4674(v12, v11);

      return v13;
    }

    return 0;
  }

  return result;
}

unint64_t sub_24ED15AB8(uint64_t a1)
{
  if (!sub_24EA12978(a1))
  {
    return 0;
  }

  v2 = *(v1 + 16);
  v3 = *(v2 + 80);
  if (!v3)
  {
    return 0;
  }

  v4 = v3 >> 62 ? sub_24F92C738() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v4) == 5)
  {
    return 0;
  }

  v5 = *(v2 + 80);
  if (!v5)
  {
    return 0;
  }

  v6 = v5 >> 62 ? sub_24F92C738() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v6) == 5)
  {
    return 0;
  }

  v7 = *(v2 + 80);
  if (!v7)
  {
    return 0;
  }

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

    goto LABEL_13;
  }

  result = sub_24F92C738();
  if (result)
  {
    result = sub_24F92C738();
LABEL_13:
    v9 = sub_24EAC4868(result);
    if (v9 != 5)
    {
      v10 = v9;

      v12 = sub_24EAC4674(v11, v10);

      return v12;
    }

    return 0;
  }

  return result;
}

unint64_t sub_24ED15C14()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_artwork))
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons;
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit18EditorialStoryCard_collectionIcons);
  if (!v4)
  {
    return 0;
  }

  v5 = v4 >> 62 ? sub_24F92C738() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (sub_24EAC4868(v5) == 5)
  {
    return 0;
  }

  v6 = *(v1 + v3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6 >> 62 ? sub_24F92C738() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8 = sub_24EAC4868(v7);
  if (v8 == 5)
  {
    return 0;
  }

  v9 = *(v1 + v3);
  if (!v9)
  {
    return 0;
  }

  if (v9 >> 62)
  {
    v16 = v8;
    result = sub_24F92C738();
    if (!result)
    {
      return result;
    }

    v10 = sub_24F92C738();
    v8 = v16;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return 0;
    }
  }

  v11 = v8;
  v12 = sub_24EAC4868(v10);
  if (v12 == 5)
  {
    return 0;
  }

  if (v11 == 3)
  {
    v13 = 4;
  }

  else
  {
    v13 = v12;
  }

  v15 = sub_24EAC4674(v14, v13);

  return v15;
}

double sub_24ED15DA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v34[-v10];
  v12 = type metadata accessor for BrickView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_24ED192B4(v3, &v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BrickView);
  v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  sub_24ED1919C(&v34[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v17 = qword_27F20FE88;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_24F922348();
  v19 = __swift_project_value_buffer(v18, qword_27F39ABD0);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v11, v19, v18);
  (*(v20 + 56))(v11, 0, 1, v18);
  sub_24E60169C(v11, v8, &qword_27F214148, &qword_24F93C520);
  v21 = (*(v20 + 48))(v8, 1, v18);
  if (v21 == 1)
  {
    sub_24E601704(v11, &qword_27F214148, &qword_24F93C520);
    sub_24E601704(v8, &qword_27F214148, &qword_24F93C520);
    v22 = 0;
  }

  else
  {
    sub_24F9222E8();
    v22 = v23;
    sub_24E601704(v11, &qword_27F214148, &qword_24F93C520);
    (*(v20 + 8))(v8, v18);
  }

  sub_24F927618();
  sub_24F9242E8();
  *&v35[54] = v37[3];
  *&v35[70] = v37[4];
  *&v35[86] = v37[5];
  *&v35[102] = v37[6];
  *&v35[6] = v37[0];
  *&v35[22] = v37[1];
  v36 = v21 == 1;
  *&v35[38] = v37[2];
  v24 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E540, &qword_24F998948) + 36);
  v25 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v26 = v25[6];
  v27 = *MEMORY[0x277CE0118];
  v28 = sub_24F924B38();
  (*(*(v28 - 8) + 104))(v24 + v26, v27, v28);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0x4036000000000000;
  *(v24 + v25[7]) = 1;
  v29 = v24 + v25[8];
  *v29 = 0;
  *(v29 + 8) = 1;
  *a2 = sub_24ED19200;
  *(a2 + 8) = v16;
  *(a2 + 16) = v22;
  *(a2 + 24) = v21 == 1;
  *(a2 + 25) = 1;
  v30 = *&v35[80];
  *(a2 + 90) = *&v35[64];
  *(a2 + 106) = v30;
  *(a2 + 122) = *&v35[96];
  *(a2 + 136) = *&v35[110];
  v31 = *&v35[16];
  *(a2 + 26) = *v35;
  *(a2 + 42) = v31;
  result = *&v35[32];
  v33 = *&v35[48];
  *(a2 + 58) = *&v35[32];
  *(a2 + 74) = v33;
  return result;
}

uint64_t sub_24ED1624C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  *a4 = sub_24F9275C8();
  a4[1] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E548, &qword_24F998950);
  sub_24ED1636C(a2, a3, a1, a4 + *(v10 + 44));
  v11 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E550, &qword_24F998958) + 36);
  v12 = *(sub_24F924258() + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #22.0 }

  *v11 = _Q0;
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E558, &qword_24F998960);
  *(a4 + *(result + 36)) = 0x4036000000000000;
  return result;
}

uint64_t sub_24ED1636C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v107 = a3;
  v104 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E560, &qword_24F998968);
  MEMORY[0x28223BE20](v6 - 8);
  v110 = &v89 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E568, &qword_24F998970);
  MEMORY[0x28223BE20](v96);
  v99 = &v89 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E570, &qword_24F998978);
  MEMORY[0x28223BE20](v98);
  v101 = &v89 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E578, &qword_24F998980);
  MEMORY[0x28223BE20](v97);
  v103 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v89 - v12;
  MEMORY[0x28223BE20](v13);
  v102 = &v89 - v14;
  v106 = sub_24F923E98();
  v114 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v90 = (&v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v95 = &v89 - v17;
  v18 = sub_24F923F78();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = (type metadata accessor for BrickView.BackgroundView(0) - 8);
  MEMORY[0x28223BE20](v105);
  v113 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v89 - v24;
  v26 = *(type metadata accessor for BrickView(0) + 20);
  sub_24F7699B0(v21);
  v94 = sub_24E747690(v21);
  v27 = *(v19 + 8);
  v27(v21, v18);
  v108 = v26;
  v28 = a1;
  v29 = v21;
  sub_24F7699B0(v21);
  v30 = sub_24EE6BFC4(v21, v115);
  v111 = v19 + 8;
  v112 = v18;
  v109 = v27;
  (v27)(v21, v18, v30);
  sub_24F923998();
  v31 = v115[6];
  *(v25 + 120) = v115[7];
  v32 = v115[9];
  *(v25 + 136) = v115[8];
  *(v25 + 152) = v32;
  *(v25 + 168) = v115[10];
  v33 = v115[2];
  *(v25 + 56) = v115[3];
  v34 = v115[5];
  *(v25 + 72) = v115[4];
  *(v25 + 88) = v34;
  *(v25 + 104) = v31;
  v35 = v115[1];
  *(v25 + 8) = v115[0];
  *(v25 + 24) = v35;
  *v25 = v94;
  *(v25 + 40) = v33;
  *(v25 + 23) = v36;
  *(v25 + 24) = v37;
  v38 = *(v105 + 9);
  v39 = a2;
  *&v25[v38] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  v105 = v25;
  swift_storeEnumTagMultiPayload();
  v40 = v95;
  sub_24F769788(v95);
  LOBYTE(v38) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v41 = v40;
  v42 = *(v114 + 8);
  v114 += 8;
  v42(v41, v106);
  if (v38)
  {
    v43 = v28;
    if (sub_24E7474C4())
    {
      sub_24F7699B0(v21);
      v44 = sub_24E747690(v21);
      v45 = v21;
      v46 = v112;
      v47 = v109;
      v109(v45, v112);
      v95 = v44;

      goto LABEL_7;
    }

    v95 = 1;
  }

  else
  {
    v95 = 1;
    v43 = v28;
  }

  v46 = v112;
  v47 = v109;
LABEL_7:
  sub_24F7699B0(v29);
  v48 = sub_24E747804(v29);
  v47(v29, v46);
  if (v48)
  {
    sub_24F7699B0(v29);
    v91 = sub_24ED1595C(v29);
    v93 = v50;
    v94 = v49;
    v92 = v51;
    v47(v29, v46);
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v92 = 0;
    v91 = 1;
  }

  sub_24F923998();
  if (qword_27F20FE88 != -1)
  {
    swift_once();
  }

  v52 = sub_24F922348();
  __swift_project_value_buffer(v52, qword_27F39ABD0);
  v53 = v90;
  v107 = v39;
  sub_24F769788(v90);
  _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v42(v53, v106);
  v114 = v43;
  sub_24ED16E50(v43, v110);
  sub_24F9275C8();
  sub_24F9242E8();
  v54 = v99;
  sub_24E6009C8(v110, v99, &qword_27F22E560, &qword_24F998968);
  v55 = (v54 + *(v96 + 36));
  v56 = v115[16];
  v55[4] = v115[15];
  v55[5] = v56;
  v55[6] = v115[17];
  v57 = v115[12];
  *v55 = v115[11];
  v55[1] = v57;
  v58 = v115[14];
  v55[2] = v115[13];
  v55[3] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v60 = sub_24F9257F8();
  *(inited + 32) = v60;
  v61 = sub_24F925828();
  *(inited + 33) = v61;
  v62 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v60)
  {
    v62 = sub_24F925848();
  }

  sub_24F925848();
  v63 = sub_24F925848();
  v64 = v112;
  if (v63 != v61)
  {
    v62 = sub_24F925848();
  }

  sub_24F923318();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v54;
  v74 = v101;
  sub_24E6009C8(v73, v101, &qword_27F22E568, &qword_24F998970);
  v75 = v74 + *(v98 + 36);
  *v75 = v62;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  sub_24F7699B0(v29);
  v76 = v100;
  v77 = &v100[*(v97 + 36)];
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980);
  sub_24E747318(v29, v77 + *(v78 + 28));
  v109(v29, v64);
  *v77 = swift_getKeyPath();
  sub_24E6009C8(v74, v76, &qword_27F22E570, &qword_24F998978);
  v79 = v102;
  sub_24E6009C8(v76, v102, &qword_27F22E578, &qword_24F998980);
  v80 = v113;
  sub_24ED192B4(v105, v113, type metadata accessor for BrickView.BackgroundView);
  v81 = v103;
  sub_24E60169C(v79, v103, &qword_27F22E578, &qword_24F998980);
  v82 = v104;
  sub_24ED192B4(v80, v104, type metadata accessor for BrickView.BackgroundView);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E580, &qword_24F9989E8);
  v84 = v94;
  v85 = v95;
  *(v82 + v83[12]) = v95;
  v86 = v82 + v83[16];
  v87 = v91;
  *v86 = v91;
  *(v86 + 8) = v84;
  *(v86 + 16) = v93;
  *(v86 + 24) = v92;
  sub_24E60169C(v81, v82 + v83[20], &qword_27F22E578, &qword_24F998980);
  sub_24ED1931C(v85);
  sub_24ED1932C(v87);
  sub_24ED1933C(v85);
  sub_24E601704(v79, &qword_27F22E578, &qword_24F998980);
  sub_24ED194A8(v105, type metadata accessor for BrickView.BackgroundView);
  sub_24E601704(v81, &qword_27F22E578, &qword_24F998980);
  sub_24ED1934C(v87);
  sub_24ED1933C(v85);
  return sub_24ED194A8(v113, type metadata accessor for BrickView.BackgroundView);
}

uint64_t sub_24ED16E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for BrickView.LargeTextStack(0);
  MEMORY[0x28223BE20](v28);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BrickView.MediumTextStack(0);
  MEMORY[0x28223BE20](v24);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E588, &qword_24F9989F0);
  MEMORY[0x28223BE20](v25);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E590, &qword_24F9989F8);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E598, &qword_24F998A00);
  MEMORY[0x28223BE20](v26);
  v13 = &v23 - v12;
  v14 = type metadata accessor for BrickView.SmallTextStack(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, v6, &qword_27F215340, &qword_24F943530);
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &v6[*(v24 + 20)], &qword_27F215340, &qword_24F943530);
      sub_24ED192B4(v6, v11, type metadata accessor for BrickView.MediumTextStack);
      swift_storeEnumTagMultiPayload();
      sub_24ED18F1C(&qword_27F22E5A8, type metadata accessor for BrickView.SmallTextStack, &unk_24F998BD0);
      sub_24ED18F1C(&qword_27F22E5B0, type metadata accessor for BrickView.MediumTextStack, &unk_24F998B80);
      sub_24F924E28();
      sub_24E60169C(v13, v8, &qword_27F22E598, &qword_24F998A00);
      swift_storeEnumTagMultiPayload();
      sub_24ED193BC();
      sub_24ED18F1C(&qword_27F22E5B8, type metadata accessor for BrickView.LargeTextStack, &unk_24F998B30);
      sub_24F924E28();
      sub_24E601704(v13, &qword_27F22E598, &qword_24F998A00);
      v18 = type metadata accessor for BrickView.MediumTextStack;
      v19 = v6;
    }

    else
    {
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_caption, v4, &qword_27F215340, &qword_24F943530);
      v20 = v28;
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, &v4[*(v28 + 20)], &qword_27F215340, &qword_24F943530);
      sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_subtitle, &v4[*(v20 + 24)], &qword_27F215340, &qword_24F943530);
      v21 = *(v20 + 28);
      *&v4[v21] = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
      swift_storeEnumTagMultiPayload();
      sub_24ED192B4(v4, v8, type metadata accessor for BrickView.LargeTextStack);
      swift_storeEnumTagMultiPayload();
      sub_24ED193BC();
      sub_24ED18F1C(&qword_27F22E5B8, type metadata accessor for BrickView.LargeTextStack, &unk_24F998B30);
      sub_24F924E28();
      v18 = type metadata accessor for BrickView.LargeTextStack;
      v19 = v4;
    }
  }

  else
  {
    sub_24E60169C(v17 + OBJC_IVAR____TtC12GameStoreKit5Brick_title, v16, &qword_27F215340, &qword_24F943530);
    sub_24ED192B4(v16, v11, type metadata accessor for BrickView.SmallTextStack);
    swift_storeEnumTagMultiPayload();
    sub_24ED18F1C(&qword_27F22E5A8, type metadata accessor for BrickView.SmallTextStack, &unk_24F998BD0);
    sub_24ED18F1C(&qword_27F22E5B0, type metadata accessor for BrickView.MediumTextStack, &unk_24F998B80);
    sub_24F924E28();
    sub_24E60169C(v13, v8, &qword_27F22E598, &qword_24F998A00);
    swift_storeEnumTagMultiPayload();
    sub_24ED193BC();
    sub_24ED18F1C(&qword_27F22E5B8, type metadata accessor for BrickView.LargeTextStack, &unk_24F998B30);
    sub_24F924E28();
    sub_24E601704(v13, &qword_27F22E598, &qword_24F998A00);
    v18 = type metadata accessor for BrickView.SmallTextStack;
    v19 = v16;
  }

  return sub_24ED194A8(v19, v18);
}

uint64_t sub_24ED1753C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 15);
  v5 = *(v1 + 19);
  v31 = *(v1 + 17);
  v32 = v5;
  v33 = *(v1 + 21);
  v6 = *(v1 + 7);
  v7 = *(v1 + 11);
  v27 = *(v1 + 9);
  v28 = v7;
  v29 = *(v1 + 13);
  v30 = v4;
  v8 = *(v1 + 3);
  v23 = *(v1 + 1);
  v24 = v8;
  v25 = *(v1 + 5);
  v26 = v6;
  v9 = type metadata accessor for ArtworkWithFallbackView(0);
  v10 = v9[7];
  v11 = *MEMORY[0x277CE1010];
  v12 = sub_24F926E68();
  v21 = *(v1 + 23);
  (*(*(v12 - 8) + 104))(a1 + v10, v11, v12);
  *a1 = v3;
  *(a1 + 24) = v21;
  *(a1 + 8) = v21;
  v13 = a1 + v9[8];
  *v13 = 1;
  *(v13 + 8) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0;
  v14 = (a1 + v9[9]);
  v15 = v32;
  v14[8] = v31;
  v14[9] = v15;
  v14[10] = v33;
  v16 = v28;
  v14[4] = v27;
  v14[5] = v16;
  v17 = v30;
  v14[6] = v29;
  v14[7] = v17;
  v18 = v24;
  *v14 = v23;
  v14[1] = v18;
  v19 = v26;
  v14[2] = v25;
  v14[3] = v19;
  *(a1 + v9[10]) = 0;
  *(a1 + v9[11]) = 0;

  return sub_24E60169C(&v23, v22, &qword_27F22E660, &qword_24F9A9120);
}

double sub_24ED176C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && (v3 = *(a1 + 48)) != 0)
  {
    v4 = v3;
    sub_24F926BF8();
    v5 = sub_24F926D08();
  }

  else
  {
    v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  v7 = sub_24F926D08();

  *(v6 + 32) = v7;
  sub_24F926C88();
  v8 = sub_24F926D08();

  *(v6 + 40) = v8;
  MEMORY[0x25304CD70](v6);
  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  *a2 = v5;
  *(a2 + 8) = v10;
  result = *&v11;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

__n128 sub_24ED17800@<Q0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_24F927618();
  v7 = v6;
  sub_24ED176C8(v4, v12);
  v8 = v12[0];
  v9 = v12[1];
  result = v13;
  v11 = v14;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = result;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_24ED17860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24F91F008();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  sub_24E60169C(v2, v6, &qword_27F215340, &qword_24F943530);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F215340, &qword_24F943530);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    result = 0;
    v19 = 0;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v20 = sub_24F925DF8();
    v22 = v21;
    v24 = v23;
    sub_24F925998();
    v25 = sub_24F925C98();
    v29 = v26;
    v30 = v25;
    v31 = v27;
    v17 = v28;

    sub_24E600B40(v20, v22, v24 & 1);

    (*(v8 + 8))(v13, v7);
    result = swift_getKeyPath();
    v15 = v29;
    v14 = v30;
    v33 = v31 & 1;
    v32 = 0;
    v16 = v31 & 1;
    v19 = 3;
  }

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = result;
  *(a1 + 40) = v19;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_24ED17AFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - v7;
  v9 = sub_24F91F008();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v73 - v16;
  sub_24E60169C(a1, v8, &qword_27F215340, &qword_24F943530);
  v18 = *(v10 + 48);
  v19 = v18(v8, 1, v9);
  v77 = v14;
  if (v19 == 1)
  {
    sub_24E601704(v8, &qword_27F215340, &qword_24F943530);
    v84 = 0;
    v85 = 0;
    v79 = 0;
    v82 = 0;
    v83 = 0;
    v20 = 0;
  }

  else
  {
    (*(v10 + 32))(v17, v8, v9);
    (*(v10 + 16))(v14, v17, v9);
    v21 = sub_24F925DF8();
    v75 = v18;
    v76 = a1;
    v23 = v22;
    v25 = v24;
    sub_24F925A18();
    v26 = sub_24F925C98();
    v84 = v27;
    v85 = v26;
    v81 = v10;
    v29 = v28;
    v83 = v30;

    sub_24E600B40(v21, v23, v25 & 1);

    v86 = 1;
    sub_24ED1A304();
    v31 = v84;
    v32 = v85;
    v33 = sub_24F925C58();
    v74 = v5;
    v34 = v33;
    v36 = v35;
    LODWORD(v82) = v37;
    v39 = v38;
    LOBYTE(v37) = v29 & 1;
    v10 = v81;
    sub_24E600B40(v32, v31, v37);

    (*(v10 + 8))(v17, v9);
    KeyPath = swift_getKeyPath();
    v84 = v36;
    v85 = v34;
    v41 = v34;
    a1 = v76;
    v42 = v36;
    v5 = v74;
    v18 = v75;
    v79 = v82 & 1;
    sub_24E5FD138(v41, v42, v79);
    v83 = v39;
    v20 = 1;

    v82 = KeyPath;
  }

  v43 = type metadata accessor for BrickView.MediumTextStack(0);
  sub_24E60169C(a1 + *(v43 + 20), v5, &qword_27F215340, &qword_24F943530);
  v44 = v18(v5, 1, v9);
  v81 = v20;
  if (v44 == 1)
  {
    sub_24E601704(v5, &qword_27F215340, &qword_24F943530);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v51 = v78;
    (*(v10 + 32))(v78, v5, v9);
    (*(v10 + 16))(v77, v51, v9);
    v52 = sub_24F925DF8();
    v54 = v53;
    v56 = v55;
    sub_24F925998();
    v57 = sub_24F925C98();
    v59 = v58;
    LODWORD(v76) = v60;
    v77 = v61;

    sub_24E600B40(v52, v54, v56 & 1);

    (*(v10 + 8))(v51, v9);
    v62 = swift_getKeyPath();
    v88 = v76 & 1;
    v87 = 0;
    v47 = v76 & 1;
    v45 = v57;
    v46 = v59;
    sub_24E5FD138(v57, v59, v76 & 1);
    v48 = v77;

    v49 = v62;

    v50 = 2;
  }

  v63 = v85;
  v64 = v79;
  v65 = v82;
  sub_24ED1A264(v85, v84, v79, v83);
  sub_24ED1A264(v45, v46, v47, v48);
  v85 = v63;
  v66 = v84;
  v67 = v65;
  v68 = v81;
  sub_24ED1A2B4(v63, v84, v64, v83, v67);
  sub_24ED1A2B4(v45, v46, v47, v48, v49);
  v69 = v80;
  *v80 = v63;
  v69[1] = v66;
  v71 = v82;
  v70 = v83;
  v69[2] = v64;
  v69[3] = v70;
  v69[4] = v71;
  v69[5] = v68;
  *(v69 + 48) = 0;
  v69[7] = v45;
  v69[8] = v46;
  v69[9] = v47;
  v69[10] = v48;
  v69[11] = v49;
  v69[12] = v50;
  *(v69 + 52) = 0;
  sub_24ED1A2B4(v45, v46, v47, v48, v49);
  return sub_24ED1A2B4(v85, v84, v64, v70, v71);
}

double sub_24ED180F4@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24F924C98();
  v19 = 0;
  sub_24ED17AFC(v3, &v12);
  v24 = v16;
  v25[0] = v17[0];
  *(v25 + 10) = *(v17 + 10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v26[0] = v12;
  v26[1] = v13;
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27[0] = v17[0];
  *(v27 + 10) = *(v17 + 10);
  sub_24E60169C(&v20, &v11, &qword_27F22E648, &qword_24F998C50);
  sub_24E601704(v26, &qword_27F22E648, &qword_24F998C50);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25[0];
  *&v18[97] = *(v25 + 10);
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  v6 = *&v18[80];
  *(a2 + 81) = *&v18[64];
  *(a2 + 97) = v6;
  *(a2 + 113) = *&v18[96];
  v7 = *&v18[16];
  *(a2 + 17) = *v18;
  *(a2 + 33) = v7;
  result = *&v18[32];
  v9 = *&v18[48];
  *(a2 + 49) = *&v18[32];
  v10 = v19;
  *a2 = v5;
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = v10;
  *(a2 + 129) = v18[112];
  *(a2 + 65) = v9;
  return result;
}

uint64_t sub_24ED1822C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v120 = a2;
  v119 = sub_24F923E98();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = (v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v4 - 8);
  v122 = v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v133 = v116 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v116 - v9;
  v11 = sub_24F91F008();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v123 = v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v132 = v116 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v116 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v116 - v20;
  v127 = a1;
  sub_24E60169C(a1, v10, &qword_27F215340, &qword_24F943530);
  v22 = v12 + 48;
  v23 = *(v12 + 48);
  v24 = v23(v10, 1, v11);
  v121 = v18;
  v126 = v11;
  v124 = v12;
  if (v24 == 1)
  {
    sub_24E601704(v10, &qword_27F215340, &qword_24F943530);
    v137 = 0;
    v138 = 0;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v25 = 0;
  }

  else
  {
    (*(v12 + 32))(v21, v10, v11);
    (*(v12 + 16))(v18, v21, v11);
    v26 = sub_24F925DF8();
    v131 = v23;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    sub_24F925A18();
    v32 = sub_24F925C98();
    v34 = v33;
    v36 = v35;
    v138 = v37;

    sub_24E600B40(v27, v29, v31 & 1);

    v139 = 1;
    sub_24ED1A304();
    v38 = sub_24F925C58();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = v32;
    v11 = v126;
    v46 = v34;
    v12 = v124;
    sub_24E600B40(v45, v46, v36 & 1);
    v25 = 1;

    (*(v12 + 8))(v21, v11);
    KeyPath = swift_getKeyPath();
    v137 = v40;
    v138 = v38;
    v48 = v40;
    v23 = v131;
    v134 = v42 & 1;
    sub_24E5FD138(v38, v48, v42 & 1);
    v136 = v44;

    v135 = KeyPath;
  }

  v49 = type metadata accessor for BrickView.LargeTextStack(0);
  v50 = v133;
  sub_24E60169C(v127 + *(v49 + 20), v133, &qword_27F215340, &qword_24F943530);
  v51 = v23(v50, 1, v11);
  v125 = v25;
  if (v51 == 1)
  {
    sub_24E601704(v50, &qword_27F215340, &qword_24F943530);
    v132 = 0;
    v133 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v128 = 0;
  }

  else
  {
    v52 = v132;
    (*(v12 + 32))(v132, v50, v11);
    (*(v12 + 16))(v121, v52, v11);
    v53 = sub_24F925DF8();
    v55 = v54;
    v57 = v56;
    v116[0] = v49;
    sub_24F925988();
    v58 = sub_24F925C98();
    v116[1] = v22;
    v60 = v59;
    LODWORD(v133) = v61;
    v63 = v62;

    v64 = v53;
    v11 = v126;
    v65 = v55;
    v12 = v124;
    sub_24E600B40(v64, v65, v57 & 1);
    v49 = v116[0];

    (*(v12 + 8))(v52, v11);
    v66 = swift_getKeyPath();
    v67 = v133 & 1;
    v141 = v133 & 1;
    v140 = 0;
    v129 = v133 & 1;
    v132 = v60;
    v133 = v58;
    sub_24E5FD138(v58, v60, v67);
    v131 = v63;

    v130 = v66;

    v128 = 2;
  }

  v68 = v122;
  sub_24E60169C(v127 + *(v49 + 24), v122, &qword_27F215340, &qword_24F943530);
  if (v23(v68, 1, v11) == 1)
  {
    sub_24E601704(v68, &qword_27F215340, &qword_24F943530);
    v69 = 0;
    v70 = 0;
    v126 = 0;
    v123 = 0;
    v124 = 0;
    v127 = 0;
  }

  else
  {
    v71 = v123;
    (*(v12 + 32))(v123, v68, v11);
    (*(v12 + 16))(v121, v71, v11);
    v72 = sub_24F925DF8();
    v74 = v73;
    v76 = v75;
    sub_24F925A18();
    v77 = sub_24F925C98();
    v79 = v78;
    v81 = v80;

    sub_24E600B40(v72, v74, v76 & 1);

    v142[0] = 1;
    sub_24ED1A304();
    v82 = sub_24F925C58();
    v84 = v83;
    v86 = v85;
    v88 = v87;
    sub_24E600B40(v77, v79, v81 & 1);

    v89 = v117;
    sub_24F769788(v117);
    LOBYTE(v72) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
    (*(v118 + 8))(v89, v119);
    (*(v124 + 8))(v123, v126);
    if (v72)
    {
      v90 = 2;
    }

    else
    {
      v90 = 1;
    }

    v127 = v90;
    v91 = swift_getKeyPath();
    v69 = v82;
    v70 = v84;
    v126 = v86 & 1;
    sub_24E5FD138(v82, v84, v86 & 1);
    v123 = v88;

    v124 = v91;
  }

  v92 = v125;
  sub_24ED1A264(v138, v137, v134, v136);
  v94 = v132;
  v93 = v133;
  v96 = v129;
  v95 = v130;
  v97 = v131;
  sub_24ED1A264(v133, v132, v129, v131);
  v98 = v126;
  sub_24ED1A264(v69, v70, v126, v123);
  sub_24ED1A2B4(v93, v94, v96, v97, v95);
  v99 = v137;
  v100 = v138;
  v102 = v134;
  v101 = v135;
  v103 = v136;
  sub_24ED1A2B4(v138, v137, v134, v136, v135);
  v104 = v98;
  v105 = v123;
  v106 = v124;
  sub_24ED1A2B4(v69, v70, v104, v123, v124);
  v107 = v120;
  *v120 = v100;
  v107[1] = v99;
  v107[2] = v102;
  v107[3] = v103;
  v107[4] = v101;
  v107[5] = v92;
  *(v107 + 48) = 0;
  v108 = v132;
  v109 = v133;
  v107[7] = v133;
  v107[8] = v108;
  LOBYTE(v99) = v129;
  v110 = v130;
  v111 = v131;
  v107[9] = v129;
  v107[10] = v111;
  v112 = v127;
  v113 = v128;
  v107[11] = v110;
  v107[12] = v113;
  *(v107 + 52) = 0;
  v107[14] = v69;
  v107[15] = v70;
  v114 = v126;
  v107[16] = v126;
  v107[17] = v105;
  v107[18] = v106;
  v107[19] = v112;
  *(v107 + 160) = 0;
  sub_24ED1A2B4(v69, v70, v114, v105, v106);
  sub_24ED1A2B4(v109, v108, v99, v111, v110);
  return sub_24ED1A2B4(v138, v137, v134, v136, v135);
}

double sub_24ED18C64@<D0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_24F924C98();
  v26 = 0;
  sub_24ED1822C(v3, &v14);
  v35 = v22;
  v36 = v23;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v38[8] = v22;
  v38[9] = v23;
  v38[4] = v18;
  v38[5] = v19;
  v38[6] = v20;
  v38[7] = v21;
  v38[0] = v14;
  v38[1] = v15;
  v37 = v24;
  v39 = v24;
  v38[2] = v16;
  v38[3] = v17;
  sub_24E60169C(&v27, &v13, &qword_27F22E658, &qword_24F998C58);
  sub_24E601704(v38, &qword_27F22E658, &qword_24F998C58);
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  v6 = *&v25[96];
  *(a2 + 129) = *&v25[112];
  v7 = *&v25[144];
  *(a2 + 145) = *&v25[128];
  *(a2 + 161) = v7;
  v8 = *&v25[32];
  *(a2 + 65) = *&v25[48];
  v9 = *&v25[80];
  *(a2 + 81) = *&v25[64];
  *(a2 + 97) = v9;
  *(a2 + 113) = v6;
  result = *v25;
  v11 = *&v25[16];
  *(a2 + 17) = *v25;
  *(a2 + 33) = v11;
  v25[167] = v37;
  v12 = v26;
  *a2 = v5;
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = v12;
  *(a2 + 177) = *&v25[160];
  *(a2 + 49) = v8;
  return result;
}

uint64_t sub_24ED18DFC(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  sub_24ED192B4(v3, &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BrickView);
  sub_24ED18F1C(&qword_27F215C18, type metadata accessor for BrickView, &unk_24F9988E0);
  return sub_24F9218E8();
}

uint64_t sub_24ED18F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED19010()
{
  v1 = type metadata accessor for BrickView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24ED1919C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ED19200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for BrickView(0) - 8);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24ED1624C(a1, v7, v8, a2, v6);
}

uint64_t sub_24ED192B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED1931C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double sub_24ED1932C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_24ED1933C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_24ED1934C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_24ED193BC()
{
  result = qword_27F22E5A0;
  if (!qword_27F22E5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E598, &qword_24F998A00);
    sub_24ED18F1C(&qword_27F22E5A8, type metadata accessor for BrickView.SmallTextStack, &unk_24F998BD0);
    sub_24ED18F1C(&qword_27F22E5B0, type metadata accessor for BrickView.MediumTextStack, &unk_24F998B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E5A0);
  }

  return result;
}

uint64_t sub_24ED194A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ED1951C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 28);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24ED19638(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24ED1974C(uint64_t a1)
{
  sub_24ED19F18(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24ED19F18(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24ED1984C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED198D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24ED19954(uint64_t a1)
{
  sub_24ED19F18(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24ED19A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED19A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24ED19B0C(uint64_t a1)
{
  sub_24ED19F18(319, &qword_27F215338, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24ED19BA8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24ED19C04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24ED19C78(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_24ED19D54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24ED19E04(uint64_t a1)
{
  sub_24ED19F18(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24ED19F7C();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_24ED19F18(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24ED19F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24ED19F7C()
{
  if (!qword_27F22E608)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F22E608);
    }
  }
}

unint64_t sub_24ED19FD0()
{
  result = qword_27F22E610;
  if (!qword_27F22E610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E540, &qword_24F998948);
    sub_24ED1A08C();
    sub_24ED18F1C(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer, &unk_24F98A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E610);
  }

  return result;
}

unint64_t sub_24ED1A08C()
{
  result = qword_27F22E618;
  if (!qword_27F22E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E620, &qword_24F998A78);
    sub_24ED1A118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E618);
  }

  return result;
}

unint64_t sub_24ED1A118()
{
  result = qword_27F22E628;
  if (!qword_27F22E628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E630, &qword_24F998A80);
    sub_24E602068(&qword_27F22E638, &qword_27F22E640, qword_24F998A88, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E628);
  }

  return result;
}

uint64_t sub_24ED1A264(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_24E5FD138(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_24ED1A2B4(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_24E600B40(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_24ED1A304()
{
  result = qword_27F22E650;
  if (!qword_27F22E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E650);
  }

  return result;
}

unint64_t sub_24ED1A35C()
{
  result = qword_27F22E668;
  if (!qword_27F22E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E670, &qword_24F998C60);
    sub_24ED1A3E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E668);
  }

  return result;
}

unint64_t sub_24ED1A3E0()
{
  result = qword_27F22E678;
  if (!qword_27F22E678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E680, &qword_24F998C68);
    sub_24E67283C();
    sub_24E602068(&qword_27F2282B0, &qword_27F2282B8, &qword_24F981230, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E678);
  }

  return result;
}

char *sub_24ED1A5AC()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_24ED1A664(v10);
    v6 = v5;
    MEMORY[0x2530543E0](v10);
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_24E71CBC0(v4, v6);
    sub_24E71CBAC(v7, v8);
  }

  sub_24E781610(v2, v3);
  return v4;
}

char *sub_24ED1A664(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40 - v2;
  v4 = sub_24F91F4A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223140, &unk_24F96D8D0);
    inited = swift_initStackObject();
    v40 = xmmword_24F93DE60;
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v11 = OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider_metadata;
    v12 = *&v9[OBJC_IVAR____TtC12GameStoreKit33NotesMetadataActivityItemProvider_metadata];
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    v15 = MEMORY[0x277D837D0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v14;
    *(inited + 56) = v13;

    v16 = sub_24E608448(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F2135C0, &qword_24F970400);
    sub_24E99091C(*&v9[v11] + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_url, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_24E601704(v3, &qword_27F228530, &unk_24F93C6E0);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v44 = v4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
      (*(v5 + 16))(boxed_opaque_existential_1, v7, v4);
      sub_24E612B0C(&v43, v42);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v16;
      sub_24E81C1D4(v42, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v5 + 8))(v7, v4);
      v16 = v41;
    }

    v19 = *&v9[v11];
    v20 = *(v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer + 8);
    if (v20)
    {
      v21 = *(v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_developer);
      v44 = v15;
      *&v43 = v21;
      *(&v43 + 1) = v20;
      sub_24E612B0C(&v43, v42);

      v22 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v16;
      sub_24E81C1D4(v42, 0x796E61706D6F63, 0xE700000000000000, v22);
      v16 = v41;
      v19 = *&v9[v11];
    }

    v23 = *(v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category + 8);
    if (v23)
    {
      v24 = *(v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_category);
      v44 = v15;
      *&v43 = v24;
      *(&v43 + 1) = v23;
      sub_24E612B0C(&v43, v42);

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v16;
      sub_24E81C1D4(v42, 0x79726F6765746163, 0xE800000000000000, v25);
      v16 = v41;
      v19 = *&v9[v11];
    }

    if ((*(v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize + 8) & 1) == 0)
    {
      v26 = *(v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_fileSize);
      v44 = MEMORY[0x277D84A28];
      *&v43 = v26;
      sub_24E612B0C(&v43, v42);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v16;
      sub_24E81C1D4(v42, 0x7A69735F656C6966, 0xE900000000000065, v27);
      v16 = v41;
      v19 = *&v9[v11];
    }

    v28 = (v19 + OBJC_IVAR____TtC12GameStoreKit23ShareSheetNotesMetadata_mediaType);
    v29 = v28[1];
    if (v29)
    {
      v30 = *v28;
      v44 = v15;
      *&v43 = v30;
      *(&v43 + 1) = v29;
      sub_24E612B0C(&v43, v42);

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v16;
      sub_24E81C1D4(v42, 0x79745F616964656DLL, 0xEA00000000006570, v31);
    }

    v32 = objc_opt_self();
    v33 = sub_24F92AE28();

    *&v43 = 0;
    v34 = [v32 archivedDataWithRootObject:v33 requiringSecureCoding:0 error:&v43];

    v35 = v43;
    if (v34)
    {
      v36 = sub_24F91F4E8();

      return v36;
    }

    else
    {
      v37 = v35;
      v38 = sub_24F91F278();

      swift_willThrow();
      if (qword_27F210568 != -1)
      {
        swift_once();
      }

      v39 = sub_24F92AAE8();
      __swift_project_value_buffer(v39, qword_27F39C398);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = v40;
      sub_24F9283A8();
      sub_24F92A5A8();

      return 0;
    }
  }

  return result;
}

void sub_24ED1AD98(char **a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_24F92B0D8();
  v7 = v6;
  if (v5 == sub_24F92B0D8() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24F92CE08();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = MEMORY[0x277D837D0];
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_24ED1A5AC();
  v13 = v12;
  a1[3] = MEMORY[0x277CC9318];

  *a1 = v11;
  a1[1] = v13;
}

void sub_24ED1AE94(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_24F92B0D8();
  v5 = v4;
  if (v3 == sub_24F92B0D8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_24ED1A5AC();
  *(a2 + 24) = MEMORY[0x277CC9318];
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_24ED1B1A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24ED1B250(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_24F92B0D8();
    v4 = v3;
    if (v2 == sub_24F92B0D8() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_24F92CE08();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

BOOL ProductTopLockup.wantsInlineUberPresentationStyle.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return 0;
    }
  }

  else if (*(v1 + 16))
  {
    swift_bridgeObjectRelease_n();
    return *(v1 + 40) || *(v1 + 24) != 0;
  }

  v2 = sub_24F92CE08();

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return *(v1 + 40) || *(v1 + 24) != 0;
}

void ProductTopLockup.PrimaryBanner.hideCriteria.getter(void *a1@<X8>)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v5 = *v1 & 0x7FFFFFFFFFFFFFFFLL;
    v3 = *(v5 + 0x50);
    v4 = *(v5 + 88);
    sub_24E6AD46C(*(v5 + 80), v4);
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  *a1 = v3;
  a1[1] = v4;
}

void ProductTopLockup.init(deserializing:using:)()
{
  *(v0 + 248) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 216) = 0u;
  v1 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  v2 = sub_24F929608();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_24F92CA88();
  __break(1u);
}

uint64_t ProductTopLockup.title.getter()
{
  v1 = *(*(v0 + 16) + 96);

  return v1;
}

uint64_t ProductTopLockup.subtitle.getter()
{
  v1 = *(v0 + 16);
  if (v1[19])
  {
    v2 = v1[18];
  }

  else
  {
    v2 = v1[14];
  }

  return v2;
}

uint64_t ProductTopLockup.developerTagline.getter()
{
  v1 = *(*(v0 + 16) + 144);

  return v1;
}

uint64_t ProductTopLockup.editorialTagline.getter()
{
  v1 = *(*(v0 + 16) + 184);

  return v1;
}

uint64_t ProductTopLockup.developerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double ProductTopLockup.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 24);
  *a1 = *(v2 + 16);
  a1[1] = v3;

  return result;
}

void ProductTopLockup.iconStyle.getter(_BYTE *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 48);
  if (v2)
  {
    *a1 = *(v2 + 64);
  }

  else
  {
    *a1 = 9;
  }
}

uint64_t ProductTopLockup.expandedOfferTitles.getter()
{
  v1 = v0[11];
  sub_24E680354(v1, v0[12], v0[13], v0[14]);
  return v1;
}

BOOL ProductTopLockup.invalidatesPrimaryBannerOnAppStateChange.getter()
{
  if (v0[16])
  {
    return 0;
  }

  if (v0[17])
  {
    return 0;
  }

  return v0[18] != 0;
}

uint64_t ProductTopLockup.primaryBanner(for:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2[16];
  if (!v3)
  {
    v4 = v2[17];
    if (v4)
    {
LABEL_3:
      v3 = v4 | 0x8000000000000000;
      v5 = a2;

      a2 = v5;
      goto LABEL_4;
    }

    v7 = v2[18];
    if (v7)
    {
      v8 = a1[6];
      v9 = v8 >> 60;
      v3 = 0xF000000000000007;
      if ((v8 >> 60) > 6)
      {
        if (v9 == 7)
        {
          v4 = v7[6];
          if (v4)
          {
            goto LABEL_3;
          }
        }

        else if (v9 == 8)
        {
          v10 = *a1;
          v11 = a1[3];
          v12 = a1[2] | a1[1];
          v13 = a1[4] | a1[5] | a1[7];
          if (v8 != 0x8000000000000000 || v12 | v10 | v11 | v13)
          {
            if (v8 == 0x8000000000000000 && v10 == 4 && !(v12 | v11 | v13))
            {
              v4 = v7[2];
              if (v4)
              {
                goto LABEL_3;
              }
            }
          }

          else
          {
            v4 = v7[3];
            if (v4)
            {
              goto LABEL_3;
            }
          }
        }
      }

      else if (v9 == 2)
      {
        v4 = v7[5];
        if (v4)
        {
          goto LABEL_3;
        }
      }

      else if (v9 == 3)
      {
        v4 = v7[4];
        if (v4)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      v3 = 0xF000000000000007;
    }
  }

LABEL_4:
  *a2 = v3;
}

uint64_t ProductTopLockup.tertiaryTitle.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t ProductTopLockup.segue.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + 216, qword_27F21B590, &unk_24F93BE30);
  return swift_endAccess();
}

uint64_t ProductTopLockup.impressionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F213E68, &unk_24F93BC80);
}

uint64_t ProductTopLockup.impressionMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  sub_24E61DA68(a1, v1 + v3, &qword_27F213E68, &unk_24F93BC80);
  return swift_endAccess();
}

uint64_t *ProductTopLockup.deinit()
{

  sub_24E680460(v0[11], v0[12], v0[13], v0[14]);

  sub_24E6585F8((v0 + 22));
  sub_24E601704((v0 + 27), qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t ProductTopLockup.__deallocating_deinit()
{
  ProductTopLockup.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24ED1BD14()
{
  result = qword_27F22E6D0;
  if (!qword_27F22E6D0)
  {
    type metadata accessor for ProductTopLockup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E6D0);
  }

  return result;
}

uint64_t type metadata accessor for ProductTopLockup(uint64_t a1)
{
  result = qword_27F22E6D8;
  if (!qword_27F22E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED1BDC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_24E60169C(v3 + 216, a1, qword_27F21B590, &unk_24F93BE30);
}

uint64_t sub_24ED1BE24@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16ProductTopLockup_impressionMetrics;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F213E68, &unk_24F93BC80);
}

void sub_24ED1BE98(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24ED1BFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 240);
  if (v7)
  {
    if (*(v7 + 121) == 1)
    {
      v8 = *(a1 + 304);
      if (v8)
      {
        if (v8 >> 62)
        {
          v16 = a5;
          v17 = a4;
          v18 = sub_24F92C738();
          a4 = v17;
          a5 = v16;
          v9 = v18;
        }

        else
        {
          v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = Lockup.numberOfPurchasedChildren(using:)(a4, a5);
        if ((v11 & 1) == 0 && v10 >= 1 && v9 > v10)
        {
          return _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(0xD00000000000002CLL, 0x800000024FA5B080, v9 - v10);
        }
      }
    }
  }

  if (a3)
  {

    v12._countAndFlagsBits = 0xD00000000000002FLL;
    v12._object = 0x800000024FA5B050;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    localizedString(_:comment:)(v12, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218A0, &qword_24F9876F0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F93DE60;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_24E90A06C();
    *(v14 + 32) = a2;
    *(v14 + 40) = a3;
    a2 = sub_24F92B118();
  }

  return a2;
}

void *DynamicTypeLabel.__allocating_init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v12 = a5;
  v17 = objc_allocWithZone(v8);
  v18 = sub_24ED1F418(a1, a2, a3, a4 & 1, v12, a6, a7, a8);
  sub_24E824448(a7, a8);
  return v18;
}

void *DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_24ED1F418(a1, a2, a3, a4 & 1, a5, a6, a7, a8);
  sub_24E824448(a7, a8);
  return v10;
}

char *DynamicTypeLabel.__allocating_init(customTextStyle:numberOfLines:lineBreakMode:directionalTextAlignment:contentSizeCategoryMapping:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24[-v16 - 8];
  LOBYTE(a5) = *a5;
  v18 = sub_24F922378();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v24[0] = a5;
  v19 = (*(v7 + 144))(v17, a2, a3, a4 & 1, 0, v24, a6, a7);
  v20 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  v21 = v19;
  sub_24ED1FA98(a1, v19 + v20);
  swift_endAccess();

  return v21;
}

id DynamicTypeLabel.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t DynamicTypeLabel.init(frame:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  ObjectType = swift_getObjectType();
  v4 = sub_24F922378();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v8 = 0;
  v5 = (*(ObjectType + 144))(v2, 2, 0, 1, 0, &v8, 0, 0);
  swift_deallocPartialClassInstance();
  return v5;
}

id DynamicTypeLabel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_24ED1C748(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_24ED1C7A8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24ED1C7F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_24ED1C8AC@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24ED20B94;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24E5FCA4C(v4, v5);
}

double sub_24ED1C94C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_24ED20B8C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_24E5FCA4C(v3, v4);
  sub_24E5FCA4C(v6, v5);
  sub_24E824448(v8, v9);
  sub_24ED1CA30();
  return sub_24E824448(v6, v5);
}

uint64_t sub_24ED1CA30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_24F922378();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(v0 + v8, v3, &qword_27F222038, &unk_24F9689B0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
    v9 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
    swift_beginAccess();
    sub_24E60169C(v0 + v9, &v12, &qword_27F22E6E8, &qword_24F998F88);
    if (v13)
    {
      sub_24E612C80(&v12, v14);
      (*((*MEMORY[0x277D85000] & *v0) + 0xE0))(v14);
      return __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      return sub_24E601704(&v12, &qword_27F22E6E8, &qword_24F998F88);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    (*((*MEMORY[0x277D85000] & *v0) + 0xD8))(v7);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24ED1CCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v2 = *v1;
  sub_24E5FCA4C(*v1, v1[1]);
  return v2;
}

double sub_24ED1CD20(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_24E5FCA4C(a1, a2);
  sub_24E824448(v6, v7);
  sub_24ED1CA30();
  return sub_24E824448(a1, a2);
}

uint64_t (*sub_24ED1CDAC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24ED1CE10;
}

uint64_t sub_24ED1CE10(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_24ED1CA30();
  }

  return result;
}

void sub_24ED1CE44(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v8 = *&v2[v7];
  *&v2[v7] = v6;

  v9 = (v4)([v2 setAdjustsFontForContentSizeCategory_]);
  v10 = sub_24F92BFB8();

  sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300);
  v11 = MEMORY[0x253051BF0](a1, v10);
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v14, sel_setFont_, v11);
  if (![v2 lineSpacing] && ((v13 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v2[v13] & 1) != 0) || v2[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 set:v12 fontForShortcutBaselineCalculation:?];
}

void sub_24ED1D008(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v8 = *&v2[v7];
  *&v2[v7] = v6;

  v9 = (v4)([v2 setAdjustsFontForContentSizeCategory_]);
  v10 = sub_24F92BFB8();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_24F9225B8();
  v14.receiver = v2;
  v14.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v14, sel_setFont_, v11);
  if (![v2 lineSpacing] && ((v13 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v2[v13] & 1) != 0) || v2[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [v2 set:v12 fontForShortcutBaselineCalculation:?];
}

double sub_24ED1D1C8(uint64_t a1, void *a2)
{
  v4 = a2 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping;
  swift_beginAccess();
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 1);
    v8 = *((*MEMORY[0x277D85000] & *a2) + 0xC8);

    v10 = v8(v9);
    v11 = [v10 preferredContentSizeCategory];

    v6(v11);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F922D48();
    return sub_24E824448(v6, v7);
  }

  return result;
}

void sub_24ED1D2D8()
{
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel) == 1)
  {
    v1 = [v0 attributedText];
    if (v1)
    {
      v2 = v1;
      v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v3 = UIAccessibilityButtonShapesEnabled();
      v4 = *MEMORY[0x277D741F0];
      if (v3)
      {
        v5 = sub_24F92BB08();
        [v6 addAttribute:v4 value:v5 range:{0, objc_msgSend(v6, sel_length)}];
      }

      else
      {
        [v6 removeAttribute:v4 range:{0, objc_msgSend(v6, sel_length)}];
      }

      [v0 setAttributedText_];
    }
  }
}

uint64_t sub_24ED1D464(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v13[-v8];
  sub_24E60169C(a1, &v13[-v8], &qword_27F222038, &unk_24F9689B0);
  v10 = *a2;
  v11 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(v10 + v11, v6, &qword_27F222038, &unk_24F9689B0);
  swift_beginAccess();
  sub_24E9CBF30(v9, v10 + v11, &qword_27F222038, &unk_24F9689B0);
  swift_endAccess();
  sub_24ED1D5B8(v6);
  sub_24E601704(v6, &qword_27F222038, &unk_24F9689B0);
  return sub_24E601704(v9, &qword_27F222038, &unk_24F9689B0);
}

uint64_t sub_24ED1D5B8(uint64_t a1)
{
  v41 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227098, &unk_24F97D650);
  MEMORY[0x28223BE20](v40);
  v3 = &v34 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = sub_24F922378();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v37 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  v39 = v1;
  v19 = v13;
  sub_24E60169C(v1 + v18, v11, &qword_27F222038, &unk_24F9689B0);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) == 1)
  {
    return sub_24E601704(v11, &qword_27F222038, &unk_24F9689B0);
  }

  v22 = *(v19 + 32);
  v22(v17, v11, v12);
  v23 = *(v19 + 16);
  v35 = v17;
  v23(v8, v17, v12);
  v36 = v19;
  (*(v19 + 56))(v8, 0, 1, v12);
  v24 = *(v40 + 48);
  sub_24E60169C(v8, v3, &qword_27F222038, &unk_24F9689B0);
  sub_24E60169C(v41, &v3[v24], &qword_27F222038, &unk_24F9689B0);
  if (v20(v3, 1, v12) == 1)
  {
    sub_24E601704(v8, &qword_27F222038, &unk_24F9689B0);
    v25 = v20(&v3[v24], 1, v12);
    v26 = v36;
    if (v25 == 1)
    {
      sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
      return (*(v26 + 8))(v35, v12);
    }

    goto LABEL_8;
  }

  v27 = v22;
  v28 = v38;
  sub_24E60169C(v3, v38, &qword_27F222038, &unk_24F9689B0);
  if (v20(&v3[v24], 1, v12) == 1)
  {
    sub_24E601704(v8, &qword_27F222038, &unk_24F9689B0);
    v26 = v36;
    (*(v36 + 8))(v28, v12);
LABEL_8:
    sub_24E601704(v3, &qword_27F227098, &unk_24F97D650);
LABEL_9:
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v29 = v39;
    sub_24ED1DF7C(v42);
    v30 = v35;
    (*((*MEMORY[0x277D85000] & *v29) + 0xD8))(v35);
    return (*(v26 + 8))(v30, v12);
  }

  v31 = v37;
  v27(v37, &v3[v24], v12);
  sub_24EAB3D68();
  v32 = sub_24F92AFF8();
  v26 = v36;
  v33 = *(v36 + 8);
  v33(v31, v12);
  sub_24E601704(v8, &qword_27F222038, &unk_24F9689B0);
  v33(v28, v12);
  sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v33)(v35, v12);
}

uint64_t sub_24ED1DAF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F222038, &unk_24F9689B0);
}

uint64_t sub_24ED1DB5C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  sub_24E60169C(v1 + v6, v5, &qword_27F222038, &unk_24F9689B0);
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v6, &qword_27F222038, &unk_24F9689B0);
  swift_endAccess();
  sub_24ED1D5B8(v5);
  sub_24E601704(a1, &qword_27F222038, &unk_24F9689B0);
  return sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
}

void (*sub_24ED1DC70(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_24E60169C(v1 + v9, v8, &qword_27F222038, &unk_24F9689B0);
  return sub_24ED1DDA0;
}

void sub_24ED1DDA0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_24E60169C(*(*a1 + 12), v6, &qword_27F222038, &unk_24F9689B0);
    sub_24E60169C(v7 + v4, v5, &qword_27F222038, &unk_24F9689B0);
    swift_beginAccess();
    sub_24E9CBF30(v6, v7 + v4, &qword_27F222038, &unk_24F9689B0);
    swift_endAccess();
    sub_24ED1D5B8(v5);
    sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
  }

  else
  {
    sub_24E60169C(v7 + v4, v6, &qword_27F222038, &unk_24F9689B0);
    swift_beginAccess();
    sub_24E9CBF30(v3, v7 + v4, &qword_27F222038, &unk_24F9689B0);
    swift_endAccess();
    sub_24ED1D5B8(v6);
  }

  sub_24E601704(v6, &qword_27F222038, &unk_24F9689B0);
  sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_24ED1DF14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F22E6E8, &qword_24F998F88);
}

uint64_t sub_24ED1DF7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  sub_24E9CBF30(a1, v1 + v9, &qword_27F22E6E8, &qword_24F998F88);
  swift_endAccess();
  sub_24E60169C(v1 + v9, &v14, &qword_27F22E6E8, &qword_24F998F88);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    v10 = sub_24F922378();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_24E60169C(v1 + v11, v5, &qword_27F222038, &unk_24F9689B0);
    swift_beginAccess();
    sub_24E9CBF30(v8, v1 + v11, &qword_27F222038, &unk_24F9689B0);
    swift_endAccess();
    sub_24ED1D5B8(v5);
    sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
    sub_24E601704(v8, &qword_27F222038, &unk_24F9689B0);
    (*((*MEMORY[0x277D85000] & *v1) + 0xE0))(v16);
    sub_24E601704(a1, &qword_27F22E6E8, &qword_24F998F88);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24E601704(a1, &qword_27F22E6E8, &qword_24F998F88);
    return sub_24E601704(&v14, &qword_27F22E6E8, &qword_24F998F88);
  }
}

void (*sub_24ED1E200(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xB8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 152) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0) - 8) + 64);
  if (v3)
  {
    v5[20] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[20] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  v5[21] = v7;
  v5[22] = v8;
  swift_beginAccess();
  return sub_24ED1E2F4;
}

void sub_24ED1E2F4(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E60169C(*(v3 + 152) + *(v3 + 176), v3 + 40, &qword_27F22E6E8, &qword_24F998F88);
    if (*(v3 + 64))
    {
      v5 = *(v3 + 160);
      v4 = *(v3 + 168);
      v6 = *(v3 + 152);
      sub_24E612C80((v3 + 40), v3);
      v7 = sub_24F922378();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
      swift_beginAccess();
      sub_24E60169C(v6 + v8, v5, &qword_27F222038, &unk_24F9689B0);
      swift_beginAccess();
      sub_24E9CBF30(v4, v6 + v8, &qword_27F222038, &unk_24F9689B0);
      swift_endAccess();
      sub_24ED1D5B8(v5);
      sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
      sub_24E601704(v4, &qword_27F222038, &unk_24F9689B0);
      (*((*MEMORY[0x277D85000] & *v6) + 0xE0))(v3);
      __swift_destroy_boxed_opaque_existential_1(v3);
    }

    else
    {
      sub_24E601704(v3 + 40, &qword_27F22E6E8, &qword_24F998F88);
    }
  }

  v9 = *(v3 + 160);
  free(*(v3 + 168));
  free(v9);

  free(v3);
}

uint64_t sub_24ED1E53C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24ED1E580(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  swift_beginAccess();
  v1[v3] = a1;
  v4 = [v1 font];
  if (v4)
  {
    v5 = v4;
    if (![v1 lineSpacing] && ((v1[v3] & 1) != 0 || v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
    {
      [v1 set:v5 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

void (*sub_24ED1E650(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_24ED1E6D8;
}

void sub_24ED1E6D8(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(v3 + 24) font];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [*(v3 + 24) lineSpacing];
    v7 = *(v3 + 24);
    if (!v6 && ((*(v7 + *(v3 + 32)) & 1) != 0 || *(v7 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText) == 1))
    {
      [v7 set:v5 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v7 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  free(v3);
}

void sub_24ED1E7A0(char a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText;
  v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] = a1;
  v3 = [v1 font];
  if (v3)
  {
    v4 = v3;
    if (![v1 lineSpacing] && ((v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v1[v5] & 1) != 0) || v1[v2] == 1))
    {
      [v1 set:v4 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_24ED1EA64(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DynamicTypeLabel(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_24ED1EAFC(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DynamicTypeLabel(0);
  objc_msgSendSuper2(&v6, sel_setLineSpacing_, a1);
  v3 = [v1 font];
  if (v3)
  {
    v4 = v3;
    if (![v1 lineSpacing] && ((v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (*(v1 + v5) & 1) != 0) || *(v1 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText) == 1))
    {
      [v1 set:v4 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_24ED1EBF4(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for DynamicTypeLabel(0);
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id sub_24ED1ECE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v7 = v5;
  return sub_24ED1ED4C(&v7);
}

id sub_24ED1ED4C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  if (v5 != v2 && v5 != 0)
  {
    if (v5 == 1)
    {
      v7 = [v1 traitCollection];
      v8 = v1;
      v9 = sub_24F92BF88();

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v15.receiver = v8;
      v15.super_class = type metadata accessor for DynamicTypeLabel(0);
      return objc_msgSendSuper2(&v15, sel_setTextAlignment_, v10);
    }

    else
    {
      v11 = [v1 traitCollection];
      v12 = v1;
      v13 = sub_24F92BF88();

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      v16.receiver = v12;
      v16.super_class = type metadata accessor for DynamicTypeLabel(0);
      return objc_msgSendSuper2(&v16, sel_setTextAlignment_, v14);
    }
  }

  return result;
}

uint64_t sub_24ED1EE64@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id sub_24ED1EEB8(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = v2;
  if (v2 != v5 && v2 != 0)
  {
    if (v2 == 1)
    {
      v7 = [v1 traitCollection];
      v8 = v1;
      v9 = sub_24F92BF88();

      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }

      v15.receiver = v8;
      v15.super_class = type metadata accessor for DynamicTypeLabel(0);
      return objc_msgSendSuper2(&v15, sel_setTextAlignment_, v10);
    }

    else
    {
      v11 = [v1 traitCollection];
      v12 = v1;
      v13 = sub_24F92BF88();

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = 2;
      }

      v16.receiver = v12;
      v16.super_class = type metadata accessor for DynamicTypeLabel(0);
      return objc_msgSendSuper2(&v16, sel_setTextAlignment_, v14);
    }
  }

  return result;
}

void (*sub_24ED1EFD0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_24ED1F064;
}

void sub_24ED1F064(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(v4 + v3);
  *(v4 + v3) = *(*a1 + 40);
  if (a2)
  {
    v7 = v5;
    v6 = &v7;
  }

  else
  {
    v8 = v5;
    v6 = &v8;
  }

  sub_24ED1ED4C(v6);

  free(v2);
}

void sub_24ED1F0D4(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 1;
  if (UIAccessibilityButtonShapesEnabled())
  {
    if (a2)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v5 = sub_24F92B098();
      v6 = [v4 initWithString_];

      v7 = *MEMORY[0x277D741F0];
      v8 = sub_24F92BB08();
      v10 = v6;
      [v10 addAttribute:v7 value:v8 range:{0, objc_msgSend(v10, sel_length)}];

      [v2 setAttributedText_];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (!a2)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = sub_24F92B098();
LABEL_7:
  v10 = v9;
  [v2 setText_];
LABEL_8:
}

void sub_24ED1F214(void *a1)
{
  v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 1;
  if (UIAccessibilityButtonShapesEnabled() && a1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v4 = a1;
    v5 = [v3 initWithAttributedString_];
    v6 = *MEMORY[0x277D741F0];
    v7 = sub_24F92BB08();
    v8 = v5;
    [v8 addAttribute:v6 value:v7 range:{0, objc_msgSend(v8, sel_length)}];

    [v1 setAttributedText_];
  }

  else
  {

    [v1 setAttributedText_];
  }
}

id DynamicTypeLabel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24ED1F418(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6, uint64_t a7, uint64_t a8)
{
  v59 = a7;
  *&v60 = a8;
  v57 = a5;
  v54 = a4;
  v55 = a3;
  v58 = a1;
  v11 = a2 != 0;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = sub_24F922378();
  v56 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v52 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F922D68();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = *a6;
  *&v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory] = 0;
  v21 = &v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping];
  *v21 = 0;
  v21[1] = 0;
  (*(v16 + 56))(&v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase], 1, 1, v15, v19);
  v22 = &v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement] = 0;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] = 1;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel] = 0;
  v8[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment] = 0;
  v23 = type metadata accessor for DynamicTypeLabel(0);
  v64.receiver = v8;
  v64.super_class = v23;
  v53 = v23;
  v24 = objc_msgSendSuper2(&v64, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v24 setNumberOfLines_];
  if (v54)
  {
    v25 = 4 * v11;
  }

  else
  {
    v25 = v55;
  }

  [v24 setLineBreakMode_];
  v26 = v24;
  sub_24F92C2A8();
  sub_24F922D58();
  sub_24F92C2B8();

  [v26 setUserInteractionEnabled_];
  v27 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  swift_beginAccess();
  *(v26 + v27) = v20;
  v28 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  v29 = v58;
  sub_24E9CBF30(v58, v26 + v28, &qword_27F222038, &unk_24F9689B0);
  swift_endAccess();
  v30 = (v26 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  swift_beginAccess();
  v31 = *v30;
  v32 = v30[1];
  v33 = v59;
  v34 = v60;
  *v30 = v59;
  v30[1] = v34;
  sub_24E5FCA4C(v33, v34);
  sub_24E824448(v31, v32);
  v35 = v56;
  sub_24E60169C(v29, v14, &qword_27F222038, &unk_24F9689B0);
  if ((*(v16 + 48))(v14, 1, v35) == 1)
  {
    sub_24E601704(v14, &qword_27F222038, &unk_24F9689B0);
    v36 = *(v26 + v27);
    if (!*(v26 + v27))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v37 = v52;
    (*(v16 + 32))(v52, v14, v35);
    (*((*MEMORY[0x277D85000] & *v26) + 0xD8))(v37);
    (*(v16 + 8))(v37, v35);
    v36 = *(v26 + v27);
    if (!*(v26 + v27))
    {
      goto LABEL_17;
    }
  }

  if (v36 == 1)
  {
    v38 = [v26 traitCollection];
    v39 = sub_24F92BF88();

    if (v39)
    {
      v40 = 2;
    }

    else
    {
      v40 = 0;
    }

    v62.receiver = v26;
    v62.super_class = v53;
    objc_msgSendSuper2(&v62, sel_setTextAlignment_, v40);
  }

  else
  {
    v41 = [v26 traitCollection];
    v42 = sub_24F92BF88();

    if (v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = 2;
    }

    v63.receiver = v26;
    v63.super_class = v53;
    objc_msgSendSuper2(&v63, sel_setTextAlignment_, v43);
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E720, &qword_24F9D9CC0);
  v44 = swift_allocObject();
  v60 = xmmword_24F93DE60;
  *(v44 + 16) = xmmword_24F93DE60;
  v45 = sub_24F922D78();
  v46 = MEMORY[0x277D74B90];
  *(v44 + 32) = v45;
  *(v44 + 40) = v46;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v47 = swift_allocObject();
  *(v47 + 16) = v60;
  v48 = sub_24F922E88();
  v49 = MEMORY[0x277D74DB8];
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  sub_24F92C2C8();
  swift_unknownObjectRelease();

  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v26 selector:sel_buttonShapesDidChange name:*MEMORY[0x277D76450] object:0];

  sub_24E601704(v29, &qword_27F222038, &unk_24F9689B0);
  return v26;
}

uint64_t sub_24ED1FA98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E6E8, &qword_24F998F88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_24ED1FB08(char *a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  if (a1[v2])
  {
    if (a1[v2] == 1)
    {
      v4 = [a1 traitCollection];
      v5 = sub_24F92BF88();

      if (v5)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      v10.receiver = a1;
      v10.super_class = type metadata accessor for DynamicTypeLabel(0);
      return objc_msgSendSuper2(&v10, sel_setTextAlignment_, v6);
    }

    else
    {
      v7 = [a1 traitCollection];
      v8 = sub_24F92BF88();

      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 2;
      }

      v11.receiver = a1;
      v11.super_class = type metadata accessor for DynamicTypeLabel(0);
      return objc_msgSendSuper2(&v11, sel_setTextAlignment_, v9);
    }
  }

  return result;
}

uint64_t sub_24ED1FC08(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_24F922378();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = [a1 adjustsFontForContentSizeCategory];
  if ((result & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_24E60169C(a1 + v11, v4, &qword_27F222038, &unk_24F9689B0);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_24E601704(v4, &qword_27F222038, &unk_24F9689B0);
      v12 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
      swift_beginAccess();
      sub_24E60169C(a1 + v12, &v14, &qword_27F22E6E8, &qword_24F998F88);
      if (v15)
      {
        sub_24E612C80(&v14, v16);
        (*((*MEMORY[0x277D85000] & *a1) + 0xE0))(v16);
        return __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        return sub_24E601704(&v14, &qword_27F22E6E8, &qword_24F998F88);
      }
    }

    else
    {
      (*(v6 + 32))(v9, v4, v5);
      (*((*MEMORY[0x277D85000] & *a1) + 0xD8))(v9);
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

void _s12GameStoreKit16DynamicTypeLabelC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_contentSizeCategoryMapping);
  *v1 = 0;
  v1[1] = 0;
  v2 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  v3 = sub_24F922378();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText) = 1;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isLinkStyleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment) = 0;
  sub_24F92CA88();
  __break(1u);
}

uint64_t type metadata accessor for DynamicTypeLabel(uint64_t a1)
{
  result = qword_27F22E710;
  if (!qword_27F22E710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24ED20028(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7 + 16;
  v9 = type metadata accessor for DynamicTypeLabel(0);
  v20.receiver = v1;
  v20.super_class = v9;
  result = objc_msgSendSuper2(&v20, sel_setFont_, a1);
  if (a1)
  {
    v11 = a1;
    if (![v1 lineSpacing] && ((v12 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement, swift_beginAccess(), (v1[v12] & 1) != 0) || v1[OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_isPlainText] == 1))
    {
      [v1 set:v11 fontForShortcutBaselineCalculation:?];
    }

    else
    {
      [v1 set:0 fontForShortcutBaselineCalculation:?];
    }

    v13 = sub_24F922378();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
    swift_beginAccess();
    sub_24E60169C(&v1[v14], v5, &qword_27F222038, &unk_24F9689B0);
    swift_beginAccess();
    sub_24E9CBF30(v8, &v1[v14], &qword_27F222038, &unk_24F9689B0);
    swift_endAccess();
    sub_24ED1D5B8(v5);
    sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
    sub_24E601704(v8, &qword_27F222038, &unk_24F9689B0);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_24ED1DF7C(v18);
    v15 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
    swift_beginAccess();
    v16 = *&v1[v15];
    *&v1[v15] = 0;

    return [v1 setAdjustsFontForContentSizeCategory_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24ED202A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCaseContentSizeCategory;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24ED20314@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_fontUseCase;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F222038, &unk_24F9689B0);
}

uint64_t sub_24ED20384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_customTextStyle;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F22E6E8, &qword_24F998F88);
}

uint64_t sub_24ED2043C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_wantsFastBaselineMeasurement;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24ED204BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16DynamicTypeLabel_directionalTextAlignment;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_24ED20520(uint64_t a1)
{
  sub_24E935B08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DynamicTypeLabel.updateFont(to:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();
}

uint64_t sub_24ED20B54()
{

  return swift_deallocObject();
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.__allocating_init(presenter:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t OnDemandShelfFetchingCollectionElementsObserver.__deallocating_deinit()
{
  sub_24E883630(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_24ED20CDC()
{
  type metadata accessor for ItemLayoutContext(0);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  if (v5 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v1 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BF8, &qword_24F93B820);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93DE60;
      swift_getKeyPath();
      sub_24F928A48();

      v4 = sub_24E803D38(inited);
      swift_setDeallocating();
      sub_24E6585F8(inited + 32);
      (*(v1 + 8))(v4, ObjectType, v1);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t _s12GameStoreKit47OnDemandShelfFetchingCollectionElementsObserverC13prefetchCells2in14collectionView8asPartOfySayAA17ItemLayoutContextVG_So012UICollectionO0C9JetEngine15BaseObjectGraphCtF_0(uint64_t a1)
{
  v2 = type metadata accessor for ItemLayoutContext(0);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84FA0];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      sub_24E8E7F4C(v7, v5);
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
      sub_24F928A48();

      if (v15[0])
      {
        swift_getKeyPath();
        sub_24F928A48();

        sub_24ED7D5A0(v15, v14);
        sub_24E6585F8(v15);
      }

      sub_24E8E7FB0(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }

  v9 = v13;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v10 = *(v9 + 24);
  ObjectType = swift_getObjectType();
  (*(v10 + 8))(v16, ObjectType, v10);

  return swift_unknownObjectRelease();
}

uint64_t sub_24ED21098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24ED78AB0();
  *a1 = result & 1;
  return result;
}

uint64_t NewToAppStoreCardTrigger.__allocating_init(adamId:numberOfPurchasesThreshold:purchaseHistory:)(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v7 = *a1;
  v8 = a1[1];
  *(v6 + 64) = 0;
  *(v6 + 88) = 0;
  *(v6 + 72) = v7;
  *(v6 + 80) = v8;
  *(v6 + 16) = a2;
  sub_24E612C80(a3, v6 + 24);
  return v6;
}

uint64_t NewToAppStoreCardTrigger.init(adamId:numberOfPurchasesThreshold:purchaseHistory:)(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v5 = a1[1];
  *(v3 + 64) = 0;
  *(v3 + 88) = 0;
  *(v3 + 72) = v4;
  *(v3 + 80) = v5;
  *(v3 + 16) = a2;
  sub_24E612C80(a3, v3 + 24);
  return v3;
}

double NewToAppStoreCardTrigger.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  a1[1] = v2;

  return result;
}

void sub_24ED21180(void (*a1)(void), uint64_t a2)
{
  v5 = [objc_opt_self() ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];

  if (v6 && (v7 = [v6 ams_DSID], v6, v7))
  {
    v8 = [v7 longLongValue];

    v9 = v2[6];
    v10 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v9);
    v11 = (*(v10 + 8))(v9, v10);
    v12 = v2[6];
    v13 = v2[7];
    __swift_project_boxed_opaque_existential_1(v2 + 3, v12);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = a1;
    v14[4] = a2;
    v14[5] = v2;
    v15 = *(v13 + 32);

    v15(v11, 0, sub_24ED21414, v14, v12, v13);
  }

  else
  {
    a1(0);
  }
}

uint64_t sub_24ED21340(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BOOL8, uint64_t, uint64_t (*)(_BOOL8), uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  if (*(a1 + 16) && (v8 = sub_24E7728CC(a2), (a2 & 1) != 0))
  {
    v9 = *(*(a1 + 56) + 8 * v8);
    if (v9 >> 62)
    {
      v10 = sub_24F92C738();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = *(a5 + 16) >= v10;
  }

  else
  {
    v11 = 0;
  }

  return a3(v11, a2, a3, a4, a5);
}

uint64_t sub_24ED213D4()
{

  return swift_deallocObject();
}

void sub_24ED21424(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_24F92B098();
    [v1 setObject:v2 forKey:?];
  }

  else
  {
    v3 = sub_24F92B098();
    [v1 removeObjectForKey_];
  }
}

void sub_24ED214E0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_24F92B098();
  [v0 removeObjectForKey_];
}

uint64_t sub_24ED21578()
{
  v1 = sub_24F92B098();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_24E857CC8(v7);
  }

  return 0;
}

uint64_t NewToAppStoreCardTrigger.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t NewToAppStoreCardTrigger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

double sub_24ED216EC@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 80);
  *a1 = *(*v1 + 72);
  a1[1] = v2;

  return result;
}

void sub_24ED21720()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
    v2 = [v1 ams_DSID];

    if (v2)
    {
      v4 = [objc_opt_self() standardUserDefaults];
      v3 = v2;
      sub_24ED21424(v2);
    }
  }
}

uint64_t sub_24ED21818()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (v1)
  {
    v2 = [v1 ams_DSID];

    if (v2)
    {
      v3 = [objc_opt_self() standardUserDefaults];
      v4 = sub_24ED21578();

      if (v4)
      {
        sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
        LOBYTE(v1) = sub_24F92C408();

        v2 = v4;
      }

      else
      {
        LOBYTE(v1) = 0;
      }
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit32ActionImplementationPerformErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24ED21A1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24ED21A6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_24ED21AC8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_24ED21B08()
{
  result = qword_27F22E728;
  if (!qword_27F22E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E728);
  }

  return result;
}

__n128 TitleEffectUpdate.init(effect:isAnimated:animationDuration:timingFunction:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  result = *a1;
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  *(a6 + 41) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4 & 1;
  *(a6 + 64) = a5;
  return result;
}

id TitleEffectUpdate.effect.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 40);
  *(a1 + 40) = v7;
  return sub_24ED21BB0(v2, v3, v4, v5, v6, v7);
}

id sub_24ED21BB0(id result, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = result;
  if (a6 == 2 || a6 == 1)
  {

    v8 = v7;
    v7 = a2;
    v10 = a3;
  }

  else
  {
    if (a6)
    {
      return result;
    }

    v10 = a2;
  }

  v9 = v7;

  return v10;
}

void *TitleEffectUpdate.timingFunction.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit11TitleEffectO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_24ED21C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_24ED21CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t FontSource.hash(into:)(uint64_t a1)
{
  v2 = sub_24F922378();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F922118();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D22620])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    MEMORY[0x253052A00](0);
    sub_24F92B0D8();
    sub_24F92B218();
  }

  else if (v11 == *MEMORY[0x277D22618])
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    MEMORY[0x253052A00](1);
    sub_24ED22140(&qword_27F22E730, MEMORY[0x277D22690], MEMORY[0x277D22698]);
    sub_24F92AEF8();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t FontSource.hashValue.getter()
{
  sub_24F92D068();
  FontSource.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED22078()
{
  sub_24F92D068();
  FontSource.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED220BC()
{
  sub_24F92D068();
  FontSource.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24ED22140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED221AC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for AchievementBadgeModel(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_24ED22344(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for AchievementBadgeModel(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for AchievementRow(uint64_t a1)
{
  result = qword_27F22E740;
  if (!qword_27F22E740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ED22514(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AchievementBadgeModel(319);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

double sub_24ED22628@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = *(v1 + *(type metadata accessor for AchievementRow(0) + 32));
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      v7 = sub_24F4DBA88(3);
      v14 = sub_24F925908();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      v8 = 10.0;
      v12 = sub_24F925968();
      sub_24E601704(v5, &qword_27F214698, &unk_24F95F810);
      v10 = xmmword_24F9993F0;
      v11 = xmmword_24F999400;
      goto LABEL_9;
    }

    v17 = xmmword_24F999410;
    v16 = xmmword_24F999420;
    v8 = 10.0;
    goto LABEL_7;
  }

  if (v6)
  {
    v17 = xmmword_24F9993D0;
    v16 = xmmword_24F9993E0;
    v8 = 15.0;
LABEL_7:
    v7 = sub_24F4DBA88(v6);
    v13 = sub_24F925908();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v12 = sub_24F925968();
    sub_24E601704(v5, &qword_27F214698, &unk_24F95F810);
    v11 = v16;
    v10 = v17;
    goto LABEL_9;
  }

  v7 = sub_24F4DBA88(0);
  v17 = xmmword_24F999430;
  v16 = xmmword_24F999440;
  v8 = 10.0;
  v9 = sub_24F9258F8();
  v11 = v16;
  v10 = v17;
  v12 = v9;
LABEL_9:
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v12;
  result = 0.02;
  *(a1 + 56) = xmmword_24F999450;
  return result;
}

uint64_t sub_24ED22874(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E890, &qword_24F9997D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ED253CC();
  sub_24F92D128();
  v11[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v11[14] = 1;
    sub_24F92CD08();
    v11[13] = 2;
    sub_24F92CD08();
    v9 = type metadata accessor for AchievementRow(0);
    v11[12] = 3;
    type metadata accessor for AchievementBadgeModel(0);
    sub_24ED255F4(&qword_27F22E898, type metadata accessor for AchievementBadgeModel, &unk_24FA16708);
    sub_24F92CD48();
    v11[11] = *(v3 + *(v9 + 32));
    v11[10] = 4;
    sub_24ED255A0();
    sub_24F92CD48();
    v11[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v11[8] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v11[7] = 7;
    sub_24F929608();
    sub_24ED255F4(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24ED22C94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v44);
  v6 = v41 - v5;
  v7 = type metadata accessor for AchievementBadgeModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E870, &qword_24F9997C8);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = v41 - v12;
  v14 = type metadata accessor for AchievementRow(0);
  MEMORY[0x28223BE20](v14);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v16[*(v17 + 36)];
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v52 = v18;
  sub_24E61DA68(&v54, v18, qword_27F21B590, &unk_24F93BE30);
  v19 = *(v14 + 40);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v49 = v19;
  v21(&v16[v19], 1, 1, v20);
  v22 = *(v14 + 44);
  v23 = sub_24F929608();
  v24 = *(*(v23 - 8) + 56);
  v50 = v22;
  v53 = v16;
  v24(&v16[v22], 1, 1, v23);
  v25 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24ED253CC();
  v47 = v13;
  v26 = v48;
  sub_24F92D108();
  if (v26)
  {
    v29 = v49;
    v30 = v53;
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v52, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v30 + v29, &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(v30 + v50, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v41[1] = v23;
    v27 = v6;
    v48 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v28 = v45;
    sub_24F92CC68();
    v31 = v55;
    v32 = v53;
    *v53 = v54;
    v32[1] = v31;
    *(v32 + 4) = v56;
    LOBYTE(v54) = 1;
    v33 = sub_24F92CC28();
    v34 = v49;
    *(v32 + 5) = v33;
    *(v32 + 6) = v35;
    LOBYTE(v54) = 2;
    *(v32 + 7) = sub_24F92CC28();
    *(v32 + 8) = v36;
    LOBYTE(v54) = 3;
    sub_24ED255F4(&qword_27F22E880, type metadata accessor for AchievementBadgeModel, &unk_24FA166E0);
    sub_24F92CC68();
    v41[0] = 0;
    v37 = v48;
    sub_24ED25420(v9, v32 + *(v48 + 28));
    v57 = 4;
    sub_24ED25484();
    sub_24F92CC68();
    *(v32 + *(v37 + 32)) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v57 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v54, v52, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v54) = 6;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v27, v53 + v34, &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v54) = 7;
    sub_24ED255F4(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v38 = v43;
    sub_24F92CC18();
    (*(v46 + 8))(v47, v28);
    v39 = v53;
    sub_24E61DA68(v38, v53 + v50, &qword_27F213E68, &unk_24F93BC80);
    sub_24ED254D8(v39, v42, type metadata accessor for AchievementRow);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24ED25540(v39, type metadata accessor for AchievementRow);
  }
}

unint64_t sub_24ED2354C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x4F79616C70736964;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7470697263736564;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24ED2365C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24ED25820(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ED23684(uint64_t a1)
{
  v2 = sub_24ED253CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ED236C0(uint64_t a1)
{
  v2 = sub_24ED253CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ED236FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24ED2382C()
{
  result = qword_27F22E750;
  if (!qword_27F22E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E750);
  }

  return result;
}

uint64_t sub_24ED23880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v4 = sub_24F924B38();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E768, &qword_24F999628);
  v51[1] = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E770, &qword_24F999630);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = v51 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E778, &qword_24F999638);
  MEMORY[0x28223BE20](v59);
  v54 = v51 - v12;
  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E780, &unk_24F999640) + 44)];
  v60 = a1;
  sub_24ED23F00(a1, v2, v13);
  v14 = *(v2 + 32);
  v15 = &v9[*(v7 + 36)];
  v16 = sub_24F924258();
  v17 = *MEMORY[0x277CE0118];
  v18 = *(v5 + 104);
  v18(&v15[*(v16 + 20)], v17, v4);
  *v15 = v14;
  *(v15 + 1) = v14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v20 = *(v19 + 36);
  v21 = type metadata accessor for GradientBackground(0);
  (*(*(v21 - 8) + 56))(&v15[v20], 1, 1, v21);
  *&v15[*(v19 + 40)] = 0;
  v62 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E788, &qword_24F999650);
  sub_24ED250CC();
  sub_24E6A4C1C();
  sub_24ED251B0();
  v22 = v55;
  v24 = v56;
  v23 = v57;
  sub_24F926B08();
  v25 = v9;
  v26 = v54;
  sub_24E601704(v25, &qword_27F22E768, &qword_24F999628);
  v27 = v58;
  v28 = v52;
  v18(v58, v17, v52);
  v63[3] = v16;
  v63[4] = sub_24ED255F4(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v30 = *(v16 + 20);
  v31 = v53;
  (*(v53 + 16))(boxed_opaque_existential_1 + v30, v27, v28);
  *boxed_opaque_existential_1 = v14;
  boxed_opaque_existential_1[1] = v14;
  (*(v31 + 8))(v27, v28);
  sub_24E60169C(v63, v26, &qword_27F22E7C8, &qword_24F999668);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7D0, &qword_24F999670);
  (*(v24 + 16))(v26 + v32[9], v22, v23);
  v33 = v26 + v32[10];
  *v33 = sub_24F923398() & 1;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35 & 1;
  v36 = v26 + v32[11];
  *v36 = swift_getKeyPath();
  *(v36 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v37 = qword_27F24E488;
  v38 = sub_24F923398();
  v40 = v39;
  v42 = v41;
  v43 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7D8, &unk_24F9996A0) + 36);
  *v43 = v37;
  *(v43 + 8) = v38 & 1;
  *(v43 + 16) = v40;
  *(v43 + 24) = v42 & 1;
  LOBYTE(v37) = sub_24F923398();
  v45 = v44;
  LOBYTE(v40) = v46;
  sub_24E601704(v63, &qword_27F22E7C8, &qword_24F999668);
  (*(v24 + 8))(v22, v23);
  v47 = v26 + *(v59 + 36);
  *v47 = v37 & 1;
  *(v47 + 8) = v45;
  *(v47 + 16) = v40 & 1;
  v48 = type metadata accessor for AchievementRow(0);
  sub_24E60169C(v60 + *(v48 + 36), v63, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v63, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v49 = sub_24F9248C8();
  __swift_project_value_buffer(v49, qword_27F39F078);
  sub_24ED25270();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v26, &qword_27F22E778, &qword_24F999638);
}

uint64_t sub_24ED23F00@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E818, &qword_24F9996C8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E820, &qword_24F9996D0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v50 - v17);
  v19 = *(type metadata accessor for AchievementRow(0) + 28);
  v20 = type metadata accessor for AchievementBadge(0);
  v21 = *(v20 + 20);
  v50 = a1;
  sub_24ED254D8(a1 + v19, v18 + v21, type metadata accessor for AchievementBadgeModel);
  sub_24ED22628(v52);
  *v18 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
  swift_storeEnumTagMultiPayload();
  v22 = v18 + *(v20 + 24);
  v23 = v52[3];
  *(v22 + 2) = v52[2];
  *(v22 + 3) = v23;
  *(v22 + 8) = v53;
  v24 = v52[1];
  *v22 = v52[0];
  *(v22 + 1) = v24;
  v25 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  v27 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E828, &qword_24F999740) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  LOBYTE(v25) = sub_24F925808();
  v28 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E830, &qword_24F999748) + 36);
  *v28 = v25;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = *a2;
  sub_24F927618();
  sub_24F9238C8();
  v30 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E838, &qword_24F999750) + 36));
  v31 = v55;
  *v30 = v54;
  v30[1] = v31;
  v30[2] = v56;
  v32 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E840, &unk_24F999758) + 36);
  v33 = *(sub_24F924258() + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_24F924B38();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  *v32 = v29;
  *(v32 + 1) = v29;
  *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  LOBYTE(v34) = sub_24F925808();
  sub_24F923318();
  v36 = v18 + *(v13 + 44);
  *v36 = v34;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  *v11 = sub_24F924C88();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E848, &qword_24F999768);
  sub_24ED24394(v50, a2, &v11[*(v41 + 44)]);
  LOBYTE(v33) = sub_24F925858();
  sub_24F923318();
  v42 = &v11[*(v6 + 44)];
  *v42 = v33;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  sub_24E60169C(v18, v15, &qword_27F22E820, &qword_24F9996D0);
  sub_24E60169C(v11, v8, &qword_27F22E818, &qword_24F9996C8);
  v47 = v51;
  sub_24E60169C(v15, v51, &qword_27F22E820, &qword_24F9996D0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E850, &qword_24F999770);
  sub_24E60169C(v8, v47 + *(v48 + 48), &qword_27F22E818, &qword_24F9996C8);
  sub_24E601704(v11, &qword_27F22E818, &qword_24F9996C8);
  sub_24E601704(v18, &qword_27F22E820, &qword_24F9996D0);
  sub_24E601704(v8, &qword_27F22E818, &qword_24F9996C8);
  return sub_24E601704(v15, &qword_27F22E820, &qword_24F9996D0);
}

uint64_t sub_24ED24394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a2;
  v101 = a3;
  v4 = sub_24F9259C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E858, &qword_24F999778) - 8;
  MEMORY[0x28223BE20](v103);
  v96 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v84 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E860, &qword_24F999780) - 8;
  MEMORY[0x28223BE20](v104);
  v100 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v99 = &v84 - v13;
  MEMORY[0x28223BE20](v14);
  v97 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v98 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v87 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v102 = &v84 - v21;
  v94 = a1;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  *&v112 = v22;
  *(&v112 + 1) = v23;
  v93 = sub_24E600AEC();

  v24 = sub_24F925E18();
  v26 = v25;
  v28 = v27;
  sub_24F9258D8();
  v92 = *MEMORY[0x277CE0A10];
  v29 = *(v5 + 104);
  v90 = v5 + 104;
  v91 = v29;
  v86 = v4;
  v29(v7);
  v85 = v7;
  sub_24F9259F8();

  v30 = *(v5 + 8);
  v88 = v5 + 8;
  v89 = v30;
  v30(v7, v4);
  v31 = sub_24F925C98();
  v33 = v32;
  LOBYTE(v5) = v34;
  v36 = v35;

  sub_24E600B40(v24, v26, v28 & 1);

  *&v112 = v31;
  *(&v112 + 1) = v33;
  LOBYTE(v5) = v5 & 1;
  LOBYTE(v113) = v5;
  *(&v113 + 1) = v36;
  v37 = v84;
  sub_24F9268B8();
  sub_24E600B40(v31, v33, v5);

  KeyPath = swift_getKeyPath();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B70, &unk_24F93E730);
  v40 = v37 + *(v39 + 36);
  *v40 = KeyPath;
  *(v40 + 8) = 2;
  *(v40 + 16) = 0;
  LOBYTE(KeyPath) = sub_24F925828();
  sub_24F923318();
  v41 = v37 + *(v103 + 44);
  *v41 = KeyPath;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  *(v41 + 24) = v44;
  *(v41 + 32) = v45;
  *(v41 + 40) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v46 = v87;
  sub_24E6009C8(v37, v87, &qword_27F22E858, &qword_24F999778);
  v47 = (v46 + *(v104 + 44));
  v48 = v110;
  v47[4] = v109;
  v47[5] = v48;
  v47[6] = v111;
  v49 = v106;
  *v47 = v105;
  v47[1] = v49;
  v50 = v108;
  v47[2] = v107;
  v47[3] = v50;
  sub_24E6009C8(v46, v102, &qword_27F22E860, &qword_24F999780);
  v51 = *(v94 + 64);
  *&v112 = *(v94 + 56);
  *(&v112 + 1) = v51;

  v52 = sub_24F925E18();
  v54 = v53;
  LOBYTE(v37) = v55;
  sub_24F9258D8();
  v56 = v85;
  v57 = v86;
  v91(v85, v92, v86);
  sub_24F9259F8();

  v89(v56, v57);
  v58 = sub_24F925C98();
  v60 = v59;
  LOBYTE(v56) = v61;
  v63 = v62;

  sub_24E600B40(v52, v54, v37 & 1);

  *&v112 = v58;
  *(&v112 + 1) = v60;
  LOBYTE(v113) = v56 & 1;
  *(&v113 + 1) = v63;
  v64 = v96;
  sub_24F9268B8();
  sub_24E600B40(v58, v60, v56 & 1);

  v65 = swift_getKeyPath();
  v66 = v64 + *(v39 + 36);
  *v66 = v65;
  *(v66 + 8) = 2;
  *(v66 + 16) = 0;
  LOBYTE(v52) = sub_24F925828();
  sub_24F923318();
  v67 = v64 + *(v103 + 44);
  *v67 = v52;
  *(v67 + 8) = v68;
  *(v67 + 16) = v69;
  *(v67 + 24) = v70;
  *(v67 + 32) = v71;
  *(v67 + 40) = 0;
  sub_24F927628();
  sub_24F9242E8();
  v72 = v97;
  sub_24E6009C8(v64, v97, &qword_27F22E858, &qword_24F999778);
  v73 = (v72 + *(v104 + 44));
  v74 = v117;
  v73[4] = v116;
  v73[5] = v74;
  v73[6] = v118;
  v75 = v113;
  *v73 = v112;
  v73[1] = v75;
  v76 = v115;
  v73[2] = v114;
  v73[3] = v76;
  v77 = v98;
  sub_24E6009C8(v72, v98, &qword_27F22E860, &qword_24F999780);
  v78 = v102;
  v79 = v99;
  sub_24E60169C(v102, v99, &qword_27F22E860, &qword_24F999780);
  v80 = v100;
  sub_24E60169C(v77, v100, &qword_27F22E860, &qword_24F999780);
  v81 = v101;
  sub_24E60169C(v79, v101, &qword_27F22E860, &qword_24F999780);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E868, &qword_24F9997C0);
  sub_24E60169C(v80, v81 + *(v82 + 48), &qword_27F22E860, &qword_24F999780);
  sub_24E601704(v77, &qword_27F22E860, &qword_24F999780);
  sub_24E601704(v78, &qword_27F22E860, &qword_24F999780);
  sub_24E601704(v80, &qword_27F22E860, &qword_24F999780);
  return sub_24E601704(v79, &qword_27F22E860, &qword_24F999780);
}

uint64_t sub_24ED24C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F924258();
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_24F927618();
  v12 = v11;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E788, &qword_24F999650) + 36);
  v14 = *(a2 + 32);
  v15 = *(v7 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_24F924B38();
  (*(*(v17 - 8) + 104))(&v9[v15], v16, v17);
  *v9 = v14;
  *(v9 + 1) = v14;
  LODWORD(v16) = sub_24F925188();
  sub_24F923658();
  v18 = MEMORY[0x277CDFC08];
  sub_24ED254D8(v9, v13, MEMORY[0x277CDFC08]);
  v19 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8, &qword_24FA00310) + 36);
  v20 = v32;
  *v19 = *&v31[8];
  *(v19 + 16) = v20;
  *(v19 + 32) = v33;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800, &qword_24F9996B0);
  *(v13 + *(v21 + 52)) = v16;
  *(v13 + *(v21 + 56)) = 256;
  v22 = sub_24F927618();
  v24 = v23;
  sub_24ED25540(v9, v18);
  v25 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808, &qword_24F9996B8) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810, &qword_24F9996C0) + 36);
  v27 = *MEMORY[0x277CE13B8];
  v28 = sub_24F927748();
  (*(*(v28 - 8) + 104))(v13 + v26, v27, v28);
  v29 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7C0, &qword_24F999660) + 36));
  *v29 = v10;
  v29[1] = v12;
  return sub_24E60169C(a1, a3, &qword_27F22E768, &qword_24F999628);
}

unint64_t sub_24ED24FC4()
{
  result = qword_27F22E760;
  if (!qword_27F22E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E760);
  }

  return result;
}

unint64_t sub_24ED250CC()
{
  result = qword_27F22E790;
  if (!qword_27F22E790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E768, &qword_24F999628);
    sub_24E602068(&qword_27F22E798, &qword_27F22E7A0, &qword_24F999658, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E790);
  }

  return result;
}

unint64_t sub_24ED251B0()
{
  result = qword_27F22E7B0;
  if (!qword_27F22E7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E788, &qword_24F999650);
    sub_24ED250CC();
    sub_24E602068(&qword_27F22E7B8, &qword_27F22E7C0, &qword_24F999660, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E7B0);
  }

  return result;
}

unint64_t sub_24ED25270()
{
  result = qword_27F22E7E0;
  if (!qword_27F22E7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E778, &qword_24F999638);
    sub_24ED252FC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E7E0);
  }

  return result;
}

unint64_t sub_24ED252FC()
{
  result = qword_27F22E7E8;
  if (!qword_27F22E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E7D8, &unk_24F9996A0);
    sub_24E602068(&qword_27F22E7F0, &qword_27F22E7D0, &qword_24F999670, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E7E8);
  }

  return result;
}

unint64_t sub_24ED253CC()
{
  result = qword_27F22E878;
  if (!qword_27F22E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E878);
  }

  return result;
}

uint64_t sub_24ED25420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementBadgeModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ED25484()
{
  result = qword_27F22E888;
  if (!qword_27F22E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E888);
  }

  return result;
}

uint64_t sub_24ED254D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ED25540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ED255A0()
{
  result = qword_27F22E8A0;
  if (!qword_27F22E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8A0);
  }

  return result;
}

uint64_t sub_24ED255F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ED2564C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ED2566C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_24ED256B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22E778, &qword_24F999638);
  sub_24ED25270();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24ED2571C()
{
  result = qword_27F22E8A8;
  if (!qword_27F22E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8A8);
  }

  return result;
}

unint64_t sub_24ED25774()
{
  result = qword_27F22E8B0;
  if (!qword_27F22E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8B0);
  }

  return result;
}

unint64_t sub_24ED257CC()
{
  result = qword_27F22E8B8;
  if (!qword_27F22E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8B8);
  }

  return result;
}

uint64_t sub_24ED25820(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA5B320 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4F79616C70736964 && a2 == 0xED00006E6F697470 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t SmallBreakoutLayout.init(metrics:iconView:detailsView:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1[11];
  a4[10] = a1[10];
  a4[11] = v6;
  v7 = a1[13];
  a4[12] = a1[12];
  a4[13] = v7;
  v8 = a1[7];
  a4[6] = a1[6];
  a4[7] = v8;
  v9 = a1[9];
  a4[8] = a1[8];
  a4[9] = v9;
  v10 = a1[3];
  a4[2] = a1[2];
  a4[3] = v10;
  v11 = a1[5];
  a4[4] = a1[4];
  a4[5] = v11;
  v12 = a1[1];
  *a4 = *a1;
  a4[1] = v12;
  sub_24E612C80(a2, (a4 + 14));

  return sub_24E612C80(a3, a4 + 264);
}

uint64_t SmallBreakoutLayout.Metrics.init(iconSize:iconRotation:iconBottomOffset:detailsTrailingMargin:detailsWidth:layoutMargins:height:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>, double a12@<D6>)
{
  *(a5 + 56) = 0;
  *(a5 + 40) = 0u;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 24) = 0u;
  *(a5 + 16) = a8;
  sub_24EA63A70(a1, a5 + 24);
  sub_24E612C80(a2, a5 + 64);
  v20 = a3[1];
  *(a5 + 104) = *a3;
  *(a5 + 120) = v20;
  *(a5 + 129) = *(a3 + 25);
  *(a5 + 152) = a9;
  *(a5 + 160) = a10;
  *(a5 + 168) = a11;
  *(a5 + 176) = a12;

  return sub_24E612C80(a4, a5 + 184);
}

uint64_t SmallBreakoutLayout.Metrics.detailsTrailingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 64));

  return sub_24E612C80(a1, v1 + 64);
}

void SmallBreakoutLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t SmallBreakoutLayout.Metrics.height.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 184));

  return sub_24E612C80(a1, v1 + 184);
}

__n128 SmallBreakoutLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

__n128 sub_24ED25EB8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 176);
  a2[10] = *(a1 + 160);
  a2[11] = v2;
  v3 = *(a1 + 208);
  a2[12] = *(a1 + 192);
  a2[13] = v3;
  v4 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v4;
  v5 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v5;
  v6 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v6;
  v7 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v9;
  return result;
}

double static SmallBreakoutLayout.estimatedMeasurements(fitting:using:in:)(void *a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[26];
  __swift_project_boxed_opaque_existential_1(a1 + 23, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t SmallBreakoutLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v6 = v5;
  v12 = sub_24F92CDB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  sub_24F92C1C8();
  x = v55.origin.x;
  y = v55.origin.y;
  width = v55.size.width;
  height = v55.size.height;
  v20 = CGRectGetWidth(v55);
  sub_24E9D43B0(a1, v20);
  v56.origin.x = x;
  v56.origin.y = y;
  v56.size.width = width;
  v56.size.height = height;
  CGRectGetHeight(v56);
  __swift_project_boxed_opaque_existential_1(v6 + 33, v6[36]);
  sub_24F922288();
  v48 = v21;
  v47 = v22;
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = x;
  v58.origin.y = y;
  v39 = width;
  v58.size.width = width;
  v38 = height;
  v58.size.height = height;
  MidY = CGRectGetMidY(v58);
  v23 = *(v5 + 8);
  v24 = *v5;
  CGAffineTransformMakeRotation(&v54, *(v5 + 16) * 0.0174532925);
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.width = v24;
  v59.size.height = v23;
  v60 = CGRectApplyAffineTransform(v59, &v54);
  v25 = v60.origin.x;
  v26 = v60.origin.y;
  v27 = v60.size.width;
  v28 = v60.size.height;
  v41 = CGRectGetWidth(v60);
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v24;
  v61.size.height = v23;
  v40 = CGRectGetWidth(v61);
  v62.origin.x = v25;
  v62.origin.y = v26;
  v62.size.width = v27;
  v62.size.height = v28;
  v29 = CGRectGetHeight(v62);
  v63.origin.x = 0.0;
  v63.origin.y = 0.0;
  v43 = v24;
  v63.size.width = v24;
  v50 = v23;
  v63.size.height = v23;
  v30 = CGRectGetHeight(v63);
  sub_24E930DFC(v5 + 24, &v52);
  if (v53)
  {
    v31 = (v29 - v30) * -0.5;
    sub_24E612C80(&v52, &v54);
    v64.origin.x = v49;
    v64.origin.y = v44;
    v64.size.width = v45;
    v64.size.height = v46;
    v32 = CGRectGetMaxY(v64) - v50;
    v33 = *&v54.d;
    __swift_project_boxed_opaque_existential_1(&v54, *&v54.d);
    sub_24E8ED7D8(v33);
    v34 = sub_24F9223A8();
    (*(v13 + 8))(v15, v12);
    v39 = v32 - v34 + v31;
    __swift_destroy_boxed_opaque_existential_1(&v54);
  }

  else
  {
    sub_24E930E6C(&v52);
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v39;
    v65.size.height = v38;
    v39 = floor(CGRectGetMidY(v65) + v50 * -0.5);
  }

  v66.origin.y = floor(MidY - v47 * 0.5);
  v46 = v66.origin.y;
  v66.origin.x = MinX;
  v66.size.width = v48;
  v66.size.height = v47;
  CGRectGetMaxX(v66);
  v35 = v6[11];
  __swift_project_boxed_opaque_existential_1(v6 + 8, v35);
  sub_24E8ED7D8(v35);
  sub_24F9223A8();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1(v6 + 28, v6[31]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v6 + 33, v6[36]);
  sub_24F92C1D8();
  sub_24F922228();
  return sub_24F922128();
}

double static SmallBreakoutLayout.rotatedIconFrameOffsets(rotation:iconSize:)(double a1, CGFloat a2, CGFloat a3)
{
  CGAffineTransformMakeRotation(&v12, a1 * 0.0174532925);
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  v13.size.width = a2;
  v13.size.height = a3;
  v14 = CGRectApplyAffineTransform(v13, &v12);
  x = v14.origin.x;
  y = v14.origin.y;
  width = v14.size.width;
  height = v14.size.height;
  v9 = CGRectGetWidth(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = a2;
  v15.size.height = a3;
  v10 = (v9 - CGRectGetWidth(v15)) * 0.5;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  CGRectGetHeight(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a2;
  v17.size.height = a3;
  CGRectGetHeight(v17);
  return v10;
}

uint64_t sub_24ED26654(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24ED26A0C();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

unint64_t sub_24ED266C4()
{
  result = qword_27F22E8C0;
  if (!qword_27F22E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8C0);
  }

  return result;
}

double sub_24ED26718(void *a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[26];
  __swift_project_boxed_opaque_existential_1(a1 + 23, v9);
  sub_24E8ED7D8(v9);
  sub_24F9223A8();
  (*(v6 + 8))(v8, v5);
  return a3;
}

uint64_t sub_24ED26854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED2689C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24ED2693C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24ED26984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24ED26A0C()
{
  result = qword_27F22E8C8;
  if (!qword_27F22E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22E8C8);
  }

  return result;
}

uint64_t sub_24ED26AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922378();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24ED26B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_24F922378();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24ED26D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922378();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ED26E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922378();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PlaceholderChartOrCategoryBrickFontStyles(uint64_t a1)
{
  result = qword_27F22E8D0;
  if (!qword_27F22E8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ED26ED4(uint64_t a1)
{
  result = sub_24F922378();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void (*TodayCardMediaMediumLockupWithScreenshots.init(deserializing:using:)(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v3 = v2;
  v6 = *v3;
  v45 = v3;
  v38 = v6;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v36 - v11;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v48 = sub_24F928388();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v36 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v36 - v19;
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v36 - v22;
  sub_24F929608();
  sub_24F928398();
  v44 = v8;
  v24 = *(v8 + 16);
  v24(v16, a2, v7);
  v43 = v23;
  v25 = v40;
  sub_24F929548();
  v24(v25, a2, v7);
  v26 = v39;
  v46 = a1;
  sub_24F928398();
  v27 = v41;
  v24(v41, v25, v7);
  type metadata accessor for MediumAdLockupWithScreenshotsBackground(0);
  swift_allocObject();
  v28 = v42;
  v29 = MediumAdLockupWithScreenshotsBackground.init(deserializing:using:)(v26, v27);
  if (v28)
  {
    v30 = *(v44 + 8);
    (v30)(a2, v7);
    (*(v47 + 8))(v46, v48);
    (v30)(v25, v7);
    sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v31 = v46;
    *(v45 + OBJC_IVAR____TtC12GameStoreKit41TodayCardMediaMediumLockupWithScreenshots_mediumAdLockupWithScreenshotsBackground) = v29;
    v32 = v36;
    (*(v47 + 16))(v36, v31, v48);
    v33 = v37;
    v24(v37, a2, v7);
    v30 = TodayCardMedia.init(deserializing:using:)(v32, v33);
    v35 = *(v44 + 8);
    v35(a2, v7);
    (*(v47 + 8))(v46, v48);
    v35(v25, v7);
    sub_24E601704(v43, &qword_27F213E68, &unk_24F93BC80);
  }

  return v30;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.__allocating_init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TodayCardMediaMediumLockupWithScreenshots.init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(a1, a2);
  return v4;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.init(mediumAdLockupWithScreenshotsBackground:impressionMetrics:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - v11;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit41TodayCardMediaMediumLockupWithScreenshots_mediumAdLockupWithScreenshotsBackground) = a1;
  v13 = sub_24F929608();
  memset(v27, 0, sizeof(v27));
  v28 = 0;
  v14 = *(v13 - 8);
  (*(v14 + 16))(v12, a2, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_24E65E064(v27, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v21, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v14 + 8))(a2, v13);
  sub_24E601704(v27, &qword_27F235830, &qword_24F93B8C0);
  v18 = v25;
  *(v3 + 32) = v24;
  *(v3 + 48) = v18;
  *(v3 + 64) = v26;
  sub_24E65E0D4(v12, v3 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v3 + 16) = 12;
  *(v3 + 24) = 1;
  return v3;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaMediumLockupWithScreenshots.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaMediumLockupWithScreenshots(uint64_t a1)
{
  result = qword_27F22E8E0;
  if (!qword_27F22E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShelfBasedCollectionViewController.makeShelfComponentTypeMappingProvider()@<X0>(uint64_t *a2@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_24F92C888();
  v4 = sub_24F92D1E8();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](0xD00000000000007CLL, 0x800000024FA5B3C0);
  v7[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v7);
  sub_24F92A5B8();

  v5 = type metadata accessor for EmptyShelfComponentTypeMappingProvider();
  result = swift_allocObject();
  a2[3] = v5;
  a2[4] = &protocol witness table for EmptyShelfComponentTypeMappingProvider;
  *a2 = result;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makePageGridProvider()@<X0>(uint64_t a2@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_24F92C888();
  v4 = sub_24F92D1E8();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](0xD00000000000005ALL, 0x800000024FA5B440);
  v6[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v6);
  sub_24F92A5B8();

  *(a2 + 24) = &type metadata for EmptyPageGridProvider;
  *(a2 + 32) = &protocol witness table for EmptyPageGridProvider;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makeShelfLayoutSpacingProvider()@<X0>(uint64_t a2@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_24F92C888();
  v4 = sub_24F92D1E8();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](0xD00000000000006ELL, 0x800000024FA5B4A0);
  v6[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v6);
  sub_24F92A5B8();

  *(a2 + 24) = &type metadata for EmptyShelfLayoutSpacingProvider;
  *(a2 + 32) = &protocol witness table for EmptyShelfLayoutSpacingProvider;
  return result;
}

uint64_t ShelfBasedCollectionViewController.makeLayoutSectionProvider()@<X0>(uint64_t a2@<X8>)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v3 = sub_24F92AAE8();
  __swift_project_value_buffer(v3, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_24F92C888();
  v4 = sub_24F92D1E8();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](0xD000000000000064, 0x800000024FA5B510);
  v6[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v6);
  sub_24F92A5B8();

  *(a2 + 24) = &type metadata for EmptyLayoutSectionProvider;
  *(a2 + 32) = &protocol witness table for EmptyLayoutSectionProvider;
  return result;
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE09makeStateB09JetEngine09TransientjB0Cys11AnyHashableVGyF_0(uint64_t a1)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_24F92C888();
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](0xD000000000000053, 0x800000024FA5B6D0);
  v4[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v4);
  sub_24F92A588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23A6C0, &qword_24F9A56A0);
  swift_allocObject();
  return sub_24F929978();
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE04makeD21SupplementaryProviderAA0djK0_pyF_0(uint64_t a1)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_24F92C888();
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](0xD00000000000006ELL, 0x800000024FA5B660);
  v4[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v4);
  sub_24F92A5B8();

  type metadata accessor for EmptyShelfSupplementaryProvider();
  return swift_allocObject();
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE29makeItemSupplementaryProviderAA0jkL0_pyF_0(uint64_t a1)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_24F92C888();
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](0xD00000000000006CLL, 0x800000024FA5B5F0);
  v4[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v4);
  sub_24F92A5B8();

  type metadata accessor for EmptyItemSupplementaryProvider();
  return swift_allocObject();
}

uint64_t _s12GameStoreKit34ShelfBasedCollectionViewControllerPAAE04makeF16ElementsObserverAA0fjK0_pyF_0(uint64_t a1)
{
  if (qword_27F210578 != -1)
  {
    swift_once();
  }

  v1 = sub_24F92AAE8();
  __swift_project_value_buffer(v1, qword_27F39C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_24F92C888();
  v2 = sub_24F92D1E8();
  MEMORY[0x253050C20](v2);

  MEMORY[0x253050C20](0xD00000000000006ELL, 0x800000024FA5B580);
  v4[3] = MEMORY[0x277D837D0];
  sub_24F928438();
  sub_24E857CC8(v4);
  sub_24F92A5B8();

  type metadata accessor for EmptyCollectionElementsObserver();
  return swift_allocObject();
}

uint64_t EditorsChoiceLayout.init(metrics:badgeView:titleView:bodyView:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 192);
  v9 = *(a1 + 208);
  v10 = (a5 + 120);
  v11 = *(a1 + 160);
  v10[11] = *(a1 + 176);
  v10[12] = v8;
  v10[13] = v9;
  v12 = *(a1 + 96);
  *(a5 + 232) = *(a1 + 112);
  v13 = *(a1 + 144);
  *(a5 + 248) = *(a1 + 128);
  v10[9] = v13;
  v10[10] = v11;
  v14 = *(a1 + 32);
  *(a5 + 168) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(a5 + 184) = *(a1 + 64);
  *(a5 + 200) = v15;
  *(a5 + 216) = v12;
  v16 = *(a1 + 16);
  *(a5 + 120) = *a1;
  *(a5 + 136) = v16;
  *(a5 + 344) = *(a1 + 224);
  *(a5 + 152) = v14;
  sub_24E612C80(a2, a5);
  sub_24E612C80(a3, a5 + 40);

  return sub_24E612C80(a4, a5 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.init(badgeTopSpace:badgeBottomSpace:titleTopSpace:titleBottomSpace:bodyBottomSpace:marginInsets:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, double *a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  sub_24E612C80(a1, a6);
  sub_24E612C80(a2, (a6 + 5));
  sub_24E612C80(a3, (a6 + 10));
  sub_24E612C80(a4, (a6 + 15));
  result = sub_24E612C80(a5, (a6 + 20));
  a6[25] = a7;
  a6[26] = a8;
  a6[27] = a9;
  a6[28] = a10;
  return result;
}

uint64_t EditorsChoiceLayout.Metrics.badgeTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t EditorsChoiceLayout.Metrics.badgeBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t EditorsChoiceLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t EditorsChoiceLayout.Metrics.titleBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t EditorsChoiceLayout.Metrics.bodyBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

void EditorsChoiceLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = a3;
  v4[28] = a4;
}

__n128 EditorsChoiceLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

__n128 sub_24ED28D48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 208) = v2;
  *(a2 + 224) = *(a1 + 224);
  v3 = *(a1 + 144);
  *(a2 + 128) = *(a1 + 128);
  *(a2 + 144) = v3;
  v4 = *(a1 + 176);
  *(a2 + 160) = *(a1 + 160);
  *(a2 + 176) = v4;
  v5 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v5;
  v6 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v6;
  v7 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v7;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  return result;
}

double EditorsChoiceLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v23 = sub_24F92CDB8();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92C228();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v9 = sub_24F922238();
  v10 = 15;
  if (v9)
  {
    v10 = 25;
  }

  v11 = 18;
  if (v9)
  {
    v11 = 28;
  }

  v12 = 160;
  if (v9)
  {
    v12 = 240;
  }

  v22 = v12;
  v13 = 184;
  if (v9)
  {
    v13 = 264;
  }

  v21 = v13;
  v14 = v3[v11];
  __swift_project_boxed_opaque_existential_1(&v4[v10], v4[v11]);
  sub_24E8ED7D8(v14);
  sub_24F9223A8();
  v15 = *(v6 + 8);
  v16 = v23;
  v15(v8, v23);
  v17 = *(v4 + v21);
  __swift_project_boxed_opaque_existential_1((v4 + v22), v17);
  sub_24E8ED7D8(v17);
  sub_24F9223A8();
  v15(v8, v16);
  __swift_project_boxed_opaque_existential_1(v4 + 10, v4[13]);
  sub_24F922288();
  v18 = v4[38];
  __swift_project_boxed_opaque_existential_1(v4 + 35, v18);
  sub_24E8ED7D8(v18);
  sub_24F9223A8();
  v15(v8, v16);
  return a2;
}

uint64_t EditorsChoiceLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v54 = a2;
  v57 = sub_24F922C28();
  v53 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v49 = &v44 - v13;
  v14 = sub_24F92CDB8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a3;
  v56 = a4;
  v51 = a5;
  v52 = a6;
  sub_24F92C1C8();
  v19 = v18;
  v21 = v20;
  v58 = v22;
  v24 = v23;
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v25 = sub_24F922238();
  v26 = (v15 + 8);
  v47 = v21;
  v48 = v19;
  if (v25)
  {
    v27 = v6[28];
    __swift_project_boxed_opaque_existential_1(v6 + 25, v27);
    sub_24E8ED7D8(v27);
    v28 = sub_24F9223A8();
    v29 = *v26;
    (*v26)(v17, v14);
    v30 = v6[33];
    __swift_project_boxed_opaque_existential_1(v6 + 30, v30);
    sub_24E8ED7D8(v30);
    v45 = sub_24F9223A8();
    v29(v17, v14);
    __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
    v31 = v58;
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v6 + 5, v6[8]);
    v59.origin.x = v19;
    v59.origin.y = v21;
    v59.size.width = v31;
    v32 = v24;
    v59.size.height = v24;
    CGRectGetMinX(v59);
  }

  else
  {
    v33 = v6[18];
    __swift_project_boxed_opaque_existential_1(v6 + 15, v33);
    sub_24E8ED7D8(v33);
    v28 = sub_24F9223A8();
    v29 = *v26;
    (*v26)(v17, v14);
    v34 = v6[23];
    __swift_project_boxed_opaque_existential_1(v6 + 20, v34);
    sub_24E8ED7D8(v34);
    v45 = sub_24F9223A8();
    v29(v17, v14);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v35 = v58;
    sub_24F922288();
    v37 = v36;
    v60.origin.x = v19;
    v60.origin.y = v21;
    v60.size.width = v35;
    v32 = v24;
    v60.size.height = v24;
    floor(CGRectGetMidX(v60) + v37 * -0.5);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  }

  sub_24F922228();
  v46 = v28;
  __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
  v38 = v58;
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v6 + 10, v6[13]);
  v61.origin.y = v47;
  v61.origin.x = v48;
  v61.size.width = v38;
  v61.size.height = v32;
  CGRectGetMinX(v61);
  sub_24F922228();
  v39 = v6[38];
  __swift_project_boxed_opaque_existential_1(v6 + 35, v39);
  sub_24E8ED7D8(v39);
  sub_24F9223A8();
  v29(v17, v14);
  v62.origin.x = v55;
  v62.origin.y = v56;
  v62.size.width = v51;
  v62.size.height = v52;
  CGRectGetWidth(v62);
  v40 = v49;
  sub_24F922C08();
  v41 = v53;
  v42 = v57;
  (*(v53 + 16))(v50, v40, v57);
  sub_24F922188();
  return (*(v41 + 8))(v40, v42);
}

uint64_t sub_24ED296C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_24ED2970C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

GameStoreKit::TitledParagraphStyle_optional __swiftcall TitledParagraphStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t TitledParagraphStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x6C6961746564;
  }

  else
  {
    return 0x776569767265766FLL;
  }
}

uint64_t sub_24ED29864(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6961746564;
  }

  else
  {
    v3 = 0x776569767265766FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6961746564;
  }

  else
  {
    v5 = 0x776569767265766FLL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24ED29908()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED29988(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24ED299F4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24ED29A70@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24ED29AD0(uint64_t *a1@<X8>)
{
  v2 = 0x776569767265766FLL;
  if (*v1)
  {
    v2 = 0x6C6961746564;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id sub_24ED29B14()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_24ED29B70(uint64_t a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void (*sub_24ED29B7C(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24ED29B14();
  return sub_24ED29BC4;
}

void sub_24ED29BC4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

id sub_24ED29BDC()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = v0;
    v4 = sub_24EFED3B0();
    v5 = *(v0 + 40);
    *(v3 + 40) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void sub_24ED29C38(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void (*sub_24ED29C44(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_24ED29BDC();
  return sub_24ED29C8C;
}

void sub_24ED29C8C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t TitledParagraph.primarySubtitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TitledParagraph.secondarySubtitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t TitledParagraph.__allocating_init(id:text:wantsCollapsedNewlines:primarySubtitle:secondarySubtitle:style:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  LODWORD(v45) = a3;
  v44 = a2;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v46 = *a8;
  *(v18 + 24) = 0;
  *(v18 + 40) = 0;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 160) = 0;
  v47 = a1;
  sub_24E60169C(a1, &v50, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v51 + 1))
  {
    v19 = v51;
    *(v18 + 88) = v50;
    *(v18 + 104) = v19;
    *(v18 + 120) = v52;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v48 = v20;
    v49 = v26;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830, &qword_24F93B8C0);
  }

  swift_beginAccess();
  v27 = byte_27F236A29;
  v28 = type metadata accessor for LanguageAwareString();
  v29 = objc_allocWithZone(v28);
  v30 = v44;
  v31 = sub_24EFF0E44(v30, 0, v27);

  *(v18 + 16) = v31;
  if (v45)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v45 = a4;
    v33 = v32;
    v44 = [v32 length];
    v34 = [v33 mutableString];
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = sub_24F92B098();
    v39 = sub_24F92B098();
    [v34 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v44}];

    a7 = v37;
    a6 = v36;
    a5 = v35;

    LOBYTE(v35) = byte_27F236A29;
    v40 = objc_allocWithZone(v28);
    v41 = sub_24EFF0E44(v33, 0, v35);

    a4 = v45;
    sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);

    v41 = v31;
  }

  *(v18 + 32) = v41;
  *(v18 + 48) = a4;
  *(v18 + 56) = a5;
  *(v18 + 64) = a6;
  *(v18 + 72) = a7;
  *(v18 + 80) = v46;
  return v18;
}

uint64_t TitledParagraph.init(id:text:wantsCollapsedNewlines:primarySubtitle:secondarySubtitle:style:)(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8)
{
  v9 = v8;
  LODWORD(v45) = a3;
  v44 = a2;
  v16 = sub_24F91F6B8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a8;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0;
  v46 = a1;
  sub_24E60169C(a1, &v50, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v51 + 1))
  {
    v53 = v50;
    v54 = v51;
    v55 = v52;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    v26 = v25;
    (*(v17 + 8))(v19, v16);
    v48 = v20;
    v49 = v26;
    a7 = v24;
    a6 = v23;
    a5 = v22;
    a4 = v21;
    sub_24F92C7F8();
    sub_24E601704(&v50, &qword_27F235830, &qword_24F93B8C0);
  }

  v27 = v54;
  *(v9 + 88) = v53;
  *(v9 + 104) = v27;
  *(v9 + 120) = v55;
  swift_beginAccess();
  v28 = byte_27F236A29;
  v29 = type metadata accessor for LanguageAwareString();
  objc_allocWithZone(v29);
  v30 = v44;
  v31 = sub_24EFF0E44(v30, 0, v28);

  *(v9 + 16) = v31;
  if (v45)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v45 = a4;
    v33 = v32;
    v44 = [v32 length];
    v34 = [v33 mutableString];
    v35 = a5;
    v36 = a6;
    v37 = a7;
    v38 = sub_24F92B098();
    v39 = sub_24F92B098();
    [v34 replaceOccurrencesOfString:v38 withString:v39 options:1024 range:{0, v44}];

    a7 = v37;
    a6 = v36;
    a5 = v35;

    LOBYTE(v35) = byte_27F236A29;
    v40 = objc_allocWithZone(v29);
    v41 = sub_24EFF0E44(v33, 0, v35);

    a4 = v45;
    sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);
  }

  else
  {
    sub_24E601704(v46, &qword_27F235830, &qword_24F93B8C0);

    v41 = *(v9 + 16);
  }

  *(v9 + 32) = v41;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 80) = v47;
  return v9;
}
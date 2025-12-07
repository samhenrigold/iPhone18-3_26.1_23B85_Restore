uint64_t sub_1C1B7953C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_1C1B795B4()
{
  result = qword_1EDE6BC30;
  if (!qword_1EDE6BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC30);
  }

  return result;
}

uint64_t sub_1C1B79608(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B79650()
{
  result = qword_1EDE6C318;
  if (!qword_1EDE6C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C318);
  }

  return result;
}

unint64_t sub_1C1B796A4()
{
  result = qword_1EDE6BE00;
  if (!qword_1EDE6BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE00);
  }

  return result;
}

unint64_t sub_1C1B796F8()
{
  result = qword_1EDE6C258;
  if (!qword_1EDE6C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C258);
  }

  return result;
}

uint64_t sub_1C1B7974C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9CA0;

  return sub_1C1B72B7C(a1, v4, v5, v6, v7, v8);
}

id sub_1C1B79814(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1C1B944C8();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1C1B94458();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1C1B798D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C1AF5DAC(a1, a2);
  }

  return a1;
}

uint64_t sub_1C1B798E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09900, &qword_1C1BA3DF8);
    sub_1C1AD0C9C(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B79974(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09908, &qword_1C1BA3E00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B799EC()
{
  result = qword_1EDE6C320;
  if (!qword_1EDE6C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C320);
  }

  return result;
}

unint64_t sub_1C1B79A40()
{
  result = qword_1EDE6C270;
  if (!qword_1EDE6C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C270);
  }

  return result;
}

unint64_t sub_1C1B79A94()
{
  result = qword_1EDE6BE08;
  if (!qword_1EDE6BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE08);
  }

  return result;
}

unint64_t sub_1C1B79AE8()
{
  result = qword_1EDE6C2A8;
  if (!qword_1EDE6C2A8)
  {
    sub_1C1AC3404(&qword_1EBF09940, &qword_1C1BA3E20);
    sub_1C1AC1FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2A8);
  }

  return result;
}

unint64_t sub_1C1B79B6C()
{
  result = qword_1EDE6BE90;
  if (!qword_1EDE6BE90)
  {
    sub_1C1AC3404(&qword_1EBF09948, &qword_1C1BA3E28);
    sub_1C1B1D3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE90);
  }

  return result;
}

unint64_t sub_1C1B79BF0()
{
  result = qword_1EDE6B828;
  if (!qword_1EDE6B828)
  {
    sub_1C1AC3404(&unk_1EBF09950, &qword_1C1BA3E30);
    sub_1C1B799EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B828);
  }

  return result;
}

void sub_1C1B79C74(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }
}

uint64_t sub_1C1B79C8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return sub_1C1AA7E30(v8 + v9, a5, a3, a4);
}

uint64_t sub_1C1B79CFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t (*a3)(void)@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  return a3();
}

uint64_t sub_1C1B79D5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1C1B79DB0(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for PromotedContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PromotedContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B7B078()
{
  result = qword_1EBF09960;
  if (!qword_1EBF09960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09960);
  }

  return result;
}

unint64_t sub_1C1B7B0D0()
{
  result = qword_1EDE6BC18;
  if (!qword_1EDE6BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC18);
  }

  return result;
}

unint64_t sub_1C1B7B128()
{
  result = qword_1EDE6BC20;
  if (!qword_1EDE6BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BC20);
  }

  return result;
}

unint64_t sub_1C1B7B17C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B958A8();

  if (v2 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B7B1D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9CA0;

  return sub_1C1B6BFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C1B7B298(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1C6908230);
  }

  return result;
}

void sub_1C1B7B2E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1C1B94D78();
  (*(v3 + 16))(v3, v4);
}

unint64_t sub_1C1B7B340()
{
  result = qword_1EDE6C9F8;
  if (!qword_1EDE6C9F8)
  {
    sub_1C1AA576C(255, &qword_1EDE6CA00, 0x1E698A050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C9F8);
  }

  return result;
}

uint64_t sub_1C1B7B3A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C1B7B3F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C1AB9A98;

  return sub_1C1B6BFF8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1C1B7B4F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return sub_1C1B95218();
}

id sub_1C1B7B560()
{
  v30 = sub_1C1B94BF8();
  v0 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v2 = (&v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1C1B94C58();
  v3 = *(v29 - 8);
  v4 = MEMORY[0x1EEE9AC00](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v27 = (v9 + 16);
  v10 = dispatch_semaphore_create(0);
  v28 = objc_opt_self();
  sub_1C1AA576C(0, &qword_1EBF099D8, 0x1E6986088);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  aBlock[4] = sub_1C1B7BC70;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C1B49F5C;
  aBlock[3] = &unk_1F4153EF8;
  v13 = _Block_copy(aBlock);

  v14 = v10;

  [v28 fetchConfigurationForClass:ObjCClassFromMetadata completion:v13];
  _Block_release(v13);
  sub_1C1B94C48();
  *v2 = 1;
  v15 = v30;
  (*(v0 + 104))(v2, *MEMORY[0x1E69E7F48], v30);
  MEMORY[0x1C6906C80](v6, v2);
  (*(v0 + 8))(v2, v15);
  v16 = *(v3 + 8);
  v17 = v29;
  v16(v6, v29);
  sub_1C1B95208();
  v16(v8, v17);
  if ((sub_1C1B94C08() & 1) != 0 && (v18 = v27, swift_beginAccess(), *v18) && (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) != 0))
  {
    v20 = v19;
    swift_unknownObjectRetain();
    v21 = [v20 m1409Left];
    v22 = [v21 integerValue];

    v23 = [v20 m1409VoiceLeft];
    [v23 integerValue];

    v24 = [v20 m1409ConfigVersion];
    [v24 integerValue];

    swift_unknownObjectRelease();
  }

  else
  {
    v25 = sub_1C1B94D78();
    APSimulateCrash();

    v22 = 0;
    v14 = v25;
  }

  return v22;
}

id sub_1C1B7BA08()
{
  v0 = sub_1C1B7B560();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v8 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v9 = swift_allocObject();
  v10 = 0;
  v11 = 0;
  *(v9 + 16) = xmmword_1C1B98E60;
  v12 = MEMORY[0x1E69E6158];
  if ((v6 & 1) == 0)
  {
    sub_1C1AC1F08(&qword_1EBF09968, &qword_1C1BA41B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9EEE0;
    *(inited + 32) = 0x66654C393034316DLL;
    *(inited + 40) = 0xE900000000000074;
    *(inited + 48) = v0;
    strcpy((inited + 56), "m1409VoiceLeft");
    *(inited + 71) = -18;
    *(inited + 72) = v2;
    *(inited + 80) = 0xD000000000000012;
    *(inited + 88) = 0x80000001C1BAC780;
    *(inited + 96) = v4;
    sub_1C1AD49F0(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&qword_1EBF09970, qword_1C1BA41B8);
    swift_arrayDestroy();
    v10 = sub_1C1B94CC8();
    v11 = v14;

    v12 = MEMORY[0x1E69E6158];
  }

  *(v9 + 56) = v12;
  *(v9 + 64) = sub_1C1AA5E7C();
  v15 = 7104878;
  if (v11)
  {
    v15 = v10;
  }

  v16 = 0xE300000000000000;
  if (v11)
  {
    v16 = v11;
  }

  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  sub_1C1B94BA8(v7, &dword_1C1AA2000, v8, "Received ClientMetrics config from the daemon: %{public}@", 57, 2, v9);

  return v0;
}

id JourneyMetricsHelper.__allocating_init(promotedContentIdentifier:contextIdentifier:journeyIdentifier:orderVendor:unloadTracker:primitiveCreator:notificationOwner:client:adServerEnvironment:originalContentIdentifier:newsSupplementalContext:serverUnfilledReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, char a18)
{
  ObjectType = swift_getObjectType();
  LOBYTE(v26) = a18 & 1;
  return sub_1C1AB0E7C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v26, v18, ObjectType);
}

uint64_t sub_1C1B7BE0C(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1B7BE6C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C1B61900;
}

double sub_1C1B7BFA8()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1C1B7C058(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_primitiveCreator;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B7C0CC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C1AC()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C244()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C2D0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C3B0()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C584@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  return sub_1C1ABB0C4(v1 + v3, a1);
}

uint64_t sub_1C1B7C71C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1C1ABB0C4(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
  swift_beginAccess();
  sub_1C1AABE90(v6, v7 + v8);
  return swift_endAccess();
}

double sub_1C1B7C824()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7C904()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1C1B7CA48(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double sub_1C1B7CB00()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B7CB44(double a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B7CC1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
    *(v1 + v2) = MEMORY[0x1E69E7CD0];
  }

  return v4;
}

id JourneyMetricsHelper.__allocating_init(promotedContentIdentifier:contextIdentifier:journeyIdentifier:impressionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = objc_opt_self();

  v34 = v15;
  [v15 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v16 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v17 = type metadata accessor for PrimitiveCreator();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v35 = a1;
  *v19 = a1;
  v19[1] = a2;
  v20 = a6;
  v21 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  *v21 = a3;
  v21[1] = a4;
  v22 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v22 = a5;
  v22[1] = a6;
  v23 = &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v23 = a7;
  v23[1] = a8;
  v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v16;
  *&v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v24 = qword_1EDE6C538;
  swift_unknownObjectRetain();
  if (v24 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v18[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v36.receiver = v18;
  v36.super_class = v17;
  v25 = objc_msgSendSuper2(&v36, sel_init);
  swift_unknownObjectRelease();
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v26 = sub_1C1B948E8();
  type metadata accessor for MetricsUnloadTracker();
  v27 = swift_allocObject();
  *(v27 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v27 + 24) = 0;
  *(v27 + 32) = 1;
  v28 = v25;
  [v34 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v29 = [swift_getObjCClassFromMetadata() daemonDelivery];
  swift_getObjectType();
  v30 = objc_allocWithZone(type metadata accessor for JourneyMetricsHelper(0));
  v31 = sub_1C1AB0F40(v35, a2, a3, a4, a5, v20, v26, v27, v28, v29, 0, 0, 0, 0, 0, 0, 0, 1, v30);

  return v31;
}

id sub_1C1B7D030()
{
  result = sub_1C1B7BA08();
  qword_1EBF09A40 = result;
  *algn_1EBF09A48 = v1;
  qword_1EBF09A50 = v2;
  byte_1EBF09A58 = v3 & 1;
  return result;
}

id JourneyMetricsHelper.__deallocating_deinit()
{
  sub_1C1B7D0A4();
  sub_1C1B7EF7C(9102);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JourneyMetricsHelper(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B7D0A4()
{
  v1 = v0;
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced] != 1 || (v7 = *&v0[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties]) == 0)
  {
    v29 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v30 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C1B98E60;
    v32 = &v1[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
    swift_beginAccess();
    v34 = *v32;
    v33 = *(v32 + 1);
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 64) = sub_1C1AA5E7C();
    *(v31 + 32) = v34;
    *(v31 + 40) = v33;

    sub_1C1B94BA8(v29, &dword_1C1AA2000, v30, "Trying to report placed, but it has not been placed before %{public}@", 69, 2, v31);
  }

  v54 = v4;
  *&v0[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_placedProperties] = 0;
  v8 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons;
  swift_beginAccess();
  v9 = *&v0[v8];
  if (!v9 || !*(v9 + 16))
  {
LABEL_27:
    [v1 notifyListenersPCUsed];
    v48 = sub_1C1AB35FC();
    sub_1C1AB3CFC(1403, v7, v48, 0);
  }

  v53 = v7;

  v11 = sub_1C1B859E4(v10);

  v12 = *(v11 + 16);
  if (!v12)
  {

    v35 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v36 = v54;
    (*(v3 + 104))(v6, *MEMORY[0x1E6989F88], v54);
    v37 = sub_1C1B94A48();
    v39 = v38;
    (*(v3 + 8))(v6, v36);
    sub_1C1B63274(v35);
    v40 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v41 = sub_1C1B94EB8();

    v42 = [v40 initWithArray_];

    v43 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v43;
    sub_1C1AB31CC(v42, v37, v39, isUniquelyReferenced_nonNull_native, &v57);

    v7 = v57;
    v45 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v46 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1C1B98E60;
    *(v47 + 56) = sub_1C1AC1F08(&qword_1EBF09B20, &qword_1C1BA4338);
    *(v47 + 64) = sub_1C1B86F84();
    *(v47 + 32) = v35;
    sub_1C1B94BA8(v45, &dword_1C1AA2000, v46, "Updated reasons with %@", 23, 2, v47);

    goto LABEL_27;
  }

  v50 = v6;
  v51 = v3;
  v52 = v1;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1C1B95518();
  v13 = v11 + 56;
  result = sub_1C1B95328();
  v15 = result;
  v16 = 0;
  v17 = *(v11 + 36);
  v55 = v11 + 64;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v11 + 32))
  {
    v20 = v15 >> 6;
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_30;
    }

    if (v17 != *(v11 + 36))
    {
      goto LABEL_31;
    }

    v56 = v16;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1B954F8();
    v21 = v11;
    sub_1C1B95528();
    sub_1C1B95538();
    result = sub_1C1B95508();
    v18 = 1 << *(v11 + 32);
    if (v15 >= v18)
    {
      goto LABEL_32;
    }

    v22 = *(v13 + 8 * v20);
    if ((v22 & (1 << v15)) == 0)
    {
      goto LABEL_33;
    }

    if (v17 != *(v11 + 36))
    {
      goto LABEL_34;
    }

    v23 = v22 & (-2 << (v15 & 0x3F));
    if (v23)
    {
      v18 = __clz(__rbit64(v23)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v19 = v56;
    }

    else
    {
      v24 = v20 << 6;
      v25 = v20 + 1;
      v26 = (v55 + 8 * v20);
      while (v25 < (v18 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_1C1B616D0(v15, v17, 0);
          v18 = __clz(__rbit64(v27)) + v24;
          goto LABEL_22;
        }
      }

      result = sub_1C1B616D0(v15, v17, 0);
LABEL_22:
      v11 = v21;
      v19 = v56;
    }

    v16 = v19 + 1;
    v15 = v18;
    if (v16 == v12)
    {

      v35 = v57;
      v3 = v51;
      v1 = v52;
      v6 = v50;
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C1B7D8F0(uint64_t result, void *a2, uint64_t a3)
{
  v6 = result;
  v7 = *&v3[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext];
  if (!v7 || (v8 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_sponsorshipPlacement, result = swift_beginAccess(), *(v7 + v8)))
  {
    if ((v3[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop] & 1) == 0)
    {
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v9 = sub_1C1B94BE8();
      sub_1C1AB4454(v9, qword_1EDE6D058);
      v10 = v3;
      v11 = sub_1C1B94BC8();
      v12 = sub_1C1B95118();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v21[0] = v14;
        *v13 = 134349570;
        *(v13 + 4) = 0;
        *(v13 + 12) = 2050;
        v15 = *&v10[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager];
        [*(v15 + 16) lock];
        v16 = *(v15 + 32);
        [*(v15 + 16) unlock];
        *(v13 + 14) = v16;

        *(v13 + 22) = 2080;
        v17 = &v10[OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier];
        swift_beginAccess();
        v18 = *v17;
        v19 = v17[1];

        v20 = sub_1C1AC7650(v18, v19, v21);

        *(v13 + 24) = v20;
        _os_log_impl(&dword_1C1AA2000, v11, v12, "Journey order: %{public}ld, event count: %{public}ld, promoted content: %s", v13, 0x20u);
        sub_1C1AA86F8(v14);
        MEMORY[0x1C6908230](v14, -1, -1);
        MEMORY[0x1C6908230](v13, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1C1AB448C(v6, -1, a2, a3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1C1B7DB78(uint64_t a1, uint64_t a2)
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v13);
  sub_1C1AAABE0(v13, v13[3]);
  v5 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];
  v8 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  sub_1C1B4A2D8(v7, v6, v9, v10, sub_1C1B18B2C, v11);

  return sub_1C1AA86F8(v13);
}

uint64_t sub_1C1B7DD6C()
{
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v8);
  sub_1C1AAABE0(v8, v8[3]);
  v1 = (v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  v4 = (v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];

  sub_1C1B4A4E4(v3, v2, v5, v6);

  return sub_1C1AA86F8(v8);
}

uint64_t sub_1C1B7DEDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v5 + 104))(v7, *MEMORY[0x1E6989F48], v4);
  v9 = sub_1C1B94A48();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v12 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v13 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1201, v12, v13, 0);

  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop) = *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop) & 1 | ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2606);
  return result;
}

uint64_t sub_1C1B7E168()
{
  v1 = v0;
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  result = swift_beginAccess();
  if (*(v1 + v6) == 1)
  {
    v8 = sub_1C1AB35FC();
    if (!v8)
    {
      v8 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
    }

    v9 = v8;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = [Strong adType];
      swift_unknownObjectRelease();
      (*(v3 + 104))(v5, *MEMORY[0x1E6989F58], v2);
      v12 = sub_1C1B94A48();
      v14 = v13;
      (*(v3 + 8))(v5, v2);
      v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v9;
      sub_1C1AB7E20(v15, v12, v14, isUniquelyReferenced_nonNull_native, &v18);

      v9 = v18;
    }

    sub_1C1B7D8F0(77006, 0, v9);
  }

  return result;
}

uint64_t sub_1C1B7E3B4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = sub_1C1AB2B4C(Strong, a1, 0, 0, 0);
  swift_unknownObjectRelease();
  v5 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v4, v5, 0);
}

uint64_t sub_1C1B7E4BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCreated) = 1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = sub_1C1AB2B4C(Strong, a1, a2, 0, 0);
  swift_unknownObjectRelease();
  v7 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1400, v6, v7, 0);
}

uint64_t sub_1C1B7E648(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v75 = sub_1C1B94A58();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v78);
  sub_1C1AAABE0(v78, v79);
  v5 = (v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_contextIdentifier);
  swift_beginAccess();
  v7 = *v5;
  v6 = v5[1];

  v8 = [a1 promotedContentIdentifier];
  v9 = sub_1C1B94D88();
  v11 = v10;

  v12 = (v1 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];

  sub_1C1B4A6A0(v7, v6, v9, v11, v13, v14);

  sub_1C1AA86F8(v78);
  v15 = [a1 journeyIdentifier];
  v16 = sub_1C1B94D88();
  v18 = v17;

  v19 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_journeyIdentifier);
  swift_beginAccess();
  if (v16 == *v19 && v18 == v19[1])
  {

LABEL_7:
    v21 = sub_1C1B95118();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v22 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C1B98E60;
    v24 = [a1 journeyIdentifier];
    v25 = sub_1C1B94D88();
    v27 = v26;

    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = sub_1C1AA5E7C();
    *(v23 + 32) = v25;
    *(v23 + 40) = v27;
    sub_1C1B94BA8(v21, &dword_1C1AA2000, v22, "Trying to replace a metric helper with another helper of the same identifier %{public}@", 87, 2, v23);
  }

  v20 = sub_1C1B95888();

  if (v20)
  {
    goto LABEL_7;
  }

  v71 = v5;
  v29 = sub_1C1B95118();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v30 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C1B9AF30;
  v32 = [a1 journeyIdentifier];
  v33 = sub_1C1B94D88();
  v35 = v34;

  v36 = MEMORY[0x1E69E6158];
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1C1AA5E7C();
  *(v31 + 32) = v33;
  *(v31 + 40) = v35;
  v39 = *v19;
  v38 = v19[1];
  *(v31 + 96) = v36;
  *(v31 + 104) = v37;
  *(v31 + 64) = v37;
  *(v31 + 72) = v39;
  *(v31 + 80) = v38;

  sub_1C1B94BA8(v29, &dword_1C1AA2000, v30, "Replacing ad %{public}@ with %{public}@", 39, 2, v31);

  v73 = a1;
  if (swift_dynamicCastClass())
  {
    sub_1C1B948F8();
  }

  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  v41 = *MEMORY[0x1E6989F78];
  v42 = v77;
  v43 = v74;
  v44 = v75;
  v72 = *(v77 + 104);
  v72(v74, v41, v75);
  v45 = sub_1C1B94A48();
  v47 = v46;
  v48 = *(v42 + 8);
  v77 = v42 + 8;
  v48(v43, v44);
  v49 = v48;
  *(inited + 32) = v45;
  *(inited + 40) = v47;

  v50 = sub_1C1B94D78();

  *(inited + 48) = v50;
  v51 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v52 = sub_1C1AB35FC();
  if (!v52)
  {
    v52 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v53 = v52;
  v54 = v71;
  v55 = v74;
  v56 = v75;
  v72(v74, *MEMORY[0x1E6989F20], v75);
  v57 = sub_1C1B94A48();
  v59 = v58;
  v49(v55, v56);
  v60 = v73;
  v61 = [v73 promotedContentIdentifier];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78[0] = v53;
  sub_1C1AB7E20(v61, v57, v59, isUniquelyReferenced_nonNull_native, v78);

  v63 = v78[0];
  if (swift_dynamicCastClass())
  {
    swift_unknownObjectRetain();
    sub_1C1AB3CFC(1401, v51, v63, 0);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v78);
  sub_1C1AAABE0(v78, v79);
  v64 = *v54;
  v65 = v54[1];

  v66 = [v60 promotedContentIdentifier];
  v67 = sub_1C1B94D88();
  v69 = v68;

  sub_1C1B4A4E4(v64, v65, v67, v69);

  return sub_1C1AA86F8(v78);
}

uint64_t sub_1C1B7EE58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v7 = xmmword_1C1BA41D0;
    v8 = 3;
    v4 = v3;
    sub_1C1ACCE70(&v7);
  }

  v5 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1402, 0, v5, 0);
}

void sub_1C1B7EF44()
{
  v1 = v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadReason;
  *v1 = 9101;
  *(v1 + 8) = 0;
}

uint64_t sub_1C1B7EF7C(uint64_t a1)
{
  v2 = v1;
  v28[1] = a1;
  v3 = sub_1C1B94A58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  v10 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v29 = xmmword_1C1BA41E0;
    v30 = 3;
    v12 = v11;
    sub_1C1ACCE70(&v29);
  }

  v13 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didUnload;
  swift_beginAccess();
  *(v2 + v13) = 1;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v15 = *(v4 + 104);
  v15(v9, *MEMORY[0x1E6989F48], v3);
  v16 = sub_1C1B94A48();
  v18 = v17;
  v28[0] = v2;
  v19 = *(v4 + 8);
  v19(v9, v3);
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v15(v7, *MEMORY[0x1E6989F60], v3);
  v20 = sub_1C1B94A48();
  v22 = v21;
  v19(v7, v3);
  *(inited + 56) = v20;
  *(inited + 64) = v22;
  v23 = *(v28[0] + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unloadManager);
  [*(v23 + 16) lock];
  v24 = *(v23 + 32);
  [*(v23 + 16) unlock];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v25 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  v26 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1412, v25, v26, 0);
}

void sub_1C1B7F484()
{
  v1 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady;
  if ((*(v0 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady) & 1) == 0)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
    swift_beginAccess();
    v4 = *(v2 + v3);
    if (v4)
    {
      v7 = xmmword_1C1BA41F0;
      v8 = 3;
      v5 = v4;
      sub_1C1ACCE70(&v7);
    }

    *(v2 + v1) = 1;
    v6 = sub_1C1AB35FC();
    sub_1C1AB3CFC(1404, 0, v6, 0);
  }
}

uint64_t sub_1C1B7F588(char a1)
{
  v2 = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = [Strong adType], swift_unknownObjectRelease(), v5 == 7))
  {
    if (a1)
    {
      v6 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
      result = swift_beginAccess();
      if (*(v2 + v6))
      {
        return result;
      }

      *(v2 + v6) = 1;
      v8 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
      swift_beginAccess();
      *(v2 + v8) = 0;
    }

    else
    {
      v17 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
      result = swift_beginAccess();
      if (*(v2 + v17))
      {
        return result;
      }

      v18 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
      swift_beginAccess();
      *(v2 + v18) = 0;
      v19 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
      swift_beginAccess();
      *(v2 + v19) = 1;
      *(v2 + v17) = 1;
    }
  }

  else
  {
    v9 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
    result = swift_beginAccess();
    if (*(v2 + v9))
    {
      return result;
    }

    v10 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
    swift_beginAccess();
    if ((*(v2 + v10) & 1) == 0 && (a1 & 1) == 0)
    {
      *(v2 + v10) = 1;
    }

    *(v2 + v9) = 1;
    sub_1C1B7D0A4();
  }

  v11 = sub_1C1B7F814(a1 & 1);
  v13 = v12;
  v14 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15)
  {
    v20 = xmmword_1C1BA4200;
    v21 = 3;
    v16 = v15;
    sub_1C1ACCE70(&v20);
  }

  sub_1C1AB3CFC(1405, v11, v13, 0);
}

unint64_t sub_1C1B7F814(char a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - v9;
  v11 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  v12 = [objc_opt_self() product];
  v65 = v10;
  if ((v12 | 2) == 2)
  {
    (*(v5 + 104))(v10, *MEMORY[0x1E6989FC0], v4);
    v13 = a1;
    v70 = sub_1C1B94A48();
    v15 = v14;
    (*(v5 + 8))(v10, v4);
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v76[0] = v11;
    sub_1C1AB31CC(v16, v70, v15, isUniquelyReferenced_nonNull_native, v76);

    v11 = v76[0];
  }

  v18 = sub_1C1AB35FC();
  v66 = v11;
  if (!v18)
  {
    v18 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v19 = v18;
  v20 = v65;
  v21 = *MEMORY[0x1E6989EC8];
  v68 = *(v5 + 104);
  v69 = v5 + 104;
  v68(v8, v21, v4);
  v22 = sub_1C1B94A48();
  v24 = v23;
  v25 = *(v5 + 8);
  v70 = v5 + 8;
  v67 = v25;
  v25(v8, v4);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = [Strong placeholder];
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0;
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v75[0] = v19;
  sub_1C1AB7E20(v28, v22, v24, v29, v75);

  v30 = v75[0];
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = [v31 adType];
    swift_unknownObjectRelease();
    v68(v20, *MEMORY[0x1E6989F58], v4);
    v33 = sub_1C1B94A48();
    v34 = v30;
    v36 = v35;
    v67(v20, v4);
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v34;
    sub_1C1AB7E20(v37, v33, v36, v38, v75);

    v30 = v75[0];
  }

  v39 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_unfilledReasons;
  swift_beginAccess();
  v40 = *(v2 + v39);
  if (v40)
  {
    v63 = v30;
    v64 = v2;
    v41 = *(v40 + 16);
    v42 = MEMORY[0x1E69E7CC0];
    if (v41)
    {
      v62 = v4;
      v74[0] = MEMORY[0x1E69E7CC0];

      sub_1C1B95518();
      v43 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        v43 += 8;
        --v41;
      }

      while (v41);

      v42 = v74[0];
      v4 = v62;
    }

    v68(v20, *MEMORY[0x1E6989F88], v4);
    v44 = sub_1C1B94A48();
    v46 = v45;
    v67(v20, v4);
    sub_1C1B63274(v42);

    v47 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v48 = sub_1C1B94EB8();

    v49 = [v47 initWithArray_];

    v50 = v63;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v50;
    sub_1C1AB7E20(v49, v44, v46, v51, v74);

    v2 = v64;
  }

  v52 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v53 = *(v2 + v52);
  if (v53)
  {
    v54 = *&v53[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier + 8];
    if (v54)
    {
      if (*(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady) == 1)
      {
        v55 = *&v53[OBJC_IVAR____TtC15PromotedContent31JourneyMetricsHelperDiagnostics_lastReadyIdentifier];
        v56 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_promotedContentIdentifier);
        swift_beginAccess();
        if ((v55 != *v56 || v54 != v56[1]) && (sub_1C1B95888() & 1) == 0)
        {
          v71 = 0;
          v72 = 0xE000000000000000;

          v57 = v53;
          sub_1C1B95468();
          MEMORY[0x1C6906DF0](0xD00000000000001DLL, 0x80000001C1BACE60);
          MEMORY[0x1C6906DF0](v55, v54);

          MEMORY[0x1C6906DF0](0xD000000000000012, 0x80000001C1BACE80);
          v59 = *v56;
          v58 = v56[1];

          MEMORY[0x1C6906DF0](v59, v58);

          v73 = 2;
          sub_1C1ACCE70(&v71);

          sub_1C1ACCBB8(v71, v72, v73);
        }
      }
    }
  }

  return v66;
}

void *sub_1C1B7FF1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v6 = v5;
  v142 = a4;
  v144 = a2;
  v141 = a1;
  v9 = sub_1C1B94A58();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C1B95048();
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  v15 = *MEMORY[0x1E6989FB0];
  v147 = *(v10 + 104);
  v148 = v10 + 104;
  v147(v12, v15, v9);
  v16 = sub_1C1B94A48();
  v18 = v17;
  v19 = *(v10 + 8);
  v149 = v12;
  v150 = v10 + 8;
  v151 = v9;
  v19(v12, v9);
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v20 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v21 = [objc_opt_self() product];
  v145 = v19;
  v143 = v6;
  if (!v21 || v21 == 2)
  {
    v32 = v149;
    v33 = a3;
    v34 = v20;
    v35 = v151;
    v36 = v147;
    v147(v149, *MEMORY[0x1E6989FA0], v151);
    v37 = sub_1C1B94A48();
    v39 = v38;
    v145(v32, v35);
    v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v41 = [v40 initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v34;
    a3 = v33;
    sub_1C1AB31CC(v41, v37, v39, isUniquelyReferenced_nonNull_native, v154);

    v43 = v154[0];
    v36(v32, *MEMORY[0x1E6989FC0], v35);
    v19 = v145;
    v44 = sub_1C1B94A48();
    v46 = v45;
    v19(v32, v35);
    v47 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v31 = v142;
    v48 = [v47 initWithBool_];
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v43;
    sub_1C1AB31CC(v48, v44, v46, v49, v154);

    v20 = v154[0];
  }

  else
  {
    if (v21 == 1)
    {
      v22 = a3;
      v23 = v20;
      v24 = v149;
      v25 = v151;
      v147(v149, *MEMORY[0x1E6989FA0], v151);
      v26 = sub_1C1B94A48();
      v28 = v27;
      v19(v24, v25);
      v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v23;
      a3 = v22;
      sub_1C1AB31CC(v29, v26, v28, v30, v154);

      v20 = v154[0];
    }

    v31 = v142;
  }

  v50 = v144;
  if ((a3 & 0x100000000) == 0)
  {
    v51 = a3;
    v52 = v149;
    v53 = v151;
    v147(v149, *MEMORY[0x1E6989EF8], v151);
    v54 = sub_1C1B94A48();
    v56 = v55;
    v19(v52, v53);
    v57 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v58) = v51;
    v59 = [v57 initWithFloat_];
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v20;
    sub_1C1AB31CC(v59, v54, v56, v60, v154);

    v20 = v154[0];
  }

  v61 = v143;
  v62 = sub_1C1AB35FC();
  v139 = v20;
  if (!v62)
  {
    v62 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
  }

  v63 = v62;
  v64 = v149;
  v65 = v151;
  v147(v149, *MEMORY[0x1E6989FD0], v151);
  v66 = sub_1C1B94A48();
  v68 = v67;
  v19(v64, v65);
  v69 = sub_1C1B94538();
  v70 = swift_isUniquelyReferenced_nonNull_native();
  v154[0] = v63;
  sub_1C1AB7E20(v69, v66, v68, v70, v154);

  v71 = v154[0];
  v72 = *(sub_1C1B7CC04() + 16);

  if (v72)
  {
    v140 = v71;
    v73 = *(v61 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet);
    v74 = *(v73 + 2);
    v75 = MEMORY[0x1E69E7CC0];
    if (v74)
    {
      v154[0] = MEMORY[0x1E69E7CC0];
      v152 = v73;

      sub_1C1B95518();
      v76 = v152 + 56;
      v77 = sub_1C1B95328();
      result = v152;
      v79 = 0;
      v146 = v152 + 64;
      while ((v77 & 0x8000000000000000) == 0 && v77 < 1 << *(result + 32))
      {
        v81 = v77 >> 6;
        if ((*&v76[8 * (v77 >> 6)] & (1 << v77)) == 0)
        {
          goto LABEL_55;
        }

        v82 = *(result + 9);
        v83 = *(result[6] + v77);
        v84 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        [v84 initWithUnsignedChar_];
        sub_1C1B954F8();
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        result = v152;
        v80 = 1 << v152[32];
        if (v77 >= v80)
        {
          goto LABEL_56;
        }

        v85 = *&v76[8 * v81];
        if ((v85 & (1 << v77)) == 0)
        {
          goto LABEL_57;
        }

        if (v82 != *(v152 + 9))
        {
          goto LABEL_58;
        }

        v86 = v85 & (-2 << (v77 & 0x3F));
        if (v86)
        {
          v80 = __clz(__rbit64(v86)) | v77 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v87 = v81 << 6;
          v88 = v81 + 1;
          v89 = &v146[8 * v81];
          while (v88 < (v80 + 63) >> 6)
          {
            v91 = *v89++;
            v90 = v91;
            v87 += 64;
            ++v88;
            if (v91)
            {
              sub_1C1B616D0(v77, v82, 0);
              result = v152;
              v80 = __clz(__rbit64(v90)) + v87;
              goto LABEL_15;
            }
          }

          sub_1C1B616D0(v77, v82, 0);
          result = v152;
        }

LABEL_15:
        ++v79;
        v77 = v80;
        if (v79 == v74)
        {

          v75 = v154[0];
          v61 = v143;
          v31 = v142;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_30:
    v92 = v149;
    v93 = v151;
    v147(v149, *MEMORY[0x1E6989EE8], v151);
    v94 = sub_1C1B94A48();
    v96 = v95;
    v19 = v145;
    v145(v92, v93);
    sub_1C1B63274(v75);

    v97 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v98 = sub_1C1B94EB8();

    v99 = [v97 initWithArray_];

    v100 = v140;
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v100;
    sub_1C1AB7E20(v99, v94, v96, v101, v154);

    v71 = v154[0];
    v50 = v144;
  }

  v102 = *(sub_1C1B7CC10() + 16);

  if (!v102)
  {
LABEL_51:
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v130 = [Strong adType];
      swift_unknownObjectRelease();
      v131 = v149;
      v132 = v71;
      v133 = v151;
      v147(v149, *MEMORY[0x1E6989F58], v151);
      v134 = sub_1C1B94A48();
      v136 = v135;
      v19(v131, v133);
      v137 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v138 = swift_isUniquelyReferenced_nonNull_native();
      v153 = v132;
      sub_1C1AB7E20(v137, v134, v136, v138, &v153);

      v71 = v153;
    }

    sub_1C1AB3CFC(1406, v139, v71, 0);

    return sub_1C1B82D74(v141, v50, v31 & 1, a5);
  }

  v140 = v71;
  v103 = *(v61 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet);
  v104 = *(v103 + 2);
  v105 = MEMORY[0x1E69E7CC0];
  if (!v104)
  {
LABEL_50:
    v119 = v149;
    v120 = v151;
    v147(v149, *MEMORY[0x1E6989F28], v151);
    v121 = sub_1C1B94A48();
    v123 = v122;
    v19 = v145;
    v145(v119, v120);
    sub_1C1B63274(v105);

    v124 = objc_allocWithZone(MEMORY[0x1E695DEC8]);
    v125 = sub_1C1B94EB8();

    v126 = [v124 initWithArray_];

    v127 = v140;
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v127;
    sub_1C1AB7E20(v126, v121, v123, v128, v154);

    v71 = v154[0];
    goto LABEL_51;
  }

  v154[0] = MEMORY[0x1E69E7CC0];
  v152 = v103;

  sub_1C1B95518();
  v106 = v152 + 56;
  v107 = sub_1C1B95328();
  result = v152;
  v108 = 0;
  v146 = v152 + 64;
  while ((v107 & 0x8000000000000000) == 0 && v107 < 1 << *(result + 32))
  {
    v110 = v107 >> 6;
    if ((*&v106[8 * (v107 >> 6)] & (1 << v107)) == 0)
    {
      goto LABEL_60;
    }

    v111 = *(result + 9);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedChar_];
    sub_1C1B954F8();
    sub_1C1B95528();
    sub_1C1B95538();
    sub_1C1B95508();
    result = v152;
    v109 = 1 << v152[32];
    if (v107 >= v109)
    {
      goto LABEL_61;
    }

    v112 = *&v106[8 * v110];
    if ((v112 & (1 << v107)) == 0)
    {
      goto LABEL_62;
    }

    if (v111 != *(v152 + 9))
    {
      goto LABEL_63;
    }

    v113 = v112 & (-2 << (v107 & 0x3F));
    if (v113)
    {
      v109 = __clz(__rbit64(v113)) | v107 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v114 = v110 << 6;
      v115 = v110 + 1;
      v116 = &v146[8 * v110];
      while (v115 < (v109 + 63) >> 6)
      {
        v118 = *v116++;
        v117 = v118;
        v114 += 64;
        ++v115;
        if (v118)
        {
          sub_1C1B616D0(v107, v111, 0);
          result = v152;
          v109 = __clz(__rbit64(v117)) + v114;
          goto LABEL_35;
        }
      }

      sub_1C1B616D0(v107, v111, 0);
      result = v152;
    }

LABEL_35:
    ++v108;
    v107 = v109;
    if (v108 == v104)
    {

      v105 = v154[0];
      v31 = v142;
      v50 = v144;
      goto LABEL_50;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1C1B80E54(char a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v9 = [Strong adType], swift_unknownObjectRelease(), v9 == 7))
  {
    v10 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_wasCollapsedOnScreen;
    swift_beginAccess();
    if ((*(v2 + v10) & 1) == 0)
    {
      v11 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
      result = swift_beginAccess();
      if (*(v2 + v11) != 1)
      {
        return result;
      }
    }

    *(v2 + v10) = 0;
    v13 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen);
    swift_beginAccess();
  }

  else
  {
    v13 = (v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen);
    result = swift_beginAccess();
    if (*v13 != 1)
    {
      return result;
    }
  }

  *v13 = 0;
  v14 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  if (([objc_opt_self() product] | 2) == 2)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E6989FC0], v4);
    v15 = sub_1C1B94A48();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v14;
    sub_1C1AB31CC(v18, v15, v17, isUniquelyReferenced_nonNull_native, &v27);

    v14 = v27;
  }

  v20 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21)
  {
    v25 = xmmword_1C1BA4210;
    v26 = 3;
    v22 = v21;
    sub_1C1ACCE70(&v25);
  }

  v23 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1407, v14, v23, 0);
}

uint64_t sub_1C1B8119C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v50 = a1;
  v11 = sub_1C1B94A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94508();
  v15 = v6 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime;
  *v15 = v16;
  *(v15 + 8) = 0;
  *(v6 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 0;
  if ((a2 & 0x100000000) != 0)
  {
    if (a3 & 0x100000000) != 0 && (a5)
    {
      v27 = 0;
      goto LABEL_14;
    }

    v49 = a5;
    v27 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
    if ((a3 & 0x100000000) != 0)
    {
LABEL_3:
      LOBYTE(a5) = v49;
      if (v49)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v49 = a5;
    v17 = a4;
    v18 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
    v19 = a2;
    (*(v12 + 104))(v14, *MEMORY[0x1E6989FD8], v11);
    v20 = sub_1C1B94A48();
    v22 = v21;
    (*(v12 + 8))(v14, v11);
    v23 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v24) = v19;
    v25 = [v23 initWithFloat_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v18;
    sub_1C1AB31CC(v25, v20, v22, isUniquelyReferenced_nonNull_native, &v51);

    v27 = v51;
    a4 = v17;
    if ((a3 & 0x100000000) != 0)
    {
      goto LABEL_3;
    }
  }

  if (!v27)
  {
    LOBYTE(a5) = v49;
    goto LABEL_14;
  }

  (*(v12 + 104))(v14, *MEMORY[0x1E6989FE0], v11);
  v28 = sub_1C1B94A48();
  v30 = v29;
  (*(v12 + 8))(v14, v11);
  v31 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  LODWORD(v32) = a3;
  v33 = [v31 initWithFloat_];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v51 = v27;
  sub_1C1AB31CC(v33, v28, v30, v34, &v51);

  v27 = v51;
  LOBYTE(a5) = v49;
  if (v49)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v27)
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E6989F58], v11);
    v35 = sub_1C1B94A48();
    v37 = v36;
    (*(v12 + 8))(v14, v11);
    v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v27;
    sub_1C1AB31CC(v38, v35, v37, v39, &v51);

    v27 = v51;
  }

LABEL_14:
  v40 = sub_1C1AB35FC();
  if ((v50 & 0x100) == 0)
  {
    if (sub_1C1B952A8())
    {
      v41 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);

      v40 = v41;
LABEL_18:
      (*(v12 + 104))(v14, *MEMORY[0x1E6989F98], v11);
      v42 = sub_1C1B94A48();
      v44 = v43;
      (*(v12 + 8))(v14, v11);
      v45 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v46 = [v45 initWithUnsignedChar_];
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v51 = v40;
      sub_1C1AB7E20(v46, v42, v44, v47, &v51);

      v40 = v51;
      goto LABEL_19;
    }

    if (v40)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  sub_1C1AB3CFC(1408, v27, v40, 0);
  sub_1C1B81634(a4, a5 & 1);
}

void *sub_1C1B81634(uint64_t a1, char a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    if ([result adType] && objc_msgSend(v11, sel_adType) != 7)
    {
      return swift_unknownObjectRelease();
    }

    if ([v11 placeholder])
    {
      return swift_unknownObjectRelease();
    }

    v12 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
    swift_beginAccess();
    if (*(v2 + v12))
    {
      return swift_unknownObjectRelease();
    }

    if (a2)
    {
      return swift_unknownObjectRelease();
    }

    v13 = sub_1C1B94978();
    if (v13 == sub_1C1B94978())
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v14 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate;
      swift_beginAccess();
      sub_1C1ABB0C4(v2 + v14, v7);
      v15 = sub_1C1B94588();
      v16 = *(v15 - 8);
      v17 = *(v16 + 48);
      if (v17(v7, 1, v15) == 1)
      {
        sub_1C1B94578();
        swift_unknownObjectRelease();
        if (v17(v7, 1, v15) != 1)
        {
          sub_1C1AA7C8C(v7, &qword_1EBF07F50, &qword_1C1B9A590);
        }
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v16 + 32))(v9, v7, v15);
      }

      (*(v16 + 56))(v9, 0, 1, v15);
      v18 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
      swift_beginAccess();
      sub_1C1AABE90(v9, v2 + v18);
      swift_endAccess();
      v19 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
      swift_beginAccess();
      *(v2 + v19) = 0;
      v20 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isClickImpression;
      result = swift_beginAccess();
      *(v2 + v20) = 1;
      *(v2 + v12) = 1;
    }
  }

  return result;
}

uint64_t sub_1C1B81AF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94508();
  v8 = v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime;
  *v8 = v9;
  *(v8 + 8) = 0;
  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 0;
  v10 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  (*(v5 + 104))(v7, *MEMORY[0x1E6989F58], v4);
  v11 = sub_1C1B94A48();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_1C1AB31CC(v14, v11, v13, isUniquelyReferenced_nonNull_native, &v20);

  v16 = v20;
  v17 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1408, v16, v17, 0);

  sub_1C1B81634(a1, 0);
}

uint64_t sub_1C1B81D7C(char a1, double a2)
{
  v5 = sub_1C1B94A58();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  swift_beginAccess();
  v42 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = [Strong bestRepresentation], swift_unknownObjectRelease(), v12) && (v13 = objc_msgSend(v12, sel_tapAction), swift_unknownObjectRelease(), v13))
  {
    v14 = *&v13[OBJC_IVAR___APPCTapAction_confirmedClickInterval];

    v40 = 0;
    v15 = v14 * 10.0;
    if ((a1 & 1) == 0)
    {
      v15 = v14;
    }

    v16 = v15 * 1000.0;
  }

  else
  {
    if (qword_1EBF076E8 != -1)
    {
      swift_once();
    }

    if (byte_1EBF09A58)
    {
      v40 = 0;
      v16 = 1000.0;
      if (a1)
      {
        v16 = 10000.0;
      }
    }

    else
    {
      v17 = &qword_1EBF09A40;
      v40 = qword_1EBF09A50;
      if (a1)
      {
        v17 = algn_1EBF09A48;
      }

      v16 = *v17;
    }
  }

  v18 = a2 * 1000.0;
  if (a2 * 1000.0 >= v16 * 0.1)
  {
    if (v18 >= v16 * 0.25)
    {
      if (v18 >= v16 * 0.5)
      {
        v19 = 8104;
        v20 = 8105;
        v21 = 8106;
        v22 = 8107;
        v23 = 8108;
        v24 = 8110;
        if (v18 < v16 + v16)
        {
          v24 = 8109;
        }

        if (v18 >= v16 * 1.75)
        {
          v23 = v24;
        }

        if (v18 >= v16 * 1.5)
        {
          v22 = v23;
        }

        if (v18 >= v16 * 1.25)
        {
          v21 = v22;
        }

        if (v18 >= v16)
        {
          v20 = v21;
        }

        if (v18 >= v16 * 0.75)
        {
          v19 = v20;
        }
      }

      else
      {
        v19 = 8103;
      }
    }

    else
    {
      v19 = 8102;
    }
  }

  else
  {
    v19 = 8101;
  }

  v39 = v19;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9AF30;
  v26 = *(v6 + 104);
  v26(v10, *MEMORY[0x1E6989EC0], v5);
  v27 = sub_1C1B94A48();
  v29 = v28;
  v30 = *(v6 + 8);
  v30(v10, v5);
  *(inited + 32) = v27;
  *(inited + 40) = v29;
  v31 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 48) = [v31 initWithInteger_];
  v32 = v41;
  v26(v41, *MEMORY[0x1E6989EE0], v5);
  v33 = sub_1C1B94A48();
  v35 = v34;
  v30(v32, v5);
  *(inited + 56) = v33;
  *(inited + 64) = v35;
  v36 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *(inited + 72) = [v36 initWithInteger_];
  v37 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  sub_1C1AB3CFC(1409, v37, 0, 0);
}

uint64_t sub_1C1B821E4(uint64_t a1)
{
  v3 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94508();
  v8 = v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_interactionTime;
  *v8 = v9;
  *(v8 + 8) = 0;
  *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_leftAdDestinationWasReported) = 0;
  v10 = sub_1C1AD408C(MEMORY[0x1E69E7CC0]);
  (*(v5 + 104))(v7, *MEMORY[0x1E6989F58], v4);
  v11 = sub_1C1B94A48();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  v14 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v10;
  sub_1C1AB31CC(v14, v11, v13, isUniquelyReferenced_nonNull_native, &v20);

  v16 = v20;
  v17 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1408, v16, v17, 0);

  sub_1C1B81634(a1, 0);
}

uint64_t sub_1C1B82478(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, void))
{
  v4 = sub_1C1AB35FC();
  a2(a1, 0, v4, 0);
}

void sub_1C1B824F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = [Strong serverUnfilledReason], swift_unknownObjectRelease(), v1 == 200))
  {
    v2 = sub_1C1AB35FC();
    sub_1C1B7D8F0(77001, 0, v2);
  }

  else
  {
    v3 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v4 = sub_1C1B95298();
    sub_1C1B94BA8(v3, &dword_1C1AA2000, v4, "[PC] Skipping reporting contentLoadFailure because it's for a native that had an error from the backend already", 111, 2, MEMORY[0x1E69E7CC0]);
  }
}

void sub_1C1B82678(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_diagnostics;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (v10)
  {
    v20[0] = v8;
    v20[1] = 0;
    v21 = 0;
    v11 = v10;
    sub_1C1ACCE70(v20);
  }

  if ((v8 & 2) != 0)
  {
    v12 = 2607;
  }

  else
  {
    if ((v8 & 1) == 0)
    {
      return;
    }

    v12 = 2606;
  }

  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v5 + 104))(v7, *MEMORY[0x1E6989F48], v4);
  v14 = sub_1C1B94A48();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v17 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v18 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1201, v17, v18, 0);

  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_stop) = 1;
}

uint64_t sub_1C1B828A8(uint64_t a1, double a2)
{
  v40[1] = a1;
  v3 = sub_1C1B94A58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v43 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = v40 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v40[0] = v40 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v40 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = v40 - v14;
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9C9C0;
  v17 = *(v4 + 104);
  v17(v15, *MEMORY[0x1E6989FB0], v3);
  v18 = sub_1C1B94A48();
  v20 = v19;
  v21 = *(v4 + 8);
  v21(v15, v3);
  *(inited + 32) = v18;
  v42 = inited + 32;
  *(inited + 40) = v20;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v17(v13, *MEMORY[0x1E6989FD0], v3);
  v22 = sub_1C1B94A48();
  v24 = v23;
  v21(v13, v3);
  *(inited + 56) = v22;
  *(inited + 64) = v24;
  *(inited + 72) = sub_1C1B94538();
  v25 = v40[0];
  v17(v40[0], *MEMORY[0x1E6989FA0], v3);
  v26 = sub_1C1B94A48();
  v28 = v27;
  v21(v25, v3);
  *(inited + 80) = v26;
  *(inited + 88) = v28;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v29 = v41;
  v17(v41, *MEMORY[0x1E6989FC0], v3);
  v30 = sub_1C1B94A48();
  v32 = v31;
  v21(v29, v3);
  *(inited + 104) = v30;
  *(inited + 112) = v32;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v33 = v43;
  v17(v43, *MEMORY[0x1E6989F50], v3);
  v34 = v33;
  v35 = sub_1C1B94A48();
  v37 = v36;
  v21(v34, v3);
  *(inited + 128) = v35;
  *(inited + 136) = v37;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v38 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&unk_1EBF08DD0, &unk_1C1B9EF00);
  swift_arrayDestroy();
  sub_1C1AB3CFC(1406, v38, 0, 0);
}

id JourneyMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_1C1B82D74(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v9 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29[-v13];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    if ([result adType] && objc_msgSend(v16, sel_adType) != 7)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v17 = [v16 placeholder];
      result = swift_unknownObjectRelease();
      if ((v17 & 1) == 0 && (a3 & 1) == 0)
      {
        v18 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_didImpress;
        result = swift_beginAccess();
        if ((*(v4 + v18) & 1) == 0)
        {
          if (a1 > 49)
          {
            v21 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate;
            swift_beginAccess();
            sub_1C1ABB0C4(v4 + v21, v12);
            v22 = sub_1C1B94588();
            v23 = *(v22 - 8);
            v24 = (*(v23 + 48))(v12, 1, v22);
            sub_1C1AA7C8C(v12, &qword_1EBF07F50, &qword_1C1B9A590);
            if (v24 == 1)
            {
              (*(v23 + 16))(v14, a2, v22);
              (*(v23 + 56))(v14, 0, 1, v22);
              swift_beginAccess();
              sub_1C1AABE90(v14, v4 + v21);
              swift_endAccess();
            }

            v25 = *(v4 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration) + a4;
            *(v4 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration) = v25;
            v26 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionThresholdDuration;
            result = swift_beginAccess();
            if (*(v4 + v26) <= v25)
            {
              v27 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionDuration;
              swift_beginAccess();
              *(v4 + v27) = v25;
              sub_1C1ABB0C4(v4 + v21, v14);
              v28 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_impressionStartDate;
              swift_beginAccess();
              sub_1C1AABE90(v14, v4 + v28);
              result = swift_endAccess();
              *(v4 + v18) = 1;
            }
          }

          else
          {
            v19 = sub_1C1B94588();
            (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
            v20 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalImpressionStartDate;
            swift_beginAccess();
            sub_1C1AABE90(v14, v4 + v20);
            result = swift_endAccess();
            *(v4 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_internalAccumulatedImpressionDuration) = 0;
          }
        }
      }
    }
  }

  return result;
}

Swift::Void __swiftcall JourneyMetricsHelper.updateElementsShown(shown:partiallyShown:)(Swift::OpaquePointer shown, Swift::OpaquePointer partiallyShown)
{
  v3 = v2;
  v6 = sub_1C1B7CC04();
  v18 = v6;
  v7 = *(shown._rawValue + 2);
  if (v7)
  {
    v8 = shown._rawValue + 32;
    do
    {
      v9 = *v8++;
      sub_1C1B834A8(&v17, v9);
      --v7;
    }

    while (v7);
    v6 = v18;
  }

  *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___shownSet) = v6;

  v10 = sub_1C1B7CC10();
  v18 = v10;
  v11 = *(partiallyShown._rawValue + 2);
  if (v11)
  {
    v12 = partiallyShown._rawValue + 32;
    do
    {
      v13 = *v12++;
      sub_1C1B834A8(&v17, v13);
      --v11;
    }

    while (v11);
    v14 = v18;
  }

  else
  {
    v14 = v10;
  }

  v15 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet;
  *(v3 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper____lazy_storage___partiallyShownSet) = v14;

  v18 = v14;

  sub_1C1B858F0(v16);

  *(v3 + v15) = v18;
}

Swift::String __swiftcall JourneyMetricsHelper.debugging()()
{
  v1 = [v0 debugDescription];
  v2 = sub_1C1B94D88();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_1C1B8338C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1C1B95958();
  v7 = sub_1C1B94988();
  MEMORY[0x1C6907960](v7);
  v8 = sub_1C1B959A8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = sub_1C1B94988();
      if (v12 == sub_1C1B94988())
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(*(v6 + 48) + 8 * v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C1B84250(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C1B834A8(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1C6907930](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C1B843BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C1B83590(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1C1B95958();
  sub_1C1B94DE8();
  v8 = sub_1C1B959A8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1C1B95888() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1C1B844E0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1C1B836E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
    v2 = sub_1C1B95438();
    v15 = v2;
    sub_1C1B95368();
    if (sub_1C1B953D8())
    {
      type metadata accessor for AdResponseBlock(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1C1B83B14(v9 + 1);
        }

        v2 = v15;
        result = sub_1C1B95268();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1C1B953D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

void sub_1C1B838C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&qword_1EBF09B28, &qword_1C1BA4340);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1C1B95958();
      v18 = sub_1C1B94988();
      MEMORY[0x1C6907960](v18);
      v19 = sub_1C1B959A8();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C1B83B14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1C1B95268();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C1B83D3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&unk_1EBF09B10, &qword_1C1BA4318);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      v18 = MEMORY[0x1C6907930](*(v5 + 40), v17, 1);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1C1B83F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&qword_1EBF09B38, &qword_1C1BA4350);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1C1B95958();
      sub_1C1B94DE8();
      v21 = sub_1C1B959A8();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1C1B841CC(uint64_t a1, uint64_t a2)
{
  sub_1C1B95268();
  result = sub_1C1B95348();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1C1B84250(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1B838C0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1C1B84660();
      goto LABEL_12;
    }

    sub_1C1B84B8C(v7 + 1);
  }

  v9 = *v3;
  sub_1C1B95958();
  v10 = sub_1C1B94988();
  MEMORY[0x1C6907960](v10);
  v11 = sub_1C1B959A8();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = sub_1C1B94988();
      if (v14 == sub_1C1B94988())
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C1B958D8();
  __break(1u);
}

void sub_1C1B843BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C1B83D3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1C1B848F0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C1B84DB0(v5 + 1);
  }

  v8 = *v3;
  v9 = MEMORY[0x1C6907930](*(*v3 + 40), v4, 1);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C1B958D8();
  __break(1u);
}

void sub_1C1B844E0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1C1B83F6C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1C1B84A30();
      goto LABEL_16;
    }

    sub_1C1B84FA4(v8 + 1);
  }

  v10 = *v4;
  sub_1C1B95958();
  sub_1C1B94DE8();
  v11 = sub_1C1B959A8();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1C1B95888() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1C1B958D8();
  __break(1u);
}

void sub_1C1B84660()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF09B28, &qword_1C1BA4340);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1B847A0()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF09B30, &qword_1C1BA4348);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1B848F0()
{
  v1 = v0;
  sub_1C1AC1F08(&unk_1EBF09B10, &qword_1C1BA4318);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1B84A30()
{
  v1 = v0;
  sub_1C1AC1F08(&qword_1EBF09B38, &qword_1C1BA4350);
  v2 = *v0;
  v3 = sub_1C1B95418();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1C1B84B8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&qword_1EBF09B28, &qword_1C1BA4340);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1C1B95958();
      v17 = sub_1C1B94988();
      MEMORY[0x1C6907960](v17);
      v18 = sub_1C1B959A8();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1C1B84DB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&unk_1EBF09B10, &qword_1C1BA4318);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      v17 = MEMORY[0x1C6907930](*(v5 + 40), v16, 1);
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1C1B84FA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1C1AC1F08(&qword_1EBF09B38, &qword_1C1BA4350);
  v4 = sub_1C1B95428();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1C1B95958();

      sub_1C1B94DE8();
      v20 = sub_1C1B959A8();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

uint64_t sub_1C1B851DC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1C1B953E8();

    if (v6)
    {
      v7 = sub_1C1B85470(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for AdResponseBlock(0);
  v10 = sub_1C1B95268();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1C1B95278();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1B847A0();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1C1B855C8(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1C1B85364(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = 1;
  v5 = MEMORY[0x1C6907930](*(*v1 + 40), a1, 1);
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v9 = 0;
        v4 = 1;
        return v9 | (v4 << 8);
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C1B848F0();
      v11 = v13;
    }

    v9 = *(*(v11 + 48) + v7);
    sub_1C1B85768(v7);
    v4 = 0;
    *v1 = v13;
  }

  else
  {
    v9 = 0;
  }

  return v9 | (v4 << 8);
}

uint64_t sub_1C1B85470(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1C1B953A8();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1C1B836E0(v5, v4);
  v15 = v6;

  v7 = sub_1C1B95268();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for AdResponseBlock(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1C1B95278();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1C1B855C8(v9);
  result = sub_1C1B95278();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C1B855C8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1B95338();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1C1B95268();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_1C1B85768(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1B95338();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + v6);
        v12 = MEMORY[0x1C6907930](*(v3 + 40), *(v10 + v6), 1) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1C1B858F0(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        sub_1C1B85364(*(*(a1 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1C1B859E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C1B86FE8();
  result = MEMORY[0x1C6907070](v2, MEMORY[0x1E6989E38], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1C1B8338C(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1C1B85A58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B94A58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenOnScreen;
  swift_beginAccess();
  if (*(v2 + v11))
  {
    v12 = sub_1C1AB35FC();
    if (!v12)
    {
      v12 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
    }

    v13 = v12;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = [Strong adType];
      swift_unknownObjectRelease();
      (*(v5 + 104))(v10, *MEMORY[0x1E6989F58], v4);
      v16 = sub_1C1B94A48();
      v18 = v17;
      (*(v5 + 8))(v10, v4);
      v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40[0] = v13;
      sub_1C1AB7E20(v19, v16, v18, isUniquelyReferenced_nonNull_native, v40);

      v13 = v40[0];
    }

    sub_1C1B7D8F0(77003, 0, v13);
  }

  else
  {
    sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B98E60;
    v23 = *MEMORY[0x1E6989F48];
    v39 = *(v5 + 104);
    v39(v10, v23, v4);
    v24 = sub_1C1B94A48();
    v26 = v25;
    v38 = *(v5 + 8);
    v38(v10, v4);
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v27 = sub_1C1AD408C(inited);
    swift_setDeallocating();
    sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
    v28 = sub_1C1AB35FC();
    if (!v28)
    {
      v28 = sub_1C1AB3BEC(MEMORY[0x1E69E7CC0]);
    }

    v29 = v28;
    v39(v8, *MEMORY[0x1E6989EC8], v4);
    v30 = sub_1C1B94A48();
    v32 = v31;
    v38(v8, v4);
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = [v33 placeholder];
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0;
    }

    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = v29;
    sub_1C1AB7E20(v35, v30, v32, v36, v40);

    sub_1C1AB3CFC(1202, v27, v40[0], 0);

    v37 = OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_isCurrentlyOnScreen;
    result = swift_beginAccess();
    *(v2 + v37) = 0;
    *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_viewReady) = 0;
    *(v2 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_hasBeenPlaced) = 0;
  }

  return result;
}

uint64_t sub_1C1B85ECC(uint64_t a1)
{
  v2 = sub_1C1B94A58();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1AC1F08(&qword_1EBF08DC8, &unk_1C1B9F390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B98E60;
  (*(v3 + 104))(v5, *MEMORY[0x1E6989F58], v2);
  v7 = sub_1C1B94A48();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v10 = sub_1C1AD408C(inited);
  swift_setDeallocating();
  sub_1C1AA7C8C(inited + 32, &unk_1EBF08DD0, &unk_1C1B9EF00);
  v11 = sub_1C1AB35FC();
  sub_1C1AB3CFC(1408, v10, v11, 0);
}

double sub_1C1B86088@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B860DC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1C1B86134(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B86F84()
{
  result = qword_1EDE6BB88;
  if (!qword_1EDE6BB88)
  {
    sub_1C1AC3404(&qword_1EBF09B20, &qword_1C1BA4338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BB88);
  }

  return result;
}

unint64_t sub_1C1B86FE8()
{
  result = qword_1EDE6A790;
  if (!qword_1EDE6A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A790);
  }

  return result;
}

uint64_t sub_1C1B8703C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1C6907070](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1C1B83590(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

id sub_1C1B870D4(id a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  if ([a1 actionType] == 1)
  {
    v9 = [a1 actionURL];
    if (v9)
    {
      v10 = v9;
      sub_1C1B94488();

      v11 = *(v3 + 16);
      v11(v6, v8, v2);
      LOBYTE(v10) = [a1 opensInstalledApp];
      [a1 confirmedClickInterval];
      v13 = v12;
      v14 = objc_allocWithZone(type metadata accessor for WebTapAction(0));
      v11(&v14[OBJC_IVAR____TtC15PromotedContent12WebTapAction_url], v6, v2);
      v14[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = v10;
      *&v14[OBJC_IVAR___APPCTapAction_actionType] = 1;
      *&v14[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v13;
      v15 = type metadata accessor for TapAction();
      v30.receiver = v14;
      v30.super_class = v15;
      v16 = objc_msgSendSuper2(&v30, sel_init);

      v17 = *(v3 + 8);
      v17(v6, v2);
      v17(v8, v2);
      return v16;
    }

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v28 = sub_1C1B94BE8();
    sub_1C1AB4454(v28, qword_1EDE6D058);
    v20 = sub_1C1B94BC8();
    v29 = sub_1C1B95128();
    if (!os_log_type_enabled(v20, v29))
    {
      goto LABEL_14;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Attempting to initialize a WebTapAction without a URL.";
    v24 = v29;
    v25 = v20;
    v26 = v22;
    v27 = 2;
LABEL_13:
    _os_log_impl(&dword_1C1AA2000, v25, v24, v23, v26, v27);
    MEMORY[0x1C6908230](v22, -1, -1);
LABEL_14:

    goto LABEL_15;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1C1B94BE8();
  sub_1C1AB4454(v19, qword_1EDE6D058);
  a1 = a1;
  v20 = sub_1C1B94BC8();
  v21 = sub_1C1B95128();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = [a1 actionType];

    v23 = "Attempting to initialize a WebTapAction with an invalid tap action type %ld.";
    v24 = v21;
    v25 = v20;
    v26 = v22;
    v27 = 12;
    goto LABEL_13;
  }

LABEL_15:
  return 0;
}

uint64_t UnfilledReason.fulfillOrder.getter(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 <= 201)
    {
      if (a1 == 200)
      {
        return 0;
      }

      else if (a1 == 201)
      {
        return 4;
      }

      else
      {
LABEL_40:
        result = sub_1C1B958C8();
        __break(1u);
      }
    }

    else if (a1 == 202)
    {
      return 3;
    }

    else if (a1 == 203)
    {
      return 2;
    }

    else
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return 10;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_40;
      case 1010:
        return 5;
      case 1020:
        return 7;
      case 1021:
        return 8;
      case 1022:
      case 1023:
        return 9;
      case 1025:
        return 28;
      case 1026:
        return 34;
      case 1027:
        return 35;
      case 1028:
        return 36;
      case 1029:
        return 31;
      case 1030:
        return 37;
      case 1031:
        return 38;
      case 1049:
        return 20;
      case 1050:
        return 21;
      case 1051:
        return 22;
      case 1052:
        return 23;
      case 1053:
        return 24;
      case 1054:
        return 25;
      case 1055:
        return 26;
      case 1056:
        return 27;
      case 1057:
        return 30;
      case 1058:
        return 32;
      case 1059:
        return 33;
      default:
        if (a1 == 206)
        {
          return 29;
        }

        if (a1 != 205)
        {
          goto LABEL_40;
        }

        result = 1;
        break;
    }
  }

  return result;
}

uint64_t UnfilledReason.description.getter(uint64_t a1)
{
  if (a1 <= 204)
  {
    if (a1 <= 201)
    {
      if (a1 == 200)
      {
        return 0x726F727245206F4ELL;
      }

      else if (a1 == 201)
      {
        return 0xD00000000000001DLL;
      }

      else
      {
LABEL_36:
        result = sub_1C1B958C8();
        __break(1u);
      }
    }

    else if (a1 == 202)
    {
      return 0xD000000000000019;
    }

    else if (a1 == 203)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0x78452074696D694CLL;
    }
  }

  else
  {
    switch(a1)
    {
      case 1000:
        return 0xD000000000000014;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_36;
      case 1010:
        return 0x206B726F7774654ELL;
      case 1020:
      case 1027:
        return 0xD00000000000001CLL;
      case 1021:
        return 0xD00000000000001DLL;
      case 1022:
      case 1023:
      case 1056:
        return 0xD000000000000023;
      case 1025:
        return 0x6920736461206F4ELL;
      case 1026:
      case 1029:
        goto LABEL_21;
      case 1028:
      case 1031:
        return 0xD00000000000002CLL;
      case 1030:
        return 0xD000000000000018;
      case 1049:
        return 0xD000000000000019;
      case 1050:
        return 0xD000000000000013;
      case 1051:
        return 0xD000000000000012;
      case 1052:
        goto LABEL_34;
      case 1053:
        return 0xD000000000000016;
      case 1054:
        return 0xD00000000000001ALL;
      case 1055:
        return 0xD000000000000015;
      case 1057:
        return 0x7373696D20414C53;
      case 1058:
        return 0xD00000000000001BLL;
      case 1059:
        return 0x7661206461206F4ELL;
      default:
        if (a1 == 205)
        {
LABEL_21:
          result = 0xD00000000000001ELL;
        }

        else
        {
          if (a1 != 206)
          {
            goto LABEL_36;
          }

LABEL_34:
          result = 0xD000000000000022;
        }

        break;
    }
  }

  return result;
}

uint64_t UnfilledReason.unfilledReasonInternal.getter(uint64_t result)
{
  if (((result - 1000) > 0x3B || ((1 << (result + 24)) & 0xFFE0000FEF00401) == 0) && (result - 200) >= 7)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1B87A88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B87B74(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1C1B87B74(uint64_t result)
{
  if (((result - 1000) > 0x3B || ((1 << (result + 24)) & 0xFFE0000FEF00401) == 0) && (result - 200) >= 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B87BC0()
{
  result = qword_1EBF09B40;
  if (!qword_1EBF09B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09B40);
  }

  return result;
}

unint64_t sub_1C1B87C24()
{
  result = qword_1EDE6C260;
  if (!qword_1EDE6C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C260);
  }

  return result;
}

uint64_t WebTapAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v4 = sub_1C1B944A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1B87D00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x80000001C1BA56E0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0x80000001C1BA56E0;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B87DA4()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B87E24(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B87E90(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B87F0C@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

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

void sub_1C1B87F6C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001C1BA56E0;
  v3 = 7107189;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1C1B87FA8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1C1B87FE0@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1B88044(uint64_t a1)
{
  v2 = sub_1C1B88E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B88080(uint64_t a1)
{
  v2 = sub_1C1B88E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id WebTapAction.__allocating_init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v9 = sub_1C1B944A8();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v7[v8], a1, v9);
  v7[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = a2;
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 1;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v13.receiver = v7;
  v13.super_class = type metadata accessor for TapAction();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  (*(v10 + 8))(a1, v9);
  return v11;
}

id WebTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v3[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = a2;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 1;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for TapAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

char *WebTapAction.__allocating_init(_:)(char *a1)
{
  return sub_1C1B88338(a1, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url, &OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp, "Unable to initialize WebTapAction from MobileRichAdInterfaceDefinitionTapAction because of missing required fields.");
}

{
  return sub_1C1B88338(a1, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url, &OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp, "Unable to initialize WebTapAction from OutstreamVideoTapAction because of missing required fields.");
}

char *sub_1C1B88338(char *a1, void *a2, void *a3, const char *a4)
{
  v8 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1C1B944A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  sub_1C1AC5430(&a1[*a2], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C1AC54A0(v10);
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C1B94BE8();
    sub_1C1AB4454(v18, qword_1EDE6D058);
    v19 = sub_1C1B94BC8();
    v20 = sub_1C1B95118();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C1AA2000, v19, v20, a4, v21, 2u);
      MEMORY[0x1C6908230](v21, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v23 = a1[*a3];
    v24 = *(v12 + 16);
    v24(v15, v17, v11);
    v25 = *&a1[OBJC_IVAR___APPCTapAction_confirmedClickInterval];
    v26 = objc_allocWithZone(type metadata accessor for WebTapAction(0));
    v24(&v26[OBJC_IVAR____TtC15PromotedContent12WebTapAction_url], v15, v11);
    v26[OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp] = v23 & 1;
    *&v26[OBJC_IVAR___APPCTapAction_actionType] = 1;
    *&v26[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v25;
    v27 = type metadata accessor for TapAction();
    v30.receiver = v26;
    v30.super_class = v27;
    v28 = objc_msgSendSuper2(&v30, sel_init);

    v29 = *(v12 + 8);
    v29(v15, v11);
    v29(v17, v11);
    return v28;
  }
}

void *sub_1C1B886C0(void *a1)
{
  v3 = sub_1C1B944A8();
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C1AC1F08(&qword_1EBF09B58, &qword_1C1BA4618);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v14 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B88E00();
  sub_1C1B95A08();
  if (v1)
  {
    v13 = v18;
    sub_1C1AA86F8(a1);
    type metadata accessor for WebTapAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v6;
    v10 = v14;
    LOBYTE(v17[0]) = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0, MEMORY[0x1E6968FD0]);
    sub_1C1B956F8();
    v12 = v18;
    (*(v10 + 32))(v18 + OBJC_IVAR____TtC15PromotedContent12WebTapAction_url, v5, v3);
    LOBYTE(v17[0]) = 1;
    *(v12 + OBJC_IVAR____TtC15PromotedContent12WebTapAction_opensInstalledApp) = sub_1C1B956A8() & 1;
    sub_1C1B95628();
    sub_1C1AAD2FC(v17, v16);
    v13 = TapAction.init(from:)(v16);
    sub_1C1AA86F8(v17);
    (*(v9 + 8))(v8, v15);
    sub_1C1AA86F8(a1);
  }

  return v13;
}

uint64_t sub_1C1B88A34(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09B48, &qword_1C1BA4488);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-1] - v5;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B88E00();
  sub_1C1B95A18();
  LOBYTE(v9[0]) = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0, MEMORY[0x1E6968FB8]);
  sub_1C1B95808();
  if (!v1)
  {
    LOBYTE(v9[0]) = 1;
    sub_1C1B957B8();
    sub_1C1B95738();
    sub_1C1B3BBE0(v9);
    sub_1C1AA86F8(v9);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C1B88CA8()
{
  v1 = OBJC_IVAR____TtC15PromotedContent12WebTapAction_url;
  v2 = sub_1C1B944A8();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id WebTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebTapAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WebTapAction(uint64_t a1)
{
  result = qword_1EDE6C2D8;
  if (!qword_1EDE6C2D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C1B88E00()
{
  result = qword_1EDE6B228;
  if (!qword_1EDE6B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B228);
  }

  return result;
}

uint64_t sub_1C1B88E5C(uint64_t a1)
{
  result = sub_1C1B944A8();
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

unint64_t sub_1C1B88F34()
{
  result = qword_1EBF09B50;
  if (!qword_1EBF09B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09B50);
  }

  return result;
}

unint64_t sub_1C1B88F8C()
{
  result = qword_1EDE6B218;
  if (!qword_1EDE6B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B218);
  }

  return result;
}

unint64_t sub_1C1B88FE4()
{
  result = qword_1EDE6B220;
  if (!qword_1EDE6B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B220);
  }

  return result;
}

uint64_t sub_1C1B89048(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  v6 = v5;
  v43 = sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v11 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C1B9C9C0;
  v13 = [v5 identifier];
  v14 = sub_1C1B94D88();
  v16 = v15;

  v17 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v18 = sub_1C1AA5E7C();
  v19 = v18;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  *(v12 + 96) = v17;
  *(v12 + 104) = v18;
  if (a3)
  {
    v20 = a2;
  }

  else
  {
    v20 = 1701736270;
  }

  v21 = 0xE400000000000000;
  if (a3)
  {
    v21 = a3;
  }

  *(v12 + 64) = v18;
  *(v12 + 72) = v20;
  v41 = v21;
  *(v12 + 80) = v21;
  v22 = v5;

  v23 = PlacementType.stringValue.getter(a1);
  *(v12 + 136) = v17;
  *(v12 + 144) = v19;
  *(v12 + 112) = v23;
  *(v12 + 120) = v24;
  v25 = MEMORY[0x1E69E7DE0];
  *(v12 + 176) = MEMORY[0x1E69E7DE0];
  v26 = sub_1C1AFC370();
  *(v12 + 184) = v26;
  *(v12 + 152) = a4;
  *(v12 + 216) = v25;
  *(v12 + 224) = v26;
  *(v12 + 192) = a5;
  sub_1C1B94BA8(v43, &dword_1C1AA2000, v11, "[PC] PC: (%{public}@) Trying to find a rep to replace placeholder with id: %{public}@ with type %{public}@, width %{public}g, height %{public}g", 143, 2, v12);

  v27 = a1;
  if (PlacementType.isSuitableReplacement(for:)(a1, [v5 adType]))
  {
    return sub_1C1B89384(a4, a5);
  }

  v44 = sub_1C1B95138();
  v29 = sub_1C1B95298();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C1B9D2F0;
  v31 = [v6 identifier];
  v32 = sub_1C1B94D88();
  v33 = v20;
  v35 = v34;

  v36 = MEMORY[0x1E69E6158];
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = v19;
  *(v30 + 32) = v32;
  *(v30 + 40) = v35;
  v37 = PlacementType.stringValue.getter(v27);
  *(v30 + 96) = v36;
  *(v30 + 104) = v19;
  *(v30 + 72) = v37;
  *(v30 + 80) = v38;
  v39 = PlacementType.stringValue.getter([v22 &selRef_context + 1]);
  *(v30 + 136) = v36;
  *(v30 + 144) = v19;
  *(v30 + 112) = v39;
  *(v30 + 120) = v40;
  *(v30 + 176) = v36;
  *(v30 + 184) = v19;
  *(v30 + 152) = v33;
  *(v30 + 160) = v41;

  sub_1C1B94BA8(v44, &dword_1C1AA2000, v29, "[PC] PC: (%{public}@) Ad Type (%{public}@) doesn't match requested type (%{public}@) when trying to replace placeholder with id (%{public}@)", 140, 2, v30);

  return 0;
}

uint64_t sub_1C1B89384(double a1, double a2)
{
  v6 = v2;
  v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v63 - v10;
  v12 = &selRef_hash;
  if ([v2 serverUnfilledReason] != 200)
  {
LABEL_4:
    v14 = [v2 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v15 = sub_1C1B94EC8();

    if (v15 >> 62)
    {
      if (sub_1C1B953A8())
      {
        goto LABEL_6;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      if ((v15 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6907490](0, v15);
        goto LABEL_9;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
        swift_unknownObjectRetain();
LABEL_9:

LABEL_46:
        [v6 serverUnfilledReason];
        return v16;
      }

      __break(1u);
LABEL_50:
      if (!sub_1C1B953A8())
      {
        goto LABEL_51;
      }

LABEL_34:
      if ((v14 & 0xC000000000000001) != 0)
      {
        goto LABEL_91;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v14 + 32);
        swift_unknownObjectRetain();
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_93;
    }

    v16 = 0;
    goto LABEL_46;
  }

  v13 = [v2 error];
  if (v13)
  {

    goto LABEL_4;
  }

  v17 = [v2 adType];
  if (v17 > 3)
  {
    if (v17 <= 5)
    {
      if (v17 != 4)
      {
LABEL_31:
        if (v17 != 5)
        {
          goto LABEL_119;
        }

        goto LABEL_32;
      }
    }

    else if (v17 != 6)
    {
      if (v17 != 7)
      {
        if (v17 == 8)
        {
          v18 = sub_1C1B95128();
          sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
          v19 = sub_1C1B95298();
          sub_1C1B94BA8(v18, &dword_1C1AA2000, v19, "Trying to compute representation for SRP wich is not supported.", 63, 2, MEMORY[0x1E69E7CC0]);

          return 0;
        }

        goto LABEL_119;
      }

      goto LABEL_32;
    }

    v24 = [v2 representations];
    sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v6 = sub_1C1B94EC8();

    if (v6 >> 62)
    {
      v17 = sub_1C1B953A8();
      if (!v17)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        goto LABEL_99;
      }
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      goto LABEL_95;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_42:
      v16 = *(v6 + 32);
      swift_unknownObjectRetain();
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v17 >= 3)
  {
    if (v17 != 3)
    {
      goto LABEL_119;
    }

    v12 = &selRef_hash;
    v11 = [v2 representations];
    v14 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
    v15 = sub_1C1B94EC8();

    if (!(v15 >> 62))
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_105:

        goto LABEL_106;
      }

LABEL_20:
      if ((v15 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C6907490](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_109;
        }

        swift_unknownObjectRetain();
      }

      v67 = &unk_1F415F4B8;
      v20 = swift_dynamicCastObjCProtocolConditional();
      swift_unknownObjectRelease();
      if (v20)
      {
        v21 = [v6 v12[23]];
        v22 = sub_1C1B94EC8();

        sub_1C1B8A0AC(v22);
        v16 = v23;
LABEL_43:

        return v16;
      }

LABEL_106:
      v58 = sub_1C1B95128();
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v59 = sub_1C1B95298();
      sub_1C1B94BA8(v58, &dword_1C1AA2000, v59, "Error: Video representation must conform to PromotableVideoRepresentation protocol.", 83, 2, MEMORY[0x1E69E7CC0]);

      return 0;
    }

LABEL_104:
    if (!sub_1C1B953A8())
    {
      goto LABEL_105;
    }

    goto LABEL_20;
  }

LABEL_32:
  v3 = &selRef_hash;
  v12 = [v6 representations];
  v15 = sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
  v14 = sub_1C1B94EC8();

  if (v14 >> 62)
  {
    goto LABEL_50;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_51:

  do
  {
    v27 = [v6 *(v3 + 184)];
    v12 = sub_1C1B94EC8();

    v14 = sub_1C1B8AD30(v12, a1, a2);

    if (v14 >> 62)
    {
LABEL_93:
      v3 = sub_1C1B953A8();
      if (!v3)
      {
LABEL_94:

        v51 = sub_1C1B95138();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v52 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1C1B98E60;
        v54 = [v6 identifier];
        v55 = sub_1C1B94D88();
        v57 = v56;

        *(v53 + 56) = MEMORY[0x1E69E6158];
        *(v53 + 64) = sub_1C1AA5E7C();
        *(v53 + 32) = v55;
        *(v53 + 40) = v57;
        sub_1C1B94BA8(v51, &dword_1C1AA2000, v52, "[PC] No representations had a vaild size for %{public}@", 55, 2, v53);

        return 0;
      }
    }

    else
    {
      v3 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_94;
      }
    }

    v4 = v14 & 0xC000000000000001;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x1C6907490](0, v14);
    }

    else
    {
      if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v28 = *(v14 + 32);
      swift_unknownObjectRetain();
    }

    v65 = v15;
    if (v3 == 1)
    {
LABEL_58:
      v29 = v28;
LABEL_59:
      v3 = sub_1C1AF5F58(v14);

      if (v3)
      {
        if ([v6 isOutstreamVideoAd])
        {
          v5 = sub_1C1B95108();
          sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
          v15 = sub_1C1B95298();
          sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_1C1B9AF30;
          v30 = [v6 identifier];
          v31 = sub_1C1B94D88();
          v33 = v32;

          *(v4 + 56) = MEMORY[0x1E69E6158];
          v66 = sub_1C1AA5E7C();
          *(v4 + 64) = v66;
          *(v4 + 32) = v31;
          *(v4 + 40) = v33;
          v34 = [v6 representations];
          v14 = sub_1C1B94EC8();

          if (!(v14 >> 62))
          {
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_63:
              if ((v14 & 0xC000000000000001) != 0)
              {
                v35 = v5;
                MEMORY[0x1C6907490](0, v14);
LABEL_66:
                v36 = v15;

                type metadata accessor for BannerRepresentation(0);
                v37 = swift_dynamicCastClass();
                if (v37)
                {
                  v38 = *(v37 + OBJC_IVAR___APPCBannerRepresentation_outstreamVideoInfo);
                  v39 = v38;
                  swift_unknownObjectRelease();
                  if (v38)
                  {
                    sub_1C1AA7E30(v39 + OBJC_IVAR___APPCOutstreamVideoInfo_videoAssetURL, v11, &qword_1EBF07AC8, &qword_1C1B9CED0);

                    v40 = sub_1C1B944A8();
                    v41 = *(v40 - 8);
                    if ((*(v41 + 48))(v11, 1, v40) != 1)
                    {
                      v64 = sub_1C1B94468();
                      v48 = v47;
                      (*(v41 + 8))(v11, v40);
                      v49 = (v4 + 72);
                      v50 = v66;
                      *(v4 + 96) = MEMORY[0x1E69E6158];
                      *(v4 + 104) = v50;
                      if (v48)
                      {
                        *v49 = v64;
LABEL_113:
                        *(v4 + 80) = v48;
                        sub_1C1B94BA8(v35, &dword_1C1AA2000, v36, "%{public}@ is an outstream video ad with asset URL %{public}@.", 62, 2, v4);

                        if (v3 >> 62)
                        {
                          v61 = sub_1C1B95578();
                        }

                        else
                        {
                          sub_1C1B95898();
                          v61 = v3;
                        }

                        sub_1C1B8A0AC(v61);
                        v16 = v62;

                        swift_unknownObjectRelease();
                        return v16;
                      }

LABEL_112:
                      *v49 = 4271950;
                      v48 = 0xE300000000000000;
                      goto LABEL_113;
                    }

                    sub_1C1AA7C8C(v11, &qword_1EBF07AC8, &qword_1C1B9CED0);
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }

LABEL_111:
                v49 = (v4 + 72);
                v60 = v66;
                *(v4 + 96) = MEMORY[0x1E69E6158];
                *(v4 + 104) = v60;
                goto LABEL_112;
              }

              if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v35 = v5;
                swift_unknownObjectRetain();
                goto LABEL_66;
              }

              __break(1u);
LABEL_119:
              v68 = v17;
              result = sub_1C1B958C8();
              __break(1u);
              return result;
            }

LABEL_110:
            v35 = v5;
            v36 = v15;

            goto LABEL_111;
          }

LABEL_109:
          v17 = sub_1C1B953A8();
          if (v17)
          {
            goto LABEL_63;
          }

          goto LABEL_110;
        }
      }

      return v29;
    }

    v66 = v14 & 0xFFFFFFFFFFFFFF8;
    v42 = 1;
    v15 = &selRef_hash;
    while (v4)
    {
      v29 = MEMORY[0x1C6907490](v42, v14);
      v5 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_88;
      }

LABEL_79:
      [v28 adSize];
      a2 = v43;
      [v29 adSize];
      if (a2 > v44 || ([v28 adSize], a2 = v45, objc_msgSend(v29, sel_adSize), a2 > v46))
      {
        swift_unknownObjectRelease();
        ++v42;
        if (v5 == v3)
        {
          goto LABEL_58;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v28 = v29;
        v42 = v5;
        if (v5 == v3)
        {
          goto LABEL_59;
        }
      }
    }

    if ((v42 & 0x8000000000000000) != 0)
    {
      goto LABEL_89;
    }

    if (v42 >= *(v66 + 16))
    {
      goto LABEL_90;
    }

    v29 = *(v14 + 8 * v42 + 32);
    swift_unknownObjectRetain();
    v5 = v42 + 1;
    if (!__OFADD__(v42, 1))
    {
      goto LABEL_79;
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    v12 = MEMORY[0x1C6907490](0, v14);
LABEL_37:

    type metadata accessor for ClientLayoutRepresentation(0);
    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
  }

  while (!v25);
  v14 = [v6 *(v3 + 184)];
  v6 = sub_1C1B94EC8();

  if (v6 >> 62)
  {
    if (!sub_1C1B953A8())
    {
      goto LABEL_99;
    }

LABEL_40:
    if ((v6 & 0xC000000000000001) == 0)
    {
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      goto LABEL_103;
    }

LABEL_95:
    v16 = MEMORY[0x1C6907490](0, v6);
    goto LABEL_43;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_99:

  return 0;
}

void sub_1C1B8A0AC(unint64_t a1)
{
  v9 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v83 - v10;
  v12 = sub_1C1B944A8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (!sub_1C1B953A8())
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v83 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1C6907490](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_108;
    }

    v4 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  ObjectType = swift_getObjectType();
  v16 = sub_1C1B4E4EC();
  if (v16)
  {
    v17 = v16;
    if (*(v16 + 16) && (v18 = sub_1C1AA7C14(0x697463656E6E6F63, 0xEE00657079546E6FLL), (v19 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v17 + 56) + 32 * v18, v94);

      if (swift_dynamicCast())
      {
        v16 = v91;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v16 = 0;
  }

LABEL_13:
  v5 = dbl_1C1BA4710[sub_1C1B1945C(v16)];
  v20 = sub_1C1B4E4EC();
  v21 = 0.0;
  if (v20)
  {
    v22 = v20;
    if (*(v20 + 16) && (v23 = sub_1C1AA7C14(0x74536C616E676973, 0xEE006874676E6572), (v24 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v22 + 56) + 32 * v23, v94);

      if (swift_dynamicCast())
      {
        v21 = v91;
      }
    }

    else
    {
    }
  }

  v86 = v11;

  v94[0] = sub_1C1B90C70(v25, sub_1C1AC8CB8);
  a1 = 0;
  v26 = sub_1C1B8FF18(v94);
  v3 = v94[0];
  v6 = v21 / 100.0;
  if ((v94[0] & 0x8000000000000000) == 0 && (v94[0] & 0x4000000000000000) == 0)
  {
    v27 = *(v94[0] + 16);
    goto LABEL_22;
  }

LABEL_108:
  v26 = sub_1C1B953A8();
  v27 = v26;
LABEL_22:
  v28 = v5 * v6;
  v87 = v13;
  v89 = v12;
  v84 = v15;
  v88 = v4;
  if (!v27)
  {

    v13 = 0;
    v39 = 1;
    v6 = 0.0;
    v7 = 0.0;
    v40 = 0;
    v41 = v86;
    goto LABEL_72;
  }

  v29 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C6907490](0, v3);
  }

  else
  {
    if (!*(v3 + 16))
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      MEMORY[0x1C6907490](v26, v3);
LABEL_65:

      swift_getObjectType();
      v46 = sub_1C1B4E4EC();
      swift_unknownObjectRelease();
      v40 = 0;
      v41 = v86;
      if (v46)
      {
        if (*(v46 + 16) && (v47 = sub_1C1AA7C14(v15, 0xE700000000000000), (v48 & 1) != 0))
        {
          sub_1C1AAA7B8(*(v46 + 56) + 32 * v47, v94);

          if (swift_dynamicCast())
          {
            v40 = v91;
          }
        }

        else
        {
        }
      }

      v39 = ObjectType;
LABEL_72:
      v49 = MEMORY[0x1E69E63B0];
      sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
      v50 = sub_1C1B95298();
      v51 = sub_1C1B95138();
      sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1C1B9D2F0;
      v53 = MEMORY[0x1E69E6438];
      *(v52 + 56) = v49;
      *(v52 + 64) = v53;
      *(v52 + 32) = v28;
      *(v52 + 96) = v49;
      *(v52 + 104) = v53;
      *(v52 + 72) = v40;
      *(v52 + 136) = v49;
      *(v52 + 144) = v53;
      *(v52 + 112) = v6;
      *(v52 + 176) = v49;
      *(v52 + 184) = v53;
      *(v52 + 152) = v7;
      sub_1C1B94B98("Max allowable bitrate: %{public}f, max provided bitrate: %{public}f, min provided bitrate: %{public}f, selected bitrate: %{public}f", 131, 2, &dword_1C1AA2000, v50, v51, v52);

      if ((v39 & 1) == 0)
      {
        swift_getObjectType();
        v54 = sub_1C1B4E4EC();
        if (v54)
        {
          v55 = v54;
          if (*(v54 + 16))
          {
            v56 = sub_1C1AA7C14(0x4C52557465737361, 0xE800000000000000);
            if (v57)
            {
              sub_1C1AAA7B8(*(v55 + 56) + 32 * v56, v94);

              v58 = v89;
              v59 = swift_dynamicCast();
              v60 = v87;
              (v87)[7](v41, v59 ^ 1u, 1, v58);
              if ((*(v60 + 48))(v41, 1, v58) == 1)
              {
                swift_unknownObjectRelease();
LABEL_80:
                sub_1C1AA7C8C(v41, &qword_1EBF07AC8, &qword_1C1B9CED0);
                return;
              }

              v61 = v41;
              v62 = v84;
              (*(v60 + 32))(v84, v61, v58);
              v63 = sub_1C1B4E4EC();
              if (v63)
              {
                v64 = v63;
                a1 = v60;
                if (!*(v63 + 16) || (v65 = sub_1C1AA7C14(0x6E6F697461727564, 0xE800000000000000), (v66 & 1) == 0))
                {

                  swift_unknownObjectRelease();
                  goto LABEL_96;
                }

                sub_1C1AAA7B8(*(v64 + 56) + 32 * v65, v94);

                if (swift_dynamicCast())
                {
                  v67 = *&v91;
                  [v13 adSize];
                  v69 = v68;
                  v71 = v70;
                  v12 = v83;
                  v72 = [v83 mediaMetricHelper];
                  if (v72 && (v90 = v72, sub_1C1AC1F08(&qword_1EBF088D0, &qword_1C1B9D308), sub_1C1AC1F08(&qword_1EBF088D8, &qword_1C1BA46E0), (swift_dynamicCast() & 1) != 0))
                  {
                    if (*(&v92 + 1))
                    {
                      sub_1C1AC0580(&v91, v94);
                      v73 = sub_1C1AFBB40(v7 * (v69 * v71) * 0.000000953674316);
                      if (v74)
                      {
                        v75 = 0;
                      }

                      else
                      {
                        v75 = v73;
                      }

                      sub_1C1AAABE0(v94, v94[3]);
                      v76 = v84;
                      sub_1C1B18484(v84, v75, v67);
                      swift_unknownObjectRelease();
                      (*(a1 + 8))(v76, v89);
                      sub_1C1AA86F8(v94);
                      return;
                    }
                  }

                  else
                  {
LABEL_102:
                    v93 = 0;
                    v91 = 0u;
                    v92 = 0u;
                  }

                  sub_1C1AA7C8C(&v91, &qword_1EBF088C8, &qword_1C1B9D300);
                  LODWORD(v86) = sub_1C1B95128();
                  v77 = sub_1C1B95298();
                  v78 = swift_allocObject();
                  *(v78 + 16) = xmmword_1C1B98E60;
                  v79 = [v12 identifier];
                  v80 = sub_1C1B94D88();
                  v82 = v81;

                  *(v78 + 56) = MEMORY[0x1E69E6158];
                  *(v78 + 64) = sub_1C1AA5E7C();
                  *(v78 + 32) = v80;
                  *(v78 + 40) = v82;
                  sub_1C1B94BA8(v86, &dword_1C1AA2000, v77, "[PC] (%{public}@): Cannot find media metric helper to update video quality.", 75, 2, v78);
                  swift_unknownObjectRelease();

LABEL_96:
                  (*(a1 + 8))(v84, v89);
                  return;
                }

LABEL_99:
                (*(a1 + 8))(v84, v89);
              }

              else
              {
                (*(v60 + 8))(v62, v58);
              }

              swift_unknownObjectRelease();
              return;
            }
          }
        }
      }

      swift_unknownObjectRelease();
      (v87)[7](v41, 1, 1, v89);
      goto LABEL_80;
    }

    v13 = *(v3 + 32);
    swift_unknownObjectRetain();
  }

  v30 = 0;
  v15 = 0x65746172746962;
  v85 = (v3 + 32);
  while (1)
  {
    if (v29)
    {
      a1 = MEMORY[0x1C6907490](v30, v3);
      v12 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (v30 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_102;
      }

      a1 = *(v3 + 8 * v30 + 32);
      swift_unknownObjectRetain();
      v12 = (v30 + 1);
      if (__OFADD__(v30, 1))
      {
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    swift_getObjectType();
    v31 = sub_1C1B4E4EC();
    if (!v31)
    {
      goto LABEL_40;
    }

    v32 = v31;
    if (!*(v31 + 16) || (v33 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v34 & 1) == 0))
    {

LABEL_40:
      v26 = swift_unknownObjectRelease();
      goto LABEL_41;
    }

    sub_1C1AAA7B8(*(v32 + 56) + 32 * v33, v94);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_40;
    }

    if (*&v91 > v28)
    {
      break;
    }

    v26 = swift_unknownObjectRelease();
    v13 = a1;
LABEL_41:
    ++v30;
    if (v12 == v27)
    {
      goto LABEL_42;
    }
  }

  v26 = swift_unknownObjectRelease();
LABEL_42:
  ObjectType = v13 == 0;
  v7 = 0.0;
  if (!v13)
  {
    v35 = v85;
LABEL_51:
    if (v29)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  swift_getObjectType();
  v26 = sub_1C1B4E4EC();
  v35 = v85;
  if (!v26)
  {
    goto LABEL_51;
  }

  v36 = v26;
  if (!*(v26 + 16) || (v37 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v38 & 1) == 0))
  {

    if (v29)
    {
      goto LABEL_82;
    }

    goto LABEL_52;
  }

  sub_1C1AAA7B8(*(v36 + 56) + 32 * v37, v94);

  v26 = swift_dynamicCast();
  if ((v26 & 1) == 0)
  {
    goto LABEL_51;
  }

  v7 = *&v91;
  if (v29)
  {
LABEL_82:
    v42 = MEMORY[0x1C6907490](0, v3);
    goto LABEL_54;
  }

LABEL_52:
  if (!*(v3 + 16))
  {
    goto LABEL_112;
  }

  v42 = *v35;
  swift_unknownObjectRetain();
LABEL_54:
  swift_getObjectType();
  v43 = sub_1C1B4E4EC();
  swift_unknownObjectRelease();
  v6 = 0.0;
  if (v43)
  {
    if (*(v43 + 16) && (v44 = sub_1C1AA7C14(0x65746172746962, 0xE700000000000000), (v45 & 1) != 0))
    {
      sub_1C1AAA7B8(*(v43 + 56) + 32 * v44, v94);

      if (swift_dynamicCast())
      {
        v6 = *&v91;
      }
    }

    else
    {
    }
  }

  v26 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_111;
  }

  if (v29)
  {
    goto LABEL_113;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v26 < *(v3 + 16))
  {
    swift_unknownObjectRetain();
    goto LABEL_65;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1C1B8AD30(unint64_t a1, double a2, double a3)
{
  v5 = a1;
  v37 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_18:
    v6 = sub_1C1B953A8();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v34 = v5 & 0xFFFFFFFFFFFFFF8;
      v35 = v5 & 0xC000000000000001;
      v33 = v6;
      v32 = v5;
      while (1)
      {
        if (v35)
        {
          v8 = MEMORY[0x1C6907490](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }
        }

        else
        {
          if (v7 >= *(v34 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v23 = v37;
            if ((v37 & 0x8000000000000000) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_24;
          }
        }

        v10 = sub_1C1B95138();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v11 = sub_1C1B95298();
        sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1C1B9C9C0;
        v13 = MEMORY[0x1E69E7DE0];
        *(v12 + 56) = MEMORY[0x1E69E7DE0];
        v14 = sub_1C1AFC370();
        *(v12 + 64) = v14;
        *(v12 + 32) = a2;
        *(v12 + 96) = v13;
        *(v12 + 104) = v14;
        *(v12 + 72) = a3;
        [v8 adSize];
        *(v12 + 136) = v13;
        *(v12 + 144) = v14;
        *(v12 + 112) = v15;
        [v8 adSize];
        *(v12 + 176) = v13;
        *(v12 + 184) = v14;
        *(v12 + 152) = v16;
        v17 = [v36 identifier];
        v18 = sub_1C1B94D88();
        v20 = v19;

        *(v12 + 216) = MEMORY[0x1E69E6158];
        *(v12 + 224) = sub_1C1AA5E7C();
        *(v12 + 192) = v18;
        *(v12 + 200) = v20;
        sub_1C1B94BA8(v10, &dword_1C1AA2000, v11, "[PC] Computing best rep for size w: %{public}g, h: %{public}g for against ad w: %{public}g, h: %{public}g identifier %{public}@", 127, 2, v12);

        [v8 adSize];
        if (v21 > a2 || ([v8 adSize], v22 > a3))
        {
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1C1B954F8();
          sub_1C1B95528();
          sub_1C1B95538();
          sub_1C1B95508();
        }

        v5 = v32;
        ++v7;
        if (v9 == v33)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  if ((v23 & 0x4000000000000000) != 0)
  {
LABEL_24:
    if (sub_1C1B953A8())
    {
      return v23;
    }

    goto LABEL_22;
  }

  if (!*(v23 + 16))
  {
LABEL_22:
    v24 = sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v25 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1C1B98E60;
    v27 = [v36 identifier];
    v28 = sub_1C1B94D88();
    v30 = v29;

    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1C1AA5E7C();
    *(v26 + 32) = v28;
    *(v26 + 40) = v30;
    sub_1C1B94BA8(v24, &dword_1C1AA2000, v25, "[PC] No eligible representations found for %{public}@", 53, 2, v26);
  }

  return v23;
}

uint64_t static SponsorshipAdManager.shared.getter()
{
  if (qword_1EDE6BFF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C1B8B1B8(unint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C1B945F8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    if (*a2 == 1)
    {
      v16 = OBJC_IVAR___APPCContext_newsContext;
      swift_beginAccess();
      v17 = *(a3 + v16);
      if (v17)
      {
        v18 = (v17 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
        swift_beginAccess();
        v19 = v18[1];
        if (v19)
        {
          v20 = *v18 == 0xD00000000000001BLL && v19 == 0x80000001C1BAD590;
          if (v20 || (sub_1C1B95888() & 1) != 0)
          {
            v21 = &unk_1F414DAA0;
LABEL_22:
            v39 = OBJC_IVAR___APPCBaseContext_identifier;
            swift_beginAccess();
            (*(v13 + 16))(v15, a3 + v39, v12);
            v40 = sub_1C1B945A8();
            v42 = v41;
            (*(v13 + 8))(v15, v12);
            v35 = sub_1C1B8D2F4(a1, v21, v40, v42);

            return v35;
          }
        }

        v36 = (v17 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataChannelId);
        swift_beginAccess();
        v37 = v36[1];
        if (v37)
        {
          v38 = *v36 == 0xD000000000000017 && v37 == 0x80000001C1BAD570;
          if (v38 || (sub_1C1B95888() & 1) != 0)
          {
            v21 = &unk_1F414DAD0;
            goto LABEL_22;
          }
        }
      }

      v21 = a1;
      goto LABEL_22;
    }

    v30 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v13 + 16))(v15, a3 + v30, v12);
    v31 = sub_1C1B945A8();
    v33 = v32;
    (*(v13 + 8))(v15, v12);
    sub_1C1B94578();
    v34 = swift_beginAccess();
    v27 = *(v4 + 24);
    MEMORY[0x1EEE9AC00](v34);
    v28 = &v44 - 8;
    *(&v44 - 6) = v11;
    *(&v44 - 5) = v31;
    *(&v44 - 4) = v33;
    strcpy(&v44 - 24, "superfeed_key1");
    *(&v44 - 9) = -18;
    *(&v44 - 1) = a1;

    v29 = sub_1C1B91A28;
  }

  else
  {
    v22 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v13 + 16))(v15, a3 + v22, v12);
    v23 = sub_1C1B945A8();
    v25 = v24;
    (*(v13 + 8))(v15, v12);
    sub_1C1B94578();
    v26 = swift_beginAccess();
    v27 = *(v4 + 24);
    MEMORY[0x1EEE9AC00](v26);
    v28 = &v44 - 8;
    *(&v44 - 6) = v11;
    *(&v44 - 5) = v23;
    *(&v44 - 4) = v25;
    strcpy(&v44 - 24, "superfeed_key1");
    *(&v44 - 9) = -18;
    *(&v44 - 1) = a1;

    v29 = sub_1C1B91B60;
  }

  v35 = sub_1C1AAE7B4(v29, v28, v27);

  (*(v9 + 8))(v11, v8);
  return v35;
}

void *SponsorshipAdManager.promotedContent(info:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C1B953A8())
  {
    v19 = OBJC_IVAR___APPCPromotedContentInfo_promotedContent;

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = &v5[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v10 = *v8;
      v9 = *(v8 + 1);
      v11 = *(a1 + v19);

      v12 = [v11 identifier];
      v13 = sub_1C1B94D88();
      v15 = v14;

      if (v10 == v13 && v9 == v15)
      {

LABEL_19:

        return v6;
      }

      v17 = sub_1C1B95888();

      if (v17)
      {
        goto LABEL_19;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_17:

  return 0;
}

uint64_t sub_1C1B8B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[32] = a1;
  v5[33] = a2;
  v5[34] = a3;
  v5[35] = v3;

  if (v3)
  {
    v6 = sub_1C1B8C5C0;
  }

  else
  {
    v6 = sub_1C1B8B9D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C1B8B9D0()
{
  v90 = v0;
  v1 = *(v0 + 208);
  result = swift_beginAccess();
  v85 = *(v1 + 24);
  if (v85 >> 62)
  {
    result = sub_1C1B953A8();
    v3 = result;
    v79 = v1;
    if (!result)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v3 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = v1;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v4 = v85 & 0xC000000000000001;

  v5 = 0;
  v82 = v3;
  do
  {
    if (v4)
    {
      v14 = MEMORY[0x1C6907490](v5, v85);
    }

    else
    {
      v14 = *(v85 + 8 * v5 + 32);
    }

    v15 = v14;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v16 = sub_1C1B94BE8();
    sub_1C1AB4454(v16, qword_1EDE6D058);

    v17 = v15;
    v18 = sub_1C1B94BC8();
    v19 = sub_1C1B95108();

    if (os_log_type_enabled(v18, v19))
    {
      v6 = v88[33];
      v7 = v88[34];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v89 = v9;
      *v8 = 67109890;
      *(v8 + 4) = 36;
      *(v8 + 8) = 2080;
      *(v8 + 10) = sub_1C1AC7650(v6, v7, &v89);
      *(v8 + 18) = 1024;
      *(v8 + 20) = 36;
      *(v8 + 24) = 2080;
      v10 = &v17[OBJC_IVAR___APPCPromotedContent_identifier];
      v4 = v85 & 0xC000000000000001;
      swift_beginAccess();
      v12 = *v10;
      v11 = v10[1];

      v13 = sub_1C1AC7650(v12, v11, &v89);
      v3 = v82;

      *(v8 + 26) = v13;
      _os_log_impl(&dword_1C1AA2000, v18, v19, "Context ID: %-*s Content ID: %-*s Content removed from cache.", v8, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v9, -1, -1);
      MEMORY[0x1C6908230](v8, -1, -1);
    }

    else
    {
    }

    ++v5;
  }

  while (v3 != v5);

  v1 = v79;
LABEL_15:
  v20 = v88[32];
  *(v1 + 24) = MEMORY[0x1E69E7CC0];

  if (v20 >> 62)
  {
    result = sub_1C1B953A8();
    v86 = result;
    if (result)
    {
LABEL_17:
      if (v86 >= 1)
      {
        v22 = 0;
        v83 = v20 & 0xC000000000000001;
        v23 = v88[28];
        v78 = v88[32] + 32;
        v80 = (v23 + 8);
        v81 = (v23 + 16);
        *&v21 = 67110146;
        v76 = v21;
        while (1)
        {
          v24 = v83 ? MEMORY[0x1C6907490](v22, v88[32]) : *(v78 + 8 * v22);
          v25 = v24;
          v27 = v88[29];
          v26 = v88[30];
          v28 = v88[27];
          [v24 setBestRepresentation_];
          swift_unknownObjectRelease();
          v29 = OBJC_IVAR___APPCPromotedContent_expirationDate;
          swift_beginAccess();
          (*v81)(v26, &v25[v29], v28);
          sub_1C1B94578();
          LOBYTE(v29) = sub_1C1B94548();
          v30 = *v80;
          (*v80)(v27, v28);
          v30(v26, v28);
          if ((v29 & 1) == 0)
          {
            break;
          }

          v31 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
          swift_beginAccess();
          v32 = *&v25[v31];
          if (v32 == 1030 || v32 == 200)
          {
            swift_beginAccess();
            v33 = v25;
            MEMORY[0x1C6906EA0]();
            if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C1B94F08();
            }

            sub_1C1B94F48();
            swift_endAccess();

            goto LABEL_21;
          }

          if (qword_1EDE6C4E0 != -1)
          {
            swift_once();
          }

          v46 = sub_1C1B94BE8();
          sub_1C1AB4454(v46, qword_1EDE6D058);

          v35 = v25;
          v36 = sub_1C1B94BC8();
          v47 = sub_1C1B95108();

          if (os_log_type_enabled(v36, v47))
          {
            v48 = v88[33];
            v49 = v88[34];
            v50 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            v89 = v77;
            *v50 = v76;
            *(v50 + 4) = 36;
            *(v50 + 8) = 2080;
            *(v50 + 10) = sub_1C1AC7650(v48, v49, &v89);
            *(v50 + 18) = 1024;
            *(v50 + 20) = 36;
            *(v50 + 24) = 2080;
            v51 = &v35[OBJC_IVAR___APPCPromotedContent_identifier];
            swift_beginAccess();
            v53 = *v51;
            v52 = v51[1];

            v54 = sub_1C1AC7650(v53, v52, &v89);

            *(v50 + 26) = v54;
            *(v50 + 34) = 2080;
            v55 = UnfilledReason.description.getter(*&v25[v31]);
            v57 = sub_1C1AC7650(v55, v56, &v89);

            *(v50 + 36) = v57;
            v1 = v79;
            _os_log_impl(&dword_1C1AA2000, v36, v47, "Context ID: %-*s Content ID: %-*s Content has server unfilled reason %s.", v50, 0x2Cu);
            swift_arrayDestroy();
            MEMORY[0x1C6908230](v77, -1, -1);
LABEL_19:
            MEMORY[0x1C6908230]();
          }

LABEL_20:

LABEL_21:
          if (v86 == ++v22)
          {
            goto LABEL_42;
          }
        }

        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v34 = sub_1C1B94BE8();
        sub_1C1AB4454(v34, qword_1EDE6D058);

        v35 = v25;
        v36 = sub_1C1B94BC8();
        v37 = sub_1C1B95108();

        if (!os_log_type_enabled(v36, v37))
        {
          goto LABEL_20;
        }

        v39 = v88[33];
        v38 = v88[34];
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v89 = v41;
        *v40 = 67109890;
        *(v40 + 4) = 36;
        *(v40 + 8) = 2080;
        *(v40 + 10) = sub_1C1AC7650(v39, v38, &v89);
        *(v40 + 18) = 1024;
        *(v40 + 20) = 36;
        *(v40 + 24) = 2080;
        v42 = &v35[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v44 = *v42;
        v43 = v42[1];

        v45 = sub_1C1AC7650(v44, v43, &v89);

        *(v40 + 26) = v45;
        v1 = v79;
        _os_log_impl(&dword_1C1AA2000, v36, v37, "Context ID: %-*s Content ID: %-*s Content has expired.", v40, 0x22u);
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v41, -1, -1);
        goto LABEL_19;
      }

      goto LABEL_61;
    }
  }

  else
  {
    v86 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v86)
    {
      goto LABEL_17;
    }
  }

LABEL_42:

  v87 = *(v1 + 24);
  if (v87 >> 62)
  {
    result = sub_1C1B953A8();
    v58 = result;
    if (!result)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v58 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v58)
    {
      goto LABEL_57;
    }
  }

  if (v58 < 1)
  {
LABEL_62:
    __break(1u);
    return result;
  }

  v59 = v87 & 0xC000000000000001;

  v60 = 0;
  v84 = v58;
  do
  {
    if (v59)
    {
      v69 = MEMORY[0x1C6907490](v60, v87);
    }

    else
    {
      v69 = *(v87 + 8 * v60 + 32);
    }

    v70 = v69;
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v71 = sub_1C1B94BE8();
    sub_1C1AB4454(v71, qword_1EDE6D058);

    v72 = v70;
    v73 = sub_1C1B94BC8();
    v74 = sub_1C1B95108();

    if (os_log_type_enabled(v73, v74))
    {
      v61 = v88[33];
      v62 = v88[34];
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v89 = v64;
      *v63 = 67109890;
      *(v63 + 4) = 36;
      *(v63 + 8) = 2080;
      *(v63 + 10) = sub_1C1AC7650(v61, v62, &v89);
      *(v63 + 18) = 1024;
      *(v63 + 20) = 36;
      *(v63 + 24) = 2080;
      v65 = &v72[OBJC_IVAR___APPCPromotedContent_identifier];
      v59 = v87 & 0xC000000000000001;
      swift_beginAccess();
      v67 = *v65;
      v66 = v65[1];

      v68 = sub_1C1AC7650(v67, v66, &v89);
      v58 = v84;

      *(v63 + 26) = v68;
      _os_log_impl(&dword_1C1AA2000, v73, v74, "Context ID: %-*s Content ID: %-*s Content saved to cache.", v63, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v64, -1, -1);
      MEMORY[0x1C6908230](v63, -1, -1);
    }

    else
    {
    }

    ++v60;
  }

  while (v58 != v60);

LABEL_57:

  sub_1C1B8C774();

  v75 = v88[1];

  return v75();
}

uint64_t sub_1C1B8C5C0()
{
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = sub_1C1B94BE8();
  sub_1C1AB4454(v2, qword_1EDE6D058);
  v3 = v1;
  v4 = sub_1C1B94BC8();
  v5 = sub_1C1B95128();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 280);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1C1AA2000, v4, v5, "%@", v8, 0xCu);
    sub_1C1AA7C8C(v9, &qword_1EBF08A28, &qword_1C1B9D830);
    MEMORY[0x1C6908230](v9, -1, -1);
    MEMORY[0x1C6908230](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1C1B8C774()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    result = sub_1C1B953A8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_1C1B94418();
  swift_allocObject();
  sub_1C1B94408();

  sub_1C1AC1F08(&qword_1EBF09B60, &unk_1C1BA46B0);
  sub_1C1B91A6C(&qword_1EDE6A698, &qword_1EDE6BC10, &protocol conformance descriptor for PromotedContent, MEMORY[0x1E69E6300]);
  v3 = sub_1C1B943F8();
  v5 = v4;

  v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v7 = sub_1C1B94D78();
  v8 = [v6 initWithSuiteName_];

  if (!v8)
  {
    v8 = [objc_opt_self() standardUserDefaults];
  }

  v9 = sub_1C1B94D78();
  [v8 removeObjectForKey_];

  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v11 = sub_1C1B94D78();
  v12 = [v10 initWithSuiteName_];

  if (!v12)
  {
    v12 = [objc_opt_self() standardUserDefaults];
  }

  v13 = sub_1C1B944C8();
  v14 = sub_1C1B94D78();
  [v12 setObject:v13 forKey:v14];

  return sub_1C1AE4A00(v3, v5);
}

uint64_t sub_1C1B8CB68(uint64_t a1, uint64_t a2)
{
  sub_1C1B943E8();
  swift_allocObject();
  sub_1C1B943D8();
  sub_1C1AC1F08(&qword_1EBF09B60, &unk_1C1BA46B0);
  sub_1C1B91A6C(&qword_1EDE6A690, &qword_1EDE6BC08, &protocol conformance descriptor for PromotedContent, MEMORY[0x1E69E6330]);
  sub_1C1B943C8();

  swift_beginAccess();
  *(v2 + 24) = v4;

  return 1;
}

void sub_1C1B8CDB0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_1C1AF5DAC(a1, a2);
  v7 = sub_1C1B79814(a1, a2);
  sub_1C1AE4A00(a1, a2);
  sub_1C1B8FE14();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9D2F0;
  *(inited + 32) = sub_1C1B94938();
  *(inited + 40) = sub_1C1AA576C(0, &qword_1EDE6BB28, 0x1E695DEC8);
  *(inited + 48) = sub_1C1AA576C(0, &qword_1EDE6C4C0, 0x1E698A038);
  *(inited + 56) = sub_1C1AA576C(0, qword_1EDE6CA20, 0x1E698A028);
  sub_1C1B63440(inited);

  sub_1C1B94D88();
  sub_1C1B95238();

  if (!v24[3])
  {
    sub_1C1AA7C8C(v24, &qword_1EBF08850, &qword_1C1B9CC70);
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C1B94BE8();
    sub_1C1AB4454(v18, qword_1EDE6D058);
    v19 = sub_1C1B94BC8();
    v20 = sub_1C1B95128();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C1AA2000, v19, v20, "Sponsorship ad manager failed to decode SponsorshipArchive.", v21, 2u);
      MEMORY[0x1C6908230](v21, -1, -1);
    }

    return;
  }

  v9 = sub_1C1B94928();
  v10 = sub_1C1B447A0(v9);
  v11 = sub_1C1B94918();
  v12 = v11;
  if (v11 >> 62)
  {
    v13 = sub_1C1B953A8();
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_19:

    v22 = MEMORY[0x1E69E7CC0];
LABEL_20:
    swift_beginAccess();
    *(v3 + 24) = v22;

    return;
  }

  v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_5:
  v24[0] = MEMORY[0x1E69E7CC0];
  sub_1C1B95518();
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1C6907490](v14, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = v10;
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v16, v10);
      sub_1C1B954F8();
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v13 != v14);

    v22 = v24[0];
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1C1B8D2F4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_1C1B94588();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1B94578();
  swift_beginAccess();
  v60 = v4;
  v13 = *(v4 + 24);
  v64 = v12;
  v65 = a3;
  v62 = a3;
  v66 = a4;
  strcpy(v67, "superfeed_key1");
  v67[15] = -18;
  v68 = a2;

  v14 = sub_1C1AAE7B4(sub_1C1B91B60, v63, v13);
  v15 = *(v10 + 8);
  v15(v12, v9);
  if (v14 >> 62)
  {
    goto LABEL_34;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6907490](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_46;
        }

        v16 = *(v14 + 32);
      }

      v17 = v16;

      v18 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
      swift_beginAccess();
      v19 = *&v17[v18];
      swift_unknownObjectRetain();

      if (!v19)
      {
        goto LABEL_36;
      }

      type metadata accessor for ClientLayoutRepresentation(0);
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      v21 = (v20 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
      v22 = *(v20 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);
      v58[1] = v19;
      if (!v22)
      {
        if (qword_1EDE6C4E0 != -1)
        {
          swift_once();
        }

        v61 = v15;
        v33 = sub_1C1B94BE8();
        sub_1C1AB4454(v33, qword_1EDE6D058);

        v34 = sub_1C1B94BC8();
        v35 = sub_1C1B95108();

        v36 = a4;
        if (os_log_type_enabled(v34, v35))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v59 = v9;
          v39 = v38;
          v70 = v38;
          *v37 = 67109378;
          *(v37 + 4) = 36;
          *(v37 + 8) = 2080;
          v40 = v62;
          *(v37 + 10) = sub_1C1AC7650(v62, v36, &v70);
          _os_log_impl(&dword_1C1AA2000, v34, v35, "Context ID: %-*s There are no campaign ID for the today feed to perform a brand conflict check with.", v37, 0x12u);
          sub_1C1AA86F8(v39);
          v41 = v39;
          v9 = v59;
          MEMORY[0x1C6908230](v41, -1, -1);
          MEMORY[0x1C6908230](v37, -1, -1);
        }

        else
        {

          v40 = v62;
        }

        v42 = sub_1C1B94578();
        v43 = *(v60 + 24);
        MEMORY[0x1EEE9AC00](v42);
        v58[-6] = v12;
        v58[-5] = v40;
        v58[-4] = v36;
        v58[-3] = 0x6F72677265707573;
        v58[-2] = 0xEF3179656B5F7075;
        v58[-1] = a1;

        v32 = sub_1C1AAE7B4(sub_1C1B91B60, &v58[-8], v43);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

      v61 = *v21;
      v59 = v22;

      v23 = sub_1C1B94578();
      v24 = *(v60 + 24);
      MEMORY[0x1EEE9AC00](v23);
      v25 = v62;
      v58[-6] = v12;
      v58[-5] = v25;
      v58[-4] = a4;
      v58[-3] = 0x6F72677265707573;
      v58[-2] = 0xEF3179656B5F7075;
      v58[-1] = a1;

      v26 = sub_1C1AAE7B4(sub_1C1B91B60, &v58[-8], v24);
      v27 = v9;
      v9 = v26;
      v15(v12, v27);
      v70 = MEMORY[0x1E69E7CC0];
      if (!(v9 >> 62))
      {
        v28 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_11;
      }

LABEL_46:
      v28 = sub_1C1B953A8();
LABEL_11:
      v14 = v62;
      a1 = v59;
      if (!v28)
      {
        v32 = MEMORY[0x1E69E7CC0];
LABEL_29:

        swift_unknownObjectRelease();

        return v32;
      }

      v12 = 0;
      v60 = v9 & 0xC000000000000001;
      v29 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v60)
        {
          v30 = v9;
          v31 = MEMORY[0x1C6907490](v12, v9);
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_33;
          }

          v30 = v9;
          v31 = *(v9 + 8 * v12 + 32);
        }

        v9 = v31;
        v15 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v69 = v31;
        if (sub_1C1B8DB3C(&v69, v14, a4, v61, a1))
        {
          sub_1C1B954F8();
          sub_1C1B95528();
          a1 = v59;
          sub_1C1B95538();
          sub_1C1B95508();
          v14 = v62;
        }

        else
        {
        }

        ++v12;
        v9 = v30;
        if (v15 == v28)
        {
          v32 = v70;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    while (sub_1C1B953A8());
  }

LABEL_36:
  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v61 = v15;
  v44 = sub_1C1B94BE8();
  sub_1C1AB4454(v44, qword_1EDE6D058);

  v45 = sub_1C1B94BC8();
  v46 = sub_1C1B95108();

  v47 = a4;
  if (os_log_type_enabled(v45, v46))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v59 = 0;
    v50 = a1;
    v51 = v9;
    v52 = v49;
    v70 = v49;
    *v48 = 67109378;
    *(v48 + 4) = 36;
    *(v48 + 8) = 2080;
    v53 = v62;
    *(v48 + 10) = sub_1C1AC7650(v62, v47, &v70);
    _os_log_impl(&dword_1C1AA2000, v45, v46, "Context ID: %-*s There are no eligible masthead ads for the today feed to perform a brand conflict check with.", v48, 0x12u);
    sub_1C1AA86F8(v52);
    v54 = v52;
    v9 = v51;
    a1 = v50;
    MEMORY[0x1C6908230](v54, -1, -1);
    MEMORY[0x1C6908230](v48, -1, -1);
  }

  else
  {

    v53 = v62;
  }

  v55 = sub_1C1B94578();
  v56 = *(v60 + 24);
  MEMORY[0x1EEE9AC00](v55);
  v58[-6] = v12;
  v58[-5] = v53;
  v58[-4] = v47;
  v58[-3] = 0x6F72677265707573;
  v58[-2] = 0xEF3179656B5F7075;
  v58[-1] = a1;

  v32 = sub_1C1AAE7B4(sub_1C1B91B60, &v58[-8], v56);
LABEL_42:
  v61(v12, v9);
  return v32;
}

uint64_t sub_1C1B8DB3C(char **a1, NSObject *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *a1;
  v10 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  if (!*&v9[v10] || (type metadata accessor for ClientLayoutRepresentation(0), (v11 = swift_dynamicCastClass()) == 0))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v27 = sub_1C1B94BE8();
    sub_1C1AB4454(v27, qword_1EDE6D058);

    v28 = v9;
    v29 = sub_1C1B94BC8();
    v30 = sub_1C1B95108();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = a2;
      v34 = v32;
      v70 = v32;
      *v31 = 67109890;
      *(v31 + 4) = 36;
      *(v31 + 8) = 2080;
      *(v31 + 10) = sub_1C1AC7650(v33, a3, &v70);
      *(v31 + 18) = 1024;
      *(v31 + 20) = 36;
      *(v31 + 24) = 2080;
      v35 = &v28[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_1C1AC7650(v36, v37, &v70);

      *(v31 + 26) = v38;
      _os_log_impl(&dword_1C1AA2000, v29, v30, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it's campaign ID cannot be determined because it is of the wrong type.", v31, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v34, -1, -1);
      MEMORY[0x1C6908230](v31, -1, -1);
    }

    goto LABEL_30;
  }

  v12 = (v11 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID);
  v13 = *(v11 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_journeyRelayCampaignID + 8);
  if (!v13)
  {
    v39 = qword_1EDE6C4E0;
    swift_unknownObjectRetain();
    if (v39 != -1)
    {
      swift_once();
    }

    v40 = sub_1C1B94BE8();
    sub_1C1AB4454(v40, qword_1EDE6D058);

    v41 = v9;
    v29 = sub_1C1B94BC8();
    v42 = sub_1C1B95108();

    if (!os_log_type_enabled(v29, v42))
    {
      goto LABEL_29;
    }

    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = a2;
    v46 = v44;
    v70 = v44;
    *v43 = 67109890;
    *(v43 + 4) = 36;
    *(v43 + 8) = 2080;
    *(v43 + 10) = sub_1C1AC7650(v45, a3, &v70);
    *(v43 + 18) = 1024;
    *(v43 + 20) = 36;
    *(v43 + 24) = 2080;
    v47 = &v41[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v48 = *v47;
    v49 = v47[1];

    v50 = sub_1C1AC7650(v48, v49, &v70);

    *(v43 + 26) = v50;
    _os_log_impl(&dword_1C1AA2000, v29, v42, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it does not contain a campaign ID to match against.", v43, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v46, -1, -1);
    v51 = v43;
    goto LABEL_27;
  }

  v14 = *v12 == a4 && v13 == a5;
  v69 = *v12;
  if (!v14 && (sub_1C1B95888() & 1) == 0)
  {
    v52 = qword_1EDE6C4E0;
    swift_unknownObjectRetain();

    if (v52 != -1)
    {
      swift_once();
    }

    v53 = sub_1C1B94BE8();
    sub_1C1AB4454(v53, qword_1EDE6D058);

    v54 = v9;

    osloga = sub_1C1B94BC8();
    v55 = sub_1C1B95108();

    v66 = v55;
    v56 = v55;
    v29 = osloga;
    if (!os_log_type_enabled(osloga, v56))
    {

      goto LABEL_29;
    }

    v57 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v70 = v63;
    *v57 = 67110402;
    *(v57 + 4) = 36;
    *(v57 + 8) = 2080;
    *(v57 + 10) = sub_1C1AC7650(a2, a3, &v70);
    *(v57 + 18) = 1024;
    *(v57 + 20) = 36;
    *(v57 + 24) = 2080;
    v58 = &v54[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v60 = *v58;
    v59 = v58[1];

    v61 = sub_1C1AC7650(v60, v59, &v70);

    *(v57 + 26) = v61;
    *(v57 + 34) = 2080;
    v62 = sub_1C1AC7650(v69, v13, &v70);

    *(v57 + 36) = v62;
    *(v57 + 44) = 2080;
    *(v57 + 46) = sub_1C1AC7650(a4, a5, &v70);
    _os_log_impl(&dword_1C1AA2000, osloga, v66, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it's campaign ID %s does not match %s.", v57, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v63, -1, -1);
    v51 = v57;
LABEL_27:
    MEMORY[0x1C6908230](v51, -1, -1);
LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:

    return 0;
  }

  oslog = a2;
  v15 = qword_1EDE6C4E0;
  swift_unknownObjectRetain();

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = sub_1C1B94BE8();
  sub_1C1AB4454(v16, qword_1EDE6D058);

  v17 = v9;

  v18 = sub_1C1B94BC8();
  v19 = sub_1C1B95108();

  if (os_log_type_enabled(v18, v19))
  {
    log = v18;
    v20 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v70 = v65;
    *v20 = 67110402;
    *(v20 + 4) = 36;
    *(v20 + 8) = 2080;
    *(v20 + 10) = sub_1C1AC7650(oslog, a3, &v70);
    *(v20 + 18) = 1024;
    *(v20 + 20) = 36;
    *(v20 + 24) = 2080;
    v21 = &v17[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];

    v24 = sub_1C1AC7650(v22, v23, &v70);

    *(v20 + 26) = v24;
    *(v20 + 34) = 2080;
    v25 = sub_1C1AC7650(v69, v13, &v70);

    *(v20 + 36) = v25;
    *(v20 + 44) = 2080;
    *(v20 + 46) = sub_1C1AC7650(a4, a5, &v70);
    _os_log_impl(&dword_1C1AA2000, log, v19, "Context ID: %-*s Content ID: %-*s Content is eligible for sponsorship because it's campaign ID %s does match %s.", v20, 0x36u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v65, -1, -1);
    MEMORY[0x1C6908230](v20, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_1C1B8E3F0(char **a1, char *a2, uint64_t a3, NSObject *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v199 = a7;
  v198 = a6;
  v197 = a5;
  v204 = a4;
  v203 = a3;
  v9 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v197 - v10;
  v12 = sub_1C1B94588();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v200 = &v197 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v201 = &v197 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v202 = &v197 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v197 - v20;
  v22 = *a1;
  v23 = OBJC_IVAR___APPCPromotedContent_startDate;
  swift_beginAccess();
  v205 = v22;
  v24 = &v22[v23];
  v25 = v13;
  sub_1C1AA7E30(v24, v11, &qword_1EBF07F50, &qword_1C1B9A590);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C1AA7C8C(v11, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    (*(v13 + 32))(v21, v11, v12);
    if (sub_1C1B94548())
    {
      v26 = v21;
      v27 = v12;
      v28 = v205;
      if (qword_1EDE6C4E0 != -1)
      {
        swift_once();
      }

      v29 = sub_1C1B94BE8();
      sub_1C1AB4454(v29, qword_1EDE6D058);
      v30 = *(v25 + 16);
      v31 = v202;
      v200 = v26;
      v30(v202, v26, v27);
      v32 = v25;
      v33 = v201;
      v30(v201, a2, v27);
      v34 = v204;

      v35 = v28;
      v36 = sub_1C1B94BC8();
      v37 = sub_1C1B95108();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v205 = swift_slowAlloc();
        v208[0] = v205;
        *v38 = 67110402;
        LODWORD(v199) = v37;
        *(v38 + 4) = 36;
        *(v38 + 8) = 2080;
        *(v38 + 10) = sub_1C1AC7650(v203, v34, v208);
        *(v38 + 18) = 1024;
        *(v38 + 20) = 36;
        *(v38 + 24) = 2080;
        v39 = &v35[OBJC_IVAR___APPCPromotedContent_identifier];
        swift_beginAccess();
        v41 = *v39;
        v40 = v39[1];

        v42 = sub_1C1AC7650(v41, v40, v208);

        *(v38 + 26) = v42;
        *(v38 + 34) = 2080;
        sub_1C1B91B08(&qword_1EBF09B68, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v43 = v202;
        v44 = sub_1C1B95858();
        v204 = v36;
        v45 = v44;
        v47 = v46;
        v48 = *(v32 + 8);
        v48(v43, v27);
        v49 = sub_1C1AC7650(v45, v47, v208);

        *(v38 + 36) = v49;
        *(v38 + 44) = 2080;
        v50 = sub_1C1B95858();
        v52 = v51;
        v48(v33, v27);
        v53 = sub_1C1AC7650(v50, v52, v208);

        *(v38 + 46) = v53;
        v54 = v204;
        _os_log_impl(&dword_1C1AA2000, v204, v199, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because the start date %s is greater than the current date %s.", v38, 0x36u);
        v55 = v205;
        swift_arrayDestroy();
        MEMORY[0x1C6908230](v55, -1, -1);
        MEMORY[0x1C6908230](v38, -1, -1);

        v48(v200, v27);
      }

      else
      {

        v85 = *(v32 + 8);
        v85(v33, v27);
        v85(v31, v27);
        v85(v200, v27);
      }

      return 0;
    }

    (*(v13 + 8))(v21, v12);
  }

  v56 = v205;
  v57 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  v58 = *&v56[v57];
  v59 = v204;
  if (!v58 || (type metadata accessor for ClientLayoutRepresentation(0), (v60 = swift_dynamicCastClass()) == 0))
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v75 = sub_1C1B94BE8();
    sub_1C1AB4454(v75, qword_1EDE6D058);

    v76 = v56;
    v77 = sub_1C1B94BC8();
    v78 = sub_1C1B95108();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v207[0] = v80;
      *v79 = 67109890;
      *(v79 + 4) = 36;
      *(v79 + 8) = 2080;
      *(v79 + 10) = sub_1C1AC7650(v203, v59, v207);
      *(v79 + 18) = 1024;
      *(v79 + 20) = 36;
      *(v79 + 24) = 2080;
      v81 = &v76[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v82 = *v81;
      v83 = v81[1];

      v84 = sub_1C1AC7650(v82, v83, v207);

      *(v79 + 26) = v84;
      _os_log_impl(&dword_1C1AA2000, v77, v78, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because of type mismatch.", v79, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1C6908230](v80, -1, -1);
      MEMORY[0x1C6908230](v79, -1, -1);
    }

    goto LABEL_82;
  }

  v61 = *(v60 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions);
  if (!v61)
  {
    v86 = qword_1EDE6C4E0;
    swift_unknownObjectRetain();
    if (v86 != -1)
    {
      swift_once();
    }

    v87 = sub_1C1B94BE8();
    sub_1C1AB4454(v87, qword_1EDE6D058);

    v88 = v56;
    v77 = sub_1C1B94BC8();
    v89 = sub_1C1B95108();

    if (!os_log_type_enabled(v77, v89))
    {
      goto LABEL_81;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v207[0] = v91;
    *v90 = 67109890;
    *(v90 + 4) = 36;
    *(v90 + 8) = 2080;
    *(v90 + 10) = sub_1C1AC7650(v203, v59, v207);
    *(v90 + 18) = 1024;
    *(v90 + 20) = 36;
    *(v90 + 24) = 2080;
    v92 = &v88[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v93 = *v92;
    v94 = v92[1];

    v95 = sub_1C1AC7650(v93, v94, v207);

    *(v90 + 26) = v95;
    v96 = "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because of missing targeting dimensions.";
LABEL_31:
    _os_log_impl(&dword_1C1AA2000, v77, v89, v96, v90, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v91, -1, -1);
    MEMORY[0x1C6908230](v90, -1, -1);
    goto LABEL_81;
  }

  v62 = v56;
  v63 = *(v60 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_targetingDimensions + 8);
  v64 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v65 = &v62[v64];
  v66 = v58;
  v67 = v200;
  (*(v13 + 16))(v200, v65, v12);
  v202 = v66;
  swift_unknownObjectRetain();
  sub_1C1B08B68(v61, v63);
  LOBYTE(v66) = sub_1C1B94548();
  (*(v13 + 8))(v67, v12);
  if ((v66 & 1) == 0)
  {
    sub_1C1B0923C(v61, v63);
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v97 = sub_1C1B94BE8();
    sub_1C1AB4454(v97, qword_1EDE6D058);

    v98 = v205;
    v77 = sub_1C1B94BC8();
    v89 = sub_1C1B95108();

    if (!os_log_type_enabled(v77, v89))
    {
      goto LABEL_81;
    }

    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v206[0] = v91;
    *v90 = 67109890;
    *(v90 + 4) = 36;
    *(v90 + 8) = 2080;
    *(v90 + 10) = sub_1C1AC7650(v203, v59, v206);
    *(v90 + 18) = 1024;
    *(v90 + 20) = 36;
    *(v90 + 24) = 2080;
    v99 = &v98[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v100 = *v99;
    v101 = v99[1];

    v102 = sub_1C1AC7650(v100, v101, v206);

    *(v90 + 26) = v102;
    v96 = "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it has expired.";
    goto LABEL_31;
  }

  v68 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  v69 = *&v62[v68];
  if (v69 != 1030 && v69 != 200)
  {
    sub_1C1B0923C(v61, v63);
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v103 = sub_1C1B94BE8();
    sub_1C1AB4454(v103, qword_1EDE6D058);
    v104 = v204;

    v105 = v205;
    v106 = v205;
    v77 = sub_1C1B94BC8();
    v107 = sub_1C1B95108();

    if (!os_log_type_enabled(v77, v107))
    {
      goto LABEL_81;
    }

    v108 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v109 = v209;
    *v108 = 67110146;
    *(v108 + 4) = 36;
    *(v108 + 8) = 2080;
    *(v108 + 10) = sub_1C1AC7650(v203, v104, &v209);
    *(v108 + 18) = 1024;
    *(v108 + 20) = 36;
    *(v108 + 24) = 2080;
    v110 = &v106[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v111 = *v110;
    v112 = v110[1];

    v113 = sub_1C1AC7650(v111, v112, &v209);

    *(v108 + 26) = v113;
    *(v108 + 34) = 2080;
    v114 = UnfilledReason.description.getter(*&v105[v68]);
    v116 = sub_1C1AC7650(v114, v115, &v209);

    *(v108 + 36) = v116;
    _os_log_impl(&dword_1C1AA2000, v77, v107, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because it contains a server unfilled reason: %s.", v108, 0x2Cu);
    goto LABEL_69;
  }

  if (*(v63 + 16))
  {
    v70 = v197;
    v71 = v198;
    v72 = sub_1C1AA7C14(v197, v198);
    if (v73)
    {
      v74 = *(*(v63 + 56) + 8 * v72);
    }

    else
    {
      v74 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
    v71 = v198;
    v70 = v197;
  }

  v117 = MEMORY[0x1E69E7CC0];
  if (*(v61 + 16))
  {
    v118 = sub_1C1AA7C14(v70, v71);
    if (v119)
    {
      v120 = *(*(v61 + 56) + 8 * v118);
    }

    else
    {
      v120 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v120 = MEMORY[0x1E69E7CC0];
  }

  sub_1C1B0923C(v61, v63);
  v121 = *(v74 + 16);
  if (v121)
  {
    v206[0] = v117;
    sub_1C1AC7E04(0, v121, 0);
    v122 = v206[0];
    v123 = v74 + 40;
    do
    {
      v124 = sub_1C1B94DA8();
      v206[0] = v122;
      v127 = *(v122 + 16);
      v126 = *(v122 + 24);
      if (v127 >= v126 >> 1)
      {
        v201 = v124;
        v200 = v125;
        sub_1C1AC7E04((v126 > 1), v127 + 1, 1);
        v125 = v200;
        v124 = v201;
        v122 = v206[0];
      }

      *(v122 + 16) = v127 + 1;
      v128 = v122 + 16 * v127;
      *(v128 + 32) = v124;
      *(v128 + 40) = v125;
      v123 += 16;
      --v121;
    }

    while (v121);
  }

  else
  {

    v122 = MEMORY[0x1E69E7CC0];
  }

  v129 = sub_1C1B8703C(v122);

  v130 = *(v120 + 16);
  if (v130)
  {
    v206[0] = v117;
    sub_1C1AC7E04(0, v130, 0);
    v131 = v206[0];
    v132 = v120 + 40;
    v133 = v204;
    do
    {
      v134 = sub_1C1B94DA8();
      v206[0] = v131;
      v137 = *(v131 + 16);
      v136 = *(v131 + 24);
      if (v137 >= v136 >> 1)
      {
        v201 = v134;
        v139 = v135;
        sub_1C1AC7E04((v136 > 1), v137 + 1, 1);
        v135 = v139;
        v133 = v204;
        v134 = v201;
        v131 = v206[0];
      }

      *(v131 + 16) = v137 + 1;
      v138 = v131 + 16 * v137;
      *(v138 + 32) = v134;
      *(v138 + 40) = v135;
      v132 += 16;
      --v130;
    }

    while (v130);
  }

  else
  {

    v131 = MEMORY[0x1E69E7CC0];
    v133 = v204;
  }

  v140 = sub_1C1B8703C(v131);

  v141 = v199;
  v142 = *(v199 + 16);
  v143 = MEMORY[0x1E69E7CC0];
  if (v142)
  {
    v206[0] = MEMORY[0x1E69E7CC0];
    sub_1C1AC7E04(0, v142, 0);
    v143 = v206[0];
    v144 = v141 + 40;
    do
    {
      v145 = sub_1C1B94DA8();
      v206[0] = v143;
      v148 = *(v143 + 16);
      v147 = *(v143 + 24);
      if (v148 >= v147 >> 1)
      {
        v201 = v145;
        v150 = v146;
        sub_1C1AC7E04((v147 > 1), v148 + 1, 1);
        v146 = v150;
        v133 = v204;
        v145 = v201;
        v143 = v206[0];
      }

      *(v143 + 16) = v148 + 1;
      v149 = v143 + 16 * v148;
      *(v149 + 32) = v145;
      *(v149 + 40) = v146;
      v144 += 16;
      --v142;
    }

    while (v142);
  }

  v151 = sub_1C1B8703C(v143);

  sub_1C1B8FB2C(v129, v151);
  if ((v152 & 1) == 0)
  {

    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v170 = sub_1C1B94BE8();
    sub_1C1AB4454(v170, qword_1EDE6D058);

    v171 = v205;

    v77 = sub_1C1B94BC8();
    v172 = sub_1C1B95108();

    if (os_log_type_enabled(v77, v172))
    {
      v108 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v209 = v204;
      *v108 = 67110402;
      LODWORD(v205) = v172;
      *(v108 + 4) = 36;
      *(v108 + 8) = 2080;
      *(v108 + 10) = sub_1C1AC7650(v203, v133, &v209);
      *(v108 + 18) = 1024;
      *(v108 + 20) = 36;
      *(v108 + 24) = 2080;
      v173 = &v171[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v174 = *v173;
      v175 = v173[1];

      v176 = sub_1C1AC7650(v174, v175, &v209);

      *(v108 + 26) = v176;
      *(v108 + 34) = 2080;
      v177 = sub_1C1B95068();
      v179 = v178;

      v180 = sub_1C1AC7650(v177, v179, &v209);

      *(v108 + 36) = v180;
      *(v108 + 44) = 2080;
      v181 = sub_1C1B95068();
      v183 = v182;

      v184 = sub_1C1AC7650(v181, v183, &v209);

      *(v108 + 46) = v184;
      _os_log_impl(&dword_1C1AA2000, v77, v205, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because key set %s is a subset of excluded keys %s.", v108, 0x36u);
      v185 = v204;
      swift_arrayDestroy();
      v169 = v185;
      goto LABEL_74;
    }

    goto LABEL_80;
  }

  sub_1C1B8FB2C(v140, v151);
  if (v153)
  {
    if (qword_1EDE6C4E0 != -1)
    {
      swift_once();
    }

    v154 = sub_1C1B94BE8();
    sub_1C1AB4454(v154, qword_1EDE6D058);

    v155 = v205;

    v77 = sub_1C1B94BC8();
    v156 = sub_1C1B95108();

    if (os_log_type_enabled(v77, v156))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v209 = v109;
      *v108 = 67110402;
      LODWORD(v205) = v156;
      *(v108 + 4) = 36;
      *(v108 + 8) = 2080;
      *(v108 + 10) = sub_1C1AC7650(v203, v133, &v209);
      *(v108 + 18) = 1024;
      *(v108 + 20) = 36;
      *(v108 + 24) = 2080;
      v157 = &v155[OBJC_IVAR___APPCPromotedContent_identifier];
      swift_beginAccess();
      v158 = *v157;
      v159 = v157[1];

      v160 = sub_1C1AC7650(v158, v159, &v209);

      *(v108 + 26) = v160;
      *(v108 + 34) = 2080;
      v161 = sub_1C1B95068();
      v163 = v162;

      v164 = sub_1C1AC7650(v161, v163, &v209);

      *(v108 + 36) = v164;
      *(v108 + 44) = 2080;
      v165 = sub_1C1B95068();
      v167 = v166;

      v168 = sub_1C1AC7650(v165, v167, &v209);

      *(v108 + 46) = v168;
      _os_log_impl(&dword_1C1AA2000, v77, v205, "Context ID: %-*s Content ID: %-*s Content is ineligible for sponsorship because key set %s is disjoint from inclusion key set %s.", v108, 0x36u);
LABEL_69:
      swift_arrayDestroy();
      v169 = v109;
LABEL_74:
      MEMORY[0x1C6908230](v169, -1, -1);
      MEMORY[0x1C6908230](v108, -1, -1);
LABEL_81:
      swift_unknownObjectRelease();
LABEL_82:

      return 0;
    }

LABEL_80:

    goto LABEL_81;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v186 = sub_1C1B94BE8();
  sub_1C1AB4454(v186, qword_1EDE6D058);

  v187 = v205;
  v188 = sub_1C1B94BC8();
  v189 = sub_1C1B95108();

  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    v209 = v191;
    *v190 = 67109890;
    *(v190 + 4) = 36;
    *(v190 + 8) = 2080;
    *(v190 + 10) = sub_1C1AC7650(v203, v133, &v209);
    *(v190 + 18) = 1024;
    *(v190 + 20) = 36;
    *(v190 + 24) = 2080;
    v192 = &v187[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v193 = *v192;
    v194 = v192[1];

    v195 = sub_1C1AC7650(v193, v194, &v209);

    *(v190 + 26) = v195;
    _os_log_impl(&dword_1C1AA2000, v188, v189, "Context ID: %-*s Content ID: %-*s Content is eligible for sponsorship.", v190, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x1C6908230](v191, -1, -1);
    MEMORY[0x1C6908230](v190, -1, -1);
  }

  swift_unknownObjectRelease();

  return 1;
}

void sub_1C1B8FB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          sub_1C1B95958();

          sub_1C1B94DE8();
          v18 = sub_1C1B959A8();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (sub_1C1B95888() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t SponsorshipAdManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SponsorshipAdManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

void *sub_1C1B8FD8C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1C1B8FE14()
{
  v0 = sub_1C1AC1F08(&qword_1EBF09870, &qword_1C1BA3AF0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EBF09B70;
    v3 = &unk_1C1BA4700;
  }

  else
  {
    v2 = &qword_1EBF08D30;
    v3 = qword_1C1B9E9E0;
  }

  return sub_1C1AC1F08(v2, v3);
}

uint64_t sub_1C1B8FEB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1C1B953A8();
  }

  return sub_1C1B954A8();
}

uint64_t sub_1C1B8FF18(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C1AC0494(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C1B8FF94(v6);
  return sub_1C1B95508();
}

uint64_t sub_1C1B8FF94(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C1B95848();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C1AC1F08(&qword_1EBF07AE8, qword_1C1BA46C0);
        v6 = sub_1C1B94F28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C1B90194(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C1B900A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C1B900A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = sub_1C1AFE010(&v17, &v16);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1C1B90194(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v88;
    if (*v88)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_90;
    }

    goto LABEL_127;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v89 = v6;
      v10 = *a3;
      v11 = *(*a3 + 8 * v7);
      v92 = *(*a3 + 8 * v9);
      v93 = v11;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = sub_1C1AFE010(&v93, &v92);
      if (v4)
      {
LABEL_99:

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      v13 = v9;
      v14 = v12;
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v15 = v13 + 2;
      v86 = v13;
      v16 = 8 * v13;
      v5 = v10 + v16 + 16;
      while (1)
      {
        v7 = v89;
        if (v89 == v15)
        {
          break;
        }

        v17 = *v5;
        v92 = *(v5 - 8);
        v93 = v17;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v18 = sub_1C1AFE010(&v93, &v92);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        ++v15;
        v5 += 8;
        if ((v14 ^ v18))
        {
          v7 = v15 - 1;
          break;
        }
      }

      if (v14)
      {
        v9 = v86;
        if (v7 < v86)
        {
          goto LABEL_121;
        }

        if (v86 < v7)
        {
          v19 = 8 * v7 - 8;
          v20 = v7;
          v21 = v86;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = *(v22 + v16);
              *(v22 + v16) = *(v22 + v19);
              *(v22 + v19) = v23;
            }

            ++v21;
            v19 -= 8;
            v16 += 8;
          }

          while (v21 < v20);
        }
      }

      else
      {
        v9 = v86;
      }
    }

    v24 = a3[1];
    if (v7 >= v24)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_117;
    }

    if (v7 - v9 >= a4)
    {
      goto LABEL_130;
    }

    v25 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    if (v25 >= v24)
    {
      v25 = a3[1];
    }

    if (v25 < v9)
    {
      goto LABEL_120;
    }

    if (v7 == v25)
    {
LABEL_130:
      if (v7 < v9)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v72 = *a3;
      v5 = *a3 + 8 * v7 - 8;
      v87 = v9;
      v73 = v9 - v7;
      v83 = v25;
      do
      {
        v74 = *(v72 + 8 * v7);
        v84 = v73;
        v90 = v5;
        do
        {
          v92 = *v5;
          v93 = v74;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v75 = sub_1C1AFE010(&v93, &v92);
          if (v4)
          {
            goto LABEL_99;
          }

          v76 = v75;
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          if (!v76)
          {
            break;
          }

          if (!v72)
          {
            goto LABEL_123;
          }

          v77 = *v5;
          v74 = *(v5 + 8);
          *v5 = v74;
          *(v5 + 8) = v77;
          v5 -= 8;
        }

        while (!__CFADD__(v73++, 1));
        ++v7;
        v5 = v90 + 8;
        v73 = v84 - 1;
      }

      while (v7 != v83);
      v7 = v83;
      v9 = v87;
      if (v83 < v87)
      {
        goto LABEL_116;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C1ACE08C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_1C1ACE08C((v26 > 1), v27 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v28;
    v29 = &v8[16 * v27];
    *(v29 + 4) = v9;
    *(v29 + 5) = v7;
    v30 = *v88;
    if (!*v88)
    {
      goto LABEL_126;
    }

    if (v27)
    {
      break;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  while (1)
  {
    v31 = v28 - 1;
    if (v28 >= 4)
    {
      v36 = &v8[16 * v28 + 32];
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_103;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_104;
      }

      v43 = &v8[16 * v28];
      v45 = *v43;
      v44 = *(v43 + 1);
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_106;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_109;
      }

      if (v47 >= v39)
      {
        v65 = &v8[16 * v31 + 32];
        v67 = *v65;
        v66 = *(v65 + 1);
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_115;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

    if (v28 == 3)
    {
      v32 = *(v8 + 4);
      v33 = *(v8 + 5);
      v42 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      v35 = v42;
LABEL_47:
      if (v35)
      {
        goto LABEL_105;
      }

      v48 = &v8[16 * v28];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      v53 = v51;
      if (v51)
      {
        goto LABEL_108;
      }

      v54 = &v8[16 * v31 + 32];
      v56 = *v54;
      v55 = *(v54 + 1);
      v42 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v42)
      {
        goto LABEL_111;
      }

      if (__OFADD__(v52, v57))
      {
        goto LABEL_112;
      }

      if (v52 + v57 >= v34)
      {
        if (v34 < v57)
        {
          v31 = v28 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_61;
    }

    v58 = &v8[16 * v28];
    v60 = *v58;
    v59 = *(v58 + 1);
    v42 = __OFSUB__(v59, v60);
    v52 = v59 - v60;
    v53 = v42;
LABEL_61:
    if (v53)
    {
      goto LABEL_107;
    }

    v61 = &v8[16 * v31];
    v63 = *(v61 + 4);
    v62 = *(v61 + 5);
    v42 = __OFSUB__(v62, v63);
    v64 = v62 - v63;
    if (v42)
    {
      goto LABEL_110;
    }

    if (v64 < v52)
    {
      goto LABEL_3;
    }

LABEL_68:
    v69 = v31 - 1;
    if (v31 - 1 >= v28)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_122;
    }

    v5 = *&v8[16 * v69 + 32];
    v70 = *&v8[16 * v31 + 40];
    sub_1C1B90808((*a3 + 8 * v5), (*a3 + 8 * *&v8[16 * v31 + 32]), (*a3 + 8 * v70), v30);
    if (v4)
    {
    }

    if (v70 < v5)
    {
      goto LABEL_101;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C1B90C2C(v8);
    }

    if (v69 >= *(v8 + 2))
    {
      goto LABEL_102;
    }

    v71 = &v8[16 * v69];
    *(v71 + 4) = v5;
    *(v71 + 5) = v70;
    v94 = v8;
    result = sub_1C1B90BA0(v31);
    v8 = v94;
    v28 = *(v94 + 2);
    if (v28 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_1C1B90C2C(v8);
  v8 = result;
LABEL_90:
  v94 = v8;
  v79 = *(v8 + 2);
  if (v79 < 2)
  {
  }

  while (*a3)
  {
    v80 = *&v8[16 * v79];
    v81 = *&v8[16 * v79 + 24];
    sub_1C1B90808((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v79 + 16]), (*a3 + 8 * v81), v5);
    if (v4)
    {
    }

    if (v81 < v80)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1C1B90C2C(v8);
    }

    if (v79 - 2 >= *(v8 + 2))
    {
      goto LABEL_114;
    }

    v82 = &v8[16 * v79];
    *v82 = v80;
    *(v82 + 1) = v81;
    v94 = v8;
    result = sub_1C1B90BA0(v79 - 1);
    v8 = v94;
    v79 = *(v94 + 2);
    if (v79 <= 1)
    {
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_1C1B90808(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = sub_1C1AFE010(&v45, &v44);
      if (v4)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (!v18)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_1C1AFE010(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_1C1B90BA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1B90C2C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_1C1B90C70(unint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_1C1B953A8();
  if (!v5)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = sub_1C1B8FD8C(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_1C1B90D0C(void *a1, uint64_t a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C1B945E8();
  v8 = sub_1C1B945A8();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = a1;
  v12 = sub_1C1AAE960(v8, v10, 7, 100, v11, a2, 0.0, 0.0);
  swift_beginAccess();
  type metadata accessor for JourneyMetricsHelper(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = OBJC_IVAR___APPCContext_newsContext;
    swift_beginAccess();
    v16 = *&v11[v15];
    v17 = *(v14 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext);
    *(v14 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext) = v16;
    swift_unknownObjectRetain();
    v18 = v16;

    v19 = v14 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_serverUnfilledReason;
    *v19 = a2;
    *(v19 + 8) = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = sub_1C1B94D78();
    APSimulateCrash();
  }

  return v12;
}

char *sub_1C1B90F08(uint64_t a1, char *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - v9;
  sub_1C1B945E8();
  v11 = sub_1C1B945A8();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v10, v4);
  sub_1C1B945E8();
  v15 = sub_1C1B945A8();
  v17 = v16;
  v14(v8, v4);
  v18 = sub_1C1B7474C(v11, v13, v15, v17, a2);

  swift_beginAccess();
  type metadata accessor for JourneyMetricsHelper(0);
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v21 = (a1 + OBJC_IVAR___APPCPromotedContent_identifier);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    v24 = (v20 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_originalContentIdentifier);
    *v24 = v22;
    v24[1] = v23;
    swift_unknownObjectRetain();

    v25 = OBJC_IVAR___APPCContext_newsContext;
    swift_beginAccess();
    v26 = *&a2[v25];
    v27 = *(v20 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext);
    *(v20 + OBJC_IVAR____TtC15PromotedContent20JourneyMetricsHelper_newsSupplementalContext) = v26;
    v28 = v26;
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = sub_1C1B94D78();
    APSimulateCrash();
  }

  [v18 setBestRepresentation_];
  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_1C1B911E8()
{
  v1 = sub_1C1B945F8();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C1B912A4, 0, 0);
}

uint64_t sub_1C1B912A4()
{
  v24 = v0;
  v1 = sub_1C1B5B934();
  v0[14] = v1;
  v2 = [objc_opt_self() sharedCoordinator];
  type metadata accessor for AdRequestManager(0);
  v3 = swift_allocObject();
  v0[15] = v3;
  v3[3] = MEMORY[0x1E69E7CD0];
  v3[4] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  sub_1C1B945E8();
  *(v3 + OBJC_IVAR____TtC15PromotedContent16AdRequestManager_isSessionActive) = 1;
  v3[2] = v2;
  v4 = v2;
  v5 = sub_1C1B945B8();
  [v4 beginSessionForID_];

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C1B94BE8();
  sub_1C1AB4454(v6, qword_1EDE6D058);
  v7 = v1;
  v8 = sub_1C1B94BC8();
  v9 = sub_1C1B95108();

  if (os_log_type_enabled(v8, v9))
  {
    v21 = v9;
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v13 = 67109378;
    *(v13 + 4) = 36;
    *(v13 + 8) = 2080;
    v14 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v11 + 16))(v10, &v7[v14], v12);
    v15 = sub_1C1B945A8();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1C1AC7650(v15, v17, &v23);

    *(v13 + 10) = v18;
    _os_log_impl(&dword_1C1AA2000, v8, v21, "Context ID: %-*s Sponsorship Ad Manager is fetching sponsorship content.", v13, 0x12u);
    sub_1C1AA86F8(v22);
    MEMORY[0x1C6908230](v22, -1, -1);
    MEMORY[0x1C6908230](v13, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[16] = v19;
  *v19 = v0;
  v19[1] = sub_1C1B915CC;

  return sub_1C1B45AF8(v7, &unk_1F414E5E8, 1);
}

uint64_t sub_1C1B915CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1C1B919AC;
  }

  else
  {
    v4 = sub_1C1B916E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C1B916E0()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1C1B95518();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v0 + 112);
    v6 = *(v0 + 136) + 32;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1C6907490](v4, *(v0 + 136));
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = v7;
      ++v4;
      v9 = *(v0 + 112);
      _s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(v8, v5);
      sub_1C1B954F8();
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
    }

    while (v2 != v4);

    v10 = v26;
    if (v26 >> 62)
    {
      while (1)
      {
        v11 = sub_1C1B953A8();
        if (!v11)
        {
          break;
        }

LABEL_11:
        v12 = 0;
        v1 = v10 & 0xC000000000000001;
        while (1)
        {
          if (v1)
          {
            v13 = MEMORY[0x1C6907490](v12, v10);
          }

          else
          {
            if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v13 = *(v10 + 8 * v12 + 32);
          }

          v14 = v13;
          v15 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          v16 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
          swift_beginAccess();
          [*&v14[v16] delivered];

          ++v12;
          if (v15 == v11)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v2 = sub_1C1B953A8();
        if (v2)
        {
          goto LABEL_3;
        }

LABEL_22:

        v10 = MEMORY[0x1E69E7CC0];
        if (!(MEMORY[0x1E69E7CC0] >> 62))
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_24:
    v17 = *(v0 + 112);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);
    v21 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v19 + 16))(v18, &v17[v21], v20);
    v22 = sub_1C1B945A8();
    v24 = v23;

    (*(v19 + 8))(v18, v20);

    v25 = *(v0 + 8);

    return v25(v10, v22, v24);
  }

  return result;
}

uint64_t sub_1C1B919AC()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C1B91A6C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09B60, &unk_1C1BA46B0);
    sub_1C1B91B08(a2, type metadata accessor for PromotedContent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B91B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1B91B88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 8))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C1B91BE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C1B91C44@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

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

uint64_t sub_1C1B91CA4@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1B91D08(uint64_t a1)
{
  v2 = sub_1C1B92BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B91D44(uint64_t a1)
{
  v2 = sub_1C1B92BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C1B91DA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B924F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B91DD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364980;
  v5 = 0xE800000000000000;
  v6 = 0x706154646961726DLL;
  if (v2 != 6)
  {
    v6 = 0x6B6E694C70656564;
    v5 = 0xEB00000000706154;
  }

  v7 = 0xE900000000000070;
  v8 = 0x6154646E61707865;
  if (v2 != 4)
  {
    v8 = 0x616572747374756FLL;
    v7 = 0xEC0000007061546DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x7261646E656C6163;
  v10 = 0xEB00000000706154;
  if (v2 != 2)
  {
    v9 = 0x70615465726F7473;
    v10 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x706154626577;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1C1B91F98(void *a1, unint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF09B80, &qword_1C1BA4920);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B92BA4();
  sub_1C1B95A18();
  v9 = a2 >> 61;
  v16 = a2 >> 61;
  v15 = 0;
  sub_1C1B92C4C();
  sub_1C1B95808();
  if (!v2)
  {
    if (v9 > 3)
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v9 > 5)
      {
        if (v9 == 6)
        {
          v10 = type metadata accessor for MobileRichAdInterfaceDefinitionTapAction;
          sub_1C1B92CA0(&qword_1EBF09518, type metadata accessor for MobileRichAdInterfaceDefinitionTapAction, &protocol conformance descriptor for TapAction);
          v11 = &unk_1EBF09520;
        }

        else
        {
          v10 = type metadata accessor for DeepLinkTapAction;
          sub_1C1B92CA0(&qword_1EBF09508, type metadata accessor for DeepLinkTapAction, &protocol conformance descriptor for TapAction);
          v11 = &unk_1EBF09510;
        }
      }

      else if (v9 == 4)
      {
        v10 = type metadata accessor for ExpandTapAction;
        sub_1C1B92CA0(&qword_1EBF09538, type metadata accessor for ExpandTapAction, &protocol conformance descriptor for TapAction);
        v11 = &unk_1EBF09540;
      }

      else
      {
        v10 = type metadata accessor for OutstreamVideoTapAction;
        sub_1C1B92CA0(&qword_1EBF09528, type metadata accessor for OutstreamVideoTapAction, &protocol conformance descriptor for TapAction);
        v11 = &unk_1EBF09530;
      }
    }

    else if (v9 > 1)
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      if (v9 == 2)
      {
        v10 = type metadata accessor for CalendarTapAction;
        sub_1C1B92CA0(&qword_1EBF09558, type metadata accessor for CalendarTapAction, &protocol conformance descriptor for TapAction);
        v11 = &unk_1EBF09560;
      }

      else
      {
        v10 = type metadata accessor for StoreTapAction;
        sub_1C1B92CA0(&qword_1EBF09548, type metadata accessor for StoreTapAction, &protocol conformance descriptor for TapAction);
        v11 = &unk_1EBF09550;
      }
    }

    else if (v9)
    {
      a2 &= 0x1FFFFFFFFFFFFFFFuLL;
      v10 = type metadata accessor for WebTapAction;
      sub_1C1B92CA0(&qword_1EDE6B208, type metadata accessor for WebTapAction, &protocol conformance descriptor for TapAction);
      v11 = &unk_1EDE6B210;
    }

    else
    {
      v10 = type metadata accessor for TapAction;
      sub_1C1B92CA0(&qword_1EBF08B80, type metadata accessor for TapAction, &protocol conformance descriptor for TapAction);
      v11 = &qword_1EBF08B60;
    }

    sub_1C1B92CA0(v11, v10, &protocol conformance descriptor for TapAction);
    swift_getObjectType();
    v14 = a2;
    v13[15] = 1;
    swift_getWitnessTable();
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B923C0@<X0>(unint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C1B92540(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C1B92408(uint64_t a1)
{
  type metadata accessor for WebTapAction(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    return v2 | 0x2000000000000000;
  }

  type metadata accessor for CalendarTapAction();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    return v3 | 0x4000000000000000;
  }

  type metadata accessor for StoreTapAction();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    return v4 | 0x6000000000000000;
  }

  type metadata accessor for ExpandTapAction(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    return v5 | 0x8000000000000000;
  }

  type metadata accessor for OutstreamVideoTapAction(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    return v6 | 0xA000000000000000;
  }

  type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    return v7 | 0xC000000000000000;
  }

  type metadata accessor for DeepLinkTapAction(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    return v8 | 0xE000000000000000;
  }

  return a1;
}

unint64_t sub_1C1B924F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C1B92540(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09B78, &qword_1C1BA4918);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B92BA4();
  sub_1C1B95A08();
  if (!v1)
  {
    v10 = 0;
    sub_1C1B92BF8();
    sub_1C1B956F8();
    if (v9 > 3u)
    {
      if (v9 > 5u)
      {
        if (v9 == 6)
        {
          type metadata accessor for MobileRichAdInterfaceDefinitionTapAction(0);
          v10 = 1;
          sub_1C1B92CA0(&qword_1EBF09518, type metadata accessor for MobileRichAdInterfaceDefinitionTapAction, &protocol conformance descriptor for TapAction);
          sub_1C1B956F8();
          (*(v4 + 8))(v6, v3);
          v7 = v9 | 0xC000000000000000;
        }

        else
        {
          type metadata accessor for DeepLinkTapAction(0);
          v10 = 1;
          sub_1C1B92CA0(&qword_1EBF09508, type metadata accessor for DeepLinkTapAction, &protocol conformance descriptor for TapAction);
          sub_1C1B956F8();
          (*(v4 + 8))(v6, v3);
          v7 = v9 | 0xE000000000000000;
        }
      }

      else if (v9 == 4)
      {
        type metadata accessor for ExpandTapAction(0);
        v10 = 1;
        sub_1C1B92CA0(&qword_1EBF09538, type metadata accessor for ExpandTapAction, &protocol conformance descriptor for TapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v6, v3);
        v7 = v9 | 0x8000000000000000;
      }

      else
      {
        type metadata accessor for OutstreamVideoTapAction(0);
        v10 = 1;
        sub_1C1B92CA0(&qword_1EBF09528, type metadata accessor for OutstreamVideoTapAction, &protocol conformance descriptor for TapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v6, v3);
        v7 = v9 | 0xA000000000000000;
      }
    }

    else if (v9 > 1u)
    {
      if (v9 == 2)
      {
        type metadata accessor for CalendarTapAction();
        v10 = 1;
        sub_1C1B92CA0(&qword_1EBF09558, type metadata accessor for CalendarTapAction, &protocol conformance descriptor for TapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v6, v3);
        v7 = v9 | 0x4000000000000000;
      }

      else
      {
        type metadata accessor for StoreTapAction();
        v10 = 1;
        sub_1C1B92CA0(&qword_1EBF09548, type metadata accessor for StoreTapAction, &protocol conformance descriptor for TapAction);
        sub_1C1B956F8();
        (*(v4 + 8))(v6, v3);
        v7 = v9 | 0x6000000000000000;
      }
    }

    else if (v9)
    {
      type metadata accessor for WebTapAction(0);
      v10 = 1;
      sub_1C1B92CA0(&qword_1EDE6B208, type metadata accessor for WebTapAction, &protocol conformance descriptor for TapAction);
      sub_1C1B956F8();
      (*(v4 + 8))(v6, v3);
      v7 = v9 | 0x2000000000000000;
    }

    else
    {
      type metadata accessor for TapAction();
      v10 = 1;
      sub_1C1B92CA0(&qword_1EBF08B80, type metadata accessor for TapAction, &protocol conformance descriptor for TapAction);
      sub_1C1B956F8();
      (*(v4 + 8))(v6, v3);
      v7 = v9;
    }
  }

  sub_1C1AA86F8(a1);
  return v7;
}

unint64_t sub_1C1B92BA4()
{
  result = qword_1EDE6AD90;
  if (!qword_1EDE6AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD90);
  }

  return result;
}

unint64_t sub_1C1B92BF8()
{
  result = qword_1EDE6AD68;
  if (!qword_1EDE6AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD68);
  }

  return result;
}

unint64_t sub_1C1B92C4C()
{
  result = qword_1EDE6AD78;
  if (!qword_1EDE6AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD78);
  }

  return result;
}

uint64_t sub_1C1B92CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C1B92D0C()
{
  result = qword_1EBF09B88;
  if (!qword_1EBF09B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09B88);
  }

  return result;
}

unint64_t sub_1C1B92D64()
{
  result = qword_1EBF09B90[0];
  if (!qword_1EBF09B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBF09B90);
  }

  return result;
}

unint64_t sub_1C1B92DBC()
{
  result = qword_1EDE6AD80;
  if (!qword_1EDE6AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD80);
  }

  return result;
}

unint64_t sub_1C1B92E14()
{
  result = qword_1EDE6AD88;
  if (!qword_1EDE6AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD88);
  }

  return result;
}

unint64_t sub_1C1B92E68()
{
  result = qword_1EDE6AD70;
  if (!qword_1EDE6AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD70);
  }

  return result;
}

uint64_t sub_1C1B92ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_1C1B03588(a3, &v24[-1] - v11);
  v13 = sub_1C1B95028();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1C1B94360(v12);
  }

  else
  {
    sub_1C1B95018();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C1B94FC8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C1B94DD8();
      sub_1C1B93E74(v20 + 32, v24);

      v21 = v24[0];
      sub_1C1B94360(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C1B94360(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t DeduplicatingContentPipelineTransformer.__allocating_init(readthroughSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  sub_1C1AC0580(a1, v2 + 120);
  return v2;
}

uint64_t DeduplicatingContentPipelineTransformer.init(readthroughSource:)(__int128 *a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  sub_1C1AC0580(a1, v1 + 120);
  return v1;
}

uint64_t sub_1C1B9319C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 120) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1C1B93270, v3, 0);
}

uint64_t sub_1C1B93270()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 112);
  *(v0 + 72) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    v4 = sub_1C1B94FA8();
    v5 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
    *v3 = v0;
    v3[1] = sub_1C1B934F4;
    v6 = MEMORY[0x1E69E7288];
    v7 = v0 + 16;
  }

  else
  {
    v8 = *(v0 + 120);
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = sub_1C1B95028();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    type metadata accessor for DeduplicatingContentPipelineTransformer(255, *(v10 + 80), *(v10 + 88), v14);
    WitnessTable = swift_getWitnessTable();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = WitnessTable;
    *(v16 + 32) = v1;
    *(v16 + 40) = v11;
    *(v16 + 48) = v12;
    *(v16 + 56) = v8;
    v4 = sub_1C1B94FA8();
    swift_retain_n();
    v17 = v11;
    v2 = sub_1C1B92ED0(0, 0, v9, &unk_1C1BA4B90, v16, v4);
    *(v0 + 96) = v2;
    *(v1 + 112) = v2;

    v18 = swift_task_alloc();
    *(v0 + 104) = v18;
    v5 = sub_1C1AC1F08(&qword_1EBF08A18, &qword_1C1B9D740);
    *v18 = v0;
    v18[1] = sub_1C1B93620;
    v6 = MEMORY[0x1E69E7288];
    v7 = v0 + 24;
  }

  return MEMORY[0x1EEE6DA10](v7, v2, v4, v5, v6);
}

uint64_t sub_1C1B934F4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1C1B938A0;
  }

  else
  {
    v4 = sub_1C1B937C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C1B93620()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_1C1B93834;
  }

  else
  {
    v4 = sub_1C1B9374C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1C1B9374C()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C1B937C0()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C1B93834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B938A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C1B9390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 73) = a7;
  *(v7 + 32) = a5;
  *(v7 + 40) = a6;
  *(v7 + 16) = a1;
  *(v7 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B93934, a4, 0);
}

uint64_t sub_1C1B93934()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 24);
  v3 = v2[18];
  v4 = v2[19];
  sub_1C1AAABE0(v2 + 15, v3);
  *(v0 + 72) = v1 & 1;
  v9 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1C1B93A80;
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);

  return v9(v7, v6, v0 + 72, v3, v4);
}

uint64_t sub_1C1B93A80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  v5 = *(v4 + 24);
  if (v1)
  {
    v6 = sub_1C1B93C20;
  }

  else
  {
    *(v4 + 64) = a1;
    v6 = sub_1C1B93BAC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1C1B93BAC()
{
  v1 = v0[8];
  v2 = v0[2];
  *(v0[3] + 112) = 0;

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1C1B93C38(uint64_t a1, uint64_t a2)
{
  v5 = v2[18];
  v6 = v2[19];
  sub_1C1AAABE0(v2 + 15, v5);
  return (*(v6 + 32))(a1, a2, v5, v6);
}

uint64_t sub_1C1B93CA4()
{
  v1 = v0[18];
  v2 = v0[19];
  sub_1C1AAABE0(v0 + 15, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t DeduplicatingContentPipelineTransformer.deinit()
{

  sub_1C1AA86F8((v0 + 120));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t DeduplicatingContentPipelineTransformer.__deallocating_deinit()
{
  DeduplicatingContentPipelineTransformer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C1B93D7C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C1B013DC;

  return sub_1C1B9319C(a1, a2, a3);
}

uint64_t sub_1C1B93E74@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C1B93F48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C1AB9A98;

  return sub_1C1B9390C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t dispatch thunk of DeduplicatingContentPipelineTransformer.fetch(using:adType:cachePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 152) + **(*v3 + 152));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1C1AEE19C;

  return v10(a1, a2, a3);
}

uint64_t sub_1C1B94224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C1B9426C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C1B942BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1C1B94310(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C1B94328(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C1B94360(uint64_t a1)
{
  v2 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}
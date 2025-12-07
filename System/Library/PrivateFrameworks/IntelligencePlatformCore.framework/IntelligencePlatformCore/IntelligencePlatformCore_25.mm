void sub_1C46325B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  if ((a3 & 1) == 0 || (sub_1C463206C(), !v4))
  {
    v23 = a1;
    v24 = a2;
    v25 = objc_autoreleasePoolPush();
    v17 = v5[13];
    v16 = v5[14];
    v22[1] = sub_1C4409678(v5 + 10, v17);
    v18 = sub_1C4EF9CD8();
    v19 = *(*(v18 - 8) + 16);
    v19(v15, v23, v18);
    sub_1C440BAA8(v15, 0, 1, v18);
    v19(v12, v24, v18);
    sub_1C440BAA8(v12, 0, 1, v18);
    v20 = sub_1C4EFDA68();
    v21 = (*(v16 + 32))(v15, v12, 0, v20, v17, v16);

    sub_1C44686E4(v12);
    sub_1C44686E4(v15);
    sub_1C442C554();
    sub_1C45F2ACC(v21, sub_1C46327E4, 0);

    objc_autoreleasePoolPop(v25);
    if (!v4)
    {
      sub_1C442C554();
      sub_1C45F3BBC();
    }
  }
}

uint64_t sub_1C46327E4(uint64_t a1)
{
  result = sub_1C4F01968();
  if (v1)
  {
    type metadata accessor for BehaviorSampleGeneratorError(0);
    sub_1C46332E0();
    swift_allocError();
    v5 = v4;
    v6 = sub_1C456902C(&qword_1EC0BA108, &qword_1C4F13818);
    v7 = *(v6 + 48);
    *v5 = v1;
    v8 = sub_1C4EF9CD8();
    (*(*(v8 - 8) + 16))(&v5[v7], a1, v8);
    sub_1C440BAA8(v5, 0, 1, v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C46328CC(uint64_t a1, uint64_t a2)
{
  v6 = *sub_1C4409678((v2 + 32), *(v2 + 56));
  v7 = sub_1C45F451C(a1);
  if (!v3)
  {
    v8 = v7;
    sub_1C442C554();
    v9 = sub_1C45F3F88();
    v11 = v9;
    v12 = sub_1C4A3E114(v9);
    if (v13)
    {

      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v14 = sub_1C4F00978();
      sub_1C442B738(v14, qword_1EDE2DDE0);
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CF8();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "BehaviorSampleGenerator: Returning no negative samples since there are no behaviors in the table";
LABEL_15:
      _os_log_impl(&dword_1C43F8000, v15, v16, v18, v17, 2u);
      MEMORY[0x1C6942830](v17, -1, -1);
LABEL_16:

      return MEMORY[0x1E69E7CC0];
    }

    if (v12 < 1)
    {

      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728(&qword_1EDDFA668);
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DDE0);
      v15 = sub_1C4F00968();
      v16 = sub_1C4F01CF8();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "BehaviorSampleGenerator: Returning no negative samples since cumulative counts has not been computed";
      goto LABEL_15;
    }

    *(swift_allocObject() + 16) = v12;
    v19 = sub_1C4632B88(v11, v8, a2, sub_1C46331C4);

    sub_1C442C554();
    v6 = sub_1C45F4CC4(v19);
  }

  return v6;
}

uint64_t sub_1C4632B50@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    result = sub_1C4703364();
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4632B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v8 = 0;
  v25 = MEMORY[0x1E69E7CD0];
  v9 = a2 + 56;
  while (1)
  {
LABEL_2:
    if (v8 == 50)
    {
      return v25;
    }

    v10 = v25;
    if (*(v25 + 16) >= a3)
    {
      return v10;
    }

    a4(&v24);
    result = sub_1C45E2594(v24, a1);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = 0;
LABEL_7:
    ++v8;
    if (v13 >= *(a1 + 16))
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v17 = sub_1C4F00978();
      sub_1C442B738(v17, qword_1EDE2DDE0);
      v18 = sub_1C4F00968();
      v19 = sub_1C4F01CE8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1C43F8000, v18, v19, "WeightedProbabilitySampleGenerator: Random number was generated that is larger than the maximum value in the cdf", v20, 2u);
        MEMORY[0x1C6942830](v20, -1, -1);
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        v14 = sub_1C4F02AE8();
        v15 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v16 = v14 & v15;
          if (((*(v9 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
          {
            break;
          }

          v14 = v16 + 1;
          if (*(*(a2 + 48) + 8 * v16) == v13)
          {
            goto LABEL_2;
          }
        }
      }

      if (*(v10 + 16))
      {
        v21 = sub_1C4F02AE8();
        v22 = ~(-1 << *(v10 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(v10 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v21 = v23 + 1;
          if (*(*(v10 + 48) + 8 * v23) == v13)
          {
            goto LABEL_2;
          }
        }
      }

      sub_1C483A4A0(&v24, v13);
    }
  }

  v13 = result + 1;
  if (!__OFADD__(result, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4632DD0()
{

  sub_1C440962C((v0 + 32));

  sub_1C440962C((v0 + 80));

  return v0;
}

uint64_t sub_1C4632E10()
{
  sub_1C4632DD0();

  return swift_deallocClassInstance();
}

void *sub_1C4632EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C43FCE64();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36[-1] - v21;
  v37 = v23;
  v38 = v24;
  v25 = sub_1C4422F90(v36);
  (*(*(a5 - 8) + 32))(v25, a1, a5);
  (*(v15 + 32))(v22, a2, a6);
  v26 = swift_allocObject();
  sub_1C4418280(v36, v37);
  sub_1C43FCE64();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = (&v36[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30, v28);
  v32 = *v30;
  (*(v15 + 16))(v19, v22, a6);
  v33 = sub_1C46330F4(v32, v19, a3, v26, a6, a8);
  (*(v15 + 8))(v22, a6);
  sub_1C440962C(v36);
  return v33;
}

void *sub_1C46330F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[13] = a5;
  a4[14] = a6;
  v11 = sub_1C4422F90(a4 + 10);
  (*(*(a5 - 8) + 32))(v11, a2, a5);
  a4[7] = type metadata accessor for BehaviorDatabase(0);
  a4[8] = &off_1F43E5250;
  a4[2] = 0xD000000000000029;
  a4[3] = 0x80000001C4F8E5F0;
  a4[4] = a1;
  type metadata accessor for WeightedProbabilitySampleGenerator();
  a4[9] = swift_allocObject();
  a4[15] = a3;
  return a4;
}

uint64_t type metadata accessor for BehaviorSampleGeneratorError(uint64_t a1)
{
  result = qword_1EC0BA118;
  if (!qword_1EC0BA118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4633218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorSampleGeneratorError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C463327C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorSampleGeneratorError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C46332E0()
{
  result = qword_1EC0BA110;
  if (!qword_1EC0BA110)
  {
    type metadata accessor for BehaviorSampleGeneratorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BA110);
  }

  return result;
}

uint64_t sub_1C4633338(uint64_t a1)
{
  v2 = type metadata accessor for BehaviorSampleGeneratorError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46333BC(uint64_t a1)
{
  sub_1C4633414(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C4633414(uint64_t a1)
{
  if (!qword_1EC0BA128)
  {
    sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4EF9CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0BA128);
    }
  }
}

unint64_t sub_1C4633494()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      if (*v3++)
      {

        v5 = sub_1C45D62A8();
        v7 = v6;
      }

      else
      {
        v7 = 0xE300000000000000;
        v5 = 7104878;
      }

      MEMORY[0x1C6940010](v5, v7);

      MEMORY[0x1C6940010](2604, 0xE200000000000000);
      MEMORY[0x1C6940010](8224, 0xE200000000000000);

      --v2;
    }

    while (v2);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](93, 0xE100000000000000);

  return 0xD000000000000010;
}

uint64_t getEnumTagSinglePayload for BehaviorSequenceGenerator(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BehaviorSequenceGenerator(uint64_t result, int a2, int a3)
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

id sub_1C4633650(void *a1, uint64_t a2, double a3, double a4)
{
  if (a2 <= 0)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorSequence();
    v20 = sub_1C4F01658();
    v21 = [v19 initWithSequence_];

    return v21;
  }

  else
  {
    v8 = sub_1C4F029C8();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    v26 = sub_1C4633A94;
    v27 = v9;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C4633D18;
    v25 = &unk_1F43E5368;
    v10 = _Block_copy(&v22);

    v11 = [a1 scanWithInitial:v8 nextPartialResult:v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v26 = sub_1C4633DE0;
    v27 = 0;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C462BCF4;
    v25 = &unk_1F43E5390;
    v12 = _Block_copy(&v22);
    v13 = [v11 filterWithIsIncluded_];

    _Block_release(v12);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(v14 + 32) = a4;
    v26 = sub_1C4633F60;
    v27 = v14;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C4633F6C;
    v25 = &unk_1F43E53E0;
    v15 = _Block_copy(&v22);
    v16 = v13;

    v17 = [v16 mapWithTransform_];

    _Block_release(v15);
    return v17;
  }
}

uint64_t sub_1C463390C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_1C442B870(a1, &v17);
  swift_dynamicCast();
  v11 = v19;
  if (v19)
  {
    sub_1C456902C(&qword_1EC0BA130, qword_1C4F13908);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C4F0D130;
    *(v12 + 32) = v11;
    v18 = v12;
  }

  v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4633AA0(v13, a2, a3, a5, a6);

  if (v14)
  {

    MEMORY[0x1C6940330](v15);
    if (*(v18 + 16) >= *(v18 + 24) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    a2 = 0;
    v19 = 0;
  }

  else
  {
    v19 = a2;
    swift_retain_n();
  }

  a4[3] = &type metadata for BehaviorSequenceGenerator.PartialSequence;
  *a4 = v18;
  a4[1] = a2;
}

BOOL sub_1C4633AA0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = *(a1 + 16);
  if (v17 >= a3)
  {
    return 0;
  }

  if (!v17)
  {
    return 1;
  }

  v18 = *(a1 + 32);
  if (!v18)
  {
    return 1;
  }

  v19 = sub_1C4A3E138(a1);
  if (v19 < 2)
  {
    return 1;
  }

  v21 = v19;
  v22 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v23 = *(v11 + 16);
  v30 = *(a2 + 64);
  v23(v16, v30 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v10);
  v23(v13, *(v18 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v10);

  sub_1C4EF9B78();
  v25 = v24;
  v26 = *(v11 + 8);
  v26(v13, v10);
  v26(v16, v10);
  if (v25 > a4)
  {
    sub_1C4634004(v21);

    return 0;
  }

  v23(v16, v30 + v22, v10);
  v23(v13, *(v21 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v10);
  sub_1C4EF9B78();
  v28 = v27;
  sub_1C4634004(v21);

  v26(v13, v10);
  v26(v16, v10);
  return v28 <= a5;
}

id sub_1C4633D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();

  v5(v8, v9, a3);

  sub_1C4409678(v8, v8[3]);
  v6 = sub_1C4F02918();
  sub_1C440962C(v8);
  sub_1C440962C(v9);

  return v6;
}

BOOL sub_1C4633DE0(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_dynamicCast();

  if (v2)
  {
  }

  return v2 != 0;
}

uint64_t sub_1C4633E4C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  v6 = v13;
  v7 = *(v13 + 16);
  v8 = a2 - v7;
  if (__OFSUB__(a2, v7))
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v8 >= 1)
    {
      v9 = 1;
      while (1)
      {
        MEMORY[0x1C6940330](result);
        if (*(v13 + 16) >= *(v13 + 24) >> 1)
        {
          sub_1C4F016D8();
        }

        result = sub_1C4F01748();
        if (v8 == v9)
        {
          break;
        }

        if (__OFADD__(v9++, 1))
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      v6 = v13;
    }

    v11 = type metadata accessor for BehaviorSequence();
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    a3[3] = v11;
    *a3 = v12;
  }

  return result;
}

id sub_1C4633F6C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v5, v2);

  swift_unknownObjectRelease();
  sub_1C4409678(v5, v5[3]);
  v3 = sub_1C4F02918();
  sub_1C440962C(v5);

  return v3;
}

uint64_t sub_1C4634004(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1C463402C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = 0;
    v7 = v2 + 56;
    v27 = v2 + 64;
    v28 = v1;
    v29 = v2 + 56;
    v30 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v32 = v4;
        v31 = v3;
        v9 = *(v2 + 48) + 16 * v5;
        v10 = *v9;
        v11 = *(v9 + 8);
        sub_1C45A24AC(*v9, v11);
        sub_1C45FE65C(v10, v11);
        v13 = v12;
        v15 = v14;
        sub_1C45A24C0(v10, v11);
        v17 = *(v33 + 16);
        v16 = *(v33 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1C44CD9C0(v16 > 1, v17 + 1, 1);
        }

        *(v33 + 16) = v17 + 1;
        v18 = v33 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        if (v32)
        {
          goto LABEL_29;
        }

        v7 = v29;
        v2 = v30;
        v19 = 1 << *(v30 + 32);
        if (v5 >= v19)
        {
          goto LABEL_26;
        }

        v20 = *(v29 + 8 * v8);
        if ((v20 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v30 + 36) != v31)
        {
          goto LABEL_28;
        }

        v21 = v20 & (-2 << (v5 & 0x3F));
        if (v21)
        {
          v19 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v8 << 6;
          v23 = v8 + 1;
          v24 = (v27 + 8 * v8);
          while (v23 < (v19 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1C440951C(v5, v31, 0);
              v19 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v31, 0);
        }

LABEL_19:
        if (++v6 == v28)
        {
          return;
        }

        v4 = 0;
        v3 = *(v30 + 36);
        v5 = v19;
        if (v19 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
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
  }
}

uint64_t sub_1C463428C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C4637848(a1, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

BOOL sub_1C4634310(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  for (i = a2 + 32; ; i += 40)
  {
    if (!v3)
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      goto LABEL_7;
    }

    sub_1C442E860(i, &v8);
    v5 = v9;
    v6 = v10;
    sub_1C4409678(&v8, v9);
    if ((*(v6 + 8))(a1, v5, v6))
    {
      break;
    }

    sub_1C440962C(&v8);
    --v3;
  }

  sub_1C441D670(&v8, v11);
LABEL_7:
  sub_1C4420C3C(v11, &qword_1EC0BA178, &unk_1C4F13A30);
  return v3 != 0;
}

uint64_t sub_1C46343F8()
{
  v0 = sub_1C45FD2E4();
  sub_1C463402C(v0);

  sub_1C448DE08();
  sub_1C49D36C0(v1);

  return sub_1C4499940();
}

uint64_t sub_1C463446C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v28 = a3;
  v29 = a1;
  v33 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v30 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v27 - v14;
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C4EF9B78();
  sub_1C4EF9BE8();
  v32 = v12;
  sub_1C4EF9BE8();
  v16 = v3[16];
  v17 = v3[18];
  v18 = sub_1C4409678(v3 + 13, v16);
  sub_1C4EF9BE8();
  v19 = v31;
  (*(v17 + 8))(v9, v16, v17);
  v20 = sub_1C440DF44();
  if (v19)
  {
    v23 = v33;
    v18(v20, v33);
    v18(v32, v23);
    return (v18)(v15, v23);
  }

  else
  {
    v18(v20, v33);
    v31 = v3[10];
    v21 = v3[12];
    v27[1] = sub_1C4409678(v3 + 7, v31);
    v22 = v30;
    sub_1C4EF9BE8();
    (*(v21 + 8))(v22, v31, v21);
    v25 = v33;
    v18(v30, v33);
    v31 = objc_autoreleasePoolPush();
    v26 = v32;
    sub_1C463476C(v29, v15, v32, v28);
    objc_autoreleasePoolPop(v31);
    v18(v26, v25);
    return (v18)(v15, v25);
  }
}

void sub_1C463476C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v121 = a3;
  v118 = a2;
  v106 = a1;
  v120 = a4;
  v119 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v112 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v113 = v8 - v7;
  v9 = sub_1C456902C(&qword_1EC0BA140, &qword_1C4F139E8);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v79 - v11;
  sub_1C456902C(&qword_1EC0BA150, &unk_1C4F139F8);
  sub_1C43FCDF8();
  v115 = v13;
  v116 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v114 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v79 - v17;
  v18 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBD08();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v79 - v24;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = v4[5];
  v28 = v4[6];
  v117 = v4;
  sub_1C4409678(v4 + 2, v27);
  v29 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v31 = *(v30 + 16);
  v31(v25, v118, v29);
  sub_1C440BAA8(v25, 0, 1, v29);
  v31(v22, v121, v29);
  sub_1C440BAA8(v22, 0, 1, v29);
  v32 = sub_1C4EFDA68();
  v33 = (*(v28 + 32))(v25, v22, 0, v32, v27, v28);

  sub_1C4420C3C(v22, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v25, &unk_1EC0B84E0, qword_1C4F0D2D0);
  type metadata accessor for BehaviorEvent();
  v34 = v33;
  v35 = v122;
  sub_1C4EFFC38();
  v36 = v35;
  if (v35)
  {

LABEL_22:
  }

  else
  {
    v81 = v34;
    v82 = 0;
    v83 = v26;
    v37 = type metadata accessor for TimeBasedBehaviorSample(0);
    v38 = v111;
    sub_1C440BAA8(v111, 1, 1, v37);
    v39 = sub_1C4636628(v38, 5);
    sub_1C4420C3C(v38, &qword_1EC0BA140, &qword_1C4F139E8);
    v111 = *(v39 + 16);
    v92 = *MEMORY[0x1E69A9450];
    v40 = v112 + 104;
    v91 = *MEMORY[0x1E69A93E8];
    v90 = *MEMORY[0x1E69A93F8];
    v89 = *MEMORY[0x1E69A9408];
    v105 = *MEMORY[0x1E69A9418];
    v104 = *MEMORY[0x1E69A9440];
    v103 = *MEMORY[0x1E69A9420];
    v102 = *MEMORY[0x1E69A9458];
    v88 = *MEMORY[0x1E69A9430];
    v101 = *MEMORY[0x1E69A93C8];
    v100 = *MEMORY[0x1E69A93F0];
    v87 = *MEMORY[0x1E69A9400];
    v99 = *MEMORY[0x1E69A9470];
    v86 = *MEMORY[0x1E69A93D8];
    v98 = *MEMORY[0x1E69A9428];
    v85 = *MEMORY[0x1E69A93E0];
    v84 = *MEMORY[0x1E69A9448];
    v97 = *MEMORY[0x1E69A9438];
    v96 = *MEMORY[0x1E69A9410];
    v95 = *MEMORY[0x1E69A93D0];
    v94 = *MEMORY[0x1E69A9460];
    v109 = (v112 + 8);
    v93 = *MEMORY[0x1E69A9468];
    v112 = v39;
    v41 = v39 + 72;
    v107 = MEMORY[0x1E69E7CC0];
    v42 = v120;
    v43 = v118;
    v110 = v40;
    v80 = v39 + 72;
    while (1)
    {
      v44 = (v41 + 48 * v36);
      v45 = v115;
      v46 = v116;
      v48 = v113;
      v47 = v114;
LABEL_5:
      if (v111 == v36)
      {
        break;
      }

      if (v36 >= *(v112 + 16))
      {
        __break(1u);
        return;
      }

      v49 = v42;
      v50 = *(v44 - 5);
      v51 = *(v44 - 4);
      v119 = *(v44 - 3);
      v120 = v50;
      v52 = *(v44 - 2);
      v121 = *(v44 - 1);
      v122 = v52;
      v53 = *v44;
      v54 = v117[26];
      switch(*v44)
      {
        case 1:
          sub_1C4431FDC();
          v56();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          goto LABEL_11;
        case 3:
        case 5:
        case 6:
        case 8:
        case 11:
        case 18:
        case 19:
        case 20:
        case 21:
          sub_1C4431FDC();
          v58();
          goto LABEL_13;
        case 12:
          sub_1C4431FDC();
          v55();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          goto LABEL_11;
        default:
          sub_1C4431FDC();
          v57();
LABEL_11:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_13:
          v59 = v54(v48);
          (*v109)(v48, v46);
          if ((v59 & 1) == 0)
          {
            sub_1C45A23B4(v120, v51, v119, v122, v121, v53);
            v44 += 48;
            ++v36;
            v42 = v49;
            v45 = v115;
            v46 = v116;
            v43 = v118;
            v48 = v113;
            v47 = v114;
            goto LABEL_5;
          }

          v60 = v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v123 = v60;
          v42 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = sub_1C4408714();
            sub_1C459D238(v62, v63, v64);
            v60 = v123;
          }

          v43 = v118;
          v41 = v80;
          v66 = *(v60 + 16);
          v65 = *(v60 + 24);
          v67 = v66 + 1;
          if (v66 >= v65 >> 1)
          {
            v107 = v66 + 1;
            sub_1C459D238(v65 > 1, v66 + 1, 1);
            v67 = v107;
            v60 = v123;
          }

          ++v36;
          *(v60 + 16) = v67;
          v107 = v60;
          v68 = v60 + 48 * v66;
          *(v68 + 32) = v120;
          *(v68 + 40) = v51;
          *(v68 + 48) = v119;
          *(v68 + 56) = v122;
          *(v68 + 64) = v121;
          *(v68 + 72) = v53;
          break;
      }
    }

    MEMORY[0x1EEE9AC00](v69);
    *(&v79 - 2) = v43;
    v70 = v82;
    sub_1C45D9C64();
    v72 = v71;

    v73 = v106;
    v74 = v117;
    v75 = sub_1C4636AFC(v72, v106, -1);
    if (v70)
    {
      (*(v45 + 8))(v108, v46);

      v34 = v81;
      goto LABEL_22;
    }

    v122 = v75;

    (*(v45 + 16))(v47, v108, v46);
    v76 = swift_allocObject();
    v77 = v83;
    v76[2] = v74;
    v76[3] = v77;
    v76[4] = v73;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BA158, &qword_1C4F13A18);
    sub_1C4401CBC(&qword_1EC0BA160, &qword_1EC0BA150, &unk_1C4F139F8, MEMORY[0x1E69A9B60]);
    sub_1C4401CBC(&qword_1EC0BA168, &qword_1EC0BA158, &qword_1C4F13A18, &unk_1C4F0F4E0);
    sub_1C4F02958();

    (*(v45 + 8))(v108, v46);

    v78 = sub_1C456902C(&qword_1EC0BA170, &unk_1C4F13A20);
    *(v42 + *(v78 + 52)) = v122;
  }
}

uint64_t sub_1C4635278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(type metadata accessor for TimeBasedBehaviorSample(0) + 24);
  v12 = sub_1C4EF9CD8();
  (*(*(v12 - 8) + 16))(a3 + v11, a2, v12);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 41) = 1;
  return sub_1C45D7F78(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4635350(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a1;
  v5[25] = a3;
  sub_1C456902C(&qword_1EC0BA140, &qword_1C4F139E8);
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for TimeBasedBehaviorSample(0);
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v8 = sub_1C4EF9CD8();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v9 = sub_1C4EFDAB8();
  v5[36] = v9;
  v5[37] = *(v9 - 8);
  v5[38] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v5[39] = v10;
  v5[40] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1C4635524, 0, 0);
}

void sub_1C4635524()
{
  v116 = v0;
  if (sub_1C4634310(*(v0 + 320), *(*(v0 + 200) + 192)))
  {
    if (qword_1EDDFA668 != -1)
    {
LABEL_52:
      sub_1C4406728(&qword_1EDDFA668);
    }

    v1 = sub_1C4F00978();
    sub_1C442B738(v1, qword_1EDE2DDE0);

    v2 = sub_1C4F00968();
    v3 = sub_1C4F01CF8();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v115[0] = v5;
      *v4 = 136315138;

      v6 = sub_1C45D62A8();
      v8 = v7;

      v9 = sub_1C441D828(v6, v8, v115);

      *(v4 + 4) = v9;
      _os_log_impl(&dword_1C43F8000, v2, v3, "BehaviorsFeatureProvider: Dropping sample due to hitting window limit for behavior: %s", v4, 0xCu);
      sub_1C440962C(v5);
      sub_1C43FFD4C();
      MEMORY[0x1C6942830](v4, -1, -1);
    }

    goto LABEL_47;
  }

  v10 = *(v0 + 208);
  swift_beginAccess();
  if (*(v10 + 16) > 99 || (v12 = *(v0 + 312), v11 = *(v0 + 320), v13 = *(v0 + 288), v14 = *(v0 + 296), v15 = *(*(v0 + 200) + 208), v16 = *(v11 + 41), v17 = v11[2], *(v0 + 16) = v11[1], *(v0 + 32) = v17, *(v0 + 41) = v16, sub_1C45D5A24(v12), v110 = v15, v18 = v15(v12), v109 = *(v14 + 8), v109(v12, v13), (v18 & 1) == 0))
  {
LABEL_47:
    **(v0 + 192) = MEMORY[0x1E69E7CC0];
LABEL_48:

    v78 = *(v0 + 8);

    v78();
    return;
  }

  v19 = *(v0 + 320);
  v20 = *(v0 + 272);
  v21 = *(v0 + 280);
  v22 = *(v0 + 256);
  v23 = *(v0 + 264);
  v24 = *(v0 + 200);
  v25 = v24[16];
  v26 = v24[18];
  sub_1C4409678(v24 + 13, v25);
  v111 = v19;
  v107 = *(v23 + 16);
  v107(v20, *(v19 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v22);
  sub_1C4EF9BE8();
  v27 = *(v23 + 8);
  v27(v20, v22);
  (*(v26 + 8))(v21, v25, v26);
  v28 = *(v0 + 224);
  v29 = *(v0 + 320);
  v113 = *(v0 + 296);
  v30 = *(v0 + 248);
  v31 = *(v0 + 256);
  v32 = *(v0 + 232);
  v27(*(v0 + 280), v31);
  v33 = *(v11 + 2);
  v35 = *(v29 + 24);
  v34 = *(v29 + 32);
  v36 = *(v29 + 48);
  v101 = v33;
  v103 = *(v29 + 40);
  LOBYTE(v29) = *(v29 + 56);
  v107(v30 + *(v32 + 24), *(v111 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v31);
  *v30 = v101;
  *(v30 + 8) = v35;
  *(v30 + 16) = v34;
  *(v30 + 24) = v103;
  *(v30 + 32) = v36;
  *(v30 + 40) = v29;
  *(v30 + 41) = 0;
  sub_1C46375C4(v30, v28);
  sub_1C440BAA8(v28, 0, 1, v32);
  sub_1C45D7F78(v101, v35, v34, v103, v36, v29);
  v37 = sub_1C4636628(v28, 5);
  sub_1C4420C3C(v28, &qword_1EC0BA140, &qword_1C4F139E8);
  v38 = 0;
  v106 = *(v37 + 16);
  v88 = *MEMORY[0x1E69A9450];
  v39 = (v113 + 104);
  v87 = *MEMORY[0x1E69A93E8];
  v85 = *MEMORY[0x1E69A9408];
  v86 = *MEMORY[0x1E69A93F8];
  v100 = *MEMORY[0x1E69A9440];
  v102 = *MEMORY[0x1E69A9418];
  v98 = *MEMORY[0x1E69A9458];
  v99 = *MEMORY[0x1E69A9420];
  v84 = *MEMORY[0x1E69A9430];
  v97 = *MEMORY[0x1E69A93C8];
  v96 = *MEMORY[0x1E69A93F0];
  v83 = *MEMORY[0x1E69A9400];
  v95 = *MEMORY[0x1E69A9470];
  v82 = *MEMORY[0x1E69A93D8];
  v94 = *MEMORY[0x1E69A9428];
  v81 = *MEMORY[0x1E69A93E0];
  v80 = *MEMORY[0x1E69A9448];
  v93 = *MEMORY[0x1E69A9438];
  v91 = *MEMORY[0x1E69A93D0];
  v92 = *MEMORY[0x1E69A9410];
  v89 = *MEMORY[0x1E69A9468];
  v90 = *MEMORY[0x1E69A9460];
  v108 = v37;
  v40 = v37 + 72;
  v104 = MEMORY[0x1E69E7CC0];
  v105 = (v113 + 104);
  v79 = v37 + 72;
LABEL_9:
  v41 = (v40 + 48 * v38);
  while (v106 != v38)
  {
    if (v38 >= *(v108 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v42 = *(v41 - 4);
    v44 = *(v41 - 3);
    v43 = *(v41 - 2);
    v112 = *(v41 - 5);
    v114 = *(v41 - 1);
    v45 = *v41;
    v46 = *v39;
    v47 = *(v0 + 304);
    v48 = *(v0 + 288);
    switch(*v41)
    {
      case 1:
        v46(v47, v90, v48);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v49 = v43;
        goto LABEL_34;
      case 2:
        v49 = *(v41 - 2);
        v50 = v91;
        goto LABEL_33;
      case 3:
        v49 = *(v41 - 2);
        v51 = v92;
        goto LABEL_37;
      case 4:
        v49 = *(v41 - 2);
        v50 = v93;
        goto LABEL_33;
      case 5:
        v49 = *(v41 - 2);
        v51 = v80;
        goto LABEL_37;
      case 6:
        v49 = *(v41 - 2);
        v51 = v81;
        goto LABEL_37;
      case 7:
        v49 = *(v41 - 2);
        v50 = v94;
        goto LABEL_33;
      case 8:
        v49 = *(v41 - 2);
        v51 = v82;
        goto LABEL_37;
      case 9:
        v49 = *(v41 - 2);
        v50 = v95;
        goto LABEL_33;
      case 10:
        v49 = *(v41 - 2);
        v50 = v83;
        goto LABEL_33;
      case 11:
        v49 = *(v41 - 2);
        v51 = v96;
        goto LABEL_37;
      case 12:
        v46(v47, v97, v48);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v49 = v43;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        goto LABEL_34;
      case 13:
        v49 = *(v41 - 2);
        v50 = v84;
        goto LABEL_33;
      case 14:
        v49 = *(v41 - 2);
        v50 = v98;
        goto LABEL_33;
      case 15:
        v49 = *(v41 - 2);
        v46(v47, v99, v48);
        goto LABEL_34;
      case 16:
        v49 = *(v41 - 2);
        v50 = v100;
        goto LABEL_33;
      case 17:
        v49 = *(v41 - 2);
        v50 = v102;
        goto LABEL_33;
      case 18:
        v49 = *(v41 - 2);
        v51 = v85;
        goto LABEL_37;
      case 19:
        v49 = *(v41 - 2);
        v51 = v86;
        goto LABEL_37;
      case 20:
        v49 = *(v41 - 2);
        v51 = v87;
        goto LABEL_37;
      case 21:
        v49 = *(v41 - 2);
        v51 = v88;
LABEL_37:
        v46(v47, v51, v48);
        break;
      default:
        v49 = *(v41 - 2);
        v50 = v89;
LABEL_33:
        v46(v47, v50, v48);
LABEL_34:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        break;
    }

    v52 = *(v0 + 304);
    v53 = *(v0 + 288);
    v54 = v110(v52);
    v109(v52, v53);
    if (v54)
    {
      v55 = v104;
      v115[0] = v104;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1C4408714();
        sub_1C459D238(v56, v57, v58);
        v55 = v115[0];
      }

      v39 = v105;
      v40 = v79;
      v60 = *(v55 + 16);
      v59 = *(v55 + 24);
      v61 = v60 + 1;
      if (v60 >= v59 >> 1)
      {
        sub_1C459D238(v59 > 1, v60 + 1, 1);
        v61 = v60 + 1;
        v55 = v115[0];
      }

      ++v38;
      *(v55 + 16) = v61;
      v104 = v55;
      v62 = v55 + 48 * v60;
      *(v62 + 32) = v112;
      *(v62 + 40) = v42;
      *(v62 + 48) = v44;
      *(v62 + 56) = v49;
      *(v62 + 64) = v114;
      *(v62 + 72) = v45;
      goto LABEL_9;
    }

    sub_1C45A23B4(v112, v42, v44, v49, v114, v45);
    v41 += 48;
    ++v38;
    v39 = v105;
  }

  v64 = *(v0 + 240);
  v63 = *(v0 + 248);
  v66 = *(v0 + 208);
  v65 = *(v0 + 216);

  *(swift_task_alloc() + 16) = v63;
  sub_1C45D9C64();
  v68 = v67;

  sub_1C456902C(&qword_1EC0B9118, &unk_1C4F0EC30);
  v69 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1C4F0D130;
  sub_1C46375C4(v63, v70 + v69);
  v115[0] = v70;
  sub_1C49D38F8(v68);
  swift_beginAccess();
  v71 = sub_1C4636AFC(v70, v65, *(v66 + 16));
  v72 = *(v0 + 248);
  v73 = *(v0 + 208);
  v74 = *(v0 + 192);

  *v74 = v71;
  sub_1C4637628(v72);
  swift_beginAccess();
  v75 = *(v73 + 16);
  v76 = __OFADD__(v75, 1);
  v77 = v75 + 1;
  if (!v76)
  {
    *(*(v0 + 208) + 16) = v77;
    goto LABEL_48;
  }

  __break(1u);
}

uint64_t sub_1C46360B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(type metadata accessor for TimeBasedBehaviorSample(0) + 24);
  v12 = sub_1C4EF9CD8();
  (*(*(v12 - 8) + 16))(a3 + v11, a2 + v11, v12);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 41) = 1;
  return sub_1C45D7F78(v5, v6, v7, v8, v9, v10);
}

id sub_1C463618C(__int128 *a1, uint64_t a2)
{
  v4 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  type metadata accessor for TimeBasedBehaviorSample(0);
  sub_1C4EF9C58();
  v12 = v11;
  v13 = v11;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F13950;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_1C45D5A24(v10);
  v15 = sub_1C4EFDAA8();
  (*(v6 + 8))(v10, v4);
  v16 = objc_opt_self();
  *(inited + 48) = [v16 featureValueWithInt64_];
  *(inited + 56) = 0x696669746E656469;
  *(inited + 64) = 0xEA00000000007265;
  sub_1C4577DBC();
  v17 = sub_1C45D2400();
  *(inited + 72) = sub_1C4594E18(v17, v18);
  *(inited + 80) = 0x69746167654E7369;
  *(inited + 88) = 0xEA00000000006576;
  *(inited + 96) = [v16 featureValueWithInt64_];
  strcpy((inited + 104), "sequenceNumber");
  *(inited + 119) = -18;
  result = [v16 featureValueWithInt64_];
  *(inited + 120) = result;
  *(inited + 128) = 0x6D617473656D6974;
  *(inited + 136) = 0xE900000000000070;
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    *(inited + 144) = [v16 featureValueWithInt64_];
    return sub_1C4F00F28();
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1C463644C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C445FFF0(v2 + 152, &v22, &qword_1EC0BA148, &qword_1C4F3F500);
  if (v23)
  {
    sub_1C441D670(&v22, v18);
    v10 = v19;
    v11 = v20;
    sub_1C4409678(v18, v19);
    sub_1C440F3AC();
    v12 = [objc_opt_self() isInternalDevice];
    (*(v11 + 8))(v21, &v22, v12, 1, v10, v11);
    v13 = *(type metadata accessor for TimeBasedBehaviorSample(0) + 24);
    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v14 + 16))(a2 + v13, a1 + v13);
    sub_1C4402CEC();
    sub_1C440962C(v18);
  }

  else
  {
    sub_1C4420C3C(&v22, &qword_1EC0BA148, &qword_1C4F3F500);
    sub_1C440F3AC();
    sub_1C45D5A24(v9);
    sub_1C45D29E0(v9, 7040629, 0xE300000000000000, v21);
    v16 = *(type metadata accessor for TimeBasedBehaviorSample(0) + 24);
    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v17 + 16))(a2 + v16, a1 + v16);
    *&result = sub_1C4402CEC().n128_u64[0];
  }

  return result;
}

uint64_t sub_1C4636628(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0BA140, &qword_1C4F139E8);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-v7];
  v9 = type metadata accessor for TimeBasedBehaviorSample(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C445FFF0(a1, v8, &qword_1EC0BA140, &qword_1C4F139E8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    sub_1C4420C3C(v8, &qword_1EC0BA140, &qword_1C4F139E8);
    v14 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    sub_1C4637CB8(v8, v13, type metadata accessor for TimeBasedBehaviorSample);
    sub_1C456902C(&qword_1EC0B88D8, &qword_1C4F139F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v16 = *v13;
    v17 = *(v13 + 8);
    v18 = *(v13 + 16);
    v19 = *(v13 + 24);
    v20 = *(v13 + 32);
    v21 = *(v13 + 40);
    *(inited + 32) = *v13;
    *(inited + 40) = v17;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    sub_1C45D7F78(v16, v17, v18, v19, v20, v21);
    v14 = sub_1C4597538();
    sub_1C4637628(v13);
  }

  sub_1C4409678((v2 + 56), *(v2 + 80));
  v22 = sub_1C46328CC(v14, a2);

  return v22;
}

void sub_1C4636940(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45FE940(v12, v13);
    if (v15 != -1)
    {
      v16 = v14;
      v17 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4408714();
        sub_1C458B398();
        v8 = v21;
      }

      v18 = *(v8 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v8 + 24) >> 1)
      {
        v26 = v18 + 1;
        v22 = *(v8 + 16);
        sub_1C458B398();
        v18 = v22;
        v19 = v26;
        v8 = v23;
      }

      *(v8 + 16) = v19;
      v20 = v8 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v24 = sub_1C45979EC(v8);
      sub_1C463402C(v24);
      v25 = sub_1C4499940();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4637AF0(v25);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C4636AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a3;
  v125 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v119 = v11 - v10;
  v12 = sub_1C456902C(&qword_1EC0BA138, &qword_1C4F1E150);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  v118 = v103 - v14;
  v117 = type metadata accessor for FeatureProviderChange(0);
  sub_1C43FCDF8();
  v108 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v116 = v18 - v17;
  v19 = type metadata accessor for TimeBasedBehaviorSample(0);
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBD08();
  v109 = (v23 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v120 = (v103 - v26);
  sub_1C4636940(a2);
  v29 = v27;
  v115 = *(a1 + 16);
  if (!v115)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v111 = v28;
  v30 = 0;
  v124 = *(v19 + 24);
  v114 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v113 = *(v21 + 72);
  v123 = (v8 + 16);
  v31 = v27 + 56;
  v32 = MEMORY[0x1E69E7CC0];
  v33 = v112;
  v34 = v120;
  v128 = v27;
  while (1)
  {
    v126 = v32;
    v127 = v30;
    sub_1C46375C4(v114 + v113 * v30, v34);
    sub_1C4409678((v33 + 104), *(v33 + 128));
    v35 = v34[1];
    v131 = *v34;
    *v132 = v35;
    *&v132[9] = *(v34 + 25);
    v122 = *v123;
    v122(v119, v34 + v124, v125);
    v129 = 0;
    v130 = 256;
    type metadata accessor for BehaviorContext(0);
    swift_allocObject();
    sub_1C45D689C();
    v37 = sub_1C4601874(&v131, v29, v36);

    v133 = v37;
    if (v37)
    {
      break;
    }

    v88 = 1;
    v89 = v117;
    v87 = v118;
    v34 = v120;
LABEL_27:
    sub_1C440BAA8(v87, v88, 1, v89);
    sub_1C4637628(v34);
    v90 = sub_1C44157D4(v87, 1, v89);
    v32 = v126;
    if (v90 == 1)
    {
      sub_1C4420C3C(v87, &qword_1EC0BA138, &qword_1C4F1E150);
      v29 = v128;
    }

    else
    {
      sub_1C440A740();
      sub_1C4637CB8(v87, v116, v91);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v128;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v97 = sub_1C4408714();
        sub_1C458B3C8(v97, v98, v99, v32);
        v32 = v100;
      }

      v94 = *(v32 + 16);
      v93 = *(v32 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_1C458B3C8(v93 > 1, v94 + 1, 1, v32);
        v32 = v101;
      }

      *(v32 + 16) = v94 + 1;
      sub_1C440A740();
      sub_1C4637CB8(v116, v95, v96);
    }

    v30 = v127 + 1;
    if (v127 + 1 == v115)
    {

      return v32;
    }
  }

  v121 = v4;
  v38 = 1 << *(v29 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(v29 + 56);
  v41 = (v38 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v42 = 0;
  v43 = MEMORY[0x1E69E7CC8];
  while (v40)
  {
    v44 = v43;
    v45 = v42;
LABEL_14:
    v40 &= v40 - 1;
    v46 = sub_1C440BB4C();
    sub_1C45A24AC(v46, v47);
    v48 = sub_1C440BB4C();
    sub_1C45FE65C(v48, v49);
    v50 = sub_1C4F01108();

    v51 = [v133 featureValueForName_];

    if (v51)
    {
      v54 = sub_1C440BB4C();
      sub_1C45FE65C(v54, v55);
      v57 = v56;
      v106 = v58;
      v105 = v51;
      v59 = v44;
      v60 = v106;
      v103[1] = swift_isUniquelyReferenced_nonNull_native();
      v129 = v59;
      v104 = v57;
      v61 = sub_1C445FAA8(v57, v60);
      if (__OFADD__(v59[2], (v62 & 1) == 0))
      {
        goto LABEL_39;
      }

      v103[0] = v62;
      v107 = v61;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      if (sub_1C4F02458())
      {
        v63 = sub_1C445FAA8(v104, v60);
        if ((v103[0] & 1) != (v64 & 1))
        {
          goto LABEL_41;
        }

        if (v103[0])
        {
LABEL_20:
          v107 = v63;

          v43 = v129;
          v65 = v129[7];
          v66 = *(v65 + 8 * v107);
          v67 = v105;
          *(v65 + 8 * v107) = v105;

          v68 = sub_1C440BB4C();
          sub_1C45A24C0(v68, v69);

          goto LABEL_24;
        }
      }

      else
      {
        v63 = v107;
        if (v103[0])
        {
          goto LABEL_20;
        }
      }

      v43 = v129;
      v129[(v63 >> 6) + 8] |= 1 << v63;
      v70 = (v43[6] + 16 * v63);
      *v70 = v104;
      v70[1] = v60;
      v71 = v105;
      *(v43[7] + 8 * v63) = v105;
      v72 = sub_1C440BB4C();
      sub_1C45A24C0(v72, v73);

      v74 = v43[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_40;
      }

      v43[2] = v76;
LABEL_24:
      v42 = v45;
    }

    else
    {
      v52 = sub_1C440BB4C();
      sub_1C45A24C0(v52, v53);
      v42 = v45;
      v43 = v44;
    }
  }

  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v45 >= v41)
    {

      v77 = v109;
      v78 = v120;
      v33 = v112;
      v79 = v43;
      sub_1C463644C(v120, v109);
      v80 = sub_1C463618C(v77, v110);
      sub_1C4637628(v77);
      v81 = v111;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v82 = v81;
      v83 = v121;
      v84 = sub_1C4637684(v80, v82);

      sub_1C463428C(v84, v79);
      v4 = v83;
      sub_1C465CF34();
      v86 = v85;

      v34 = v78;
      swift_unknownObjectRelease();
      v87 = v118;
      v122(v118, (v78 + v124), v125);
      v88 = 0;
      v89 = v117;
      *(v87 + *(v117 + 20)) = 2;
      *(v87 + *(v89 + 24)) = v86;
      goto LABEL_27;
    }

    v40 = *(v31 + 8 * v45);
    ++v42;
    if (v40)
    {
      v44 = v43;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C4637358()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  sub_1C440962C(v0 + 13);
  sub_1C4420C3C((v0 + 19), &qword_1EC0BA148, &qword_1C4F3F500);

  return v0;
}

uint64_t sub_1C46373B0()
{
  sub_1C4637358();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4637460()
{
  sub_1C4409678(v0 + 13, v0[16]);
  v2 = sub_1C43FFEB0();
  result = v3(v2);
  if (!v1)
  {
    sub_1C4409678(v0 + 7, v0[10]);
    v5 = sub_1C43FFEB0();
    result = v6(v5);
    v7 = 0;
    v8 = v0[24];
    v9 = *(v8 + 16);
    v10 = v8 + 32;
    while (v9 != v7)
    {
      if (v7 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1C442E860(v10, v13);
      sub_1C4409678(v13, v13[3]);
      v11 = sub_1C43FFEB0();
      v12(v11);
      ++v7;
      result = sub_1C440962C(v13);
      v10 += 40;
    }
  }

  return result;
}

uint64_t type metadata accessor for TimeBasedBehaviorSample(uint64_t a1)
{
  result = qword_1EC0BA180;
  if (!qword_1EC0BA180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46375C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedBehaviorSample(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4637628(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedBehaviorSample(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *sub_1C4637684(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4637848(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v60 = a5;
  sub_1C46C3CC4();
  v7 = v55;
  v8 = v57;
  v9 = v58;
  v48 = v59;
  v49 = v54[3];
  v45 = v56;
  v10 = (v56 + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = a3;

  v47 = v55;
  if (v58)
  {
    while (1)
    {
      v50 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v49 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v49 + 56) + 8 * v13);
      v54[0] = *v14;
      v54[1] = v15;
      v54[2] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v16;
      v48(&v51, v54);

      v18 = v51;
      v19 = v52;
      v20 = v53;
      v21 = *v60;
      v29 = sub_1C445FAA8(v51, v52);
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v50 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02468();
        }
      }

      else
      {
        sub_1C46795D8(v32, v50 & 1, v23, v24, v25, v26, v27, v28, v44, v45, v46, SBYTE4(v46));
        v34 = sub_1C445FAA8(v18, v19);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v60;
      if (v33)
      {

        v37 = v36[7];
        v38 = *(v37 + 8 * v29);
        *(v37 + 8 * v29) = v20;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v39 = (v36[6] + 16 * v29);
        *v39 = v18;
        v39[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v40 = v36[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_23;
        }

        v36[2] = v42;
      }

      a4 = 1;
      v8 = v11;
      v7 = v47;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1C449BB0C();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v50 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4637AF0(uint64_t result)
{
  v2 = 0;
  v27 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
LABEL_5:
  while (v6)
  {
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v27 + 48) + ((v2 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v1;
    if (*(*v1 + 16))
    {
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v14 = sub_1C4F02B68();
      v20 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v21 = v14 & v20;
        if (((*(v13 + 56 + (((v14 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(v13 + 48) + 16 * v21);
        if (*v22 != v12 || v22[1] != v11)
        {
          v24 = sub_1C4F02938();
          v14 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v1 = v26;
        sub_1C4A7E078(v12, v11);

        goto LABEL_5;
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v1 = v26;
    sub_1C44869B4(v28, v12, v11, v15, v16, v17, v18, v19, v25, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v28[17], v28[18]);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }
}

uint64_t sub_1C4637CB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4637D38(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1C44A7DA0;

  return sub_1C4635350(a1, a2, v6, v7, v8);
}

uint64_t sub_1C4637E44(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4637EC8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1C4638D80(0xD00000000000001CLL, 0x80000001C4F8E900);
  if (!result)
  {
    result = sub_1C4F024A8();
    __break(1u);
  }

  return result;
}

id sub_1C4637F74()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_1C44F920C();
    v3 = sub_1C4637EC8();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1C4637FD4()
{
  v1 = v0;
  if (v0[6])
  {
    v2 = v0[5];
  }

  else
  {
    sub_1C4F02248();
    v4 = v0[2];
    v3 = v0[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8E9A0);
    v2 = v4;
    v1[5] = v4;
    v1[6] = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4638094()
{
  v1 = v0;
  if (v0[8])
  {
    v2 = v0[7];
  }

  else
  {
    sub_1C4F02248();
    v4 = v0[2];
    v3 = v0[3];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4F8E8E0);
    v2 = v4;
    v1[7] = v4;
    v1[8] = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4638154@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C4637F74();
  sub_1C4637FD4();
  v3 = sub_1C4F01108();

  [v2 doubleForKey_];
  v5 = v4;

  if (v5 <= 0.0)
  {
    v6 = 1;
  }

  else
  {
    sub_1C4EF9C48();
    v6 = 0;
  }

  v7 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a1, v6, 1, v7);
}

uint64_t sub_1C463820C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4467FE0(a1, v4);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C44686E4(v4);
    v11 = sub_1C4637F74();
    sub_1C4637FD4();
    v12 = sub_1C4F01108();

    [v11 removeObjectForKey_];

    return sub_1C44686E4(a1);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    v14 = sub_1C4637F74();
    sub_1C4EF9C58();
    v16 = v15;
    sub_1C4637FD4();
    v17 = sub_1C4F01108();

    [v14 setDouble:v17 forKey:v16];

    sub_1C44686E4(a1);
    return (*(v7 + 8))(v10, v5);
  }
}

id sub_1C4638418()
{
  v0 = sub_1C4637F74();
  sub_1C4638094();
  v1 = sub_1C4F01108();

  v2 = [v0 integerForKey_];

  return v2;
}

void sub_1C4638480(uint64_t a1)
{
  v2 = sub_1C4637F74();
  sub_1C4638094();
  v3 = sub_1C4F01108();

  [v2 setInteger:a1 forKey:v3];
}

void sub_1C4638500()
{
  v1 = sub_1C4637F74();
  sub_1C4638094();
  v2 = sub_1C4F01108();

  [v1 removeObjectForKey_];

  v3 = *(v0 + 32);
  sub_1C4637FD4();
  v4 = sub_1C4F01108();

  [v3 removeObjectForKey_];
}

uint64_t sub_1C46385AC()
{

  return v0;
}

uint64_t sub_1C46385E4()
{
  sub_1C46385AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4638684(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBFDC();
  v38 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - v6;
  v7 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v41 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  v14 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 32);
  v44 = *(a1 + 16);
  v45[0] = v20;
  *(v45 + 9) = *(a1 + 41);
  sub_1C45D5A24(v19);
  sub_1C4638DE4();
  sub_1C4F01578();
  sub_1C4F01578();
  (*(v16 + 8))(v19, v14);
  if (v42 != v43)
  {
    return 0;
  }

  v21 = v39;
  (*(v39 + 16))(v13, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v7);
  v22 = (v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_state);
  sub_1C4406810();
  swift_beginAccess();
  sub_1C4409678(v22, v22[3]);
  v23 = v40;
  sub_1C4638154(v40);
  swift_endAccess();
  if (sub_1C44157D4(v23, 1, v7) == 1)
  {
    v24 = v41;
    sub_1C4EF9B28();
    if (sub_1C44157D4(v23, 1, v7) != 1)
    {
      sub_1C44686E4(v23);
    }
  }

  else
  {
    v24 = v41;
    (*(v21 + 32))(v41, v23, v7);
  }

  sub_1C4EF9B78();
  v26 = v25;
  v27 = *(v21 + 8);
  v27(v24, v7);
  v27(v13, v7);
  sub_1C4406810();
  if (v26 >= v28)
  {
    swift_beginAccess();
    v32 = v22[3];
    v33 = v22[4];
    sub_1C4418280(v22, v32);
    (*(v33 + 40))(1, v32, v33);
    swift_endAccess();
    v34 = v38;
    sub_1C4EF9CC8();
    sub_1C440BAA8(v34, 0, 1, v7);
    sub_1C4406810();
    swift_beginAccess();
    v35 = v22[3];
    v36 = v22[4];
    sub_1C4418280(v22, v35);
    (*(v36 + 16))(v34, v35, v36);
    goto LABEL_10;
  }

  swift_beginAccess();
  sub_1C4409678(v22, v22[3]);
  v29 = sub_1C4638418();
  swift_endAccess();
  if (v29 < *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_maximumBehaviorsPerInterval))
  {
    sub_1C4406810();
    swift_beginAccess();
    v30 = v22[3];
    v31 = v22[4];
    sub_1C4418280(v22, v30);
    (*(v31 + 40))(v29 + 1, v30, v31);
LABEL_10:
    swift_endAccess();
    return 0;
  }

  return 1;
}

void sub_1C4638B2C()
{
  v1 = (v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_state);
  swift_beginAccess();
  sub_1C4409678(v1, v1[3]);
  sub_1C4638500();
}

uint64_t sub_1C4638B8C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_type;
  v2 = sub_1C4EFDAB8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorWindowLimiter_state));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorWindowLimiter(uint64_t a1)
{
  result = qword_1EC0BA1C0;
  if (!qword_1EC0BA1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4638C8C(uint64_t a1)
{
  result = sub_1C4EFDAB8();
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

id sub_1C4638D80(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C4F01108();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t sub_1C4638DE4()
{
  result = qword_1EDDEFFB8;
  if (!qword_1EDDEFFB8)
  {
    sub_1C4EFDAB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFFB8);
  }

  return result;
}

uint64_t IntelligencePlatformBenchmark.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  IntelligencePlatformBenchmark.init(config:)(a1);
  return v2;
}

void *IntelligencePlatformBenchmark.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1C4EFDBB8();
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Configuration(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_config;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_config);
  sub_1C44098F0(a1, v17);
  type metadata accessor for GraphStore(0);
  swift_allocObject();
  v19 = GraphStore.init(config:)(v17);
  if (v2)
  {
    sub_1C4467948(a1);
    sub_1C4467948(v3 + v18);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_graphStore) = v19;
    sub_1C4EFDC58();
    sub_1C4EFDBA8();
    sub_1C44098F0(a1, v14);
    v20 = KnosisServer.init(config:platformConfig:)(v9, v14);
    sub_1C4467948(a1);
    *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_knosisServer) = v20;
  }

  return v3;
}

uint64_t sub_1C46390AC(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C44098F0(a1, v5 - v4);
  v7 = swift_allocObject();
  IntelligencePlatformBenchmark.init(config:)(v6);
  return v7;
}

void (*sub_1C4639154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t, uint64_t)
{
  v255 = a5;
  v10 = sub_1C456902C(&qword_1EC0BA1E0, &qword_1C4F13B58);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FCE30(v236 - v13);
  v14 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v256 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v236 - v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  i = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FCE30(v236 - v25);
  v26 = sub_1C456902C(&qword_1EC0BA1E8, &unk_1C4F13B60);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FCE30(v236 - v28);
  v29 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v245 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  v257 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v259 = v36;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FCE30(v236 - v39);
  v246 = 0x80000001C4F8EA10;
  v40 = a1 == 0xD000000000000010 && 0x80000001C4F8EA10 == a2;
  v41 = v40;
  LODWORD(v241) = v41;
  v250 = a1;
  if (v40 || (sub_1C442FBF4(a1, a2) & 1) != 0)
  {
    sub_1C4433178();
    GraphStore.loadGraphTriples()();
    sub_1C48116F8();
LABEL_10:
    v239 = v42;

    goto LABEL_11;
  }

  sub_1C442B980();
  sub_1C441C824();
  v136 = a1 == v135 && a2 == v134;
  if (v136 || (sub_1C4434E98(), (sub_1C4F02938() & 1) != 0))
  {
    sub_1C4433178();
    GraphStore.loadEventTriples()();
    sub_1C4811820();
    goto LABEL_10;
  }

  v5 = &unk_1EC151000;
  v239 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v43 = a3 == 7628135 && a4 == 0xE300000000000000;
  v273 = v14;
  v261 = v29;
  v249 = a2;
  if (!v43 && (sub_1C43FC070(7628135, 0xE300000000000000) & 1) == 0)
  {
    v137 = a3 == 7370352 && a4 == 0xE300000000000000;
    if (v137 || (sub_1C43FC070(7370352, 0xE300000000000000) & 1) != 0)
    {
      v138 = 0;
      v139 = sub_1C440F3C0();
      v261 = *(v139 + 16);
      v140 = (v256 + 8);
      v141 = (v139 + 32);
      v90 = MEMORY[0x1E69E7CC0];
      for (i = (v139 + 32); ; v141 = i)
      {
        v142 = v141 + 40 * v138;
        while (1)
        {
          if (v261 == v138)
          {
            goto LABEL_65;
          }

          if (v138 >= *(v139 + 16))
          {
            goto LABEL_154;
          }

          sub_1C442E860(v142, &v269);
          if (*(v90 + 2) == v255)
          {
            goto LABEL_95;
          }

          v143 = v90;
          sub_1C442C574(&v269, v271);
          v144 = sub_1C4EFF7D8();
          v146 = v145;

          v147 = HIBYTE(v146) & 0xF;
          if ((v146 & 0x2000000000000000) == 0)
          {
            v147 = v144 & 0xFFFFFFFFFFFFLL;
          }

          if (v147)
          {
            sub_1C442C574(&v269, v271);
            v148 = v253;
            sub_1C4EFF7F8();
            v149 = sub_1C4EFEB68();
            v151 = v150;
            v152 = *v140;
            (*v140)(v148, v273);
            v264 = v149;
            v265 = v151;
            sub_1C43FFECC();
            sub_1C4415EA8();
            sub_1C44058F8();
            LOBYTE(v149) = sub_1C4F02048();

            if ((v149 & 1) == 0)
            {
              sub_1C4412D90(&v269, v271);
              v264 = sub_1C4EFF7D8();
              v265 = v153;
              sub_1C43FFECC();
              sub_1C44058F8();
              v154 = sub_1C4F02048();

              if ((v154 & 1) == 0)
              {
                break;
              }
            }
          }

          sub_1C440962C(&v269);
          v142 += 40;
          ++v138;
          v139 = sub_1C440F3C0();
          v90 = v143;
        }

        v264 = 0;
        v265 = 0xE000000000000000;
        sub_1C4F02248();

        v264 = 678458992;
        v265 = 0xE400000000000000;
        sub_1C4412D90(&v269, v271);
        v155 = v253;
        sub_1C4404C88();
        sub_1C4EFF7F8();
        sub_1C44191F8();
        sub_1C463B224(&qword_1EC0BA1F0, v156, MEMORY[0x1E69A9780]);
        v157 = v273;
        v158 = sub_1C4F02858();
        MEMORY[0x1C6940010](v158);

        v152(v155, v157);
        MEMORY[0x1C6940010](10028, 0xE200000000000000);
        sub_1C442C574(&v269, v271);
        sub_1C4404C88();
        v159 = sub_1C4EFF7D8();
        MEMORY[0x1C6940010](v159);

        MEMORY[0x1C6940010](0x547865646E692C27, 0xEC0000003D657079);
        v160 = sub_1C44118F8();
        MEMORY[0x1C6940010](v160);
        MEMORY[0x1C6940010](41, 0xE100000000000000);
        v161 = v264;
        v162 = v265;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v143 = v167;
        }

        v164 = *(v143 + 2);
        v163 = *(v143 + 3);
        v165 = v143;
        if (v164 >= v163 >> 1)
        {
          sub_1C43FFD98(v163);
          sub_1C443D664();
          v165 = v168;
        }

        ++v138;
        *(v165 + 2) = v164 + 1;
        v166 = (v165 + 16 * v164);
        v90 = v165;
        v166[4] = v161;
        v166[5] = v162;
        sub_1C440962C(&v269);
        v139 = sub_1C440F3C0();
      }
    }

    v169 = a3 == 1651339107 && a4 == 0xE400000000000000;
    if (v169 || (sub_1C43FC070(1651339107, 0xE400000000000000) & 1) != 0)
    {
      v170 = sub_1C440F3C0();
      v252 = *(v170 + 16);
      if (v252)
      {
        v171 = 0;
        v243 = v5[357];
        v248 = v170 + 32;
        v172 = (v256 + 8);
        sub_1C441C824();
        v177 = v250 == v175 && a2 == v174;
        LODWORD(v237) = v177;
        v244 = v245 + 8;
        v90 = MEMORY[0x1E69E7CC0];
        v178 = v242;
        v238 = v19;
        v259 = v172;
        while (1)
        {
          if (v171 >= *(v173 + 16))
          {
            goto LABEL_156;
          }

          v254 = v171;
          sub_1C442E860(v248 + 40 * v171, &v269);
          sub_1C442C574(&v269, v271);
          v179 = sub_1C4EFF7D8();
          v181 = v180;

          v182 = HIBYTE(v181) & 0xF;
          if ((v181 & 0x2000000000000000) == 0)
          {
            v182 = v179 & 0xFFFFFFFFFFFFLL;
          }

          if (v182)
          {
            break;
          }

LABEL_141:
          v199 = v254;
LABEL_142:
          v171 = v199 + 1;
          sub_1C440962C(&v269);
          v173 = v239;
          if (v171 == v252)
          {
LABEL_65:

            return v90;
          }
        }

        v258 = v90;
        v183 = v272;
        sub_1C442C574(&v269, v271);
        sub_1C440D138();
        sub_1C4EFF7F8();
        v184 = sub_1C4EFEB68();
        v186 = v185;
        i = *v172;
        i(v183, v14);
        v264 = v184;
        v265 = v186;
        sub_1C43FFECC();
        v187 = sub_1C4415EA8();
        v188 = sub_1C44058F8();
        LOBYTE(v184) = sub_1C4404C94(v188);

        if (v184)
        {
          goto LABEL_140;
        }

        sub_1C442C574(&v269, v271);
        v264 = sub_1C4EFF7D8();
        v265 = v189;
        sub_1C43FFECC();
        v190 = sub_1C44058F8();
        v191 = sub_1C4404C94(v190);

        if (v191)
        {
          goto LABEL_140;
        }

        v247 = v187;
        if (v241 & 1) != 0 || (v192 = sub_1C44118F8(), (sub_1C442FBF4(v192, v193)))
        {
          v194 = v272;
          sub_1C442C574(&v269, v271);
          sub_1C440D138();
          sub_1C4EFF7E8();
          GraphStore.loadGraphTriples(subject:)();
          sub_1C4402C08();
          v195(v194, v261);
          sub_1C48116F8();
          v197 = v196;
          v198 = i;
        }

        else
        {
          v199 = v254;
          v198 = i;
          if ((v237 & 1) == 0)
          {
            sub_1C44118F8();
            sub_1C4434E98();
            sub_1C442B980();
            v232 = sub_1C4F02938();
            v197 = MEMORY[0x1E69E7CC0];
            if ((v232 & 1) == 0)
            {
              goto LABEL_120;
            }
          }

          v233 = v272;
          sub_1C442C574(&v269, v271);
          sub_1C440D138();
          sub_1C4EFF7E8();
          sub_1C486EA34(v233);
          sub_1C4402C08();
          v234(v233, v261);
          sub_1C4811820();
          v197 = v235;
        }

        v199 = v254;
LABEL_120:
        v256 = *(v197 + 16);
        if (v256)
        {
          v200 = 0;
          v257 = v197;
          v201 = v197 + 32;
          do
          {
            if (v200 >= *(v257 + 16))
            {
              goto LABEL_155;
            }

            sub_1C442E860(v201, &v264);
            sub_1C442C574(&v269, v271);
            sub_1C4404C88();
            sub_1C4EFF7F8();
            sub_1C442C574(&v264, v266);
            sub_1C4404C88();
            sub_1C4EFF7F8();
            sub_1C44191F8();
            sub_1C463B224(&off_1EDDFCCA8, v202, MEMORY[0x1E69A9770]);
            sub_1C4F01578();
            sub_1C4F01578();
            if (v267 == v262 && v268 == v263)
            {
              v206 = v259;
              v198(v178, v14);
              v172 = v206;
              v198(v19, v14);
            }

            else
            {
              v204 = v19;
              v19 = sub_1C4F02938();
              v205 = v259;
              i(v178, v14);
              v172 = v205;
              v198 = i;
              i(v204, v14);

              if (v19)
              {
                sub_1C4404138();
              }

              else
              {
                if (*(v258 + 2) == v255)
                {

                  sub_1C440962C(&v264);
                  v14 = v273;
                  v90 = v258;
                  sub_1C4404138();
                  goto LABEL_141;
                }

                sub_1C442C574(&v264, v266);
                v207 = v253;
                sub_1C4404C88();
                sub_1C4EFF7F8();
                v208 = sub_1C4EFEB68();
                v210 = v209;
                v19 = v273;
                v211 = i;
                i(v207, v273);
                v267 = v208;
                v268 = v210;
                v262 = 39;
                v263 = 0xE100000000000000;
                LOBYTE(v208) = sub_1C4F02048();

                if (v208)
                {
                  v178 = v242;
                  sub_1C4404138();
                  v198 = v211;
                }

                else
                {
                  v267 = 678458992;
                  v268 = 0xE400000000000000;
                  sub_1C442C574(&v269, v271);
                  sub_1C4404C88();
                  sub_1C4EFF7F8();
                  sub_1C44191F8();
                  v245 = sub_1C463B224(&qword_1EC0BA1F0, v212, MEMORY[0x1E69A9780]);
                  v213 = sub_1C4F02858();
                  MEMORY[0x1C6940010](v213);

                  v211(v207, v19);
                  MEMORY[0x1C6940010](2564140, 0xE300000000000000);
                  sub_1C442C574(&v269, v271);
                  v214 = v240;
                  sub_1C4404C88();
                  sub_1C4EFF7E8();
                  sub_1C440681C();
                  sub_1C463B224(&qword_1EDDFE810, v215, MEMORY[0x1E69A9840]);
                  v216 = v261;
                  v217 = sub_1C4F02858();
                  MEMORY[0x1C6940010](v217);

                  sub_1C4402C08();
                  v218(v214, v216);
                  MEMORY[0x1C6940010](0x7865646E69202C27, 0xED00003D65707954);
                  v219 = v250;
                  v220 = v249;
                  MEMORY[0x1C6940010](v250, v249);
                  MEMORY[0x1C6940010](0x287465672E29, 0xE600000000000000);
                  sub_1C442C574(&v264, v266);
                  sub_1C4404C88();
                  sub_1C4EFF7F8();
                  v221 = sub_1C4F02858();
                  MEMORY[0x1C6940010](v221);

                  v222 = v207;
                  v223 = i;
                  i(v222, v19);
                  MEMORY[0x1C6940010](0x547865646E69202CLL, 0xEC0000003D657079);
                  MEMORY[0x1C6940010](v219, v220);
                  MEMORY[0x1C6940010](41, 0xE100000000000000);
                  v224 = v267;
                  v225 = v268;
                  v198 = v223;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C43FCEC0();
                    sub_1C443D664();
                    v258 = v230;
                  }

                  v227 = *(v258 + 2);
                  v226 = *(v258 + 3);
                  v178 = v242;
                  if (v227 >= v226 >> 1)
                  {
                    sub_1C43FFD98(v226);
                    sub_1C443D664();
                    v258 = v231;
                  }

                  v228 = v258;
                  *(v258 + 2) = v227 + 1;
                  v229 = (v228 + 16 * v227);
                  v229[4] = v224;
                  v229[5] = v225;
                  sub_1C4404138();
                  v172 = v259;
                }
              }
            }

            ++v200;
            sub_1C440962C(&v264);
            v201 += 40;
            v14 = v273;
          }

          while (v256 != v200);

LABEL_140:
          v90 = v258;
          goto LABEL_141;
        }

        v90 = v258;
        goto LABEL_142;
      }
    }

    else
    {
LABEL_150:
      sub_1C440F3C0();
    }

    return MEMORY[0x1E69E7CC0];
  }

  sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
  sub_1C440681C();
  sub_1C463B224(v44, v45, MEMORY[0x1E69A9820]);
  v46 = sub_1C4F00F28();
  v267 = v46;
  v47 = sub_1C440F3C0();
  v48 = *(v47 + 16);
  if (!v48)
  {

LABEL_37:
    v84 = v46 + 64;
    sub_1C43FEC90();
    v87 = v86 & v85;
    v237 = (v88 + 63) >> 6;
    v238 = (v245 + 16);
    v246 = v245 + 32;
    v253 = v256 + 16;
    v252 = v256 + 32;
    v251 = (v256 + 8);
    *&v241 = v245 + 8;
    v239 = v46;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v89 = 0;
    v90 = MEMORY[0x1E69E7CC0];
    v91 = v244;
    v242 = v46 + 64;
    if (!v87)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v248 = v89;
      v92 = v89;
LABEL_43:
      v247 = (v87 - 1) & v87;
      v93 = __clz(__rbit64(v87)) | (v92 << 6);
      v94 = v239;
      v95 = v245;
      v96 = v240;
      (*(v245 + 16))(v240, *(v239 + 48) + *(v245 + 72) * v93, v29);
      v87 = *(*(v94 + 56) + 8 * v93);
      v97 = sub_1C456902C(&qword_1EC0BA208, &qword_1C4F13B80);
      v98 = *(v97 + 48);
      (*(v95 + 32))(v91, v96, v29);
      *(v91 + v98) = v87;
      sub_1C440BAA8(v91, 0, 1, v97);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_44:
      v99 = v243;
      sub_1C463B26C(v91, v243);
      sub_1C456902C(&qword_1EC0BA208, &qword_1C4F13B80);
      v100 = sub_1C4406834();
      if (sub_1C44157D4(v100, 1, v87) == 1)
      {

        goto LABEL_65;
      }

      v101 = *(v99 + *(v87 + 48));
      sub_1C4402C08();
      v102(v257, v99, v29);
      v103 = 0;
      v104 = v101 + 7;
      v258 = v101;
      sub_1C43FEC90();
      v107 = v106 & v105;
      v109 = (v108 + 63) >> 6;
      if ((v106 & v105) == 0)
      {
        break;
      }

      while (1)
      {
        v110 = v90;
        v111 = v273;
LABEL_52:
        v113 = v256;
        v114 = v254;
        (*(v256 + 16))(v254, *(v258 + 6) + *(v256 + 72) * (__clz(__rbit64(v107)) | (v103 << 6)), v111);
        v115 = i;
        (*(v113 + 32))(i, v114, v111);
        if (*(v110 + 2) == v255)
        {
          break;
        }

        v269 = 0x2728746567;
        v270 = 0xE500000000000000;
        sub_1C440681C();
        sub_1C463B224(&qword_1EDDFE810, v116, MEMORY[0x1E69A9840]);
        v117 = sub_1C4F02858();
        MEMORY[0x1C6940010](v117);

        MEMORY[0x1C6940010](11303, 0xE200000000000000);
        sub_1C44191F8();
        sub_1C463B224(&qword_1EC0BA1F0, v118, MEMORY[0x1E69A9780]);
        v119 = sub_1C4F02858();
        MEMORY[0x1C6940010](v119);

        MEMORY[0x1C6940010](0x79547865646E692CLL, 0xEB000000003D6570);
        v120 = sub_1C44118F8();
        MEMORY[0x1C6940010](v120);
        MEMORY[0x1C6940010](41, 0xE100000000000000);
        v121 = v270;
        v259 = v269;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v110 = v127;
        }

        v123 = *(v110 + 2);
        v122 = *(v110 + 3);
        v124 = v110;
        if (v123 >= v122 >> 1)
        {
          sub_1C43FFD98(v122);
          sub_1C443D664();
          v124 = v128;
        }

        v107 &= v107 - 1;
        sub_1C4402C08();
        v125();
        *(v124 + 2) = v123 + 1;
        v126 = (v124 + 16 * v123);
        v90 = v124;
        v126[4] = v259;
        v126[5] = v121;
        v29 = v261;
        if (!v107)
        {
          goto LABEL_47;
        }
      }

      sub_1C4402C08();
      v131(v115, v111);
      sub_1C4402C08();
      v29 = v261;
      v132(v257, v261);
      v91 = v244;
      v90 = v110;
LABEL_60:
      v84 = v242;
      v89 = v248;
      v87 = v247;
      if (!v247)
      {
LABEL_39:
        while (1)
        {
          v92 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            break;
          }

          if (v92 >= v237)
          {
            v248 = v89;
            v130 = sub_1C456902C(&qword_1EC0BA208, &qword_1C4F13B80);
            sub_1C440BAA8(v91, 1, 1, v130);
            v247 = 0;
            goto LABEL_44;
          }

          v87 = *(v84 + 8 * v92);
          ++v89;
          if (v87)
          {
            v248 = v92;
            goto LABEL_43;
          }
        }

        __break(1u);
        goto LABEL_150;
      }
    }

LABEL_47:
    v111 = v273;
    while (1)
    {
      v112 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v112 >= v109)
      {
        sub_1C4402C08();
        v129(v257, v29);

        v91 = v244;
        goto LABEL_60;
      }

      v107 = v104[v112];
      ++v103;
      if (v107)
      {
        v110 = v90;
        v103 = v112;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_95:
    sub_1C440F3C0();

    sub_1C440962C(&v269);
    return v90;
  }

  v49 = v47 + 32;
  v50 = (v245 + 8);
  v246 = v256 + 16;
  v242 = v256 + 8;
  v236[1] = v245 + 16;
  v241 = xmmword_1C4F0D130;
  v51 = v248;
  v52 = v252;
  v251 = (v245 + 8);
  while (1)
  {
    sub_1C442E860(v49, &v269);
    sub_1C4412D90(&v269, v271);
    sub_1C4406834();
    sub_1C4EFF7E8();
    if (*(v267 + 16))
    {
      sub_1C44E3664();
      if (v53)
      {
        v54 = *v50;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v258 = v54;
        v54(v52, v29);

        sub_1C4412D90(&v269, v271);
        sub_1C4406834();
        sub_1C4EFF7E8();
        v55 = sub_1C4B5A788();
        if (*v56)
        {
          v238 = v55;
          v57 = sub_1C456902C(qword_1EC0BA210, &qword_1C4F13B88);
          sub_1C4412D90(&v269, v271);
          sub_1C4EFF7F8();
          v58 = v237;
          v52 = v252;
          sub_1C44CB508();
          v60 = v59;
          v238(&v264, 0);
          v61 = v58;
          v50 = v251;
          v258(v51, v261);
          *v61 = v60 & 1;
          v62 = v61;
          v63 = 0;
          v64 = v57;
          v29 = v261;
        }

        else
        {
          (v55)(&v264, 0);
          v258(v51, v29);
          v64 = sub_1C456902C(qword_1EC0BA210, &qword_1C4F13B88);
          v61 = v237;
          v62 = v237;
          v63 = 1;
        }

        sub_1C440BAA8(v62, v63, 1, v64);
        sub_1C463B2DC(v61);
        v14 = v273;
        goto LABEL_34;
      }
    }

    v258 = v48;
    v65 = *v50;
    (*v50)(v52, v29);
    sub_1C4412D90(&v269, v271);
    sub_1C4406834();
    sub_1C4EFF7E8();
    sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
    v66 = v256;
    v67 = (*(v256 + 80) + 32) & ~*(v256 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v241;
    sub_1C4412D90(&v269, v271);
    sub_1C4EFF7F8();
    sub_1C44191F8();
    v70 = sub_1C463B224(&qword_1EDDFCCB8, v69, MEMORY[0x1E69A9758]);
    v264 = MEMORY[0x1C69407C0](1, v14, v70);
    (*(v66 + 16))(v247, v68 + v67, v14);
    v71 = v253;
    sub_1C44CB508();
    (*(v66 + 8))(v71, v14);
    swift_setDeallocating();
    sub_1C49E1540();
    v72 = v264;
    v73 = v267;
    swift_isUniquelyReferenced_nonNull_native();
    v264 = v73;
    sub_1C44E3664();
    if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
    {
      break;
    }

    v76 = v74;
    v77 = v75;
    sub_1C456902C(&qword_1EC0BA200, &qword_1C4F13B78);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      v29 = v261;
      v51 = v248;
      v50 = v251;
      if ((v77 & 1) != (v79 & 1))
      {
        goto LABEL_157;
      }

      v76 = v78;
    }

    else
    {
      v29 = v261;
      v51 = v248;
      v50 = v251;
    }

    v80 = v264;
    if (v77)
    {
      *(*(v264 + 56) + 8 * v76) = v72;
    }

    else
    {
      *(v264 + 8 * (v76 >> 6) + 64) |= 1 << v76;
      (*(v245 + 16))(v80[6] + *(v245 + 72) * v76, v259, v29);
      *(v80[7] + 8 * v76) = v72;
      v81 = v80[2];
      v82 = __OFADD__(v81, 1);
      v83 = v81 + 1;
      if (v82)
      {
        goto LABEL_153;
      }

      v80[2] = v83;
    }

    v65(v259, v29);
    v267 = v80;
    v14 = v273;
    v52 = v252;
    v48 = v258;
LABEL_34:
    sub_1C440962C(&v269);
    v49 += 40;
    v48 = (v48 - 1);
    if (!v48)
    {
      sub_1C440F3C0();

      v46 = v267;
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C463ACD4()
{
  v1 = v0;
  v30 = sub_1C4EFF158();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C4EFDC08();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0C890;
  *(inited + 32) = 7628135;
  v31 = inited + 32;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 7370352;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 64) = 1651339107;
  *(inited + 72) = 0xE400000000000000;
  v16 = swift_initStackObject();
  v17 = 0;
  *(v16 + 16) = xmmword_1C4F0D130;
  *(v16 + 32) = 0xD000000000000010;
  *(v16 + 40) = 0x80000001C4F8EA10;
  v32 = v16;
  v18 = (v3 + 8);
  v19 = (v10 + 8);
  while (1)
  {
    v33 = v17;
    v20 = (v31 + 16 * v17);
    v21 = *v20;
    v22 = v20[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = *(v32 + 32);
    v24 = *(v32 + 40);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4639154(v23, v24, v21, v22, 2000);
    if (v1)
    {
      break;
    }

    v26 = v25;

    v27 = *(v26 + 2);
    if (v27)
    {
      v28 = v26 + 40;
      do
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF148();
        sub_1C4EFDC18();
        (*v18)(v7, v30);
        (*v19)(v14, v8);
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    v17 = v33 + 1;

    v1 = 0;
    if (v33 == 2)
    {
      swift_setDeallocating();
      sub_1C44DEE40();
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_1C44DEE40();

LABEL_9:
  swift_setDeallocating();
  return sub_1C44DEE40();
}

uint64_t IntelligencePlatformBenchmark.deinit()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore29IntelligencePlatformBenchmark_config);

  return v0;
}

uint64_t IntelligencePlatformBenchmark.__deallocating_deinit()
{
  IntelligencePlatformBenchmark.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntelligencePlatformBenchmark(uint64_t a1)
{
  result = qword_1EC0BA1D0;
  if (!qword_1EC0BA1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C463B138(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C463B224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C463B26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA1E0, &qword_1C4F13B58);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C463B2DC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BA1E8, &unk_1C4F13B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C463B380(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  swift_weakInit();
  sub_1C4406840();
  v7 = *((v5 & v4) + 0x58);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[*(v6 + 104)], a1, v7);
  swift_weakAssign();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_1C463B4B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for BiomeCombinePublisher.BPSCombineSubscription(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), a3, a4);
  v7 = sub_1C463B5E0(a1);
  sub_1C4419210();
  swift_weakAssign();
  sub_1C4419210();
  v10[3] = v6;
  v10[4] = swift_getWitnessTable();
  v10[0] = v7;
  v8 = a1;

  sub_1C4F00B18();

  return sub_1C440962C(v10);
}

uint64_t sub_1C463B5E0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1C463B614(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  sub_1C463B4B4(v4, v7, v5, v6);
}

uint64_t sub_1C463B67C(void *a1)
{
  v1 = a1;
  sub_1C442B870(a1, v9);
  if (swift_dynamicCast())
  {
    v1 = v8;
    sub_1C4406840();
    v9[0] = v8;
    v2 = sub_1C4F00B28();
    sub_1C4F00B88();
    if (sub_1C4F00B68())
    {
      v3 = MEMORY[0x1E698F0A8];
LABEL_6:
      v4 = *v3;
LABEL_10:

      return v4;
    }

    sub_1C4F00B78();
    if (sub_1C4F00B68())
    {
      v3 = MEMORY[0x1E698F0A0];
      goto LABEL_6;
    }

    sub_1C4F00B88();
    if (sub_1C4F00B68())
    {
      __break(1u);
    }

    else if ((v2 & 0x8000000000000000) == 0)
    {
      v4 = BPSDemandMax();
      goto LABEL_10;
    }

    __break(1u);
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ALL, 0x80000001C4F8EAD0);
  sub_1C4409678(v1, v1[3]);
  swift_getDynamicType();
  sub_1C456902C(&unk_1EC0BA400, &qword_1C4F13D58);
  v6 = sub_1C4F01198();
  MEMORY[0x1C6940010](v6);

  MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8EAF0);
  swift_getMetatypeMetadata();
  v7 = sub_1C4F01198();
  MEMORY[0x1C6940010](v7);

  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C463B8EC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_1C4F02078();
  swift_unknownObjectRelease();
  v5 = sub_1C463B67C(v7);

  sub_1C440962C(v7);
  return v5;
}

void sub_1C463B958(void *a1)
{
  if ([a1 state] != 1)
  {
    v3 = 0;
    goto LABEL_5;
  }

  v2 = [a1 error];
  if (v2)
  {
    v3 = v2;
    v4 = v2;
LABEL_5:
    sub_1C4406840();
    sub_1C4F00B08();

    return;
  }

  __break(1u);
}

void sub_1C463BA40(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1C463B958(v4);
}

uint64_t sub_1C463BAA8()
{
  sub_1C4406840();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 16) cancel];
  }

  return result;
}

void sub_1C463BB34(void *a1)
{
  v1 = a1;
  sub_1C463BAA8();
}

uint64_t sub_1C463BBBC(char *a1)
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);

  return swift_weakDestroy();
}

uint64_t sub_1C463BC70(uint64_t a1)
{
  sub_1C4F00B88();
  if (sub_1C4F00B68())
  {
    v3 = MEMORY[0x1E698F0A8];
  }

  else
  {
    sub_1C4F00B78();
    if ((sub_1C4F00B68() & 1) == 0)
    {
      sub_1C4F00B88();
      result = sub_1C4F00B68();
      if (result)
      {
        __break(1u);
      }

      else if ((a1 & 0x8000000000000000) == 0)
      {
        v4 = BPSDemandMax();
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }

    v3 = MEMORY[0x1E698F0A0];
  }

  v4 = *v3;
LABEL_9:
  v6 = *(v1 + 16);

  return [v6 requestDemand_];
}

uint64_t sub_1C463BD34()
{
  sub_1C463BD14();

  return swift_deallocClassInstance();
}

void BiomeCombinePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  type metadata accessor for BiomeCombinePublisher.BPSCombineSubscriber(0, *(v10 + 16), v11, v12);
  (*(v6 + 16))(v8, a1, a3);
  v13 = sub_1C463B34C(v8);
  [v9 subscribe_];
}

uint64_t sub_1C463BEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C463BF4C(uint64_t a1)
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

void sub_1C463C080(unsigned int a1)
{
  if (a1 <= 3)
  {
    v1 = a1;
    if (a1 > 3uLL)
    {
      v1 = 0;
    }

    ((&loc_1C463C0B8 + funcs_1C463C0C0[v1]))();
  }

  else
  {
    sub_1C463C108();
  }
}

uint64_t sub_1C463C1B4(int a1)
{
  v1 = a1 - 1;
  result = 0x6D6F74737543;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x746C7561666544;
      break;
    case 2:
      result = 0x7065656C53;
      break;
    case 3:
      v3 = 1986622020;
      goto LABEL_8;
    case 4:
      result = 0x6573696372657845;
      break;
    case 5:
      result = sub_1C43FFEE0();
      break;
    case 6:
      result = sub_1C4412DAC();
      break;
    case 7:
      v3 = 1684104530;
LABEL_8:
      result = v3 | 0x676E6900000000;
      break;
    case 8:
      result = 0x676E696D6147;
      break;
    case 9:
      result = sub_1C4431FE8();
      break;
    default:
      result = sub_1C440DF58();
      break;
  }

  return result;
}

unint64_t sub_1C463C2B8()
{
  v2 = sub_1C4419224();
  v4 = v4 && v3 == 0xE700000000000000;
  if (!v4 && (sub_1C440684C(v2) & 1) == 0)
  {
    v7 = sub_1C440A758();
    v9 = v1 == v7 && v0 == v8;
    if (v9 || (sub_1C43FEC00(v7, v8) & 1) != 0)
    {

      sub_1C4402D04();
      return sub_1C441F570(v5);
    }

    v10 = sub_1C441190C();
    v12 = v1 == v10 && v0 == v11;
    if (v12 || (sub_1C43FEC00(v10, v11) & 1) != 0)
    {

      sub_1C43FD288();
      return sub_1C441F570(v5);
    }

    if (v1 != 0x73736572646441 || v0 != 0xE700000000000000)
    {
      sub_1C440684C(0x73736572646441);
      sub_1C440F210();
      sub_1C4416DEC();
      return sub_1C441F570(v5);
    }
  }

  v5 = 0;
  return sub_1C441F570(v5);
}

unint64_t sub_1C463C3A4()
{
  v2 = sub_1C4419224();
  v4 = v4 && v3 == 0xE700000000000000;
  if (!v4 && (sub_1C440684C(v2) & 1) == 0)
  {
    v7 = v1 == 1701670728 && v0 == 0xE400000000000000;
    if (v7 || (sub_1C43FEC00(1701670728, 0xE400000000000000) & 1) != 0)
    {

      sub_1C4402D04();
      return sub_1C441F570(v5);
    }

    v8 = v1 == 1802661719 && v0 == 0xE400000000000000;
    if (v8 || (sub_1C43FEC00(1802661719, 0xE400000000000000) & 1) != 0)
    {

      sub_1C43FD288();
      return sub_1C441F570(v5);
    }

    v9 = v1 == 0x6C6F6F686353 && v0 == 0xE600000000000000;
    if (!v9 && (sub_1C43FEC00(0x6C6F6F686353, 0xE600000000000000) & 1) == 0 && (v1 != 7174471 || v0 != 0xE300000000000000))
    {
      sub_1C43FEC00(7174471, 0xE300000000000000);
      sub_1C440F210();
      sub_1C4416DEC();
      return sub_1C441F570(v5);
    }
  }

  v5 = 0;
  return sub_1C441F570(v5);
}

unint64_t sub_1C463C500(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6F74737543 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C43FEC00(0x6D6F74737543, 0xE600000000000000) & 1) != 0)
  {

    sub_1C4402D04();
  }

  else
  {
    v7 = a1 == 0x746C7561666544 && a2 == 0xE700000000000000;
    if (v7 || (sub_1C440684C(0x746C7561666544) & 1) != 0)
    {

      sub_1C43FD288();
    }

    else
    {
      v8 = a1 == 0x7065656C53 && a2 == 0xE500000000000000;
      if (v8 || (sub_1C43FEC00(0x7065656C53, 0xE500000000000000) & 1) != 0 || (a1 == 0x676E6976697244 ? (v9 = a2 == 0xE700000000000000) : (v9 = 0), v9 || (sub_1C440684C(0x676E6976697244) & 1) != 0 || (a1 == 0x6573696372657845 ? (v10 = a2 == 0xE800000000000000) : (v10 = 0), v10 || (sub_1C43FEC00(0x6573696372657845, 0xE800000000000000) & 1) != 0 || (a1 == 1802661719 ? (v11 = a2 == 0xE400000000000000) : (v11 = 0), v11 || (sub_1C43FEC00(1802661719, 0xE400000000000000) & 1) != 0 || ((v12 = sub_1C4412DAC(), a1 == v12) ? (v14 = a2 == v13) : (v14 = 0), v14 || (sub_1C43FEC00(v12, v13) & 1) != 0 || (a1 == 0x676E6964616552 ? (v15 = a2 == 0xE700000000000000) : (v15 = 0), v15 || (sub_1C440684C(0x676E6964616552) & 1) != 0 || (a1 == 0x676E696D6147 ? (v16 = a2 == 0xE600000000000000) : (v16 = 0), v16 || (sub_1C43FEC00(0x676E696D6147, 0xE600000000000000) & 1) != 0 || ((v17 = sub_1C4431FE8(), a1 == v17) ? (v19 = a2 == v18) : (v19 = 0), v19))))))))
      {

        v5 = 0;
      }

      else
      {
        sub_1C43FEC00(v17, v18);
        sub_1C440F210();
        sub_1C4416DEC();
      }
    }
  }

  return sub_1C441F570(v5);
}

unint64_t sub_1C463C774()
{
  v2 = sub_1C4419224();
  v4 = v4 && v3 == 0xE700000000000000;
  if (v4 || (sub_1C440684C(v2) & 1) != 0)
  {

    v5 = 0;
  }

  else
  {
    v7 = v1 == 4346709 && v0 == 0xE300000000000000;
    if (v7 || (sub_1C43FEC00(4346709, 0xE300000000000000) & 1) != 0)
    {

      sub_1C4402D04();
    }

    else if (v1 == 1766222167 && v0 == 0xE400000000000000)
    {

      sub_1C43FD288();
    }

    else
    {
      sub_1C43FEC00(1766222167, 0xE400000000000000);
      sub_1C440F210();
      sub_1C4416DEC();
    }
  }

  return sub_1C441F570(v5);
}

uint64_t sub_1C463C84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C463C8A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C463C9DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

id sub_1C463CBF8(uint64_t a1, id a2)
{
  v2 = [a2 publisherWithOptions_];

  return v2;
}

void sub_1C463CC40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a5 + 16);
  v11 = *(a5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  if ((*(AssociatedConformanceWitness + 8))(a3, a4, AssociatedTypeWitness, AssociatedConformanceWitness))
  {
    v15 = objc_autoreleasePoolPush();
    sub_1C463CDA0(a1, a2, v17, a3, a4, v12, v11, &v18, a6);
    objc_autoreleasePoolPop(v15);
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v16 = a3;
    *(v16 + 8) = a4;
    *(v16 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

void sub_1C463CDA0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v71 = a8;
  v85 = a7;
  v82 = a5;
  v77 = a3;
  v78 = a4;
  v74 = a1;
  v75 = a2;
  v70 = a9;
  v69 = sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v66 - v15;
  v80 = type metadata accessor for BiomeInteractionEventSourceAdapter(0, a6, a7, v16);
  v86 = *(v80 - 8);
  v81 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v66 - v17;
  v18 = sub_1C4EF9CD8();
  v76 = *(v18 - 8);
  v19 = v76;
  v20 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v88 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v66 - v22;
  v23 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v66 - v28;
  v30 = *(v19 + 16);
  v30(&v66 - v28, a1, v18, v27);
  sub_1C440BAA8(v29, 0, 1, v18);
  (v30)(v25, a2, v18);
  sub_1C440BAA8(v25, 0, 1, v18);
  v31 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v32 = sub_1C457A86C(v29, v25, 0, 0, 0);
  v33 = *(v85 + 24);
  v34 = v77;
  v35 = a6;
  v72 = a6;
  v36 = v85;
  v37 = v33(v32, a6);

  v38 = swift_allocObject();
  v38[2] = v35;
  v38[3] = v36;
  v39 = v82;
  v38[4] = v78;
  v38[5] = v39;
  v93 = sub_1C463DFFC;
  v94 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v73 = &v91;
  v91 = sub_1C463D688;
  v92 = &unk_1F43E5798;
  v40 = _Block_copy(&aBlock);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v82 = v37;
  v78 = [v37 mapWithTransform_];
  _Block_release(v40);
  (v30)(v87, v74, v18);
  v41 = v86;
  v43 = v79;
  v42 = v80;
  (*(v86 + 16))(v79, v34, v80);
  v44 = v18;
  (v30)(v88, v75, v18);
  v45 = v76;
  v46 = *(v76 + 80);
  v47 = (v46 + 32) & ~v46;
  v48 = (v20 + *(v41 + 80) + v47) & ~*(v41 + 80);
  v49 = (v81 + v46 + v48) & ~v46;
  v50 = swift_allocObject();
  v51 = v85;
  *(v50 + 16) = v72;
  *(v50 + 24) = v51;
  v52 = *(v45 + 32);
  v52(v50 + v47, v87, v44);
  (*(v86 + 32))(v50 + v48, v43, v42);
  v53 = v83;
  v52(v50 + v49, v88, v44);
  v93 = sub_1C463E008;
  v94 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v90 = 1107296256;
  v91 = sub_1C462BCF4;
  v92 = &unk_1F43E57E8;
  v54 = _Block_copy(&aBlock);

  v55 = v78;
  v56 = [v78 filterWithIsIncluded_];
  _Block_release(v54);

  type metadata accessor for InteractionEvent(0);
  v57 = v56;
  v58 = v84;
  sub_1C4EFFC38();
  if (v58)
  {

    *v71 = v58;
  }

  else
  {

    v60 = v68 + 32;
    v59 = *(v68 + 32);
    v61 = v67;
    v62 = v69;
    v59(v67, v53, v69);
    v63 = (*(v60 + 48) + 16) & ~*(v60 + 48);
    v64 = swift_allocObject();
    v59((v64 + v63), v61, v62);
    v65 = v70;
    *v70 = sub_1C463E11C;
    v65[1] = v64;
  }
}

uint64_t sub_1C463D4AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a6@<X8>)
{
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  *&v11 = MEMORY[0x1EEE9AC00](v10 - 8).n128_u64[0];
  v13 = v21 - v12;
  v14 = [a1 eventBody];
  if (v14)
  {
    v21[1] = v14;
    [a1 timestamp];
    sub_1C4EF9AC8();
    v15 = sub_1C4EF9CD8();
    sub_1C440BAA8(v13, 0, 1, v15);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 16);
    v18 = swift_checkMetadataState();
    v19 = v17(a2, a3, v13, v18, AssociatedConformanceWitness);
    sub_1C44686E4(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0;
  }

  a6[3] = sub_1C456902C(&unk_1EC0BA420, &qword_1C4F13E78);

  *a6 = v19;
  return result;
}

id sub_1C463D688(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(v7);

  sub_1C4409678(v7, v7[3]);
  v5 = sub_1C4F02918();
  sub_1C440962C(v7);

  return v5;
}

uint64_t sub_1C463D71C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v90 = a4;
  v91 = a3;
  v88 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v87 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_1C4EF9CD8();
  v11 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v13 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v82[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82[-v17];
  v93 = type metadata accessor for BiomeInteractionEventSourceAdapter(0, a5, a6, v19);
  v20 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v22 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v82[-v24];
  type metadata accessor for InteractionEvent(0);
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    v86 = v13;
    v28 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
    if (sub_1C4EF9C18())
    {
      v85 = v28;
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v29 = sub_1C4F00978();
      sub_1C442B738(v29, qword_1EDE2DDE0);
      (*(v20 + 16))(v25, v91, v93);
      v30 = *(v11 + 16);
      v90 = v11;
      v31 = v92;
      v86 = v30;
      v30(v18, a2, v92);
      swift_unknownObjectRetain();
      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CD8();
      v91 = a1;
      swift_unknownObjectRelease();
      if (!os_log_type_enabled(v32, v33))
      {
        swift_unknownObjectRelease();

        (*(v90 + 8))(v18, v31);
        (*(v20 + 8))(v25, v93);
        return 0;
      }

      v34 = swift_slowAlloc();
      v83 = v33;
      v35 = v34;
      v84 = swift_slowAlloc();
      v94 = v84;
      *v35 = 136315650;
      isa = v88[2].isa;
      v88 = v32;
      (isa)(v87, v25, a5);
      v37 = sub_1C4F01198();
      v39 = v38;
      (*(v20 + 8))(v25, v93);
      v40 = sub_1C441D828(v37, v39, &v94);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      v41 = v27 + v85;
      v42 = v89;
      v86(v89, v41, v31);
      sub_1C45C2A2C();
      v43 = sub_1C4F02858();
      v45 = v44;
      v46 = *(v90 + 8);
      v46(v42, v31);
      v47 = sub_1C441D828(v43, v45, &v94);

      *(v35 + 14) = v47;
      *(v35 + 22) = 2080;
      v48 = sub_1C4F02858();
      v50 = v49;
      v46(v18, v31);
      v51 = sub_1C441D828(v48, v50, &v94);

      *(v35 + 24) = v51;
      v52 = v88;
      _os_log_impl(&dword_1C43F8000, v88, v83, "BiomeInteractionEventSourceAdapter [events]: Biome unexpectedly emitted %s event on %s, which is earlier than publisher start date %s.", v35, 0x20u);
      v53 = v84;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v53, -1, -1);
      v54 = v35;
    }

    else
    {
      if ((sub_1C4EF9C08() & 1) == 0)
      {
        swift_unknownObjectRelease();
        return 1;
      }

      v85 = v28;
      v55 = v11;
      v56 = a1;
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v57 = sub_1C4F00978();
      sub_1C442B738(v57, qword_1EDE2DDE0);
      (*(v20 + 16))(v22, v91, v93);
      v58 = v92;
      v84 = *(v55 + 16);
      v84(v86, v90, v92);
      swift_unknownObjectRetain();
      v59 = sub_1C4F00968();
      v60 = sub_1C4F01CD8();
      swift_unknownObjectRelease();
      LODWORD(v90) = v60;
      if (!os_log_type_enabled(v59, v60))
      {
        swift_unknownObjectRelease();

        (*(v55 + 8))(v86, v58);
        (*(v20 + 8))(v22, v93);
        return 0;
      }

      v61 = swift_slowAlloc();
      v91 = v56;
      v62 = v61;
      v63 = swift_slowAlloc();
      v94 = v63;
      *v62 = 136315650;
      v64 = v88[2].isa;
      v88 = v59;
      (v64)(v87, v22, a5);
      v65 = sub_1C4F01198();
      v67 = v66;
      (*(v20 + 8))(v22, v93);
      v68 = sub_1C441D828(v65, v67, &v94);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      v69 = v27 + v85;
      v70 = v89;
      v84(v89, v69, v58);
      sub_1C45C2A2C();
      v71 = sub_1C4F02858();
      v73 = v72;
      v74 = *(v55 + 8);
      v74(v70, v58);
      v75 = sub_1C441D828(v71, v73, &v94);

      *(v62 + 14) = v75;
      *(v62 + 22) = 2080;
      v76 = v86;
      v77 = sub_1C4F02858();
      v79 = v78;
      v74(v76, v58);
      v80 = sub_1C441D828(v77, v79, &v94);

      *(v62 + 24) = v80;
      v52 = v88;
      _os_log_impl(&dword_1C43F8000, v88, v90, "BiomeInteractionEventSourceAdapter [events]: Biome unexpectedly emitted %s event on %s, which is later than publisher end date %s.", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v63, -1, -1);
      v54 = v62;
    }

    MEMORY[0x1C6942830](v54, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

unint64_t sub_1C463DFA8()
{
  result = qword_1EC0BA410;
  if (!qword_1EC0BA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BA410);
  }

  return result;
}

uint64_t sub_1C463E008(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v5);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v10 = v8 + *(v9 + 64);
  v12 = type metadata accessor for BiomeInteractionEventSourceAdapter(0, v3, v4, v11);
  sub_1C43FCF7C(v12);
  v14 = v13;
  v16 = v15;
  v17 = (v10 + *(v14 + 80)) & ~*(v14 + 80);
  v18 = v1 + ((*(v16 + 64) + v7 + v17) & ~v7);

  return sub_1C463D71C(a1, v1 + v8, v1 + v17, v18, v3, v4);
}

uint64_t sub_1C463E11C@<X0>(void *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0BA418, &qword_1C4F22330);

  return sub_1C46F91E0(a1);
}

uint64_t sub_1C463E1A0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  *(v5 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames) = 0;
  *(v5 + 16) = v9;
  *(v5 + 32) = v10;
  *(v5 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v5 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config);
  v11 = (v5 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition);
  *v11 = a3;
  v11[1] = a4;
  v11[2] = a5;
  return v5;
}

uint64_t sub_1C463E224()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v6[2] = v0[4];
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v6[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C463F21C, v6);
}

uint64_t sub_1C463E2B8()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView____lazy_storage___featureNames);
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v2 = sub_1C45A322C();
    *(v0 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

void sub_1C463E330()
{
  v2 = v0;
  v111 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config);
  v4 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config + 8);
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_streamDefinition + 16);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v91 = v3;
  v102 = v2;
  sub_1C4C02A20(v3, v4, v5, v2);
  v7 = v6;
  v8 = v1;
  v101 = v5;

  v90 = v4;

  v9 = qword_1EDDFECD0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v9 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v96 = sub_1C4F00978();
    v93 = sub_1C442B738(v96, qword_1EDE2DF70);
    v10 = sub_1C4F00968();
    v11 = sub_1C4F01CB8();

    v12 = os_log_type_enabled(v10, v11);
    v97 = v7;
    v87 = v8;
    if (v12)
    {
      v8 = swift_slowAlloc();
      v13 = sub_1C43FFD34();
      v109 = v13;
      *v8 = 136315138;
      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      v14 = sub_1C4F00EE8();
      v16 = sub_1C441D828(v14, v15, &v109);
      v7 = v97;

      *(v8 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, v10, v11, "%s", v8, 0xCu);
      sub_1C440962C(v13);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v17 = v101 + 64;
    v18 = 1 << *(v101 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v101 + 64);
    v21 = (v18 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = 0;
    *&v23 = 136315650;
    v89 = v23;
    *&v23 = 136315394;
    v88 = v23;
    v95 = v17;
    v94 = v21;
    if (v20)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        return;
      }

      v20 = *(v17 + 8 * v24);
      ++v22;
      if (v20)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  while (1)
  {
    v24 = v22;
LABEL_11:
    v25 = (*(v101 + 48) + ((v24 << 10) | (16 * __clz(__rbit64(v20)))));
    v27 = *v25;
    v26 = v25[1];
    v28 = *(v7 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v28 || (v29 = sub_1C445FAA8(v27, v26), (v30 & 1) == 0))
    {

      v109 = 0;
      v110 = 0xE000000000000000;
      sub_1C4F02248();

      v109 = 0x69566C616E676953;
      v110 = 0xEB00000000207765;
      v71 = sub_1C442C590();
      MEMORY[0x1C6940010](v71);
      MEMORY[0x1C6940010](0x727574616546203ALL, 0xEA00000000002065);
      MEMORY[0x1C6940010](v27, v26);

      MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F8EB90);
      v72 = v109;
      v73 = v110;
      sub_1C446D0DC();
      swift_allocError();
      *v74 = v72;
      *(v74 + 8) = v73;
      *(v74 + 16) = 3;
      swift_willThrow();

      return;
    }

    v105 = v27;
    v106 = v26;
    v31 = *(*(v7 + 56) + 8 * v29);
    v32 = v102[2];
    v33 = v102[3];
    v34 = v102[5];
    v104 = v102[4];
    v35 = v102[6];
    v36 = v31;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v98 = objc_autoreleasePoolPush();
    v37 = objc_opt_self();
    v109 = 0;
    v100 = v36;
    v38 = [v37 archivedDataWithRootObject:v36 requiringSecureCoding:1 error:&v109];
    v39 = v109;
    v99 = v33;
    if (!v38)
    {
      break;
    }

    v40 = v32;
    v41 = sub_1C4EF9A68();
    v43 = v42;

    MEMORY[0x1EEE9AC00](v44);
    v85[2] = v104;
    v85[3] = v34;
    v107 = v43;
    v108 = v34;
    v103 = v35;
    v85[4] = v35;
    v85[5] = v40;
    v85[6] = v33;
    v85[7] = v105;
    v45 = v106;
    v85[8] = v106;
    v85[9] = 0;
    v85[10] = 0;
    v85[11] = v41;
    v85[12] = v43;
    v85[13] = 0;
    v86 = 1;
    sub_1C446C37C(sub_1C463F240, v85);
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    sub_1C442B738(v96, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = v41;
    sub_1C44344B8(v41, v107);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v47 = sub_1C4F00968();
    v48 = sub_1C4F01CB8();

    v49 = sub_1C43FC034();
    sub_1C4434000(v49, v50);

    if (os_log_type_enabled(v47, v48))
    {
      v51 = sub_1C43FFD34();
      v92 = v48;
      v52 = v45;
      v53 = v51;
      v109 = swift_slowAlloc();
      *v53 = v89;
      *(v53 + 4) = sub_1C441D828(v105, v52, &v109);
      *(v53 + 12) = 2080;
      sub_1C44344B8(v46, v107);
      sub_1C43FC034();
      v54 = sub_1C4EF9988();
      v56 = v55;
      v57 = sub_1C43FC034();
      sub_1C4434000(v57, v58);
      v59 = sub_1C441D828(v54, v56, &v109);

      *(v53 + 14) = v59;
      *(v53 + 22) = 2080;
      *(v53 + 24) = sub_1C441D828(v104, v108, &v109);
      _os_log_impl(&dword_1C43F8000, v47, v92, "FeatureDatabaseTable: Wrote %s with data: %s to db with table name %s", v53, 0x20u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
      v60 = sub_1C43FC034();
      sub_1C4434000(v60, v61);
    }

    else
    {

      sub_1C4434000(v46, v107);
    }

    v62 = v100;
    v20 &= v20 - 1;
    objc_autoreleasePoolPop(v98);

    v8 = v62;
    v63 = sub_1C4F00968();
    v64 = sub_1C4F01CB8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = sub_1C43FFD34();
      v109 = v67;
      *v65 = v88;
      v68 = sub_1C442C590();
      *(v65 + 4) = sub_1C441D828(v68, v69, v70);
      *(v65 + 12) = 2112;
      *(v65 + 14) = v8;
      *v66 = v8;
      v8 = v8;
      _os_log_impl(&dword_1C43F8000, v63, v64, "SignalView %s: Wrote %@", v65, 0x16u);
      sub_1C45B4B90(v66);
      sub_1C43FBE2C();
      sub_1C440962C(v67);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    v22 = v24;
    v7 = v97;
    v17 = v95;
    v21 = v94;
    if (!v20)
    {
      goto LABEL_8;
    }
  }

  v75 = v39;
  v76 = sub_1C4EF97A8();

  swift_willThrow();
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  sub_1C442B738(v96, qword_1EDE2E088);
  v77 = v76;
  v78 = sub_1C4F00968();
  v79 = sub_1C4F01CB8();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = sub_1C43FFD34();
    v109 = v81;
    *v80 = 136315138;
    swift_getErrorValue();
    v82 = sub_1C4F02A38();
    v84 = sub_1C441D828(v82, v83, &v109);

    *(v80 + 4) = v84;
    _os_log_impl(&dword_1C43F8000, v78, v79, "FeatureDatabaseTable: could not archive MLFeatureValue with error: %s", v80, 0xCu);
    sub_1C440962C(v81);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  swift_willThrow();

  objc_autoreleasePoolPop(v98);
}

uint64_t sub_1C463ED24(uint64_t a1, uint64_t a2)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_self();
  v5 = sub_1C4F01108();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1C463F28C;
  *(v6 + 24) = a1;
  aBlock[4] = sub_1C463F294;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C463F5CC;
  aBlock[3] = &unk_1F43E58B8;
  v7 = _Block_copy(aBlock);

  LOBYTE(v10) = 0;
  v8 = [v4 iterateStream:v5 device:0 account:0 bookmark:0 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v10 body:v7];
  _Block_release(v7);

  objc_autoreleasePoolPop(v3);

  swift_unknownObjectRelease();
  LOBYTE(aBlock[0]) = 1;
  sub_1C4F00BE8();
}

uint64_t sub_1C463EED0(void *a1)
{
  v4[3] = sub_1C4461BB8(0, &qword_1EC0BA448, 0x1E698F280);
  v4[0] = a1;
  v2 = a1;
  sub_1C4F00BF8();
  return sub_1C440962C(v4);
}

uint64_t sub_1C463EF30()
{

  sub_1C445F57C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore15BiomeSignalView_config);

  return v0;
}

uint64_t sub_1C463EFB0()
{
  sub_1C463EF30();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BiomeSignalView(uint64_t a1)
{
  result = qword_1EC0BA438;
  if (!qword_1EC0BA438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C463F05C(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C463F10C()
{
  sub_1C463E330();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C463F184()
{
  sub_1C463E224();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C463F29C(uint64_t a1, uint64_t a2)
{
  v4 = _s10ViewConfigVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C463F300(uint64_t a1, uint64_t a2)
{
  v4 = _s10ViewConfigVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BiomeStreamStore.init(stream:bookmark:device:account:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

id BiomeStreamStore.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_self();
  v10 = sub_1C4F01108();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v20 = sub_1C463F66C;
  v21 = v11;
  sub_1C4406880();
  sub_1C4419244();
  v18 = v12;
  v19 = &unk_1F43E5908;
  v13 = _Block_copy(aBlock);

  LOBYTE(v16) = 0;
  v14 = [v9 iterateStream:v10 device:v5 account:v7 bookmark:v6 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v16 body:v13];
  _Block_release(v13);

  objc_autoreleasePoolPop(v8);
  return v14;
}

{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = objc_autoreleasePoolPush();
  v9 = objc_opt_self();
  v10 = sub_1C4F01108();
  v19 = a1;
  v20 = a2;
  sub_1C4406880();
  sub_1C4419244();
  v17 = v11;
  v18 = &unk_1F43E5930;
  v12 = _Block_copy(aBlock);

  LOBYTE(v15) = 0;
  v13 = [v9 iterateStream:v10 device:v5 account:v7 bookmark:v6 startTime:0 endTime:0 maxEvents:0 lastN:0 reversed:v15 body:v12];
  _Block_release(v12);

  objc_autoreleasePoolPop(v8);
  return v13;
}

void sub_1C463F5CC(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a3);
}

void BiomeStreamStore.prune(withReason:)(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_self();
  v4 = sub_1C4F01108();
  [v3 pruneStream:v4 withReason:a1];

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1C463F738(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1C69417F0](0);
  sub_1C4F01138();
  sub_1C4F01298();
}

uint64_t sub_1C463F798(uint64_t a1)
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](0);
  sub_1C4F01138();
  sub_1C4F01298();

  return sub_1C4F02B68();
}

uint64_t sub_1C463F818()
{
  v0 = sub_1C4F023F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C4F02A08();
  sub_1C456902C(&qword_1EC0BA460, &qword_1C4F13FB0);
  swift_allocObject();
  return sub_1C4EFF0F8();
}

id sub_1C463F908(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  v6 = sub_1C463F818();
  v7 = &v2[OBJC_IVAR___GDBiomeStreamStoreCache_inner];
  *v7 = v6;
  v7[1] = v8;
  v7[2] = v9;
  v12.receiver = v2;
  v12.super_class = GDBiomeStreamStoreCache;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

void __swiftcall GDBiomeStreamStoreCache.init()(GDBiomeStreamStoreCache *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for GDBiomeStreamStoreCache()
{
  result = qword_1EC0BA458;
  if (!qword_1EC0BA458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BA458);
  }

  return result;
}

id sub_1C463FB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4F01108();

  if (a4)
  {
    v8 = sub_1C4F00EC8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

unint64_t sub_1C463FBF4()
{
  result = qword_1EDDFB0D8;
  if (!qword_1EDDFB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0D8);
  }

  return result;
}

uint64_t Blocker.stateStore.getter()
{
  type metadata accessor for Blocker(0);
}

uint64_t Blocker.init(stores:entityClass:source:pipelineType:isPassThroughEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v10 = *a4;
  sub_1C442570C();
  sub_1C4430900(v11, v12);
  v13 = type metadata accessor for Blocker(0);
  v14 = v13[5];
  v15 = sub_1C4EFD548();
  sub_1C43FCF8C();
  v17 = v16;
  (*(v16 + 16))(a6 + v14, a2, v15);
  sub_1C441925C();
  sub_1C4430900(a3, a6 + v18);
  *(a6 + v13[7]) = 0;
  sub_1C441D69C();
  sub_1C4430900(a1, a6 + v19);
  v20 = type metadata accessor for PhaseStores(0);
  sub_1C448177C();
  *(a6 + v13[9]) = v21;
  v22 = sub_1C44829A4(v21, a1);
  sub_1C4411930();
  sub_1C447E868(a3, v23);
  (*(v17 + 8))(a2, v15);
  *(a6 + v13[10]) = v22;
  *(a6 + v13[11]) = v10;
  v24 = *(a1 + *(v20 + 28));

  result = sub_1C44AB11C();
  *(a6 + v13[12]) = v24;
  *(a6 + v13[13]) = a5;
  return result;
}

uint64_t sub_1C463FE54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440F400();
  v7 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v11 = sub_1C43FECFC();
  type metadata accessor for Blocker(v11);
  sub_1C4EFCEF8();
  sub_1C44189E4();
  sub_1C447CB3C(v12, v13, MEMORY[0x1E69A92E0]);
  v14 = sub_1C4F010B8();
  (*(v9 + 8))(v4, v7);
  v15 = *(a3(0) + 20);
  if (v14)
  {
    sub_1C4EFE308();
  }

  else
  {
    sub_1C4EFE2E8();
  }

  v16 = sub_1C44DBB50(a1 + v15, v3);
  v17 = sub_1C449F410();
  v18(v17);
  return v16 & 1;
}

void sub_1C464001C()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4433190();
  v5 = type metadata accessor for Source(v4);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4414930();
  sub_1C4440948();
  v7 = type metadata accessor for Deduper(0);
  sub_1C4429020(v7);
  v8 = sub_1C456902C(&qword_1EC0BA558, &qword_1C4F14288);
  v9 = sub_1C445BBF0(v8);
  MEMORY[0x1C6940010](v9);

  sub_1C441DC78();
  v10 = sub_1C44A3BBC(*(v1 + 24));
  MEMORY[0x1C6940010](v10);

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v11);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v12);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v13 = sub_1C441B798();
  v14(v13);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C448D934(*(v0 + *(v1 + 32)));
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C464020C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1C44A1E40();
  v8 = type metadata accessor for Source(v7);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v10 = a1(0);
  sub_1C4471CA0(v10);
  v11 = sub_1C456902C(a2, a3);
  v12 = sub_1C4485A60(v11);
  MEMORY[0x1C6940010](v12);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  v13 = sub_1C4402CD0();
  sub_1C4430900(v13, v14);
  MEMORY[0x1C6940010](*v3, v3[1]);
  sub_1C4411930();
  sub_1C447E868(v3, v15);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

uint64_t sub_1C46403A4()
{
  v3 = sub_1C44A1E40();
  v4 = type metadata accessor for Source(v3);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v6 = type metadata accessor for FutureLifeEventDeltaSourceIngestor(0);
  sub_1C4471CA0(v6);
  v7 = sub_1C456902C(&qword_1EC0BA5D8, &qword_1C4F14330);
  v8 = sub_1C4485A60(v7);
  MEMORY[0x1C6940010](v8);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  v9 = sub_1C4402CD0();
  sub_1C4430900(v9, v10);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v11);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  return sub_1C43FE658();
}

uint64_t sub_1C46404C4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1C44A1E40();
  v8 = type metadata accessor for Source(v7);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v10 = a1(0);
  sub_1C4471CA0(v10);
  v11 = sub_1C456902C(a2, a3);
  v12 = sub_1C4485A60(v11);
  MEMORY[0x1C6940010](v12);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v13);
  MEMORY[0x1C6940010](*v3, v3[1]);
  sub_1C4411930();
  sub_1C447E868(v3, v14);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

void sub_1C46406AC()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4433190();
  v5 = type metadata accessor for Source(v4);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4414930();
  sub_1C4440948();
  v7 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
  sub_1C4429020(v7);
  v8 = sub_1C456902C(&qword_1EC0BA5D0, &qword_1C4F40B70);
  v9 = sub_1C445BBF0(v8);
  MEMORY[0x1C6940010](v9);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C4430900(v0, v2);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v10);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v11 = sub_1C441B798();
  v12(v11);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C4640838()
{
  v2 = sub_1C44A1E40();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v5 = type metadata accessor for CNContactDeltaSourceIngestor(0);
  sub_1C4471CA0(v5);
  v6 = sub_1C456902C(&qword_1EC0BA5B0, &unk_1C4F16F40);
  v7 = sub_1C4485A60(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v0 + 36));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v8);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v9);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

void sub_1C46409AC()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4433190();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4414930();
  sub_1C4440948();
  v5 = type metadata accessor for LifeEventSourceIngestor(0);
  sub_1C4429020(v5);
  v6 = sub_1C456902C(&qword_1EC0BA5C8, &unk_1C4F14320);
  v7 = sub_1C445BBF0(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C444B050();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v8);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v9);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v10 = sub_1C441B798();
  v11(v10);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C4640B2C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v7 = sub_1C44A1E40();
  v8 = type metadata accessor for Source(v7);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v10 = a1(0);
  sub_1C4471CA0(v10);
  v11 = sub_1C456902C(a2, a3);
  v12 = sub_1C4485A60(v11);
  MEMORY[0x1C6940010](v12);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v13);
  MEMORY[0x1C6940010](*v3, v3[1]);
  sub_1C4411930();
  sub_1C447E868(v3, v14);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

uint64_t sub_1C4640CF4()
{
  v2 = sub_1C44A1E40();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v5 = type metadata accessor for StandardEntityMapper(0);
  sub_1C4471CA0(v5);
  v6 = sub_1C456902C(&qword_1EC0BA4B0, &qword_1C4F141D8);
  v7 = sub_1C4485A60(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v0 + 24));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  v8 = sub_1C4402CD0();
  sub_1C4430900(v8, v9);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v10);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4482E7C();
  return sub_1C43FE658();
}

void sub_1C4640DF4()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4433190();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4414930();
  sub_1C4440948();
  v5 = type metadata accessor for StandardTransformer(0);
  sub_1C4429020(v5);
  v6 = sub_1C456902C(&qword_1EC0BA4D0, &qword_1C4F14200);
  v7 = sub_1C445BBF0(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  MEMORY[0x1C6940010](0x726F66736E617274, 0xEC000000676E696DLL);
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v8);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v9);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
  sub_1C4EFD3D8();
  v10 = sub_1C441B798();
  v11(v10);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C4640FB8()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1C4433190();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4414930();
  sub_1C4440948();
  v5 = type metadata accessor for DocumentMatcher(0);
  sub_1C4429020(v5);
  v6 = sub_1C456902C(&qword_1EC0BA550, &qword_1C4F14280);
  v7 = sub_1C445BBF0(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C447F6A4(v8);
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4411930();
  sub_1C447E868(v0, v9);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v10 = sub_1C441B798();
  v11(v10);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C44A3CB0();
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

uint64_t sub_1C4641118()
{
  v2 = sub_1C44A1E40();
  v3 = type metadata accessor for Source(v2);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442599C();
  sub_1C4459AF0();
  sub_1C4416710();
  v5 = type metadata accessor for TopicMatcher(0);
  sub_1C4471CA0(v5);
  v6 = sub_1C456902C(&qword_1EC0BA4C8, &qword_1C4F56BF0);
  v7 = sub_1C4485A60(v6);
  MEMORY[0x1C6940010](v7);

  sub_1C441DC78();
  sub_1C44A1BE0(*(v0 + 32));
  sub_1C4475BB0();

  sub_1C44364AC();
  sub_1C441925C();
  sub_1C44F090C(v8);
  MEMORY[0x1C6940010](*v1, v1[1]);
  sub_1C4411930();
  sub_1C447E868(v1, v9);
  sub_1C44690B8();
  sub_1C4EFD3D8();
  sub_1C4475BB0();

  sub_1C44AE8A4();
  sub_1C4656BE0();
  return sub_1C43FE658();
}

void sub_1C4641240()
{
  sub_1C43FBD3C();
  sub_1C44A1E40();
  sub_1C4EFD548();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C4433190();
  v5 = type metadata accessor for Source(v4);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4414930();
  sub_1C4440948();
  v7 = type metadata accessor for EventMatcher(0);
  sub_1C4429020(v7);
  v8 = sub_1C456902C(&qword_1EC0BA548, &qword_1C4F29E20);
  v9 = sub_1C445BBF0(v8);
  MEMORY[0x1C6940010](v9);

  sub_1C441DC78();
  sub_1C4495CA4();
  sub_1C44364AC();
  sub_1C441925C();
  sub_1C4430900(v0, v2);
  MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C4411930();
  sub_1C447E868(v2, v10);
  sub_1C446BE3C();
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C4EFD3D8();
  v11 = sub_1C441B798();
  v12(v11);
  sub_1C44A1748();

  sub_1C44AB234();
  sub_1C448D934(*(v0 + *(v1 + 20)));
  sub_1C44EB86C();
  sub_1C43FE9F0();
}

void sub_1C46413D4()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for HomeMatcher(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for HomeMatcher);
          v28 = sub_1C44C11FC();
          sub_1C4640B2C(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464CA28(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C44CD024();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C44CD024();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C44A1D14();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46418CC()
{
  sub_1C43FBD3C();
  v8 = v1;
  v62 = v9;
  v10 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v12 = sub_1C43FECFC();
  v13 = type metadata accessor for ProgressTokens(v12);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  v63 = type metadata accessor for EventMatcher(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v19 = sub_1C4404C28();
    v8 = sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v61);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v13 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for EventMatcher);
          sub_1C4641240();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for EventMatcher);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v5, v35);
          sub_1C44D44F0();
          *(v13 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v61);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464CE68(v40);
  v3 = v62;
  if (!v64[3])
  {
    sub_1C4420C3C(v64, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v62)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v62 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v44 = 0x6E776F6E6B6E75;
  switch(*(v8 + *(v63 + 20)))
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C441925C();
        sub_1C44806A4(v45);
        sub_1C4426A30(*(v13 + 20));
        *(v6 + v46) = v62 & 1;
        sub_1C4499584();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4424F7C(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v8, v7 + v51);
        sub_1C44A1D14();
        *(v7 + v52) = v53;
        v54 = (v7 + MEMORY[0xE70000000000001C]);
        *v54 = v4;
        v54[1] = v5;
        *(v7 + MEMORY[0xE700000000000020]) = v1;
        *(v7 + MEMORY[0xE700000000000024]) = v62 & 1;
        sub_1C4499584();
        sub_1C4460A18();
        v55 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v56 = sub_1C4405904(v55);
        sub_1C44068A0(v56, xmmword_1C4F0D130);
        sub_1C4430900(v7, v57);
        v58 = sub_1C4415F88();
        sub_1C449498C(v58);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v7;
      }

      sub_1C447E868(v49, v50);
      v59 = sub_1C43FD2BC();
      sub_1C441DFEC(v59, v60);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4641DC0()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for GroupMatcher(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for GroupMatcher);
          v28 = sub_1C44C11FC();
          sub_1C4640B2C(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464D2B8(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C44CD024();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C44CD024();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C44A1D14();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46422B8()
{
  sub_1C43FBD3C();
  sub_1C4435804(v9, v10, v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for TopicMatcher(v15);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C4656BF8();
  }

  else
  {
    v18 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v8 = &dword_1C4F141D0;
    v6 = sub_1C4656BB0();
    sub_1C442C5A4();
    v22 = sub_1C4401CBC(v19, v20, &dword_1C4F141D0, v21);
    sub_1C4461C04(v22);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v23 = sub_1C4F00978();
        sub_1C43FCEE8(v23, qword_1EDE2DE10);
        v24 = sub_1C44623A0();
        sub_1C4430900(v24, v4);
        v25 = sub_1C4F00968();
        sub_1C4F01CD8();
        v26 = sub_1C44016D0();
        if (os_log_type_enabled(v26, v27))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v28 = swift_slowAlloc();
          sub_1C44305A4(v28);
          *v6 = 136315138;
          v29 = sub_1C43FE99C();
          sub_1C4430900(v29, v30);
          sub_1C447E868(v4, type metadata accessor for TopicMatcher);
          sub_1C4641118();
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v4, v32);
          sub_1C4404CE0();

          *(v6 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v7);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          v36 = sub_1C44068C0();
          MEMORY[0x1C6942830](v36);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C44A3A84();
    objc_autoreleasePoolPop(v60);
  }

  sub_1C4656BA4();
  sub_1C464D6F8(v37);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v38 = sub_1C440F3CC();
  v39(v38);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v40 = 0x6E776F6E6B6E75;
  switch(*(v0 + *(v5 + 24)))
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        sub_1C4EFD548();
        sub_1C43FCE50();
        v41 = sub_1C440EDB0();
        v42(v41);
        sub_1C445AABC();
        sub_1C441925C();
        sub_1C44EC814(v43);
        sub_1C44016BC();
        *v44 = v6;
        v44[1] = v8;
        sub_1C4422270();
        sub_1C446277C(v45);
        type metadata accessor for PhaseStores(0);
        sub_1C4460A18();
        v46 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v47 = sub_1C4404CB4(v46);
        sub_1C4412DCC(v47, xmmword_1C4F0D130);
        sub_1C4461F3C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v48 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C4EFD548();
        sub_1C43FCE50();
        v50 = sub_1C4422A44();
        v51(v50);
        sub_1C441925C();
        sub_1C4656CBC(v52);
        sub_1C442A378();
        sub_1C4460A18();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4461F3C();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v48 = v3;
      }

      sub_1C447E868(v48, v49);
      v57 = sub_1C44191B8();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4642798()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1C4409ACC(v13, v59);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C4416DF8();
  v17 = type metadata accessor for DocumentMatcher(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v20 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v20);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v21 = sub_1C4404C28();
    v7 = sub_1C456902C(v21, v22);
    sub_1C442C5A4();
    v26 = sub_1C4401CBC(v23, v24, &dword_1C4F141D0, v25);
    sub_1C4414180(v26);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v3);
        v29 = sub_1C4F00968();
        sub_1C4F01CD8();
        v30 = sub_1C44016D0();
        if (os_log_type_enabled(v30, v31))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v32 = swift_slowAlloc();
          sub_1C44305A4(v32);
          *v14 = 136315138;
          v33 = sub_1C4404BB0();
          sub_1C4430900(v33, v34);
          sub_1C447E868(v3, type metadata accessor for DocumentMatcher);
          sub_1C4640FB8();
          v35 = sub_1C440CAFC();
          sub_1C447E868(v35, type metadata accessor for DocumentMatcher);
          v36 = sub_1C447CB90();
          sub_1C441D828(v36, v5, v37);
          sub_1C44D44F0();
          *(v14 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v38, v39, "%s failed to update progress token");
          sub_1C440962C(v6);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464DB38(v42);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C4402D10();
  v44(v43);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v45 = 0x6E776F6E6B6E75;
  switch(*(v7 + *(v17 + 28)))
  {
    case 1:
      v45 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v45 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v45);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C4426A30(*(v14 + 20));
        *(v6 + v47) = v3 & 1;
        sub_1C4499584();
        sub_1C4460A18();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C43FD294(*(v2 + 5));
        sub_1C4499584();
        sub_1C4460A18();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4642C50()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for SoftwareMatcher(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for SoftwareMatcher);
          v28 = sub_1C44C11FC();
          sub_1C4640B2C(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464DF88(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C44CD024();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C44CD024();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C44A1D14();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643148()
{
  sub_1C43FBD3C();
  sub_1C4418330(v8, v9, v10);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4409ACC(v12, v58);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for WalletOrderMatcher(v14);
  sub_1C44158C8();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C44144E4();
  if (v2)
  {
    sub_1C442493C();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v0 = sub_1C4656BB0();
    sub_1C442C5A4();
    v21 = sub_1C4401CBC(v18, v19, &dword_1C4F141D0, v20);
    sub_1C44418D0(v21);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v59);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v22 = sub_1C4F00978();
        sub_1C43FCEE8(v22, qword_1EDE2DE10);
        v23 = sub_1C44623A0();
        sub_1C4430900(v23, v4);
        v24 = sub_1C4F00968();
        sub_1C4F01CD8();
        v25 = sub_1C44016D0();
        if (os_log_type_enabled(v25, v26))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C4441440();
          v27 = swift_slowAlloc();
          sub_1C44305A4(v27);
          *v7 = 136315138;
          sub_1C445BD08();
          sub_1C447E868(v4, type metadata accessor for WalletOrderMatcher);
          v28 = sub_1C44C11FC();
          sub_1C4640B2C(v28, v29, v30);
          sub_1C4450608();
          v31 = sub_1C447CB90();
          sub_1C441D828(v31, v3, v32);
          sub_1C4404CE0();

          *(v7 + 4) = v1;
          sub_1C442A8B0(&dword_1C43F8000, v33, v34, "%s failed to update progress token");
          sub_1C440962C(v5);
          v35 = sub_1C4416E14();
          MEMORY[0x1C6942830](v35);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
          sub_1C44F1994();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C4458688();
    objc_autoreleasePoolPop(v59);
    sub_1C4466CD8();
  }

  sub_1C443EEB8();
  sub_1C464E3C8(v36);
  sub_1C445A930();
  if (!v2)
  {
    sub_1C4420C3C(&v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v37 = sub_1C43FECAC();
  v38(v37);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4475460();
  v40 = 0x6E776F6E6B6E75;
  switch(v41)
  {
    case 1:
      v40 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v40 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v40);
      sub_1C44D0B30();
      if (v0)
      {
LABEL_18:
        sub_1C44CD024();
        sub_1C43FCE50();
        v42 = sub_1C4488550();
        v43(v42);
        sub_1C441925C();
        sub_1C447F7C8(v44);
        sub_1C4404144(*(v6 + 20));
        sub_1C4417F8C();
        v45 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v46 = sub_1C4404CB4(v45);
        sub_1C4412DCC(v46, xmmword_1C4F0D130);
        sub_1C444FC8C();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v47 = type metadata accessor for ProgressTokens;
      }

      else
      {
        sub_1C44CD024();
        sub_1C43FCE50();
        v48 = sub_1C447F8DC();
        v49(v48);
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C447F7C8(v50);
        sub_1C44A1D14();
        sub_1C442DD98(v51);
        sub_1C4417F8C();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v5, v54);
        v55 = sub_1C444FC8C();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        v47 = type metadata accessor for ConstructionProgressTokens;
      }

      sub_1C447E868(v5, v47);
      v56 = sub_1C4404BB0();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643640()
{
  sub_1C43FBD3C();
  sub_1C4495194(v10, v11, v12);
  v13 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v13);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4409ACC(v15, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C4416DF8();
  type metadata accessor for StandardTransformer(v17);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v20 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v20);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v21 = sub_1C4404C28();
    v9 = sub_1C456902C(v21, v22);
    sub_1C442C5A4();
    v26 = sub_1C4401CBC(v23, v24, &dword_1C4F141D0, v25);
    sub_1C4414180(v26);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v3);
        v29 = sub_1C4F00968();
        sub_1C4F01CD8();
        v30 = sub_1C44016D0();
        if (os_log_type_enabled(v30, v31))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v32 = swift_slowAlloc();
          sub_1C44305A4(v32);
          *v6 = 136315138;
          v33 = sub_1C4404BB0();
          sub_1C4430900(v33, v34);
          sub_1C447E868(v3, type metadata accessor for StandardTransformer);
          sub_1C4640DF4();
          v35 = sub_1C440CAFC();
          sub_1C447E868(v35, type metadata accessor for StandardTransformer);
          v36 = sub_1C447CB90();
          sub_1C441D828(v36, v5, v37);
          sub_1C44D44F0();
          *(v6 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v38, v39, "%s failed to update progress token");
          sub_1C440962C(v7);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464E808(v42);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C4402D10();
  v44(v43);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v45 = 0x6E776F6E6B6E75;
  switch(*(v9 + *(v6 + 28)))
  {
    case 1:
      v45 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v45 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v45);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        *(v7 + *(v8 + 20)) = 7;
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C43FD294(*(v2 + 5));
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643AE8()
{
  sub_1C43FBD3C();
  sub_1C4435804(v8, v9, v10);
  sub_1C43FCDF8();
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = sub_1C4409ACC(v12, v62);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  v16 = type metadata accessor for StandardEntityMapper(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4408598();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4410A24();
  if (v2)
  {
    sub_1C444BFD8();
  }

  else
  {
    v19 = sub_1C44607D4(objc_autoreleasePoolPush());
    sub_1C44099C4(v19);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v7 = &dword_1C4F141D0;
    v5 = sub_1C4475260();
    sub_1C442C5A4();
    v23 = sub_1C4401CBC(v20, v21, &dword_1C4F141D0, v22);
    sub_1C4461C04(v23);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v63);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v24 = sub_1C4F00978();
        sub_1C43FCEE8(v24, qword_1EDE2DE10);
        v25 = sub_1C44623A0();
        sub_1C4430900(v25, v4);
        v26 = sub_1C4F00968();
        sub_1C4F01CD8();
        v27 = sub_1C44016D0();
        if (os_log_type_enabled(v27, v28))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v29 = swift_slowAlloc();
          sub_1C44305A4(v29);
          *v5 = 136315138;
          v30 = sub_1C43FE99C();
          sub_1C4430900(v30, v31);
          sub_1C447E868(v4, type metadata accessor for StandardEntityMapper);
          sub_1C4640CF4();
          sub_1C4450608();
          v32 = sub_1C447CB90();
          sub_1C441D828(v32, v4, v33);
          sub_1C4404CE0();

          *(v5 + 4) = v3;
          sub_1C442F634(&dword_1C43F8000, v34, v35, "%s failed to update progress token");
          sub_1C440962C(v6);
          v36 = sub_1C4416E14();
          MEMORY[0x1C6942830](v36);
          v37 = sub_1C44068C0();
          MEMORY[0x1C6942830](v37);
        }

        else
        {
          sub_1C44B6748();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C442F8B8();
    objc_autoreleasePoolPop(v63);
  }

  sub_1C4656BA4();
  sub_1C464EC48(v38);
  sub_1C446BC18();
  if (!v2)
  {
    sub_1C4420C3C(&v65, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v39 = sub_1C440F3CC();
  v40(v39);
  sub_1C4456268();
  if ((v4 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v42 = 0x6E776F6E6B6E75;
  switch(*(v0 + *(v16 + 28)))
  {
    case 1:
      v42 = sub_1C441D16C();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v42 = sub_1C440DF74();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C443FAEC(v42);
      sub_1C44016DC();
      if (v3)
      {
LABEL_18:
        sub_1C4EFD548();
        sub_1C43FCE50();
        v43 = sub_1C440EDB0();
        v44(v43);
        v45 = *(v0 + *(v16 + 24));
        sub_1C441925C();
        sub_1C4656BC8(v46);
        *(v6 + *(v13 + 20)) = v45;
        sub_1C441C838();
        sub_1C4457890();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4404CB4(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C447EF78();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C4EFD548();
        sub_1C43FCE50();
        v51 = sub_1C4422A44();
        v52(v51);
        v53 = *(v0 + *(v16 + 24));
        sub_1C441925C();
        sub_1C4475344(v54);
        *(v3 + v64[5]) = v53;
        v55 = (v3 + v64[7]);
        *v55 = v5;
        v55[1] = v7;
        *(v3 + v64[8]) = v1;
        *(v3 + v64[9]) = v4 & 1;
        sub_1C4457890();
        sub_1C4460A18();
        v56 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v57 = sub_1C4405904(v56);
        sub_1C44068A0(v57, xmmword_1C4F0D130);
        sub_1C4430900(v3, v58);
        v59 = sub_1C447EF78();
        sub_1C449498C(v59);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v3;
      }

      sub_1C447E868(v49, v50);
      v60 = sub_1C43FC0A8();
      sub_1C441DFEC(v60, v61);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4643FF4()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for EKEventSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for EKEventSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for EKEventSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464F098(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46444AC()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for INGroupSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for INGroupSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for INGroupSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464F4D8(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4644964()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for SGEventSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for SGEventSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for SGEventSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464F918(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4644E1C()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for FAFamilySourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for FAFamilySourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for FAFamilySourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C464FD58(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46452D4()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for INPersonSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for INPersonSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for INPersonSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4650198(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C464578C()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for PHPersonSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for PHPersonSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for PHPersonSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C46505D8(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C4645C44()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  v14 = sub_1C4409ACC(v13, v59);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1C4416DF8();
  v17 = type metadata accessor for LifeEventSourceIngestor(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v20 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v20);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v21 = sub_1C4404C28();
    v7 = sub_1C456902C(v21, v22);
    sub_1C442C5A4();
    v26 = sub_1C4401CBC(v23, v24, &dword_1C4F141D0, v25);
    sub_1C4414180(v26);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v27 = sub_1C4F00978();
        sub_1C43FCEE8(v27, qword_1EDE2DE10);
        v28 = sub_1C44623A0();
        sub_1C4430900(v28, v3);
        v29 = sub_1C4F00968();
        sub_1C4F01CD8();
        v30 = sub_1C44016D0();
        if (os_log_type_enabled(v30, v31))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v32 = swift_slowAlloc();
          sub_1C44305A4(v32);
          *v14 = 136315138;
          v33 = sub_1C4404BB0();
          sub_1C4430900(v33, v34);
          sub_1C447E868(v3, type metadata accessor for LifeEventSourceIngestor);
          sub_1C46409AC();
          v35 = sub_1C440CAFC();
          sub_1C447E868(v35, type metadata accessor for LifeEventSourceIngestor);
          v36 = sub_1C447CB90();
          sub_1C441D828(v36, v5, v37);
          sub_1C44D44F0();
          *(v14 + 4) = v4;
          sub_1C448DFA8(&dword_1C43F8000, v38, v39, "%s failed to update progress token");
          sub_1C440962C(v6);
          v40 = sub_1C4416E14();
          MEMORY[0x1C6942830](v40);
          v41 = sub_1C44068C0();
          MEMORY[0x1C6942830](v41);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4650A18(v42);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v43 = sub_1C4402D10();
  v44(v43);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  v45 = 0x6E776F6E6B6E75;
  switch(*(v7 + *(v17 + 28)))
  {
    case 1:
      v45 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v45 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v45);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C4426A30(*(v14 + 20));
        *(v6 + v47) = v3 & 1;
        sub_1C4499584();
        sub_1C4460A18();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        sub_1C4499584();
        sub_1C4460A18();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46460F4()
{
  sub_1C43FBD3C();
  v7 = v1;
  v59 = v8;
  v9 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v9);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C4433190();
  v12 = type metadata accessor for ProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1C4416DF8();
  type metadata accessor for SGContactSourceIngestor(v14);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C441D15C();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v17 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v17);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v18 = sub_1C4404C28();
    v7 = sub_1C456902C(v18, v19);
    sub_1C442C5A4();
    v23 = sub_1C4401CBC(v20, v21, &dword_1C4F141D0, v22);
    sub_1C4414180(v23);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v58);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v24 = sub_1C4F00978();
        sub_1C43FCEE8(v24, qword_1EDE2DE10);
        v25 = sub_1C44623A0();
        sub_1C4430900(v25, v6);
        v26 = sub_1C4F00968();
        v27 = sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v12 = 136315138;
          v31 = sub_1C440CAF0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v6, type metadata accessor for SGContactSourceIngestor);
          sub_1C447CD74();
          sub_1C4495B14();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for SGContactSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v12 + 4) = v1;
          sub_1C4451274(&dword_1C43F8000, v36, v27, "%s failed to update progress token");
          sub_1C440962C(v5);
          v37 = sub_1C4416E14();
          MEMORY[0x1C6942830](v37);
          v38 = sub_1C44068C0();
          MEMORY[0x1C6942830](v38);
        }

        else
        {
          sub_1C447E868(v6, type metadata accessor for SGContactSourceIngestor);
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v58);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C4650E68(v39);
  v6 = v59;
  if (!v60[3])
  {
    sub_1C4420C3C(v60, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v59)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v40 = sub_1C4402D10();
  v41(v40);
  sub_1C4456268();
  if ((v59 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C4482CCC();
  v43 = 0x6E776F6E6B6E75;
  switch(v44)
  {
    case 1:
      v43 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v43 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v43);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C44806A4(v45);
        sub_1C4426A30(*(v12 + 20));
        *(v5 + v46) = v59 & 1;
        sub_1C44246D8();
        sub_1C4460A18();
        v47 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v48 = sub_1C4424F7C(v47);
        sub_1C4412DCC(v48, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v49 = sub_1C43FFEF0();
      }

      else
      {
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C4428E54();
        sub_1C441925C();
        sub_1C4430900(v7, v3 + v51);
        sub_1C442AB20();
        sub_1C4460A18();
        v52 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v53 = sub_1C4405904(v52);
        sub_1C44068A0(v53, xmmword_1C4F0D130);
        sub_1C4430900(v3, v54);
        v55 = sub_1C4415F88();
        sub_1C449498C(v55);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v49 = v3;
      }

      sub_1C447E868(v49, v50);
      v56 = sub_1C43FD2BC();
      sub_1C441DFEC(v56, v57);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}

void sub_1C46465D0()
{
  sub_1C43FBD3C();
  sub_1C4495194(v8, v9, v10);
  v11 = sub_1C43FECE0();
  type metadata accessor for ConstructionProgressTokens(v11);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4409ACC(v13, v59);
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4416DF8();
  type metadata accessor for ScreenTimeSourceIngestor(v15);
  sub_1C44101F8();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4402CA8();
  if (v0)
  {
    sub_1C4424C80();
  }

  else
  {
    v18 = sub_1C44BBDB4(objc_autoreleasePoolPush());
    sub_1C44099C4(v18);
    v1 = sub_1C4EF93C8();
    v2 = &qword_1EC0BA4A8;
    v0 = &dword_1C4F141D0;
    v19 = sub_1C4404C28();
    sub_1C456902C(v19, v20);
    sub_1C442C5A4();
    v24 = sub_1C4401CBC(v21, v22, &dword_1C4F141D0, v23);
    sub_1C4414180(v24);
    if (&qword_1EC0BA4A8)
    {

      objc_autoreleasePoolPop(v60);
      if (qword_1EDDFD028 == -1)
      {
LABEL_5:
        v25 = sub_1C4F00978();
        sub_1C43FCEE8(v25, qword_1EDE2DE10);
        v26 = sub_1C44623A0();
        sub_1C4430900(v26, v3);
        v27 = sub_1C4F00968();
        sub_1C4F01CD8();
        v28 = sub_1C44016D0();
        if (os_log_type_enabled(v28, v29))
        {
          sub_1C43FECF0();
          swift_slowAlloc();
          sub_1C440D148();
          v30 = swift_slowAlloc();
          sub_1C44305A4(v30);
          *v5 = 136315138;
          v31 = sub_1C4404BB0();
          sub_1C4430900(v31, v32);
          sub_1C447E868(v3, type metadata accessor for ScreenTimeSourceIngestor);
          sub_1C447CD74();
          sub_1C44EF644();
          v33 = sub_1C440CAFC();
          sub_1C447E868(v33, type metadata accessor for ScreenTimeSourceIngestor);
          v34 = sub_1C447CB90();
          sub_1C441D828(v34, v4, v35);
          sub_1C44D44F0();
          *(v5 + 4) = v1;
          sub_1C448DFA8(&dword_1C43F8000, v36, v37, "%s failed to update progress token");
          sub_1C440962C(v6);
          v38 = sub_1C4416E14();
          MEMORY[0x1C6942830](v38);
          v39 = sub_1C44068C0();
          MEMORY[0x1C6942830](v39);
        }

        else
        {
          sub_1C44AB11C();
        }

        goto LABEL_23;
      }

LABEL_25:
      sub_1C4419274();
      swift_once();
      goto LABEL_5;
    }

    sub_1C449DA48();
    objc_autoreleasePoolPop(v60);
    sub_1C4488398();
  }

  sub_1C443EEB8();
  sub_1C46512B8(v40);
  sub_1C4485D04();
  if (!v0)
  {
    sub_1C4420C3C(&v61, &qword_1EC0BA490, &unk_1C4F53630);
    v1 = 0;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v41 = sub_1C4402D10();
  v42(v41);
  sub_1C4456268();
  if ((v3 & 1) == 0)
  {
LABEL_12:
    if (!__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_13:
  sub_1C441E060();
  v44 = 0x6E776F6E6B6E75;
  switch(v45)
  {
    case 1:
      v44 = sub_1C441B7B0();
      goto LABEL_17;
    case 2:

      goto LABEL_18;
    case 3:
      v44 = sub_1C4402D44();
      goto LABEL_17;
    default:
LABEL_17:
      sub_1C440417C(v44);
      sub_1C44A3C98();
      if (v2)
      {
LABEL_18:
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C441925C();
        sub_1C447F7C8(v46);
        sub_1C440EF68(*(v7 + 20));
        sub_1C43FC08C();
        sub_1C4480738(v47);
        sub_1C4417F8C();
        v48 = sub_1C456902C(&qword_1EC0BA4A0, &qword_1C4F53640);
        v49 = sub_1C4404CB4(v48);
        sub_1C4412DCC(v49, xmmword_1C4F0D130);
        sub_1C4415F88();
        sub_1C450B098();
        swift_setDeallocating();
        sub_1C450B628();
        v50 = sub_1C43FFEF0();
      }

      else
      {
        sub_1C445FCEC();
        _s24IntelligencePlatformCore5StagePAAE11entityClass0aB006EntityF0Vvg_0();
        sub_1C445C11C();
        sub_1C441925C();
        sub_1C445BA70(v52);
        sub_1C4432008();
        type metadata accessor for PhaseStores(0);
        sub_1C4417F8C();
        v53 = sub_1C456902C(&qword_1EC0BA498, &unk_1C4F141C0);
        v54 = sub_1C4405904(v53);
        sub_1C44068A0(v54, xmmword_1C4F0D130);
        sub_1C4430900(v3, v55);
        v56 = sub_1C4415F88();
        sub_1C449498C(v56);
        swift_setDeallocating();
        sub_1C4495394();
        sub_1C440A77C();
        v50 = v3;
      }

      sub_1C447E868(v50, v51);
      v57 = sub_1C43FD2BC();
      sub_1C441DFEC(v57, v58);
      break;
  }

LABEL_23:
  sub_1C43FE9F0();
}
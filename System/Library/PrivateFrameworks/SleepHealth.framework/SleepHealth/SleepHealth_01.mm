void sub_269BE1E78()
{
  if (!qword_28034A848)
  {
    v0 = sub_269BF8A68();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A848);
    }
  }
}

void sub_269BE1ED0(uint64_t a1)
{
  if (!qword_28034A850)
  {
    sub_269BE1F2C();
    v1 = sub_269BF8A68();
    if (!v2)
    {
      atomic_store(v1, &qword_28034A850);
    }
  }
}

unint64_t sub_269BE1F2C()
{
  result = qword_28034A858;
  if (!qword_28034A858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A858);
  }

  return result;
}

uint64_t SleepScoreComponent.hashValue.getter()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t SleepScoreComponent.localizedTitle.getter()
{
  v0 = sub_269BF87B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8738();
  v4 = sub_269BDF7A8(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

unint64_t sub_269BE2174()
{
  result = qword_28034A860;
  if (!qword_28034A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A860);
  }

  return result;
}

unint64_t sub_269BE21CC()
{
  result = qword_28034A868;
  if (!qword_28034A868)
  {
    sub_269BE2224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A868);
  }

  return result;
}

void sub_269BE2224()
{
  if (!qword_28034A870)
  {
    v0 = sub_269BF88B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A870);
    }
  }
}

SleepHealth::SleepScoreVisualizationModel __swiftcall SleepScoreVisualizationModel.init(durationFillFraction:bedtimeFillFraction:interruptionsFillFraction:totalPoints:)(Swift::Double durationFillFraction, Swift::Double bedtimeFillFraction, Swift::Double interruptionsFillFraction, Swift::Int totalPoints)
{
  *v4 = durationFillFraction;
  *(v4 + 8) = bedtimeFillFraction;
  *(v4 + 16) = interruptionsFillFraction;
  *(v4 + 24) = totalPoints;
  result.interruptionsFillFraction = interruptionsFillFraction;
  result.bedtimeFillFraction = bedtimeFillFraction;
  result.durationFillFraction = durationFillFraction;
  result.totalPoints = totalPoints;
  return result;
}

unint64_t sub_269BE2358()
{
  v1 = 0x696F506C61746F74;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_269BE23E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_269BE2D24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_269BE2424(uint64_t a1)
{
  v2 = sub_269BE2974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_269BE2460(uint64_t a1)
{
  v2 = sub_269BE2974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SleepScoreVisualizationModel.encode(to:)(void *a1)
{
  sub_269BE2A0C(0, &qword_28034A878, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269BE2974();
  sub_269BF8C78();
  v9[15] = 0;
  sub_269BF8B58();
  if (!v1)
  {
    v9[14] = 1;
    sub_269BF8B58();
    v9[13] = 2;
    sub_269BF8B58();
    v9[12] = 3;
    sub_269BF8B68();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SleepScoreVisualizationModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_269BE2A0C(0, &qword_28034A888, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_269BE2974();
  sub_269BF8C68();
  if (!v2)
  {
    v18[15] = 0;
    sub_269BF8B38();
    v11 = v10;
    v18[14] = 1;
    sub_269BF8B38();
    v13 = v12;
    v18[13] = 2;
    sub_269BF8B38();
    v15 = v14;
    v18[12] = 3;
    v17 = sub_269BF8B48();
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

SleepHealth::SleepScoreVisualizationModel __swiftcall SleepScoreVisualizationModel.init(sleepScore:)(SleepHealth::SleepScore *sleepScore)
{
  deepSleepDurationPoints = sleepScore->deepSleepDurationPoints;
  v3 = sleepScore->sleepDurationPoints + deepSleepDurationPoints;
  if (__OFADD__(sleepScore->sleepDurationPoints, deepSleepDurationPoints))
  {
    __break(1u);
    goto LABEL_9;
  }

  remSleepDurationPoints = sleepScore->remSleepDurationPoints;
  v5 = __OFADD__(v3, remSleepDurationPoints);
  v6 = v3 + remSleepDurationPoints;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sleepStartPunctualityPoints = sleepScore->sleepStartPunctualityPoints;
  v8 = v6 + sleepStartPunctualityPoints;
  if (__OFADD__(v6, sleepStartPunctualityPoints))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  awakeInterruptionPoints = sleepScore->awakeInterruptionPoints;
  if (sleepScore->awakeDurationPoints < awakeInterruptionPoints)
  {
    awakeInterruptionPoints = sleepScore->awakeDurationPoints;
  }

  v5 = __OFADD__(v8, awakeInterruptionPoints);
  v10 = v8 + awakeInterruptionPoints;
  if (v5)
  {
    goto LABEL_11;
  }

  v11 = 20.0;
  v12 = sleepStartPunctualityPoints / 30.0;
  *v1 = v6 / 50.0;
  *(v1 + 8) = v12;
  v13 = awakeInterruptionPoints / 20.0;
  *(v1 + 16) = v13;
  *(v1 + 24) = v10;
LABEL_12:
  result.interruptionsFillFraction = v12;
  result.bedtimeFillFraction = v11;
  result.durationFillFraction = v13;
  result.totalPoints = sleepScore;
  return result;
}

unint64_t sub_269BE2974()
{
  result = qword_28034A880;
  if (!qword_28034A880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A880);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_269BE2A0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_269BE2974();
    v7 = a3(a1, &type metadata for SleepScoreVisualizationModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_269BE2A70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269BE2A90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreVisualizationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepScoreVisualizationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_269BE2C20()
{
  result = qword_28034A890;
  if (!qword_28034A890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A890);
  }

  return result;
}

unint64_t sub_269BE2C78()
{
  result = qword_28034A898;
  if (!qword_28034A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A898);
  }

  return result;
}

unint64_t sub_269BE2CD0()
{
  result = qword_28034A8A0;
  if (!qword_28034A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A8A0);
  }

  return result;
}

uint64_t sub_269BE2D24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x8000000269BFB480 == a2;
  if (v4 || (sub_269BF8BB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000269BFB4A0 == a2 || (sub_269BF8BB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000269BFB4C0 == a2 || (sub_269BF8BB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696F506C61746F74 && a2 == 0xEB0000000073746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_269BF8BB8();

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

void __swiftcall HKSHSleepScoreResultsNotificationBuilder.init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(HKSHSleepScoreResultsNotificationBuilder *__return_ptr retstr, Swift::OpaquePointer_optional daySummaries, Swift::Bool needsIntroduction, Swift::String_optional userFirstName, Swift::Int algorithmVersion)
{
  object = userFirstName.value._object;
  countAndFlagsBits = userFirstName.value._countAndFlagsBits;
  is_nil = daySummaries.is_nil;
  if (!daySummaries.value._rawValue)
  {
    v8 = 0;
    if (userFirstName.value._countAndFlagsBits)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);
  v8 = sub_269BF8888();

  if (!countAndFlagsBits)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_269BF87D8();

LABEL_6:
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDaySummaries:v8 needsIntroduction:is_nil userFirstName:v9 algorithmVersion:object];
}

void HKSHSleepScoreResultsNotificationBuilder.init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for SleepScoreDaySummary(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  if (a5 == 1)
  {
    v19 = 0;
    if (a1)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (a5 == 2)
  {
    v19 = 1;
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_6:
    v48 = v18;
    v20 = a1 >> 62;
    if (a1 >> 62)
    {
      v21 = sub_269BF8AD8();
      v22 = -v21;
      if (!__OFSUB__(0, v21))
      {
LABEL_8:
        v47 = v13;
        if ((v22 + 13) >= 0xE)
        {
          v23 = v21 - 14;
          if (__OFSUB__(v21, 14))
          {
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

          if (v21 < v23)
          {
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (!v20)
          {
LABEL_11:
            v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_20;
          }
        }

        else
        {
          if (v21 < 0)
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v23 = 0;
          if (!v20)
          {
            goto LABEL_11;
          }
        }

        v24 = sub_269BF8AD8();
LABEL_20:
        if (v24 >= v23)
        {
          if ((v23 & 0x8000000000000000) == 0)
          {
            if (v20)
            {
              v28 = sub_269BF8AD8();
            }

            else
            {
              v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v28 >= v21)
            {
              if ((v21 & 0x8000000000000000) == 0)
              {
                v49 = v19;
                if ((a1 & 0xC000000000000001) == 0)
                {

                  goto LABEL_35;
                }

                v46 = v16;
                v29 = a2;
                v30 = v6;
                v31 = a3;
                if (v23 == v21)
                {
                  v32 = a4;

                  goto LABEL_34;
                }

                if (v23 < v21)
                {
                  v32 = a4;
                  sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);

                  v33 = v23;
                  do
                  {
                    v34 = v33 + 1;
                    sub_269BF8A98();
                    v33 = v34;
                  }

                  while (v21 != v34);
LABEL_34:
                  a4 = v32;
                  a3 = v31;
                  v6 = v30;
                  a2 = v29;
                  v16 = v46;
                  if (v20)
                  {

                    v35 = sub_269BF8AE8();
                    v36 = v38;
                    v23 = v39;
                    v37 = v40;

LABEL_37:
                    v51[0] = v35;
                    v51[1] = v36;
                    v51[2] = v23;
                    v51[3] = v37;
                    v51[4] = 13;
                    v41 = sub_269BD9668(v49);
                    sub_269BE57F4(v51, sub_269BDB228);
                    v42 = *(v41 + 16);
                    if (v42)
                    {
                      v43 = v48;
                      sub_269BE37CC(v41 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * (v42 - 1), v48);

                      sub_269BE3830(v43, v16);
                      type metadata accessor for SleepScoreResultsNotificationBuilder(0);
                      a1 = swift_allocObject();
                      sub_269BE3830(v16, a1 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
                      *(a1 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2 & 1;
                      v44 = (a1 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
                      *v44 = a3;
                      v44[1] = a4;
                    }

                    else
                    {

                      a1 = 0;
                    }

                    goto LABEL_40;
                  }

LABEL_35:

                  v35 = a1 & 0xFFFFFFFFFFFFFF8;
                  v36 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
                  v37 = (2 * v21) | 1;
                  goto LABEL_37;
                }

                goto LABEL_51;
              }

              goto LABEL_47;
            }

LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v22 = -v21;
      if (!__OFSUB__(0, v21))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v25 = [objc_opt_self() sharedBehavior];
  if (!v25)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v26 = v25;
  v27 = [v25 features];

  if (v27)
  {
    v19 = [v27 sleepResultsNotificationsOnWatch];

    if (a1)
    {
      goto LABEL_6;
    }

LABEL_15:

LABEL_40:
    *&v6[OBJC_IVAR___HKSHSleepScoreResultsNotificationBuilder_builder] = a1;
    v50.receiver = v6;
    v50.super_class = HKSHSleepScoreResultsNotificationBuilder;
    objc_msgSendSuper2(&v50, sel_init);
    return;
  }

LABEL_53:
  __break(1u);
}

uint64_t SleepScoreResultsNotificationBuilder.__allocating_init(daySummaries:needsIntroduction:userFirstName:algorithmVersion:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v10 = type metadata accessor for SleepScoreDaySummary(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  result = MEMORY[0x28223BE20](v15);
  v19 = &v45 - v17;
  if (a1)
  {
    v20 = *a5;
    v21 = a1 >> 62;
    v48 = v18;
    if (a1 >> 62)
    {
      v43 = &v45 - v17;
      v44 = v20;
      result = sub_269BF8AD8();
      v20 = v44;
      v19 = v43;
      v22 = result;
      v23 = -result;
      if (!__OFSUB__(0, result))
      {
LABEL_4:
        v47 = v19;
        v49 = v20;
        if ((v23 + 13) >= 0xE)
        {
          v24 = v22 - 14;
          if (__OFSUB__(v22, 14))
          {
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (v22 < v24)
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (!v21)
          {
LABEL_7:
            result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_12;
          }
        }

        else
        {
          if (v22 < 0)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v24 = 0;
          if (!v21)
          {
            goto LABEL_7;
          }
        }

        result = sub_269BF8AD8();
LABEL_12:
        if (result >= v24)
        {
          if ((v24 & 0x8000000000000000) == 0)
          {
            if (v21)
            {
              result = sub_269BF8AD8();
            }

            else
            {
              result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (result >= v22)
            {
              if ((v22 & 0x8000000000000000) == 0)
              {
                v46 = v11;
                if ((a1 & 0xC000000000000001) == 0)
                {

                  goto LABEL_27;
                }

                v45 = v14;
                v25 = a2;
                v26 = a3;
                if (v24 == v22)
                {
                  v27 = a4;

                  goto LABEL_26;
                }

                if (v24 < v22)
                {
                  v27 = a4;
                  sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);

                  v28 = v24;
                  do
                  {
                    v29 = v28 + 1;
                    sub_269BF8A98();
                    v28 = v29;
                  }

                  while (v22 != v29);
LABEL_26:
                  a4 = v27;
                  a3 = v26;
                  a2 = v25;
                  v14 = v45;
                  if (v21)
                  {

                    v30 = sub_269BF8AE8();
                    v31 = v33;
                    v24 = v34;
                    v32 = v35;

                    goto LABEL_29;
                  }

LABEL_27:

                  v30 = a1 & 0xFFFFFFFFFFFFFF8;
                  v31 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
                  v32 = (2 * v22) | 1;
LABEL_29:
                  v50[0] = v30;
                  v50[1] = v31;
                  v50[2] = v24;
                  v50[3] = v32;
                  v50[4] = 13;
                  v36 = sub_269BD9668(v49);
                  sub_269BE57F4(v50, sub_269BDB228);
                  v37 = *(v36 + 16);
                  if (v37)
                  {
                    v38 = v48;
                    sub_269BE37CC(v36 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * (v37 - 1), v48);

                    v39 = v38;
                    v40 = v47;
                    sub_269BE3830(v39, v47);
                    sub_269BE3830(v40, v14);
                    v41 = swift_allocObject();
                    sub_269BE3830(v14, v41 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
                    result = v41;
                    *(v41 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2 & 1;
                    v42 = (v41 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
                    *v42 = a3;
                    v42[1] = a4;
                    return result;
                  }

                  goto LABEL_32;
                }

LABEL_44:
                __break(1u);
                return result;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = -v22;
      if (!__OFSUB__(0, v22))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_32:

  return 0;
}

uint64_t sub_269BE37CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreDaySummary(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BE3830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreDaySummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void SleepScoreResultsNotificationBuilder.buildNotification()()
{
  v1 = type metadata accessor for SleepScoreDaySummary(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v49 - v6;
  v8 = v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary;
  v9 = v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary + *(v5 + 24);
  if (*(v9 + 48))
  {
    return;
  }

  v10 = *v9;
  v52 = *(v9 + 8);
  v53 = v10;
  v11 = *(v9 + 16);
  v50 = *(v9 + 24);
  v51 = v11;
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  v14 = [objc_opt_self() sharedBehavior];
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  v16 = [v14 features];

  if (!v16)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v17 = [v16 sleepResultsNotificationsOnWatch];

  if ((v17 & 1) == 0)
  {
    v18 = &v52[v53];
    if (__OFADD__(v53, v52))
    {
      __break(1u);
    }

    else
    {
      v19 = __OFADD__(v18, v51);
      v20 = &v18[v51];
      if (!v19)
      {
        v19 = __OFADD__(v20, v50);
        v21 = &v20[v50];
        if (!v19)
        {
          if (v13 >= v12)
          {
            v22 = v12;
          }

          else
          {
            v22 = v13;
          }

          v23 = &v21[v22];
          if (!__OFADD__(v21, v22))
          {
            swift_getKeyPath();
            sub_269BF180C(v23, &v63);
            if (LOBYTE(v63.sleepDurationPoints) < 4u)
            {
              return;
            }

            goto LABEL_14;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_14:
  sub_269BE37CC(v8, v7);
  v24 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction);
  v25 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName + 8);
  v52 = *(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
  v53 = type metadata accessor for SleepScoreResultsNotification(0);
  v26 = objc_allocWithZone(v53);
  LODWORD(v51) = v24;
  v26[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = v24;
  v27 = *(v1 + 20);
  v28 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v29 = sub_269BF8688();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v50 = v28;
  v31(&v26[v28], &v7[v27], v29);
  v26[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v7[*(v1 + 28)];
  sub_269BE37CC(v7, v4);

  SleepScoreNoteBuilder.init(sleepScoreDaySummary:firstName:)(v4, v52, v25, &v63);
  sleepDurationPoints = v63.sleepDurationPoints;
  deepSleepDurationPoints = v63.deepSleepDurationPoints;
  remSleepDurationPoints = v63.remSleepDurationPoints;
  sleepStartPunctualityPoints = v63.sleepStartPunctualityPoints;
  v70 = v64;
  v36 = v65;
  v68 = v66;
  v69 = v67;
  if (v65 == 1)
  {
    sub_269BE57F4(v7, type metadata accessor for SleepScoreDaySummary);
    (*(v30 + 8))(&v26[v50], v29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v53;
    v52 = v7;
    v55 = v63;
    awakeInterruptionPoints = v63.awakeInterruptionPoints;
    awakeDurationPoints = v63.awakeDurationPoints;
    SleepScoreVisualizationModel.init(sleepScore:)(&v55);
    v40 = v61;
    v41 = v62;
    v42 = &v26[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
    *v42 = v60;
    *(v42 + 2) = v40;
    *(v42 + 3) = v41;
    v55.sleepDurationPoints = sleepDurationPoints;
    v55.deepSleepDurationPoints = deepSleepDurationPoints;
    v55.remSleepDurationPoints = remSleepDurationPoints;
    v55.sleepStartPunctualityPoints = sleepStartPunctualityPoints;
    v55.awakeInterruptionPoints = awakeInterruptionPoints;
    v55.awakeDurationPoints = awakeDurationPoints;
    v56 = v70;
    v57 = v36;
    v58 = v68;
    v59 = v69;
    if (v51)
    {
      v43 = SleepScoreNoteBuilder.localizedIntroductionBodyParagraphs.getter();
      sub_269BE5854(&v63, &qword_28034A8D0, &type metadata for SleepScoreNoteBuilder);
      *&v60 = v43;
      sub_269BE7164(0, &qword_28034A8E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      sub_269BE58C4();
      v44 = sub_269BF86E8();
      v46 = v45;
    }

    else
    {
      v44 = SleepScoreNoteBuilder.localizedDescription.getter();
      v46 = v47;
      sub_269BE5854(&v63, &qword_28034A8D0, &type metadata for SleepScoreNoteBuilder);
    }

    v48 = &v26[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
    *v48 = v44;
    v48[1] = v46;
    v54.receiver = v26;
    v54.super_class = v37;
    objc_msgSendSuper2(&v54, sel_init);
    sub_269BE57F4(v52, type metadata accessor for SleepScoreDaySummary);
  }
}

id sub_269BE3F98(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_269BF87D8();

  return v3;
}

id sub_269BE4078(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16) && (v4 = sub_269BE5A70(0xD000000000000014, 0x8000000269BFB690), (v5 & 1) != 0) && (v21 = *(*(a1 + 56) + 8 * v4), sub_269BE5A00(), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = sub_269BE5050(a1);

    v7 = _s11SleepHealth0A24ScoreResultsNotificationC4body8userInfoACSgSS_SDys11AnyHashableVypGtcfC_0(v19, v20, v6);
    if (v7)
    {
      v8 = v7;
      v9 = SleepScoreResultsNotification.localizedTitle.getter();
      v10 = &v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_title];
      *v10 = v9;
      v10[1] = v11;
      v12 = *&v8[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8];
      v13 = &v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_body];
      *v13 = *&v8[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
      v13[1] = v12;
      v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_isIntroduction] = v8[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction];

      v16 = SleepScoreResultsNotification.notificationUserInfo.getter(v14, v15);

      *&v2[OBJC_IVAR___HKSHSleepScoreResultsNotification_notificationUserInfo] = v16;
      v18.receiver = v2;
      v18.super_class = HKSHSleepScoreResultsNotification;
      return objc_msgSendSuper2(&v18, sel_init);
    }
  }

  else
  {
  }

  type metadata accessor for HKSHSleepScoreResultsNotification(v7);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SleepScoreResultsNotification.localizedTitle.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction) == 1)
  {
    v1 = objc_opt_self();
    v2 = sub_269BF87D8();
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 24);
    swift_getKeyPath();
    sub_269BF180C(v3, &v7);
    v1 = objc_opt_self();
    v2 = sub_269BF87D8();
  }

  v4 = [v1 localizedUserNotificationStringForKey:v2 arguments:0];

  v5 = sub_269BF87E8();
  return v5;
}

unint64_t SleepScoreResultsNotification.notificationUserInfo.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_269BE5940(0, a2);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269BFA440;
  strcpy((inited + 32), "targetDayIndex");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000269BFB640;
  if (*(v2 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000269BFB480;
  v6 = v3 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 104) = 0xD000000000000013;
  *(inited + 112) = 0x8000000269BFB4A0;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x8000000269BFB4C0;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 152) = 0x696F506C61746F74;
  *(inited + 160) = 0xEB0000000073746ELL;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 176) = sub_269BF87E8();
  *(inited + 184) = v7;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = sub_269BE6254(inited);
  swift_setDeallocating();
  sub_269BE5998(0, v9);
  swift_arrayDestroy();
  return v8;
}

id sub_269BE4654()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t SleepScoreResultsNotificationBuilder.__allocating_init(sleepScoreDaySummary:needsIntroduction:userFirstName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_269BE3830(a1, v8 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
  *(v8 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2;
  v9 = (v8 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
  *v9 = a3;
  v9[1] = a4;
  return v8;
}

uint64_t SleepScoreResultsNotificationBuilder.init(sleepScoreDaySummary:needsIntroduction:userFirstName:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_269BE3830(a1, v4 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary);
  *(v4 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_needsIntroduction) = a2;
  v8 = (v4 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_userFirstName);
  *v8 = a3;
  v8[1] = a4;
  return v4;
}

uint64_t SleepScoreResultsNotificationBuilder.deinit()
{
  sub_269BE57F4(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary, type metadata accessor for SleepScoreDaySummary);

  return v0;
}

uint64_t SleepScoreResultsNotificationBuilder.__deallocating_deinit()
{
  sub_269BE57F4(v0 + OBJC_IVAR____TtC11SleepHealth36SleepScoreResultsNotificationBuilder_sleepScoreDaySummary, type metadata accessor for SleepScoreDaySummary);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t SleepScoreResultsNotification.identifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = HKSHSleepScoreResultsNotificationEventIdentifier();
  v3 = sub_269BF87E8();

  return v3;
}

uint64_t SleepScoreResultsNotification.localizedDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription);

  return v1;
}

uint64_t SleepScoreResultsNotification.targetDayIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v4 = sub_269BF8688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double SleepScoreResultsNotification.visualizationModel.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 16);
  v3 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 24);
  *a1 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel);
  *(a1 + 16) = result;
  *(a1 + 24) = v3;
  return result;
}

uint64_t SleepScoreResultsNotification.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_269BE634C(a1, v11);
  if (!v12)
  {
    sub_269BE5854(v11, &qword_28034A908, MEMORY[0x277D84F70] + 8);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v8 = 0;
    return v8 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription) == *&v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription] && *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8) == *&v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription + 8];
  if (!v3 && (sub_269BF8BB8() & 1) == 0 || *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction) != v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] || (sub_269BF8688(), sub_269BE63D8(qword_280B61430, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]), (sub_269BF8718() & 1) == 0) || (v4 = v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel, v5 = &v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel], *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel) != *&v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel]) || *(v4 + 8) != v5[1] || *(v4 + 16) != v5[2] || *(v4 + 24) != *(v5 + 3))
  {

    goto LABEL_17;
  }

  v6 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion);
  v7 = v10[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion];

  v8 = v6 ^ v7 ^ 1;
  return v8 & 1;
}

void *SleepScoreResultsNotification.scoreLevel.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel + 24);
  swift_getKeyPath();
  result = sub_269BF180C(v3, &v5);
  *a1 = v5;
  return result;
}

id SleepScoreResultsNotification.__allocating_init(localizedDescription:isIntroduction:targetDayIndex:visualizationModel:algorithmVersion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, char *a6)
{
  v13 = objc_allocWithZone(v6);
  v24 = *a5;
  v14 = *(a5 + 2);
  v15 = *(a5 + 3);
  v16 = *a6;
  v17 = &v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
  *v17 = a1;
  v17[1] = a2;
  v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = a3;
  v18 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v19 = sub_269BF8688();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v13[v18], a4, v19);
  v21 = &v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
  *v21 = v24;
  *(v21 + 2) = v14;
  *(v21 + 3) = v15;
  v13[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v16;
  v25.receiver = v13;
  v25.super_class = v6;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  (*(v20 + 8))(a4, v19);
  return v22;
}

id SleepScoreResultsNotification.init(localizedDescription:isIntroduction:targetDayIndex:visualizationModel:algorithmVersion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __int128 *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v24 = *a5;
  v14 = *(a5 + 2);
  v15 = *(a5 + 3);
  v16 = *a6;
  v17 = &v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
  *v17 = a1;
  v17[1] = a2;
  v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = a3;
  v18 = OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex;
  v19 = sub_269BF8688();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v6[v18], a4, v19);
  v21 = &v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
  *v21 = v24;
  *(v21 + 2) = v14;
  *(v21 + 3) = v15;
  v6[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v16;
  v25.receiver = v6;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  (*(v20 + 8))(a4, v19);
  return v22;
}

uint64_t sub_269BE5050(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_269BE6E08();
    v2 = sub_269BF8B18();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_269BE5A00();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_269BE6E6C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_269BE6E6C(v29, v30);
    result = sub_269BF89F8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_269BE6E6C(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t SleepScoreResultsNotification.userInfo.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_269BE5940(0, a2);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269BFA450;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x8000000269BFB690;
  *(inited + 48) = sub_269BF87D8();
  strcpy((inited + 56), "isIntroduction");
  *(inited + 71) = -18;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  strcpy((inited + 80), "targetDayIndex");
  *(inited + 95) = -18;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x8000000269BFB640;
  if (*(v2 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 128) = 0xD000000000000014;
  *(inited + 136) = 0x8000000269BFB480;
  v6 = v3 + OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000269BFB4A0;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 176) = 0xD000000000000019;
  *(inited + 184) = 0x8000000269BFB4C0;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(inited + 200) = 0x696F506C61746F74;
  *(inited + 208) = 0xEB0000000073746ELL;
  *(inited + 216) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v7 = sub_269BE6254(inited);
  swift_setDeallocating();
  sub_269BE5998(0, v8);
  swift_arrayDestroy();
  return v7;
}

id SleepScoreResultsNotification.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepScoreResultsNotification.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269BE57BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269BE57F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269BE5854(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_269BE7164(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_269BE58C4()
{
  result = qword_28034A8E8;
  if (!qword_28034A8E8)
  {
    sub_269BE7164(255, &qword_28034A8E0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A8E8);
  }

  return result;
}

void sub_269BE5940(uint64_t a1, uint64_t a2)
{
  if (!qword_28034A8F0)
  {
    sub_269BE5998(255, a2);
    v2 = sub_269BF8B98();
    if (!v3)
    {
      atomic_store(v2, &qword_28034A8F0);
    }
  }
}

void sub_269BE5998(uint64_t a1, uint64_t a2)
{
  if (!qword_28034A8F8)
  {
    sub_269BE5A00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A8F8);
    }
  }
}

unint64_t sub_269BE5A00()
{
  result = qword_28034A900;
  if (!qword_28034A900)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034A900);
  }

  return result;
}

unint64_t sub_269BE5A70(uint64_t a1, uint64_t a2)
{
  sub_269BF8C18();
  sub_269BF8818();
  v4 = sub_269BF8C58();

  return sub_269BE5C84(a1, a2, v4);
}

unint64_t sub_269BE5AE8(uint64_t a1)
{
  v1 = a1;
  sub_269BF8C18();
  if ((v1 >> 14) > 1u)
  {
    if (v1 >> 14 == 2)
    {
      MEMORY[0x26D64C450](2);
      v2 = v1;
    }

    else if (v1 == 49152)
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }
  }

  else if (v1 >> 14)
  {
    MEMORY[0x26D64C450](1);
    MEMORY[0x26D64C450](v1);
    v2 = (v1 >> 8) & 0x3F;
  }

  else
  {
    MEMORY[0x26D64C450](0);
    v2 = v1;
  }

  MEMORY[0x26D64C450](v2);
  v3 = sub_269BF8C58();

  return sub_269BE5D3C(v1, v3);
}

unint64_t sub_269BE5BD4(uint64_t a1)
{
  v1 = a1;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  v2 = sub_269BF8C58();

  return sub_269BE5E1C(v1, v2);
}

unint64_t sub_269BE5C40(uint64_t a1)
{
  v2 = sub_269BF89F8();

  return sub_269BE5E8C(a1, v2);
}

unint64_t sub_269BE5C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_269BF8BB8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_269BE5D3C(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xC000;
    do
    {
      v8 = *(*(v2 + 48) + 2 * result);
      v9 = v8 >> 14;
      if (v8 >> 14 > 1)
      {
        if (v9 == 2)
        {
          if (v7 != 0x8000)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }

        if (v8 == 49152)
        {
          if (a1 == 49152)
          {
            return result;
          }
        }

        else if (a1 == 49153)
        {
          return result;
        }
      }

      else
      {
        if (!v9)
        {
          if (a1 >> 14)
          {
            goto LABEL_4;
          }

LABEL_11:
          if (v8 == a1)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v7 == 0x4000 && ((v8 ^ a1) & 0x3FFF) == 0)
        {
          return result;
        }
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_269BE5E1C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_269BE5E8C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_269BE6E7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26D64C230](v9, a1);
      sub_269BE6ED8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_269BE5F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269BD80DC(0);
    v3 = sub_269BF8B18();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_269BE5A70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_269BE604C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_269BE6F2C(0);
  v3 = sub_269BF8B18();
  LOWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_269BE5AE8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 2 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 4);
    v15 = *v10;

    v8 = sub_269BE5AE8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_269BE6150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  sub_269BE7010(0);
  v3 = sub_269BF8B18();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_269BE5BD4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_269BE5BD4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_269BE6254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269BE70FC(0);
    v3 = sub_269BF8B18();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_269BE5A70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_269BE634C(uint64_t a1, uint64_t a2)
{
  sub_269BE7164(0, &qword_28034A908, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BE63D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id _s11SleepHealth0A24ScoreResultsNotificationC4body8userInfoACSgSS_SDys11AnyHashableVypGtcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269BF8688();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v50, "isIntroduction");
  HIBYTE(v50[1]) = -18;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v10 = sub_269BE5C40(v51), (v11 & 1) == 0))
  {
    sub_269BE6ED8(v51);
    goto LABEL_6;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v10, v52);
  sub_269BE6ED8(v51);
  sub_269BDB1E0(0, &qword_28034AA38, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v12 = v50[0];
  v13 = [v50[0] BOOLValue];

LABEL_7:
  strcpy(v50, "targetDayIndex");
  HIBYTE(v50[1]) = -18;
  sub_269BF8A18();
  if (!*(a3 + 16))
  {
    goto LABEL_33;
  }

  v14 = sub_269BE5C40(v51);
  if ((v15 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v14, v52);
  sub_269BE6ED8(v51);
  sub_269BDB1E0(0, &qword_28034AA38, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v16 = v50[0];
  strcpy(v50, "totalPoints");
  HIDWORD(v50[1]) = -352321536;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v17 = sub_269BE5C40(v51), (v18 & 1) == 0))
  {

LABEL_34:

LABEL_35:
    sub_269BE6ED8(v51);
    return 0;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v17, v52);
  sub_269BE6ED8(v51);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_31:

    return 0;
  }

  v48 = v50[0];
  v50[0] = 0xD000000000000014;
  v50[1] = 0x8000000269BFB480;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v19 = sub_269BE5C40(v51), (v20 & 1) == 0))
  {

LABEL_33:

    goto LABEL_34;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v19, v52);
  sub_269BE6ED8(v51);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_38:

    goto LABEL_31;
  }

  v47 = v50[0];
  v50[0] = 0xD000000000000013;
  v50[1] = 0x8000000269BFB4A0;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v21 = sub_269BE5C40(v51), (v22 & 1) == 0))
  {

LABEL_40:

    goto LABEL_35;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v21, v52);
  sub_269BE6ED8(v51);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_42:

    goto LABEL_38;
  }

  v46 = v50[0];
  v50[0] = 0xD000000000000019;
  v50[1] = 0x8000000269BFB4C0;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v23 = sub_269BE5C40(v51), (v24 & 1) == 0))
  {

LABEL_44:

    goto LABEL_40;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v23, v52);
  sub_269BE6ED8(v51);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_46:

    goto LABEL_42;
  }

  v45 = v50[0];
  v50[0] = 0xD000000000000010;
  v50[1] = 0x8000000269BFB640;
  sub_269BF8A18();
  if (!*(a3 + 16) || (v25 = sub_269BE5C40(v51), (v26 & 1) == 0))
  {

    goto LABEL_44;
  }

  sub_269BD7FE4(*(a3 + 56) + 32 * v25, v52);
  sub_269BE6ED8(v51);

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_52:

    goto LABEL_46;
  }

  v44 = v50[0];
  v27 = [v50[0] integerValue];
  if (v27 == 1)
  {
    v43 = 0;
    goto LABEL_50;
  }

  if (v27 != 2)
  {

    goto LABEL_52;
  }

  v43 = 1;
LABEL_50:
  [v16 integerValue];
  sub_269BF8638();
  [v47 doubleValue];
  v30 = v29;
  [v46 doubleValue];
  v32 = v31;
  v33 = v45;
  [v45 doubleValue];
  v35 = v34;
  v42 = [v48 integerValue];
  v36 = type metadata accessor for SleepScoreResultsNotification(0);
  v37 = objc_allocWithZone(v36);
  v38 = &v37[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_localizedDescription];
  *v38 = a1;
  v38[1] = a2;
  v37[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_isIntroduction] = v13;
  (*(v7 + 16))(&v37[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_targetDayIndex], v9, v6);
  v39 = &v37[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_visualizationModel];
  *v39 = v30;
  v39[1] = v32;
  v39[2] = v35;
  v39[3] = v42;
  v37[OBJC_IVAR____TtC11SleepHealth29SleepScoreResultsNotification_algorithmVersion] = v43;
  v49.receiver = v37;
  v49.super_class = v36;
  v40 = objc_msgSendSuper2(&v49, sel_init);

  (*(v7 + 8))(v9, v6);
  return v40;
}

uint64_t sub_269BE6C54(uint64_t a1)
{
  result = type metadata accessor for SleepScoreDaySummary(319);
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

uint64_t sub_269BE6D2C(uint64_t a1)
{
  result = sub_269BF8688();
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

void sub_269BE6E08()
{
  if (!qword_28034AA30)
  {
    v0 = sub_269BF8B28();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AA30);
    }
  }
}

_OWORD *sub_269BE6E6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_269BE6F2C(uint64_t a1)
{
  if (!qword_28034AA40)
  {
    sub_269BE7164(255, &qword_28034AA48, &type metadata for SleepScoreNote.Customization, MEMORY[0x277D83940]);
    sub_269BE6FBC();
    v1 = sub_269BF8B28();
    if (!v2)
    {
      atomic_store(v1, &qword_28034AA40);
    }
  }
}

unint64_t sub_269BE6FBC()
{
  result = qword_28034AA50;
  if (!qword_28034AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AA50);
  }

  return result;
}

void sub_269BE7010(uint64_t a1)
{
  if (!qword_28034AA58)
  {
    sub_269BE7164(255, &qword_28034AA60, &type metadata for SleepScoreNote.Contributor, MEMORY[0x277D83940]);
    sub_269BE70A8();
    v1 = sub_269BF8B28();
    if (!v2)
    {
      atomic_store(v1, &qword_28034AA58);
    }
  }
}

unint64_t sub_269BE70A8()
{
  result = qword_28034AA68;
  if (!qword_28034AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AA68);
  }

  return result;
}

void sub_269BE70FC(uint64_t a1)
{
  if (!qword_28034AA70)
  {
    sub_269BE5A00();
    v1 = sub_269BF8B28();
    if (!v2)
    {
      atomic_store(v1, &qword_28034AA70);
    }
  }
}

void sub_269BE7164(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269BE71F4(uint64_t a1, uint64_t a2)
{
  sub_269BD8758(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SleepScoreDaySummaryCollection.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreDaySummaryCollection(0) + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SleepScoreDaySummaryCollection(uint64_t a1)
{
  result = qword_28034AA90;
  if (!qword_28034AA90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreDaySummaryCollection.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreDaySummaryCollection(0) + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreDaySummaryCollection.daySummaries.getter()
{
  type metadata accessor for SleepScoreDaySummaryCollection(0);
}

uint64_t SleepScoreDaySummaryCollection.daySummaries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreDaySummaryCollection(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SleepScoreDaySummaryCollection.init(morningIndexRange:gregorianCalendar:daySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_269BE9154(a1, a4, sub_269BD8758);
  v7 = type metadata accessor for SleepScoreDaySummaryCollection(0);
  v8 = *(v7 + 20);
  v9 = sub_269BF8508();
  result = (*(*(v9 - 8) + 32))(a4 + v8, a2, v9);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t static SleepScoreDaySummaryCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_269BF8688();
  sub_269BE910C(qword_280B61430, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  sub_269BD8758(0);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SleepScoreDaySummaryCollection(0);
  if ((MEMORY[0x26D64BD10](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_269BE7664(v6, v7);
}

uint64_t sub_269BE7664(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v91 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v77[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269BE9040(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v77[-v8];
  sub_269BE921C(0);
  v93 = v9;
  MEMORY[0x28223BE20](v9);
  v94 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_269BF8458();
  v11 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v89 = &v77[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v15 = &v77[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269BE92B0(0);
  v95 = v16;
  MEMORY[0x28223BE20](v16);
  v97 = &v77[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for SleepScoreDaySummary(0);
  v18 = *(v98 - 1);
  v19 = MEMORY[0x28223BE20](v98);
  v21 = &v77[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v23 = &v77[-v22];
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_57:
    v74 = 0;
    return v74 & 1;
  }

  if (v24 && a1 != a2)
  {
    v25 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v26 = a1 + v25;
    v27 = a2 + v25;
    v28 = sub_269BE9314();
    v86 = v23;
    v87 = v28;
    v90 = (v11 + 48);
    v80 = (v11 + 32);
    v81 = (v11 + 8);
    v83 = *(v18 + 72);
    v84 = (v91 + 48);
    v29 = v26;
    v85 = v4;
    v82 = v6;
    while (1)
    {
      sub_269BE90A4(v29, v23, type metadata accessor for SleepScoreDaySummary);
      v91 = v29;
      v88 = v27;
      sub_269BE90A4(v27, v21, type metadata accessor for SleepScoreDaySummary);
      if ((sub_269BF8988() & 1) == 0)
      {
        break;
      }

      v30 = v98[5];
      v31 = &v23[v30];
      v32 = &v21[v30];
      sub_269BF8688();
      sub_269BE910C(qword_280B61430, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
      if ((sub_269BF8718() & 1) == 0)
      {
        break;
      }

      v33 = type metadata accessor for SleepScoreMetricsDaySummary(0);
      if ((MEMORY[0x26D64BD10](&v31[v33[5]], &v32[v33[5]]) & 1) == 0)
      {
        break;
      }

      v34 = v33[6];
      v35 = &v31[v34];
      v36 = v31[v34 + 8];
      v37 = &v32[v34];
      v38 = v32[v34 + 8];
      if (v36)
      {
        if (!v38)
        {
          break;
        }
      }

      else
      {
        if (*v35 != *v37)
        {
          LOBYTE(v38) = 1;
        }

        if (v38)
        {
          break;
        }
      }

      v39 = v33[7];
      v40 = &v31[v39];
      v41 = v31[v39 + 8];
      v42 = &v32[v39];
      v43 = v32[v39 + 8];
      if (v41)
      {
        if (!v43)
        {
          break;
        }
      }

      else
      {
        if (*v40 != *v42)
        {
          LOBYTE(v43) = 1;
        }

        if (v43)
        {
          break;
        }
      }

      v44 = v33[8];
      v45 = *(v95 + 48);
      v46 = v97;
      sub_269BE90A4(&v31[v44], v97, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      sub_269BE90A4(&v32[v44], &v46[v45], type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      v47 = *v90;
      v48 = v96;
      v49 = (*v90)(v46, 2, v96);
      if (v49)
      {
        if (v49 == 1)
        {
          v50 = v97;
          if (v47(&v97[v45], 2, v48) != 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v50 = v97;
          if (v47(&v97[v45], 2, v48) != 2)
          {
            goto LABEL_54;
          }
        }
      }

      else
      {
        v50 = v97;
        sub_269BE90A4(v97, v15, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
        if (v47(&v50[v45], 2, v48))
        {
          (*v81)(v15, v48);
LABEL_54:
          v75 = sub_269BE92B0;
          goto LABEL_55;
        }

        v51 = *v80;
        v79 = v21;
        v52 = v15;
        v53 = v89;
        v51(v89, &v50[v45], v48);
        v78 = sub_269BF8438();
        v54 = *v81;
        v55 = v53;
        v15 = v52;
        v21 = v79;
        (*v81)(v55, v48);
        v54(v15, v48);
        if ((v78 & 1) == 0)
        {
          v75 = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline;
LABEL_55:
          sub_269BE91BC(v50, v75);
          v23 = v86;
          break;
        }
      }

      sub_269BE91BC(v50, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      v56 = v33[9];
      v57 = *(v93 + 48);
      v58 = &v31[v56];
      v59 = v94;
      sub_269BD31C8(v58, v94);
      sub_269BD31C8(&v32[v56], &v59[v57]);
      v60 = v85;
      v61 = *v84;
      if ((*v84)(v59, 1, v85) == 1)
      {
        v62 = v61(&v59[v57], 1, v60);
        v23 = v86;
        if (v62 != 1)
        {
          goto LABEL_52;
        }

        sub_269BE9360(v59);
      }

      else
      {
        v63 = v92;
        sub_269BD31C8(v59, v92);
        v64 = v61(&v59[v57], 1, v60);
        v65 = v82;
        v23 = v86;
        if (v64 == 1)
        {
          sub_269BE91BC(v63, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
LABEL_52:
          sub_269BE91BC(v59, sub_269BE921C);
          break;
        }

        sub_269BE9154(&v59[v57], v82, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        if (*v63 != *v65 || *(v63 + 1) != *(v65 + 8) || *(v63 + 2) != *(v65 + 16) || (sub_269BF8438() & 1) == 0 || *&v63[v60[8]] != *(v65 + v60[8]) || *&v63[v60[9]] != *(v65 + v60[9]))
        {
          sub_269BE91BC(v65, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
          sub_269BE91BC(v63, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
          sub_269BE9360(v59);
          break;
        }

        v66 = v60[10];
        v67 = *&v63[v66];
        v68 = *(v65 + v66);
        sub_269BE91BC(v65, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        sub_269BE91BC(v63, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        sub_269BE9360(v59);
        if (v67 != v68)
        {
          break;
        }
      }

      v69 = v98[6];
      v70 = &v23[v69];
      v71 = v23[v69 + 48];
      v72 = &v21[v69];
      if (v71)
      {
        if ((v72[3].i8[0] & 1) == 0)
        {
          break;
        }
      }

      else if ((v72[3].i8[0] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*v70, *v72), vceqq_s64(v70[1], v72[1])))) & 1) == 0 || v70[2].i64[0] != v72[2].i64[0] || v70[2].i64[1] != v72[2].i64[1])
      {
        break;
      }

      v73 = v23[v98[7]] ^ v21[v98[7]];
      sub_269BE91BC(v21, type metadata accessor for SleepScoreDaySummary);
      sub_269BE91BC(v23, type metadata accessor for SleepScoreDaySummary);
      if ((v73 & 1) == 0)
      {
        v27 = v88 + v83;
        v29 = v91 + v83;
        if (--v24)
        {
          continue;
        }
      }

      v74 = v73 ^ 1;
      return v74 & 1;
    }

    sub_269BE91BC(v21, type metadata accessor for SleepScoreDaySummary);
    sub_269BE91BC(v23, type metadata accessor for SleepScoreDaySummary);
    goto LABEL_57;
  }

  v74 = 1;
  return v74 & 1;
}

uint64_t SleepScoreDaySummaryCollection.hash(into:)(uint64_t a1)
{
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  sub_269BD8758(0);
  sub_269BF86B8();
  v3 = type metadata accessor for SleepScoreDaySummaryCollection(0);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  v4 = *(v1 + *(v3 + 24));

  return sub_269BE8748(a1, v4);
}

uint64_t SleepScoreDaySummaryCollection.hashValue.getter()
{
  sub_269BF8C18();
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  sub_269BD8758(0);
  sub_269BF86B8();
  v1 = type metadata accessor for SleepScoreDaySummaryCollection(0);
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  sub_269BE8748(v3, *(v0 + *(v1 + 24)));
  return sub_269BF8C58();
}

uint64_t sub_269BE82D4(uint64_t a1)
{
  sub_269BF8C18();
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  sub_269BD8758(0);
  sub_269BF86B8();
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  sub_269BE8748(v4, *(v1 + *(a1 + 24)));
  return sub_269BF8C58();
}

uint64_t sub_269BE8400(uint64_t a1, uint64_t a2)
{
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  sub_269BD8758(0);
  sub_269BF86B8();
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  v5 = *(v2 + *(a2 + 24));

  return sub_269BE8748(a1, v5);
}

uint64_t sub_269BE8520(uint64_t a1, uint64_t a2)
{
  sub_269BF8C18();
  sub_269BF8688();
  sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  sub_269BD8758(0);
  sub_269BF86B8();
  sub_269BF8508();
  sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  sub_269BE8748(v5, *(v2 + *(a2 + 24)));
  return sub_269BF8C58();
}

uint64_t sub_269BE8648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269BF8688();
  sub_269BE910C(qword_280B61430, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C0]);
  if ((sub_269BF8718() & 1) == 0)
  {
    return 0;
  }

  sub_269BD8758(0);
  if ((sub_269BF8718() & 1) == 0 || (MEMORY[0x26D64BD10](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_269BE7664(v7, v8);
}

uint64_t sub_269BE8748(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v74 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BE9040(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_269BF8458();
  v73 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SleepScoreDaySummary(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a2;
  v17 = *(a2 + 16);
  result = MEMORY[0x26D64C450](v17);
  if (v17)
  {
    v19 = &v16[v13[5]];
    v20 = type metadata accessor for SleepScoreMetricsDaySummary(0);
    v21 = v20[5];
    v71 = &v19[v20[6]];
    v72 = v21;
    v22 = v20[8];
    v69 = &v19[v20[7]];
    v70 = v22;
    v23 = v20[9];
    v24 = v13[6];
    v67 = v13[7];
    v68 = v23;
    v25 = v19;
    v66 = &v16[v24];
    result = v65 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v65 = (v73 + 48);
    v56 = (v73 + 32);
    v55 = (v73 + 8);
    v26 = *(v14 + 72);
    v63 = (v74 + 48);
    v64 = v26;
    v58 = v7;
    do
    {
      v73 = result;
      sub_269BE90A4(result, v16, type metadata accessor for SleepScoreDaySummary);
      sub_269BF8998();
      sub_269BF8688();
      sub_269BE910C(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
      sub_269BF86B8();
      sub_269BF8508();
      sub_269BE910C(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
      sub_269BF86B8();
      v29 = v71[8];
      v74 = v17;
      if (v29 == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v30 = *v71;
        sub_269BF8C38();
        if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        MEMORY[0x26D64C470](v31);
      }

      if (v69[8] == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v32 = *v69;
        sub_269BF8C38();
        if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = 0;
        }

        MEMORY[0x26D64C470](v33);
      }

      sub_269BE90A4(&v25[v70], v12, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
      v34 = (*v65)(v12, 2, v8);
      if (v34)
      {
        MEMORY[0x26D64C450](v34 != 1);
      }

      else
      {
        v35 = v57;
        (*v56)(v57, v12, v8);
        MEMORY[0x26D64C450](2);
        sub_269BE910C(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_269BF86B8();
        (*v55)(v35, v8);
      }

      sub_269BD31C8(&v25[v68], v7);
      if ((*v63)(v7, 1, v3) == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v36 = v59;
        sub_269BE9154(v7, v59, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        sub_269BF8C38();
        v37 = *v36;
        if (*v36 == 0.0)
        {
          v37 = 0.0;
        }

        MEMORY[0x26D64C470](*&v37);
        MEMORY[0x26D64C450](*(v36 + 8));
        v38 = *(v36 + 16);
        if (v38 == 0.0)
        {
          v38 = 0.0;
        }

        MEMORY[0x26D64C470](*&v38);
        sub_269BE910C(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_269BF86B8();
        v39 = *(v36 + v3[8]);
        if (v39 == 0.0)
        {
          v39 = 0.0;
        }

        MEMORY[0x26D64C470](*&v39);
        v40 = *(v36 + v3[9]);
        if (v40 == 0.0)
        {
          v40 = 0.0;
        }

        MEMORY[0x26D64C470](*&v40);
        v41 = *(v36 + v3[10]);
        if (v41 == 0.0)
        {
          v41 = 0.0;
        }

        MEMORY[0x26D64C470](*&v41);
        sub_269BE91BC(v36, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
      }

      if (v66[48] == 1)
      {
        sub_269BF8C38();
      }

      else
      {
        v42 = *(v66 + 5);
        v61 = *(v66 + 4);
        v62 = v42;
        v60 = *(v66 + 3);
        v43 = v16;
        v44 = v3;
        v45 = v25;
        v46 = v12;
        v48 = *(v66 + 1);
        v47 = *(v66 + 2);
        v49 = v8;
        v50 = *v66;
        sub_269BF8C38();
        v51 = v50;
        v8 = v49;
        MEMORY[0x26D64C450](v51);
        v52 = v48;
        v12 = v46;
        v25 = v45;
        MEMORY[0x26D64C450](v52);
        v53 = v47;
        v3 = v44;
        v16 = v43;
        MEMORY[0x26D64C450](v53);
        MEMORY[0x26D64C450](v60);
        v7 = v58;
        MEMORY[0x26D64C450](v61);
        MEMORY[0x26D64C450](v62);
      }

      v27 = v74;
      if (v16[v67])
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      MEMORY[0x26D64C450](v28);
      sub_269BE91BC(v16, type metadata accessor for SleepScoreDaySummary);
      result = v73 + v64;
      v17 = v27 - 1;
    }

    while (v17);
  }

  return result;
}

void sub_269BE8F74(uint64_t a1)
{
  sub_269BD8758(319);
  if (v1 <= 0x3F)
  {
    sub_269BF8508();
    if (v2 <= 0x3F)
    {
      sub_269BE9040(319, &qword_28034AAA0, type metadata accessor for SleepScoreDaySummary, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269BE9040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269BE90A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BE910C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269BE9154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BE91BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269BE921C(uint64_t a1)
{
  if (!qword_28034AAB0)
  {
    sub_269BE9040(255, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034AAB0);
    }
  }
}

void sub_269BE92B0(uint64_t a1)
{
  if (!qword_28034AAB8)
  {
    type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034AAB8);
    }
  }
}

unint64_t sub_269BE9314()
{
  result = qword_28034AAC0;
  if (!qword_28034AAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034AAC0);
  }

  return result;
}

uint64_t sub_269BE9360(uint64_t a1)
{
  sub_269BE9040(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double SleepScoreDaySummary.init(sleepDaySummary:sleepScoreMetrics:algorithmVersion:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  *a4 = a1;
  v12 = type metadata accessor for SleepScoreDaySummary(0);
  sub_269BE9768(a2, a4 + v12[5], type metadata accessor for SleepScoreMetricsDaySummary);
  sub_269BE9768(a2, v10, type metadata accessor for SleepScoreMetricsDaySummary);
  sub_269BD246C(v10, v17);
  sub_269BD3290(a2, type metadata accessor for SleepScoreMetricsDaySummary);
  v13 = v19;
  v14 = a4 + v12[6];
  v15 = v17[1];
  *v14 = v17[0];
  *(v14 + 1) = v15;
  result = *&v18;
  *(v14 + 2) = v18;
  v14[48] = v13;
  *(a4 + v12[7]) = v11;
  return result;
}

uint64_t type metadata accessor for SleepScoreDaySummary(uint64_t a1)
{
  result = qword_280B61778;
  if (!qword_280B61778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreDaySummary(0) + 20);
  v4 = sub_269BF8688();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreDaySummary.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary(0) + 20);
  v4 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 20);
  v5 = sub_269BF8508();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t SleepScoreDaySummary.usualSleepStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary(0) + 20);
  v4 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  return sub_269BE9768(v3 + *(v4 + 32), a1, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
}

uint64_t SleepScoreDaySummary.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary(0) + 20);
  v4 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  return sub_269BE9768(v3 + *(v4 + 36), a1, sub_269BD3170);
}

uint64_t sub_269BE9768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 SleepScoreDaySummary.score.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepScoreDaySummary(0) + 24);
  v4 = *(v3 + 48);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t SleepScoreDaySummary.algorithmVersion.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SleepScoreDaySummary(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t SleepScoreDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter()
{
  sub_269BD3170(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269BF8458();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - v9;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0 + *(type metadata accessor for SleepScoreDaySummary(0) + 20);
  v15 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BE9768(v14 + *(v15 + 32), v13, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  if ((*(v5 + 48))(v13, 2, v4))
  {
    return 0;
  }

  (*(v5 + 32))(v10, v13, v4);
  sub_269BE9768(v14 + *(v15 + 36), v3, sub_269BD3170);
  v16 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  if ((*(*(v16 - 8) + 48))(v3, 1, v16) == 1)
  {
    (*(v5 + 8))(v10, v4);
    sub_269BD3290(v3, sub_269BD3170);
    return 0;
  }

  (*(v5 + 16))(v8, &v3[*(v16 + 28)], v4);
  sub_269BD3290(v3, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  sub_269BF8418();
  v19 = v18;
  v20 = *(v5 + 8);
  v20(v8, v4);
  v20(v10, v4);
  return v19;
}

uint64_t SleepScoreDaySummary.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD3170(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_269BF8458();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8998();
  v42 = type metadata accessor for SleepScoreDaySummary(0);
  v43 = v1;
  v15 = v1 + *(v42 + 20);
  sub_269BF8688();
  sub_269BEA2D0(&qword_28034AA78, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B0]);
  sub_269BF86B8();
  v16 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BF8508();
  sub_269BEA2D0(&qword_28034AA80, MEMORY[0x277CC99E8], MEMORY[0x277CC99F8]);
  sub_269BF86B8();
  v17 = (v15 + v16[6]);
  if (*(v17 + 8) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v18 = *v17;
    sub_269BF8C38();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x26D64C470](v19);
  }

  v20 = (v15 + v16[7]);
  if (*(v20 + 8) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v21 = *v20;
    sub_269BF8C38();
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    MEMORY[0x26D64C470](v22);
  }

  sub_269BE9768(v15 + v16[8], v14, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v23 = (*(v9 + 48))(v14, 2, v8);
  if (v23)
  {
    MEMORY[0x26D64C450](v23 != 1);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    MEMORY[0x26D64C450](2);
    sub_269BEA2D0(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_269BF86B8();
    (*(v9 + 8))(v11, v8);
  }

  v24 = v43;
  v26 = v40;
  v25 = v41;
  sub_269BE9768(v15 + v16[9], v7, sub_269BD3170);
  if ((*(v26 + 48))(v7, 1, v25) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v27 = v39;
    sub_269BD322C(v7, v39);
    sub_269BF8C38();
    SleepScoreMetricsDaySummary.Metrics.hash(into:)(a1);
    sub_269BD3290(v27, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  }

  v28 = v42;
  v29 = (v24 + *(v42 + 24));
  if (*(v29 + 48) == 1)
  {
    sub_269BF8C38();
  }

  else
  {
    v31 = v29[4];
    v30 = v29[5];
    v33 = v29[2];
    v32 = v29[3];
    v35 = *v29;
    v34 = v29[1];
    sub_269BF8C38();
    MEMORY[0x26D64C450](v35);
    MEMORY[0x26D64C450](v34);
    MEMORY[0x26D64C450](v33);
    MEMORY[0x26D64C450](v32);
    MEMORY[0x26D64C450](v31);
    MEMORY[0x26D64C450](v30);
  }

  if (*(v24 + *(v28 + 28)))
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  return MEMORY[0x26D64C450](v36);
}

uint64_t SleepScoreDaySummary.hashValue.getter()
{
  sub_269BF8C18();
  SleepScoreDaySummary.hash(into:)(v1);
  return sub_269BF8C58();
}

uint64_t sub_269BEA0E4()
{
  sub_269BF8C18();
  SleepScoreDaySummary.hash(into:)(v1);
  return sub_269BF8C58();
}

uint64_t sub_269BEA128(uint64_t a1)
{
  sub_269BF8C18();
  SleepScoreDaySummary.hash(into:)(v2);
  return sub_269BF8C58();
}

uint64_t _s11SleepHealth0A15ScoreDaySummaryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  sub_269BDB1E0(0, &qword_28034AAC0, 0x277D82BB8);
  if ((sub_269BF8988() & 1) == 0)
  {
    goto LABEL_9;
  }

  v4 = type metadata accessor for SleepScoreDaySummary(0);
  if (!_s11SleepHealth0A22ScoreMetricsDaySummaryV2eeoiySbAC_ACtFZ_0(a1 + v4[5], a2 + v4[5]))
  {
    goto LABEL_9;
  }

  v5 = v4[6];
  v6 = (a2 + v5);
  v7 = *(a2 + v5 + 16);
  v32[0] = *(a2 + v5);
  v8 = a1 + v5;
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = *(v8 + 3);
  v13 = *(v8 + 4);
  v14 = *(v8 + 5);
  v15 = v8[48];
  v16 = v6[3].i8[0];
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32[1] = v7;
  v32[2] = v6[2];
  v33 = v16;
  if (v15)
  {
    if ((v16 & 1) == 0)
    {
LABEL_9:
      v17 = 0;
      return v17 & 1;
    }
  }

  else
  {
    v19.i64[0] = v9;
    v19.i64[1] = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = 0;
    if ((v16 & 1) != 0 || !_s11SleepHealth0A5ScoreV2eeoiySbAC_ACtFZ_0(&v19, v32))
    {
      goto LABEL_9;
    }
  }

  v17 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  return v17 & 1;
}

uint64_t sub_269BEA2D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269BEA340(uint64_t a1)
{
  sub_269BDB1E0(319, &qword_280B61580, 0x277CCD9B0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SleepScoreMetricsDaySummary(319);
    if (v2 <= 0x3F)
    {
      sub_269BEA3F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_269BEA3F4()
{
  if (!qword_280B61590[0])
  {
    v0 = sub_269BF89A8();
    if (!v1)
    {
      atomic_store(v0, qword_280B61590);
    }
  }
}

uint64_t sub_269BEA444@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_269BF82A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v2 segments];
  sub_269BEA930();
  v9 = sub_269BF8898();

  v20 = v5;
  v21 = v4;
  if (v9 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269BF8AD8())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26D64C2D0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 category];
      if (_HKCategoryValueSleepAnalysisIsAsleep())
      {

        v15 = [v13 dateInterval];

        sub_269BF8278();
        sub_269BF8288();
        (*(v20 + 8))(v7, v21);
        v16 = sub_269BF8458();
        return (*(*(v16 - 8) + 56))(a1, 0, 1, v16);
      }

      ++v11;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v18 = sub_269BF8458();
  v19 = *(*(v18 - 8) + 56);

  return v19(a1, 1, 1, v18);
}

uint64_t sub_269BEA6F4(double a1)
{
  v2 = v1;
  v27 = sub_269BF82A8();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 segments];
  sub_269BEA930();
  v8 = sub_269BF8898();

  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_18:
    v10 = sub_269BF8AD8();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = 0;
  v13 = v8 & 0xC000000000000001;
  v26 = v4 + 1;
  v14 = &off_279C82000;
  while (v10 != v11)
  {
    if (v13)
    {
      v17 = MEMORY[0x26D64C2D0](v11, v8);
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_16;
      }

      v17 = *(v8 + 8 * v11 + 32);
    }

    v4 = v17;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ([v17 v14[270]] == 2)
    {
      v18 = v10;
      v19 = v8;
      v20 = v9;
      v21 = v14;
      v22 = [v4 dateInterval];
      sub_269BF8278();

      v14 = v21;
      v9 = v20;
      v8 = v19;
      v10 = v18;
      sub_269BF8298();
      v24 = v23;

      (*v26)(v6, v27);
      v15 = v24 >= a1;
    }

    else
    {

      v15 = 0;
    }

    ++v11;
    v16 = __OFADD__(v12, v15);
    v12 += v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  return v12;
}

unint64_t sub_269BEA930()
{
  result = qword_280B61408;
  if (!qword_280B61408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B61408);
  }

  return result;
}

uint64_t sub_269BEA9DC()
{
  sub_269BF8C18();
  MEMORY[0x26D64C450](1);
  return sub_269BF8C58();
}

uint64_t sub_269BEAA48(uint64_t a1)
{
  sub_269BF8C18();
  MEMORY[0x26D64C450](1);
  return sub_269BF8C58();
}

uint64_t SleepHealthNotificationSettingsProvider.__allocating_init()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v0)
  {
    v1 = v0;
    result = swift_allocObject();
    *(result + 16) = v1;
  }

  else
  {
    sub_269BF8A88();
    MEMORY[0x26D64C060](0xD000000000000029, 0x8000000269BFB970);
    v3 = sub_269BF87E8();
    MEMORY[0x26D64C060](v3);

    MEMORY[0x26D64C060](0xD00000000000001CLL, 0x8000000269BFB9A0);
    result = sub_269BF8AC8();
    __break(1u);
  }

  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.__allocating_init(defaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277CCC158];
  v10[0] = 0;
  v3 = [v1 hk:v2 safeNumberIfExistsForKeyPath:v10 error:?];
  if (v3)
  {
    v4 = v3;
    v5 = v10[0];
    v6 = [v4 BOOLValue];
  }

  else
  {
    v7 = v10[0];
    v8 = sub_269BF83E8();

    swift_willThrow();
    return 2;
  }

  return v6;
}

void SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_269BF8458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BEB064(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(v1 + 16);
  if (v2 != 2)
  {
    v10 = sub_269BF88C8();
  }

  [v11 setObject:v10 forKey:*MEMORY[0x277CCC158]];
  swift_unknownObjectRelease();
  sub_269BEB0BC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269BF9B40;
  *(inited + 32) = sub_269BF87E8();
  *(inited + 40) = v13;
  v14 = sub_269BECA28(inited);
  swift_setDeallocating();
  sub_269BECB84(inited + 32);
  v26 = v14;
  if (v2 == 2)
  {
    v15 = sub_269BF87D8();
    [v11 setURL:0 forKey:v15];
LABEL_7:

    sub_269BE0F00(&v25, 0xD00000000000002DLL, 0x8000000269BFB230);

    goto LABEL_8;
  }

  SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsFirstUpdated.getter(v9);
  v16 = (*(v4 + 48))(v9, 1, v3);
  sub_269BECBD8(v9);
  if (v16 == 1)
  {
    sub_269BF8448();
    sub_269BF8408();
    v18 = v17;
    (*(v4 + 8))(v6, v3);
    v15 = sub_269BF87D8();
    [v11 setDouble:v15 forKey:v18];
    goto LABEL_7;
  }

LABEL_8:
  sub_269BF8448();
  sub_269BF8408();
  v20 = v19;
  (*(v4 + 8))(v6, v3);
  v21 = sub_269BF87D8();
  [v11 setDouble:v21 forKey:v20];

  v22 = *MEMORY[0x277CCE378];
  v23 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void sub_269BEB064(uint64_t a1)
{
  if (!qword_280B61578)
  {
    sub_269BF8458();
    v1 = sub_269BF89A8();
    if (!v2)
    {
      atomic_store(v1, &qword_280B61578);
    }
  }
}

void sub_269BEB0BC()
{
  if (!qword_28034A7E8)
  {
    v0 = sub_269BF8B98();
    if (!v1)
    {
      atomic_store(v0, &qword_28034A7E8);
    }
  }
}

uint64_t SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsFirstUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v12[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v12 error:?];

  if (v5)
  {
    v6 = v12[0];
    [v5 doubleValue];
    sub_269BF83F8();

    v7 = 0;
  }

  else
  {
    v8 = v12[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 1;
  }

  v10 = sub_269BF8458();
  return (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
}

void (*SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter();
  return sub_269BEB29C;
}

id SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.getter()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v3 = [v1 isAppleInternalInstall];

  if (v3)
  {
    v4 = *(v0 + 16);
    v5 = sub_269BF87D8();
    v12[0] = 0;
    v6 = [v4 hk:v5 safeNumberIfExistsForKeyPath:v12 error:?];

    if (v6)
    {
      v7 = v12[0];
      v8 = [v6 integerValue];

      return v8;
    }

    v10 = v12[0];
    v11 = sub_269BF83E8();

    swift_willThrow();
  }

  return 0;
}

void SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.setter(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_269BF88F8();
  }

  v5 = sub_269BF87D8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96D68);
  sub_269BECB84(&unk_287A96D88);
  v7 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.getter();
  *(a1 + 8) = v3 & 1;
  return sub_269BEB560;
}

uint64_t SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCount.getter()
{
  result = SleepHealthNotificationSettingsProvider.minimumNotifiableOutOfRangeCountOverride.getter();
  if (v1)
  {
    return 2;
  }

  return result;
}

uint64_t SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsLastUpdatedLocally.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v12[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v12 error:?];

  if (v5)
  {
    v6 = v12[0];
    [v5 doubleValue];
    sub_269BF83F8();

    v7 = 0;
  }

  else
  {
    v8 = v12[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 1;
  }

  v10 = sub_269BF8458();
  return (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
}

void SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.getter(BOOL *a1@<X8>)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v11[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v11 error:?];

  if (v5)
  {
    v6 = v11[0];
    v7 = [v5 integerValue];

    v8 = v7 != 1;
  }

  else
  {
    v9 = v11[0];
    v10 = sub_269BF83E8();

    swift_willThrow();
    v8 = 1;
  }

  *a1 = v8;
}

void SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(_BYTE *a1)
{
  v3 = sub_269BF8458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *a1;
  v7 = *(v1 + 16);
  if (v5)
  {
    v8 = sub_269BF87D8();
    [v7 setObject:0 forKey:v8];

    v9 = 0;
  }

  else
  {
    v15[1] = 1;
    v10 = sub_269BF8BA8();
    v11 = sub_269BF87D8();
    [v7 setObject:v10 forKey:v11];
    swift_unknownObjectRelease();

    sub_269BF8448();
    sub_269BF8408();
    (*(v4 + 8))(v6, v3);
    v9 = sub_269BF88D8();
  }

  v12 = sub_269BF87D8();
  [v7 setObject:v9 forKey:v12];
  swift_unknownObjectRelease();

  v13 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96D98);
  swift_arrayDestroy();
  v14 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.getter((a1 + 8));
  return sub_269BEBAB8;
}

void sub_269BEBAB8(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(v2);
}

uint64_t SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSentDate.getter@<X0>(uint64_t a1@<X8>)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v12[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v12 error:?];

  if (v5)
  {
    v6 = v12[0];
    [v5 doubleValue];
    sub_269BF83F8();

    v7 = 0;
  }

  else
  {
    v8 = v12[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 1;
  }

  v10 = sub_269BF8458();
  return (*(*(v10 - 8) + 56))(a1, v7, 1, v10);
}

void SleepHealthNotificationSettingsProvider.enabledSleepScoreNotificationLevels(sleepSettingsFallback:)(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  SleepHealthNotificationSettingsProvider._enabledSleepScoreNotificationLevels.getter(&v6);
  if (v7)
  {
    v4 = a1();
    v5 = 31;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = v6;
  }

  *a2 = v5;
}

void SleepHealthNotificationSettingsProvider._enabledSleepScoreNotificationLevels.getter(uint64_t a1@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = sub_269BF87D8();
  v10[0] = 0;
  v5 = [v3 hk:v4 safeNumberIfExistsForKeyPath:v10 error:?];

  if (v5)
  {
    v6 = v10[0];
    v7 = [v5 integerValue];
  }

  else
  {
    v8 = v10[0];
    v9 = sub_269BF83E8();

    swift_willThrow();
    v7 = 0;
  }

  *a1 = v7;
  *(a1 + 8) = v5 == 0;
}

Swift::Void __swiftcall SleepHealthNotificationSettingsProvider.setEnabledSleepScoreNotificationLevels(_:)(SleepHealth::SleepScoreLevels_optional a1)
{
  v2 = *(v1 + 16);
  if (*(a1.value.rawValue + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_269BF8BA8();
  }

  v4 = sub_269BF87D8();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96DD8);
  sub_269BECB84(&unk_287A96DF8);
  v6 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void SleepHealthNotificationSettingsProvider.sleepScoreAlgorithmVersion.getter(unsigned __int8 *a1@<X8>)
{
  v2 = SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.getter();
  if (v3)
  {
    v4 = [objc_opt_self() sharedBehavior];
    if (!v4)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v5 = v4;
    v6 = [v4 features];

    if (v6)
    {
LABEL_11:
      v7 = [v6 sleepResultsNotificationsOnWatch];

      goto LABEL_12;
    }

    __break(1u);
  }

  if (v2 == 1)
  {
    v7 = 0;
    goto LABEL_12;
  }

  if (v2 == 2)
  {
    v7 = 1;
LABEL_12:
    *a1 = v7;
    return;
  }

  v8 = [objc_opt_self() sharedBehavior];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v6 = [v8 features];

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

id SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_269BF87D8();
  v9[0] = 0;
  v3 = [v1 hk:v2 safeNumberIfExistsForKeyPath:v9 error:?];

  if (v3)
  {
    v4 = v9[0];
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = v9[0];
    v7 = sub_269BF83E8();

    swift_willThrow();
    return 0;
  }

  return v5;
}

void SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.setter(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_269BF88F8();
  }

  v5 = sub_269BF87D8();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();

  v6 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96E08);
  sub_269BECB84(&unk_287A96E28);
  v7 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = SleepHealthNotificationSettingsProvider.maximumCompatibleSleepScoreAlgorithmVersion.getter();
  *(a1 + 8) = v3 & 1;
  return sub_269BEC238;
}

BOOL SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.getter()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  v2 = sub_269BF87D8();
  v9[0] = 0;
  v3 = [v1 hk:v2 safeNumberIfExistsForKeyPath:v9 error:?];

  if (v3)
  {
    v4 = v9[0];
    v5 = [v3 integerValue];

    return v5 > 0;
  }

  else
  {
    v7 = v9[0];
    v8 = sub_269BF83E8();

    swift_willThrow();
    return 0;
  }
}

void SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.setter(char a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    v3 = sub_269BF8BD8();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_269BF87D8();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  v5 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96E38);
  sub_269BECB84(&unk_287A96E58);
  v6 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

void (*SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.getter();
  return sub_269BEC4BC;
}

Swift::Void __swiftcall SleepHealthNotificationSettingsProvider.resetAll()()
{
  v8 = 1;
  SleepHealthNotificationSettingsProvider.lastSleepScoreIntroductionNotificationVersionSent.setter(&v8);
  v1 = *(v0 + 16);
  v2 = sub_269BF87D8();
  [v1 setObject:0 forKey:v2];

  v3 = *MEMORY[0x277CCE378];
  sub_269BECA28(&unk_287A96E68);
  sub_269BECB84(&unk_287A96E88);
  v4 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();

  SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.setter(2u);
  v5 = sub_269BF87D8();
  [v1 setObject:0 forKey:v5];

  v6 = v3;
  sub_269BECA28(&unk_287A96E98);
  sub_269BECB84(&unk_287A96EB8);
  v7 = sub_269BF88E8();

  HKSynchronizeNanoPreferencesUserDefaults();
}

uint64_t SleepHealthNotificationSettingsProvider.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void (*sub_269BEC728(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter();
  return sub_269BEB29C;
}

void sub_269BEC774(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  SleepHealthNotificationSettingsProvider._enabledSleepScoreNotificationLevels.getter(&v6);
  if (v7)
  {
    v4 = a1();
    v5 = 31;
    if ((v4 & 1) == 0)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = v6;
  }

  *a2 = v5;
}

unint64_t SleepHealthNotificationSettingsProvider.ObservableKey.keyPath.getter()
{
  if (*v0)
  {
    return 0xD000000000000023;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t SleepHealthNotificationSettingsProvider.ObservableKey.hashValue.getter()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

Swift::Void __swiftcall SleepHealthNotificationSettingsProvider.registerObserver(_:for:)(NSObject _, SleepHealth::SleepHealthNotificationSettingsProvider::ObservableKey a2)
{
  v4 = *(v2 + 16);
  v5 = sub_269BF87D8();

  [v4 addObserver:_.isa forKeyPath:v5 options:0 context:0];
}

Swift::Void __swiftcall SleepHealthNotificationSettingsProvider.unregisterObserver(_:for:)(NSObject _, SleepHealth::SleepHealthNotificationSettingsProvider::ObservableKey a2)
{
  v4 = *(v2 + 16);
  v5 = sub_269BF87D8();

  [v4 removeObserver:_.isa forKeyPath:v5];
}

uint64_t sub_269BECA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_269BE1E78();
    v3 = sub_269BF8A58();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_269BF8C18();

      sub_269BF8818();
      result = sub_269BF8C58();
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
          result = sub_269BF8BB8();
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_269BECBD8(uint64_t a1)
{
  sub_269BEB064(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269BECC34()
{
  result = qword_28034AAD0;
  if (!qword_28034AAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AAD0);
  }

  return result;
}

unint64_t sub_269BECC8C()
{
  result = qword_28034AAD8;
  if (!qword_28034AAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AAD8);
  }

  return result;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CurrentUserModel.__allocating_init()()
{
  v0 = swift_allocObject();
  CurrentUserModel.init()();
  return v0;
}

uint64_t CurrentUserModel.init()()
{
  v18[1] = *MEMORY[0x277D85DE8];
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  greenTeaDeviceCapability = MobileGestalt_get_greenTeaDeviceCapability();

  if (greenTeaDeviceCapability)
  {
    goto LABEL_6;
  }

  sub_269BECFC8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269BFA9B0;
  v5 = *MEMORY[0x277CBD000];
  v6 = *MEMORY[0x277CBD078];
  *(v4 + 32) = *MEMORY[0x277CBD000];
  *(v4 + 40) = v6;
  v7 = *(v0 + 16);
  sub_269BED01C();
  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = sub_269BF8888();

  v18[0] = 0;
  v12 = [v10 _ios_meContactWithKeysToFetch_error_];

  v13 = v18[0];
  if (!v12)
  {
    v15 = v18[0];
    v16 = sub_269BF83E8();

    swift_willThrow();
LABEL_6:
    *(v0 + 24) = 0;
    return v0;
  }

  *(v0 + 24) = v12;
  v14 = v13;
  return v0;
}

void sub_269BECFC8()
{
  if (!qword_28034AAE0)
  {
    v0 = sub_269BF8B98();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AAE0);
    }
  }
}

unint64_t sub_269BED01C()
{
  result = qword_28034AAE8;
  if (!qword_28034AAE8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034AAE8);
  }

  return result;
}

uint64_t CurrentUserModel.firstName.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 nickname];
    sub_269BF87E8();

    v4 = sub_269BF8828();

    if (v4 >= 1)
    {
      v5 = [v2 nickname];
LABEL_6:
      v8 = v5;
      v9 = sub_269BF87E8();

      return v9;
    }

    v6 = [v2 givenName];
    sub_269BF87E8();

    v7 = sub_269BF8828();

    if (v7 >= 1)
    {
      v5 = [v2 givenName];
      goto LABEL_6;
    }
  }

  return 0;
}

uint64_t CurrentUserModel.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SleepScoreDaySummaryCollectionQueryProvider.makeQuery(morningIndexRange:gregorianCalendar:debugIdentifier:algorithmVersion:completion:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v68 = a7;
  v70 = a6;
  v71 = a2;
  v76 = a3;
  v77 = a4;
  v74 = a1;
  sub_269BEE474(0, &qword_28034A570, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v55 - v10;
  sub_269BD86F0(0);
  v67 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v65 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v55 - v14;
  v73 = sub_269BF8688();
  v63 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD8758(0);
  v75 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v60 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0);
  MEMORY[0x28223BE20](Descriptor);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_269BF8508();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a5;
  v28 = *(v25 + 16);
  v28(v27, a2, v24);
  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v30 = swift_allocObject();
  v66 = v25;
  (*(v25 + 32))(v30 + v29, v27, v24);
  sub_269BEE344(v74, v20, sub_269BD8758);
  v28(v27, v71, v24);
  *&v23[*(Descriptor + 24)] = 13;
  v61 = v27;
  v59 = v25 + 16;
  v58 = v28;
  v28(v23, v27, v24);
  v71 = Descriptor;
  v31 = *(Descriptor + 20);
  v32 = v72;
  v33 = &v23[v31];
  v34 = v77;
  *v33 = v76;
  v33[1] = v34;

  sub_269BF8658();
  v35 = *(v75 + 36);
  sub_269BED980();
  v74 = v20;
  v36 = v73;
  result = sub_269BF86F8();
  if (result)
  {
    v57 = v30;
    v38 = v62;
    v39 = v63;
    v55 = v23;
    v56 = v24;
    v40 = *(v63 + 32);
    v40(v62, v32, v36);
    v41 = v65;
    v42 = v67;
    (*(v39 + 16))(v38 + *(v67 + 48), &v74[v35], v36);
    sub_269BEE344(v38, v41, sub_269BD86F0);
    v43 = *(v42 + 48);
    v44 = v60;
    v40(v60, v41, v36);
    v45 = *(v39 + 8);
    v45(v41 + v43, v36);
    sub_269BEE40C(v38, v41, sub_269BD86F0);
    v40(&v44[*(v75 + 36)], (v41 + *(v42 + 48)), v36);
    v45(v41, v36);
    MEMORY[0x26D64C180](v44);
    v46 = v71;
    v47 = v55;
    sub_269BF85C8();
    v48 = sub_269BF85A8();

    sub_269BF8598();
    v48(v78, 0);
    v49 = v69;
    v50 = v61;
    v51 = v56;
    v58(v69, v61, v56);
    v52 = v66;
    (*(v66 + 56))(v49, 0, 1, v51);
    sub_269BF85B8();
    (*(v52 + 8))(v50, v51);
    sub_269BEE3AC(v74, sub_269BD8758);
    *(v47 + *(v46 + 28)) = v64;
    v53 = swift_allocObject();
    v53[2] = v70;
    v53[3] = v68;
    v53[4] = sub_269BEE240;
    v53[5] = v57;

    v54 = SleepScoreDaySummaryQueryDescriptor.makeQuery(completion:)(sub_269BEE2B0, v53);

    sub_269BEE3AC(v47, type metadata accessor for SleepScoreDaySummaryQueryDescriptor);
    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_269BED980()
{
  result = qword_28034A4C0;
  if (!qword_28034A4C0)
  {
    sub_269BF8688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A4C0);
  }

  return result;
}

uint64_t sub_269BED9D8(void *a1, uint64_t a2)
{
  v80 = a2;
  v87 = sub_269BF8508();
  v3 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD86F0(0);
  v79 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v78 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v57 - v9;
  sub_269BD8758(0);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v86 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for SleepScoreDaySummary(0);
  v12 = *(v81 - 8);
  v13 = MEMORY[0x28223BE20](v81);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = type metadata accessor for SleepScoreDaySummaryCollection(0);
  v74 = *(v18 - 8);
  v75 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v73 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v19);
  v23 = &v57 - v22;
  v24 = a1[2];
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v58 = *(v12 + 80);
    v59 = (v58 + 32) & ~v58;
    v72 = a1 + v59;
    v66 = (v3 + 16);
    v62 = (v3 + 32);
    v65 = -v24;
    v27 = 7;
    v89 = MEMORY[0x277D84F90];
    v71 = a1;
    v67 = v5;
    v64 = v12;
    v70 = v23;
    v63 = v24;
    v69 = v15;
    v68 = v17;
    while (1)
    {
      v30 = v24 >= v27 ? v27 : v24;
      v29 = v25 + 7;
      if (__OFADD__(v25, 7))
      {
        break;
      }

      if (v24 >= v29)
      {
        v31 = v25 + 7;
      }

      else
      {
        v31 = v24;
      }

      if (v31 < v25)
      {
        goto LABEL_33;
      }

      if (v25 != v31)
      {
        if (v25 >= v31)
        {
          goto LABEL_34;
        }

        v83 = v25 + 7;
        v84 = v27;
        v88 = v26;
        v32 = *(v12 + 72);
        v85 = v25;
        v33 = v72;
        v61 = &v72[v32 * v25];
        sub_269BEE344(v61, v17, type metadata accessor for SleepScoreDaySummary);
        v60 = v32;
        sub_269BEE344(&v33[v32 * (v31 - 1)], v15, type metadata accessor for SleepScoreDaySummary);
        v34 = *(v81 + 20);
        v35 = sub_269BF8688();
        sub_269BED980();

        result = sub_269BF86F8();
        if ((result & 1) == 0)
        {
          goto LABEL_35;
        }

        v82 = v30 + v88;
        v36 = *(v35 - 8);
        v37 = v36[2];
        v38 = v77;
        v37(v77, &v17[v34], v35);
        v39 = v79;
        v37((v38 + *(v79 + 48)), &v15[v34], v35);
        v40 = v78;
        sub_269BEE344(v38, v78, sub_269BD86F0);
        v41 = *(v39 + 48);
        v42 = v36[4];
        v43 = v86;
        v42(v86, v40, v35);
        v44 = v36[1];
        v44(v40 + v41, v35);
        sub_269BEE40C(v38, v40, sub_269BD86F0);
        v42(v43 + *(v76 + 36), v40 + *(v39 + 48), v35);
        v45 = v82;
        v44(v40, v35);
        v46 = v67;
        (*v66)(v67, v80, v87);
        if (v65 + v45)
        {
          v17 = v68;
          v15 = v69;
          v47 = v70;
          if (v45 < 1)
          {
            v48 = MEMORY[0x277D84F90];
            v12 = v64;
          }

          else
          {
            sub_269BEE474(0, &qword_28034A478, type metadata accessor for SleepScoreDaySummary, MEMORY[0x277D84560]);
            v53 = v59;
            v54 = v60;
            v48 = swift_allocObject();
            result = _swift_stdlib_malloc_size(v48);
            if (!v54)
            {
              goto LABEL_36;
            }

            v55 = result - v53;
            v56 = result - v53 == 0x8000000000000000;
            v12 = v64;
            if (v56 && v54 == -1)
            {
              goto LABEL_37;
            }

            v48[2] = v45;
            v48[3] = 2 * (v55 / v54);
          }

          swift_arrayInitWithCopy();
          sub_269BEE3AC(v15, type metadata accessor for SleepScoreDaySummary);
          sub_269BEE3AC(v17, type metadata accessor for SleepScoreDaySummary);
        }

        else
        {
          v15 = v69;
          sub_269BEE3AC(v69, type metadata accessor for SleepScoreDaySummary);
          v17 = v68;
          sub_269BEE3AC(v68, type metadata accessor for SleepScoreDaySummary);
          v47 = v70;
          v48 = v71;
          v12 = v64;
        }

        v49 = v73;
        sub_269BEE40C(v86, v73, sub_269BD8758);
        v50 = v75;
        (*v62)(v49 + *(v75 + 20), v46, v87);
        *(v49 + *(v50 + 24)) = v48;
        sub_269BEE40C(v49, v47, type metadata accessor for SleepScoreDaySummaryCollection);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_269BF269C(0, v89[2] + 1, 1, v89);
        }

        v52 = v89[2];
        v51 = v89[3];
        if (v52 >= v51 >> 1)
        {
          v89 = sub_269BF269C((v51 > 1), v52 + 1, 1, v89);
        }

        v28 = v89;
        v89[2] = v52 + 1;
        result = sub_269BEE40C(v47, v28 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v52, type metadata accessor for SleepScoreDaySummaryCollection);
        v24 = v63;
        v27 = v84;
        v25 = v85;
        v26 = v88;
        v29 = v83;
      }

      v27 += 7;
      v26 -= 7;
      v25 += 7;
      if (v29 >= v24)
      {
        return v89;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_269BEE240(void *a1)
{
  v3 = *(sub_269BF8508() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_269BED9D8(a1, v4);
}

uint64_t sub_269BEE2B0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    return v3(a1, 1);
  }

  v5 = (*(v2 + 32))(a1);
  v3(v5, 0);
}

uint64_t sub_269BEE344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BEE3AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269BEE40C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269BEE474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SleepScoreNoteBuilder.init(sleepScoreDaySummary:firstName:)@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a2;
  v7 = sub_269BF8458();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_269BF82A8();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_269BF1380(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50[-v13];
  v15 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for SleepScoreDaySummary(0);
  v20 = a1 + *(v19 + 24);
  if (v20[48] == 1)
  {

    result = sub_269BEEEFC(a1, type metadata accessor for SleepScoreDaySummary);
LABEL_5:
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 64) = xmmword_269BFAA40;
    *(a4 + 80) = 0;
    return result;
  }

  v22 = v19;
  v23 = *(v20 + 1);
  v58 = *v20;
  v59 = a3;
  v24 = *(v20 + 3);
  v56 = *(v20 + 2);
  v57 = v23;
  v55 = v24;
  v25 = *(v20 + 4);
  v53 = *(v20 + 5);
  v54 = v25;
  v26 = a1 + *(v19 + 20);
  v27 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 36);
  v52 = v26;
  sub_269BD31C8(&v26[v27], v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    sub_269BEEEFC(a1, type metadata accessor for SleepScoreDaySummary);
    result = sub_269BE9360(v14);
    goto LABEL_5;
  }

  sub_269BD322C(v14, v18);
  v28 = COERCE_DOUBLE(SleepScoreDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter());
  if (v29)
  {
    v51 = 2;
  }

  else
  {
    v51 = v28 > 0.0;
  }

  v30 = *a1;
  v31 = [*a1 dateInterval];
  sub_269BF8278();

  v32 = v62;
  sub_269BF8288();
  (*(v60 + 8))(v11, v61);
  sub_269BF8418();
  v34 = v33;
  (*(v63 + 8))(v32, v64);
  v35 = sub_269BF8678();
  LOBYTE(v30) = [v30 containsPeriodsWithAppleSleepTrackingData];
  sub_269BEEEFC(v18, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v36 = *(a1 + *(v22 + 28));
  sub_269BEEEFC(a1, type metadata accessor for SleepScoreDaySummary);
  v38 = v57;
  v37 = v58;
  *&v67 = v58;
  *(&v67 + 1) = v57;
  v40 = v55;
  v39 = v56;
  *&v68 = v56;
  *(&v68 + 1) = v55;
  v42 = v53;
  v41 = v54;
  *&v69 = v54;
  *(&v69 + 1) = v53;
  v43 = v51;
  LOBYTE(v70) = v51;
  BYTE1(v70) = v34 >= 36000.0;
  *(&v70 + 2) = v83;
  WORD3(v70) = v84;
  v44 = v65;
  v45 = v59;
  *(&v70 + 1) = v65;
  *&v71 = v59;
  *(&v71 + 1) = v35;
  LOBYTE(v72) = v30;
  HIBYTE(v72) = v36;
  v46 = v68;
  *a4 = v67;
  *(a4 + 16) = v46;
  v47 = v69;
  v48 = v70;
  v49 = v71;
  *(a4 + 80) = v72;
  *(a4 + 48) = v48;
  *(a4 + 64) = v49;
  *(a4 + 32) = v47;
  v73[0] = v37;
  v73[1] = v38;
  v73[2] = v39;
  v73[3] = v40;
  v73[4] = v41;
  v73[5] = v42;
  v74 = v43;
  v75 = v34 >= 36000.0;
  v77 = v84;
  v76 = v83;
  v78 = v44;
  v79 = v45;
  v80 = v35;
  v81 = v30;
  v82 = v36;
  sub_269BEEF5C(&v67, &v66);
  return sub_269BEEF94(v73);
}

uint64_t SleepScoreNoteBuilder.localizedIntroductionBodyParagraphs.getter()
{
  v1 = sub_269BF84C8();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v5 = v0[1];
  v7 = v0[2];
  v6 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  LOBYTE(v2) = *(v0 + 48);
  v10 = *(v0 + 49);
  *v33 = *(v0 + 50);
  *&v33[14] = *(v0 + 4);
  v11 = *(v0 + 80);
  v12 = *(v0 + 81);
  v25 = v4;
  v26 = v5;
  v27 = v7;
  v28 = v6;
  v29 = v8;
  v30 = v9;
  v31 = v2;
  v32 = v10;
  v34 = v11;
  v35 = v12;
  result = sub_269BEF9BC();
  v14 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = __OFADD__(v14, v7);
  v16 = v14 + v7;
  if (v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = __OFADD__(v16, v6);
  v17 = v16 + v6;
  if (v15)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 >= v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v9;
  }

  v19 = v17 + v18;
  if (!__OFADD__(v17, v18))
  {
    v20 = result;
    sub_269BF8488();
    v21 = sub_269BDCFEC(v19, v11 & 1, v3, v20, 1, v10 & 1);
    (*(v23 + 8))(v3, v24);
    return v21;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t SleepScoreNoteBuilder.localizedDescription.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269BF8798();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_269BF84C8();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = v0[1];
  v13 = *v0 + v12;
  if (__OFADD__(*v0, v12))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v0[2];
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v0[3];
  v15 = __OFADD__(v16, v17);
  v18 = v16 + v17;
  if (v15)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v19 = v0[4];
  v20 = v0[5];
  if (v20 >= v19)
  {
    v21 = v0[4];
  }

  else
  {
    v21 = v0[5];
  }

  v22 = v18 + v21;
  if (__OFADD__(v18, v21))
  {
    goto LABEL_18;
  }

  v34[0] = v1;
  v23 = *(v0 + 49);
  v25 = v0[7];
  v24 = v0[8];
  if (v22 > 99)
  {
    v33 = (v2 + 8);
    if (v24)
    {
      sub_269BF8788();
      sub_269BF8778();
      sub_269BF8768();
      sub_269BF8778();
      sub_269BF87A8();
    }

    else
    {
      sub_269BF8738();
    }

    v32 = sub_269BDF7A8(v4);
    (*v33)(v4, v34[0]);
  }

  else
  {
    v26 = *(v0 + 48);
    v34[1] = v11;
    v34[2] = v12;
    v34[3] = v14;
    v34[4] = v17;
    v34[5] = v19;
    v34[6] = v20;
    v35 = v26;
    v36 = v23;
    v37 = *(v0 + 50);
    v38 = *(v0 + 27);
    v39 = v25;
    v40 = v24;
    v41 = v0[9];
    v42 = *(v0 + 40);
    v27 = sub_269BEFB54();
    v29 = v28;
    v31 = v30;
    sub_269BF8488();
    v32 = sub_269BDB4F8(v22, v25, v24, v10, v27, v29, v31 & 0xFF01FF);
    (*(v7 + 8))(v10, v6);
  }

  return v32;
}

uint64_t sub_269BEEEFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void __swiftcall SleepScoreNoteBuilder.init(score:relativeSleepOnset:sleepOnsetDayPeriod:firstName:variantSeed:hasDataFromAppleWatch:algorithmVersion:)(SleepHealth::SleepScoreNoteBuilder *__return_ptr retstr, SleepHealth::SleepScore *score, SleepHealth::SleepScoreNoteBuilder::RelativeSleepOnset_optional relativeSleepOnset, SleepHealth::SleepScoreNoteBuilder::SleepOnsetDayPeriod sleepOnsetDayPeriod, Swift::String_optional firstName, Swift::Int variantSeed, Swift::Bool hasDataFromAppleWatch, SleepHealth::SleepScoreAlgorithmVersion algorithmVersion)
{
  v8 = *relativeSleepOnset.value;
  v9 = *sleepOnsetDayPeriod;
  v10 = *algorithmVersion;
  v11 = *&score->remSleepDurationPoints;
  *&retstr->score.sleepDurationPoints = *&score->sleepDurationPoints;
  *&retstr->score.remSleepDurationPoints = v11;
  *&retstr->score.awakeInterruptionPoints = *&score->awakeInterruptionPoints;
  retstr->relativeSleepOnset.value = v8;
  retstr->sleepOnsetDayPeriod = v9;
  retstr->firstName = firstName;
  retstr->variantSeed = variantSeed;
  retstr->hasDataFromAppleWatch = hasDataFromAppleWatch;
  retstr->algorithmVersion = v10;
}

__n128 SleepScoreNoteBuilder.score.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 SleepScoreNoteBuilder.score.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v2;
  result = *(a1 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t SleepScoreNoteBuilder.firstName.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t SleepScoreNoteBuilder.firstName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void sub_269BEF1D4(_BYTE *a1@<X8>)
{
  v3 = v1[1];
  v4 = *v1 + v3;
  if (__OFADD__(*v1, v3))
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v1[2];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v1[3];
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v1[4];
  if (v1[5] < v10)
  {
    v10 = v1[5];
  }

  v11 = v9 + v10;
  if (!__OFADD__(v9, v10))
  {
    swift_getKeyPath();
    sub_269BF180C(v11, &v12);
    *a1 = v12;
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_269BEF304(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v9 = *v4++;
      v8 = v9;
      if ((v9 - 1) > 1 || *(v2 + 48) != 2)
      {
        v14[0] = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_269BF2B68(0, *(v5 + 16) + 1, 1);
          v5 = v14[0];
        }

        v7 = *(v5 + 16);
        v6 = *(v5 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_269BF2B68((v6 > 1), v7 + 1, 1);
          v5 = v14[0];
        }

        *(v5 + 16) = v7 + 1;
        *(v5 + v7 + 32) = v8;
      }

      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v15 = v5;
  sub_269BEEF5C(v2, v14);
  sub_269BEEF5C(v2, v14);

  sub_269BF1288(&v15, v2);
  sub_269BEEF94(v2);

  sub_269BEEF94(v2);
  v10 = v15;
  if (!*(v15 + 2))
  {
    __break(1u);
LABEL_20:
    v10 = sub_269BF3114(v10);
    v11 = *(v10 + 2);
    if (v11)
    {
      goto LABEL_15;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_20;
  }

  v11 = *(v10 + 2);
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_15:
  v12 = v10[v11 + 31];
  *(v10 + 2) = v11 - 1;
  if ((v12 - 3) > 1)
  {
LABEL_18:

    return v12;
  }

  if (v11 != 1)
  {
    v12 = v10[v11 + 30];
    goto LABEL_18;
  }

LABEL_22:
  __break(1u);
  sub_269BEEF94(v10);

  __break(1u);
  return result;
}

uint64_t sub_269BEF4D4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(v3[6] + (v12 | (v9 << 6)));
    if ((v13 - 1) > 1 || v2[48] != 2)
    {
      v22[0] = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269BF2B68(0, *(v10 + 16) + 1, 1);
        v10 = v22[0];
      }

      v14 = *(v10 + 16);
      v15 = *(v10 + 24);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v20 = *(v10 + 16);
        v21 = v14 + 1;
        sub_269BF2B68((v15 > 1), v14 + 1, 1);
        v14 = v20;
        v16 = v21;
        v10 = v22[0];
      }

      *(v10 + 16) = v16;
      *(v10 + v14 + 32) = v13;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_9;
    }
  }

  v23 = v10;
  sub_269BEEF5C(v2, v22);
  sub_269BEEF5C(v2, v22);

  v3 = 0;
  sub_269BF1288(&v23, v2);
  sub_269BEEF94(v2);

  sub_269BEEF94(v2);
  v2 = v23;
  if (!*(v23 + 2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    v2 = sub_269BF3114(v2);
    v17 = *(v2 + 2);
    if (!v17)
    {
      goto LABEL_26;
    }

LABEL_19:
    v18 = v2[v17 + 31];
    *(v2 + 2) = v17 - 1;
    if ((v18 - 3) <= 1)
    {
      if (v17 == 1)
      {
        goto LABEL_27;
      }

      v18 = v2[v17 + 30];
    }

    return v18;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(v2 + 2);
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  sub_269BEEF94(v2);

  __break(1u);
  return result;
}

BOOL sub_269BEF710(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = *v2;
  v4 = v2[4];
  v5 = 30.0;
  v6 = 20.0;
  if (a1 == 3)
  {
    v7 = v2[4];
  }

  else
  {
    v7 = v2[5];
  }

  v8 = 40.0;
  if (a1 - 1 >= 2)
  {
    v9 = *v2;
  }

  else
  {
    v9 = v2[3];
  }

  if (a1 - 1 < 2)
  {
    v8 = 30.0;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (a1 > 2u)
  {
    v8 = 20.0;
  }

  if (a2 != 3)
  {
    v4 = v2[5];
  }

  if (a2 - 1 >= 2)
  {
    v5 = 40.0;
  }

  else
  {
    v3 = v2[3];
  }

  if (a2 <= 2u)
  {
    v6 = v5;
  }

  else
  {
    v3 = v4;
  }

  v11 = v10 / v8;
  v12 = v3 / v6;
  if (v11 == v12)
  {
    return a1 < a2;
  }

  else
  {
    return v11 < v12;
  }
}

uint64_t sub_269BEF7B0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84F90];
    v6 = (a1 + 32);
    while (1)
    {
      v10 = *v6++;
      v9 = v10;
      if (v10 > 2 || v9 == 0)
      {
        break;
      }

      if (v9 == 1)
      {
        v12 = *(v2 + 48);
        if (v12 != 2 && (v12 & 1) == 0)
        {
          break;
        }
      }

      else if (*(v2 + 48))
      {
        break;
      }

LABEL_6:
      if (!--v3)
      {
        v14 = *(v5 + 16);
        if (!v14)
        {

          return *v4;
        }

LABEL_26:
        v15 = *(v5 + 32);
        v16 = v14 - 1;
        if (v16)
        {
          v17 = (v5 + 33);
          do
          {
            v19 = *v17++;
            v18 = v19;
            v20 = *v2;
            v21 = *(v2 + 32);
            if (v19 == 3)
            {
              v22 = *(v2 + 32);
            }

            else
            {
              v22 = *(v2 + 40);
            }

            v23 = 40.0;
            if ((v18 - 1) >= 2)
            {
              v24 = *v2;
            }

            else
            {
              v24 = *(v2 + 24);
            }

            if ((v18 - 1) < 2)
            {
              v23 = 30.0;
            }

            if (v18 > 2)
            {
              v23 = 20.0;
            }

            else
            {
              v22 = v24;
            }

            v25 = v22 / v23;
            if (v15 != 3)
            {
              v21 = *(v2 + 40);
            }

            v26 = 40.0;
            if (v15 - 1 < 2)
            {
              v20 = *(v2 + 24);
              v26 = 30.0;
            }

            if (v15 > 2u)
            {
              v20 = v21;
              v26 = 20.0;
            }

            v27 = v20 / v26;
            v28 = v18 < v15;
            if (v25 != v27)
            {
              v28 = v25 < v27;
            }

            if (v28)
            {
              v15 = v18;
            }

            else
            {
              v15 = v15;
            }

            --v16;
          }

          while (v16);
        }

        return v15;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_269BF2B68(0, *(v5 + 16) + 1, 1);
    }

    v8 = *(v5 + 16);
    v7 = *(v5 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_269BF2B68((v7 > 1), v8 + 1, 1);
    }

    *(v5 + 16) = v8 + 1;
    *(v5 + v8 + 32) = v9;
    goto LABEL_6;
  }

  v5 = MEMORY[0x277D84F90];
  v14 = *(MEMORY[0x277D84F90] + 16);
  if (v14)
  {
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_269BEF9BC()
{
  v1 = v0[3];
  v2 = v0[1];
  v20 = v0[2];
  v21 = v1;
  v3 = v0[3];
  v22 = v0[4];
  v4 = v0[1];
  v18 = *v0;
  v19 = v4;
  v14 = v20;
  v15 = v3;
  v16 = v0[4];
  v23 = *(v0 + 40);
  v17 = *(v0 + 40);
  v12 = v18;
  v13 = v2;
  sub_269BEF1D4(&v11);
  if (v11 <= 1u)
  {
    if (v11)
    {
      return 49152;
    }

    else
    {
      return 49153;
    }
  }

  else if (v11 == 2)
  {
    return sub_269BEF7B0(&unk_287A96D18) | 0xFFFF8000;
  }

  else if (v11 == 3)
  {
    v5 = sub_269BE6150(&unk_287A96C68);
    sub_269BF07B0(0, &qword_28034AB88, &qword_28034AA60, &type metadata for SleepScoreNote.Contributor, &type metadata for SleepScoreNote.Contributor);
    swift_arrayDestroy();
    result = sub_269BEF4D4(v5);
    if (v5[2])
    {
      v7 = result;
      result = sub_269BE5BD4(result);
      if (v8)
      {
        v9 = *(v5[7] + 8 * result);

        v10 = sub_269BEF7B0(v9);

        return v7 | (v10 << 8) | 0x4000u;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    return sub_269BEF304(&unk_287A96D40);
  }

  return result;
}

uint64_t sub_269BEFB54()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v23 = *(v0 + 49);
  v3 = sub_269BEF9BC();
  v4 = sub_269BE604C(&unk_287A96A78);
  sub_269BF07B0(0, &qword_28034AB80, &qword_28034AA48, &type metadata for SleepScoreNote.Customization, &type metadata for SleepScoreNote.Level);
  swift_arrayDestroy();
  if (v4[2] && (v5 = sub_269BE5AE8(v3), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = *(v7 + 16);
  if (!v9)
  {
    __break(1u);
    goto LABEL_26;
  }

  v22 = v3;
  v10 = (v7 + 42);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v15 = *(v10 - 1);
    if (v15 != 1 || v1 != 0)
    {
      v17 = *(v10 - 10);
      v18 = *(v10 - 2);
      v19 = *v10;
      if (*(v10 - 2))
      {
        if (v18 == 1 && (v23 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (v23)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_269BF2B88(0, *(v11 + 16) + 1, 1);
      }

      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_269BF2B88((v12 > 1), v13 + 1, 1);
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 16 * v13;
      *(v14 + 32) = v17;
      *(v14 + 40) = v18;
      *(v14 + 41) = v15;
      *(v14 + 42) = v19;
    }

LABEL_10:
    v10 += 16;
    --v9;
  }

  while (v9);

  v20 = *(v11 + 16);
  if (!v20)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v2 % v20;
  if ((v21 & 0x8000000000000000) == 0)
  {

    return v22;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_269BEFDB4()
{
  result = qword_28034AB50;
  if (!qword_28034AB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AB50);
  }

  return result;
}

unint64_t sub_269BEFE3C()
{
  result = qword_28034AB68;
  if (!qword_28034AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034AB68);
  }

  return result;
}

uint64_t sub_269BEFEC0(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269BF0820(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_269BEFF34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
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

uint64_t sub_269BEFF90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t sub_269BF002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  *(v10 + 96) = *(a5 + 80);
  v12 = *(a5 + 16);
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  if (a3 == a2)
  {
    sub_269BEEF5C(a5, v29);
LABEL_3:

    return sub_269BEEF94(a5);
  }

  else
  {
    v14 = *a4;
    sub_269BEEF5C(a5, v29);
    v15 = *(a5 + 40) / 20.0;
    v16 = *(a5 + 32) / 20.0;
    v17 = *(a5 + 24) / 30.0;
    v18 = (v14 + a3);
    v19 = a1 - a3;
    v20 = *a5 / 40.0;
LABEL_6:
    v21 = *(v14 + a3);
    v22 = v19;
    v23 = v18;
    while (1)
    {
      if (v21 > 2)
      {
        v24 = v16;
        if (v21 != 3)
        {
          v24 = v15;
        }
      }

      else
      {
        v24 = v20;
        if ((v21 - 1) < 2)
        {
          v24 = v17;
        }
      }

      v25 = *(v23 - 1);
      if (v25 > 2)
      {
        v26 = v16;
        if (v25 != 3)
        {
          v26 = v15;
        }
      }

      else
      {
        v26 = v20;
        if (v25 - 1 < 2)
        {
          v26 = v17;
        }
      }

      v27 = v21 < v25;
      if (v24 != v26)
      {
        v27 = v24 < v26;
      }

      if (!v27)
      {
LABEL_5:
        ++a3;
        ++v18;
        --v19;
        if (a3 == a2)
        {
          goto LABEL_3;
        }

        goto LABEL_6;
      }

      if (!v14)
      {
        break;
      }

      *v23 = v25;
      *--v23 = v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    result = sub_269BEEF94(a5);
    __break(1u);
  }

  return result;
}

uint64_t sub_269BF01F8(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = *(a5 + 48);
  *(v10 + 48) = *(a5 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a5 + 64);
  *(v10 + 96) = *(a5 + 80);
  v12 = *(a5 + 16);
  v13 = a2 - a1;
  v14 = a3 - a2;
  *(v10 + 16) = *a5;
  *(v10 + 32) = v12;
  if (a2 - a1 >= a3 - a2)
  {
    if (a4 >= a2 && a4 < a3 && a4 == a2)
    {
      sub_269BEEF5C(a5, v42);
    }

    else
    {
      sub_269BEEF5C(a5, v42);
      memmove(a4, a2, a3 - a2);
    }

    v15 = &a4[v14];
    if (v14 >= 1 && a2 > a1)
    {
      do
      {
        v27 = a2 - 1;
        --a3;
        v28 = v15;
        while (1)
        {
          v15 = v28;
          v30 = *--v28;
          v29 = v30;
          v31 = *v27;
          v32 = *a5;
          v33 = *(a5 + 32);
          if (v30 == 3)
          {
            v34 = *(a5 + 32);
          }

          else
          {
            v34 = *(a5 + 40);
          }

          if ((v29 - 1) >= 2)
          {
            v35 = *a5;
          }

          else
          {
            v35 = *(a5 + 24);
          }

          if ((v29 - 1) >= 2)
          {
            v36 = 40.0;
          }

          else
          {
            v36 = 30.0;
          }

          if (v29 > 2)
          {
            v36 = 20.0;
          }

          else
          {
            v34 = v35;
          }

          v37 = v34 / v36;
          if (v31 != 3)
          {
            v33 = *(a5 + 40);
          }

          if (v31 - 1 >= 2)
          {
            v38 = 40.0;
          }

          else
          {
            v32 = *(a5 + 24);
            v38 = 30.0;
          }

          if (*v27 > 2u)
          {
            v32 = v33;
            v38 = 20.0;
          }

          v39 = v32 / v38;
          v40 = v29 < v31;
          if (v37 != v39)
          {
            v40 = v37 < v39;
          }

          if (v40)
          {
            break;
          }

          if (a3 + 1 < v15 || a3 >= v15)
          {
            *a3 = v29;
          }

          --a3;
          if (v28 <= a4)
          {
            v15 = v28;
            goto LABEL_76;
          }
        }

        if (a3 + 1 < a2 || a3 >= a2)
        {
          *a3 = v31;
        }

        if (v15 <= a4)
        {
          break;
        }

        --a2;
      }

      while (v27 > a1);
      a2 = v27;
      if (v27 == a4)
      {
        goto LABEL_77;
      }

      goto LABEL_78;
    }

LABEL_76:
    if (a2 != a4)
    {
LABEL_78:
      memmove(a2, a4, v15 - a4);
      goto LABEL_79;
    }
  }

  else
  {
    if (a4 >= a1 && a4 < a2 && a4 == a1)
    {
      sub_269BEEF5C(a5, v42);
    }

    else
    {
      sub_269BEEF5C(a5, v42);
      memmove(a4, a1, a2 - a1);
    }

    v15 = &a4[v13];
    if (v13 >= 1 && a2 < a3)
    {
      v16 = *(a5 + 40) / 20.0;
      v17 = *(a5 + 32) / 20.0;
      v18 = *(a5 + 24) / 30.0;
      v19 = *a5 / 40.0;
      while (1)
      {
        v20 = *a2;
        if (v20 > 2)
        {
          v21 = v17;
          if (v20 != 3)
          {
            v21 = v16;
          }
        }

        else
        {
          v21 = v19;
          if (v20 - 1 < 2)
          {
            v21 = v18;
          }
        }

        v22 = *a4;
        if (v22 > 2)
        {
          v23 = v17;
          if (v22 != 3)
          {
            v23 = v16;
          }
        }

        else
        {
          v23 = v19;
          if (v22 - 1 < 2)
          {
            v23 = v18;
          }
        }

        v24 = v20 < v22;
        if (v21 != v23)
        {
          v24 = v21 < v23;
        }

        if (v24)
        {
          v25 = a2 + 1;
          if (a1 >= a2 && a1 < v25)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v26 = a4 + 1;
          LOBYTE(v20) = *a4;
          v25 = a2;
          if (a1 < a4)
          {
            ++a4;
          }

          else
          {
            ++a4;
            if (a1 < v26)
            {
              goto LABEL_30;
            }
          }
        }

        *a1 = v20;
LABEL_30:
        ++a1;
        if (a4 < v15)
        {
          a2 = v25;
          if (v25 < a3)
          {
            continue;
          }
        }

        break;
      }
    }

    a2 = a1;
    if (a1 != a4)
    {
      goto LABEL_78;
    }
  }

LABEL_77:
  if (a2 >= v15)
  {
    goto LABEL_78;
  }

LABEL_79:

  sub_269BEEF94(a5);
  return 1;
}

uint64_t sub_269BF05C0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_269BF064C(v3);
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

char *sub_269BF0660(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF1380(0, &qword_28034AB90, sub_269BF13E4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void sub_269BF07B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269BF0820(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269BF0820(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_269BF88B8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269BF086C(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  v10 = *(a5 + 48);
  *(v9 + 48) = *(a5 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a5 + 64);
  *(v9 + 96) = *(a5 + 80);
  v11 = *(a5 + 16);
  *(v9 + 16) = *a5;
  *(v9 + 32) = v11;
  v121 = a5;
  v122 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    sub_269BEEF5C(a5, v123);
    sub_269BEEF5C(a5, v123);
    sub_269BEEF5C(a5, v123);
    v14 = MEMORY[0x277D84F90];
LABEL_120:
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    v106 = swift_allocObject();
    v107 = *(v121 + 48);
    *(v106 + 48) = *(v121 + 32);
    *(v106 + 64) = v107;
    *(v106 + 80) = *(v121 + 64);
    *(v106 + 96) = *(v121 + 80);
    v108 = *(v121 + 16);
    *(v106 + 16) = *v121;
    *(v106 + 32) = v108;
    sub_269BEEF5C(v121, v123);
    sub_269BEEF5C(v121, v123);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_153:
      v14 = sub_269BF064C(v14);
    }

    v125 = v14;
    v109 = *(v14 + 2);
    if (v109 >= 2)
    {
      do
      {
        v110 = *v122;
        if (!*v122)
        {
          goto LABEL_157;
        }

        v111 = *&v14[16 * v109];
        v112 = &v14[16 * v109 - 16];
        v113 = *(v112 + 4);
        v114 = *(v112 + 5);
        sub_269BEEF5C(v121, v123);
        sub_269BF01F8((v110 + v111), (v110 + v113), (v110 + v114), v120, v121);
        if (v5)
        {
          break;
        }

        if (v114 < v111)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_269BF064C(v14);
        }

        if (v109 - 2 >= *(v14 + 2))
        {
          goto LABEL_147;
        }

        v115 = &v14[16 * v109];
        *v115 = v111;
        *(v115 + 1) = v114;
        v125 = v14;
        sub_269BF05C0(v109 - 1);
        v14 = v125;
        v109 = *(v125 + 2);
      }

      while (v109 > 1);
    }

    v105 = v121;
    sub_269BEEF94(v121);
LABEL_131:

    sub_269BEEF94(v105);
    return sub_269BEEF94(v105);
  }

  sub_269BEEF5C(a5, v123);
  sub_269BEEF5C(a5, v123);
  sub_269BEEF5C(a5, v123);
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v117 = a4;
  while (1)
  {
    v15 = v13 + 1;
    if (v13 + 1 < v12)
    {
      v16 = *v122;
      v17 = *(*v122 + v13);
      v18 = *(*v122 + v15);
      v19 = v121;
      v20 = *(v121 + 48);
      v123[2] = *(v121 + 32);
      v123[3] = v20;
      v123[4] = *(v121 + 64);
      v124 = *(v121 + 80);
      v21 = *(v121 + 16);
      v123[0] = *v121;
      v123[1] = v21;
      v22 = sub_269BEF710(v18, v17);
      v23 = v13;
      while (v12 - 2 != v23)
      {
        v24 = *(v16 + v23 + 2);
        v25 = *(v16 + v23 + 1);
        v26 = *v121;
        v27 = *(v121 + 32);
        if (v24 == 3)
        {
          v28 = *(v121 + 32);
        }

        else
        {
          v28 = *(v121 + 40);
        }

        v29 = 40.0;
        if (v24 - 1 >= 2)
        {
          v30 = *v121;
        }

        else
        {
          v30 = *(v121 + 24);
        }

        if (v24 - 1 < 2)
        {
          v29 = 30.0;
        }

        if (*(v16 + v23 + 2) > 2u)
        {
          v29 = 20.0;
        }

        else
        {
          v28 = v30;
        }

        v31 = v28 / v29;
        if (v25 != 3)
        {
          v27 = *(v121 + 40);
        }

        v32 = 40.0;
        if (v25 - 1 < 2)
        {
          v26 = *(v121 + 24);
          v32 = 30.0;
        }

        if (*(v16 + v23 + 1) > 2u)
        {
          v26 = v27;
          v32 = 20.0;
        }

        v33 = v26 / v32;
        v34 = v24 >= v25;
        if (v31 != v33)
        {
          v34 = v31 >= v33;
        }

        ++v23;
        if (v22 == v34)
        {
          v12 = v23 + 1;
          break;
        }
      }

      if (v22)
      {
        if (v12 < v13)
        {
          goto LABEL_150;
        }

        if (v13 < v12)
        {
          v35 = v12 - 1;
          v36 = v13;
          do
          {
            if (v36 != v35)
            {
              v39 = *v122;
              if (!*v122)
              {
                goto LABEL_156;
              }

              v37 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v37;
            }
          }

          while (++v36 < v35--);
        }
      }

      v15 = v12;
    }

    v40 = v122[1];
    if (v15 < v40)
    {
      if (__OFSUB__(v15, v13))
      {
        goto LABEL_149;
      }

      if (v15 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_151;
        }

        if (v13 + a4 < v40)
        {
          v40 = v13 + a4;
        }

        if (v40 < v13)
        {
LABEL_152:
          __break(1u);
          goto LABEL_153;
        }

        if (v15 != v40)
        {
          break;
        }
      }
    }

LABEL_68:
    if (v15 < v13)
    {
      goto LABEL_148;
    }

    v119 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_269BF2314(0, *(v14 + 2) + 1, 1, v14);
    }

    v57 = *(v14 + 2);
    v56 = *(v14 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      v14 = sub_269BF2314((v56 > 1), v57 + 1, 1, v14);
    }

    *(v14 + 2) = v58;
    v59 = &v14[16 * v57];
    *(v59 + 4) = v13;
    *(v59 + 5) = v15;
    v120 = *a1;
    if (!*a1)
    {
      goto LABEL_158;
    }

    if (v57)
    {
      while (1)
      {
        v60 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v14 + 4);
          v62 = *(v14 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_88:
          if (v64)
          {
            goto LABEL_137;
          }

          v77 = &v14[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_140;
          }

          v83 = &v14[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_144;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v58 - 2;
            }

            goto LABEL_109;
          }

          goto LABEL_102;
        }

        v87 = &v14[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_102:
        if (v82)
        {
          goto LABEL_139;
        }

        v90 = &v14[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_142;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_109:
        v98 = v60 - 1;
        if (v60 - 1 >= v58)
        {
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v99 = *v122;
        if (!*v122)
        {
          goto LABEL_155;
        }

        v100 = *&v14[16 * v98 + 32];
        v101 = &v14[16 * v60 + 32];
        v102 = *v101;
        v103 = *(v101 + 1);
        sub_269BEEF5C(v121, v123);
        sub_269BF01F8((v99 + v100), (v99 + v102), (v99 + v103), v120, v121);
        if (v5)
        {
          v105 = v121;
          goto LABEL_131;
        }

        if (v103 < v100)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_269BF064C(v14);
        }

        if (v98 >= *(v14 + 2))
        {
          goto LABEL_134;
        }

        v104 = &v14[16 * v98];
        *(v104 + 4) = v100;
        *(v104 + 5) = v103;
        v125 = v14;
        sub_269BF05C0(v60);
        v14 = v125;
        v58 = *(v125 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v14[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_135;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_136;
      }

      v72 = &v14[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_138;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_141;
      }

      if (v76 >= v68)
      {
        v94 = &v14[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_145;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_109;
      }

      goto LABEL_88;
    }

LABEL_3:
    v12 = v122[1];
    v13 = v119;
    a4 = v117;
    if (v119 >= v12)
    {
      goto LABEL_120;
    }
  }

  v41 = *v122;
  v42 = *(v121 + 40) / 20.0;
  v43 = *(v121 + 32) / 20.0;
  v44 = *(v121 + 24) / 30.0;
  v45 = (*v122 + v15);
  v46 = v13 - v15;
  v47 = *v121 / 40.0;
LABEL_49:
  v48 = *(v41 + v15);
  v49 = v46;
  v50 = v45;
  while (1)
  {
    if (v48 > 2)
    {
      v51 = v43;
      if (v48 != 3)
      {
        v51 = v42;
      }
    }

    else
    {
      v51 = v47;
      if ((v48 - 1) < 2)
      {
        v51 = v44;
      }
    }

    v52 = *(v50 - 1);
    if (v52 > 2)
    {
      v53 = v43;
      if (v52 != 3)
      {
        v53 = v42;
      }
    }

    else
    {
      v53 = v47;
      if (v52 - 1 < 2)
      {
        v53 = v44;
      }
    }

    v54 = v48 < v52;
    if (v51 != v53)
    {
      v54 = v51 < v53;
    }

    if (!v54)
    {
LABEL_48:
      ++v15;
      ++v45;
      --v46;
      if (v15 != v40)
      {
        goto LABEL_49;
      }

      v15 = v40;
      goto LABEL_68;
    }

    if (!v41)
    {
      break;
    }

    *v50 = v52;
    *--v50 = v48;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_48;
    }
  }

  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  __break(1u);
LABEL_155:
  v19 = v121;
  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  __break(1u);
LABEL_156:
  sub_269BEEF94(v19);
  sub_269BEEF94(v19);
  sub_269BEEF94(v19);
  __break(1u);
LABEL_157:
  sub_269BEEF94(v121);
  __break(1u);
LABEL_158:
  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  __break(1u);
LABEL_159:
  sub_269BEEF94(v121);
  sub_269BEEF94(v121);
  result = sub_269BEEF94(v121);
  __break(1u);
  return result;
}

uint64_t sub_269BF10F8(uint64_t *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = *(a2 + 80);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = a1[1];
  sub_269BEEF5C(a2, v13);
  sub_269BEEF5C(a2, v13);
  result = sub_269BF8B78();
  if (result >= v7)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        sub_269BEEF5C(a2, v13);
        sub_269BF002C(0, v7, 1, a1, a2);
      }

      return sub_269BEEF94(a2);
    }
  }

  else
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v11 = sub_269BF88A8();
        *(v11 + 16) = v10;
      }

      v12[0] = (v11 + 32);
      v12[1] = v10;
      sub_269BEEF5C(a2, v13);
      sub_269BF086C(v12, v13, a1, v9, a2);
      sub_269BEEF94(a2);
      *(v11 + 16) = 0;

      return sub_269BEEF94(a2);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_269BF1288(char **a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = *(a2 + 80);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *a1;
  sub_269BEEF5C(a2, v11);
  sub_269BEEF5C(a2, v11);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_269BF079C(v7);
  }

  v8 = *(v7 + 2);
  v10[0] = (v7 + 32);
  v10[1] = v8;
  sub_269BEEF5C(a2, v11);
  sub_269BF10F8(v10, a2);
  sub_269BEEF94(a2);
  *a1 = v7;

  return sub_269BEEF94(a2);
}

void sub_269BF1380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269BF13E4()
{
  if (!qword_28034AB98)
  {
    v0 = sub_269BF8938();
    if (!v1)
    {
      atomic_store(v0, &qword_28034AB98);
    }
  }
}

uint64_t sub_269BF1458()
{
  v0 = sub_269BF8588();
  __swift_allocate_value_buffer(v0, qword_28034CE20);
  __swift_project_value_buffer(v0, qword_28034CE20);
  return sub_269BF8578();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

SleepHealth::SleepScoreLevelRange __swiftcall SleepScoreLevelRange.init(totalPoints:algorithmVersion:)(Swift::Int totalPoints, SleepHealth::SleepScoreAlgorithmVersion algorithmVersion)
{
  v4 = v2;
  v5 = *algorithmVersion;
  swift_getKeyPath();
  v6 = sub_269BF180C(totalPoints, &v8);
  v7 = v8;
  *v4 = v5;
  v4[1] = v7;
  return v6;
}

SleepHealth::SleepScoreLevel_optional __swiftcall SleepScoreLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_269BF15EC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_269BF314C(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BF16A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = v2 - 1;
  v7 = 2 * v2;
  v8 = 2 * (v2 >> 1);
  v18 = v8;
  while (1)
  {
    if (v5 == v6)
    {
      goto LABEL_5;
    }

    v11 = *(v1 + 16);
    if (v5 >= v11)
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_12;
    }

    v12 = *(v1 + v3 + 32);
    v13 = *(v1 + v3 + 33);
    v14 = v7;
    v15 = v1 + v7 + v4;
    v16 = *(v15 + 30);
    v17 = *(v15 + 31);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_269BF3184(v1);
      v1 = result;
    }

    v9 = v1 + v3;
    *(v9 + 32) = v16;
    *(v9 + 33) = v17;
    v7 = v14;
    v10 = v1 + v14 + v4;
    *(v10 + 30) = v12;
    *(v10 + 31) = v13;
    v8 = v18;
LABEL_5:
    --v6;
    v4 -= 2;
    v3 += 2;
    ++v5;
    if (!(v8 + v4))
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BF180C@<X0>(unint64_t a1@<X0>, char *a3@<X8>)
{
  if (a1 > 0x64)
  {
    __break(1u);
  }

  else
  {
    swift_getAtKeyPath();
    if (v6 >= a1)
    {

      *a3 = 0;
      return result;
    }

    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    swift_getAtKeyPath();
  }

  result = sub_269BF8AC8();
  __break(1u);
  return result;
}

SleepHealth::SleepScoreLevelRange __swiftcall SleepScoreLevelRange.init(level:algorithmVersion:)(SleepHealth::SleepScoreLevel level, SleepHealth::SleepScoreAlgorithmVersion algorithmVersion)
{
  v3 = *level;
  *v2 = *algorithmVersion;
  v2[1] = v3;
  result.algorithmVersion = level;
  return result;
}

uint64_t SleepScoreLevelRange.chartingDisplayRange.getter()
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  swift_getKeyPath();
  swift_getAtKeyPath();

  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v2 + 1 >= 100)
    {
      v1 = 100;
    }

    else
    {
      v1 = v2 + 1;
    }

    if (v1 >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t SleepScoreLevelRange.lowerPointBound.getter()
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  return v1;
}

uint64_t SleepScoreLevelRange.upperPointBound.getter()
{
  swift_getKeyPath();
  swift_getAtKeyPath();

  return v1;
}

uint64_t static SleepScoreLevelRange.allCasesDescendingOrder(algorithmVersion:)(char *a1)
{
  v3 = *a1;
  v1 = _s11SleepHealth0A15ScoreLevelRangeV8allCases16algorithmVersionSayACGAA0ac9AlgorithmI0O_tFZ_0(&v3);

  return sub_269BF16A4(v1);
}

uint64_t SleepScoreLevelRange.hash(into:)()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return MEMORY[0x26D64C450](v1);
}

uint64_t SleepScoreLevelRange.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269BF8C18();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BF1CAC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_269BF8C18();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BF1D14()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return MEMORY[0x26D64C450](v1);
}

uint64_t sub_269BF1D60(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_269BF8C18();
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v3);
  return sub_269BF8C58();
}

uint64_t SleepScoreLevel.localizedTitle.getter()
{
  v0 = sub_269BF87B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8738();
  v4 = sub_269BDF7A8(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t SleepScoreLevel.localizedDescription.getter()
{
  v0 = sub_269BF87B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8738();
  v4 = sub_269BDF7A8(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t SleepScoreLevelRange.localizedRange.getter()
{
  v1 = sub_269BF87B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269BF8798();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = *(v0 + 1);
  sub_269BF8788();
  sub_269BF8778();
  swift_getKeyPath();
  v10 = v6;
  swift_getAtKeyPath();

  sub_269BF8758();
  sub_269BF8778();
  swift_getKeyPath();
  v10 = v6;
  swift_getAtKeyPath();

  sub_269BF8758();
  sub_269BF8778();
  sub_269BF87A8();
  v7 = sub_269BDF7A8(v4);
  (*(v2 + 8))(v4, v1);
  return v7;
}

char *sub_269BF2314(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF3630(0, &qword_28034AB90, sub_269BF13E4);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_269BF245C(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_280B61400, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_269BF2578(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034A470, &type metadata for SleepScoreMetricsDaySummaryBuilder.SleepStart, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_269BF26D0(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269BF3630(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_269BF28B0(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_269BF35E0(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_269BF29B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABC0, &type metadata for SleepScoreLevelRange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

void *sub_269BF2AC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269BF2BFC(a1, a2, a3, *v3, &qword_28034ABE8, MEMORY[0x277CC9A70], MEMORY[0x277CC9A70]);
  *v3 = result;
  return result;
}

void *sub_269BF2B18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269BF2BFC(a1, a2, a3, *v3, &qword_28034A478, type metadata accessor for SleepScoreDaySummary, type metadata accessor for SleepScoreDaySummary);
  *v3 = result;
  return result;
}

char *sub_269BF2B68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269BF2DDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269BF2B88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269BF2EE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_269BF2BA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_269BF3000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_269BF2BFC(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_269BF3630(0, a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_269BF2DDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABE0, &type metadata for SleepScoreNote.Contributor, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_269BF2EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABD8, &type metadata for SleepScoreNote.Customization, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
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

char *sub_269BF3000(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BF35E0(0, &qword_28034ABC0, &type metadata for SleepScoreLevelRange, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t _s11SleepHealth0A15ScoreLevelRangeV8allCases16algorithmVersionSayACGAA0ac9AlgorithmI0O_tFZ_0(char *a1)
{
  v1 = *a1;
  v19 = MEMORY[0x277D84F90];
  sub_269BF2BA8(0, 5, 0);
  v2 = v19;
  v4 = *(v19 + 16);
  v3 = *(v19 + 24);
  v5 = v3 >> 1;
  v6 = v4 + 1;
  if (v3 >> 1 <= v4)
  {
    sub_269BF2BA8((v3 > 1), v4 + 1, 1);
    v2 = v19;
    v3 = *(v19 + 24);
    v5 = v3 >> 1;
  }

  *(v2 + 16) = v6;
  v7 = v2 + 2 * v4;
  *(v7 + 32) = v1;
  *(v7 + 33) = 0;
  v8 = v4 + 2;
  if (v5 < (v4 + 2))
  {
    sub_269BF2BA8((v3 > 1), v4 + 2, 1);
    v2 = v19;
  }

  *(v2 + 16) = v8;
  v9 = v2 + 2 * v6;
  *(v9 + 32) = v1;
  *(v9 + 33) = 1;
  v10 = *(v2 + 24);
  v11 = v4 + 3;
  if ((v4 + 3) > (v10 >> 1))
  {
    sub_269BF2BA8((v10 > 1), v4 + 3, 1);
  }

  result = v19;
  *(v19 + 16) = v11;
  v13 = v19 + 2 * v8;
  *(v13 + 32) = v1;
  *(v13 + 33) = 2;
  v14 = *(v19 + 24);
  v15 = v4 + 4;
  if ((v4 + 4) > (v14 >> 1))
  {
    sub_269BF2BA8((v14 > 1), v4 + 4, 1);
    result = v19;
  }

  *(result + 16) = v15;
  v16 = result + 2 * v11;
  *(v16 + 32) = v1;
  *(v16 + 33) = 3;
  v17 = *(result + 24);
  if ((v4 + 5) > (v17 >> 1))
  {
    sub_269BF2BA8((v17 > 1), v4 + 5, 1);
    result = v19;
  }

  *(result + 16) = v4 + 5;
  v18 = result + 2 * v15;
  *(v18 + 32) = v1;
  *(v18 + 33) = 4;
  return result;
}

unint64_t sub_269BF3350()
{
  result = qword_28034ABA0;
  if (!qword_28034ABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034ABA0);
  }

  return result;
}

unint64_t sub_269BF33A8()
{
  result = qword_28034ABA8;
  if (!qword_28034ABA8)
  {
    sub_269BF35E0(255, &qword_28034ABB0, &type metadata for SleepScoreLevel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034ABA8);
  }

  return result;
}

unint64_t sub_269BF3428()
{
  result = qword_28034ABB8;
  if (!qword_28034ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034ABB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreLevelRange(unsigned __int16 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for SleepScoreLevelRange(_WORD *result, unsigned int a2, unsigned int a3)
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

void sub_269BF35E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269BF3630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269BF8B98();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t SleepScoreMetricsDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter()
{
  sub_269BD3170(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269BF8458();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BF39E8(v0 + *(v14 + 32), v13, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  if ((*(v5 + 48))(v13, 2, v4))
  {
    return 0;
  }

  (*(v5 + 32))(v10, v13, v4);
  sub_269BF39E8(v0 + *(v14 + 36), v3, sub_269BD3170);
  v15 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  if ((*(*(v15 - 8) + 48))(v3, 1, v15) == 1)
  {
    (*(v5 + 8))(v10, v4);
    sub_269BF61E4(v3, sub_269BD3170);
    return 0;
  }

  (*(v5 + 16))(v8, &v3[*(v15 + 28)], v4);
  sub_269BF61E4(v3, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  sub_269BF8418();
  v18 = v17;
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v10, v4);
  return v18;
}

uint64_t sub_269BF39E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SleepScoreMetricsDaySummary.Metrics.init(sleepDuration:awakeSegmentCount:awakeSegmentsDuration:sleepStartTime:deepSleepSegmentsDuration:remSegmentsDuration:classifiedSleepSegmentsDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  *a3 = a4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a5;
  v13 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v14 = v13[7];
  v15 = sub_269BF8458();
  result = (*(*(v15 - 8) + 32))(a3 + v14, a2, v15);
  *(a3 + v13[8]) = a6;
  *(a3 + v13[9]) = a7;
  *(a3 + v13[10]) = a8;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.init(morningIndex:gregorianCalendar:sleepDurationGoal:minimumRecommendedSleepDurationGoal:usualSleepStart:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v16 = a9 + v15[6];
  v17 = a9 + v15[7];
  v18 = v15[9];
  v19 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  v20 = sub_269BF8688();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = v15[5];
  v22 = sub_269BF8508();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  *v17 = a5;
  *(v17 + 8) = a6 & 1;
  sub_269BF5D6C(a7, a9 + v15[8], type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  return sub_269BF40EC(a8, a9 + v18, sub_269BD3170);
}

uint64_t SleepScoreMetricsDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_269BF8688();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SleepScoreMetricsDaySummary.morningIndex.setter(uint64_t a1)
{
  v3 = sub_269BF8688();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SleepScoreMetricsDaySummary.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SleepScoreMetricsDaySummary.gregorianCalendar.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SleepScoreMetricsDaySummary(0) + 20);
  v4 = sub_269BF8508();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SleepScoreMetricsDaySummary.sleepDurationGoal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v6 = v2 + *(result + 24);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SleepScoreMetricsDaySummary.minimumRecommendedSleepDurationGoal.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t sub_269BF40EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t SleepScoreMetricsDaySummary.SleepStartBaseline.hash(into:)(uint64_t a1)
{
  v2 = sub_269BF8458();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF39E8(v1, v8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x26D64C450](v9 != 1);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x26D64C450](2);
  sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_269BF86B8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SleepScoreMetricsDaySummary.SleepStartBaseline.hashValue.getter()
{
  v1 = v0;
  v2 = sub_269BF8458();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8C18();
  sub_269BF39E8(v1, v8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x26D64C450](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x26D64C450](2);
    sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_269BF86B8();
    (*(v3 + 8))(v5, v2);
  }

  return sub_269BF8C58();
}

uint64_t sub_269BF4578(uint64_t a1)
{
  v2 = sub_269BF8458();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF39E8(v1, v8, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x26D64C450](v9 != 1);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x26D64C450](2);
  sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_269BF86B8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_269BF4750(uint64_t a1)
{
  v2 = v1;
  v3 = sub_269BF8458();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BF8C18();
  sub_269BF39E8(v2, v9, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    MEMORY[0x26D64C450](v10 != 1);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x26D64C450](2);
    sub_269BF5D24(&qword_28034AAA8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_269BF86B8();
    (*(v4 + 8))(v7, v3);
  }

  return sub_269BF8C58();
}
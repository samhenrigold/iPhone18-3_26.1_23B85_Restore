uint64_t sub_1B4B2191C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioData);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
      StreamingAudioData.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B21B68@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutWeekContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
      WorkoutWeekContext.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutWeekContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B21DB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A50, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutRecord);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
      WorkoutRecord.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutRecord);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B21FE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = a1;
    v23 = a2;
    v21 = 0;
    memset(&v20[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
      StreamingAudioAvailable.init(_:)(v10, v19);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v20[0];
      a3[4] = v19[4];
      a3[5] = v16;
      *(a3 + 89) = *(v20 + 9);
      v17 = v19[1];
      *a3 = v19[0];
      a3[1] = v17;
      v18 = v19[3];
      a3[2] = v19[2];
      a3[3] = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B22248@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      RingsPropertiesQuery.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B22478@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
      InferenceFeedback.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B226A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3C468, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      WorkoutProperties.init(_:)(v10, &v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v18;
      *a3 = v17;
      *(a3 + 16) = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B228FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A9C40, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
      ActivitySummaryContext.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummaryContext);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B22B2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA508, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      v16 = *v10;
      if (*v10 >= 5)
      {
        sub_1B4B10B98();
        swift_allocError();
        swift_willThrow();
        sub_1B4B29AE4(a1, a2);
        sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        return sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
      }

      else
      {
        sub_1B4B29AE4(a1, a2);
        sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        result = sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext.TrainingLoadDay);
        *a3 = v16;
      }
    }
  }

  return result;
}

uint64_t sub_1B4B22DDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  Context = type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA518, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_TrainingLoadContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
      TrainingLoadContext.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_TrainingLoadContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B23028@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v23 = a1;
    v24 = a2;
    v22 = 0;
    memset(&v21[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      InferenceRequest.init(_:)(v10, v20);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v21[0];
      a3[6] = v20[6];
      a3[7] = v16;
      *(a3 + 121) = *(v21 + 9);
      v17 = v20[3];
      a3[2] = v20[2];
      a3[3] = v17;
      v18 = v20[5];
      a3[4] = v20[4];
      a3[5] = v18;
      v19 = v20[1];
      *a3 = v20[0];
      a3[1] = v19;
    }
  }

  return result;
}

uint64_t sub_1B4B232A8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      FitnessPlusPropertiesQuery.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B234D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v27 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7CB8, &unk_1B4D20170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType(0);
  v28 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout(0);
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  else
  {
    v26 = v15;
    v32 = a1;
    v33 = a2;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA740, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      v25 = a2;
      v20 = v26;
      sub_1B4B29F5C(v17, v26, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      sub_1B4974FBC(v20 + *(v13 + 28), v8, &qword_1EB8A7CB8, &unk_1B4D20170);
      v21 = *(v28 + 48);
      if (v21(v8, 1, v9) == 1)
      {
        *v11 = 0;
        v11[4] = 0;
        *(v11 + 2) = 0;
        sub_1B4D17BBC();
        if (v21(v8, 1, v9) != 1)
        {
          sub_1B4975024(v8, &qword_1EB8A7CB8, &unk_1B4D20170);
        }
      }

      else
      {
        sub_1B4B29EAC(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutActivityType);
      }

      sub_1B4B29E60();
      v22 = FIWorkoutActivityType.init(_:)(v11);
      v23 = v26;
      type metadata accessor for ActivitySharingFriendWorkout(0);
      v24 = v27;
      sub_1B4D176CC();
      sub_1B4D176CC();
      sub_1B4B29AE4(a1, v25);
      sub_1B4B29FC4(v23, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      result = sub_1B4B29FC4(v17, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Workout);
      *v24 = v22;
    }
  }

  return result;
}

uint64_t sub_1B4B23948@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA738, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
      ActivitySharingFriend.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext.Friend);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B23B78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA730, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySharingContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
      ActivitySharingContext.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySharingContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B23DC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioRequest);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);
      v17 = *v10;
      v16 = v10[1];

      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);
      *a3 = v17;
      a3[1] = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B23FF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B4D17B5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA728, MEMORY[0x1E69AA948], MEMORY[0x1E69AA940]);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      (*(v9 + 16))(v11, v14, v8);
      v17 = sub_1B4D17B4C();
      sub_1B4B29AE4(a1, a2);
      v18 = *(v9 + 8);
      v18(v11, v8);
      result = (v18)(v14, v8);
      *a3 = v17;
    }
  }

  return result;
}

uint64_t sub_1B4B24270@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    memset(v17, 0, 40);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA720, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch, &protocol conformance descriptor for Apple_Fitness_Intelligence_SanityTaskMismatch);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch);
      SanityTaskMismatch.init(_:)(v10, v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v17[1];
      *a3 = v17[0];
      *(a3 + 16) = v16;
      *(a3 + 24) = *(&v17[1] + 8);
    }
  }

  return result;
}

uint64_t sub_1B4B244CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA718, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_WeeklySummaryContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
      WeeklySummaryContext.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_WeeklySummaryContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B24718@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(&v18[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      AudioSynthesisVoiceAsset.init(_:)(v10, v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v17[1];
      *a3 = v17[0];
      a3[1] = v16;
      a3[2] = v18[0];
      *(a3 + 42) = *(v18 + 10);
    }
  }

  return result;
}

uint64_t sub_1B4B24974@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A9C58, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary, &protocol conformance descriptor for Apple_Fitness_Intelligence_ActivitySummary);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
      HKActivitySummaryRepresentable.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_ActivitySummary);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B24BA4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8AA0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioComplete);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);
      v17 = *v10;
      v16 = *(v10 + 1);
      v18 = *(v10 + 4);

      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);
      *a3 = v17;
      *(a3 + 8) = v16;
      *(a3 + 16) = v18;
    }
  }

  return result;
}

uint64_t sub_1B4B24DD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3A2F8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      FitnessPlusProperties.init(_:)(v10, &v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v18;
      *a3 = v17;
      *(a3 + 16) = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B2502C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A28, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
      v17 = *v10;
      v16 = v10[1];

      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);
      *a3 = v17;
      a3[1] = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B25258@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](Descriptor);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      FitnessContextQueryDescriptor.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B25488@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  MEMORY[0x1EEE9AC00](Metrics);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6750, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryMetrics);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      v16 = *v10;
      v17 = v10[1];
      v18 = *(v10 + 16);
      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
      *a3 = v16;
      *(a3 + 8) = v17;
      *(a3 + 16) = v18;
      *(a3 + 24) = v16 + v17;
    }
  }

  return result;
}

uint64_t sub_1B4B256C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
      WorkoutVoiceTranscript.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B25910@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA708, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext.Award);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
      ActivityAchievementAward.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext.Award);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B25B40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AwardsContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA700, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_AwardsContext);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
      AwardsContext.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AwardsContext);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B25D70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
      AudioSynthesisIntensity.init(_:)(v10, v16);
      sub_1B4B29AE4(a1, a2);
      result = sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
      *a3 = v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B25FB0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8A40, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
      v16 = *v10;
      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);
      *a3 = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B261D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      DeviceInferenceAvailability.ComponentAvailability.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B26420@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B4D17B8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }

  v24 = a1;
  v25 = a2;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1B4B29AF8(a1, a2);
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4B29F14(&qword_1EDC37998, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  sub_1B4D17D7C();
  if (v3)
  {
    sub_1B4B29AE4(a1, a2);
    return sub_1B4B29AE4(a1, a2);
  }

  v26 = a3;
  (*(v9 + 16))(v11, v14, v8);
  sub_1B4D17B7C();
  v17 = sub_1B4D18B1C();

  if (v17 == 1)
  {
    v18 = v26;
  }

  else
  {
    v18 = v26;
    if (v17)
    {
      sub_1B49BA334();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29AE4(a1, a2);
      v20 = *(v9 + 8);
      v20(v11, v8);
      return (v20)(v14, v8);
    }
  }

  sub_1B4B29AE4(a1, a2);
  sub_1B4B29AE4(a1, a2);
  v21 = *(v9 + 8);
  v21(v11, v8);
  result = (v21)(v14, v8);
  *v18 = v17;
  return result;
}

uint64_t sub_1B4B26778@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocationContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6F0, type metadata accessor for Apple_Fitness_Intelligence_LocationContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationContext);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
      LocationContext.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_LocationContext);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B269A8(uint64_t a1, unint64_t a2)
{
  v6 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  else
  {
    v22 = v2;
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate, &protocol conformance descriptor for Apple_Fitness_Intelligence_LocationCoordinate);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v12, v9, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      v15 = sub_1B4B29F14(&qword_1EB8AA6E8, type metadata accessor for LocationCoordinate, &protocol conformance descriptor for LocationCoordinate);
      v16 = *(v15 + 40);
      v17 = type metadata accessor for LocationCoordinate(0);
      v16(v9, v17, v15);
      sub_1B4B29FC4(v12, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B26C48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
      DeviceInferenceAvailability.init(_:)(v10, &v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v18;
      *a3 = v17;
      a3[1] = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B26E94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(&v19[2], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
      AnnounceUtteranceRequest.init(_:)(v10, v18);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v19[0];
      a3[2] = v18[2];
      a3[3] = v16;
      *(a3 + 58) = *(v19 + 10);
      v17 = v18[1];
      *a3 = v18[0];
      a3[1] = v17;
    }
  }

  return result;
}

uint64_t sub_1B4B270F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v27 = a1;
    v28 = a2;
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk, &protocol conformance descriptor for Apple_Fitness_Intelligence_StreamingAudioChunk);
    sub_1B4D17D7C();
    result = sub_1B4B29AE4(a1, a2);
    if (!v3)
    {
      sub_1B4B29EAC(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      v17 = *v10;
      v16 = *(v10 + 1);
      v29 = *(v10 + 4);
      v18 = *(v10 + 3);
      v19 = *(v10 + 4);
      v23 = *(v10 + 10);
      v20 = *(v10 + 6);
      v21 = *(v10 + 7);

      sub_1B498FC0C(v18, v19);
      sub_1B498FC0C(v20, v21);
      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);
      *a3 = v17;
      *(a3 + 8) = v16;
      *(a3 + 16) = v29;
      *(a3 + 24) = v18;
      *(a3 + 32) = v19;
      *(a3 + 40) = v23;
      *(a3 + 48) = v20;
      *(a3 + 56) = v21;
    }
  }

  return result;
}

uint64_t sub_1B4B2736C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v19 = a1;
    v20 = a2;
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6D8, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
      VitalsDay.init(_:)(v10, v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
      result = sub_1B4B29AE4(a1, a2);
      v16 = BYTE4(v17[0]);
      *a3 = v17[0];
      *(a3 + 4) = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B275C0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6C8, &unk_1B4D2FC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay(0);
  v24 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_VitalsContext(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - v16;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  else
  {
    v27 = a1;
    v28 = a2;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6D0, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_VitalsContext);
    v20 = v29;
    sub_1B4D17D7C();
    if (v20)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v17, v14, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
      sub_1B4974FBC(&v14[*(v12 + 20)], v7, &qword_1EB8AA6C8, &unk_1B4D2FC70);
      v29 = *(v24 + 48);
      if (v29(v7, 1, v8) == 1)
      {
        *v10 = 0;
        *(v10 + 1) = 0;
        *(v10 + 4) = 0;
        sub_1B4D17BBC();
        if (v29(v7, 1, v8) != 1)
        {
          sub_1B4975024(v7, &qword_1EB8AA6C8, &unk_1B4D2FC70);
        }
      }

      else
      {
        sub_1B4B29EAC(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext.VitalsDay);
      }

      VitalsDay.init(_:)(v10, v25);
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29FC4(v14, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
      result = sub_1B4B29FC4(v17, type metadata accessor for Apple_Fitness_Intelligence_VitalsContext);
      v21 = BYTE4(v25[0]);
      v22 = v23;
      *v23 = v25[0];
      *(v22 + 4) = v21;
    }
  }

  return result;
}

uint64_t sub_1B4B279B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      WorkoutPropertiesQuery.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B27BE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(qword_1EDC3C700, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsProperties);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      RingsProperties.init(_:)(v10, &v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v18;
      *a3 = v17;
      *(a3 + 16) = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B27E34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
      FitnessContextQueryResult.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryResult);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B28064@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA6B8, &qword_1B4D2FC68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33 - v7;
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v38 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FitnessContextQueryDescriptor(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  Request = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest(0);
  MEMORY[0x1EEE9AC00](Request);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v20 = 0;
    return swift_willThrow();
  }

  else
  {
    v42 = a1;
    v43 = a2;
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1B4B29AF8(a1, a2);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6C0, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
    v22 = v44;
    sub_1B4D17D7C();
    if (v22)
    {
      sub_1B4B29AE4(a1, a2);
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      v44 = a3;
      sub_1B4B29F5C(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);

      v35 = sub_1B4A02DAC(v23);

      sub_1B4974FBC(&v16[*(Request + 24)], v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
      v24 = v38 + 48;
      v25 = *(v38 + 48);
      if (v25(v8, 1, Descriptor) == 1)
      {
        v34 = v25;
        v38 = v24;
        v26 = v36;
        sub_1B4D17BBC();
        v27 = *(Descriptor + 20);
        if (qword_1EB8A64A8 != -1)
        {
          v32 = *(Descriptor + 20);
          swift_once();
          v27 = v32;
        }

        *(v26 + v27) = qword_1EB8AC728;
        v28 = v34(v8, 1, Descriptor);

        if (v28 != 1)
        {
          sub_1B4975024(v8, &qword_1EB8AA6B8, &qword_1B4D2FC68);
        }
      }

      else
      {
        v26 = v36;
        sub_1B4B29EAC(v8, v36, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      }

      v29 = v37;
      FitnessContextQueryDescriptor.init(_:)(v26, v37);
      v30 = v44;
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29AE4(a1, a2);
      sub_1B4B29FC4(v16, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
      sub_1B4B29FC4(v19, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextCoalescedQueryRequest);
      *v30 = v35;
      v31 = type metadata accessor for FitnessContextCoalescedQueryRequest(0);
      return sub_1B4B29EAC(v29, v30 + *(v31 + 20), type metadata accessor for FitnessContextQueryDescriptor);
    }
  }
}

uint64_t sub_1B4B285B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8AA6A8, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessContext);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
      FitnessContext.init(_:)(v10, v16);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessContext);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = *&v16[0];
    }
  }

  return result;
}

uint64_t sub_1B4B28800@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v16 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v18 = a1;
    v19 = a2;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
    sub_1B4D17D7C();
    if (!v3)
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
      InferenceRecord.init(_:)(v10, a3);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
    }

    return sub_1B4B29AE4(a1, a2);
  }
}

uint64_t sub_1B4B28A48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  v27 = a1;
  v28 = a2;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4B29F14(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17D7C();
  if (!v3)
  {
    sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v16 = &v10[*(v8 + 20)];
    v17 = *(v16 + 1);
    if (v17)
    {
      v18 = &v10[*(v8 + 24)];
      v19 = *(v18 + 1);
      if (v19)
      {
        v29 = *v16;
        v23 = *v18;

        sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
        sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
        result = sub_1B4B29AE4(a1, a2);
        *a3 = v29;
        a3[1] = v17;
        a3[2] = v23;
        a3[3] = v19;
        return result;
      }

      v20 = 1;
    }

    else
    {
      v20 = 0;
    }

    sub_1B498C3D8();
    swift_allocError();
    *v21 = v20;
    swift_willThrow();
    sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4B29AE4(a1, a2);
}

uint64_t sub_1B4B28D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      AudioSynthesisSettings.init(_:)(v10, &v18);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v20;
      v17 = v19;
      *a3 = v18;
      *(a3 + 16) = v17;
      *(a3 + 32) = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B28F94@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
      AudioSynthesisVoiceSelection.init(_:)(v10, &v17);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
      result = sub_1B4B29AE4(a1, a2);
      v16 = v18;
      *a3 = v17;
      a3[1] = v16;
    }
  }

  return result;
}

uint64_t sub_1B4B291E0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v20 = a1;
    v21 = a2;
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A9808, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange, &protocol conformance descriptor for Apple_Fitness_Intelligence_CacheIndexRange);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      v16 = *v10;
      v17 = v10[1];
      result = sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
      if (v17 < v16)
      {
        __break(1u);
      }

      else
      {
        sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_CacheIndexRange);
        result = sub_1B4B29AE4(a1, a2);
        *a3 = v16;
        a3[1] = v17;
      }
    }
  }

  return result;
}

uint64_t sub_1B4B2943C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v14 = 0;
    return swift_willThrow();
  }

  else
  {
    v21 = a1;
    v22 = a2;
    v20 = 0;
    memset(&v19[1], 0, 32);
    sub_1B498FC0C(a1, a2);
    sub_1B4D17BDC();
    sub_1B4B29F14(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioStreamDescription);
    sub_1B4D17D7C();
    if (v3)
    {
      return sub_1B4B29AE4(a1, a2);
    }

    else
    {
      sub_1B4B29F5C(v13, v10, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
      v16 = *v10;
      v19[0] = *(v10 + 8);
      v17 = *(v10 + 3);
      v18 = *(v10 + 4);
      sub_1B4B29FC4(v10, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
      sub_1B4B29FC4(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
      result = sub_1B4B29AE4(a1, a2);
      *a3 = v16;
      *(a3 + 8) = v19[0];
      *(a3 + 24) = v17;
      *(a3 + 32) = v18;
    }
  }

  return result;
}

void sub_1B4B296A8(uint64_t *a1)
{
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v30[0] = *a1;
  v30[1] = v6;
  v30[2] = v8;
  v30[3] = v9;
  v10 = sub_1B4B2A024();
  (*(v10 + 32))(&type metadata for AudioSynthesisVoice, v10);
  if (!v1)
  {
    sub_1B4B29F14(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v11 = sub_1B4D17D6C();
    v13 = v12;
    sub_1B4B29FC4(v5, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    v30[5] = 0;
    v14 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v15 = sub_1B4D1817C();
    v16 = [v14 initWithSuiteName_];

    if (v16)
    {
      v17 = sub_1B4D176AC();
      v18 = sub_1B4D1817C();
      v29 = v16;
      [v16 setValue:v17 forKey:v18];

      v19 = sub_1B4D1817C();
      CFPreferencesAppSynchronize(v19);

      v20 = [objc_allocWithZone(NPSManagerBridge) init];
      v21 = sub_1B4D1817C();
      sub_1B49B554C(&unk_1F2CBB020);
      sub_1B497CBA8(&unk_1F2CBB040);
      v22 = sub_1B4D185FC();

      [v20 synchronizeUserDefaultsDomain:v21 keys:v22];

      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v23 = sub_1B4D17F6C();
      __swift_project_value_buffer(v23, qword_1EDC3CED0);

      v24 = sub_1B4D17F5C();
      v25 = sub_1B4D1873C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v30[0] = v27;
        *v26 = 136315138;
        *(v26 + 4) = sub_1B49558AC(v7, v6, v30);
        _os_log_impl(&dword_1B4953000, v24, v25, "Wrote user selected voice to NPS: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1B8C7DDA0](v27, -1, -1);
        MEMORY[0x1B8C7DDA0](v26, -1, -1);
      }

      sub_1B49DDD2C(v11, v13);
    }

    else
    {
      sub_1B4B2A078();
      swift_allocError();
      swift_willThrow();
      sub_1B49DDD2C(v11, v13);
    }
  }
}

uint64_t sub_1B4B29AE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B49DDD2C(result, a2);
  }

  return result;
}

uint64_t sub_1B4B29AF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B498FC0C(result, a2);
  }

  return result;
}

char *sub_1B4B29B0C(uint64_t a1, unint64_t a2)
{
  v5 = sub_1B4D17BEC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  if (a2 >> 60 == 15)
  {
    sub_1B49BA334();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return v8;
  }

  v19 = a1;
  v20 = a2;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1B498FC0C(a1, a2);
  sub_1B4D17BDC();
  sub_1B4B29F14(qword_1EDC3BD10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);
  sub_1B4D17D7C();
  if (v2)
  {
LABEL_10:
    sub_1B4B29AE4(a1, a2);
    return v8;
  }

  sub_1B4B29F5C(v11, v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
  if (v8[8] != 1)
  {
    sub_1B4B29E0C();
    swift_allocError();
    swift_willThrow();
    sub_1B4B29FC4(v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    sub_1B4B29FC4(v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    goto LABEL_10;
  }

  if (*v8)
  {
    v13 = &v8[*(v6 + 24)];
    v15 = *v13;
    v14 = *(v13 + 1);

    sub_1B4B29FC4(v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    if (v14)
    {
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_1B4B29FC4(v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    v8 = 0;
  }

  sub_1B4B29FC4(v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
  sub_1B4B29AE4(a1, a2);
  return v8;
}

unint64_t sub_1B4B29E0C()
{
  result = qword_1EB8AA6F8;
  if (!qword_1EB8AA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA6F8);
  }

  return result;
}

unint64_t sub_1B4B29E60()
{
  result = qword_1EDC36DC8;
  if (!qword_1EDC36DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC36DC8);
  }

  return result;
}

uint64_t sub_1B4B29EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B29F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4B29F5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B29FC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4B2A024()
{
  result = qword_1EB8AA748;
  if (!qword_1EB8AA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA748);
  }

  return result;
}

unint64_t sub_1B4B2A078()
{
  result = qword_1EB8AA750;
  if (!qword_1EB8AA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8AA750);
  }

  return result;
}

unint64_t sub_1B4B2A0E0()
{
  result = qword_1EB8AA758[0];
  if (!qword_1EB8AA758[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB8AA758);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.query.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A6680, &unk_1B4D2FD90);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  sub_1B4D17BBC();
  v10 = *(v7 + 28);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = *(v7 + 32);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.properties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A6678, &qword_1B4D3CE20);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.query.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A6668, &qword_1B4D1A658);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  sub_1B4D17BBC();
  v10 = *(v7 + 28);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = *(v7 + 32);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  return result;
}

BOOL sub_1B4B2A79C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.properties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.query.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A6658, &qword_1B4D1A650);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  sub_1B4D17BBC();
  v10 = *(v7 + 28);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = *(v7 + 32);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6658, &qword_1B4D1A650);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.properties.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A6650, &unk_1B4D2FDC0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6650, &unk_1B4D2FDC0);
  }

  return result;
}

uint64_t sub_1B4B2ADC0@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = a1(0, v6);
  sub_1B4974FBC(v2 + *(v9 + 28), v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v11 = *(*(Metrics - 8) + 48);
  if (v11(v8, 1, Metrics) != 1)
  {
    return sub_1B4B2C598(v8, a2, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_1B4D17BBC();
  result = (v11)(v8, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQueryResult.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.query.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 20);
  sub_1B4975024(v1 + v3, &qword_1EB8A6658, &qword_1B4D1A650);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.properties.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6650, &unk_1B4D2FDC0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1B4B2B3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4B2C598(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v6 = *(*(Metrics - 8) + 56);

  return v6(v2 + v4, 0, 1, Metrics);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v9;
  a1[2] = v9;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v9;
  a1[4] = v9;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_PropertyRecordCheckpoint.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.steps.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.workoutQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v1 + *(Plan + 20), v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    }

    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v8 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v8;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4D17BBC();
  v10 = *(v9 + 28);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = *(v9 + 32);
  v13 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

void (*Apple_Fitness_Intelligence_QueryPlan.workoutQuery.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      return sub_1B4B2C1B0;
    }

    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v16 = MEMORY[0x1E69E7CC0];
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 1) = v16;
  sub_1B4D17BBC();
  v17 = *(v9 + 28);
  v18 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
  v19 = *(v9 + 32);
  v20 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
  return sub_1B4B2C1B0;
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.ringsQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v1 + *(Plan + 20), v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    }

    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4D17BBC();
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = *(v10 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

uint64_t sub_1B4B2C448@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  v5 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 1) = v5;
  v6 = a1(0);
  sub_1B4D17BBC();
  v7 = *(v6 + 28);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = *(v6 + 32);
  v10 = a2(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a3[v9], 1, 1, v10);
}

uint64_t sub_1B4B2C598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Apple_Fitness_Intelligence_QueryPlan.ringsQuery.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 1) = v16;
    sub_1B4D17BBC();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    v19 = *(v9 + 32);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
    return sub_1B4B2C8C0;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return sub_1B4B2C8C0;
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.fitnessPlusQuery.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v1 + *(Plan + 20), v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    }

    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 1) = v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4D17BBC();
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = *(v10 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

uint64_t sub_1B4B2CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1B4B3281C(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  sub_1B4975024(a2 + v15, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  sub_1B4B2C598(v14, a2 + v15, a7);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_1B4B2CC4C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, __n128 a4)
{
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  sub_1B4975024(v4 + v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  sub_1B4B2C598(a1, v4 + v7, a2);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(*(v8 - 8) + 56);

  return v9(v4 + v7, 0, 1, v8);
}

void (*Apple_Fitness_Intelligence_QueryPlan.fitnessPlusQuery.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A81E0, &unk_1B4D2FDD0);
LABEL_15:
    v16 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    *(v12 + 1) = v16;
    sub_1B4D17BBC();
    v17 = *(v9 + 28);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v18 - 8) + 56))(&v12[v17], 1, 1, v18);
    v19 = *(v9 + 32);
    v20 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
    (*(*(v20 - 8) + 56))(&v12[v19], 1, 1, v20);
    return sub_1B4B2D004;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return sub_1B4B2D004;
}

void sub_1B4B2D048(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v8 = *a1;
  v9 = (*a1)[4];
  v10 = (*a1)[5];
  v11 = *(*a1 + 12);
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v16 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C(v13, v12, a5);
    sub_1B4975024(v14 + v11, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v12, v14 + v11, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14 + v11, 0, 1, v9);
    sub_1B4B327BC(v13, a6);
  }

  else
  {
    sub_1B4975024(v14 + v11, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v13, v14 + v11, a3);
    swift_storeEnumTagMultiPayload();
    (*(v10 + 56))(v14 + v11, 0, 1, v9);
  }

  free(v13);
  free(v12);
  free(v16);

  free(v8);
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  return sub_1B4D17BBC();
}

void Apple_Fitness_Intelligence_DateRangeDescriptor.dateRangeDescriptorType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_DateRangeDescriptor.dateRangeDescriptorType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarToday.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarToday.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D374;
}

void *sub_1B4B2D374(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisWeek.getter()
{
  result = *v0;
  if (*(v0 + 8) != 1)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisWeek.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 1)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D3E8;
}

void *sub_1B4B2D3E8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 1;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisMonth.getter()
{
  result = *v0;
  if (*(v0 + 8) != 2)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisMonth.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 2)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D460;
}

void *sub_1B4B2D460(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 2;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisYear.getter()
{
  result = *v0;
  if (*(v0 + 8) != 3)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.soFarThisYear.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 3)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D4D8;
}

void *sub_1B4B2D4D8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 3;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastWeek.getter()
{
  result = *v0;
  if (*(v0 + 8) != 4)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastWeek.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 4)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D550;
}

void *sub_1B4B2D550(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 4;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastMonth.getter()
{
  result = *v0;
  if (*(v0 + 8) != 5)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastMonth.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 5)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D5C8;
}

void *sub_1B4B2D5C8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 5;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastYear.getter()
{
  result = *v0;
  if (*(v0 + 8) != 6)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastYear.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 6)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D640;
}

void *sub_1B4B2D640(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 6;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.sameTimeLastWeek.getter()
{
  result = *v0;
  if (*(v0 + 8) != 7)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.sameTimeLastWeek.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 7)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D6B8;
}

void *sub_1B4B2D6B8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 7;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.sameTimeLastMonth.getter()
{
  result = *v0;
  if (*(v0 + 8) != 8)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.sameTimeLastMonth.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 8)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D730;
}

void *sub_1B4B2D730(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 8;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.sameTimeLastYear.getter()
{
  result = *v0;
  if (*(v0 + 8) != 9)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.sameTimeLastYear.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 9)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D7A8;
}

void *sub_1B4B2D7A8(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 9;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastThirtyDays.getter()
{
  result = *v0;
  if (*(v0 + 8) != 10)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastThirtyDays.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 10)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D820;
}

void *sub_1B4B2D820(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 10;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastSixtyDays.getter()
{
  result = *v0;
  if (*(v0 + 8) != 11)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastSixtyDays.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 11)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D898;
}

void *sub_1B4B2D898(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 11;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastNinetyDays.getter()
{
  result = *v0;
  if (*(v0 + 8) != 12)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastNinetyDays.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 12)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D910;
}

void *sub_1B4B2D910(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 12;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastFourWeeks.getter()
{
  result = *v0;
  if (*(v0 + 8) != 13)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastFourWeeks.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 13)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2D988;
}

void *sub_1B4B2D988(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 13;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.allTime.getter()
{
  result = *v0;
  if (*(v0 + 8) != 14)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.allTime.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 14)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2DA00;
}

void *sub_1B4B2DA00(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 14;
  return result;
}

double Apple_Fitness_Intelligence_DateRangeDescriptor.lastSixWeeks.getter()
{
  result = *v0;
  if (*(v0 + 8) != 15)
  {
    return 0.0;
  }

  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DateRangeDescriptor.lastSixWeeks.modify(uint64_t a1))()
{
  *(a1 + 8) = v1;
  v2 = *v1;
  if (*(v1 + 8) != 15)
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_1B4B2DA78;
}

void *sub_1B4B2DA78(void *result)
{
  v1 = result[1];
  *v1 = *result;
  *(v1 + 8) = 15;
  return result;
}

uint64_t Apple_Fitness_Intelligence_DateRangeDescriptor.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B2DB64@<X0>(uint64_t (*a1)(void, double)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  v9 = a1(0, v6);
  sub_1B4974FBC(v2 + *(v9 + 28), v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return sub_1B4B2C598(v8, a2, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  *a2 = 0;
  *(a2 + 8) = -1;
  sub_1B4D17BBC();
  result = (v11)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQuery.range.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertiesQuery.range.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = -1;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  return sub_1B4B57A88;
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQuery.filters.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7DF0, &qword_1B4D202E0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  }

  v9 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v9;
  a1[4] = v9;
  a1[5] = v9;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A7DF0, &qword_1B4D202E0);
  }

  return result;
}

uint64_t sub_1B4B2E188@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A7DF0, &qword_1B4D202E0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v10;
  a2[2] = v10;
  a2[3] = v10;
  a2[4] = v10;
  a2[5] = v10;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DF0, &qword_1B4D202E0);
  }

  return result;
}

uint64_t sub_1B4B2E2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A7DF0, &qword_1B4D202E0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_WorkoutPropertiesQuery.filters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A7DF0, &qword_1B4D202E0);
  sub_1B4B2C598(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertiesQuery.filters.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7DF0, &qword_1B4D202E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    v14[1] = v17;
    v14[2] = v17;
    v14[3] = v17;
    v14[4] = v17;
    v14[5] = v17;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7DF0, &qword_1B4D202E0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  }

  return sub_1B4B2E708;
}

void sub_1B4B2E708(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    sub_1B4975024(v10 + v4, &qword_1EB8A7DF0, &qword_1B4D202E0);
    sub_1B4B2C598(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7DF0, &qword_1B4D202E0);
    sub_1B4B2C598(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t sub_1B4B2E940@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4B2E9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void (*Apple_Fitness_Intelligence_RingsPropertiesQuery.range.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = -1;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  return sub_1B4B2ECC0;
}

void sub_1B4B2ECC0(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    sub_1B4975024(v10 + v4, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    sub_1B4B2C598(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    sub_1B4B2C598(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL sub_1B4B2EE64(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4B2EF9C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4B2F048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v10;
  a2[2] = v10;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  }

  return result;
}

uint64_t sub_1B4B2F1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_RingsPropertiesQuery.filters.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    v14[1] = v17;
    v14[2] = v17;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  }

  return sub_1B4B2F508;
}

void sub_1B4B2F508(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    sub_1B4975024(v10 + v4, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    sub_1B4B2C598(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7BE0, &qword_1B4D1FE90);
    sub_1B4B2C598(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

BOOL sub_1B4B2F6AC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4B2F7E4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_RingsPropertiesQuery.propertyKinds.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B4B2F97C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, double)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = a2(0, v7);
  sub_1B4974FBC(a1 + *(v10 + 28), v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return sub_1B4B2C598(v9, a3, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  *a3 = 0;
  *(a3 + 8) = -1;
  sub_1B4D17BBC();
  result = (v12)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  }

  return result;
}

uint64_t sub_1B4B2FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v11, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  v12 = *((a5)(0) + 28);
  sub_1B4975024(a2 + v12, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  sub_1B4B2C598(v11, a2 + v12, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  return (*(v9 + 56))(a2 + v12, 0, 1, v8);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.range.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = -1;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7BE8, &qword_1B4D1FE98);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  }

  return sub_1B4B57A88;
}

uint64_t sub_1B4B2FEBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  a2[1] = v10;
  a2[2] = v10;
  a2[3] = v10;
  a2[4] = v10;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  }

  return result;
}

uint64_t sub_1B4B3002C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery.filters.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    v14[1] = v17;
    v14[2] = v17;
    v14[3] = v17;
    v14[4] = v17;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  }

  return sub_1B4B30384;
}

void sub_1B4B30384(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 12);
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v5, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    sub_1B4975024(v10 + v4, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    sub_1B4B2C598(v5, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  }

  else
  {
    sub_1B4975024(v10 + v4, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
    sub_1B4B2C598(v6, v10 + v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
    (*(v8 + 56))(v10 + v4, 0, 1, v7);
  }

  free(v6);
  free(v5);
  free(v9);

  free(v3);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.workoutPropertiesQueryBatch.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B3080C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B30980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
  sub_1B4975024(a2, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.workoutPropertiesQueryBatch.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryBatch.workoutPropertiesQueryBatch.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
      return sub_1B4B30D94;
    }

    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *v11 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  return sub_1B4B30D94;
}

void sub_1B4B30D94(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    sub_1B4975024(v9, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v6, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v7, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.WorkoutPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.ringsPropertiesQueryBatch.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B31090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B31208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  sub_1B4975024(a2, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.ringsPropertiesQueryBatch.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

uint64_t sub_1B4B313F8@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_SnapshotQueryBatch.ringsPropertiesQueryBatch.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AAA50, &unk_1B4D2FDE0);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4B31668;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  return sub_1B4B31668;
}

void sub_1B4B31668(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    sub_1B4975024(v9, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v6, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v7, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.RingsPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.fitnessPlusPropertiesQueryBatch.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B31964@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B31ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  sub_1B4975024(a2, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryBatch.fitnessPlusPropertiesQueryBatch.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryBatch.fitnessPlusPropertiesQueryBatch.modify(void *a1))(uint64_t **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA50, &unk_1B4D2FDE0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8AAA50, &unk_1B4D2FDE0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AAA50, &unk_1B4D2FDE0);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4B31EF4;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.OneOf_QueryBatch);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  return sub_1B4B31EF4;
}

void sub_1B4B31EF4(uint64_t **a1, char a2, double a3)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    sub_1B4975024(v9, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v6, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
    sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8AAA50, &unk_1B4D2FDE0);
    sub_1B4B2C598(v7, v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryBatch.FitnessPlusPropertiesQueryBatch);
    swift_storeEnumTagMultiPayload();
    (*(v5 + 56))(v9, 0, 1, v4);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t sub_1B4B32090@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4B3212C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4B3251C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4B325B8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_QueryMetrics.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B327BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4B3281C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4B32884@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A6668, &qword_1B4D1A658);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v10;
  sub_1B4D17BBC();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = *(v8 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  return result;
}

uint64_t sub_1B4B32A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A6668, &qword_1B4D1A658);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.query.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6668, &qword_1B4D1A658);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    sub_1B4D17BBC();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    v20 = *(v9 + 32);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6668, &qword_1B4D1A658);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  return sub_1B4B32E4C;
}

void sub_1B4B32E4C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4975024(v9 + v3, &qword_1EB8A6668, &qword_1B4D1A658);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6668, &qword_1B4D1A658);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B4B3302C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6660, &unk_1B4D2FDB0);
  }

  return result;
}

uint64_t sub_1B4B33198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.properties.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6660, &unk_1B4D2FDB0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6660, &unk_1B4D2FDB0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  return sub_1B4B334EC;
}

void sub_1B4B334EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    sub_1B4975024(v9 + v3, &qword_1EB8A6660, &unk_1B4D2FDB0);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6660, &unk_1B4D2FDB0);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B4B33690(uint64_t a1, uint64_t a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  return (*(v5 + 56))(a2 + v8, 0, 1, Metrics);
}

void (*Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult.metrics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5[2] = Metrics;
  v10 = *(Metrics - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Metrics) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, Metrics) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  return sub_1B4B57A8C;
}

uint64_t sub_1B4B33AB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A6680, &unk_1B4D2FD90);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v10;
  sub_1B4D17BBC();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = *(v8 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  return result;
}

uint64_t sub_1B4B33CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A6680, &unk_1B4D2FD90);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_RingsPropertiesQueryResult.query.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6680, &unk_1B4D2FD90);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    sub_1B4D17BBC();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    v20 = *(v9 + 32);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6680, &unk_1B4D2FD90);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  return sub_1B4B3407C;
}

void sub_1B4B3407C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4975024(v9 + v3, &qword_1EB8A6680, &unk_1B4D2FD90);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6680, &unk_1B4D2FD90);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL sub_1B4B34220(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 20), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4B34358(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 20);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4B34404@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6678, &qword_1B4D3CE20);
  }

  return result;
}

uint64_t sub_1B4B34570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A6678, &qword_1B4D3CE20);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_RingsPropertiesQueryResult.properties.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6678, &qword_1B4D3CE20) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6678, &qword_1B4D3CE20);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6678, &qword_1B4D3CE20);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  return sub_1B4B348C4;
}

void sub_1B4B348C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    sub_1B4975024(v9 + v3, &qword_1EB8A6678, &qword_1B4D3CE20);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6678, &qword_1B4D3CE20);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_RingsProperties);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B4B34A68(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t sub_1B4B34B14(uint64_t a1, uint64_t a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  return (*(v5 + 56))(a2 + v8, 0, 1, Metrics);
}

void (*Apple_Fitness_Intelligence_RingsPropertiesQueryResult.metrics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5[2] = Metrics;
  v10 = *(Metrics - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Metrics) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, Metrics) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  return sub_1B4B34E60;
}

void sub_1B4B34E60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    sub_1B4975024(v9 + v3, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6670, &unk_1B4D2FDA0);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B4B350A8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_1B4D17BBC();
  v8 = a1(0);
  v9 = v8[5];
  v10 = a2(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = v8[6];
  v12 = a3(0);
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  v13 = v8[7];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v15 = *(*(Metrics - 8) + 56);

  return v15(a4 + v13, 1, 1, Metrics);
}

uint64_t sub_1B4B351D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A6658, &qword_1B4D1A650);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  v10 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = v10;
  sub_1B4D17BBC();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = *(v8 + 32);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6658, &qword_1B4D1A650);
  }

  return result;
}

uint64_t sub_1B4B353C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A6658, &qword_1B4D1A650);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.query.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6658, &qword_1B4D1A650);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    *v14 = MEMORY[0x1E69E7CC0];
    *(v14 + 1) = v17;
    sub_1B4D17BBC();
    v18 = *(v9 + 28);
    v19 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
    (*(*(v19 - 8) + 56))(&v14[v18], 1, 1, v19);
    v20 = *(v9 + 32);
    v21 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6658, &qword_1B4D1A650);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  return sub_1B4B357A0;
}

void sub_1B4B357A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4975024(v9 + v3, &qword_1EB8A6658, &qword_1B4D1A650);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6658, &qword_1B4D1A650);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B4B35980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A6650, &unk_1B4D2FDC0);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6650, &unk_1B4D2FDC0);
  }

  return result;
}

uint64_t sub_1B4B35AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A6650, &unk_1B4D2FDC0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.properties.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6650, &unk_1B4D2FDC0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6650, &unk_1B4D2FDC0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6650, &unk_1B4D2FDC0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  }

  return sub_1B4B35E40;
}

void sub_1B4B35E40(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[5], v4, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    sub_1B4975024(v9 + v3, &qword_1EB8A6650, &unk_1B4D2FDC0);
    sub_1B4B2C598(v4, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
  }

  else
  {
    sub_1B4975024(v9 + v3, &qword_1EB8A6650, &unk_1B4D2FDC0);
    sub_1B4B2C598(v5, v9 + v3, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1B4B35FE4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, double)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - v8;
  v10 = a2(0, v7);
  sub_1B4974FBC(a1 + *(v10 + 28), v9, &qword_1EB8A6670, &unk_1B4D2FDA0);
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v12 = *(*(Metrics - 8) + 48);
  if (v12(v9, 1, Metrics) != 1)
  {
    return sub_1B4B2C598(v9, a3, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_1B4D17BBC();
  result = (v12)(v9, 1, Metrics);
  if (result != 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A6670, &unk_1B4D2FDA0);
  }

  return result;
}

uint64_t sub_1B4B36150(uint64_t a1, uint64_t a2)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(Metrics - 8);
  MEMORY[0x1EEE9AC00](Metrics);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  sub_1B4B2C598(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  return (*(v5 + 56))(a2 + v8, 0, 1, Metrics);
}

void (*Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult.metrics.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6670, &unk_1B4D2FDA0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5[2] = Metrics;
  v10 = *(Metrics - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, Metrics) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, Metrics) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6670, &unk_1B4D2FDA0);
    }
  }

  else
  {
    sub_1B4B2C598(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics);
  }

  return sub_1B4B57A8C;
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.workoutPropertiesQueryResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  sub_1B4974FBC(v2, &v16 - v5, &qword_1EB8A6688, &qword_1B4D1A660);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6688, &qword_1B4D1A660);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  }

  sub_1B4D17BBC();
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v9 = v8[5];
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  v11 = v8[6];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = v8[7];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  return (*(*(Metrics - 8) + 56))(a1 + v13, 1, 1, Metrics);
}

uint64_t sub_1B4B36824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  sub_1B4975024(a2, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.workoutPropertiesQueryResult.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryResult.workoutPropertiesQueryResult.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A6688, &qword_1B4D1A660);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6688, &qword_1B4D1A660);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
      return sub_1B4B36CE0;
    }

    sub_1B4B327BC(v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  }

  sub_1B4D17BBC();
  v16 = v10[5];
  v17 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
  v18 = v10[6];
  v19 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutProperties(0);
  (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
  v20 = v10[7];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  (*(*(Metrics - 8) + 56))(v13 + v20, 1, 1, Metrics);
  return sub_1B4B36CE0;
}

void sub_1B4B36CE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    sub_1B4975024(v8, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.ringsPropertiesQueryResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  sub_1B4974FBC(v2, &v16 - v5, &qword_1EB8A6688, &qword_1B4D1A660);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6688, &qword_1B4D1A660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  }

  sub_1B4D17BBC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v10 = v9[5];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  return (*(*(Metrics - 8) + 56))(a1 + v14, 1, 1, Metrics);
}

uint64_t sub_1B4B3709C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  sub_1B4975024(a2, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.ringsPropertiesQueryResult.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryResult.ringsPropertiesQueryResult.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A6688, &qword_1B4D1A660);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6688, &qword_1B4D1A660);
LABEL_15:
    sub_1B4D17BBC();
    v16 = v10[5];
    v17 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v10[6];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_RingsProperties(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v10[7];
    Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
    (*(*(Metrics - 8) + 56))(v13 + v20, 1, 1, Metrics);
    return sub_1B4B3755C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4B327BC(v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    goto LABEL_15;
  }

  sub_1B4B2C598(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  return sub_1B4B3755C;
}

void sub_1B4B3755C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    sub_1B4975024(v8, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.fitnessPlusPropertiesQueryResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  sub_1B4974FBC(v2, &v16 - v5, &qword_1EB8A6688, &qword_1B4D1A660);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8A6688, &qword_1B4D1A660);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
  }

  sub_1B4D17BBC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v10 = v9[5];
  v11 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  v12 = v9[6];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = v9[7];
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  return (*(*(Metrics - 8) + 56))(a1 + v14, 1, 1, Metrics);
}

uint64_t sub_1B4B37918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  sub_1B4975024(a2, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResult.fitnessPlusPropertiesQueryResult.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8A6688, &qword_1B4D1A660);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryResult.fitnessPlusPropertiesQueryResult.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6688, &qword_1B4D1A660) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult(0);
  v11 = *(*(v10 - 1) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 1) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  sub_1B4974FBC(v2, v9, &qword_1EB8A6688, &qword_1B4D1A660);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1B4975024(v9, &qword_1EB8A6688, &qword_1B4D1A660);
LABEL_15:
    sub_1B4D17BBC();
    v16 = v10[5];
    v17 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v10[6];
    v19 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperties(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    v20 = v10[7];
    Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
    (*(*(Metrics - 8) + 56))(v13 + v20, 1, 1, Metrics);
    return sub_1B4B37DD8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4B327BC(v9, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResult.OneOf_QueryResult);
    goto LABEL_15;
  }

  sub_1B4B2C598(v9, v13, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  return sub_1B4B37DD8;
}

void sub_1B4B37DD8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    sub_1B4975024(v8, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8A6688, &qword_1B4D1A660);
    sub_1B4B2C598(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQueryResult);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1B4B38014@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  a2(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.workoutPropertiesQueryResults.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B38288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B383FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
  sub_1B4975024(a2, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.workoutPropertiesQueryResults.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryResults.workoutPropertiesQueryResults.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
      return sub_1B4B38810;
    }

    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *v11 = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  return sub_1B4B38810;
}

void sub_1B4B38810(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    sub_1B4975024(v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.WorkoutPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.ringsPropertiesQueryResults.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B38B0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B38C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  sub_1B4975024(a2, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.ringsPropertiesQueryResults.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryResults.ringsPropertiesQueryResults.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4B3909C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  return sub_1B4B3909C;
}

void sub_1B4B3909C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    sub_1B4975024(v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.RingsPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.fitnessPlusPropertiesQueryResults.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(v2, &v9 - v5, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v6, a1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B39398@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B4974FBC(a1, &v9 - v5, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1B4975024(v6, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    }

    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B39510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B3281C(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  sub_1B4975024(a2, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4B2C598(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
}

uint64_t Apple_Fitness_Intelligence_SnapshotQueryResults.fitnessPlusPropertiesQueryResults.setter(uint64_t a1)
{
  sub_1B4975024(v1, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  sub_1B4B2C598(a1, v1, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  v3 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Apple_Fitness_Intelligence_SnapshotQueryResults.fitnessPlusPropertiesQueryResults.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AAA58, &unk_1B4D2FDF0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = *(*(type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  sub_1B4974FBC(v1, v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
LABEL_15:
    *v11 = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    return sub_1B4B39928;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.OneOf_QueryResults);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v11, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  return sub_1B4B39928;
}

void sub_1B4B39928(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v5, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    sub_1B4975024(v8, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v5, v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
    sub_1B4B327BC(v6, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
  }

  else
  {
    sub_1B4975024(**a1, &qword_1EB8AAA58, &unk_1B4D2FDF0);
    sub_1B4B2C598(v6, v8, type metadata accessor for Apple_Fitness_Intelligence_SnapshotQueryResults.FitnessPlusPropertiesQueryResults);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v8, 0, 1, v3);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1B4B39BAC(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1B4D17BCC();
  sub_1B4B54918(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.propertyValueData.getter()
{
  v1 = *(v0 + 32);
  sub_1B498FC0C(v1, *(v0 + 40));
  return v1;
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.propertyValueData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B49DDD2C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

int *Apple_Fitness_Intelligence_DatabasePropertyRecord.workoutDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7D98, &qword_1B4D20278);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A7D98, &qword_1B4D20278);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    }

    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  }

  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v9 = (a1 + result[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + result[6]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + result[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1 + result[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + result[9]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + result[10]);
  *v14 = 0;
  v14[1] = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_DatabasePropertyRecord.workoutDimensions.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A7D98, &qword_1B4D20278);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7D98, &qword_1B4D20278);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
      return sub_1B4B3A474;
    }

    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  }

  sub_1B4D17BBC();
  v16 = (v12 + v9[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v12 + v9[6]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v12 + v9[7];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v12 + v9[8];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = (v12 + v9[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v12 + v9[10]);
  *v21 = 0;
  v21[1] = 0;
  return sub_1B4B3A474;
}

void sub_1B4B3A474(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    sub_1B4975024(v9 + v5, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v6, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
  }

  else
  {
    sub_1B4975024(v9 + v5, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v7, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

int *Apple_Fitness_Intelligence_DatabasePropertyRecord.ringsDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7D98, &qword_1B4D20278);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A7D98, &qword_1B4D20278);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    }

    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  }

  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v9 = (a1 + result[5]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + result[6]);
  *v10 = 0;
  v10[1] = 0;
  *(a1 + result[7]) = 2;
  return result;
}

void (*Apple_Fitness_Intelligence_DatabasePropertyRecord.ringsDimensions.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A7D98, &qword_1B4D20278);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7D98, &qword_1B4D20278);
LABEL_15:
    sub_1B4D17BBC();
    v16 = (v12 + v9[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v12 + v9[6]);
    *v17 = 0;
    v17[1] = 0;
    *(v12 + v9[7]) = 2;
    return sub_1B4B3A9F8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  return sub_1B4B3A9F8;
}

void sub_1B4B3A9F8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    sub_1B4975024(v9 + v5, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v6, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
  }

  else
  {
    sub_1B4975024(v9 + v5, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v7, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.fitnessPlusDimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A7D98, &qword_1B4D20278);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1B4975024(v5, &qword_1EB8A7D98, &qword_1B4D20278);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1B4B2C598(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    }

    sub_1B4B327BC(v5, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
  }

  sub_1B4D17BBC();
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v10 = (a1 + v9[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v9[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a1 + v9[7];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = (a1 + v9[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v9[9];
  v15 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  return (*(*(v15 - 8) + 56))(a1 + v14, 1, 1, v15);
}

uint64_t sub_1B4B3AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1B4B3281C(a1, &v18 - v13, a6);
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  sub_1B4975024(a2 + v15, &qword_1EB8A7D98, &qword_1B4D20278);
  sub_1B4B2C598(v14, a2 + v15, a7);
  v16 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2 + v15, 0, 1, v16);
}

uint64_t sub_1B4B3AEA8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  sub_1B4975024(v3 + v6, &qword_1EB8A7D98, &qword_1B4D20278);
  sub_1B4B2C598(a1, v3 + v6, a2);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(*(v7 - 8) + 56);

  return v8(v3 + v6, 0, 1, v7);
}

void (*Apple_Fitness_Intelligence_DatabasePropertyRecord.fitnessPlusDimensions.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7D98, &qword_1B4D20278) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v10 = *(*(v9 - 1) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 1) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 32);
  *(v5 + 12) = v13;
  sub_1B4974FBC(v1 + v13, v8, &qword_1EB8A7D98, &qword_1B4D20278);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    sub_1B4975024(v8, &qword_1EB8A7D98, &qword_1B4D20278);
LABEL_15:
    sub_1B4D17BBC();
    v16 = (v12 + v9[5]);
    *v16 = 0;
    v16[1] = 0;
    v17 = (v12 + v9[6]);
    *v17 = 0;
    v17[1] = 0;
    v18 = v12 + v9[7];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v12 + v9[8]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v9[9];
    v21 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
    (*(*(v21 - 8) + 56))(v12 + v20, 1, 1, v21);
    return sub_1B4B3B218;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B4B327BC(v8, type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType);
    goto LABEL_15;
  }

  sub_1B4B2C598(v8, v12, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  return sub_1B4B3B218;
}

void sub_1B4B3B218(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = *(*a1 + 12);
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1B4B3281C((*a1)[3], v6, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    sub_1B4975024(v9 + v5, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v6, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
    sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  else
  {
    sub_1B4975024(v9 + v5, &qword_1EB8A7D98, &qword_1B4D20278);
    sub_1B4B2C598(v7, v9 + v5, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 56))(v9 + v5, 0, 1, v3);
  }

  free(v7);
  free(v6);
  free(v8);

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.snapshotEngineVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 40));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.snapshotEngineVersion.setter(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_DatabasePropertyRecord.snapshotEngineVersion.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 40);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_DatabasePropertyRecord.clearSnapshotEngineVersion()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyRecord.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B4D223D0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyRecord.OneOf_DimensionType(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  result = sub_1B4D17BBC();
  v6 = a1 + *(v2 + 40);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyBatch.records.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_DatabasePropertyBatch.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_DatabasePropertyBatch(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_SanityTaskMismatch.snapshotPropertiesType.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_SanityTaskMismatch.snapshotPropertiesType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1B4B3B8B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4B3B950(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_SanityTaskMismatch.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Apple_Fitness_Intelligence_SanityTaskMismatch(0);
  a1[4] = 0;
  a1[5] = 0;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B3BA78()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA7E0);
  __swift_project_value_buffer(v0, qword_1EB8AA7E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startCacheIndex";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endCacheIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "snapshotPropertiesType";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_PropertyRecordCheckpoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1B4D17D1C();
    }

    else if (result == 2 || result == 1)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_PropertyRecordCheckpoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*v4 || (result = sub_1B4D17E0C(), !v5))
  {
    if (!v4[1] || (result = sub_1B4D17E0C(), !v5))
    {
      v7 = v4[3];
      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v4[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v8 || (result = sub_1B4D17E3C(), !v5))
      {
        type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
        return sub_1B4D17BAC();
      }
    }
  }

  return result;
}

uint64_t sub_1B4B3BE6C@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B3BEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE78, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B3BF84(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3B590, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B3BFF0(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3B590, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B3C08C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA7F8);
  __swift_project_value_buffer(v0, qword_1EB8AA7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "steps";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "workoutQuery";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ringsQuery";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "fitnessPlusQuery";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        if (result == 4)
        {
          sub_1B4B3CA14(v5, a1, a2, a3);
        }

        else if (result == 5)
        {
          sub_1B4B3CFDC(v5, a1, a2, a3);
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
        sub_1B4B54918(qword_1EDC3B590, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
        sub_1B4D17D3C();
      }

      else if (result == 3)
      {
        sub_1B4B3C44C(v5, a1, a2, a3);
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4B3C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  sub_1B4974FBC(a1 + v29, v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
      v32 = v50;
    }

    else
    {
      sub_1B4975024(v25, &qword_1EB8A6668, &qword_1B4D1A658);
      v33 = v16;
      v34 = v45;
      sub_1B4B2C598(v33, v45, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4B2C598(v34, v25, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  v36 = v49;
  sub_1B4D17D4C();
  if (v36)
  {
    return sub_1B4975024(v25, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  sub_1B4974FBC(v25, v35, &qword_1EB8A6668, &qword_1B4D1A658);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A6668, &qword_1B4D1A658);
    return sub_1B4975024(v35, &qword_1EB8A6668, &qword_1B4D1A658);
  }

  else
  {
    v38 = v46;
    sub_1B4B2C598(v35, v46, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A6668, &qword_1B4D1A658);
    v39 = v44;
    v40 = v42;
    sub_1B4975024(v44 + v42, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1B4B3CA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  sub_1B4974FBC(a1 + v29, v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B4975024(v25, &qword_1EB8A6680, &unk_1B4D2FD90);
      v32 = v16;
      v33 = v46;
      sub_1B4B2C598(v32, v46, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      sub_1B4B2C598(v33, v25, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  v36 = v49;
  sub_1B4D17D4C();
  if (v36)
  {
    return sub_1B4975024(v25, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  sub_1B4974FBC(v25, v35, &qword_1EB8A6680, &unk_1B4D2FD90);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A6680, &unk_1B4D2FD90);
    return sub_1B4975024(v35, &qword_1EB8A6680, &unk_1B4D2FD90);
  }

  else
  {
    v38 = v45;
    sub_1B4B2C598(v35, v45, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A6680, &unk_1B4D2FD90);
    v39 = v44;
    v40 = v42;
    sub_1B4975024(v44 + v42, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t sub_1B4B3CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6658, &qword_1B4D1A650);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0) + 20);
  v44 = a1;
  v42 = v29;
  sub_1B4974FBC(a1 + v29, v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    sub_1B4975024(v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    v31 = v13;
  }

  else
  {
    sub_1B4B2C598(v12, v19, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    sub_1B4B2C598(v19, v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B4975024(v25, &qword_1EB8A6658, &qword_1B4D1A650);
      v32 = v16;
      v33 = v46;
      sub_1B4B2C598(v32, v46, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      sub_1B4B2C598(v33, v25, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    sub_1B4B327BC(v16, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  v36 = v49;
  sub_1B4D17D4C();
  if (v36)
  {
    return sub_1B4975024(v25, &qword_1EB8A6658, &qword_1B4D1A650);
  }

  sub_1B4974FBC(v25, v35, &qword_1EB8A6658, &qword_1B4D1A650);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    sub_1B4975024(v25, &qword_1EB8A6658, &qword_1B4D1A650);
    return sub_1B4975024(v35, &qword_1EB8A6658, &qword_1B4D1A650);
  }

  else
  {
    v38 = v45;
    sub_1B4B2C598(v35, v45, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    if (v30 != 1)
    {
      sub_1B4D17C3C();
    }

    sub_1B4975024(v25, &qword_1EB8A6658, &qword_1B4D1A650);
    v39 = v44;
    v40 = v42;
    sub_1B4975024(v44 + v42, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    sub_1B4B2C598(v38, v39 + v40, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t Apple_Fitness_Intelligence_QueryPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - v11;
  if (*(*v3 + 16))
  {
    type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint(0);
    sub_1B4B54918(qword_1EDC3B590, type metadata accessor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint, &protocol conformance descriptor for Apple_Fitness_Intelligence_PropertyRecordCheckpoint);
    result = sub_1B4D17E5C();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(v6 + *(Plan + 20), v12, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v15 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v15 - 8) + 48))(v12, 1, v15) == 1)
  {
    return sub_1B4D17BAC();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v17 = v5;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B4B3DA18(v6, a1, a2, a3);
    }

    else
    {
      sub_1B4B3DC5C(v6, a1, a2, a3);
    }
  }

  else
  {
    v17 = v5;
    sub_1B4B3D7D8(v6, a1, a2, a3);
  }

  result = sub_1B4B327BC(v12, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  if (!v17)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B3D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(a1 + *(Plan + 20), v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4B3DA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(a1 + *(Plan + 20), v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4B3DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81E0, &unk_1B4D2FDD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Plan = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan(0);
  sub_1B4974FBC(a1 + *(Plan + 20), v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1B4975024(v7, &qword_1EB8A81E0, &unk_1B4D2FDD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B4B2C598(v7, v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4B54918(qword_1EDC3A1B0, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
    sub_1B4D17E6C();
    return sub_1B4B327BC(v10, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery);
  }

  result = sub_1B4B327BC(v7, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType);
  __break(1u);
  return result;
}

uint64_t sub_1B4B3DEEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 20);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_QueryPlan.OneOf_QueryType(0);
  (*(*(v4 - 8) + 56))(&a2[v3], 1, 1, v4);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B3DFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE70, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryPlan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B3E060(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3CA58, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryPlan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B3E0CC(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3CA58, type metadata accessor for Apple_Fitness_Intelligence_QueryPlan, &protocol conformance descriptor for Apple_Fitness_Intelligence_QueryPlan);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B3E168()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8AA810);
  __swift_project_value_buffer(v0, qword_1EB8AA810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B4D2FD70;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "soFarToday";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "soFarThisWeek";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "soFarThisMonth";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "soFarThisYear";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastWeek";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "lastMonth";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "lastYear";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "sameTimeLastWeek";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sameTimeLastMonth";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "sameTimeLastYear";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "lastThirtyDays";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "lastSixtyDays";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "lastNinetyDays";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "lastFourWeeks";
  *(v32 + 1) = 13;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "allTime";
  *(v34 + 1) = 7;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "lastSixWeeks";
  *(v36 + 1) = 12;
  v36[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DateRangeDescriptor.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 0;
          goto LABEL_20;
        case 2:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 1;
          goto LABEL_20;
        case 3:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 2;
          goto LABEL_20;
        case 4:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 3;
          goto LABEL_20;
        case 5:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 4;
          goto LABEL_20;
        case 6:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 5;
          goto LABEL_20;
        case 7:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 6;
          goto LABEL_20;
        case 8:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 7;
          goto LABEL_20;
        case 9:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 8;
          goto LABEL_20;
        case 10:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 9;
          goto LABEL_20;
        case 11:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 10;
          goto LABEL_20;
        case 12:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 11;
          goto LABEL_20;
        case 13:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 12;
          goto LABEL_20;
        case 14:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 13;
          goto LABEL_20;
        case 15:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 14;
          goto LABEL_20;
        case 16:
          v11 = a1;
          v12 = v5;
          v13 = a2;
          v14 = a3;
          v15 = 15;
LABEL_20:
          sub_1B4B3E8C4(v11, v12, v13, v14, v15);
          break;
        default:
          break;
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_DateRangeDescriptor.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*(v3 + 8))
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
      result = sub_1B4D17E2C();
      if (!v4)
      {
        goto LABEL_3;
      }

      break;
    default:
LABEL_3:
      type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      result = sub_1B4D17BAC();
      break;
  }

  return result;
}

uint64_t sub_1B4B3EB08@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = -1;
  return sub_1B4D17BBC();
}

uint64_t sub_1B4B3EB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE68, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B3EC20(uint64_t a1)
{
  v2 = sub_1B4B54918(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B3EC8C(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B3ED98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  sub_1B4B54918(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B3EEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DF0, &qword_1B4D202E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A7DF0, &qword_1B4D202E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7DF0, &qword_1B4D202E0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  sub_1B4B54918(qword_1EDC3A500, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters);
}

uint64_t sub_1B4B3F168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE60, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B3F208(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B3F274(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B3F31C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1B2D0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "range";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1B4D17E7C();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v13 = "filters";
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  v12();
  v14 = (v8 + 2 * v5);
  v15 = v14 + v4[14];
  *v14 = 3;
  *v15 = "groupBy";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v12();
  v16 = (v8 + 3 * v5);
  v17 = v16 + v4[14];
  *v16 = 4;
  *v17 = "propertyKinds";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v12();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4B3F5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_1B4D17CDC();
      }
    }

    else if (result == 1)
    {
      sub_1B4B3FE74(a1, v9, a2, a3, a4);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4B3F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  sub_1B4B54918(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B3F7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, double), void (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  result = sub_1B4B40034(v6, a1, a2, a3, a4);
  if (!v7)
  {
    a5(v6, a1, a2, a3);
    if (*(*v6 + 16))
    {
      sub_1B4D17E1C();
    }

    if (*(v6[1] + 16))
    {
      sub_1B4D17E1C();
    }

    a6(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4B3F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE0, &qword_1B4D1FE90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7BE0, &qword_1B4D1FE90);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  sub_1B4B54918(qword_1EDC3AAF8, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters);
}

uint64_t sub_1B4B3FB30@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CC0];
  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 1) = v6;
  sub_1B4D17BBC();
  v7 = *(a1 + 28);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  (*(*(v8 - 8) + 56))(&a3[v7], 1, 1, v8);
  v9 = *(a1 + 32);
  v10 = a2(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a3[v9], 1, 1, v10);
}

uint64_t sub_1B4B3FC5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4B54918(&qword_1EB8AAE58, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4B3FCFC(uint64_t a1)
{
  v2 = sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4B3FD68(uint64_t a1, uint64_t a2)
{
  sub_1B4B54918(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery, &protocol conformance descriptor for Apple_Fitness_Intelligence_RingsPropertiesQuery);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4B3FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  sub_1B4B54918(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B3FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  sub_1B4B54918(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4B40034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7BE8, &qword_1B4D1FE98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  sub_1B4974FBC(a1 + *(v15 + 28), v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1B4975024(v9, &qword_1EB8A7BE8, &qword_1B4D1FE98);
  }

  sub_1B4B2C598(v9, v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4B54918(&qword_1EDC3C268, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor, &protocol conformance descriptor for Apple_Fitness_Intelligence_DateRangeDescriptor);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v14, type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor);
}

uint64_t sub_1B4B40254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DD8, &unk_1B4D2F8E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertiesQuery(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A7DD8, &unk_1B4D2F8E0);
  }

  sub_1B4B2C598(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  sub_1B4B54918(qword_1EDC39B80, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters, &protocol conformance descriptor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
  sub_1B4D17E6C();
  return sub_1B4B327BC(v11, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensionsFilters);
}
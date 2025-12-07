uint64_t sub_1DAF90BE0()
{
  v1 = *(*v0 + 6440);

  return MEMORY[0x1EEE6DFA0](sub_1DAF90CF0, v1, 0);
}

uint64_t sub_1DAF90CF0()
{
  v1 = v0[813];
  v2 = v0[810];

  sub_1DAF40AEC(v2, &qword_1ECC0E2F8, &qword_1DB0A0280);
  sub_1DAF40AEC(v1, &qword_1ECC0E2F0, &qword_1DB0A0278);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAF90DDC()
{
  v1 = *(*v0 + 6440);

  return MEMORY[0x1EEE6DFA0](sub_1DAF90EEC, v1, 0);
}

uint64_t sub_1DAF90EEC()
{
  v1 = v0[819];
  v2 = v0[818];
  v3 = v0[814];
  v10 = v0[813];
  v4 = v0[811];
  v5 = v0[807];
  v6 = v0[803];
  v7 = *(v5 + 48);
  *v4 = 0;
  sub_1DAF96C64(v6, &v4[v7]);
  v1(&v4[v7], 0, 1, v2);
  v3(v4, 0, 1, v5);
  swift_beginAccess();
  sub_1DAF34254(v4, v0 + 270);
  swift_endAccess();

  sub_1DAF40AEC(v10, &qword_1ECC0E2F0, &qword_1DB0A0278);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DAF91060(uint64_t a1, int a2, int a3, int a4, void *__src)
{
  memcpy((v5 + 16), __src, 0x42CuLL);
  v7 = swift_task_alloc();
  *(v5 + 1088) = v7;
  *v7 = v5;
  v7[1] = sub_1DAF91110;

  return sub_1DAF8F2AC(a1, v5 + 16);
}

uint64_t sub_1DAF91110()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAF91204(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  *(v6 + 65) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAF91234, v5, 0);
}

uint64_t sub_1DAF91234()
{
  *(v0 + 64) = *(v0 + 65);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF912E4;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_1DAFC1AF8(v5, (v0 + 64), v4, v2, v3);
}

uint64_t sub_1DAF912E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *ODNAtorProxy.deinit()
{

  sub_1DAF949F0(v0 + 152);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ODNAtorProxy.__deallocating_deinit()
{

  sub_1DAF949F0(v0 + 152);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t AssessmentOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

uint64_t AssessmentTiming.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1DB09DF34();
  v3 = type metadata accessor for AssessmentTiming(0);
  sub_1DB09DF34();
  v4 = v3[6];
  v5 = sub_1DB09DF64();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + v3[7], 1, 1, v5);
  v8(a2 + v3[8], 1, 1, v5);
  v8(a2 + v3[9], 1, 1, v5);
  v8(a2 + v3[10], 1, 1, v5);
  v6 = a2 + v3[11];

  return (v8)(v6, 1, 1, v5);
}

BOOL AssessmentTiming.hasReceivedFeedback.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v4 + 36), v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v5 = sub_1DB09DF64();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1DAF40AEC(v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return v6;
}

Swift::Void __swiftcall AssessmentTiming.profileFetched()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1DB09DF34();
  v4 = sub_1DB09DF64();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF94A90(v3, v0 + *(v5 + 40));
}

Swift::Void __swiftcall AssessmentTiming.attributesUpdated()()
{
  v1 = sub_1DB09DF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB09DF34();
  v5 = type metadata accessor for AssessmentTiming(0);
  (*(v2 + 40))(v0 + v5[5], v4, v1);
  v6 = v5[7];
  sub_1DAF40AEC(v0 + v6, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7 = *(v2 + 56);
  v7(v0 + v6, 1, 1, v1);
  v8 = v5[6];
  sub_1DAF40AEC(v0 + v8, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7(v0 + v8, 1, 1, v1);
  v9 = v5[8];
  sub_1DAF40AEC(v0 + v9, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7(v0 + v9, 1, 1, v1);
  v10 = v5[9];
  sub_1DAF40AEC(v0 + v10, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7(v0 + v10, 1, 1, v1);
}

uint64_t AssessmentTiming.assessmentReady(at:)(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AssessmentTiming(0) + 28);

  return sub_1DAF94B00(a1, v3);
}

Swift::Void __swiftcall AssessmentTiming.assesmentRequested()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  sub_1DB09DF34();
  v4 = sub_1DB09DF64();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF94A90(v3, v0 + v6[6]);
  v7 = v6[8];
  sub_1DAF40AEC(v0 + v7, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v5((v0 + v7), 1, 1, v4);
  v8 = v6[9];
  sub_1DAF40AEC(v0 + v8, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v5((v0 + v8), 1, 1, v4);
}

Swift::Void __swiftcall AssessmentTiming.assessmentReturned()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1DB09DF34();
  v4 = sub_1DB09DF64();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF94A90(v3, v0 + *(v5 + 32));
}

Swift::Void __swiftcall AssessmentTiming.feedbackReceived()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  sub_1DB09DF34();
  v4 = sub_1DB09DF64();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF94A90(v3, v0 + v5[9]);
  sub_1DAF94B00(v0 + v5[7], v0 + v5[11]);
}

double AssessmentTiming.profileFetchDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1DB09DF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v8 + 40), v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAF40AEC(v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1DB09DF54();
    v10 = sub_1DB09E444();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    return v12 / 1.0e18 + v10;
  }

  return result;
}

double AssessmentTiming.updateToAssessmentDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1DB09DF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v8 + 28), v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAF40AEC(v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1DB09DF54();
    v10 = sub_1DB09E444();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    return v12 / 1.0e18 + v10;
  }

  return result;
}

double AssessmentTiming.updateToFeedbackDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1DB09DF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v8 + 36), v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1DAF40AEC(v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1DB09DF54();
    v10 = sub_1DB09E444();
    v12 = v11;
    (*(v5 + 8))(v7, v4);
    return v12 / 1.0e18 + v10;
  }

  return result;
}

double AssessmentTiming.assessmentReadyBeforeFeedbackDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  v7 = sub_1DB09DF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v14 + 28), v6, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_1DAF40AEC(v16, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    return result;
  }

  v26 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1DAF40A84(v0 + *(v14 + 36), v4, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v26;
  v18(v26, v4, v7);
  sub_1DB09DF54();
  v21 = sub_1DB09E444();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v20, v7);
  v24(v13, v7);
  return v23 / 1.0e18 + v21;
}

double AssessmentTiming.requestToReturnDuration.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - v5;
  v7 = sub_1DB09DF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v14 + 32), v6, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    v16 = v6;
LABEL_5:
    sub_1DAF40AEC(v16, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    return result;
  }

  v26 = v11;
  v17 = v6;
  v18 = *(v8 + 32);
  v18(v13, v17, v7);
  sub_1DAF40A84(v0 + *(v14 + 24), v4, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v16 = v4;
    goto LABEL_5;
  }

  v20 = v26;
  v18(v26, v4, v7);
  sub_1DB09DF54();
  v21 = sub_1DB09E444();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v20, v7);
  v24(v13, v7);
  return v23 / 1.0e18 + v21;
}

double AssessmentTiming.timeSinceLastUpdate.getter()
{
  v0 = sub_1DB09DF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssessmentTiming(0);
  sub_1DB09DF34();
  sub_1DB09DF54();
  v4 = sub_1DB09E444();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6 / 1.0e18 + v4;
}

uint64_t static AssessmentTiming.lastUpdateTimesEqual(lhs:rhs:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AssessmentTiming(0);

  return sub_1DB09DF44();
}

BOOL AssessmentTiming.assessmentHasBeenRequested.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v4 + 24), v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v5 = sub_1DB09DF64();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1DAF40AEC(v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return v6;
}

BOOL AssessmentTiming.assessmentHasBeenReturned.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for AssessmentTiming(0);
  sub_1DAF40A84(v0 + *(v4 + 32), v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v5 = sub_1DB09DF64();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1DAF40AEC(v3, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return v6;
}

uint64_t AssessmentTiming.feedbackHasBeenReceivedForAssessmentWithCurrentTime.getter()
{
  v1 = sub_1DB09DF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7F0, &qword_1DB0A5B98);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v25 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AssessmentTiming(0);
  v12 = *(v11 + 28);
  v28 = v0;
  sub_1DAF40A84(v0 + v12, v10, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v26 = v2;
  v13 = *(v2 + 48);
  v29 = v1;
  LODWORD(v1) = v13(v10, 1, v1);
  sub_1DAF40AEC(v10, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v1 != 1)
  {
    v15 = *(v11 + 44);
    v16 = v28;
    v17 = *(v27 + 48);
    sub_1DAF40A84(v28 + v15, v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    sub_1DAF40A84(v16 + v12, &v5[v17], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v18 = v29;
    if (v13(v5, 1, v29) == 1)
    {
      if (v13(&v5[v17], 1, v18) == 1)
      {
        sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
        v14 = 1;
        return v14 & 1;
      }
    }

    else
    {
      v19 = v25;
      sub_1DAF40A84(v5, v25, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      if (v13(&v5[v17], 1, v18) != 1)
      {
        v20 = v26;
        v21 = v24;
        (*(v26 + 32))(v24, &v5[v17], v18);
        sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
        v14 = sub_1DB09D6A4();
        v22 = *(v20 + 8);
        v22(v21, v18);
        v22(v19, v18);
        sub_1DAF40AEC(v5, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
        return v14 & 1;
      }

      (*(v26 + 8))(v19, v18);
    }

    sub_1DAF40AEC(v5, &qword_1ECC0E7F0, &qword_1DB0A5B98);
    v14 = 0;
    return v14 & 1;
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1DAF92FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_1DB09D7D4();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_1DB09D7D4();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_1DB09E254();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_1DB09D7D4();
      v7 = v9;
    }

    while (v9);
  }

  sub_1DB09D7D4();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

void *sub_1DAF93124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = &type metadata for ASDPersistenceCommand;
  v33 = &protocol witness table for ASDPersistenceCommand;
  v8 = type metadata accessor for DIPAssessmentStaticWebService();
  v29 = v8;
  v30 = &off_1F56C4838;
  *&v28 = a3;
  swift_defaultActor_initialize();
  a4[27] = 45;
  a4[28] = 0xE100000000000000;
  a4[29] = 0;
  sub_1DAF3523C(&v28, v27);
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = *v11;
  v26[3] = v8;
  v26[4] = &off_1F56C4838;
  v26[0] = v13;
  type metadata accessor for ServerTimeSeedProvider();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v24 = v8;
  v25 = &off_1F56C4838;
  *&v23 = v19;

  swift_defaultActor_initialize();
  v20 = MEMORY[0x1E69E7CC0];
  *(v14 + 168) = 0;
  *(v14 + 176) = v20;
  *(v14 + 184) = 0;
  *(v14 + 192) = 0;
  *(v14 + 200) = 45;
  *(v14 + 208) = 0xE100000000000000;
  sub_1DAF332B8(&v23, v14 + 112);
  *(v14 + 152) = a1;
  *(v14 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  a4[26] = v14;
  sub_1DAF332B8(&v28, (a4 + 14));
  sub_1DAF332B8(&v31, (a4 + 21));
  a4[19] = a1;
  a4[20] = a2;
  return a4;
}

BOOL sub_1DAF93398(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v8 = v1;
  v26[130] = v5;
  v26[131] = v3;
  if ((*(v2 + 1042) & 1) != 0 && (*(v1 + 1042) & 1) == 0)
  {
    LOBYTE(v31[0]) = 13;

    CoreODILogger.debug(_:category:)(0xD00000000000003BLL, 0x80000001DB0C4640, v31);
    goto LABEL_19;
  }

  v9 = *(v1 + 1043);
  v10 = *(v2 + 1043);
  if (v9 != v10)
  {
    if (!*(v1 + 1043))
    {
      return 1;
    }

    if (v9 == 1 && v10 == 2)
    {
      return 1;
    }
  }

  v29 = *v1;
  v28 = *v2;
  v31[0] = v29;
  v30[0] = v28;

  sub_1DAF8BC6C(&v29, v27);
  sub_1DAF8BC6C(&v28, v27);
  v12 = ODIBindingsDict.isSubset(of:)(v30);

  if (!v12)
  {
    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000041, 0x80000001DB0C44F0);
    v30[0] = v29;
    sub_1DB09DF94();
    MEMORY[0x1E127FE90](0x736575716552202ELL, 0xED0000203A646574);
    v30[0] = v28;
    sub_1DB09DF94();
    v17 = v31[0];
    v18 = v31[1];
    if (qword_1EE300A68 != -1)
    {
      swift_once();
    }

    v19 = sub_1DB09D4B4();
    v20 = __swift_project_value_buffer(v19, qword_1EE309E50);

    sub_1DB0163B8(v20, v6, v4, v17, v18);

    swift_bridgeObjectRelease_n();
    goto LABEL_19;
  }

  memcpy(__dst, (v8 + 8), 0x40AuLL);
  memcpy(v26, (v8 + 8), 0x40AuLL);
  if (sub_1DAF40964(v26) != 1)
  {
    memcpy(v27, (v7 + 8), 0x40AuLL);
    memcpy(v30, (v7 + 8), 0x40AuLL);
    if (sub_1DAF40964(v30) != 1)
    {
      memcpy(v31, v30, 0x40AuLL);
      memcpy(v24, v26, 0x40AuLL);
      memcpy(v23, v30, 0x40AuLL);
      sub_1DAF40A84(v27, &v22, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40A84(__dst, &v22, &qword_1ECC0E318, &qword_1DB0A02A0);
      if ((_s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(v24) & 1) == 0)
      {
        memcpy(v24, v26, 0x40AuLL);
        memcpy(v23, v31, 0x40AuLL);
        v16 = _s17CoreODIEssentials16ArmandDeviceDataV21isLessCompleteOrEqual3lhs2toSbAC_ACtFZ_0(v24);
        v24[0] = 13;
        CoreODILogger.debug(_:category:)(0xD000000000000037, 0x80000001DB0C45B0, v24);
        sub_1DAF40AEC(v27, &qword_1ECC0E318, &qword_1DB0A02A0);
        sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);

        return v16;
      }

      v24[0] = 13;
      CoreODILogger.debug(_:category:)(0xD00000000000001ELL, 0x80000001DB0C45F0, v24);
      sub_1DAF40AEC(v27, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);
      goto LABEL_13;
    }

    memcpy(v24, v26, 0x40AuLL);
    memcpy(v31, __dst, 0x40AuLL);
    sub_1DAF96A98(v31, v23);
    if ((ArmandDeviceData.hasValidData.getter() & 1) == 0)
    {
      sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);
      v24[0] = 13;
      v13 = 0xD00000000000001FLL;
      v14 = 0x80000001DB0C4540;
      v15 = v24;
      goto LABEL_12;
    }

    v24[0] = 13;
    CoreODILogger.debug(_:category:)(0xD000000000000042, 0x80000001DB0C4560, v24);
    sub_1DAF40AEC(__dst, &qword_1ECC0E318, &qword_1DB0A02A0);
LABEL_19:

    return 0;
  }

  LOBYTE(v31[0]) = 13;
  v13 = 0xD000000000000026;
  v14 = 0x80000001DB0C4610;
  v15 = v31;
LABEL_12:
  CoreODILogger.debug(_:category:)(v13, v14, v15);
LABEL_13:

  return 1;
}

uint64_t sub_1DAF93990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v70 = a7;
  v76 = a5;
  v71 = a4;
  v72 = a3;
  v73 = a1;
  v74 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v69 - v12;
  v13 = sub_1DB09D1D4();
  v69 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ODNAssessmentsFactory();
  v81[3] = v17;
  v81[4] = &off_1F56CC998;
  v81[0] = a6;
  type metadata accessor for ODNAssessmentsManager();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v81, v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v23 = *v21;
  v80[3] = v17;
  v80[4] = &off_1F56CC998;
  v80[0] = v23;
  swift_defaultActor_initialize();
  sub_1DB09D1C4();
  v24 = sub_1DB09D174();
  v26 = v25;
  v27 = *(v14 + 8);
  v27(v16, v13);
  *(v18 + 112) = v24;
  *(v18 + 120) = v26;
  *(v18 + 256) = 0u;
  *(v18 + 272) = 0u;
  *(v18 + 288) = 0u;
  *(v18 + 304) = 0u;
  *(v18 + 320) = 0u;
  *(v18 + 336) = 0u;
  *(v18 + 352) = 0u;
  *(v18 + 368) = 0u;
  *(v18 + 384) = 0;
  *(v18 + 392) = MEMORY[0x1E69E7CC0];
  sub_1DAF3523C(v80, v18 + 128);
  v28 = a8;
  *(v18 + 168) = a8;
  *(v18 + 176) = a9;
  v29 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
  v30 = &v29[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v30 = 0x726F5F646E65732FLL;
  *(v30 + 1) = 0xE900000000000064;
  v31 = &v29[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v31 = 0x746F5F646E65732FLL;
  *(v31 + 1) = 0xE900000000000064;
  swift_bridgeObjectRetain_n();

  *(v18 + 248) = sub_1DAFBF408(v24, v26, 257, v28, a9, v29, 60.0);

  sub_1DB09D1C4();
  v32 = sub_1DB09D174();
  v34 = v33;
  v27(v16, v69);
  v35 = type metadata accessor for DIPAssessmentStaticWebService();
  v36 = objc_allocWithZone(v35);
  v36[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_serverRepo] = v70;
  v36[OBJC_IVAR____TtC17CoreODIEssentials29DIPAssessmentStaticWebService_mode] = 0;
  v37 = sub_1DAFBF408(v32, v34, 0x10000, v28, a9, v36, 10.0);
  *(v18 + 184) = v37;
  *(&v91[1] + 1) = v35;
  *&v91[2] = &off_1F56C4838;
  *&v91[0] = v37;
  type metadata accessor for ProfileManager();
  v38 = swift_allocObject();
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v91, v35);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v69 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v44 = v37;
  v45 = v71;

  v46 = v72;
  v47 = sub_1DAF93124(v72, v45, v43, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v91);
  v48 = sub_1DAF96CC8(&qword_1EE3014F8, 255, type metadata accessor for ProfileManager, &unk_1DB0A8AD8);
  *(v18 + 192) = v47;
  *(v18 + 200) = v48;
  sub_1DAF96D10(&v82);
  v91[6] = v88;
  v91[7] = v89;
  v91[2] = v84;
  v91[3] = v85;
  v91[4] = v86;
  v91[5] = v87;
  v91[0] = v82;
  v91[1] = v83;
  v92[6] = v88;
  v92[7] = v89;
  v92[2] = v84;
  v92[3] = v85;
  v92[4] = v86;
  v92[5] = v87;
  *&v91[8] = v90;
  *&v92[8] = v90;
  v92[0] = v82;
  v92[1] = v83;

  v49 = MEMORY[0x1E69E7CC0];
  v50 = sub_1DAF3DFCC(MEMORY[0x1E69E7CC0]);
  v51 = sub_1DAF96D2C();
  v52 = v74;
  *(v18 + 400) = v73;
  *(v18 + 408) = v52;
  *(v18 + 416) = v46;
  *(v18 + 424) = v45;
  *(v18 + 432) = v46;
  *(v18 + 440) = v45;
  *(v18 + 472) = &type metadata for EmptyProfileIdentifiers;
  *(v18 + 480) = v51;
  v53 = v91[7];
  *(v18 + 584) = v91[6];
  *(v18 + 600) = v53;
  *(v18 + 616) = *&v91[8];
  v54 = v91[3];
  *(v18 + 520) = v91[2];
  *(v18 + 536) = v54;
  v55 = v91[5];
  *(v18 + 552) = v91[4];
  *(v18 + 568) = v55;
  v56 = v91[1];
  *(v18 + 488) = v91[0];
  *(v18 + 504) = v56;
  *(v18 + 704) = 0;
  *(v18 + 672) = 0u;
  *(v18 + 688) = 0u;
  *(v18 + 640) = 0u;
  *(v18 + 656) = 0u;
  *(v18 + 624) = 0u;
  *(v18 + 712) = 0xF000000000000000;
  v57 = v92[7];
  *(v18 + 816) = v92[6];
  *(v18 + 832) = v57;
  *(v18 + 848) = *&v92[8];
  v58 = v92[3];
  *(v18 + 752) = v92[2];
  *(v18 + 768) = v58;
  v59 = v92[5];
  *(v18 + 784) = v92[4];
  *(v18 + 800) = v59;
  v60 = v92[1];
  *(v18 + 720) = v92[0];
  *(v18 + 736) = v60;
  *(v18 + 936) = 0;
  *(v18 + 904) = 0u;
  *(v18 + 920) = 0u;
  *(v18 + 872) = 0u;
  *(v18 + 888) = 0u;
  *(v18 + 856) = 0u;
  *(v18 + 944) = 0xF000000000000000;
  *(v18 + 952) = 2;
  *(v18 + 960) = v50;
  *(v18 + 968) = 0;
  *(v18 + 976) = 0xF000000000000000;
  *(v18 + 984) = 0;
  v61 = *(v18 + 248);
  v78 = &type metadata for CoreODILogger;
  v79 = &protocol witness table for CoreODILogger;
  *&v77 = v28;
  *(&v77 + 1) = a9;
  v62 = type metadata accessor for ODNAssessmentsFeedbackManager();
  v63 = swift_allocObject();

  v64 = v61;
  swift_defaultActor_initialize();
  *(v63 + 112) = 0;
  *(v63 + 120) = 0u;
  *(v63 + 136) = 0u;
  sub_1DAF96D80(v91);
  memcpy((v63 + 152), v91, 0x170uLL);
  sub_1DAF96DB8(v92);
  memcpy((v63 + 520), v92, 0x111uLL);
  *(v63 + 800) = sub_1DAF3EB04(v49);
  *(v63 + 808) = MEMORY[0x1E69E7CD0];
  sub_1DAF332B8(&v77, v63 + 824);
  *(v63 + 816) = v64;
  v78 = v62;
  v79 = &off_1F56CE068;

  *&v77 = v63;
  sub_1DAF332B8(&v77, v18 + 208);
  v65 = sub_1DB09DA24();
  v66 = v75;
  (*(*(v65 - 8) + 56))(v75, 1, 1, v65);
  v67 = swift_allocObject();
  *(v67 + 16) = 0;
  *(v67 + 24) = 0;
  *(v67 + 32) = v18;
  *(v67 + 40) = v76;

  sub_1DAF4F0EC(0, 0, v66, &unk_1DB0A6190, v67);

  __swift_destroy_boxed_opaque_existential_1Tm(v80);
  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  return v18;
}

uint64_t _s17CoreODIEssentials12ODNAtorProxyC15isEqualBindings3lhs3rhsSbSH_s8Sendablep_SH_sAGptFZ_0(void *a1, void *a2)
{
  sub_1DAF3523C(a1, v39);
  sub_1DAF3523C(a2, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (*&v37 == *&v33 && v38 == v34)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_1DB09E254();
      }

      goto LABEL_24;
    }
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = *&v37 == *&v33;
    goto LABEL_13;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v5 = v37 == v33;
LABEL_13:
    v4 = v5;
    goto LABEL_24;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    v4 = LOBYTE(v37) ^ LOBYTE(v33) ^ 1;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    return v4 & 1;
  }

  sub_1DAF4062C(0, &qword_1ECC0E810, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    v6 = v36;
    if (swift_dynamicCast())
    {
      v7 = v35;
      v37 = 4.7668852e180;
      v38 = 0xEF726567676F4C64;
      v33 = 0.0;
      v34 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000026, 0x80000001DB0C4750);
      v8 = [v36 description];
      v9 = sub_1DB09D6C4();
      v11 = v10;

      MEMORY[0x1E127FE90](v9, v11);

      MEMORY[0x1E127FE90](40, 0xE100000000000000);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      swift_getDynamicType();
      v12 = sub_1DB09E474();
      MEMORY[0x1E127FE90](v12);

      MEMORY[0x1E127FE90](8233, 0xE200000000000000);
      v13 = [v35 description];
      v14 = sub_1DB09D6C4();
      v16 = v15;

      MEMORY[0x1E127FE90](v14, v16);

      MEMORY[0x1E127FE90](40, 0xE100000000000000);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      swift_getDynamicType();
      v17 = sub_1DB09E474();
      MEMORY[0x1E127FE90](v17);

      MEMORY[0x1E127FE90](41, 0xE100000000000000);
      LOBYTE(v33) = 6;
      CoreODILogger.debug(_:category:)(0, 0xE000000000000000, &v33);

      sub_1DAF4062C(0, &qword_1ECC0E828, 0x1E69E58C0);
      v4 = sub_1DB09DC34();

      goto LABEL_24;
    }
  }

  sub_1DAF4062C(0, &qword_1ECC0E818, 0x1E695DFB0);
  if (swift_dynamicCast() && (*&v37, swift_dynamicCast()))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v4 = 1;
  }

  else
  {
    sub_1DB09DE44();

    v37 = -2.31584178e77;
    v38 = 0x80000001DB0C4730;
    v19 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x1EEE9AC00](v19);
    (*(v21 + 16))(&v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_1DB09D744();
    MEMORY[0x1E127FE90](v22);

    MEMORY[0x1E127FE90](40, 0xE100000000000000);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v23 = sub_1DB09E474();
    MEMORY[0x1E127FE90](v23);

    MEMORY[0x1E127FE90](8233, 0xE200000000000000);
    v24 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    MEMORY[0x1EEE9AC00](v24);
    (*(v26 + 16))(&v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = sub_1DB09D744();
    MEMORY[0x1E127FE90](v27);

    MEMORY[0x1E127FE90](40, 0xE100000000000000);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    swift_getDynamicType();
    v28 = sub_1DB09E474();
    MEMORY[0x1E127FE90](v28);

    MEMORY[0x1E127FE90](41, 0xE100000000000000);
    v30 = v37;
    v29 = v38;
    if (qword_1EE3019D0 != -1)
    {
      swift_once();
    }

    v31 = sub_1DB09D4B4();
    v32 = __swift_project_value_buffer(v31, qword_1EE30A0C8);

    sub_1DB0163B8(v32, 0x657261685369646FLL, 0xEF726567676F4C64, *&v30, v29);
    swift_bridgeObjectRelease_n();
    sub_1DAF40AEC(v39, &qword_1ECC0E820, &qword_1DB0A6198);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1DAF94928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAF94990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for AssessmentTiming(uint64_t a1)
{
  result = qword_1EE3014D0;
  if (!qword_1EE3014D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAF94A90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF94B00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF94B70(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v6 = v1 + 1;
  v5 = *v1;
  memcpy(v20, v1 + 1, 0x40AuLL);
  v7 = *(v4 + 1042);
  v9 = (v3 + 8);
  v8 = *v3;
  memcpy(v21, (v3 + 8), 0x40AuLL);
  if (v7 != *(v3 + 1042))
  {
    return 0;
  }

  memcpy(v18, v6, 0x40AuLL);
  memcpy(&v18[130], v9, 0x40AuLL);
  memcpy(v19, v6, 0x40AuLL);
  if (sub_1DAF40964(v19) != 1)
  {
    memcpy(v17, v6, 0x40AuLL);
    memcpy(__dst, v6, 0x40AuLL);
    memcpy(v16, v9, 0x40AuLL);
    if (sub_1DAF40964(v16) != 1)
    {
      memcpy(__src, v9, 0x40AuLL);
      sub_1DAF40A84(v20, v13, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40A84(v21, v13, &qword_1ECC0E318, &qword_1DB0A02A0);
      sub_1DAF40A84(v17, v13, &qword_1ECC0E318, &qword_1DB0A02A0);
      v10 = _s17CoreODIEssentials16ArmandDeviceDataV2eeoiySbAC_ACtFZ_0(__dst);
      memcpy(v12, __src, 0x40AuLL);
      sub_1DAF40988(v12);
      memcpy(v13, __dst, 0x40AuLL);
      sub_1DAF40988(v13);
      memcpy(__src, v6, 0x40AuLL);
      sub_1DAF40AEC(__src, &qword_1ECC0E318, &qword_1DB0A02A0);
      if ((v10 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    memcpy(__src, v6, 0x40AuLL);
    sub_1DAF40A84(v20, v13, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40A84(v21, v13, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40A84(v17, v13, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40988(__src);
LABEL_8:
    memcpy(v16, v18, 0x81AuLL);
    sub_1DAF40AEC(v16, &qword_1ECC0E320, &qword_1DB0A02A8);
    return 0;
  }

  memcpy(v16, v9, 0x40AuLL);
  if (sub_1DAF40964(v16) != 1)
  {
    sub_1DAF40A84(v20, v17, &qword_1ECC0E318, &qword_1DB0A02A0);
    sub_1DAF40A84(v21, v17, &qword_1ECC0E318, &qword_1DB0A02A0);
    goto LABEL_8;
  }

  memcpy(v17, v6, 0x40AuLL);
  sub_1DAF40A84(v20, __dst, &qword_1ECC0E318, &qword_1DB0A02A0);
  sub_1DAF40A84(v21, __dst, &qword_1ECC0E318, &qword_1DB0A02A0);
  sub_1DAF40AEC(v17, &qword_1ECC0E318, &qword_1DB0A02A0);
LABEL_10:
  if (sub_1DAF8CE60(v5, v8))
  {
    v18[0] = v5;
    v16[0] = v8;
    if (ODIBindingsDict.isSubset(of:)(v16))
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s17CoreODIEssentials16AssessmentTimingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB09DF64();
  v126 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v120 = &v110 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v110 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v123 = &v110 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v125 = &v110 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v110 - v20;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7F0, &qword_1DB0A5B98);
  v22 = MEMORY[0x1EEE9AC00](v127);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v121 = &v110 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v122 = &v110 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v124 = &v110 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v110 - v34;
  if ((sub_1DB09DF44() & 1) == 0)
  {
    return 0;
  }

  v118 = v15;
  v36 = type metadata accessor for AssessmentTiming(0);
  if ((sub_1DB09DF44() & 1) == 0)
  {
    return 0;
  }

  v113 = v24;
  v114 = a1;
  v116 = v6;
  v117 = v36;
  v37 = *(v36 + 24);
  v38 = *(v127 + 48);
  v119 = v4;
  sub_1DAF40A84(a1 + v37, v35, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v115 = a2;
  v39 = v126;
  v40 = v119;
  sub_1DAF40A84(a2 + v37, &v35[v38], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v41 = v39 + 48;
  v42 = *(v39 + 48);
  if (v42(v35, 1, v40) == 1)
  {
    if (v42(&v35[v38], 1, v40) == 1)
    {
      v112 = v10;
      sub_1DAF40AEC(v35, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_10;
    }

LABEL_8:
    v43 = v35;
LABEL_28:
    sub_1DAF40AEC(v43, &qword_1ECC0E7F0, &qword_1DB0A5B98);
    return 0;
  }

  sub_1DAF40A84(v35, v21, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v42(&v35[v38], 1, v40) == 1)
  {
    (*(v39 + 8))(v21, v40);
    goto LABEL_8;
  }

  v112 = v10;
  v44 = v116;
  (*(v39 + 32))(v116, &v35[v38], v40);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
  v45 = v39;
  v46 = sub_1DB09D6A4();
  v47 = *(v45 + 8);
  v47(v44, v40);
  v47(v21, v40);
  sub_1DAF40AEC(v35, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v48 = v117;
  v49 = v117[7];
  v50 = *(v127 + 48);
  v51 = v114;
  sub_1DAF40A84(v114 + v49, v33, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v52 = v115;
  v53 = v119;
  sub_1DAF40A84(v115 + v49, &v33[v50], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if (v42(v33, 1, v53) == 1)
  {
    if (v42(&v33[v50], 1, v53) == 1)
    {
      v111 = v42;
      sub_1DAF40AEC(v33, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_17;
    }

LABEL_15:
    v43 = v33;
    goto LABEL_28;
  }

  v54 = v125;
  sub_1DAF40A84(v33, v125, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v55 = v42(&v33[v50], 1, v53);
  v56 = v126;
  if (v55 == 1)
  {
    (*(v126 + 8))(v54, v53);
    goto LABEL_15;
  }

  v111 = v42;
  v57 = v116;
  (*(v126 + 32))(v116, &v33[v50], v53);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
  v58 = v51;
  v59 = v52;
  v60 = v54;
  v61 = v56;
  v62 = sub_1DB09D6A4();
  v63 = *(v61 + 8);
  v64 = v57;
  v48 = v117;
  v63(v64, v53);
  v65 = v60;
  v52 = v59;
  v51 = v58;
  v63(v65, v53);
  sub_1DAF40AEC(v33, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v62 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v66 = v48[8];
  v67 = *(v127 + 48);
  v68 = v124;
  sub_1DAF40A84(v51 + v66, v124, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v69 = v119;
  sub_1DAF40A84(v52 + v66, v68 + v67, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v70 = v111;
  if (v111(v68, 1, v69) == 1)
  {
    if (v70(v68 + v67, 1, v69) != 1)
    {
      goto LABEL_27;
    }

    sub_1DAF40AEC(v68, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  }

  else
  {
    v71 = v123;
    sub_1DAF40A84(v68, v123, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    v72 = v70(v68 + v67, 1, v69);
    v73 = v126;
    if (v72 == 1)
    {
      goto LABEL_26;
    }

    v74 = v116;
    (*(v126 + 32))(v116, v68 + v67, v69);
    sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
    v75 = v73;
    v76 = sub_1DB09D6A4();
    v77 = *(v75 + 8);
    v78 = v74;
    v48 = v117;
    v77(v78, v69);
    v77(v71, v69);
    sub_1DAF40AEC(v68, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    if ((v76 & 1) == 0)
    {
      return 0;
    }
  }

  v79 = v48[9];
  v80 = *(v127 + 48);
  v125 = v41;
  v68 = v122;
  sub_1DAF40A84(v51 + v79, v122, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  sub_1DAF40A84(v52 + v79, v68 + v80, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v81 = v111;
  if (v111(v68, 1, v69) == 1)
  {
    v82 = v81(v68 + v80, 1, v69);
    v73 = v126;
    if (v82 == 1)
    {
      sub_1DAF40AEC(v68, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_31;
    }

LABEL_27:
    v43 = v68;
    goto LABEL_28;
  }

  v71 = v118;
  sub_1DAF40A84(v68, v118, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v83 = v81(v68 + v80, 1, v69);
  v73 = v126;
  if (v83 == 1)
  {
LABEL_26:
    (*(v73 + 8))(v71, v69);
    goto LABEL_27;
  }

  v85 = v116;
  (*(v126 + 32))(v116, v68 + v80, v69);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
  v86 = sub_1DB09D6A4();
  v87 = *(v73 + 8);
  v87(v85, v69);
  v87(v71, v69);
  sub_1DAF40AEC(v68, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v86 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v88 = v117[10];
  v89 = *(v127 + 48);
  v33 = v121;
  sub_1DAF40A84(v51 + v88, v121, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  sub_1DAF40A84(v52 + v88, &v33[v89], &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v90 = v111;
  if (v111(v33, 1, v69) == 1)
  {
    if (v90(&v33[v89], 1, v69) == 1)
    {
      sub_1DAF40AEC(v33, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  v91 = v120;
  sub_1DAF40A84(v33, v120, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v92 = v90(&v33[v89], 1, v69);
  v93 = v116;
  if (v92 == 1)
  {
    (*(v73 + 8))(v91, v69);
    goto LABEL_15;
  }

  (*(v73 + 32))(v116, &v33[v89], v69);
  sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
  v94 = v91;
  v95 = sub_1DB09D6A4();
  v96 = v93;
  v97 = *(v73 + 8);
  v97(v96, v69);
  v97(v94, v69);
  sub_1DAF40AEC(v33, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  if ((v95 & 1) == 0)
  {
    return 0;
  }

LABEL_37:
  v98 = v117[11];
  v99 = *(v127 + 48);
  v100 = v113;
  sub_1DAF40A84(v51 + v98, v113, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v101 = v100;
  sub_1DAF40A84(v52 + v98, v100 + v99, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  v102 = v111;
  if (v111(v100, 1, v69) != 1)
  {
    v103 = v100;
    v104 = v112;
    sub_1DAF40A84(v103, v112, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    if (v102(v101 + v99, 1, v69) == 1)
    {
      (*(v73 + 8))(v104, v69);
      goto LABEL_42;
    }

    v105 = v101 + v99;
    v106 = v101;
    v107 = v116;
    (*(v73 + 32))(v116, v105, v69);
    sub_1DAF96CC8(&qword_1ECC0E7F8, 255, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8808]);
    v108 = sub_1DB09D6A4();
    v109 = *(v73 + 8);
    v109(v107, v69);
    v109(v104, v69);
    sub_1DAF40AEC(v106, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
    return (v108 & 1) != 0;
  }

  if (v102(v100 + v99, 1, v69) != 1)
  {
LABEL_42:
    v43 = v101;
    goto LABEL_28;
  }

  sub_1DAF40AEC(v100, &qword_1ECC0E6A8, &qword_1DB0A3CB0);
  return 1;
}

unint64_t sub_1DAF95DA4()
{
  result = qword_1EE3014E8;
  if (!qword_1EE3014E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3014E8);
  }

  return result;
}

unint64_t sub_1DAF95DFC()
{
  result = qword_1ECC0E800;
  if (!qword_1ECC0E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E800);
  }

  return result;
}

uint64_t sub_1DAF95E50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DAF95E98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ComputationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials16ArmandDeviceDataVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF95FD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1068))
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

uint64_t sub_1DAF9601C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 1064) = 0;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1068) = 1;
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

    *(result + 1068) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ODNAtorProxy.getAugmentedProfile()(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DAF63DEC;

  return v6(a1);
}

uint64_t dispatch thunk of ODNAtorProxy.conversationID()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DAF96444;

  return v4();
}

uint64_t sub_1DAF96444(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of ODNAtorProxy.getOutputPayload(getAssessmentsParameters:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 192) + **(*v2 + 192));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DAF62CC4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ODNAtorProxy.sendODNResults(assessmentTiming:outcome:partialAssessmentStates:sessionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 208) + **(*v5 + 208));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1DAF63DEC;

  return v14(a1, a2, a3, a4, a5);
}

void sub_1DAF967FC(uint64_t a1)
{
  sub_1DB09DF64();
  if (v1 <= 0x3F)
  {
    sub_1DAF70108(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAF96894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1044))
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

uint64_t sub_1DAF968DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1032) = 0;
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
    *(result + 1040) = 0;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1044) = 1;
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

    *(result + 1044) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF96A44()
{
  result = qword_1EE300EC8;
  if (!qword_1EE300EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300EC8);
  }

  return result;
}

uint64_t sub_1DAF96B6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAF91060(a1, v4, v5, v6, v1 + 5);
}

uint64_t sub_1DAF96C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF96CC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1DAF96D10(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1DAF96D2C()
{
  result = qword_1ECC0E808;
  if (!qword_1ECC0E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E808);
  }

  return result;
}

double sub_1DAF96D80(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_1DAF96DB8(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DAF96DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DAF63DEC;

  return sub_1DAF79600(a1, v4, v5, v6, v7);
}

uint64_t sub_1DAF96EB0()
{
  v1[19] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E830, &unk_1DB0A62A0);
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF96F7C, 0, 0);
}

uint64_t sub_1DAF96F7C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = [objc_allocWithZone(MEMORY[0x1E69A4888]) initWithQueue_];
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1DAF97178;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1DAF4062C(0, &qword_1ECC0E838, 0x1E69A4838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DAF97514;
  v1[13] = &block_descriptor_6;
  [v7 generatePhoneAuthenticationSignatureOverData:0 withCompletion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1DAF97178()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1DAF97498;
  }

  else
  {
    v2 = sub_1DAF97288;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

char *sub_1DAF97288()
{
  v1 = v0[18];
  v2 = [v1 authenticationCertificateSignatures];
  sub_1DAF4062C(0, &qword_1ECC0E840, 0x1E69A51C8);
  v3 = sub_1DB09D934();

  if (v3 >> 62)
  {
    v4 = sub_1DB09DD44();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    v18 = v0[23];

    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x1E69E7CC0];
  result = sub_1DAF5F4FC(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v20 = v1;
  v21 = v0;
  v6 = 0;
  v7 = v22;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E1280530](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 serverVerifiableEncoding];
    v11 = sub_1DB09D6C4();
    v13 = v12;

    v15 = *(v22 + 16);
    v14 = *(v22 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DAF5F4FC((v14 > 1), v15 + 1, 1);
    }

    ++v6;
    *(v22 + 16) = v15 + 1;
    v16 = v22 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
  }

  while (v4 != v6);
  v0 = v21;
  v17 = v21[23];

LABEL_14:

  v19 = v0[1];

  return v19(v7);
}

uint64_t sub_1DAF97498(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1DAF97514(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E830, &unk_1DB0A62A0);
    sub_1DB09D9A4();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E830, &unk_1DB0A62A0);
    sub_1DB09D9B4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAF975E8()
{
  v0 = sub_1DB09DBB4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DB09DBA4();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1DB09D4F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1DAF4062C(0, &qword_1EE3018E0, 0x1E69E9610);
  sub_1DB09D4E4();
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1DAF988FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
  sub_1DAF98954();
  sub_1DB09DCF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v0);
  v6 = sub_1DB09DBE4();
  v7 = v9[0];
  *(v9[0] + 16) = v6;
  return v7;
}

uint64_t sub_1DAF97808()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF97898;

  return sub_1DAF96EB0();
}

uint64_t sub_1DAF97898(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1DAF979B8()
{
  v1 = v0[2];
  if (v1[19])
  {
    v7 = v0[1];

    return v7(v2);
  }

  else
  {
    v4 = v1[17];
    v5 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v4);
    v8 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_1DAF97B2C;

    return v8(v4, v5);
  }
}

uint64_t sub_1DAF97B2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = a1;
  *(v4 + 40) = v1;

  v5 = *(v3 + 16);
  if (v1)
  {
    v6 = sub_1DAF97E08;
  }

  else
  {
    v6 = sub_1DAF97C60;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DAF97C60()
{
  v1 = v0[4];
  if (*(v1 + 16))
  {
    *(v0[2] + 152) = v1;

    v2 = v0[4];
    v3 = v0[1];

    return v3(v2);
  }

  else
  {

    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v5 = sub_1DB09D4B4();
    __swift_project_value_buffer(v5, qword_1EE30A128);
    v6 = sub_1DB09D494();
    v7 = sub_1DB09DB74();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DAF16000, v6, v7, "No PAC to process", v8, 2u);
      MEMORY[0x1E1281810](v8, -1, -1);
    }

    sub_1DAF98854();
    swift_allocError();
    *v9 = 4;
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1DAF97E08()
{
  v1 = *(v0 + 40);
  v2 = sub_1DB09CE64();
  v3 = sub_1DAF97FDC(v2);
  sub_1DAF98854();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DAF97EBC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAF97F20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF98B60;

  return sub_1DAF97998();
}

uint64_t sub_1DAF97FDC(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1DB09D6C4();
  v5 = v4;

  if (v3 == sub_1DB09D6C4() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1DB09E254();

    if ((v8 & 1) == 0)
    {
      if (qword_1EE301DC0 != -1)
      {
        swift_once();
      }

      v9 = sub_1DB09D4B4();
      __swift_project_value_buffer(v9, qword_1EE30A128);
      v10 = a1;
      v11 = sub_1DB09D494();
      v12 = sub_1DB09DB74();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v66[0] = v14;
        *v13 = 136315394;
        v15 = [v10 domain];
        v16 = sub_1DB09D6C4();
        v18 = v17;

        v19 = sub_1DB015E84(v16, v18, v66);

        *(v13 + 4) = v19;
        *(v13 + 12) = 2048;
        v20 = [v10 code];

        *(v13 + 14) = v20;
        _os_log_impl(&dword_1DAF16000, v11, v12, "Unexpected PAC domain: %s, with error code: %ld", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
        MEMORY[0x1E1281810](v14, -1, -1);
        MEMORY[0x1E1281810](v13, -1, -1);
      }

      else
      {
      }

      return 1;
    }
  }

  v21 = [a1 userInfo];
  v22 = sub_1DB09D624();

  v23 = sub_1DB09D6C4();
  if (!*(v22 + 16))
  {

    goto LABEL_16;
  }

  v25 = sub_1DAF35210(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_1DAF409DC(*(v22 + 56) + 32 * v25, v66);

  sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v28 = v65;
    goto LABEL_18;
  }

LABEL_17:
  v28 = 0;
LABEL_18:
  v29 = [a1 code];
  if (v28)
  {
    v30 = [v28 domain];
    v31 = sub_1DB09D6C4();
    v33 = v32;

    v34 = [v28 code];
    if (v29 <= -1101)
    {
LABEL_20:
      switch(v29)
      {
        case -4000:

          return 7;
        case -3000:

          return 8;
        case -2000:

          return 9;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v34 = 0;
    v31 = 0;
    v33 = 0;
    if (v29 <= -1101)
    {
      goto LABEL_20;
    }
  }

  switch(v29)
  {
    case -1100:

      return 11;
    case -1000:
      if (!v33)
      {
        sub_1DB09D6C4();

        return 2;
      }

      if (v31 == 0xD00000000000001FLL && 0x80000001DB0C4890 == v33)
      {
        if (!v28 || v34 != -1000)
        {
          if (!v28)
          {
LABEL_58:
            v60 = v34;
            if (sub_1DB09D6C4() == v31 && v33 == v61)
            {

              if (!v28)
              {
                return 2;
              }
            }

            else
            {
              v62 = sub_1DB09E254();

              if ((v62 & 1) == 0 || !v28)
              {
                return 2;
              }
            }

            if (v60 == 3)
            {
              return 3;
            }

            return 2;
          }

LABEL_56:
          if (v34 == -5000)
          {

            return 6;
          }

          goto LABEL_58;
        }
      }

      else
      {
        v56 = v34;
        if ((sub_1DB09E254() & 1) == 0 || !v28 || v56 != -1000)
        {
          v59 = sub_1DB09E254();
          v34 = v56;
          if ((v59 & (v28 != 0)) != 1)
          {
            goto LABEL_58;
          }

          goto LABEL_56;
        }
      }

      return 5;
    case -900:

      return 10;
  }

LABEL_33:

  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v36 = sub_1DB09D4B4();
  __swift_project_value_buffer(v36, qword_1EE30A128);
  v37 = v28;
  v38 = a1;
  v39 = sub_1DB09D494();
  v40 = sub_1DB09DB74();

  if (os_log_type_enabled(v39, v40))
  {
    v64 = v40;
    v41 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v66[0] = v63;
    *v41 = 136315906;
    v42 = [v38 domain];
    v43 = sub_1DB09D6C4();
    v45 = v44;

    v46 = sub_1DB015E84(v43, v45, v66);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2048;
    v47 = [v38 code];

    *(v41 + 14) = v47;
    *(v41 + 22) = 2080;
    if (v28)
    {
      v48 = [v37 domain];
      v49 = sub_1DB09D6C4();
      v51 = v50;

      v52 = sub_1DB015E84(v49, v51, v66);

      *(v41 + 24) = v52;
      *(v41 + 32) = 2080;
      [v37 code];
      sub_1DAF988A8();
      v53 = sub_1DB09DCD4();
      v55 = v54;
    }

    else
    {
      v55 = 0xE300000000000000;
      v57 = sub_1DB015E84(7104878, 0xE300000000000000, v66);

      v53 = 7104878;
      *(v41 + 24) = v57;
      *(v41 + 32) = 2080;
    }

    v58 = sub_1DB015E84(v53, v55, v66);

    *(v41 + 34) = v58;
    _os_log_impl(&dword_1DAF16000, v39, v64, "Unexpected PAC domain: %s, with error code: %ld, and underlying error domain: %s with underlying error code: %s", v41, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E1281810](v63, -1, -1);
    MEMORY[0x1E1281810](v41, -1, -1);

    return 0;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1DAF98854()
{
  result = qword_1ECC0E848;
  if (!qword_1ECC0E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E848);
  }

  return result;
}

unint64_t sub_1DAF988A8()
{
  result = qword_1EE301978;
  if (!qword_1EE301978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301978);
  }

  return result;
}

unint64_t sub_1DAF988FC()
{
  result = qword_1EE3018F0;
  if (!qword_1EE3018F0)
  {
    sub_1DB09DBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3018F0);
  }

  return result;
}

unint64_t sub_1DAF98954()
{
  result = qword_1EE301918;
  if (!qword_1EE301918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC0EEB0, &unk_1DB0A4ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODIServerRepo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIServerRepo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAF98B0C()
{
  result = qword_1ECC0E850;
  if (!qword_1ECC0E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E850);
  }

  return result;
}

uint64_t sub_1DAF98B64()
{
  v1 = 0x656D697464;
  v2 = 0x656D697473;
  if (*v0 != 2)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v2 = 1684955506;
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

uint64_t sub_1DAF98BC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAF9BA0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAF98BF0(uint64_t a1)
{
  v2 = sub_1DAF9C074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF98C2C(uint64_t a1)
{
  v2 = sub_1DAF9C074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF98C80(uint64_t a1)
{
  sub_1DB09D794();
}

unint64_t sub_1DAF98DB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAF9BB6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAF98DE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEB0000000064695FLL;
    v9 = 0xD000000000000010;
    v10 = 0x80000001DB0C13C0;
    if (v2 != 1)
    {
      v9 = 0xD000000000000033;
      v10 = 0x80000001DB0C13E0;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x776F6C666B726F77;
    }

    if (!v11)
    {
      v8 = v10;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001DB0C1460;
    v4 = 0xD000000000000017;
    if (v2 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000001DB0C1480;
    }

    v5 = 0x80000001DB0C1420;
    v6 = 0xD000000000000026;
    if (v2 != 3)
    {
      v6 = 0x5F64616F6C796170;
      v5 = 0xEE006572756E6574;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1DAF98EEC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0xD000000000000033;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x776F6C666B726F77;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (v1 == 5)
    {
      v2 = 0xD000000000000010;
    }

    v3 = 0xD000000000000026;
    if (v1 != 3)
    {
      v3 = 0x5F64616F6C796170;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1DAF98FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAF9BB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAF99010(uint64_t a1)
{
  v2 = sub_1DAF9C130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF9904C(uint64_t a1)
{
  v2 = sub_1DAF9C130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAF99088(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E868, &qword_1DB0A6630);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C074();
  sub_1DB09E434();
  v8[15] = 0;
  sub_1DB09E154();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1DB09E154();
  v8[13] = 2;
  sub_1DB09E154();
  v8[12] = 3;
  sub_1DB09E154();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAF99248(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E898, &qword_1DB0A6648);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v18 = *v1;
  v31 = *(v1 + 16);
  v17 = v1[3];
  v16 = *(v1 + 32);
  v7 = v1[5];
  v14[2] = v1[6];
  v15 = v7;
  v8 = v1[8];
  v14[0] = v1[7];
  v14[1] = v8;
  v9 = *(v1 + 11);
  v10 = *(v1 + 15);
  v28 = *(v1 + 13);
  v29 = v10;
  v30 = *(v1 + 17);
  v26 = *(v1 + 9);
  v27 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C130();
  sub_1DB09E434();
  LOBYTE(v21) = 0;
  v11 = v19;
  sub_1DB09E154();
  if (!v11)
  {
    v12 = v15;
    LOBYTE(v21) = 1;
    sub_1DB09E164();
    LOBYTE(v21) = 2;
    sub_1DB09E134();
    *&v21 = v12;
    LOBYTE(v20[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
    sub_1DAF9C240(&qword_1EE300F28, &protocol conformance descriptor for EncryptedDataContainer<A>);
    sub_1DB09E144();
    LOBYTE(v21) = 4;
    sub_1DB09E184();
    LOBYTE(v21) = 5;
    sub_1DB09E104();
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v32 = 6;
    sub_1DAF40A84(&v26, v20, &qword_1ECC0E8A0, &qword_1DB0A6650);
    sub_1DAF9C290();
    sub_1DB09E144();
    v20[2] = v23;
    v20[3] = v24;
    v20[4] = v25;
    v20[0] = v21;
    v20[1] = v22;
    sub_1DAF40AEC(v20, &qword_1ECC0E8A0, &qword_1DB0A6650);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DAF9959C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E870, &qword_1DB0A6638);
  v5 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v28 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C130();
  v67 = v7;
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  LOBYTE(v42[0]) = 0;
  v9 = v36;
  v10 = sub_1DB09E084();
  v12 = v11;
  v35 = v10;
  LOBYTE(v42[0]) = 1;
  v34 = sub_1DB09E094();
  LOBYTE(v42[0]) = 2;
  v13 = a1;
  v14 = sub_1DB09E064();
  v66 = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E880, &qword_1DB0A6640);
  LOBYTE(v37) = 3;
  sub_1DAF9C240(&qword_1ECC0E888, &protocol conformance descriptor for EncryptedDataContainer<A>);
  sub_1DB09E074();
  v33 = v42[0];
  LOBYTE(v42[0]) = 4;
  v31 = sub_1DB09E0B4();
  LOBYTE(v42[0]) = 5;
  v30 = sub_1DB09E044();
  v32 = v16;
  v55 = 6;
  sub_1DAF9C184();
  sub_1DB09E074();
  v34 &= 1u;
  (*(v8 + 8))(v67, v9);
  v63 = v58;
  v64 = v59;
  v65 = v60;
  v61 = v56;
  v62 = v57;
  *&v37 = v35;
  *(&v37 + 1) = v12;
  LOBYTE(v38) = v34;
  v29 = v14;
  *(&v38 + 1) = v14;
  LODWORD(v67) = v66;
  LOBYTE(v39) = v66;
  v17 = v32;
  v19 = v30;
  v18 = v31;
  *(&v39 + 1) = v33;
  *&v40 = v31;
  *(&v40 + 1) = v30;
  *v41 = v32;
  *&v41[8] = v56;
  *&v41[24] = v57;
  *&v41[72] = v60;
  *&v41[40] = v58;
  *&v41[56] = v59;
  v20 = v38;
  *a2 = v37;
  *(a2 + 16) = v20;
  v21 = v39;
  v22 = v40;
  v23 = *&v41[16];
  *(a2 + 64) = *v41;
  *(a2 + 80) = v23;
  *(a2 + 32) = v21;
  *(a2 + 48) = v22;
  v24 = *&v41[32];
  v25 = *&v41[48];
  v26 = *&v41[64];
  *(a2 + 144) = *&v41[80];
  *(a2 + 112) = v25;
  *(a2 + 128) = v26;
  *(a2 + 96) = v24;
  sub_1DAF9C1D8(&v37, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v51 = v62;
  v52 = v63;
  v53 = v64;
  v54 = v65;
  v42[0] = v35;
  v42[1] = v12;
  v43 = v34;
  v44 = v29;
  v45 = v67;
  v46 = v33;
  v47 = v18;
  v48 = v19;
  v49 = v17;
  v50 = v61;
  return sub_1DAF9C210(v42);
}

uint64_t sub_1DAF99A58(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E8E8, &qword_1DB0A6670);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v1[1];
  v51 = *v1;
  v52 = v5;
  v6 = v1[3];
  v53 = v1[2];
  v54 = v6;
  v7 = *(v1 + 8);
  v26 = *(v1 + 9);
  v27 = v7;
  v8 = *(v1 + 10);
  v24 = *(v1 + 11);
  v25 = v8;
  v9 = v1[13];
  v61 = v1[12];
  v62 = v9;
  v63 = v1[14];
  v64 = *(v1 + 30);
  v10 = v1[9];
  v57 = v1[8];
  v58 = v10;
  v11 = v1[11];
  v59 = v1[10];
  v60 = v11;
  v12 = v1[7];
  v55 = v1[6];
  v56 = v12;
  v14 = *(v1 + 248);
  v13 = v1 + 248;
  v22 = *(v13 + 16);
  v23 = v14;
  v15 = *(v13 + 32);
  v16 = a1[3];
  v17 = a1;
  v19 = &v22 - v18;
  __swift_project_boxed_opaque_existential_1(v17, v16);
  sub_1DAF40A84(&v51, &v35, &qword_1ECC0E8C8, &qword_1DB0A6660);
  sub_1DAF9C2E4();
  sub_1DB09E434();
  v47 = v51;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v46 = 0;
  sub_1DAF9C49C();
  v20 = v65;
  sub_1DB09E144();
  if (v20)
  {
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v38 = v50;
    sub_1DAF40AEC(&v35, &qword_1ECC0E8C8, &qword_1DB0A6660);
    return (*(v4 + 8))(v19, v3);
  }

  else
  {
    v45[0] = v47;
    v45[1] = v48;
    v45[2] = v49;
    v45[3] = v50;
    sub_1DAF40AEC(v45, &qword_1ECC0E8C8, &qword_1DB0A6660);
    LOBYTE(v35) = 1;
    sub_1DB09E104();
    LOBYTE(v35) = 2;
    sub_1DB09E104();
    v41 = v61;
    v42 = v62;
    v43 = v63;
    v44 = v64;
    v37 = v57;
    v38 = v58;
    v39 = v59;
    v40 = v60;
    v35 = v55;
    v36 = v56;
    v34 = 3;
    sub_1DAF40A84(&v55, v32, &qword_1ECC0E8D0, &qword_1DB0A6668);
    sub_1DAF9C4F0();
    sub_1DB09E144();
    v32[6] = v41;
    v32[7] = v42;
    v32[8] = v43;
    v33 = v44;
    v32[2] = v37;
    v32[3] = v38;
    v32[4] = v39;
    v32[5] = v40;
    v32[0] = v35;
    v32[1] = v36;
    sub_1DAF40AEC(v32, &qword_1ECC0E8D0, &qword_1DB0A6668);
    v30 = v22;
    v29 = v23;
    v31 = v15;
    v28 = 4;
    sub_1DAF9C544();
    sub_1DB09E144();
    return (*(v4 + 8))(v19, 0);
  }
}

uint64_t sub_1DAF99E60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E8B0, &qword_1DB0A6658);
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v19 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C2E4();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v8 = v5;
  v81 = 0;
  sub_1DAF9C338();
  sub_1DB09E074();
  v75 = v61;
  v76 = v62;
  v77 = v63;
  v78 = v64;
  LOBYTE(v28[0]) = 1;
  v9 = sub_1DB09E044();
  v25 = v10;
  v23 = v9;
  LOBYTE(v28[0]) = 2;
  v22 = sub_1DB09E044();
  v24 = v11;
  v80 = 3;
  sub_1DAF9C38C();
  v12 = v26;
  sub_1DB09E074();
  v71 = v57;
  v72 = v58;
  v73 = v59;
  v74 = v60;
  v67 = v53;
  v68 = v54;
  v69 = v55;
  v70 = v56;
  v65 = v51;
  v66 = v52;
  v79 = 4;
  sub_1DAF9C3E0();
  sub_1DB09E074();
  (*(v8 + 8))(v7, v12);
  v13 = v48;
  v26 = v49;
  v20 = v50;
  v21 = *(&v49 + 1);
  v19 = *(&v50 + 1);
  v27[0] = v75;
  v27[1] = v76;
  v27[2] = v77;
  v27[3] = v78;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  *&v27[4] = v23;
  *(&v27[4] + 1) = v25;
  *&v27[5] = v22;
  *(&v27[5] + 1) = v24;
  v27[13] = v72;
  v27[14] = v73;
  v27[11] = v70;
  v27[12] = v71;
  v27[9] = v68;
  v27[10] = v69;
  v27[7] = v66;
  v27[8] = v67;
  v27[6] = v65;
  *&v27[15] = v74;
  *(&v27[15] + 1) = v48;
  v27[16] = v49;
  v27[17] = v50;
  memcpy(a2, v27, 0x120uLL);
  sub_1DAF9C434(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v28[0] = v75;
  v28[1] = v76;
  v28[2] = v77;
  v28[3] = v78;
  v29 = v14;
  v30 = v16;
  v31 = v15;
  v32 = v17;
  v39 = v71;
  v40 = v72;
  v41 = v73;
  v35 = v67;
  v36 = v68;
  v37 = v69;
  v38 = v70;
  v33 = v65;
  v34 = v66;
  v42 = v74;
  v43 = v13;
  v44 = v26;
  v45 = v21;
  v46 = v20;
  v47 = v19;
  return sub_1DAF9C46C(v28);
}

uint64_t sub_1DAF9A384()
{
  v1 = *v0;
  v2 = 0x7364656573;
  v3 = 0x656D737365737361;
  v4 = 0x6E6F697469646461;
  if (v1 != 3)
  {
    v4 = 0x666E49726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x49656C69666F7270;
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

uint64_t sub_1DAF9A43C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DAF9BBB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DAF9A464(uint64_t a1)
{
  v2 = sub_1DAF9C2E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF9A4A0(uint64_t a1)
{
  v2 = sub_1DAF9C2E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DAF9A4DC@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DAF9BD80(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

void *sub_1DAF9A598(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E900, &unk_1DB0A6678);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1DAF9C598();
  sub_1DB09E414();
  if (v2)
  {
LABEL_20:
    type metadata accessor for AMPCristalPayloadData();
    swift_deallocPartialClassInstance();
    goto LABEL_21;
  }

  v42 = v6;
  LOBYTE(v44[0]) = 0;
  v10 = sub_1DB09E084();
  v40 = v5;
  v41 = v3;
  *&v43[0] = v10;
  *(&v43[0] + 1) = v11;
  v47 = 45;
  v48 = 0xE100000000000000;
  v45 = 43;
  v46 = 0xE100000000000000;
  sub_1DAF9C5EC();
  v12 = sub_1DB09DCA4();
  v14 = v13;

  *&v43[0] = v12;
  *(&v43[0] + 1) = v14;
  v47 = 95;
  v48 = 0xE100000000000000;
  v45 = 47;
  v46 = 0xE100000000000000;
  v15 = sub_1DB09DCA4();
  v17 = v16;

  *&v44[0] = v15;
  *(&v44[0] + 1) = v17;

  LOBYTE(v14) = sub_1DB09D7A4();

  if ((v14 & 3) != 0)
  {
    if ((sub_1DB09D7A4() & 3) != 0)
    {
      sub_1DB09D7A4();
      v18 = sub_1DB09D844();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    MEMORY[0x1E127FE90](v18, v20);
  }

  v21 = sub_1DB09CFA4();
  v23 = v22;
  sub_1DAF4ED88(v21, v22);

  if (v23 >> 60 == 15)
  {
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v25 + 16))
    {
      v26 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v27)
      {
        sub_1DAF409DC(*(v25 + 56) + 32 * v26, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v24 = *&v43[0];
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1DAF72FF4(0, *(v24 + 2) + 1, 1, v24);
    }

    v29 = *(v24 + 2);
    v28 = *(v24 + 3);
    if (v29 >= v28 >> 1)
    {
      v24 = sub_1DAF72FF4((v28 > 1), v29 + 1, 1, v24);
    }

    *(v24 + 2) = v29 + 1;
    v30 = &v24[56 * v29];
    *(v30 + 4) = 0xD000000000000028;
    *(v30 + 5) = 0x80000001DB0C4900;
    *(v30 + 6) = 0xD00000000000002ELL;
    *(v30 + 7) = 0x80000001DB0C4930;
    *(v30 + 8) = 0x6F72662874696E69;
    *(v30 + 9) = 0xEB00000000293A6DLL;
    *(v30 + 10) = 78;
    *(&v44[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *&v44[0] = v24;
    sub_1DAF40D20(v44, v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v25;
    sub_1DAF3B11C(v43, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v32 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v33 = sub_1DB09D6B4();
    v34 = sub_1DB09D604();
    [v32 initWithDomain:v33 code:-1 userInfo:v34];

    swift_willThrow();
    (*(v42 + 8))(v8, v40);
    v3 = v41;
    goto LABEL_20;
  }

  sub_1DAF4AC40(v21, v23);
  sub_1DB09CC24();
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DAF9C640();
  sub_1DB09CC04();
  v3 = v41;

  memcpy(v3 + 2, v44, 0x120uLL);
  LOBYTE(v47) = 1;
  v35 = v40;
  v37 = sub_1DB09E084();
  v39 = v38;
  (*(v42 + 8))(v8, v35);
  sub_1DAF4AC40(v21, v23);
  v3[38] = v37;
  v3[39] = v39;
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  return v3;
}

uint64_t sub_1DAF9AC94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x656D737365737361;
  }

  if (v2)
  {
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v4 = 0x80000001DB0C14B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x656D737365737361;
  }

  if (*a2)
  {
    v6 = 0x80000001DB0C14B0;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DAF9AD44()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF9ADD0(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DAF9AE48()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAF9AED0@<X0>(char *a2@<X8>)
{
  v3 = sub_1DB09E004();

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

void sub_1DAF9AF30(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DB0C14B0;
  v3 = 0x656D737365737361;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA0000000000746ELL;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DAF9AF78()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656D737365737361;
  }
}

uint64_t sub_1DAF9AFBC@<X0>(char *a3@<X8>)
{
  v4 = sub_1DB09E004();

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

uint64_t sub_1DAF9B020(uint64_t a1)
{
  v2 = sub_1DAF9C598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAF9B05C(uint64_t a1)
{
  v2 = sub_1DAF9C598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1DAF9B098(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E918, &qword_1DB0A6688);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C598();
  sub_1DB09E434();
  v52[0] = 1;
  sub_1DB09E154();
  if (!v2)
  {
    sub_1DB09CC54();
    swift_allocObject();
    sub_1DB09CC44();
    memcpy(v51, (v3 + 16), sizeof(v51));
    memcpy(v50, (v3 + 16), sizeof(v50));
    sub_1DAF9C434(v51, v49);
    sub_1DAF9C694();
    v32 = sub_1DB09CC34();
    v34 = v33;
    memcpy(v49, v50, sizeof(v49));
    sub_1DAF9C46C(v49);

    sub_1DB09D014();
    sub_1DAF40780(v32, v34);
    v48[15] = 0;
    sub_1DB09E154();
    (*(v6 + 8))(v8, v5);

    return;
  }

  (*(v6 + 8))(v8, v5);
  v9 = v2;
  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v11 = v2;
  v12 = sub_1DB09CE64();
  v13 = [v12 domain];
  v14 = sub_1DB09D6C4();
  v16 = v15;

  if (v14 == 0x726F727245504944 && v16 == 0xE800000000000000)
  {
    goto LABEL_16;
  }

  v18 = sub_1DB09E254();

  if (v18)
  {
    goto LABEL_17;
  }

  v19 = [v12 domain];
  v20 = sub_1DB09D6C4();
  v22 = v21;

  if (v20 == 0x726F72724549444FLL && v22 == 0xE800000000000000)
  {
LABEL_16:

    goto LABEL_17;
  }

  v24 = sub_1DB09E254();

  if ((v24 & 1) == 0)
  {
    v25 = sub_1DB09D6C4();
    v27 = v26;
    *(&v51[1] + 1) = sub_1DAF4D7A4();
    *&v51[0] = v12;
    sub_1DAF40D20(v51, v50);
    v28 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = v10;
    sub_1DAF3B11C(v50, v25, v27, isUniquelyReferenced_nonNull_native);

    v30 = v49[0];
    v31 = 85;
    goto LABEL_21;
  }

LABEL_17:
  DIPErrorCode.init(rawValue:)([v12 code]);
  if (LOWORD(v51[0]) == 462)
  {
    v35 = 85;
  }

  else
  {
    v35 = v51[0];
  }

  v36 = [v12 userInfo];
  v30 = sub_1DB09D624();

  v31 = v35;
LABEL_21:
  v53 = v31;
  if (*(v30 + 16) && (v37 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v38 & 1) != 0) && (sub_1DAF409DC(*(v30 + 56) + 32 * v37, v51), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
  {
    v39 = *&v50[0];
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v39 = sub_1DAF72FF4(0, *(v39 + 2) + 1, 1, v39);
  }

  v41 = *(v39 + 2);
  v40 = *(v39 + 3);
  if (v41 >= v40 >> 1)
  {
    v39 = sub_1DAF72FF4((v40 > 1), v41 + 1, 1, v39);
  }

  *(v39 + 2) = v41 + 1;
  v42 = &v39[56 * v41];
  *(v42 + 4) = 0xD000000000000046;
  *(v42 + 5) = 0x80000001DB0C4960;
  *(v42 + 6) = 0xD00000000000002ELL;
  *(v42 + 7) = 0x80000001DB0C4930;
  *(v42 + 8) = 0x742865646F636E65;
  *(v42 + 9) = 0xEB00000000293A6FLL;
  *(v42 + 10) = 104;
  *(&v51[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *&v51[0] = v39;
  sub_1DAF40D20(v51, v50);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v30;
  sub_1DAF3B11C(v50, 0x636F766E49504944, 0xEE00736E6F697461, v43);
  v44 = qword_1DB0A6C00[v53];
  v45 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v46 = sub_1DB09D6B4();
  v47 = sub_1DB09D604();
  [v45 initWithDomain:v46 code:v44 userInfo:v47];

  swift_willThrow();
}

uint64_t sub_1DAF9B804()
{
  memcpy(v2, (v0 + 16), sizeof(v2));
  sub_1DAF9C46C(v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAF9B884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 288))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DAF9B8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_1DAF9B990@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AMPCristalPayloadData();
  v5 = swift_allocObject();
  result = sub_1DAF9A598(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DAF9BA0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684955506 && a2 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697464 && a2 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB09E254();

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

unint64_t sub_1DAF9BB6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAF9BBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364656573 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DB09E254() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49656C69666F7270 && a2 == 0xE900000000000064 || (sub_1DB09E254() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL || (sub_1DB09E254() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469646461 && a2 == 0xEE006F666E496C61 || (sub_1DB09E254() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x666E49726F727265 && a2 == 0xE90000000000006FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB09E254();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1DAF9BD80@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E858, &qword_1DB0A6628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAF9C074();
  sub_1DB09E414();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_1DB09E084();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_1DB09E084();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_1DB09E084();
  v25 = v13;
  v33 = 3;
  v14 = sub_1DB09E084();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1DAF9C0C8(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_1DAF9C100(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_1DAF9C074()
{
  result = qword_1ECC0E860;
  if (!qword_1ECC0E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E860);
  }

  return result;
}

unint64_t sub_1DAF9C130()
{
  result = qword_1ECC0E878;
  if (!qword_1ECC0E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E878);
  }

  return result;
}

unint64_t sub_1DAF9C184()
{
  result = qword_1ECC0E890;
  if (!qword_1ECC0E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E890);
  }

  return result;
}

uint64_t sub_1DAF9C240(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0E880, &qword_1DB0A6640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAF9C290()
{
  result = qword_1ECC0E8A8;
  if (!qword_1ECC0E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8A8);
  }

  return result;
}

unint64_t sub_1DAF9C2E4()
{
  result = qword_1ECC0E8B8;
  if (!qword_1ECC0E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8B8);
  }

  return result;
}

unint64_t sub_1DAF9C338()
{
  result = qword_1ECC0E8C0;
  if (!qword_1ECC0E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8C0);
  }

  return result;
}

unint64_t sub_1DAF9C38C()
{
  result = qword_1ECC0E8D8;
  if (!qword_1ECC0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8D8);
  }

  return result;
}

unint64_t sub_1DAF9C3E0()
{
  result = qword_1ECC0E8E0;
  if (!qword_1ECC0E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8E0);
  }

  return result;
}

unint64_t sub_1DAF9C49C()
{
  result = qword_1ECC0E8F0;
  if (!qword_1ECC0E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8F0);
  }

  return result;
}

unint64_t sub_1DAF9C4F0()
{
  result = qword_1ECC0E8F8;
  if (!qword_1ECC0E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E8F8);
  }

  return result;
}

unint64_t sub_1DAF9C544()
{
  result = qword_1EE3017F0;
  if (!qword_1EE3017F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3017F0);
  }

  return result;
}

unint64_t sub_1DAF9C598()
{
  result = qword_1ECC0E908;
  if (!qword_1ECC0E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E908);
  }

  return result;
}

unint64_t sub_1DAF9C5EC()
{
  result = qword_1EE301988;
  if (!qword_1EE301988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE301988);
  }

  return result;
}

unint64_t sub_1DAF9C640()
{
  result = qword_1ECC0E910;
  if (!qword_1ECC0E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E910);
  }

  return result;
}

unint64_t sub_1DAF9C694()
{
  result = qword_1ECC0E920;
  if (!qword_1ECC0E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E920);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODNAssessmentResultAMP.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ODNAssessmentResultAMP.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODNAssessmentResultAMP.AdditionalInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ODNAssessmentResultAMP.AdditionalInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1DAF9C9DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAF9CA24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAF9CAAC()
{
  result = qword_1ECC0E928;
  if (!qword_1ECC0E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E928);
  }

  return result;
}

unint64_t sub_1DAF9CB04()
{
  result = qword_1ECC0E930;
  if (!qword_1ECC0E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E930);
  }

  return result;
}

unint64_t sub_1DAF9CB5C()
{
  result = qword_1ECC0E938;
  if (!qword_1ECC0E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E938);
  }

  return result;
}

unint64_t sub_1DAF9CBB4()
{
  result = qword_1ECC0E940;
  if (!qword_1ECC0E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E940);
  }

  return result;
}

unint64_t sub_1DAF9CC0C()
{
  result = qword_1ECC0E948;
  if (!qword_1ECC0E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E948);
  }

  return result;
}

unint64_t sub_1DAF9CC64()
{
  result = qword_1ECC0E950;
  if (!qword_1ECC0E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E950);
  }

  return result;
}

unint64_t sub_1DAF9CCBC()
{
  result = qword_1ECC0E958;
  if (!qword_1ECC0E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E958);
  }

  return result;
}

unint64_t sub_1DAF9CD14()
{
  result = qword_1ECC0E960;
  if (!qword_1ECC0E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E960);
  }

  return result;
}

unint64_t sub_1DAF9CD6C()
{
  result = qword_1ECC0E968;
  if (!qword_1ECC0E968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E968);
  }

  return result;
}

unint64_t sub_1DAF9CDC4()
{
  result = qword_1ECC0E970;
  if (!qword_1ECC0E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E970);
  }

  return result;
}

unint64_t sub_1DAF9CE1C()
{
  result = qword_1ECC0E978;
  if (!qword_1ECC0E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E978);
  }

  return result;
}

unint64_t sub_1DAF9CE74()
{
  result = qword_1ECC0E980;
  if (!qword_1ECC0E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E980);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPRetrier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPRetrier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1DAF9CF6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 536) = a8;
  *(v8 + 459) = a7;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 458) = a4;
  *(v8 + 504) = a2;
  *(v8 + 512) = a3;
  *(v8 + 496) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF9CFA4, 0, 0);
}

uint64_t sub_1DAF9CFA4()
{
  *(v0 + 544) = xmmword_1DB0A7A90;
  v1 = *(v0 + 504);
  if (v1 <= 0)
  {
    sub_1DB09DE44();

    *(v0 + 480) = v1;
    v8 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v8);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v9 = MEMORY[0x1E69E7CC0];
    v10 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v13)
      {
        sub_1DAF409DC(*(v10 + 56) + 32 * v12, v0 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 488);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DAF72FF4(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_1DAF72FF4((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v16 = &v9[56 * v15];
    *(v16 + 4) = 0x656972742078616DLL;
    *(v16 + 5) = 0xEA00000000002073;
    *(v16 + 6) = 0xD000000000000022;
    *(v16 + 7) = 0x80000001DB0C4A00;
    *(v16 + 8) = 0x293A5F28636E7973;
    *(v16 + 9) = 0xE800000000000000;
    *(v16 + 10) = 106;
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v0 + 304) = v9;
    sub_1DAF40D20((v0 + 304), (v0 + 336));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 336), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);
    v20 = *(v0 + 520);
    v21 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v22 = sub_1DB09D6B4();
    v23 = sub_1DB09D604();
    [v21 initWithDomain:v22 code:-2108 userInfo:{v23, v10}];

    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 560) = v2;
    *v2 = v0;
    v2[1] = sub_1DAF9D3D0;
    v3 = *(v0 + 536);
    v4 = *(v0 + 459);
    v5 = *(v0 + 528);
    v6 = *(v0 + 520);

    return sub_1DAFAC774(v0 + 432, 1, v6, v5, v4, v3);
  }
}

uint64_t sub_1DAF9D3D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF9D4CC, 0, 0);
}

uint64_t sub_1DAF9D4CC()
{
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  *(v0 + 568) = v4;
  *(v0 + 576) = v5;
  v6 = *(v0 + 448);
  *(v0 + 584) = v6;
  v7 = *(v0 + 456);
  *(v0 + 460) = v7;
  v8 = *(v0 + 457);
  if (v8 <= 1)
  {
    if (!*(v0 + 457))
    {
      v11 = *(v0 + 536);
      v12 = *(v0 + 528);
      v13 = *(v0 + 520);
      v14 = *(v0 + 496);
      sub_1DAF40674(v4, *&v5);
      v15 = v6;
      sub_1DAFA0678(v4, *&v5, v6, v7, 0);

      *v14 = v4;
      *(v14 + 8) = v5;
      *(v14 + 16) = v15;
      *(v14 + 24) = v7 & 1;

      v16 = *(v0 + 8);
LABEL_128:

      return v16();
    }

    sub_1DAFA06FC(v4, *&v5, v6, v7, 1u);
    v34 = v4;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v4, 0xD00000000000002ALL, 0x80000001DB0C4AE0, qword_1EE30A148);
    sub_1DAFA0678(v4, *&v5, v6, v7, 1u);
    sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));
    v35 = *(v0 + 552);
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_142;
    }

    *(v0 + 552) = v37;
    *(v0 + 544) = v4;
    if (!v4)
    {
      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v58 = MEMORY[0x1E69E7CC0];
      v59 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v59 + 16))
      {
        v60 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
        if (v61)
        {
          sub_1DAF409DC(*(v59 + 56) + 32 * v60, v0 + 16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
          if (swift_dynamicCast())
          {
            v58 = *(v0 + 464);
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1DAF72FF4(0, *(v58 + 2) + 1, 1, v58);
      }

      v63 = *(v58 + 2);
      v62 = *(v58 + 3);
      if (v63 >= v62 >> 1)
      {
        v58 = sub_1DAF72FF4((v62 > 1), v63 + 1, 1, v58);
      }

      v64 = *(v0 + 536);
      v65 = *(v0 + 528);
      v66 = *(v0 + 520);
      *(v58 + 2) = v63 + 1;
      v67 = &v58[56 * v63];
      v68 = v64;
      *(v67 + 4) = 0xD000000000000046;
      *(v67 + 5) = 0x80000001DB0C49B0;
      *(v67 + 6) = 0xD000000000000022;
      *(v67 + 7) = 0x80000001DB0C4A00;
      *(v67 + 8) = 0x293A5F28636E7973;
      *(v67 + 9) = 0xE800000000000000;
      *(v67 + 10) = 115;
      *(v0 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *(v0 + 48) = v58;
      sub_1DAF40D20((v0 + 48), (v0 + 80));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v0 + 80), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v70 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v71 = sub_1DB09D6B4();
      v72 = sub_1DB09D604();
      [v70 initWithDomain:v71 code:-1 userInfo:v72];

      swift_willThrow();
      goto LABEL_127;
    }

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v38 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v39 = v4;
    v40 = sub_1DB09CE64();
    v41 = [v40 domain];
    v42 = sub_1DB09D6C4();
    v44 = v43;

    if (v42 == 0x726F727245504944 && v44 == 0xE800000000000000)
    {
      goto LABEL_41;
    }

    v73 = sub_1DB09E254();

    if (v73)
    {
      goto LABEL_77;
    }

    v95 = [v40 domain];
    v96 = sub_1DB09D6C4();
    v98 = v97;

    if (v96 == 0x726F72724549444FLL && v98 == 0xE800000000000000)
    {
LABEL_41:
    }

    else
    {
      v99 = sub_1DB09E254();

      if ((v99 & 1) == 0)
      {
        v100 = sub_1DB09D6C4();
        v102 = v101;
        *(v0 + 136) = sub_1DAF4D7A4();
        *(v0 + 112) = v40;
        sub_1DAF40D20((v0 + 112), (v0 + 144));
        v103 = v40;
        v104 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C((v0 + 144), v100, v102, v104);

        v74 = 0;
        v76 = v38;
        goto LABEL_81;
      }
    }

LABEL_77:
    DIPErrorCode.init(rawValue:)([v40 code]);
    if (v135 == 462)
    {
      LOWORD(v74) = 0;
    }

    else
    {
      LOWORD(v74) = v135;
    }

    v75 = [v40 userInfo];
    v76 = sub_1DB09D624();

    v74 = v74;
LABEL_81:
    if (*(v76 + 16) && (v77 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v78 & 1) != 0) && (sub_1DAF409DC(*(v76 + 56) + 32 * v77, v0 + 176), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
    {
      v79 = *(v0 + 472);
    }

    else
    {
      v79 = MEMORY[0x1E69E7CC0];
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1DAF72FF4(0, *(v79 + 2) + 1, 1, v79);
    }

    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_1DAF72FF4((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[56 * v81];
    *(v82 + 4) = 0xD00000000000001DLL;
    *(v82 + 5) = 0x80000001DB0C4A30;
    *(v82 + 6) = 0xD000000000000022;
    *(v82 + 7) = 0x80000001DB0C4A00;
    *(v82 + 8) = 0x293A5F28636E7973;
    *(v82 + 9) = 0xE800000000000000;
    *(v82 + 10) = 112;
    *(v0 + 232) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v0 + 208) = v79;
    sub_1DAF40D20((v0 + 208), (v0 + 240));
    v83 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 240), 0x636F766E49504944, 0xEE00736E6F697461, v83);
    v84 = qword_1DB0A7B08[v74];
    v68 = *(v0 + 536);
    v65 = *(v0 + 528);
    v66 = *(v0 + 520);
    v85 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v86 = sub_1DB09D6B4();
    v87 = sub_1DB09D604();
    [v85 initWithDomain:v86 code:v84 userInfo:v87];

    goto LABEL_126;
  }

  if (v8 == 2)
  {
    sub_1DAFA06FC(v4, *&v5, v6, v7, 2u);
    v17 = v4;
    if (qword_1EE301DE8 == -1)
    {
LABEL_11:
      sub_1DAF4B4C0(v4, 0xD00000000000002BLL, 0x80000001DB0C4A80, qword_1EE30A148);
      sub_1DAFA0678(v4, *&v5, v6, v7, 2u);
      v18 = swift_task_alloc();
      *(v0 + 592) = v18;
      *v18 = v0;
      v18[1] = sub_1DAF9EA58;
      v19 = *(v0 + 552);
      v20 = *(v0 + 504);
      v21 = *(v0 + 512);
      v22 = *(v0 + 458);

      return sub_1DAFA0254(v19, v20, v21, v22);
    }

LABEL_143:
    swift_once();
    goto LABEL_11;
  }

  if (v8 != 3)
  {
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 552);
    v25 = *(v0 + 504);
    v26 = qword_1EE30A148;
    v27 = sub_1DB09DB54();
    v10 = sub_1DB09D444("Retrier received retry from action", 34, 2, &dword_1DAF16000, v26, v27, MEMORY[0x1E69E7CC0]);
    if (v24 != v25)
    {
      if (!*(v0 + 458))
      {
        v93 = *(v0 + 512);
        if (v93 <= 0.0)
        {
          v28 = 0;
        }

        else
        {
          if ((~*(v0 + 512) & 0x7FF0000000000000) == 0)
          {
LABEL_153:
            __break(1u);
            goto LABEL_154;
          }

          if (v93 <= -1.0)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          if (v93 >= 1.84467441e19)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          if (v93 >= 0x44B82FA09)
          {
            v28 = -1;
          }

          else
          {
            v94 = v93 * 1000000000.0;
            if (*&v94 >> 52 > 0x7FEuLL)
            {
LABEL_159:
              __break(1u);
              goto LABEL_160;
            }

            if (v94 <= -1.0)
            {
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            if (v94 >= 1.84467441e19)
            {
LABEL_163:
              __break(1u);
              return MEMORY[0x1EEE6DA60](v10);
            }

            v28 = v94;
          }
        }

        v105 = swift_task_alloc();
        *(v0 + 608) = v105;
        *v105 = v0;
        v106 = sub_1DAF9EFB8;
        goto LABEL_135;
      }

      if (*(v0 + 458) == 1)
      {
        v28 = 0;
        v29 = *(v0 + 552);
        if ((v29 - 1) >= 0x40)
        {
          v30 = 0;
        }

        else
        {
          v30 = 1 << (v29 - 1);
        }

        v31 = v30;
        if ((v29 - 66) < 0xFFFFFFFFFFFFFF7FLL)
        {
          v31 = 0.0;
        }

        v32 = *(v0 + 512) * v31;
        if (v32 > 0.0)
        {
          if (*&v32 >> 52 > 0x7FEuLL)
          {
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          if (v32 <= -1.0)
          {
LABEL_154:
            __break(1u);
            goto LABEL_155;
          }

          if (v32 >= 1.84467441e19)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          if (v32 >= 0x44B82FA09)
          {
            v28 = -1;
          }

          else
          {
            v33 = v32 * 1000000000.0;
            if (*&v33 >> 52 > 0x7FEuLL)
            {
LABEL_158:
              __break(1u);
              goto LABEL_159;
            }

            if (v33 <= -1.0)
            {
LABEL_160:
              __break(1u);
              goto LABEL_161;
            }

            if (v33 >= 1.84467441e19)
            {
LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

            v28 = v33;
          }
        }

        v105 = swift_task_alloc();
        *(v0 + 624) = v105;
        *v105 = v0;
        v106 = sub_1DAF9F168;
LABEL_135:
        v105[1] = v106;
        v10 = v28;

        return MEMORY[0x1EEE6DA60](v10);
      }
    }

    return MEMORY[0x1EEE6DFA0](sub_1DAF9EB6C, 0, 0);
  }

  if (v4)
  {
    sub_1DAFA06FC(v4, *&v5, v6, v7, 3u);
    sub_1DAFA06FC(v4, *&v5, v6, v7, 3u);
    v9 = v4;
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    sub_1DAF4B4C0(v4, 0xD00000000000002CLL, 0x80000001DB0C4A50, qword_1EE30A148);
    sub_1DAFA0678(v4, *&v5, v6, v7, 3u);
  }

  else
  {
    if (qword_1EE301DE8 != -1)
    {
      swift_once();
    }

    v45 = qword_1EE30A148;
    v46 = sub_1DB09DB54();
    v10 = sub_1DB09D444("Retrier received retryAfterDelay from action", 44, 2, &dword_1DAF16000, v45, v46, MEMORY[0x1E69E7CC0]);
  }

  if (*(v0 + 552) != *(v0 + 504))
  {
    if (v5 <= 0.0)
    {
      v28 = 0;
      goto LABEL_109;
    }

    if ((~*&v5 & 0x7FF0000000000000) == 0)
    {
      __break(1u);
LABEL_145:
      swift_once();
LABEL_52:
      v50 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      v133 = v6;
      if (v4)
      {
        v51 = v4;
        v52 = sub_1DB09CE64();
        v53 = [v52 domain];
        v54 = sub_1DB09D6C4();
        v56 = v55;

        if (v54 == 0x726F727245504944 && v56 == 0xE800000000000000)
        {
          goto LABEL_55;
        }

        v107 = sub_1DB09E254();

        if (v107)
        {
          goto LABEL_113;
        }

        v123 = [v52 domain];
        v124 = sub_1DB09D6C4();
        v126 = v125;

        if (v124 == 0x726F72724549444FLL && v126 == 0xE800000000000000)
        {
LABEL_55:

LABEL_113:
          DIPErrorCode.init(rawValue:)([v52 code]);
          if (v135 == 462)
          {
            v108 = 107;
          }

          else
          {
            v108 = v135;
          }

          v109 = [v52 userInfo];
          v110 = sub_1DB09D624();

          v3 = v108;
          v50 = v110;
          goto LABEL_117;
        }

        v127 = sub_1DB09E254();

        if (v127)
        {
          goto LABEL_113;
        }

        v128 = sub_1DB09D6C4();
        v130 = v129;
        *(v0 + 392) = sub_1DAF4D7A4();
        *(v0 + 368) = v52;
        sub_1DAF40D20((v0 + 368), (v0 + 400));
        v131 = v52;
        v132 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C((v0 + 400), v128, v130, v132);

        v3 = 107;
      }

      else
      {
        v3 = 107;
      }

LABEL_117:
      v1 = 0xEE00736E6F697461;
      v7 = 0x636F766E49504944;
      v111 = *(v50 + 16);

      if (v111 && (v112 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v113 & 1) != 0) && (sub_1DAF409DC(*(v50 + 56) + 32 * v112, v0 + 272), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v2 = *(v0 + 488);
      }

      else
      {
        v2 = MEMORY[0x1E69E7CC0];
      }

      v6 = 0x80000001DB0C4A00;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_123:
        v115 = *(v2 + 2);
        v114 = *(v2 + 3);
        if (v115 >= v114 >> 1)
        {
          v2 = sub_1DAF72FF4((v114 > 1), v115 + 1, 1, v2);
        }

        *(v2 + 2) = v115 + 1;
        v116 = &v2[56 * v115];
        *(v116 + 4) = v133;
        *(v116 + 5) = v134;
        *(v116 + 6) = 0xD000000000000022;
        *(v116 + 7) = v6;
        *(v116 + 8) = 0x293A5F28636E7973;
        *(v116 + 9) = 0xE800000000000000;
        *(v116 + 10) = 106;
        *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        *(v0 + 304) = v2;
        sub_1DAF40D20((v0 + 304), (v0 + 336));
        v117 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C((v0 + 336), v7, v1, v117);
        v118 = qword_1DB0A7B08[v3];
        v119 = *(v0 + 536);
        v65 = *(v0 + 528);
        v66 = *(v0 + 520);
        v120 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v121 = sub_1DB09D6B4();
        v122 = sub_1DB09D604();
        [v120 initWithDomain:v121 code:v118 userInfo:v122];

        v68 = v119;

LABEL_126:
        swift_willThrow();

LABEL_127:
        v16 = *(v0 + 8);
        goto LABEL_128;
      }

LABEL_147:
      v2 = sub_1DAF72FF4(0, *(v2 + 2) + 1, 1, v2);
      goto LABEL_123;
    }

    if (v5 <= -1.0)
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v5 >= 1.84467441e19)
    {
      __break(1u);
    }

    else
    {
      if (v5 >= 0x44B82FA09)
      {
        v28 = -1;
        goto LABEL_109;
      }

      v57 = v5 * 1000000000.0;
      if (COERCE_UNSIGNED_INT64(v5 * 1000000000.0) >> 52 <= 0x7FE)
      {
        if (v57 > -1.0)
        {
          if (v57 < 1.84467441e19)
          {
            v28 = v57;
LABEL_109:
            v105 = swift_task_alloc();
            *(v0 + 632) = v105;
            *v105 = v0;
            v106 = sub_1DAF9F9C4;
            goto LABEL_135;
          }

          goto LABEL_151;
        }

LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }
    }

    __break(1u);
    goto LABEL_150;
  }

  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));
  sub_1DAFA0678(v4, *&v5, v6, v7, 3u);
  v47 = *(v0 + 552);
  *&v5 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  *(v0 + 552) = v5;
  *(v0 + 544) = v4;
  v48 = *(v0 + 504);
  if (*&v5 > v48)
  {
    sub_1DB09DE44();

    v135 = 24941;
    *(v0 + 480) = v48;
    v49 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v49);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v6 = 0x656972742078616DLL;
    v134 = 0xEA00000000002073;
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_145;
  }

  v88 = swift_task_alloc();
  *(v0 + 560) = v88;
  *v88 = v0;
  v88[1] = sub_1DAF9D3D0;
  v89 = *(v0 + 536);
  v90 = *(v0 + 459);
  v91 = *(v0 + 528);
  v92 = *(v0 + 520);

  return sub_1DAFAC774(v0 + 432, *&v5, v92, v91, v90, v89);
}

uint64_t sub_1DAF9EA58()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_1DAF9F91C;
  }

  else
  {
    v2 = sub_1DAF9F288;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF9EB6C()
{
  sub_1DAFA0678(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 457));
  v3 = *(v1 + 552);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_4:
    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v9 = *(v8 + 16);

    if (v9)
    {
      v10 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v10, v1 + 272);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v7 = *(v1 + 488);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72FF4(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_1DAF72FF4((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[56 * v13];
    *(v14 + 4) = v2;
    *(v14 + 5) = v0;
    *(v14 + 6) = 0xD000000000000022;
    *(v14 + 7) = 0x80000001DB0C4A00;
    *(v14 + 8) = 0x293A5F28636E7973;
    *(v14 + 9) = 0xE800000000000000;
    *(v14 + 10) = 106;
    *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v1 + 304) = v7;
    sub_1DAF40D20((v1 + 304), (v1 + 336));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v1 + 336), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = *(v1 + 536);
    v17 = *(v1 + 528);
    v18 = *(v1 + 520);
    v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v20 = sub_1DB09D6B4();
    v21 = sub_1DB09D604();
    [v19 initWithDomain:v20 code:-2108 userInfo:{v21, v8}];

    swift_willThrow();

    v22 = *(v1 + 8);

    return v22();
  }

  *(v1 + 552) = v4;
  *(v1 + 544) = 0;
  v5 = *(v1 + 504);
  if (v4 > v5)
  {
    sub_1DB09DE44();

    *(v1 + 480) = v5;
    v6 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v2 = 0x656972742078616DLL;
    v0 = 0xEA00000000002073;
    if (qword_1EE300B90 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v24 = swift_task_alloc();
  *(v1 + 560) = v24;
  *v24 = v1;
  v24[1] = sub_1DAF9D3D0;
  v25 = *(v1 + 536);
  v26 = *(v1 + 459);
  v27 = *(v1 + 528);
  v28 = *(v1 + 520);

  return sub_1DAFAC774(v1 + 432, v4, v28, v27, v26, v25);
}

uint64_t sub_1DAF9EFB8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 616) = v0;
    v3 = sub_1DAF9F0D8;
  }

  else
  {
    v3 = sub_1DAF9EB6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF9F0D8()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DAF9F168()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 616) = v0;
    v3 = sub_1DAF9F0D8;
  }

  else
  {
    v3 = sub_1DAF9EB6C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAF9F288()
{
  sub_1DAFA0678(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 457));
  v3 = *(v1 + 552);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v2 = *(v1 + 568);
  *(v1 + 552) = v4;
  *(v1 + 544) = v2;
  v5 = *(v1 + 504);
  if (v4 > v5)
  {
    sub_1DB09DE44();

    v54 = 24941;
    *(v1 + 480) = v5;
    v6 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v0 = 0xEA00000000002073;
    v52 = 0x656972742078616DLL;
    if (qword_1EE300B90 == -1)
    {
LABEL_4:
      v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (!v2)
      {
        v53 = 0;
        v20 = 107;
        goto LABEL_17;
      }

      v8 = v2;
      v9 = sub_1DB09CE64();
      v10 = [v9 domain];
      v11 = sub_1DB09D6C4();
      v13 = v12;

      if (v11 == 0x726F727245504944 && v13 == 0xE800000000000000)
      {
        goto LABEL_7;
      }

      v21 = sub_1DB09E254();

      if (v21)
      {
        goto LABEL_13;
      }

      v41 = [v9 domain];
      v53 = v2;
      v42 = sub_1DB09D6C4();
      v44 = v43;

      v45 = v42;
      v2 = v53;
      if (v45 == 0x726F72724549444FLL && v44 == 0xE800000000000000)
      {
LABEL_7:
      }

      else
      {
        v46 = sub_1DB09E254();

        if ((v46 & 1) == 0)
        {
          v47 = sub_1DB09D6C4();
          v49 = v48;
          *(v1 + 392) = sub_1DAF4D7A4();
          *(v1 + 368) = v9;
          sub_1DAF40D20((v1 + 368), (v1 + 400));
          v50 = v9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C((v1 + 400), v47, v49, isUniquelyReferenced_nonNull_native);

          v20 = 107;
          goto LABEL_17;
        }
      }

LABEL_13:
      DIPErrorCode.init(rawValue:)([v9 code]);
      if (v54 == 462)
      {
        v22 = 107;
      }

      else
      {
        v22 = v54;
      }

      v23 = [v9 userInfo];
      v24 = sub_1DB09D624();
      v53 = v2;

      v20 = v22;
      v7 = v24;
LABEL_17:
      v25 = *(v7 + 16);

      if (v25 && (v26 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v27 & 1) != 0) && (sub_1DAF409DC(*(v7 + 56) + 32 * v26, v1 + 272), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v28 = *(v1 + 488);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DAF72FF4(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DAF72FF4((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[56 * v30];
      *(v31 + 4) = v52;
      *(v31 + 5) = v0;
      *(v31 + 6) = 0xD000000000000022;
      *(v31 + 7) = 0x80000001DB0C4A00;
      *(v31 + 8) = 0x293A5F28636E7973;
      *(v31 + 9) = 0xE800000000000000;
      *(v31 + 10) = 106;
      *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *(v1 + 304) = v28;
      sub_1DAF40D20((v1 + 304), (v1 + 336));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 336), 0x636F766E49504944, 0xEE00736E6F697461, v32);
      v33 = qword_1DB0A7B08[v20];
      v34 = *(v1 + 536);
      v35 = *(v1 + 528);
      v36 = *(v1 + 520);
      v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v38 = sub_1DB09D6B4();
      v39 = sub_1DB09D604();
      [v37 initWithDomain:v38 code:v33 userInfo:v39];

      swift_willThrow();

      v40 = *(v1 + 8);

      return v40();
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v14 = swift_task_alloc();
  *(v1 + 560) = v14;
  *v14 = v1;
  v14[1] = sub_1DAF9D3D0;
  v15 = *(v1 + 536);
  v16 = *(v1 + 459);
  v17 = *(v1 + 528);
  v18 = *(v1 + 520);

  return sub_1DAFAC774(v1 + 432, v4, v18, v17, v16, v15);
}

uint64_t sub_1DAF9F91C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  sub_1DAFA0678(*(v0 + 568), *(v0 + 576), *(v0 + 584), *(v0 + 460), 2u);
  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1DAF9F9C4()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_1DAFA0184;
  }

  else
  {
    v2 = sub_1DAF9FAD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF9FAD8()
{
  sub_1DAFA0678(*(v1 + 568), *(v1 + 576), *(v1 + 584), *(v1 + 460), 3u);
  sub_1DAFA0678(*(v1 + 432), *(v1 + 440), *(v1 + 448), *(v1 + 456), *(v1 + 457));
  v3 = *(v1 + 552);
  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v2 = *(v1 + 568);
  *(v1 + 552) = v4;
  *(v1 + 544) = v2;
  v5 = *(v1 + 504);
  if (v4 > v5)
  {
    sub_1DB09DE44();

    v54 = 24941;
    *(v1 + 480) = v5;
    v6 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0x6564656563786520, 0xE900000000000064);
    v0 = 0xEA00000000002073;
    v52 = 0x656972742078616DLL;
    if (qword_1EE300B90 == -1)
    {
LABEL_4:
      v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (!v2)
      {
        v53 = 0;
        v20 = 107;
        goto LABEL_17;
      }

      v8 = v2;
      v9 = sub_1DB09CE64();
      v10 = [v9 domain];
      v11 = sub_1DB09D6C4();
      v13 = v12;

      if (v11 == 0x726F727245504944 && v13 == 0xE800000000000000)
      {
        goto LABEL_7;
      }

      v21 = sub_1DB09E254();

      if (v21)
      {
        goto LABEL_13;
      }

      v41 = [v9 domain];
      v53 = v2;
      v42 = sub_1DB09D6C4();
      v44 = v43;

      v45 = v42;
      v2 = v53;
      if (v45 == 0x726F72724549444FLL && v44 == 0xE800000000000000)
      {
LABEL_7:
      }

      else
      {
        v46 = sub_1DB09E254();

        if ((v46 & 1) == 0)
        {
          v47 = sub_1DB09D6C4();
          v49 = v48;
          *(v1 + 392) = sub_1DAF4D7A4();
          *(v1 + 368) = v9;
          sub_1DAF40D20((v1 + 368), (v1 + 400));
          v50 = v9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C((v1 + 400), v47, v49, isUniquelyReferenced_nonNull_native);

          v20 = 107;
          goto LABEL_17;
        }
      }

LABEL_13:
      DIPErrorCode.init(rawValue:)([v9 code]);
      if (v54 == 462)
      {
        v22 = 107;
      }

      else
      {
        v22 = v54;
      }

      v23 = [v9 userInfo];
      v24 = sub_1DB09D624();
      v53 = v2;

      v20 = v22;
      v7 = v24;
LABEL_17:
      v25 = *(v7 + 16);

      if (v25 && (v26 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v27 & 1) != 0) && (sub_1DAF409DC(*(v7 + 56) + 32 * v26, v1 + 272), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0), swift_dynamicCast()))
      {
        v28 = *(v1 + 488);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1DAF72FF4(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = sub_1DAF72FF4((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      v31 = &v28[56 * v30];
      *(v31 + 4) = v52;
      *(v31 + 5) = v0;
      *(v31 + 6) = 0xD000000000000022;
      *(v31 + 7) = 0x80000001DB0C4A00;
      *(v31 + 8) = 0x293A5F28636E7973;
      *(v31 + 9) = 0xE800000000000000;
      *(v31 + 10) = 106;
      *(v1 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *(v1 + 304) = v28;
      sub_1DAF40D20((v1 + 304), (v1 + 336));
      v32 = swift_isUniquelyReferenced_nonNull_native();
      sub_1DAF3B11C((v1 + 336), 0x636F766E49504944, 0xEE00736E6F697461, v32);
      v33 = qword_1DB0A7B08[v20];
      v34 = *(v1 + 536);
      v35 = *(v1 + 528);
      v36 = *(v1 + 520);
      v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v38 = sub_1DB09D6B4();
      v39 = sub_1DB09D604();
      [v37 initWithDomain:v38 code:v33 userInfo:v39];

      swift_willThrow();

      v40 = *(v1 + 8);

      return v40();
    }

LABEL_34:
    swift_once();
    goto LABEL_4;
  }

  v14 = swift_task_alloc();
  *(v1 + 560) = v14;
  *v14 = v1;
  v14[1] = sub_1DAF9D3D0;
  v15 = *(v1 + 536);
  v16 = *(v1 + 459);
  v17 = *(v1 + 528);
  v18 = *(v1 + 520);

  return sub_1DAFAC774(v1 + 432, v4, v18, v17, v16, v15);
}

uint64_t sub_1DAFA0184()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 536);
  v5 = *(v0 + 528);
  v6 = *(v0 + 520);
  v7 = *(v0 + 460);

  sub_1DAFA0678(v3, v2, v1, v7, 3u);
  sub_1DAFA0678(*(v0 + 432), *(v0 + 440), *(v0 + 448), *(v0 + 456), *(v0 + 457));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1DAFA0254(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 56) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA027C, 0, 0);
}

uint64_t sub_1DAFA027C(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 != *(v1 + 24))
  {
    if (!*(v1 + 56))
    {
      v12 = *(v1 + 32);
      if (v12 <= 0.0)
      {
        v7 = 0;
      }

      else
      {
        if ((~*(v1 + 32) & 0x7FF0000000000000) == 0)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        if (v12 <= -1.0)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        if (v12 >= 1.84467441e19)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v12 > 0x44B82FA08)
        {
          v7 = -1;
        }

        else
        {
          v13 = v12 * 1000000000.0;
          if (*&v13 >> 52 > 0x7FEuLL)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          if (v13 <= -1.0)
          {
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          if (v13 >= 1.84467441e19)
          {
LABEL_35:
            __break(1u);
            return MEMORY[0x1EEE6DA60](a1);
          }

          v7 = v13;
        }
      }

      v8 = swift_task_alloc();
      *(v1 + 40) = v8;
      *v8 = v1;
      v9 = sub_1DAFA0490;
LABEL_26:
      v8[1] = v9;
      a1 = v7;

      return MEMORY[0x1EEE6DA60](a1);
    }

    if (*(v1 + 56) == 1)
    {
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (!v3)
      {
        v5 = v4 > 0x40;
        if (v4 >= 0x40)
        {
          v6 = 0;
        }

        else
        {
          v6 = 1 << v4;
        }

        if (v5)
        {
          v6 = 0;
        }

        v7 = sub_1DAFC2A84(*(v1 + 32) * v6);
        v8 = swift_task_alloc();
        *(v1 + 48) = v8;
        *v8 = v1;
        v9 = sub_1DAFA0584;
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v10 = *(v1 + 8);

  return v10();
}

uint64_t sub_1DAFA0490()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAFA0584()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1DAFA0678(void *a1, unint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2 || a5 == 3)
    {

      goto LABEL_6;
    }
  }

  else
  {
    if (!a5)
    {
      sub_1DAF40780(a1, a2);
      a1 = a3;

      goto LABEL_6;
    }

    if (a5 == 1)
    {

LABEL_6:
    }
  }
}

id sub_1DAFA06FC(id result, unint64_t a2, void *a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2 || a5 == 3)
    {

      return result;
    }
  }

  else
  {
    if (!a5)
    {
      sub_1DAF40674(result, a2);
      result = a3;

      return result;
    }

    if (a5 == 1)
    {

      return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPBackoffStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPBackoffStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAFA080C(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DAFA0824(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t dispatch thunk of PersistenceCommand.save(files:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAF63DEC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PersistenceCommand.save(data:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAF63DEC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PersistenceCommand.load(key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAF680EC;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1DAFA0C0C()
{
  v1 = *(v0 + 408);
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = swift_task_alloc();
  *(v0 + 416) = v4;
  *v4 = v0;
  v4[1] = sub_1DAFA0CBC;

  return sub_1DAFA249C(v0 + 16, v3, v2);
}

uint64_t sub_1DAFA0CBC()
{
  v1 = *(*v0 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA0DCC, v1, 0);
}

uint64_t sub_1DAFA0DCC()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 408) + 112), *(*(v0 + 408) + 136));
  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFA0E78;
  v2 = *(v0 + 408);

  return sub_1DAFFF6F4(v0 + 16, v2);
}

uint64_t sub_1DAFA0E78()
{
  v2 = *v1;
  v2[54] = v0;

  if (v0)
  {
    v3 = v2[51];
    sub_1DAFA7274((v2 + 2));

    return MEMORY[0x1EEE6DFA0](sub_1DAFA0FC0, v3, 0);
  }

  else
  {
    sub_1DAFA7274((v2 + 2));
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1DAFA0FC0()
{
  v56 = v0;
  v1 = *(v0 + 432);
  *(v0 + 384) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 432);
  if (v3)
  {
    v5 = *(v0 + 408);

    v53 = *(v5 + 216);
    v54 = *(v5 + 224);
    v55[0] = 0x203A726F727201;
    v55[1] = 0xE700000000000000;
    sub_1DAF6244C();

    v6 = sub_1DB09E324();
    MEMORY[0x1E127FE90](v6);

    CoreODILogger.error(_:category:)(0x203A726F727245, 0xE700000000000000, v55);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v8 + 16))
    {
      v9 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v10)
      {
        sub_1DAF409DC(*(v8 + 56) + 32 * v9, v0 + 288);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v7 = *(v0 + 400);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DAF72EC0(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1DAF72EC0((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[56 * v12];
    *(v13 + 4) = 0xD00000000000001ALL;
    *(v13 + 5) = 0x80000001DB0C4DB0;
    *(v13 + 6) = 0xD000000000000026;
    *(v13 + 7) = 0x80000001DB0C4C20;
    *(v13 + 8) = 0xD00000000000001ALL;
    *(v13 + 9) = 0x80000001DB0C4E30;
    *(v13 + 10) = 65;
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 320) = v7;
    sub_1DAF40D20((v0 + 320), (v0 + 352));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v8;
    sub_1DAF3B11C((v0 + 352), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v15 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v16 = sub_1DB09D6B4();
    v17 = sub_1DB09D604();
    [v15 initWithDomain:v16 code:-6104 userInfo:{v17, v53, v54}];

    swift_willThrow();
    v18 = *(v0 + 384);
    goto LABEL_34;
  }

  v19 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 432);
  v21 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v22 = v20;
  v23 = sub_1DB09CE64();
  v24 = [v23 domain];
  v25 = sub_1DB09D6C4();
  v27 = v26;

  if (v25 == 0x726F72724549444FLL && v27 == 0xE800000000000000)
  {

    goto LABEL_19;
  }

  v28 = sub_1DB09E254();

  if (v28)
  {
LABEL_19:
    v29 = *(v0 + 432);
    ODIErrorCode.init(rawValue:)([v23 code]);
    v30 = [v23 userInfo];
    v31 = sub_1DB09D624();

    if (LOBYTE(v55[0]) == 211)
    {
      v32 = 128;
    }

    else
    {
      v32 = LOBYTE(v55[0]) ^ 0x80u;
    }

    goto LABEL_23;
  }

  v33 = *(v0 + 432);
  v34 = sub_1DB09D6C4();
  v36 = v35;
  *(v0 + 152) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 128) = v23;
  sub_1DAF40D20((v0 + 128), (v0 + 160));
  v37 = v23;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v21;
  sub_1DAF3B11C((v0 + 160), v34, v36, v38);

  v31 = v21;
  v32 = 128;
LABEL_23:
  if (*(v31 + 16))
  {
    v39 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if ((v40 & 1) != 0 && (sub_1DAF409DC(*(v31 + 56) + 32 * v39, v0 + 192), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
    {
      v41 = *(v0 + 392);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_1DAF72EC0(0, *(v41 + 2) + 1, 1, v41);
  }

  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  if (v43 >= v42 >> 1)
  {
    v41 = sub_1DAF72EC0((v42 > 1), v43 + 1, 1, v41);
  }

  *(v41 + 2) = v43 + 1;
  v44 = &v41[56 * v43];
  *(v44 + 4) = 0;
  *(v44 + 5) = 0xE000000000000000;
  *(v44 + 6) = 0xD000000000000026;
  *(v44 + 7) = 0x80000001DB0C4C20;
  *(v44 + 8) = 0xD00000000000001ALL;
  *(v44 + 9) = 0x80000001DB0C4E30;
  *(v44 + 10) = 67;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 224) = v41;
  sub_1DAF40D20((v0 + 224), (v0 + 256));
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v55[0] = v31;
  sub_1DAF3B11C((v0 + 256), 0x636F766E4949444FLL, 0xEE00736E6F697461, v45);
  v46 = qword_1DB0A8B68[v32];
  v47 = *(v0 + 432);
  v48 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v49 = sub_1DB09D6B4();
  v50 = sub_1DB09D604();
  [v48 initWithDomain:v49 code:v46 userInfo:v50];

  swift_willThrow();
  v18 = v47;
LABEL_34:

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1DAFA17F8()
{
  v1 = *(v0 + 456);
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = swift_task_alloc();
  *(v0 + 464) = v4;
  *v4 = v0;
  v4[1] = sub_1DAFA18A8;

  return sub_1DAFA249C(v0 + 16, v3, v2);
}

uint64_t sub_1DAFA18A8()
{
  v1 = *(*v0 + 456);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA19B8, v1, 0);
}

uint64_t sub_1DAFA19B8()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 456) + 112), *(*(v0 + 456) + 136));
  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  *v1 = v0;
  v1[1] = sub_1DAFA1A60;

  return sub_1DB000BF8(v0 + 16);
}

uint64_t sub_1DAFA1A60(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  v8[60] = v3;

  if (v3)
  {
    v9 = v8[57];
    sub_1DAFA7274((v8 + 2));

    return MEMORY[0x1EEE6DFA0](sub_1DAFA1BD8, v9, 0);
  }

  else
  {
    sub_1DAFA7274((v8 + 2));
    v10 = v8[1];

    return v10(a1, a2, a3 & 1);
  }
}

uint64_t sub_1DAFA1BD8()
{
  v62 = v0;
  v1 = *(v0 + 480);
  *(v0 + 424) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 456);

    v56 = *(v3 + 216);
    v58 = *(v3 + 224);
    v60 = 0;
    v61 = 0xE000000000000000;

    sub_1DB09DE44();
    *(v0 + 408) = 0;
    *(v0 + 416) = 0xE000000000000000;
    MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C4D60);
    sub_1DB09DF94();
    v4 = *(v0 + 408);
    v5 = *(v0 + 416);
    LOBYTE(v60) = 1;
    CoreODILogger.error(_:category:)(v4, v5, &v60);

    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v6 = MEMORY[0x1E69E7CC0];
    v7 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v7 + 16))
    {
      v8 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v9)
      {
        sub_1DAF409DC(*(v7 + 56) + 32 * v8, v0 + 288);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v6 = *(v0 + 448);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DAF72EC0(0, *(v6 + 2) + 1, 1, v6);
    }

    v11 = *(v6 + 2);
    v10 = *(v6 + 3);
    if (v11 >= v10 >> 1)
    {
      v6 = sub_1DAF72EC0((v10 > 1), v11 + 1, 1, v6);
    }

    *(v6 + 2) = v11 + 1;
    v12 = &v6[56 * v11];
    *(v12 + 4) = 0xD00000000000001ALL;
    *(v12 + 5) = 0x80000001DB0C4DB0;
    *(v12 + 6) = 0xD000000000000026;
    *(v12 + 7) = 0x80000001DB0C4C20;
    *(v12 + 8) = 0xD000000000000016;
    *(v12 + 9) = 0x80000001DB0C4D90;
    *(v12 + 10) = 82;
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 320) = v6;
    sub_1DAF40D20((v0 + 320), (v0 + 352));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v7;
    sub_1DAF3B11C((v0 + 352), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v15 = sub_1DB09D6B4();
    v16 = sub_1DB09D604();
    [v14 initWithDomain:v15 code:-6104 userInfo:{v16, v56, v58}];

    swift_willThrow();
    v17 = *(v0 + 424);
    goto LABEL_34;
  }

  v18 = *(v0 + 480);
  v19 = *(v0 + 456);

  v57 = *(v19 + 216);
  v59 = *(v19 + 224);
  v60 = 1;
  v61 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000020, 0x80000001DB0C4D60);
  swift_getErrorValue();
  sub_1DB09E234();
  CoreODILogger.error(_:category:)(0, 0xE000000000000000, &v60);

  v20 = v18;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v21 = *(v0 + 480);
  v22 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v23 = v21;
  v24 = sub_1DB09CE64();
  v25 = [v24 domain];
  v26 = sub_1DB09D6C4();
  v28 = v27;

  if (v26 == 0x726F72724549444FLL && v28 == 0xE800000000000000)
  {

    goto LABEL_19;
  }

  v29 = sub_1DB09E254();

  if (v29)
  {
LABEL_19:
    v30 = *(v0 + 480);
    ODIErrorCode.init(rawValue:)([v24 code]);
    v31 = v60;
    v32 = v60 ^ 0x80;
    v33 = [v24 userInfo];
    v34 = sub_1DB09D624();

    if (v31 == 211)
    {
      v35 = 128;
    }

    else
    {
      v35 = v32;
    }

    goto LABEL_23;
  }

  v36 = *(v0 + 480);
  v37 = sub_1DB09D6C4();
  v39 = v38;
  *(v0 + 152) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 128) = v24;
  sub_1DAF40D20((v0 + 128), (v0 + 160));
  v40 = v24;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v22;
  sub_1DAF3B11C((v0 + 160), v37, v39, v41);

  v34 = v60;
  v35 = 128;
LABEL_23:
  if (*(v34 + 16))
  {
    v42 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if ((v43 & 1) != 0 && (sub_1DAF409DC(*(v34 + 56) + 32 * v42, v0 + 192), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
    {
      v44 = *(v0 + 440);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_1DAF72EC0(0, *(v44 + 2) + 1, 1, v44);
  }

  v46 = *(v44 + 2);
  v45 = *(v44 + 3);
  if (v46 >= v45 >> 1)
  {
    v44 = sub_1DAF72EC0((v45 > 1), v46 + 1, 1, v44);
  }

  *(v44 + 2) = v46 + 1;
  v47 = &v44[56 * v46];
  *(v47 + 4) = 0;
  *(v47 + 5) = 0xE000000000000000;
  *(v47 + 6) = 0xD000000000000026;
  *(v47 + 7) = 0x80000001DB0C4C20;
  *(v47 + 8) = 0xD000000000000016;
  *(v47 + 9) = 0x80000001DB0C4D90;
  *(v47 + 10) = 85;
  *(v0 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 224) = v44;
  sub_1DAF40D20((v0 + 224), (v0 + 256));
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v34;
  sub_1DAF3B11C((v0 + 256), 0x636F766E4949444FLL, 0xEE00736E6F697461, v48);
  v49 = qword_1DB0A8B68[v35];
  v50 = *(v0 + 480);
  v51 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v52 = sub_1DB09D6B4();
  v53 = sub_1DB09D604();
  [v51 initWithDomain:v52 code:v49 userInfo:v53];

  swift_willThrow();
  v17 = v50;
LABEL_34:

  v54 = *(v0 + 8);

  return v54();
}

uint64_t sub_1DAFA249C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[111] = v3;
  v4[110] = a3;
  v4[109] = a2;
  v4[108] = a1;
  v4[112] = *v3;
  v5 = sub_1DB09D284();
  v4[113] = v5;
  v4[114] = *(v5 - 8);
  v4[115] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E998, &qword_1DB0A8B40);
  v4[116] = swift_task_alloc();
  v6 = sub_1DB09D2A4();
  v4[117] = v6;
  v4[118] = *(v6 - 8);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A0, &qword_1DB0AECB0);
  v4[121] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2668, 0, 0);
}

uint64_t sub_1DAFA2668()
{
  if (qword_1EE3039A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE3039B0;
  *(v0 + 976) = qword_1EE3039B0;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2700, v1, 0);
}

uint64_t sub_1DAFA2700()
{
  if (*(v0[122] + 168))
  {
    v1 = v0[111];

    return MEMORY[0x1EEE6DFA0](sub_1DAFA28E4, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[123] = v2;
    *v2 = v0;
    v2[1] = sub_1DAFA27D4;

    return sub_1DAFC5F3C();
  }
}

uint64_t sub_1DAFA27D4()
{
  v1 = *v0;

  v2 = *(v1 + 888);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA28E4, v2, 0);
}

uint64_t sub_1DAFA28E4()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = [v2 infoDictionary];

  if (v3)
  {
    v4 = sub_1DB09D624();

    if (v4)
    {
      if (*(v4 + 16) && (v5 = sub_1DAF35210(0x656C646E75424643, 0xEF6E6F6973726556), (v6 & 1) != 0))
      {
        sub_1DAF409DC(*(v4 + 56) + 32 * v5, (v0 + 94));

        if (swift_dynamicCast())
        {
          v7 = v0[104];
          v8 = v0[105];
          goto LABEL_9;
        }
      }

      else
      {
      }
    }
  }

  v8 = 0xE700000000000000;
  v7 = 0x6E776F6E6B6E75;
LABEL_9:
  v0[125] = v8;
  v0[124] = v7;
  v9 = v0[122];

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2A68, v9, 0);
}

uint64_t sub_1DAFA2A68()
{
  v1 = v0[122];
  v2 = sub_1DAFA7368(&qword_1EE303990, 255, type metadata accessor for ODIDeviceInfo, &protocol conformance descriptor for ODIDeviceInfo);
  v3 = swift_task_alloc();
  v0[126] = v3;
  v3[2] = v1;
  v3[3] = 0x4E746375646F7250;
  v3[4] = 0xEB00000000656D61;
  v4 = swift_task_alloc();
  v0[127] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
  *v4 = v0;
  v4[1] = sub_1DAFA2BD4;

  return MEMORY[0x1EEE6DDE0](v0 + 102, v1, v2, 0x736E41474D746567, 0xEF293A5F28726577, sub_1DAFA7214, v3, v5);
}

uint64_t sub_1DAFA2BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 888);

  *(v1 + 1024) = *(v1 + 816);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA2D10, v2, 0);
}

uint64_t sub_1DAFA2D10()
{
  v1 = [objc_opt_self() processInfo];
  [v1 operatingSystemVersion];
  v2 = v34;

  v0[106] = v32;
  v33 = sub_1DB09E1D4();
  v35 = v3;
  MEMORY[0x1E127FE90](46, 0xE100000000000000);
  v0[107] = v2;
  v4 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v4);

  v0[130] = v33;
  v0[131] = v35;
  if (qword_1EE3032E8 != -1)
  {
    swift_once();
  }

  v5 = 0x6E776F6E6B6E75;
  v6 = v0[121];
  v7 = v0[120];
  v8 = v0[118];
  v9 = v0[117];
  v0[101] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9A8, &unk_1DB0A8B48);
  v0[98] = &type metadata for AssessmentConfig;
  sub_1DAFBA9D0(v0 + 98, 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 98);
  sub_1DB09D264();
  sub_1DB09D254();
  v10 = *(v8 + 8);
  v10(v7, v9);
  v11 = sub_1DB09D244();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = v0[121];
  if (v13 == 1)
  {
    sub_1DAF40AEC(v0[121], &qword_1ECC0E9A0, &qword_1DB0AECB0);
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
  }

  else
  {
    v16 = sub_1DB09D1F4();
    v15 = v17;
    (*(v12 + 8))(v14, v11);
  }

  v0[133] = v15;
  v0[132] = v16;
  v18 = v0[119];
  v19 = v0[117];
  v20 = v0[116];
  v21 = v0[115];
  v22 = v0[114];
  v23 = v0[113];
  sub_1DB09D264();
  sub_1DB09D294();
  v10(v18, v19);
  sub_1DB09D274();
  (*(v22 + 8))(v21, v23);
  v24 = sub_1DB09D204();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 48))(v20, 1, v24);
  v27 = v0[116];
  if (v26 == 1)
  {
    sub_1DAF40AEC(v0[116], &qword_1ECC0E998, &qword_1DB0A8B40);
    v28 = 0xE700000000000000;
  }

  else
  {
    v5 = sub_1DB09D1F4();
    v28 = v29;
    (*(v25 + 8))(v27, v24);
  }

  v0[135] = v28;
  v0[134] = v5;
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v30 = swift_task_alloc();
  v0[136] = v30;
  *v30 = v0;
  v30[1] = sub_1DAFA311C;

  return sub_1DAFEFC24((v0 + 66));
}

uint64_t sub_1DAFA311C()
{
  v1 = *(*v0 + 888);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA322C, v1, 0);
}

uint64_t sub_1DAFA322C()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 704);
  *(v0 + 464) = *(v0 + 688);
  *(v0 + 480) = v3;
  v4 = *(v0 + 736);
  *(v0 + 496) = *(v0 + 720);
  *(v0 + 512) = v4;
  v5 = *(v0 + 640);
  *(v0 + 400) = *(v0 + 624);
  *(v0 + 416) = v5;
  v6 = *(v0 + 672);
  *(v0 + 432) = *(v0 + 656);
  *(v0 + 448) = v6;
  v7 = *(v0 + 576);
  *(v0 + 336) = *(v0 + 560);
  *(v0 + 352) = v7;
  v8 = *(v0 + 608);
  *(v0 + 368) = *(v0 + 592);
  *(v0 + 384) = v8;
  v9 = *(v0 + 544);
  *(v0 + 304) = *(v0 + 528);
  *(v0 + 320) = v9;
  v10 = [objc_opt_self() standardUserDefaults];
  *(v0 + 280) = sub_1DAF4062C(0, &qword_1EE3018F8, 0x1E695E000);
  *(v0 + 288) = &off_1F56CD488;
  *(v0 + 256) = v10;
  v11 = sub_1DAFA343C();
  *(v0 + 16) = 45;
  *(v0 + 24) = 0xE100000000000000;
  v12 = *(v0 + 480);
  *(v0 + 192) = *(v0 + 464);
  *(v0 + 208) = v12;
  v13 = *(v0 + 512);
  *(v0 + 224) = *(v0 + 496);
  *(v0 + 240) = v13;
  v14 = *(v0 + 416);
  *(v0 + 128) = *(v0 + 400);
  *(v0 + 144) = v14;
  v15 = *(v0 + 448);
  *(v0 + 160) = *(v0 + 432);
  *(v0 + 176) = v15;
  v16 = *(v0 + 352);
  *(v0 + 64) = *(v0 + 336);
  *(v0 + 80) = v16;
  v17 = *(v0 + 384);
  *(v0 + 96) = *(v0 + 368);
  *(v0 + 112) = v17;
  v18 = *(v0 + 320);
  *(v0 + 32) = *(v0 + 304);
  *(v0 + 48) = v18;
  *(v0 + 296) = v11;
  v19 = sub_1DB022858(v2, v1);
  sub_1DAFA7220(v0 + 16);
  v20 = *(v0 + 1080);
  v21 = *(v0 + 1072);
  v22 = *(v0 + 1056);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 1024);
  v27 = *(v0 + 992);
  v28 = *(v0 + 880);
  v29 = *(v0 + 864);
  if (!v25)
  {
    v25 = 0xE700000000000000;
    v26 = 0x6E776F6E6B6E75;
  }

  *v29 = *(v0 + 872);
  *(v29 + 8) = v28;
  *(v29 + 16) = v24;
  *(v29 + 24) = v23;
  *(v29 + 32) = v26;
  *(v29 + 40) = v25;
  *(v29 + 48) = v27;
  *(v29 + 64) = v22;
  *(v29 + 80) = v21;
  *(v29 + 88) = v20;
  *(v29 + 96) = v19 + 48;
  *(v29 + 104) = 0xE100000000000000;

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DAFA343C()
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  v0 = byte_1EE30A140;
  if (qword_1EE301DD0 != -1)
  {
    swift_once();
    if (v0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!byte_1EE30A140)
  {
    return 0;
  }

LABEL_5:
  if (qword_1EE309EE8 && (qword_1EE309EE0 == 0x7972726163 ? (v1 = qword_1EE309EE8 == 0xE500000000000000) : (v1 = 0), v1 || (sub_1DB09E254() & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1DAFA3518()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DAFA35A8;

  return sub_1DAFA17D8();
}

uint64_t sub_1DAFA35A8(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *v4;
  v8 = *v4;

  v10 = *(v8 + 16);
  if (v3)
  {

    v11 = sub_1DAFA37EC;
  }

  else
  {
    *(v9 + 48) = a3;
    *(v9 + 32) = a2;
    *(v9 + 40) = a1;
    v11 = sub_1DAFA3700;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1DAFA3700()
{
  v8 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  sub_1DB09DE44();

  v7[0] = 0xD000000000000026;
  v7[1] = 0x80000001DB0C4D30;
  MEMORY[0x1E127FE90](*(v2 + 152), *(v2 + 160));
  LOBYTE(v7[0]) = 1;
  CoreODILogger.debug(_:category:)(0xD000000000000026, 0x80000001DB0C4D30, v7);

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 8);

  return v5(v3, v4, v1 & 1);
}

uint64_t sub_1DAFA37EC()
{
  v5 = v0;
  v1 = *(v0 + 16);

  sub_1DB09DE44();

  v4[0] = 0xD000000000000019;
  v4[1] = 0x80000001DB0C4D10;
  MEMORY[0x1E127FE90](*(v1 + 152), *(v1 + 160));
  LOBYTE(v4[0]) = 1;
  CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C4D10, v4);

  v2 = *(v0 + 8);

  return v2(0, 0, 255);
}

uint64_t sub_1DAFA38D8@<X0>(uint64_t a3@<X8>)
{
  v6 = sub_1DB09CFA4();
  if (v7 >> 60 == 15)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v9 + 56) + 32 * v10, &v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v8 = v64;
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[56 * v13];
    *(v14 + 4) = 0xD00000000000001CLL;
    *(v14 + 5) = 0x80000001DB0C4C90;
    *(v14 + 6) = 0xD000000000000026;
    *(v14 + 7) = 0x80000001DB0C4C20;
    *(v14 + 8) = 0xD000000000000017;
    *(v14 + 9) = 0x80000001DB0C4CB0;
    *(v14 + 10) = 129;
    *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *&v67 = v8;
    sub_1DAF40D20(&v67, &v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v9;
    sub_1DAF3B11C(&v64, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1DB09D6B4();
    v18 = sub_1DB09D604();
    [v16 initWithDomain:v17 code:-2107 userInfo:v18];

    return swift_willThrow();
  }

  v20 = v6;
  v21 = v7;
  sub_1DB09CC24();
  swift_allocObject();
  sub_1DB09CC14();
  sub_1DAFA71C0();
  sub_1DB09CC04();
  if (!v4)
  {

    v64 = v67;
    v65 = v68;
    v32 = v70;
    v66 = v69;
    v33 = v71;
    v60 = v72;
    v61[0] = 0;
    v34 = *(v3 + 224);
    v62 = *(v3 + 216);
    v63 = v34;

    sub_1DB09DE44();

    v61[0] = 0xD000000000000001;
    v61[1] = 0x80000001DB0C4CF0;

    MEMORY[0x1E127FE90](v70, v71);

    CoreODILogger.debug(_:category:)(0xD000000000000010, 0x80000001DB0C4CF0, v61);

    sub_1DAF4AC40(v20, v21);

    v35 = v65;
    *a3 = v64;
    *(a3 + 16) = v35;
    *(a3 + 32) = v66;
    *(a3 + 40) = v32;
    *(a3 + 48) = v33;
    *(a3 + 56) = v60;
    return result;
  }

  v59 = v20;

  v22 = *(v3 + 224);
  *&v67 = *(v3 + 216);
  *(&v67 + 1) = v22;
  *&v64 = 0x20726F727201;
  *(&v64 + 1) = 0xE600000000000000;
  swift_getErrorValue();

  v23 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v23);

  CoreODILogger.error(_:category:)(0x20726F727245, 0xE600000000000000, &v64);

  v24 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v25 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v26 = v4;
  v27 = sub_1DB09CE64();
  v28 = [v27 domain];
  v29 = sub_1DB09D6C4();
  v31 = v30;

  if (v29 == 0x726F72724549444FLL && v31 == 0xE800000000000000)
  {
  }

  else
  {
    v36 = sub_1DB09E254();

    if ((v36 & 1) == 0)
    {
      v42 = sub_1DB09D6C4();
      v44 = v43;
      *(&v68 + 1) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
      *&v67 = v27;
      sub_1DAF40D20(&v67, &v64);
      v45 = v27;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v62 = v25;
      sub_1DAF3B11C(&v64, v42, v44, v46);

      v40 = v25;
      v58 = 233;
      goto LABEL_26;
    }
  }

  ODIErrorCode.init(rawValue:)([v27 code]);
  v37 = v67;
  v38 = v67 ^ 0x80;
  v39 = [v27 userInfo];
  v40 = sub_1DB09D624();

  if (v37 == 211)
  {
    v41 = 233;
  }

  else
  {
    v41 = v38;
  }

  v58 = v41;
LABEL_26:
  if (*(v40 + 16) && (v47 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v48 & 1) != 0) && (sub_1DAF409DC(*(v40 + 56) + 32 * v47, &v67), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v49 = v64;
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v49 = sub_1DAF72EC0(0, *(v49 + 2) + 1, 1, v49);
  }

  v51 = *(v49 + 2);
  v50 = *(v49 + 3);
  if (v51 >= v50 >> 1)
  {
    v49 = sub_1DAF72EC0((v50 > 1), v51 + 1, 1, v49);
  }

  *(v49 + 2) = v51 + 1;
  v52 = &v49[56 * v51];
  *(v52 + 4) = 0xD00000000000001BLL;
  *(v52 + 5) = 0x80000001DB0C4CD0;
  *(v52 + 6) = 0xD000000000000026;
  *(v52 + 7) = 0x80000001DB0C4C20;
  *(v52 + 8) = 0xD000000000000017;
  *(v52 + 9) = 0x80000001DB0C4CB0;
  *(v52 + 10) = 138;
  *(&v68 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v67 = v49;
  sub_1DAF40D20(&v67, &v64);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v40;
  sub_1DAF3B11C(&v64, 0x636F766E4949444FLL, 0xEE00736E6F697461, v53);
  v54 = qword_1DB0A8B68[v58];
  v55 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v56 = sub_1DB09D6B4();
  v57 = sub_1DB09D604();
  [v55 initWithDomain:v56 code:v54 userInfo:v57];

  swift_willThrow();
  return sub_1DAF4AC40(v59, v21);
}

uint64_t sub_1DAFA41D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFA4274, v1, 0);
}

uint64_t sub_1DAFA4274()
{
  v18 = v0;
  v1 = v0[3];
  v2 = v1[29];
  v0[5] = v2;
  if (v2)
  {

    sub_1DB09DE44();

    v17[0] = 0xD00000000000001CLL;
    v17[1] = 0x80000001DB0C4E50;
    MEMORY[0x1E127FE90](v1[19], v1[20]);
    LOBYTE(v17[0]) = 1;
    CoreODILogger.debug(_:category:)(0xD00000000000001CLL, 0x80000001DB0C4E50, v17);

    v3 = swift_task_alloc();
    v0[6] = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C0, &qword_1DB0A2950);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    *v3 = v0;
    v3[1] = sub_1DAFA4570;
    v6 = v0[2];
    v7 = MEMORY[0x1E69E7288];
    v8 = v2;
  }

  else
  {
    v9 = v0[4];
    v10 = sub_1DB09DA24();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v12 = sub_1DAFA7368(qword_1EE301500, v11, type metadata accessor for ProfileManager, &unk_1DB0A8AF4);
    v13 = swift_allocObject();
    v13[2] = v1;
    v13[3] = v12;
    v13[4] = v1;
    swift_retain_n();
    v14 = sub_1DAF5B56C(0, 0, v9, &unk_1DB0A8B60, v13);
    v0[8] = v14;
    v1[29] = v14;

    v15 = swift_task_alloc();
    v0[9] = v15;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5C0, &qword_1DB0A2950);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    *v15 = v0;
    v15[1] = sub_1DAFA4708;
    v6 = v0[2];
    v7 = MEMORY[0x1E69E7288];
    v8 = v14;
  }

  return MEMORY[0x1EEE6DA10](v6, v8, v4, v5, v7);
}

uint64_t sub_1DAFA4570()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1DAFA48A0;
  }

  else
  {
    v4 = sub_1DAFA469C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFA469C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA4708()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1DAFA490C;
  }

  else
  {
    v4 = sub_1DAFA4834;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFA4834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA48A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA490C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA4978(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return sub_1DAFA4A14(a1);
}

uint64_t sub_1DAFA4A14(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA4A34, v1, 0);
}

uint64_t sub_1DAFA4A34()
{
  v1 = v0[21];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = v1[19];
  v0[22] = v4;
  v5 = v1[20];
  v0[23] = v5;
  v8 = (*(v3 + 24) + **(v3 + 24));
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1DAFA4B7C;

  return v8(v4, v5, v2, v3);
}

uint64_t sub_1DAFA4B7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {

    v6 = swift_task_alloc();
    v4[28] = v6;
    *v6 = v5;
    v6[1] = sub_1DAFA4F50;

    return sub_1DAFA3518();
  }

  else
  {
    v8 = v4[21];

    return MEMORY[0x1EEE6DFA0](sub_1DAFA4D04, v8, 0);
  }
}

uint64_t sub_1DAFA4D04()
{
  v22 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);

  sub_1DB09DE44();

  v20[0] = 0xD000000000000001;
  v20[1] = 0x80000001DB0C4C70;
  MEMORY[0x1E127FE90](v2, v1);
  CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C4C70, v20);

  if (qword_1ECC0E0F0 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = byte_1EE30A058;
  v7 = *&byte_1EE30A048;
  *(v0 + 16) = xmmword_1EE30A038;
  *(v0 + 32) = v7;
  *(v0 + 48) = v6;
  sub_1DAFA5998(v5, v3, v0 + 16, v21);
  v8 = *(v0 + 200);
  v9 = *(v0 + 208);
  if (v4)
  {
    sub_1DAF40780(*(v0 + 200), *(v0 + 208));
  }

  else
  {
    v11 = *(v0 + 160);
    v11[3] = &type metadata for ProfileSetObject;
    v11[4] = sub_1DAFA70BC();
    v12 = swift_allocObject();
    *v11 = v12;
    sub_1DAF40780(v8, v9);
    v13 = v21[9];
    v12[9] = v21[8];
    v12[10] = v13;
    v14 = v21[11];
    v12[11] = v21[10];
    v12[12] = v14;
    v15 = v21[5];
    v12[5] = v21[4];
    v12[6] = v15;
    v16 = v21[7];
    v12[7] = v21[6];
    v12[8] = v16;
    v17 = v21[1];
    v12[1] = v21[0];
    v12[2] = v17;
    v18 = v21[3];
    v12[3] = v21[2];
    v12[4] = v18;
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1DAFA4EE8()
{
  sub_1DAFA70A4(*(v0 + 232), *(v0 + 240), *(v0 + 49));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA4F50(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  *(v4 + 232) = a1;
  *(v4 + 240) = a2;
  *(v4 + 49) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1DAFA506C, v5, 0);
}

uint64_t sub_1DAFA506C()
{
  v1 = *(v0 + 49);
  if (v1 == 255)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v8 = *(v0 + 152);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[56 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x80000001DB0C4C00;
    *(v14 + 6) = 0xD000000000000026;
    *(v14 + 7) = 0x80000001DB0C4C20;
    *(v14 + 8) = 0xD000000000000018;
    *(v14 + 9) = 0x80000001DB0C4C50;
    *(v14 + 10) = 162;
    *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 88) = v8;
    sub_1DAF40D20((v0 + 88), (v0 + 120));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B11C((v0 + 120), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v17 = sub_1DB09D6B4();
    v18 = sub_1DB09D604();
    [v16 initWithDomain:v17 code:-3151 userInfo:v18];

    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = sub_1DAFA53C4;
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);

    return sub_1DB00114C(v5, v6, v3, v4, v1 & 1);
  }
}

uint64_t sub_1DAFA53C4()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_1DAFA54F0;
  }

  else
  {
    v4 = sub_1DAFA4EE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAFA54F0()
{
  sub_1DAFA70A4(*(v0 + 232), *(v0 + 240), *(v0 + 49));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAFA5558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v20[0] = a4;
  v5 = type metadata accessor for ODISignpost(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  *(v8 + 4) = "enableTelemetry=YES";
  *(v8 + 5) = 19;
  v8[48] = 2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 1) = v13;
  v8[16] = v14;
  v15 = *(a3 + 24);
  *(v8 + 3) = v15;
  v16 = *(v9 + 28);
  sub_1DAFA7110(a3, v21);
  v17 = v15;
  sub_1DB09D474();
  LOBYTE(a3) = *(a3 + 32);
  v18 = sub_1DB09DC14();
  if (a3)
  {
    sub_1DB09D454(v18, &dword_1DAF16000, v17, v12, v13, v14, &v8[v16], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v8, v11);
  sub_1DB09D3D4();
  swift_allocObject();
  sub_1DB09D3C4();
  sub_1DB09D3A4();
  sub_1DAFA731C();
  sub_1DB09D3B4();

  sub_1DB09DC04();
  sub_1DB09D464();
  return sub_1DAF60868(v11);
}

uint64_t sub_1DAFA577C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v20[0] = a4;
  v5 = type metadata accessor for ODISignpost(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  *(v8 + 4) = "enableTelemetry=YES";
  *(v8 + 5) = 19;
  v8[48] = 2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 1) = v13;
  v8[16] = v14;
  v15 = *(a3 + 24);
  *(v8 + 3) = v15;
  v16 = *(v9 + 28);
  sub_1DAFA7110(a3, v21);
  v17 = v15;
  sub_1DB09D474();
  LOBYTE(a3) = *(a3 + 32);
  v18 = sub_1DB09DC14();
  if (a3)
  {
    sub_1DB09D454(v18, &dword_1DAF16000, v17, v12, v13, v14, &v8[v16], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v8, v11);
  sub_1DB09D3D4();
  swift_allocObject();
  sub_1DB09D3C4();
  sub_1DAFA72C8();
  sub_1DB09D3B4();

  sub_1DB09DC04();
  sub_1DB09D464();
  return sub_1DAF60868(v11);
}

uint64_t sub_1DAFA5998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a1;
  v20[2] = a2;
  v20[0] = a4;
  v5 = type metadata accessor for ODISignpost(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  *(v8 + 4) = "enableTelemetry=YES";
  *(v8 + 5) = 19;
  v8[48] = 2;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 1) = v13;
  v8[16] = v14;
  v15 = *(a3 + 24);
  *(v8 + 3) = v15;
  v16 = *(v9 + 28);
  sub_1DAFA7110(a3, v21);
  v17 = v15;
  sub_1DB09D474();
  LOBYTE(a3) = *(a3 + 32);
  v18 = sub_1DB09DC14();
  if (a3)
  {
    sub_1DB09D454(v18, &dword_1DAF16000, v17, v12, v13, v14, &v8[v16], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v8, v11);
  sub_1DB09D3D4();
  swift_allocObject();
  sub_1DB09D3C4();
  sub_1DAFA716C();
  sub_1DB09D3B4();

  sub_1DB09DC04();
  sub_1DB09D464();
  return sub_1DAF60868(v11);
}

uint64_t sub_1DAFA5BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DAFA5BDC, 0, 0);
}

uint64_t sub_1DAFA5BDC()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v10 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1DAF912E4;
  v5 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  return v10(v8, v7, v5, v6, v2, v3);
}

uint64_t sub_1DAFA5D0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFA5D90()
{
  v1[28] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAFA5E68, v0, 0);
}

uint64_t sub_1DAFA5E68(uint64_t a1, uint64_t a2)
{
  v3 = v2[28];
  v4 = *(v3 + 192);
  if (v4)
  {
    v5 = *(v3 + 184);

    v6 = v2[1];

    return v6(v5, v4);
  }

  else if (*(v3 + 168))
  {
    v8 = sub_1DAFA7368(&qword_1ECC0E9C0, a2, type metadata accessor for ServerTimeSeedProvider, &unk_1DB0A8AB0);
    v9 = swift_task_alloc();
    v2[37] = v9;
    *v9 = v2;
    v9[1] = sub_1DAFA69C8;
    v10 = v2[28];
    v11 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v9, v3, v8, 0xD000000000000013, 0x80000001DB0C4DF0, sub_1DAFA73B0, v10, v11);
  }

  else
  {
    *(v3 + 168) = 1;
    __swift_project_boxed_opaque_existential_1((v3 + 112), *(v3 + 136));
    v12 = swift_task_alloc();
    v2[33] = v12;
    *v12 = v2;
    v12[1] = sub_1DAFA606C;

    return sub_1DB000748();
  }
}

uint64_t sub_1DAFA606C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[34] = a1;
  v6[35] = v2;

  v7 = v5[28];
  if (v2)
  {
    v8 = sub_1DAFA62FC;
  }

  else
  {
    v6[36] = a2;
    v8 = sub_1DAFA61B0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DAFA61B0()
{
  v1 = v0[36];
  v2 = v0[28];
  *(v2 + 184) = v0[34];
  *(v2 + 192) = v1;

  *(v2 + 168) = 0;
  v3 = *(v2 + 176);
  v4 = *(v3 + 16);
  if (v4)
  {
    v16 = v1;
    v5 = v0[30];
    v8 = *(v5 + 16);
    v6 = v5 + 16;
    v7 = v8;
    v9 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v10 = *(v6 + 56);

    do
    {
      v11 = v0[32];
      v12 = v0[29];
      v7(v11, v9, v12);
      sub_1DB09D9B4();
      (*(v6 - 8))(v11, v12);
      v9 += v10;
      --v4;
    }

    while (v4);

    v1 = v16;
  }

  v13 = v0[34];

  v14 = v0[1];

  return v14(v13, v1);
}

uint64_t sub_1DAFA62FC()
{
  v60 = v0;
  v1 = *(v0 + 280);
  *(v0 + 200) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 280);
  if (v3)
  {
    v5 = *(v0 + 224);

    v6 = *(v5 + 208);
    v58 = *(v5 + 200);
    v59 = v6;
    LOBYTE(v57[0]) = 1;

    CoreODILogger.error(_:category:)(0xD00000000000001CLL, 0x80000001DB0C4E10, v57);

    goto LABEL_23;
  }

  v7 = v4;
  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 280);
  v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  v10 = v8;
  v11 = sub_1DB09CE64();
  v12 = [v11 domain];
  v13 = sub_1DB09D6C4();
  v15 = v14;

  if (v13 == 0x726F72724549444FLL && v15 == 0xE800000000000000)
  {

    goto LABEL_9;
  }

  v16 = sub_1DB09E254();

  if (v16)
  {
LABEL_9:
    v17 = *(v0 + 280);
    ODIErrorCode.init(rawValue:)([v11 code]);
    v18 = [v11 userInfo];
    v19 = sub_1DB09D624();

    if (v58 == 211)
    {
      v20 = 128;
    }

    else
    {
      v20 = v58 ^ 0x80u;
    }

    goto LABEL_13;
  }

  v21 = *(v0 + 280);
  v22 = sub_1DB09D6C4();
  v24 = v23;
  *(v0 + 40) = sub_1DAF4062C(0, &qword_1EE300980, 0x1E696ABC0);
  *(v0 + 16) = v11;
  sub_1DAF40D20((v0 + 16), (v0 + 48));
  v25 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v9;
  sub_1DAF3B11C((v0 + 48), v22, v24, isUniquelyReferenced_nonNull_native);

  v19 = v9;
  v20 = 128;
LABEL_13:
  v56 = v20;
  if (*(v19 + 16) && (v27 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v28 & 1) != 0) && (sub_1DAF409DC(*(v19 + 56) + 32 * v27, v0 + 80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
  {
    v29 = *(v0 + 216);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1DAF72EC0(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1DAF72EC0((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[56 * v31];
  *(v32 + 4) = 0xD000000000000012;
  *(v32 + 5) = 0x80000001DB0C4DD0;
  *(v32 + 6) = 0xD000000000000026;
  *(v32 + 7) = 0x80000001DB0C4C20;
  *(v32 + 8) = 0xD000000000000013;
  *(v32 + 9) = 0x80000001DB0C4DF0;
  *(v32 + 10) = 234;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *(v0 + 112) = v29;
  sub_1DAF40D20((v0 + 112), (v0 + 144));
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v58 = v19;
  sub_1DAF3B11C((v0 + 144), 0x636F766E4949444FLL, 0xEE00736E6F697461, v33);
  v34 = qword_1DB0A8B68[v56];
  v35 = *(v0 + 280);
  v36 = *(v0 + 224);
  v37 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v38 = sub_1DB09D6B4();
  v39 = sub_1DB09D604();
  v40 = [v37 initWithDomain:v38 code:v34 userInfo:v39];

  v41 = *(v36 + 208);
  v57[0] = *(v36 + 200);
  v57[1] = v41;
  v58 = 0x203A726F727201;
  v59 = 0xE700000000000000;
  swift_getErrorValue();

  v42 = sub_1DB09E324();
  MEMORY[0x1E127FE90](v42);

  CoreODILogger.error(_:category:)(0x203A726F727245, 0xE700000000000000, &v58);

LABEL_23:
  v43 = *(v0 + 224);
  *(v43 + 168) = 0;
  v44 = *(v43 + 176);
  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = *(v0 + 240);
    v49 = *(v46 + 16);
    v47 = v46 + 16;
    v48 = v49;
    v50 = v44 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
    v51 = *(v47 + 56);

    do
    {
      v52 = *(v0 + 248);
      v53 = *(v0 + 232);
      v48(v52, v50, v53);
      sub_1DB09D9B4();
      (*(v47 - 8))(v52, v53);
      v50 += v51;
      --v45;
    }

    while (v45);
  }

  v54 = *(v0 + 8);

  return v54(0, 0);
}

uint64_t sub_1DAFA69C8()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1DAFA6AD8, v1, 0);
}

uint64_t sub_1DAFA6AD8()
{
  v1 = *(v0 + 224);
  v3 = *(v1 + 184);
  v2 = *(v1 + 192);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1DAFA6B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + 168) != 1)
  {
    return sub_1DB09D9B4();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = *(a2 + 176);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 176) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DAF736D4(0, v8[2] + 1, 1, v8);
    *(a2 + 176) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DAF736D4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 176) = v8;
  return result;
}

uint64_t sub_1DAFA6D30()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1DAFA6DAC(uint64_t a1, uint64_t a2)
{
  result = sub_1DAFA7368(qword_1EE301500, a2, type metadata accessor for ProfileManager, &unk_1DB0A8AF4);
  *(a1 + 8) = result;
  return result;
}

void *sub_1DAFA6E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v38 = a6;
  v39 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_0, a4, a6);
  v14 = type metadata accessor for DIPAssessmentStaticWebService();
  v35 = v14;
  v36 = &off_1F56C4838;
  *&v34 = a3;
  swift_defaultActor_initialize();
  a5[27] = 45;
  a5[28] = 0xE100000000000000;
  a5[29] = 0;
  sub_1DAF3523C(&v34, v33);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v32[3] = v14;
  v32[4] = &off_1F56C4838;
  v32[0] = v19;
  type metadata accessor for ServerTimeSeedProvider();
  v20 = swift_allocObject();
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v32, v14);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = *v23;
  v30 = v14;
  v31 = &off_1F56C4838;
  *&v29 = v25;

  swift_defaultActor_initialize();
  v26 = MEMORY[0x1E69E7CC0];
  *(v20 + 168) = 0;
  *(v20 + 176) = v26;
  *(v20 + 184) = 0;
  *(v20 + 192) = 0;
  *(v20 + 200) = 45;
  *(v20 + 208) = 0xE100000000000000;
  sub_1DAF332B8(&v29, v20 + 112);
  *(v20 + 152) = a1;
  *(v20 + 160) = a2;
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);
  a5[26] = v20;
  sub_1DAF332B8(&v34, (a5 + 14));
  sub_1DAF332B8(&v37, (a5 + 21));
  a5[19] = a1;
  a5[20] = a2;
  return a5;
}

uint64_t sub_1DAFA70A4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1DAF6286C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_1DAFA70BC()
{
  result = qword_1ECC0E988;
  if (!qword_1ECC0E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E988);
  }

  return result;
}

unint64_t sub_1DAFA716C()
{
  result = qword_1ECC0E990;
  if (!qword_1ECC0E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E990);
  }

  return result;
}

unint64_t sub_1DAFA71C0()
{
  result = qword_1EE302DA8;
  if (!qword_1EE302DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE302DA8);
  }

  return result;
}

unint64_t sub_1DAFA72C8()
{
  result = qword_1ECC0E9B0;
  if (!qword_1ECC0E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9B0);
  }

  return result;
}

unint64_t sub_1DAFA731C()
{
  result = qword_1ECC0E9B8;
  if (!qword_1ECC0E9B8)
  {
    sub_1DB09D3A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9B8);
  }

  return result;
}

uint64_t sub_1DAFA7368(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAFA73B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAF62CC4;

  return sub_1DAFA4978(a1);
}

uint64_t getEnumTagSinglePayload for DIPCertUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DIPCertUsage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAFA75BC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 851968;
  v3 = a1;
  switch(a1)
  {
    case 1u:
      v1 = 0;
      v2 = 917504;
      v3 = 256;
      break;
    case 2u:
      v1 = 0;
      v2 = 917504;
      v3 = 512;
      break;
    case 3u:
      v1 = 0;
      v2 = 917504;
      v3 = 768;
      break;
    case 4u:
      v1 = 0;
      v2 = 917504;
      v3 = 1024;
      break;
    case 5u:
      v1 = 0;
      v2 = 917504;
      v3 = 1280;
      break;
    case 6u:
      v1 = 0;
      v2 = 917504;
      v3 = 1536;
      break;
    case 7u:
      v1 = 0;
      v2 = 917504;
      v3 = 1792;
      break;
    case 8u:
      v1 = 0;
      v2 = 917504;
      v3 = 2048;
      break;
    case 9u:
      v1 = 0;
      v2 = 917504;
      v3 = 2304;
      break;
    case 0xAu:
      v2 = 0x100000;
      v3 = 4096;
      v1 = 1;
      break;
    case 0xBu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DB0A04E0;
      v6 = 3;
      goto LABEL_15;
    case 0xCu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1DB0A04E0;
      v1 = 3;
      *(v7 + 32) = SecPolicyCreateRevocation(3uLL);
      v2 = 0x100000;
      v3 = 4096;
      break;
    case 0xDu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1DB0A04E0;
      v6 = 16;
LABEL_15:
      *(v5 + 32) = SecPolicyCreateRevocation(v6);
      v2 = 0x100000;
      v3 = 4096;
      v1 = 2;
      break;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9E8, &unk_1DB0A9440);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1DB0A04E0;
      *(v4 + 32) = SecPolicyCreateRevocation(0x10uLL);
      v2 = 0x100000;
      v3 = 4096;
      v1 = 3;
      break;
    case 0xFu:
      v1 = 0;
      v2 = 917504;
      v3 = 2816;
      break;
    case 0x10u:
      v1 = 0;
      v2 = 917504;
      v3 = 3072;
      break;
    default:
      return v3 | v1 | v2;
  }

  return v3 | v1 | v2;
}

unint64_t sub_1DAFA77FC(char a1)
{
  result = 0x6449746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x696E6769536F6E69;
      break;
    case 6:
      result = 0x7972636E456F6E69;
      break;
    case 7:
      result = 0x6E696E6769537073;
      break;
    case 8:
      result = 0x707972636E457073;
      break;
    case 9:
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0xD00000000000001ALL;
      break;
    case 16:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAFA7A10(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAFA77FC(*a1);
  v5 = v4;
  if (v3 == sub_1DAFA77FC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DAFA7A98()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFA77FC(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DAFA7AFC(uint64_t a1)
{
  sub_1DAFA77FC(*v1);
  sub_1DB09D794();
}

uint64_t sub_1DAFA7B50()
{
  v1 = *v0;
  sub_1DB09E3A4();
  sub_1DAFA77FC(v1);
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DAFA7BB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAFA8F64(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DAFA7BE0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAFA77FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DAFA7C10()
{
  result = qword_1ECC0E9C8;
  if (!qword_1ECC0E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E9C8);
  }

  return result;
}

unint64_t sub_1DAFA7C64(char a1)
{
  result = 0xD000000000000019;
  switch(a1)
  {
    case 7:
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

__CFError *sub_1DAFA7D80(unint64_t a1, int a2, __SecTrust *a3)
{
  v117 = a3;
  LODWORD(v3) = a2;
  v129 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for ODISignpost(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v111 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9D0, &unk_1DB0A9420);
  inited = swift_initStackObject();
  v116 = xmmword_1DB0A04E0;
  *(inited + 1) = xmmword_1DB0A04E0;
  *(inited + 32) = 17;
  *(inited + 8) = &type metadata for DIPCertUsage;
  *(inited + 40) = v3;
  v12 = sub_1DAF3E3C8(inited);
  swift_setDeallocating();
  sub_1DAFA8FB8(inited + 32);
  v122 = v12;
  if (a1 >> 62)
  {
    v13 = sub_1DB09DD44();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 >= 1)
  {
    v14 = sub_1DAFA75BC(v3);

    v114 = v3;
    v115 = v5;
    if (v14 > 1u)
    {
      v125 = 0x657261685369646FLL;
      v126 = 0xEF726567676F4C64;
      LOBYTE(error) = 16;
      if (v14 == 2)
      {
        CoreODILogger.debug(_:category:)(0xD00000000000001BLL, 0x80000001DB0C5160, &error);
      }

      else
      {
        CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0C4F00, &error);
      }

      MDLTerminalAuth = SecPolicyCreateMDLTerminalAuth();
    }

    else if (v14)
    {
      v125 = 0x657261685369646FLL;
      v126 = 0xEF726567676F4C64;
      LOBYTE(error) = 16;
      CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0C5180, &error);

      MDLTerminalAuth = DIPSecPolicyCreateApplePayModelSigning();
    }

    else
    {
      v125 = 0x657261685369646FLL;
      v126 = 0xEF726567676F4C64;
      LOBYTE(error) = 16;
      CoreODILogger.debug(_:category:)(0xD00000000000001BLL, 0x80000001DB0C51A0, &error);

      v15 = sub_1DAFA75BC(v3) >> 16;

      if (v15 == 16)
      {
        v16 = 0;
      }

      else
      {
        sub_1DAFA7C64(v15);
        v16 = sub_1DB09D6B4();
      }

      v18 = v12;
      v19 = sub_1DAFA75BC(v3) >> 8;

      if (v19 == 16)
      {
        v20 = 0;
      }

      else
      {
        sub_1DAFA7C64(v19);
        v20 = sub_1DB09D6B4();
        LOBYTE(v3) = v114;
      }

      sub_1DAFA77FC(v3);
      v3 = sub_1DB09D6B4();

      ApplePinned = DIPSecPolicyCreateApplePinned();

      MDLTerminalAuth = ApplePinned;
      LOBYTE(v3) = v114;
      v12 = v18;
    }

    v113 = v12;
    v22 = MDLTerminalAuth;
    v23 = sub_1DAFA75BC(v3);
    v121 = v24;
    MEMORY[0x1E127FFD0](v23);
    if (*(v121 + 16) >= *(v121 + 24) >> 1)
    {
      sub_1DB09D954();
    }

    v118 = v22;
    sub_1DB09D974();
    v25 = v121;
    trust = 0;
    type metadata accessor for SecCertificate(0);
    v26 = sub_1DB09D914();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E9D8, &unk_1DB0A9430);
    v27 = sub_1DB09D914();
    v28 = SecTrustCreateWithCertificates(v26, v27, &trust);

    if (v28 || (v29 = trust) == 0)
    {

      v127 = MEMORY[0x1E69E72F0];
      LODWORD(v125) = v28;
      sub_1DAF33FE8(&v125, 20);
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_1DB09DE44();
      MEMORY[0x1E127FE90](0xD000000000000034, 0x80000001DB0C4F20);
      v38 = SecCopyErrorMessageString(v28, 0);
      if (v38)
      {
        v39 = v38;
        v40 = sub_1DB09D6C4();
        v42 = v41;
      }

      else
      {
        v40 = 0;
        v42 = 0;
      }

      error = v40;
      v124 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
      sub_1DB09DF94();

      v43 = v125;
      LOWORD(v125) = 121;
      inited = v122;
      DIPError(_:fromError:code:forceCode:properties:file:function:line:)(v43, v126, 0, &v125, 0, v122, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 314);

      swift_willThrow();
      goto LABEL_59;
    }

    if (v117)
    {
      v30 = trust;
      v31 = sub_1DB09D914();
      v117 = v30;
      v32 = SecTrustSetAnchorCertificates(v30, v31);

      if (v32)
      {

        v127 = MEMORY[0x1E69E72F0];
        LODWORD(v125) = v32;
        sub_1DAF33FE8(&v125, 20);
        v125 = 0;
        v126 = 0xE000000000000000;
        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0xD000000000000035, 0x80000001DB0C5120);
        v33 = SecCopyErrorMessageString(v32, 0);
        if (v33)
        {
          v34 = v33;
          v35 = sub_1DB09D6C4();
          v37 = v36;
        }

        else
        {
          v35 = 0;
          v37 = 0;
        }

        error = v35;
        v124 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAE0, &unk_1DB0A4650);
        sub_1DB09DF94();

        v84 = v125;
        LOWORD(v125) = 121;
        inited = v122;
        DIPError(_:fromError:code:forceCode:properties:file:function:line:)(v84, v126, 0, &v125, 0, v122, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 323);

        swift_willThrow();

LABEL_59:
        v85 = v118;
LABEL_64:

        return inited;
      }
    }

    else
    {
      v44 = trust;
    }

    v111[1] = v25;
    v117 = v29;
    v112 = v10;
    error = 0;
    if (qword_1EE302958 != -1)
    {
      swift_once();
    }

    v45 = qword_1EE30A1B0;
    v46 = *algn_1EE30A1B8;
    v47 = byte_1EE30A1C0;
    v48 = qword_1EE30A1C8;
    v49 = byte_1EE30A1D0;
    *(v8 + 4) = "enableTelemetry=YES";
    *(v8 + 5) = 19;
    v8[48] = 2;
    *v8 = v45;
    *(v8 + 1) = v46;
    v8[16] = v47;
    *(v8 + 3) = v48;
    v50 = *(v115 + 28);
    v51 = v48;
    sub_1DB09D474();
    v52 = sub_1DB09DC14();
    if (v49 == 1)
    {
      sub_1DB09D454(v52, &dword_1DAF16000, v51, v45, v46, v47, &v8[v50], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      sub_1DB09D464();
    }

    v53 = v112;
    sub_1DAF5F604(v8, v112);
    v54 = v117;
    v55 = SecTrustEvaluateWithError(v117, &error);
    sub_1DB09DC04();
    sub_1DB09D464();
    v56 = v118;
    if (error)
    {
      v57 = [objc_opt_self() standardUserDefaults];
      if (qword_1EE301DD8 != -1)
      {
        swift_once();
      }

      if (byte_1EE30A140 == 1)
      {
        v58 = sub_1DB09D6B4();
        v59 = [v57 BOOLForKey_];

        if (v59)
        {

          if (qword_1EE301DE8 != -1)
          {
            swift_once();
          }

          v60 = qword_1EE30A148;
          v61 = sub_1DB09DB54();
          v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
          v62 = swift_allocObject();
          *(v62 + 16) = v116;
          v125 = 0;
          v126 = 0xE000000000000000;
          LOBYTE(result[0]) = v114;
          sub_1DB09DF94();
          v63 = v125;
          v64 = v126;
          *(v62 + 56) = MEMORY[0x1E69E6158];
          v65 = sub_1DAF4DC24();
          *(v62 + 64) = v65;
          *(v62 + 32) = v63;
          *(v62 + 40) = v64;
          sub_1DB09D444("Treating certificate validation for %{public}@ as non-fatal because certificate pinning is disabled in user defaults", 116, 2, &dword_1DAF16000, v60, v61, v62);

          inited = v117;
          if (!error)
          {

            sub_1DAF60868(v53);

LABEL_78:

            return inited;
          }

          v111[0] = v65;
          *&v116 = v60;
          v125 = MEMORY[0x1E69E7CC0];
          v113 = error;
          sub_1DAF5F4FC(0, v13, 0);
          v66 = v125;
          if ((a1 & 0xC000000000000001) != 0)
          {
            v67 = 0;
            do
            {
              v68 = MEMORY[0x1E1280530](v67, a1);
              v69 = SecCertificateCopyData(v68);
              v70 = sub_1DB09D034();
              v72 = v71;

              v73 = sub_1DB09D014();
              v75 = v74;
              sub_1DAF40780(v70, v72);
              swift_unknownObjectRelease();
              v125 = v66;
              v77 = *(v66 + 16);
              v76 = *(v66 + 24);
              if (v77 >= v76 >> 1)
              {
                sub_1DAF5F4FC((v76 > 1), v77 + 1, 1);
                v66 = v125;
              }

              ++v67;
              *(v66 + 16) = v77 + 1;
              v78 = v66 + 16 * v77;
              *(v78 + 32) = v73;
              *(v78 + 40) = v75;
            }

            while (v13 != v67);
          }

          else
          {
            v90 = (a1 + 32);
            do
            {
              v91 = *v90;
              v92 = SecCertificateCopyData(v91);
              v93 = sub_1DB09D034();
              v95 = v94;

              v96 = sub_1DB09D014();
              v98 = v97;
              sub_1DAF40780(v93, v95);

              v125 = v66;
              v100 = *(v66 + 16);
              v99 = *(v66 + 24);
              if (v100 >= v99 >> 1)
              {
                sub_1DAF5F4FC((v99 > 1), v100 + 1, 1);
                v66 = v125;
              }

              *(v66 + 16) = v100 + 1;
              v101 = v66 + 16 * v100;
              *(v101 + 32) = v96;
              *(v101 + 40) = v98;
              ++v90;
              --v13;
            }

            while (v13);
          }

          v102 = sub_1DB09DB64();
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1DB0A5000;
          v125 = 0;
          v126 = 0xE000000000000000;
          LOBYTE(result[0]) = v114;
          sub_1DB09DF94();
          v104 = v125;
          v105 = v126;
          v106 = MEMORY[0x1E69E6158];
          v107 = v111[0];
          *(v103 + 56) = MEMORY[0x1E69E6158];
          *(v103 + 64) = v107;
          *(v103 + 32) = v104;
          *(v103 + 40) = v105;
          v125 = 0;
          v126 = 0xE000000000000000;
          v108 = v113;
          *result = v113;
          type metadata accessor for CFError(0);
          sub_1DB09DF94();
          v109 = v125;
          v110 = v126;
          *(v103 + 96) = v106;
          *(v103 + 104) = v107;
          *(v103 + 72) = v109;
          *(v103 + 80) = v110;
          *(v103 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E448, &qword_1DB0A3110);
          *(v103 + 144) = sub_1DAFA9078();
          *(v103 + 112) = v66;
          sub_1DB09D444("Certificate verification for usage %{public}@ failed due to error: %@\nCertificate Chain:\n%@", 91, 2, &dword_1DAF16000, v116, v102, v103);

          v89 = v112;
LABEL_77:
          sub_1DAF60868(v89);
          inited = v117;
          goto LABEL_78;
        }

        v81 = error;
        if (!error)
        {
          goto LABEL_61;
        }
      }

      else
      {

        v81 = error;
        if (!error)
        {
LABEL_61:
          v82 = 0;
          goto LABEL_62;
        }
      }

      type metadata accessor for CFError(0);
      sub_1DAFA9020();
      v82 = swift_allocError();
      *v83 = v81;
LABEL_62:
      LOWORD(v125) = 210;
      v86 = v81;
      inited = v113;
      DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001ALL, 0x80000001DB0C5020, v82, &v125, 0, v113, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 350);

      swift_willThrow();

      goto LABEL_63;
    }

    result[0] = kSecTrustResultInvalid;
    if (SecTrustGetTrustResult(v54, result))
    {
    }

    else
    {
      v88 = result[0];

      if (v88 == kSecTrustResultUnspecified || v88 == kSecTrustResultProceed)
      {
        if (v55)
        {

          v89 = v53;
          goto LABEL_77;
        }

        LOWORD(v125) = 210;
        inited = v113;
        DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000035, 0x80000001DB0C4FB0, 0, &v125, 0, v113, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 362);

        goto LABEL_54;
      }
    }

    v125 = 0;
    v126 = 0xE000000000000000;
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000041, 0x80000001DB0C4F60);
    v120 = result[0];
    v79 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v79);

    v80 = v125;
    LOWORD(v125) = 210;
    inited = DIPError(_:fromError:code:forceCode:properties:file:function:line:)(v80, v126, 0, &v125, 0, v113, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 358);

LABEL_54:
    swift_willThrow();

LABEL_63:
    sub_1DAF60868(v53);
    v85 = error;
    goto LABEL_64;
  }

  LOWORD(v125) = 210;
  DIPError(_:fromError:code:forceCode:properties:file:function:line:)(0xD000000000000030, 0x80000001DB0C4E70, 0, &v125, 0, v12, 0xD000000000000026, 0x80000001DB0C4EB0, 0xD000000000000018, 0x80000001DB0C4EE0, 266);

  swift_willThrow();
  return inited;
}
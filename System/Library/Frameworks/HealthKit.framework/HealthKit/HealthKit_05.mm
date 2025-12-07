uint64_t sub_191C0951C(uint64_t a1, uint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C0A384(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v9 = v12;
    }

    sub_191BF92E0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C09674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_191BFBFE4;

  return HKActivitySummaryQueryDescriptor.result(for:)(a2);
}

uint64_t HKActivitySummaryQueryDescriptor.Results.Iterator.next()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  sub_191C0A86C(0, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  *v1 = v0;
  v1[1] = sub_191BF9198;

  return MEMORY[0x1EEE6DB98](v0 + 16, v2);
}

uint64_t sub_191C097CC(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  sub_191C0A86C(0, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  *v2 = v1;
  v2[1] = sub_191BF9418;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t HKActivitySummaryQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_191C0A86C(0, &qword_1EADCAB78, MEMORY[0x1E69E87C8]);

  return sub_191CC6AB8();
}

uint64_t sub_191C098E8()
{
  sub_191C0A86C(0, &qword_1EADCAB78, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();

  return sub_191C0A6C4(v0);
}

uint64_t HKActivitySummaryQueryDescriptor.results(for:)(uint64_t a1)
{
  sub_191C0A86C(0, &qword_1EADCAB80, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = swift_allocObject();
  v9 = v1[1];
  v13[0] = *v1;
  v13[1] = v9;
  *(v8 + 16) = v13[0];
  *(v8 + 32) = v9;
  v14 = sub_191C0A130;
  v15 = v8;
  v16 = a1;
  sub_191C0A0B0(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  v10 = *&v13[0];

  v11 = v10;
  sub_191CC6AF8();
}

id sub_191C09AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v22[1] = a3;
  v25 = a1;
  v26 = a2;
  sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v22 - v9;
  v24 = *(v8 + 16);
  v24(v22 - v9, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v23 = *(v8 + 32);
  v23(v12 + v11, v10, v7);
  v13 = objc_allocWithZone(HKActivitySummaryQuery);
  v33 = sub_191C0A720;
  v34 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_191C09FF0;
  v32 = &block_descriptor_38;
  v14 = _Block_copy(&aBlock);
  v15 = [v13 initWithPredicate:v26 resultsHandler:v14];
  _Block_release(v14);

  v24(v10, v25, v7);
  v16 = v27;
  v17 = swift_allocObject();
  v23(v17 + v11, v10, v7);
  v33 = sub_191C0A8F0;
  v34 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_191C09FF0;
  v32 = &block_descriptor_45;
  v18 = _Block_copy(&aBlock);

  [v15 setUpdateHandler_];
  _Block_release(v18);
  v19 = v15;
  if (v16)
  {

    v20 = sub_191CC6778();
  }

  else
  {
    v20 = 0;
  }

  [v19 setDebugIdentifier_];

  [v19 setQualityOfService_];

  return v19;
}

uint64_t sub_191C09E00(uint64_t a1, void *a2, void *a3)
{
  sub_191C0A86C(0, &qword_1EADCABC0, MEMORY[0x1E69E8780]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  if (a2)
  {
    v14 = a2;
    sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);

    sub_191CC6A88();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v13 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C0A384(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v11 = v14;
    }

    v14 = v11;
    v12 = a3;
    sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

uint64_t sub_191C09FF0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_191C0A0E4();
    v5 = sub_191CC68E8();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191C0A0E4()
{
  result = qword_1EADCA800;
  if (!qword_1EADCA800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCA800);
  }

  return result;
}

uint64_t sub_191C0A13C(uint64_t a1)
{
  sub_191C0A86C(0, &qword_1EADCAB80, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = swift_allocObject();
  v9 = v1[1];
  v13[0] = *v1;
  v13[1] = v9;
  *(v8 + 16) = v13[0];
  *(v8 + 32) = v9;
  v14 = sub_191C0A8EC;
  v15 = v8;
  v16 = a1;
  sub_191C0A0B0(0);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  v10 = *&v13[0];

  v11 = v10;
  sub_191CC6AF8();
}

uint64_t sub_191C0A384(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_191C0A3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_191C0A448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_191C0A4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C0A538(uint64_t a1)
{
  sub_191C0A4C0(319, &qword_1EADCAB98, sub_191C0A0B0, type metadata accessor for HKQueryAsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C0A5FC(uint64_t a1)
{
  sub_191C0A86C(319, &qword_1EADCAB70, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_191C0A6C4(uint64_t a1)
{
  v2 = type metadata accessor for HKActivitySummaryQueryDescriptor.Results(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_34Tm()
{
  sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_191C0A7C8(uint64_t a1, void *a2, void *a3)
{
  sub_191C0A86C(0, &qword_1EADCA7F0, MEMORY[0x1E69E87A0]);

  return sub_191C09E00(a1, a2, a3);
}

void sub_191C0A86C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_191C0A0B0(255);
    v7 = v6;
    v8 = sub_191BF92E0();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t HKElectrocardiogramQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
}

__n128 HKElectrocardiogramQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

uint64_t HKElectrocardiogramQueryDescriptor.init(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = -1;
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_191C0AA00()
{
  v1 = *(v0 + 96);
  v2 = *(type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0) + 20);
  *(v0 + 128) = v2;
  v3 = *(v1 + v2);
  *(v0 + 104) = v3;
  if (v3)
  {
    if ([v3 nextObject])
    {
      sub_191CC6E18();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    *(v0 + 48) = v9;
    *(v0 + 64) = v10;
    if (*(v0 + 72))
    {
      sub_191C0B190((v0 + 48), (v0 + 16));
      sub_191BFAE6C(0, &qword_1EADCABD0, off_1E7374EC8);
      swift_dynamicCast();
      v4 = *(v0 + 88);
      v5 = *(v0 + 8);

      return v5(v4);
    }
  }

  else
  {
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
  }

  sub_191C0C134(v0 + 48, sub_191C0B13C);
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  *v7 = v0;
  v7[1] = sub_191C0ABDC;

  return MEMORY[0x1EEE6DB98](v0 + 80, v8);
}

uint64_t sub_191C0ABDC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_191C05168;
  }

  else
  {
    v2 = sub_191C0ACF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C0ACF0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v5 = [*(v0 + 80) voltageMeasurementEnumerator];

    *(v4 + v2) = v5;
  }

  v9 = HKElectrocardiogramQueryDescriptor.Results.Iterator.nextMeasurement()();
  v6 = *(v0 + 8);

  return v6(v9.value.super.isa, *&v9.value._timeSinceSampleStart);
}

uint64_t HKElectrocardiogramQueryDescriptor.Results.Iterator.awaitMeasurementEnumerator()()
{
  *(v1 + 24) = v0;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  *v2 = v1;
  v2[1] = sub_191C0AE64;

  return MEMORY[0x1EEE6DB98](v1 + 16, v3);
}

uint64_t sub_191C0AE64()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_191BF954C;
  }

  else
  {
    v2 = sub_191C0AF78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C0AF78()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = [*(v0 + 16) voltageMeasurementEnumerator];

    v4 = *(type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0) + 20);
    *(v2 + v4) = v3;
  }

  v5 = *(v0 + 8);

  return v5();
}

HKElectrocardiogramVoltageMeasurement_optional __swiftcall HKElectrocardiogramQueryDescriptor.Results.Iterator.nextMeasurement()()
{
  v1 = *(v0 + *(type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0) + 20));
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_8:
    sub_191C0C134(&v7, sub_191C0B13C);
    v5 = 0;
    goto LABEL_9;
  }

  if ([v1 nextObject])
  {
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v7 = v9;
  v8 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_8;
  }

  sub_191C0B190(&v7, &v9);
  sub_191BFAE6C(0, &qword_1EADCABD0, off_1E7374EC8);
  swift_dynamicCast();
  v5 = v6;
LABEL_9:
  result.value._timeSinceSampleStart = v4;
  result.value._leadIVoltage = v2;
  result.value.super.isa = v5;
  result.is_nil = v3;
  return result;
}

void sub_191C0B13C()
{
  if (!qword_1EADCC5D0)
  {
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC5D0);
    }
  }
}

_OWORD *sub_191C0B190(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_191C0B1A0(uint64_t a1, uint64_t a2)
{
  v3[4] = v2;
  v3[5] = a2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C0B1C4, 0, 0);
}

uint64_t sub_191C0B1C4()
{
  v6 = HKElectrocardiogramQueryDescriptor.Results.Iterator.nextMeasurement()();
  if (v6.value.super.isa)
  {
    **(v0 + 24) = v6.value.super.isa;
    v1 = *(v0 + 8);

    return v1(*&v6.value._timeSinceSampleStart);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 48) = v3;
    sub_191C0B50C(0, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
    *v3 = v0;
    v3[1] = sub_191C0B2D0;

    return MEMORY[0x1EEE6DB98](v0 + 16, v4);
  }
}

uint64_t sub_191C0B2D0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_191C0B498;
  }

  else
  {
    v2 = sub_191C0B3E4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C0B3E4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 32);
    v2 = *(v0 + 40);
    v4 = [*(v0 + 16) voltageMeasurementEnumerator];

    v5 = *(v2 + 20);
    *(v3 + v5) = v4;
  }

  v9 = HKElectrocardiogramQueryDescriptor.Results.Iterator.nextMeasurement()();
  **(v0 + 24) = v9.value.super.isa;
  v6 = *(v0 + 8);

  return v6(*&v9.value._timeSinceSampleStart);
}

uint64_t HKElectrocardiogramQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  sub_191C0B50C(0, &qword_1EADCABD8, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  result = type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

void sub_191C0B50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_191BFAE6C(255, &qword_1EADCA7E8, off_1E7374E88);
    v7 = sub_191BF92E0();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_191C0B594@<X0>(uint64_t a1@<X8>)
{
  sub_191C0B50C(0, &qword_1EADCABD8, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  sub_191C0C134(v1, type metadata accessor for HKElectrocardiogramQueryDescriptor.Results);
  result = type metadata accessor for HKElectrocardiogramQueryDescriptor.Results.Iterator(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t HKElectrocardiogramQueryDescriptor.results(for:)(void *a1)
{
  sub_191C0B50C(0, &qword_1EADCABE0, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v12[5] = v10;
  v12[6] = a1;
  v17 = sub_191C0BA1C;
  v18 = v12;
  v19 = a1;
  sub_191BFAE6C(0, &qword_1EADCA7E8, off_1E7374E88);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);

  v13 = a1;
  v14 = v8;
  sub_191CC6AF8();
}

id sub_191C0B7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v26[1] = a3;
  sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = v26 - v15;
  (*(v13 + 16))(v26 - v15, a1, v12);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = swift_allocObject();
  (*(v13 + 32))(v18 + v17, v16, v12);
  *(v18 + ((v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v19 = objc_allocWithZone(HKElectrocardiogramQuery);
  aBlock[4] = sub_191C0C194;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_8;
  v20 = _Block_copy(aBlock);
  v21 = a6;
  v22 = [v19 initWithElectrocardiogram:a2 sampleHandler:v20];
  _Block_release(v20);

  v23 = v22;
  if (a4)
  {

    v24 = sub_191CC6778();
  }

  else
  {
    v24 = 0;
  }

  [v23 setDebugIdentifier_];

  [v23 setQualityOfService_];

  return v23;
}

void sub_191C0BA20(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  sub_191C0B50C(0, &qword_1EADCAC30, MEMORY[0x1E69E8780]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  if (a2)
  {
    v14 = a2;
    [a5 stopQuery_];
    v19 = v14;
    sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
    v15 = v14;
    sub_191CC6A88();
    (*(v11 + 8))(v13, v10);
    v19 = 0;
    sub_191CC6A98();
  }

  else
  {
    v16 = a3;
    if (!a3)
    {
      type metadata accessor for HKError(0);
      v18 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C0BE90(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v16 = v19;
    }

    v19 = v16;
    v17 = a3;
    sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
    sub_191CC6A98();
  }
}

uint64_t sub_191C0BC50(void *a1)
{
  sub_191C0B50C(0, &qword_1EADCABE0, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16[-v6];
  v8 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v12[5] = v10;
  v12[6] = a1;
  v17 = sub_191C0C280;
  v18 = v12;
  v19 = a1;
  sub_191BFAE6C(0, &qword_1EADCA7E8, off_1E7374E88);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);

  v13 = a1;
  v14 = v8;
  sub_191CC6AF8();
}

uint64_t sub_191C0BE90(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_191C0BF30(uint64_t a1)
{
  sub_191C0C0BC(319, &qword_1EADCABF8, &qword_1EADCA7E8, off_1E7374E88, type metadata accessor for HKQueryAsyncStream);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C0BFF0(uint64_t a1)
{
  sub_191C0B50C(319, &qword_1EADCABC8, MEMORY[0x1E69E87B8]);
  if (v1 <= 0x3F)
  {
    sub_191C0C0BC(319, &qword_1EADCAC20, &qword_1EADCAC28, 0x1E695DF28, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_191C0C0BC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_191BFAE6C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_191C0C134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_191C0C194(uint64_t a1, void *a2, void *a3)
{
  sub_191C0B50C(0, &qword_1EADCA7E0, MEMORY[0x1E69E87A0]);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_191C0BA20(a1, a2, a3, v3 + v9, v10);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HKDerivedType.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C90](v1);
  return sub_191CC7508();
}

uint64_t sub_191C0C344()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C90](v1);
  return sub_191CC7508();
}

uint64_t sub_191C0C3B8(uint64_t a1)
{
  v2 = *v1;
  sub_191CC74C8();
  MEMORY[0x193B02C90](v2);
  return sub_191CC7508();
}

unint64_t sub_191C0C400()
{
  result = qword_1EADCAC38;
  if (!qword_1EADCAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC38);
  }

  return result;
}

unint64_t sub_191C0C458()
{
  result = qword_1EADCAC40;
  if (!qword_1EADCAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC40);
  }

  return result;
}

unint64_t sub_191C0C4AC(uint64_t a1)
{
  result = sub_191C0C4D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_191C0C4D4()
{
  result = qword_1EADCAC48;
  if (!qword_1EADCAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC48);
  }

  return result;
}

unint64_t sub_191C0C52C()
{
  result = qword_1EADCAC50;
  if (!qword_1EADCAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKDerivedType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HKDerivedType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_191C0C5E4()
{
  if (*v0)
  {
    return 0x746567726174;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_191C0C614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C0C6F8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_191C0C724(uint64_t a1, uint64_t a2)
{
  v4 = sub_191C139C8();
  v5 = sub_191C13A20();

  return MEMORY[0x1EEDF56F8](a1, a2, v4, v5);
}

uint64_t sub_191C0C77C(void *a1)
{
  sub_191C13C84(0, &qword_1EADCAD78, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C13A20();
  sub_191CC7548();
  v9[15] = 0;
  sub_191CC7338();
  if (!v1)
  {
    type metadata accessor for UserDomainConceptLinkStruct(0);
    v9[14] = 1;
    sub_191CC61A8();
    sub_191C0DD28(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_191C0C944@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = sub_191CC61A8();
  v17 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C13C84(0, &qword_1EADCAD68, MEMORY[0x1E69E6F48]);
  v21 = v6;
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for UserDomainConceptLinkStruct(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C13A20();
  sub_191CC7528();
  if (!v2)
  {
    v12 = v11;
    v16 = v9;
    v13 = v19;
    v14 = v20;
    v23 = 0;
    *v12 = sub_191CC7258();
    v22 = 1;
    sub_191C0DD28(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_191CC7268();
    (*(v13 + 8))(v8, v21);
    (*(v17 + 32))(v12 + *(v16 + 20), v5, v14);
    sub_191C132EC(v12, v18);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_191C0CC3C(uint64_t a1)
{
  v2 = sub_191C13A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C0CC78(uint64_t a1)
{
  v2 = sub_191C13A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C0CCB4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_191CC6178();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191C0CCDC()
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v0);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C0CD88(uint64_t a1)
{
  MEMORY[0x193B02C70](*v1);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_191CC66A8();
}

uint64_t sub_191C0CE1C(uint64_t a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v1);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C0CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1E1C);
  v7 = sub_191C0DD28(&qword_1EADCAD58, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1DB4);

  return MEMORY[0x1EEDF52D8](a1, a2, a3, v6, v7);
}

uint64_t sub_191C0D0D0(uint64_t a1)
{
  v2 = sub_191C0DD28(&qword_1EADCAD88, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1C34);

  return MEMORY[0x1EEDF4AE0](a1, v2);
}

uint64_t UserDomainConceptLinkStructWrapper.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0D3DC(v1 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v6);
  v7 = *(v4 + 28);
  v8 = sub_191CC61A8();
  return (*(*(v8 - 8) + 32))(a1, &v6[v7], v8);
}

uint64_t sub_191C0D3DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id UserDomainConceptLinkStructWrapper.__allocating_init(target:type:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value];
  v7 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  v8 = sub_191CC61A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *v6 = a2;
  v12.receiver = v5;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id UserDomainConceptLinkStructWrapper.init(target:type:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value];
  v7 = *(type metadata accessor for UserDomainConceptLinkStruct(0) + 20);
  v8 = sub_191CC61A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v6[v7], a1, v8);
  *v6 = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

uint64_t UserDomainConceptLinkStructWrapper.description.getter()
{
  v1 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_191CC61A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 40;
  v15 = 0xE100000000000000;
  v9 = OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value;
  v13[1] = *(v0 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  v10 = sub_191CC7398();
  MEMORY[0x193B01F90](v10);

  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191C0D3DC(v0 + v9, v4);
  (*(v6 + 32))(v8, &v4[*(v2 + 28)], v5);
  sub_191C0DD28(&qword_1EADCAC68, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v11 = sub_191CC7398();
  MEMORY[0x193B01F90](v11);

  (*(v6 + 8))(v8, v5);
  MEMORY[0x193B01F90](41, 0xE100000000000000);
  return v14;
}

uint64_t UserDomainConceptLinkStructWrapper.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_191C0DAF0(a1, v6);
  if (!v7)
  {
    sub_191C13D70(v6, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_191C13BA4);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value) != *&v5[OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value])
  {

    goto LABEL_7;
  }

  type metadata accessor for UserDomainConceptLinkStruct(0);
  v3 = sub_191CC6178();

  return v3 & 1;
}

uint64_t sub_191C0DAF0(uint64_t a1, uint64_t a2)
{
  sub_191C13BA4(0, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t UserDomainConceptLinkStructWrapper.hash.getter()
{
  v1 = (v0 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v1);
  type metadata accessor for UserDomainConceptLinkStruct(0);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C0DD28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void *LinkSetWrapper.init(_:)(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - v10;
  sub_191C0E22C(0);
  v13 = v12;
  v30 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v29 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v13;
    v32 = v5;
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:

    v17 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v34 = v17;
    sub_191C13470(0, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1E1C);
    sub_191C0DD28(&qword_1EADCAC88, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1DDC);
    sub_191C13350();
    v25 = v29;
    sub_191CC64E8();
    (*(v30 + 32))(v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v25, v31);
    v33.receiver = v2;
    v33.super_class = ObjectType;
    return objc_msgSendSuper2(&v33, sel_init);
  }

  v15 = sub_191CC6EE8();
  v31 = v13;
  v32 = v5;
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_3:
  v34 = MEMORY[0x1E69E7CC0];
  result = sub_191C07F64(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v27 = ObjectType;
    v28 = v1;
    v17 = v34;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v15; ++i)
      {
        v19 = MEMORY[0x193B02790](i, a1);
        sub_191C0D3DC(v19 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v11);
        swift_unknownObjectRelease();
        v34 = v17;
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_191C07F64((v20 > 1), v21 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v21 + 1;
        sub_191C132EC(v11, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21);
      }
    }

    else
    {
      v22 = 32;
      do
      {
        sub_191C0D3DC(*(a1 + v22) + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v9);
        v34 = v17;
        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_191C07F64((v23 > 1), v24 + 1, 1);
          v17 = v34;
        }

        *(v17 + 16) = v24 + 1;
        sub_191C132EC(v9, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24);
        v22 += 8;
        --v15;
      }

      while (v15);
    }

    ObjectType = v27;
    v2 = v28;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

objc_class *LinkSetWrapper.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_191C0E22C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v4);
  sub_191C0492C(a1, a2);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  sub_191CC6568();
  if (v3)
  {
    sub_191C049D8(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v9 + 32))(v12 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v11, v8);
    v14.receiver = v12;
    v14.super_class = v4;
    v4 = objc_msgSendSuper2(&v14, sel_init);
    sub_191C049D8(a1, a2);
  }

  return v4;
}

id LinkSetWrapper.init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0492C(a1, a2);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  sub_191CC6568();
  if (v3)
  {
    sub_191C049D8(a1, a2);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v10 + 32))(v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v12, v9);
    v14.receiver = v2;
    v14.super_class = ObjectType;
    v4 = objc_msgSendSuper2(&v14, sel_init);
    sub_191C049D8(a1, a2);
  }

  return v4;
}

uint64_t LinkSetWrapper.serializedData()()
{
  v0 = sub_191CC6548();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADCA120 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v3, *MEMORY[0x1E6995288], v0);
  sub_191C0E22C(0);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  v4 = sub_191CC6558();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t LinkSetWrapper.elements.getter()
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  return sub_191CC6428();
}

uint64_t sub_191C0ED88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0D3DC(a1, v6);
  v7 = type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_191C0D3DC(v6, v8 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_191C133F8(v6);
  *a2 = v9;
  return result;
}

id LinkSetWrapper.appendingElement(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(v6 + 16);
  v12(&v17 - v10, v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  sub_191CC6458();
  v12(v9, v11, v5);
  v13 = objc_allocWithZone(ObjectType);
  v12(&v13[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9, v5);
  v17.receiver = v13;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v11, v5);
  return v14;
}

void *LinkSetWrapper.appendingElements(_:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  sub_191C0E22C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v38 = *(v13 + 16);
  v39 = v13 + 16;
  v38(&v35 - v17, v1 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v12);
  v40 = v18;
  v41 = v16;
  if (a1 >> 62)
  {
    v19 = sub_191CC6EE8();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
LABEL_16:
    v43 = v20;
    sub_191C13470(0, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    sub_191C13350();
    v29 = v40;
    sub_191CC6448();

    v30 = v41;
    v31 = v38;
    v38(v41, v29, v12);
    v32 = objc_allocWithZone(ObjectType);
    v31(&v32[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v30, v12);
    v42.receiver = v32;
    v42.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v42, sel_init);
    v34 = *(v13 + 8);
    v34(v30, v12);
    v34(v29, v12);
    return v33;
  }

  v43 = MEMORY[0x1E69E7CC0];
  result = sub_191C07F64(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v35 = v13;
    v36 = v12;
    v37 = ObjectType;
    v20 = v43;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v19; ++i)
      {
        v23 = MEMORY[0x193B02790](i, a1);
        sub_191C0D3DC(v23 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v10);
        swift_unknownObjectRelease();
        v43 = v20;
        v25 = *(v20 + 16);
        v24 = *(v20 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_191C07F64((v24 > 1), v25 + 1, 1);
          v20 = v43;
        }

        *(v20 + 16) = v25 + 1;
        sub_191C132EC(v10, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v25);
      }
    }

    else
    {
      v26 = (a1 + 32);
      do
      {
        sub_191C0D3DC(*v26 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v8);
        v43 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_191C07F64((v27 > 1), v28 + 1, 1);
          v20 = v43;
        }

        *(v20 + 16) = v28 + 1;
        sub_191C132EC(v8, v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28);
        ++v26;
        --v19;
      }

      while (v19);
    }

    v12 = v36;
    ObjectType = v37;
    v13 = v35;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id LinkSetWrapper.insertingElement(_:index:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18[1] = a2;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v13 = *(v7 + 16);
  v13(v18 - v11, v3 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  sub_191CC6468();
  v13(v10, v12, v6);
  v14 = objc_allocWithZone(ObjectType);
  v13(&v14[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v10, v6);
  v19.receiver = v14;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v12, v6);
  return v15;
}

id LinkSetWrapper.movingElement(from:to:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UserDomainConceptLinkStruct(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0E22C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - v14;
  if (a1 == a2)
  {
    v16 = v23;

    return v16;
  }

  else
  {
    v18 = *(v10 + 16);
    v18(&v22 - v14, &v23[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9);
    sub_191CC64F8();
    sub_191CC6478();
    sub_191CC6468();
    v18(v13, v15, v9);
    v19 = objc_allocWithZone(ObjectType);
    v18(&v19[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v13, v9);
    v24.receiver = v19;
    v24.super_class = ObjectType;
    v20 = objc_msgSendSuper2(&v24, sel_init);
    v21 = *(v10 + 8);
    v21(v13, v9);
    sub_191C133F8(v7);
    v21(v15, v9);
    return v20;
  }
}

id LinkSetWrapper.removingAtIndex(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = *(v5 + 16);
  v11(&v16 - v9, v1 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v4);
  sub_191CC6478();
  v11(v8, v10, v4);
  v12 = objc_allocWithZone(ObjectType);
  v11(&v12[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v8, v4);
  v16.receiver = v12;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13;
}

id LinkSetWrapper.removingLinksWithUUID(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-v11];
  v13 = *(v7 + 16);
  v13(&v18[-v11], v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  v19 = a1;
  sub_191CC64C8();
  v13(v10, v12, v6);
  v14 = objc_allocWithZone(ObjectType);
  v13(&v14[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v10, v6);
  v20.receiver = v14;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_init);
  v16 = *(v7 + 8);
  v16(v10, v6);
  v16(v12, v6);
  return v15;
}

id LinkSetWrapper.removingAll()()
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(v4 + 16);
  v10(&v15 - v8, v0 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v3);
  sub_191CC64D8();
  v10(v7, v9, v3);
  v11 = objc_allocWithZone(ObjectType);
  v10(&v11[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v7, v3);
  v15.receiver = v11;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  return v12;
}

id LinkSetWrapper.replacingElementAt(_:withElement:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v22[1] = a1;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for UserDomainConceptLinkStruct(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0E22C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v22 - v15;
  v17 = *(v11 + 16);
  v17(v22 - v15, v3 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v10);
  sub_191C0D3DC(a2 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v8);
  sub_191CC6508();
  v17(v14, v16, v10);
  v18 = objc_allocWithZone(ObjectType);
  v17(&v18[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v14, v10);
  v23.receiver = v18;
  v23.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v23, sel_init);
  v20 = *(v11 + 8);
  v20(v14, v10);
  v20(v16, v10);
  return v19;
}

id LinkSetWrapper.retargetingLinksWithUUID(_:newUUID:)(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v52 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v59 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1EEE9AC00](v4);
  v55 = v46 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v46 - v9);
  sub_191C13470(0, &qword_1EADCACB0, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - v14;
  sub_191C134D4(0, &qword_1EADCACB8, MEMORY[0x1E6995118]);
  v17 = v16;
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - v18;
  sub_191C0E22C(0);
  v21 = v20;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v47 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v46 - v24;
  v49 = v26;
  v27 = *(v26 + 16);
  v46[1] = v26 + 16;
  v46[0] = v27;
  v27(v46 - v24, v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v21);
  sub_191CC6408();
  v57 = v19;
  v58 = v17;
  v28 = v51;
  sub_191CC64A8();
  v29 = *(v59 + 48);
  v59 += 48;
  v56 = v29;
  if (v29(v15, 1, v3) != 1)
  {
    v60 = v3;
    v53 = v15;
    do
    {
      sub_191C132EC(v15, v10);
      if (sub_191CC6178())
      {
        v39 = v3;
        v40 = *v10;
        v41 = *(v39 + 20);
        v42 = sub_191CC61A8();
        v37 = v55;
        (*(*(v42 - 8) + 16))(&v55[v41], v28, v42);
        *v37 = v40;
        if ((sub_191CC64B8() & 1) == 0)
        {
          sub_191C0DD28(&qword_1EADCACC0, sub_191C0E22C, MEMORY[0x1E6995158]);
          sub_191CC6BC8();
          if (v63)
          {
            sub_191CC6BB8();
            sub_191CC6BE8();
            while (v64 != v61)
            {
              v43 = sub_191CC6C58();
              sub_191C0D3DC(v44, v6);
              v43(&v61, 0);
              if (*v6 == v40)
              {
                v45 = sub_191CC6178();
                sub_191C133F8(v6);
                if (v45)
                {
                  goto LABEL_18;
                }
              }

              else
              {
                sub_191C133F8(v6);
              }

              sub_191CC6BF8();
              sub_191CC6BE8();
            }

            v28 = v51;
            v37 = v55;
          }

          else
          {
            v37 = v55;
            if ((v62 & 1) == 0)
            {
LABEL_18:
              v37 = v55;
              sub_191CC6468();
              v28 = v51;
            }
          }
        }

        v38 = v54;
        sub_191CC6488();
        sub_191C13D70(v38, &qword_1EADCACB0, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E6720], sub_191C13470);
        sub_191C133F8(v37);
        v3 = v60;
        v15 = v53;
      }

      sub_191C133F8(v10);
      sub_191CC64A8();
    }

    while (v56(v15, 1, v3) != 1);
  }

  (*(v48 + 8))(v57, v58);
  v30 = v47;
  v31 = v46[0];
  (v46[0])(v47, v25, v21);
  v32 = ObjectType;
  v33 = objc_allocWithZone(ObjectType);
  v31(&v33[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v30, v21);
  v65.receiver = v33;
  v65.super_class = v32;
  v34 = objc_msgSendSuper2(&v65, sel_init);
  v35 = *(v49 + 8);
  v35(v30, v21);
  v35(v25, v21);
  return v34;
}

id LinkSetWrapper.swappingElementsAt(_:andAt:)(uint64_t a1, uint64_t a2)
{
  v17[1] = a2;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  v12 = *(v6 + 16);
  v12(v17 - v10, v2 + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  sub_191CC6498();
  v12(v9, v11, v5);
  v13 = objc_allocWithZone(ObjectType);
  v12(&v13[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9, v5);
  v18.receiver = v13;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, sel_init);
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v11, v5);
  return v14;
}

id LinkSetWrapper.mergingLinkSet(_:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  sub_191CC6578();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  v11 = objc_allocWithZone(ObjectType);
  v10(&v11[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v7, v3);
  v15.receiver = v11;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = *(v4 + 8);
  v13(v7, v3);
  v13(v9, v3);
  return v12;
}

void *LinkSetWrapper.mergingLegacyElementsArray(_:)(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  sub_191C0E22C(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = *(v12 + 16);
  v40 = v12 + 16;
  v41 = &v35 - v17;
  v39 = v16;
  v16();
  v42 = v15;
  if (a1 >> 62)
  {
    v18 = sub_191CC6EE8();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
LABEL_16:
    v44 = v19;
    sub_191C13470(0, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    sub_191C13350();
    v28 = v41;
    v29 = sub_191CC6448();
    MEMORY[0x1EEE9AC00](v29);
    *(&v35 - 2) = v19;
    sub_191CC64C8();

    v30 = v42;
    v31 = v39;
    (v39)(v42, v28, v11);
    v32 = objc_allocWithZone(ObjectType);
    (v31)(&v32[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v30, v11);
    v43.receiver = v32;
    v43.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v43, sel_init);
    v34 = *(v12 + 8);
    v34(v30, v11);
    v34(v28, v11);
    return v33;
  }

  v44 = MEMORY[0x1E69E7CC0];
  result = sub_191C07F64(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v36 = v12;
    v37 = v11;
    v38 = ObjectType;
    v19 = v44;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v18; ++i)
      {
        v22 = MEMORY[0x193B02790](i, a1);
        sub_191C0D3DC(v22 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v9);
        swift_unknownObjectRelease();
        v44 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_191C07F64((v23 > 1), v24 + 1, 1);
          v19 = v44;
        }

        *(v19 + 16) = v24 + 1;
        sub_191C132EC(v9, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24);
      }
    }

    else
    {
      v25 = (a1 + 32);
      do
      {
        sub_191C0D3DC(*v25 + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v7);
        v44 = v19;
        v27 = *(v19 + 16);
        v26 = *(v19 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_191C07F64((v26 > 1), v27 + 1, 1);
          v19 = v44;
        }

        *(v19 + 16) = v27 + 1;
        sub_191C132EC(v7, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27);
        ++v25;
        --v18;
      }

      while (v18);
    }

    v11 = v37;
    ObjectType = v38;
    v12 = v36;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_191C11EE0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_191C0D3DC(v9, v7);
      if (*v7 == *a1)
      {
        v11 = sub_191CC6178();
        sub_191C133F8(v7);
        if (v11)
        {
          return 1;
        }
      }

      else
      {
        sub_191C133F8(v7);
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return 0;
}

id sub_191C1202C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v6 = sub_191CC68E8();
  v7 = a1;
  v8 = a4(v6);

  return v8;
}

uint64_t LinkSetWrapper.description.getter()
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  sub_191CC6428();
  v0 = MEMORY[0x193B02090]();

  return v0;
}

uint64_t LinkSetWrapper.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_191C0DAF0(a1, v5);
  if (!v6)
  {
    sub_191C13D70(v5, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_191C13BA4);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  type metadata accessor for UserDomainConceptLinkStruct(0);
  sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1E1C);
  sub_191C0DD28(&qword_1EADCAC88, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1DDC);
  v2 = sub_191CC6418();

  return v2 & 1;
}

uint64_t sub_191C1239C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_191C13D70(v10, &qword_1EADCC5D0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_191C13BA4);
  return v8 & 1;
}

uint64_t LinkSetWrapper.hash.getter()
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  sub_191CC6428();
  sub_191C0DD28(&qword_1EADCACC8, type metadata accessor for UserDomainConceptLinkStructWrapper, MEMORY[0x1E69E81B8]);
  v0 = sub_191CC6998();

  return v0;
}

id LinkSetWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_191C126B0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_191C12754()
{
  result = sub_191C12774();
  qword_1EADCAC58 = result;
  return result;
}

uint64_t sub_191C12774()
{
  sub_191C13470(0, &qword_1EADCAD90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v65 = &v57 - v1;
  v2 = sub_191CC6008();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v57 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v57 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v57 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v57 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - v19;
  v21 = [objc_opt_self() defaultManager];
  v22 = [v21 URLsForDirectory:13 inDomains:1];

  v23 = sub_191CC68E8();
  if (!*(v23 + 16))
  {
    goto LABEL_7;
  }

  v64 = v18;
  v24 = *(v3 + 16);
  v25 = v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v62 = v6;
  v63 = v24;
  v24(v20, v25, v2);

  v26 = [objc_opt_self() mainBundle];
  v27 = [v26 bundleIdentifier];

  if (!v27)
  {
    (*(v3 + 8))(v20, v2);
    goto LABEL_9;
  }

  sub_191CC67B8();

  if (qword_1EADCA128 != -1)
  {
    swift_once();
  }

  if (byte_1EADE7040)
  {
    (*(v3 + 8))(v20, v2);
LABEL_7:

LABEL_9:
    if (qword_1EADCA130 != -1)
    {
      swift_once();
    }

    v28 = sub_191CC6348();
    __swift_project_value_buffer(v28, qword_1EADE7048);
    v29 = sub_191CC6328();
    v30 = sub_191CC6CB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_19197B000, v29, v30, "Create transient CRContext", v31, 2u);
      MEMORY[0x193B047C0](v31, -1, -1);
    }

    sub_191CC6628();
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v32 = MEMORY[0x193B01DA0](0, &v66);
    sub_191C13D70(&v66, &unk_1EADCAD98, sub_191C13DD0, MEMORY[0x1E69E6720], sub_191C13470);
    return v32;
  }

  v60 = v20;
  sub_191CC5FE8();

  v34 = [objc_opt_self() processInfo];
  v35 = [v34 processName];

  v36 = sub_191CC67B8();
  v38 = v37;

  *&v66 = v36;
  *(&v66 + 1) = v38;
  MEMORY[0x193B01F90](0x6E657265686F632ELL, 0xEA00000000006563);
  v39 = v64;
  sub_191CC5FE8();

  v61 = *(v3 + 8);
  v61(v15, v2);
  if (qword_1EADCA130 != -1)
  {
    swift_once();
  }

  v40 = sub_191CC6348();
  v41 = __swift_project_value_buffer(v40, qword_1EADE7048);
  v42 = v63;
  v63(v12, v39, v2);
  v59 = v41;
  v43 = sub_191CC6328();
  v44 = sub_191CC6CB8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v57 = v45;
    v58 = swift_slowAlloc();
    *&v66 = v58;
    *v45 = 136315138;
    sub_191C0DD28(&qword_1EADCADA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v46 = sub_191CC7398();
    v48 = v47;
    v49 = v12;
    v50 = v61;
    v61(v49, v2);
    v51 = sub_191C3B288(v46, v48, &v66);
    v42 = v63;

    v52 = v57;
    *(v57 + 1) = v51;
    v53 = v52;
    _os_log_impl(&dword_19197B000, v43, v44, "Create CRContext at %s", v52, 0xCu);
    v54 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x193B047C0](v54, -1, -1);
    MEMORY[0x193B047C0](v53, -1, -1);
  }

  else
  {

    v55 = v12;
    v50 = v61;
    v61(v55, v2);
  }

  sub_191CC6628();
  v56 = v64;
  v42(v9, v64, v2);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  (*(v3 + 56))(v65, 1, 1, v2);
  v32 = sub_191CC6618();
  v50(v56, v2);
  v50(v60, v2);
  return v32;
}

id static CRContext.sharedCoherenceContext.getter()
{
  if (qword_1EADCA120 != -1)
  {
    swift_once();
  }

  v1 = qword_1EADCAC58;

  return v1;
}

void sub_191C13210()
{
  v0 = sub_191CC6778();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    v2 = swift_getObjCClassMetadata() != 0;
  }

  else
  {
    v2 = 0;
  }

  byte_1EADE7040 = v2;
}

uint64_t sub_191C13274()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7048);
  __swift_project_value_buffer(v0, qword_1EADE7048);
  return sub_191CC6338();
}

uint64_t sub_191C132EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_191C13350()
{
  result = qword_1EADCAC98;
  if (!qword_1EADCAC98)
  {
    sub_191C13470(255, &qword_1EADCAC90, type metadata accessor for UserDomainConceptLinkStruct, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAC98);
  }

  return result;
}

uint64_t sub_191C133F8(uint64_t a1)
{
  v2 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_191C13470(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C134D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for UserDomainConceptLinkStruct(255);
    v7 = sub_191C0DD28(&qword_1EADCAC80, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1E1C);
    v8 = sub_191C0DD28(&qword_1EADCAC88, type metadata accessor for UserDomainConceptLinkStruct, &unk_191DD1DDC);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_191C13668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_191C13778(uint64_t a1)
{
  result = sub_191CC61A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_191C13918()
{
  result = qword_1EADCAD18;
  if (!qword_1EADCAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD18);
  }

  return result;
}

unint64_t sub_191C13970()
{
  result = qword_1EADCAD20;
  if (!qword_1EADCAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD20);
  }

  return result;
}

unint64_t sub_191C139C8()
{
  result = qword_1EADCAD28;
  if (!qword_1EADCAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD28);
  }

  return result;
}

unint64_t sub_191C13A20()
{
  result = qword_1EADCAD30;
  if (!qword_1EADCAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD30);
  }

  return result;
}

unint64_t sub_191C13A78()
{
  result = qword_1EADCAD38;
  if (!qword_1EADCAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD38);
  }

  return result;
}

unint64_t sub_191C13AD0()
{
  result = qword_1EADCAD40;
  if (!qword_1EADCAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD40);
  }

  return result;
}

unint64_t sub_191C13B28()
{
  result = qword_1EADCAD48;
  if (!qword_1EADCAD48)
  {
    sub_191C13BA4(255, &qword_1EADCAD50, &type metadata for UserDomainConceptLinkStruct.CodingKeys, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAD48);
  }

  return result;
}

void sub_191C13BA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_191C13C84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C13A20();
    v7 = a3(a1, &type metadata for UserDomainConceptLinkStruct.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_191C13D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_191C13DD0()
{
  result = qword_1EADCADA0;
  if (!qword_1EADCADA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCADA0);
  }

  return result;
}

unint64_t sub_191C13E34()
{
  result = qword_1EADCC5C0;
  if (!qword_1EADCC5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCC5C0);
  }

  return result;
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

unint64_t sub_191C13EF8()
{
  result = qword_1EADCADB8;
  if (!qword_1EADCADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCADB8);
  }

  return result;
}

uint64_t HKHealthStore.dateOfBirthComponents.getter(uint64_t a1)
{
  *(v2 + 128) = a1;
  *(v2 + 136) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C13F90, 0, 0);
}

uint64_t sub_191C13F90()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0[17];
  v6 = v1[16];
  v1[2] = v2;
  v1[7] = v6;
  v1[3] = sub_191BFBE34;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C141E0;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C141E8;
  v1[13] = &block_descriptor_9;
  v9 = _Block_copy(v4);

  [v5 _dateOfBirthWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C140D8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_191C14BDC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v13 - v8;
  if (a2)
  {
    sub_191BF92E0();
    swift_allocError();
    *v10 = a2;
    v11 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_191C14C90(a1, &v13 - v8);
    sub_191C14CF4(v9, *(*(a3 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_191C141E8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_191C14BDC(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_191CC5D58();
    v10 = sub_191CC5DC8();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_191CC5DC8();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_191C14C34(v8);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C1435C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C144A4;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_7;
  v9 = _Block_copy(v4);

  [v6 _bloodTypeWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C144E8()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191BFFBF4;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C14630;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_14;
  v9 = _Block_copy(v4);

  [v6 _biologicalSexWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C14674()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C147BC;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_21;
  v9 = _Block_copy(v4);

  [v6 _fitzpatrickSkinTypeWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C14800()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C14948;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_28;
  v9 = _Block_copy(v4);

  [v6 _wheelchairUseWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C1498C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[17];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C14D84;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[14] = sub_191C14BB8;
  v1[15] = v8;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C14D80;
  v1[13] = &block_descriptor_35;
  v9 = _Block_copy(v4);

  [v6 _activityMoveModeObjectWithCompletion_];
  _Block_release(v9);

  return MEMORY[0x1EEE6DEC8](v3);
}

void sub_191C14AD4(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  if (a1)
  {
    v9 = a1;
    **(*(a3 + 64) + 40) = [v9 *a4];
    swift_continuation_throwingResume();
  }

  else if (a2)
  {
    sub_191BF92E0();
    swift_allocError();
    *v7 = a2;
    v8 = a2;

    swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }
}

void sub_191C14BDC(uint64_t a1)
{
  if (!qword_1EADCADC0)
  {
    sub_191CC5DC8();
    v1 = sub_191CC6DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCADC0);
    }
  }
}

uint64_t sub_191C14C34(uint64_t a1)
{
  sub_191C14BDC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C14C90(uint64_t a1, uint64_t a2)
{
  sub_191C14BDC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C14CF4(uint64_t a1, uint64_t a2)
{
  sub_191C14BDC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_191C14D94@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE9TrimesterO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id HKMCPregnancyDatesFactory.init(pregnancySample:state:)(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPregnancySample:a1 state:a2];

  return v3;
}

id HKMCPregnancyDatesFactory.init(pregnancySample:state:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___HKMCPregnancyDatesFactory_pregnancySample) = a1;
  *(v2 + OBJC_IVAR___HKMCPregnancyDatesFactory_state) = a2;
  v4.super_class = HKMCPregnancyDatesFactory;
  return objc_msgSendSuper2(&v4, sel_init);
}

id HKMCPregnancyDatesFactory.generateModel(educationalStepsCompletedDate:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_191C1C2CC(0, &qword_1EADCA8D8, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v86 - v6;
  v106 = sub_191CC5CF8();
  v7 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_191CC6148();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v86 - v14;
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], v4);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v101 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v86 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v100 = &v86 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v99 = &v86 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v98 = &v86 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v92 = &v86 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v86 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v102 = &v86 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v104 = &v86 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v86 - v37;
  v39 = [v2 pregnancySample];
  if (!v39)
  {
    return [objc_allocWithZone(HKMCPregnancyModel) initWithState:0 pregnancyStartDate:0 pregnancyEndDate:0 estimatedDueDate:0 pregnancyDuration:0 physiologicalWashoutEndDate:0 behavioralWashoutEndDate:0 trimesters:0 sample:0 educationalStepsCompletedDate:0];
  }

  started = v2;
  v90 = a1;
  v97 = v7;
  v40 = v39;
  v41 = [v40 endDate];
  sub_191CC60F8();

  sub_191CC6078();
  LOBYTE(v41) = sub_191CC60E8();
  v95 = v10;
  v43 = *(v10 + 8);
  v42 = v10 + 8;
  v43(v13, v9);
  v103 = v43;
  v43(v15, v9);
  v94 = v21;
  if (v41)
  {
    v44 = 1;
  }

  else
  {
    v46 = [v40 endDate];
    sub_191CC60F8();

    v44 = 0;
  }

  v47 = *(v95 + 56);
  v48 = 1;
  v96 = v38;
  v47(v38, v44, 1, v9);
  v49 = [v40 startDate];
  sub_191CC60F8();

  v50 = [v40 endDate];
  sub_191CC60F8();

  static HKMCPregnancyDatesFactory.calculateDuration(pregnancyStart:pregnancyEnd:)(v15, v13);
  v51 = v13;
  v52 = v103;
  v103(v51, v9);
  v88 = v42;
  v52(v15, v9);
  static HKMCPregnancyDatesFactory.calculateBehavioralWashout(for:)(v40, v104);
  v53 = [swift_getObjCClassFromMetadata() calculatePhysiologicalWashoutFromPregnancySample_];
  if (v53)
  {
    v54 = v53;
    sub_191CC60F8();

    v48 = 0;
  }

  v55 = v106;
  v47(v32, v48, 1, v9);
  v56 = v32;
  v57 = v102;
  sub_191C18F38(v56, v102);
  ObjectType = [started state];
  v58 = [v40 startDate];
  v59 = v92;
  sub_191CC60F8();

  v47(v59, 0, 1, v9);
  sub_191C18FCC(v96, v98);
  v60 = v99;
  static HKMCPregnancyDatesFactory.calculateEstimatedDueDate(sample:)(v40, v99);
  v47(v60, 0, 1, v9);
  v61 = v97;
  v62 = v93;
  (*(v97 + 16))(v93, v105, v55);
  (*(v61 + 56))(v62, 0, 1, v55);
  sub_191C18FCC(v57, v100);
  sub_191C18FCC(v104, v94);
  v63 = [v40 startDate];
  v87 = v40;

  sub_191CC60F8();
  started = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE19calculateTrimesters14pregnancyStartSay10Foundation4DateVGAH_tFZ_0(v15);
  v64 = v103;
  v103(v15, v9);
  sub_191C18FCC(v90, v101);
  v65 = *(v95 + 48);
  if (v65(v59, 1, v9) == 1)
  {
    v95 = 0;
  }

  else
  {
    v95 = sub_191CC60A8();
    v64(v59, v9);
  }

  v66 = v98;
  v67 = v65(v98, 1, v9);
  v68 = v106;
  if (v67 == 1)
  {
    v92 = 0;
  }

  else
  {
    v92 = sub_191CC60A8();
    v64(v66, v9);
  }

  v69 = v99;
  if (v65(v99, 1, v9) == 1)
  {
    v99 = 0;
  }

  else
  {
    v99 = sub_191CC60A8();
    v64(v69, v9);
  }

  if ((*(v61 + 48))(v62, 1, v68) == 1)
  {
    v70 = 0;
  }

  else
  {
    v70 = sub_191CC5C88();
    (*(v61 + 8))(v62, v68);
  }

  v71 = v94;
  v72 = v100;
  if (v65(v100, 1, v9) == 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = sub_191CC60A8();
    v103(v72, v9);
  }

  if (v65(v71, 1, v9) == 1)
  {
    v74 = 0;
  }

  else
  {
    v74 = sub_191CC60A8();
    v103(v71, v9);
  }

  v75 = v101;
  v76 = sub_191CC68D8();

  if (v65(v75, 1, v9) == 1)
  {
    v77 = 0;
  }

  else
  {
    v78 = v75;
    v77 = sub_191CC60A8();
    v103(v78, v9);
  }

  v79 = objc_allocWithZone(HKMCPregnancyModel);
  v80 = v87;
  v81 = v92;
  v82 = v95;
  v83 = v99;
  v84 = [v79 initWithState:ObjectType pregnancyStartDate:v95 pregnancyEndDate:v92 estimatedDueDate:v99 pregnancyDuration:v70 physiologicalWashoutEndDate:v73 behavioralWashoutEndDate:v74 trimesters:v76 sample:v87 educationalStepsCompletedDate:v77];

  v85 = MEMORY[0x1E6969530];
  sub_191C19E70(v102, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
  sub_191C19E70(v104, &unk_1ED5EFFF0, v85);
  (*(v97 + 8))(v105, v106);
  sub_191C19E70(v96, &unk_1ED5EFFF0, v85);
  return v84;
}

uint64_t static HKMCPregnancyDatesFactory.calculateDuration(pregnancyStart:pregnancyEnd:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_191CC6078();
  v11 = sub_191CC60E8();
  v12 = *(v5 + 8);
  v12(v10, v4);
  if (v11)
  {
    sub_191CC6108();
    sub_191CC6088();
    v12(v10, v4);
    (*(v5 + 16))(v10, a1, v4);
    return sub_191CC5CD8();
  }

  else
  {
    v14 = *(v5 + 16);
    v14(v10, a1, v4);
    v14(v8, a2, v4);
    return sub_191CC5CC8();
  }
}

uint64_t static HKMCPregnancyDatesFactory.calculateBehavioralWashout(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = [a1 endDate];
  sub_191CC60F8();

  sub_191CC6078();
  sub_191C1C284(&qword_1EADCADD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(v11) = sub_191CC6768();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v14 = [a1 endDate];
  sub_191CC60F8();

  v15 = [a1 startDate];
  sub_191CC60F8();

  sub_191CC6088();
  v12(v8, v4);
  v12(v10, v4);
  v16 = [a1 endDate];
  sub_191CC60F8();

  sub_191CC6098();
  v12(v10, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t static HKMCPregnancyDatesFactory.calculateEstimatedDueDate(sample:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_191CC6148();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_191CC61C8();
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_191CC62A8();
  v8 = *(v36 - 8);
  v9 = MEMORY[0x1EEE9AC00](v36);
  v34 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  v13 = sub_191CC6308();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  v35 = a1;
  v23 = [a1 _timeZone];
  if (v23)
  {
    v24 = v23;
    sub_191CC62E8();

    (*(v14 + 32))(v22, v20, v13);
    v25 = v33;
    (*(v5 + 104))(v7, *MEMORY[0x1E6969868], v33);
    sub_191CC61D8();
    (*(v5 + 8))(v7, v25);
    (*(v14 + 16))(v17, v22, v13);
    sub_191CC6278();
    v26 = [v35 startDate];
    v27 = v37;
    sub_191CC60F8();

    v28 = v34;
    v29 = v36;
    (*(v8 + 16))(v34, v12, v36);
    DayIndex.init(date:calendar:)(v27, v28, &v38);
    if (!__OFADD__(v38, 280))
    {
      v38 += 280;
      DayIndex.startDate(in:)(v12, v32);
      (*(v8 + 8))(v12, v29);
      return (*(v14 + 8))(v22, v13);
    }

    __break(1u);
  }

  result = sub_191CC7118();
  __break(1u);
  return result;
}

void static HKMCPregnancyDatesFactory.gestationalAgeDurationForDisplay(on:pregnancyStart:startTimeZoneName:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v36 = a2;
  v37 = a1;
  v6 = sub_191CC6148();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - v10;
  v12 = sub_191CC6308();
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_191C1C2CC(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_191CC62A8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C187C8(a3, a4, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_191C19E70(v15, &qword_1EADCADE0, MEMORY[0x1E6969AE8]);
    sub_191CC7658();
    return;
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_191CC62F8();
  sub_191CC6278();
  sub_191CC61F8();
  sub_191CC61F8();
  v20 = objc_opt_self();
  v21 = sub_191CC60A8();
  v22 = sub_191CC60A8();
  LODWORD(v20) = [v20 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v21 pregnancyEndDate:v22];

  if (v20)
  {
    sub_191CC6088();
    if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v23 > -9.22337204e18)
    {
      if (v23 < 9.22337204e18)
      {
        sub_191CC7638();
        v24 = *(v34 + 8);
        v25 = v9;
        v26 = v35;
        v24(v25, v35);
        v24(v11, v26);
        (*(v17 + 8))(v19, v16);
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_191CC6FC8();
  MEMORY[0x193B01F90](91, 0xE100000000000000);
  v27 = sub_191CC76A8();
  MEMORY[0x193B01F90](v27);

  MEMORY[0x193B01F90](0xD000000000000047, 0x8000000191D2BB10);
  v28 = v38;
  v29 = v39;
  sub_191C19EE0();
  swift_allocError();
  *v30 = v28;
  v30[1] = v29;
  swift_willThrow();
  v31 = v35;
  v32 = *(v34 + 8);
  v32(v9, v35);
  v32(v11, v31);
  (*(v17 + 8))(v19, v16);
}

uint64_t static HKMCPregnancyDatesFactory.weeksAndDaysFormat(width:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v12[1] = a1;
  v2 = sub_191CC75A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_191CC7568();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1C2CC(0, &qword_1EADCADF0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  sub_191CC75D8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_191DD1F40;
  sub_191CC75C8();
  sub_191CC75B8();
  sub_191C19654(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_191CC7558();
  sub_191CC7598();
  sub_191CC5BE8();

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_191C16B88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  v7 = sub_191CC6148();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC60F8();
  v11 = a4;
  sub_191C19F34(v10, v11, a5);

  (*(v8 + 8))(v10, v7);
  v12 = sub_191CC6778();

  return v12;
}

uint64_t static HKMCPregnancyDatesFactory.replaceSpacesWithNonBreakingSpaces(dateString:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_191CC5C68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  sub_191CC5C58();
  sub_191C1B784();
  v8 = sub_191CC6E08();
  (*(v5 + 8))(v7, v4);
  v11[0] = v8;
  sub_191C1B7D8();
  sub_191C1C284(&qword_1EADCAE08, sub_191C1B7D8, MEMORY[0x1E69E6310]);
  v9 = sub_191CC66D8();

  return v9;
}

id sub_191C16E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t))
{
  v7 = sub_191CC6148();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  sub_191CC60F8();
  sub_191CC60F8();
  v14 = sub_191CC67B8();
  a6(v13, v11, v14, v15);

  v16 = *(v8 + 8);
  v16(v11, v7);
  v16(v13, v7);
  v17 = sub_191CC6778();

  return v17;
}

uint64_t static HKMCPregnancyDatesFactory.gestationalAgeInComponents(on:pregnancyStart:startTimeZoneName:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a2;
  v56 = a1;
  v8 = sub_191CC6148();
  v57 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v52 - v11;
  v12 = MEMORY[0x1E69E6720];
  sub_191C1C2CC(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v52 - v14;
  v16 = sub_191CC62A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v52 - v21;
  sub_191C1C2CC(0, &qword_1EADCADC0, MEMORY[0x1E6968278], v12);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v52 - v24;
  sub_191C187C8(a3, a4, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_191C19E70(v15, &qword_1EADCADE0, MEMORY[0x1E6969AE8]);
    v26 = sub_191CC5DC8();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
LABEL_8:
    sub_191C19E70(v25, &qword_1EADCADC0, MEMORY[0x1E6968278]);
    sub_191CC5DC8();
    return (*(*(v26 - 8) + 56))(a5, 1, 1, v26);
  }

  v53 = v20;
  (*(v17 + 32))(v22, v15, v16);
  sub_191CC61F8();
  sub_191CC61F8();
  v27 = objc_opt_self();
  v28 = sub_191CC60A8();
  v29 = sub_191CC60A8();
  LOBYTE(v27) = [v27 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v28 pregnancyEndDate:v29];

  v54 = a5;
  if (v27)
  {
    sub_191CC6258();
    sub_191C1C2CC(0, &qword_1EADCAE10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v30 = sub_191CC6288();
    v31 = *(v30 - 8);
    v55 = v8;
    v32 = v31;
    v33 = *(v31 + 72);
    v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_191DD1F40;
    v36 = v35 + v34;
    v37 = *MEMORY[0x1E6969A20];
    v56 = v25;
    v38 = v57;
    v39 = *(v32 + 104);
    v39(v36, v37, v30);
    v39(v36 + v33, *MEMORY[0x1E6969A48], v30);
    sub_191C19060(v35);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v41 = v58;
    v40 = v59;
    v42 = v53;
    sub_191CC6208();

    v43 = *(v17 + 8);
    v43(v42, v16);
    v44 = *(v38 + 8);
    v45 = v55;
    v44(v41, v55);
    v44(v40, v45);
    v25 = v56;
    v43(v22, v16);
    v46 = 0;
  }

  else
  {
    v47 = *(v57 + 8);
    v47(v58, v8);
    v47(v59, v8);
    (*(v17 + 8))(v22, v16);
    v46 = 1;
  }

  v26 = sub_191CC5DC8();
  v48 = *(v26 - 8);
  v49 = *(v48 + 56);
  v49(v25, v46, 1, v26);
  if ((*(v48 + 48))(v25, 1, v26) == 1)
  {
    a5 = v54;
    goto LABEL_8;
  }

  v51 = v54;
  (*(v48 + 32))(v54, v25, v26);
  return (v49)(v51, 0, 1, v26);
}

uint64_t static HKMCPregnancyDatesFactory.calculateGestationalAgeComponentsForDisplay(fromPregnancyStart:startTimeZoneName:end:)@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v47 = a5;
  v7 = sub_191CC6148();
  v44 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v42 - v10;
  sub_191C1C2CC(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_191CC62A8();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  sub_191C187C8(a2, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_191C19E70(v13, &qword_1EADCADE0, MEMORY[0x1E6969AE8]);
LABEL_6:
    v38 = 1;
    goto LABEL_7;
  }

  (*(v15 + 32))(v20, v13, v14);
  sub_191CC61F8();
  sub_191CC61F8();
  v21 = objc_opt_self();
  v22 = sub_191CC60A8();
  v23 = sub_191CC60A8();
  LODWORD(v21) = [v21 isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v22 pregnancyEndDate:v23];

  if (!v21)
  {
    v39 = *(v44 + 8);
    v39(v45, v7);
    v39(v46, v7);
    (*(v15 + 8))(v20, v14);
    goto LABEL_6;
  }

  v43 = v18;
  sub_191CC6258();
  sub_191C1C2CC(0, &qword_1EADCAE10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v24 = sub_191CC6288();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_191DD1F40;
  v29 = v28 + v27;
  v30 = *MEMORY[0x1E6969A20];
  v42 = v7;
  v31 = *(v25 + 104);
  v31(v29, v30, v24);
  v31(v29 + v26, *MEMORY[0x1E6969A48], v24);
  sub_191C19060(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v33 = v45;
  v32 = v46;
  v34 = v43;
  sub_191CC6208();

  v35 = *(v15 + 8);
  v35(v34, v14);
  v36 = *(v44 + 8);
  v37 = v42;
  v36(v33, v42);
  v36(v32, v37);
  v35(v20, v14);
  v38 = 0;
LABEL_7:
  v40 = sub_191CC5DC8();
  return (*(*(v40 - 8) + 56))(v47, v38, 1, v40);
}

id static HKMCPregnancyDatesFactory.isPregnancyDurationPhysiologicallyPossible(forPregnancyStart:)()
{
  v0 = sub_191CC6148();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_191CC60A8();
  sub_191CC6138();
  v6 = sub_191CC60A8();
  (*(v1 + 8))(v3, v0);
  v7 = [ObjCClassFromMetadata isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v5 pregnancyEndDate:v6];

  return v7;
}

uint64_t static HKMCPregnancyDatesFactory.calculatePhysiologicalWashout(fromPregnancySample:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = [a1 endDate];
  sub_191CC60F8();

  sub_191CC6078();
  sub_191C1C284(&qword_1EADCADD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LOBYTE(v11) = sub_191CC6768();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if ((v11 & 1) != 0 || (v13 = [a1 endDate], sub_191CC60F8(), v13, v14 = objc_msgSend(a1, sel_startDate), sub_191CC60F8(), v14, sub_191CC6088(), v16 = v15, v12(v8, v4), v12(v10, v4), v16 < 12096000.0))
  {
    v17 = 1;
  }

  else
  {
    v18 = [a1 endDate];
    sub_191CC60F8();

    sub_191CC6098();
    v12(v10, v4);
    v17 = 0;
  }

  return (*(v5 + 56))(a2, v17, 1, v4);
}

HKMCPregnancyDatesFactory __swiftcall HKMCPregnancyDatesFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.state = v3;
  result.pregnancySample = v2;
  result.super.isa = v1;
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.calculateStartDateFromGestationalAge(weeks:days:on:)(uint64_t result, uint64_t a2)
{
  if ((result * 7) >> 64 == (7 * result) >> 63)
  {
    if (!__OFADD__(7 * result, a2))
    {
      return sub_191CC6098();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.calculateStartDateFromEmbryoTransfer(date:embryonicAgeInDays:)(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
  }

  else if (!__OFSUB__(-a2, 14))
  {
    return sub_191CC6098();
  }

  __break(1u);
  return result;
}

uint64_t sub_191C187C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_191CC61C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1C2CC(0, &qword_1EADCAED0, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_191CC6308();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v30 = a1;
  v19 = a2;
  sub_191CC62C8();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v20 = v31;
    sub_191C19E70(v11, &qword_1EADCAED0, MEMORY[0x1E6969BC0]);
    if (HKShowSensitiveLogItems())
    {
      if (qword_1EADCA138 != -1)
      {
        swift_once();
      }

      v21 = sub_191CC6348();
      __swift_project_value_buffer(v21, qword_1EADE7060);

      v22 = sub_191CC6328();
      v23 = sub_191CC6C98();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v32 = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_191C3B288(0x7261646E656C6143, 0xE800000000000000, &v32);
        *(v24 + 12) = 2080;
        *(v24 + 14) = sub_191C3B288(v30, v19, &v32);
        _os_log_impl(&dword_19197B000, v22, v23, "[%s] Error: Not a valid timezone - %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193B047C0](v25, -1, -1);
        MEMORY[0x193B047C0](v24, -1, -1);
      }
    }

    v26 = 1;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v6 + 104))(v8, *MEMORY[0x1E6969868], v5);
    v20 = v31;
    sub_191CC61D8();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 16))(v16, v18, v12);
    sub_191CC6278();
    (*(v13 + 8))(v18, v12);
    v26 = 0;
  }

  v27 = sub_191CC62A8();
  return (*(*(v27 - 8) + 56))(v20, v26, 1, v27);
}

uint64_t static HKMCPregnancyDatesFactory.calculateEmbryoTransferDate(fromPregnancyStart:embryonicAgeInDays:)(uint64_t a1, uint64_t a2)
{
  if (!__OFADD__(a2, 14))
  {
    return sub_191CC6098();
  }

  __break(1u);
  return result;
}

uint64_t static HKMCPregnancyDatesFactory.currentTrimester(on:pregnancySample:)(uint64_t a1, void *a2)
{
  v4 = sub_191CC6308();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC6148();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 startDate];
  sub_191CC60F8();

  v13 = [a2 _timeZoneName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_191CC67B8();
    v17 = v16;
  }

  else
  {
    sub_191CC62F8();
    v15 = sub_191CC62D8();
    v17 = v18;
    (*(v5 + 8))(v7, v4);
  }

  v19 = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE16currentTrimester2on14pregnancyStart17startTimeZoneNameAbCE0G0O10Foundation4DateV_ALSStFZ_0(a1, v11, v15, v17);

  (*(v9 + 8))(v11, v8);
  return v19;
}

uint64_t sub_191C18E90()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7060);
  __swift_project_value_buffer(v0, qword_1EADE7060);
  return sub_191CC6338();
}

unint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE9TrimesterO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_191C18F38(uint64_t a1, uint64_t a2)
{
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C18FCC(uint64_t a1, uint64_t a2)
{
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C19060(uint64_t a1)
{
  v2 = sub_191CC6288();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_191C1BEC8(0);
    v9 = sub_191CC6F98();
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
      sub_191C1C284(&qword_1EADCAE38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_191CC6698();
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
          sub_191C1C284(&qword_1EADCAE40, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_191CC6768();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE19calculateTrimesters14pregnancyStartSay10Foundation4DateVGAH_tFZ_0(uint64_t a1)
{
  v22 = sub_191CC62A8();
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v21 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  sub_191CC6258();
  sub_191CC61F8();
  (*(v1 + 8))(v3, v22);
  sub_191CC6098();
  sub_191CC6098();
  sub_191C1C2CC(0, qword_1EADCAEE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6F90]);
  v14 = *(v5 + 72);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_191DD1F50;
  v17 = v16 + v15;
  v18 = *(v6 + 16);
  v18(v17, v13, v4);
  v18(v17 + v14, v11, v4);
  (*(v6 + 32))(v17 + 2 * v14, v21, v4);
  v19 = *(v6 + 8);
  v19(v11, v4);
  v19(v13, v4);
  return v16;
}

uint64_t sub_191C19654(uint64_t a1)
{
  v2 = sub_191CC75D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_191C1C1F0(0);
    v9 = sub_191CC6F98();
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
      sub_191C1C284(&qword_1EADCAEC0, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
      v16 = sub_191CC6698();
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
          sub_191C1C284(&qword_1EADCAEC8, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1D0]);
          v23 = sub_191CC6768();
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

  return MEMORY[0x1E69E7CD0];
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE20gestationalAgeString2on14pregnancyStart17startTimeZoneNameSS10Foundation4DateV_AJSStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_191CC75A8();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_191CC7568();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_191CC7608();
  v24 = *(v14 - 8);
  v25 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_191CC7618();
  v26 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HKMCPregnancyDatesFactory();
  static HKMCPregnancyDatesFactory.gestationalAgeDurationForDisplay(on:pregnancyStart:startTimeZoneName:)(a1, a2, a3, a4);
  v23[1] = v20;
  sub_191CC75F8();
  sub_191C1C2CC(0, &qword_1EADCADF0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  sub_191CC75D8();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_191DD1F40;
  sub_191CC75C8();
  sub_191CC75B8();
  sub_191C19654(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_191CC7558();
  sub_191CC7598();
  sub_191CC5BE8();

  (*(v29 + 8))(v10, v30);
  (*(v27 + 8))(v13, v28);
  (*(v24 + 8))(v16, v25);
  sub_191C1C284(&qword_1EADCAED8, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
  sub_191CC7628();
  (*(v26 + 8))(v19, v17);
  return v31;
}

uint64_t sub_191C19E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_191C1C2CC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_191C19EE0()
{
  result = qword_1EADCADE8;
  if (!qword_1EADCADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCADE8);
  }

  return result;
}

uint64_t sub_191C19F34(uint64_t a1, void *a2, SEL *a3)
{
  v23 = a3;
  v4 = sub_191CC6308();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC6148();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191CC60A8();
  v13 = [a2 startDate];
  sub_191CC60F8();

  v14 = sub_191CC60A8();
  (*(v9 + 8))(v11, v8);
  v15 = [a2 _timeZoneName];
  if (v15)
  {
    v16 = v15;
    sub_191CC67B8();
  }

  else
  {
    sub_191CC62F8();
    sub_191CC62D8();
    (*(v5 + 8))(v7, v4);
  }

  v17 = objc_opt_self();
  v18 = sub_191CC6778();

  v19 = [v17 *v23];

  v20 = sub_191CC67B8();
  return v20;
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE27gestationalAgeCompactString2on14pregnancyStart17startTimeZoneNameSS10Foundation4DateV_AJSStFZ_0(uint64_t a1, char *a2, char *a3, unint64_t a4)
{
  v136 = a3;
  v137 = a4;
  v132 = a2;
  v108 = sub_191CC5C68();
  v124 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_191CC5DF8();
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_191CC5EC8();
  v125 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1BF5C(0);
  v116 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C1C2CC(0, &qword_1EADCAE58, MEMORY[0x1E69684A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v133 = &v94 - v11;
  v122 = sub_191CC5DE8();
  v123 = *(v122 - 8);
  v12 = MEMORY[0x1EEE9AC00](v122);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v94 - v15;
  v121 = sub_191CC5E38();
  v131 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v139 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_191CC5E18();
  v104 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v94 - v22;
  v134 = sub_191CC5E48();
  v128 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v127 = (&v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_191C1BFF0(0);
  v129 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v135 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_191CC7578();
  v113 = *(v126 - 1);
  MEMORY[0x1EEE9AC00](v126);
  v112 = (&v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_191CC75A8();
  v110 = *(v111 - 1);
  MEMORY[0x1EEE9AC00](v111);
  v106 = (&v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_191CC7568();
  v105 = *(v109 - 1);
  MEMORY[0x1EEE9AC00](v109);
  v102 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_191CC7608();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v31 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_191CC7618();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_191CC5E78();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v138 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for HKMCPregnancyDatesFactory();
  static HKMCPregnancyDatesFactory.gestationalAgeDurationForDisplay(on:pregnancyStart:startTimeZoneName:)(a1, v132, v136, v137);
  v95 = v36;
  v96 = v34;
  v97 = v33;
  v132 = v23;
  v136 = v21;
  v137 = v18;
  v130 = v16;
  v114 = v14;
  sub_191CC75E8();
  sub_191C1C2CC(0, &qword_1EADCADF0, MEMORY[0x1E696A1C0], MEMORY[0x1E69E6F90]);
  sub_191CC75D8();
  v38 = swift_allocObject();
  v94 = xmmword_191DD1F40;
  *(v38 + 16) = xmmword_191DD1F40;
  sub_191CC75C8();
  sub_191CC75B8();
  sub_191C19654(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v39 = v102;
  sub_191CC7558();
  v40 = v106;
  sub_191CC7598();
  v41 = v98;
  sub_191CC5BE8();

  (*(v110 + 8))(v40, v111);
  (*(v105 + 8))(v39, v109);
  (*(v101 + 8))(v31, v103);
  v42 = v112;
  sub_191CC7588();
  (*(v99 + 8))(v41, v100);
  sub_191C1C284(&qword_1EADCAE70, MEMORY[0x1E696A1A8], MEMORY[0x1E696A1A0]);
  v43 = v138;
  v44 = v126;
  sub_191CC7628();
  (*(v113 + 8))(v42, v44);
  v145 = 0;
  v146 = 0xE000000000000000;
  v143 = 0;
  v144 = 0xE000000000000000;
  v45 = v127;
  sub_191CC5E58();
  v46 = v128;
  v47 = v134;
  v48 = v135;
  (*(v128 + 16))(v135, v45, v134);
  v49 = *(v129 + 36);
  v50 = sub_191C1C284(&qword_1EADCAE68, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  sub_191CC6BB8();
  (*(v46 + 8))(v45, v47);
  ++v131;
  v128 = v104 + 16;
  v127 = (v104 + 32);
  v126 = (v123 + 48);
  v112 = (v123 + 32);
  v111 = (v125 + 1);
  LODWORD(v110) = *MEMORY[0x1E6968490];
  v109 = (v123 + 104);
  v125 = (v123 + 8);
  LODWORD(v105) = *MEMORY[0x1E6968480];
  v106 = (v124 + 1);
  v124 = (v104 + 8);
  v51 = v122;
  v52 = v121;
  v129 = v49;
  v113 = v50;
  while (1)
  {
    sub_191CC6BE8();
    sub_191C1C284(&qword_1EADCAE78, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v53 = sub_191CC6768();
    (*v131)(v139, v52);
    v54 = v132;
    if (v53)
    {
      break;
    }

    v55 = sub_191CC6C58();
    v56 = v54;
    v57 = v54;
    v58 = v137;
    (*v128)(v56);
    v55(&v141, 0);
    sub_191CC6BF8();
    v59 = v136;
    (*v127)(v136, v57, v58);
    sub_191C1C084();
    v60 = v133;
    sub_191CC5E28();
    if ((*v126)(v60, 1, v51) == 1)
    {
      (*v124)(v59, v58);
      sub_191C19E70(v60, &qword_1EADCAE58, MEMORY[0x1E69684A8]);
      v43 = v138;
      v48 = v135;
    }

    else
    {
      (*v112)(v130, v60, v51);
      v61 = v115;
      sub_191CC5E08();
      sub_191C1C284(&qword_1EADCAE88, sub_191C1BF5C, MEMORY[0x1E69E66D8]);
      v62 = v117;
      sub_191CC5E88();
      sub_191C1C0D8(v61, sub_191C1BF5C);
      sub_191CC5EB8();
      (*v111)(v62, v118);
      sub_191C1C284(&qword_1EADCAE90, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      v63 = sub_191CC6828();
      v65 = v64;
      v66 = *v109;
      v67 = v114;
      (*v109)(v114, v110, v51);
      sub_191C1C284(&qword_1EADCAE98, MEMORY[0x1E69684A8], MEMORY[0x1E69684B0]);
      sub_191CC6878();
      sub_191CC6878();
      v123 = *v125;
      (v123)(v67, v51);
      if (v141 == v140)
      {
        v141 = v63;
        v142 = v65;
        v68 = v107;
        sub_191CC5C58();
        sub_191C1B784();
        v69 = sub_191CC6E08();
        (*v106)(v68, v108);

        v141 = v69;
        sub_191C1B7D8();
        sub_191C1C284(&qword_1EADCAE08, sub_191C1B7D8, MEMORY[0x1E69E6310]);
        v70 = sub_191CC66D8();
        v72 = v71;

        MEMORY[0x193B01F90](v70, v72);
        v52 = v121;
        v43 = v138;
        v74 = v136;
        v73 = v137;
        v48 = v135;
        v75 = v123;
      }

      else
      {
        v66(v67, v105, v51);
        sub_191CC6878();
        sub_191CC6878();
        v76 = v123;
        (v123)(v67, v51);
        v75 = v76;
        if (v141 == v140)
        {
          v141 = v63;
          v142 = v65;
          v77 = v107;
          sub_191CC5C58();
          sub_191C1B784();
          v78 = sub_191CC6E08();
          (*v106)(v77, v108);

          v141 = v78;
          sub_191C1B7D8();
          sub_191C1C284(&qword_1EADCAE08, sub_191C1B7D8, MEMORY[0x1E69E6310]);
          v79 = sub_191CC66D8();
          v81 = v80;

          MEMORY[0x193B01F90](v79, v81);
        }

        v52 = v121;
        v43 = v138;
        v74 = v136;
        v73 = v137;
        v48 = v135;
      }

      v51 = v122;
      v75(v130, v122);
      (*v124)(v74, v73);
    }
  }

  sub_191C1C0D8(v48, sub_191C1BFF0);
  v83 = v145;
  v82 = v146;
  v84 = HIBYTE(v146) & 0xF;
  if ((v146 & 0x2000000000000000) == 0)
  {
    v84 = v145 & 0xFFFFFFFFFFFFLL;
  }

  if (v84)
  {
    v86 = v143;
    v85 = v144;
    v87 = HIBYTE(v144) & 0xF;
    if ((v144 & 0x2000000000000000) == 0)
    {
      v87 = v143 & 0xFFFFFFFFFFFFLL;
    }

    v88 = v96;
    if (v87)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v90 = [objc_opt_self() bundleForClass_];
      sub_191CC5E98();

      sub_191C1C2CC(0, &qword_1EADCAEA0, sub_191C1C138, MEMORY[0x1E69E6F90]);
      v91 = swift_allocObject();
      *(v91 + 16) = v94;
      v92 = MEMORY[0x1E69E6158];
      *(v91 + 56) = MEMORY[0x1E69E6158];
      v93 = sub_191C1C19C();
      *(v91 + 32) = v83;
      *(v91 + 40) = v82;
      *(v91 + 96) = v92;
      *(v91 + 104) = v93;
      *(v91 + 64) = v93;
      *(v91 + 72) = v86;
      *(v91 + 80) = v85;
      v83 = sub_191CC6788();

      (*(v88 + 8))(v43, v97);
    }

    else
    {
      (*(v96 + 8))(v43, v97);
    }
  }

  else
  {
    (*(v96 + 8))(v43, v97);

    return v143;
  }

  return v83;
}

unint64_t sub_191C1B784()
{
  result = qword_1EADCADF8;
  if (!qword_1EADCADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCADF8);
  }

  return result;
}

void sub_191C1B7D8()
{
  if (!qword_1EADCAE00)
  {
    v0 = sub_191CC6978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCAE00);
    }
  }
}

BOOL _sSo25HKMCPregnancyDatesFactoryC9HealthKitE42isPregnancyDurationPhysiologicallyPossible03forG5Start12pregnancyEndSb10Foundation4DateV_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_191CC6148();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  sub_191C1C284(&qword_1EADCAE28, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_191CC6718() & 1) == 0)
  {
    return 0;
  }

  sub_191CC6078();
  v10 = sub_191CC60E8();
  v11 = *(v4 + 8);
  v11(v7, v3);
  if (v10)
  {
    sub_191CC6138();
  }

  else
  {
    (*(v4 + 16))(v9, a2, v3);
  }

  sub_191CC6098();
  sub_191CC6088();
  v14 = v13;
  sub_191CC6088();
  v16 = v15;
  v11(v7, v3);
  v11(v9, v3);
  return v16 <= v14;
}

uint64_t _sSo25HKMCPregnancyDatesFactoryC9HealthKitE16currentTrimester2on14pregnancyStart17startTimeZoneNameAbCE0G0O10Foundation4DateV_ALSStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_191CC5DC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = objc_opt_self();
  v12 = sub_191CC60A8();
  v13 = sub_191CC60A8();
  v14 = sub_191CC6778();
  v15 = [v11 gestationalAgeInComponentsOnDate:v12 pregnancyStartDate:v13 startTimeZoneName:v14];

  if (!v15)
  {
    return 0;
  }

  sub_191CC5D58();

  (*(v5 + 32))(v10, v8, v4);
  v16 = sub_191CC5D38();
  if ((v17 & 1) != 0 || v16 <= 13)
  {
    (*(v5 + 8))(v10, v4);
    return 1;
  }

  else
  {
    v18 = sub_191CC5D38();
    v20 = v19;
    (*(v5 + 8))(v10, v4);
    if (v20 & 1 | (v18 < 28))
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_191C1BC34()
{
  result = qword_1EADCAE18;
  if (!qword_1EADCAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE18);
  }

  return result;
}

uint64_t _s9TrimesterOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9TrimesterOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t type metadata accessor for HKMCPregnancyDatesFactory()
{
  result = qword_1EADCAE20;
  if (!qword_1EADCAE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCAE20);
  }

  return result;
}

uint64_t sub_191C1BE34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_191C1BE7C(uint64_t result, int a2, int a3)
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

void sub_191C1BEC8(uint64_t a1)
{
  if (!qword_1EADCAE30)
  {
    sub_191CC6288();
    sub_191C1C284(&qword_1EADCAE38, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_191CC6FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCAE30);
    }
  }
}

void sub_191C1BF5C(uint64_t a1)
{
  if (!qword_1EADCAE48)
  {
    sub_191CC5E68();
    sub_191C1C284(&qword_1EADCAE50, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = sub_191CC6C68();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCAE48);
    }
  }
}

void sub_191C1BFF0(uint64_t a1)
{
  if (!qword_1EADCAE60)
  {
    sub_191CC5E48();
    sub_191C1C284(&qword_1EADCAE68, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    v1 = sub_191CC7108();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCAE60);
    }
  }
}

unint64_t sub_191C1C084()
{
  result = qword_1EADCAE80;
  if (!qword_1EADCAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE80);
  }

  return result;
}

uint64_t sub_191C1C0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_191C1C138()
{
  result = qword_1EADCAEA8;
  if (!qword_1EADCAEA8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCAEA8);
  }

  return result;
}

unint64_t sub_191C1C19C()
{
  result = qword_1EADCAEB0;
  if (!qword_1EADCAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAEB0);
  }

  return result;
}

void sub_191C1C1F0(uint64_t a1)
{
  if (!qword_1EADCAEB8)
  {
    sub_191CC75D8();
    sub_191C1C284(&qword_1EADCAEC0, MEMORY[0x1E696A1C0], MEMORY[0x1E696A1C8]);
    v1 = sub_191CC6FA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCAEB8);
    }
  }
}

uint64_t sub_191C1C284(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_191C1C2CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t dispatch thunk of HKAsyncQuery.result(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_191BFD978;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_191C1C4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a4 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  (*(v13 + 16))(v16, a2, a4);
  return a7(v18, v16, a3, a4, a5, a6);
}

uint64_t sub_191C1C664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(char *, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  (*(v12 + 16))(v15, a1, a3);
  return a6(v17, v15, a2, a3, a4, a5);
}

uint64_t ModelPair.first.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ModelPair.second.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ModelPair.init(first:second:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_191C1C8B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6F636573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_191C1C97C(char a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](a1 & 1);
  return sub_191CC7508();
}

uint64_t sub_191C1C9C4(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_191C1CA28(uint64_t a1)
{
  sub_191CC74C8();
  sub_19198EC0C(v3, *v1);
  return sub_191CC7508();
}

uint64_t sub_191C1CA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C1C8B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C1CAB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_191C0329C();
  *a1 = result;
  return result;
}

uint64_t sub_191C1CADC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C1CB30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ModelPair<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a6;
  v25 = a4;
  v8 = *(a2 + 24);
  v9 = *(a2 + 16);
  v23 = v8;
  type metadata accessor for ModelPair.CodingKeys(255, v9, v8, a4);
  swift_getWitnessTable();
  v10 = sub_191CC7378();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = *v6;
  v22 = v6[1];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_0(v15, v14);

  sub_191CC7548();
  v31 = v13;
  v30 = 0;
  sub_191CC6978();
  v29 = v25;
  swift_getWitnessTable();
  v18 = v27;
  sub_191CC7348();
  if (v18)
  {

    return (*(v26 + 8))(v12, v17);
  }

  else
  {
    v20 = v26;

    v31 = v22;
    v30 = 1;
    sub_191CC6978();
    v28 = v24;
    swift_getWitnessTable();
    sub_191CC7348();
    return (*(v20 + 8))(v12, v17);
  }
}

uint64_t ModelPair<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v20 = a5;
  v21 = a4;
  v18 = a6;
  type metadata accessor for ModelPair.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v22 = sub_191CC72A8();
  v19 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7528();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = a1;
  v12 = v19;
  v11 = v20;
  sub_191CC6978();
  v25 = 0;
  v24 = v21;
  swift_getWitnessTable();
  v13 = v22;
  sub_191CC7268();
  v14 = v26;
  sub_191CC6978();
  v25 = 1;
  v23 = v11;
  swift_getWitnessTable();
  sub_191CC7268();
  (*(v12 + 8))(v9, v13);
  v15 = v26;
  v16 = v18;
  *v18 = v14;
  v16[1] = v15;

  __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_191C1D10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C1D1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v7, a1, a4);

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_191C1D248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 - 8) + 32))(*(*(a2 + 64) + 40), a1);

  return swift_continuation_throwingResume();
}

uint64_t sub_191C1D2C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Descriptor = type metadata accessor for HKAnchoredObjectQueryDescriptor(0, *(a3 + a4 - 8), a3, a4);

  return HKAnchoredObjectQueryDescriptor.predicates.setter(v5, Descriptor);
}

uint64_t HKAnchoredObjectQueryDescriptor.predicates.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;

  return sub_191C1D364(a2);
}

uint64_t sub_191C1D364(uint64_t a1)
{
  v9 = *(v1 + 8);
  v3 = *(v1 + 8);

  v4 = v3;
  sub_191BFB17C(a1, v5, v6, v7);
}

uint64_t *(*HKAnchoredObjectQueryDescriptor.predicates.modify(void *a1, uint64_t a2))(uint64_t *result, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  return sub_191C1D428;
}

uint64_t *sub_191C1D428(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_191C1D364(*result);
  }

  return result;
}

void *HKAnchoredObjectQueryDescriptor.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HKAnchoredObjectQueryDescriptor.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t HKAnchoredObjectQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
}

__n128 HKAnchoredObjectQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[2] = v4;
  v1[3].n128_u64[0] = v2;
  return result;
}

uint64_t HKAnchoredObjectQueryDescriptor.init(predicates:anchor:limit:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 48) = -1;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  Descriptor = type metadata accessor for HKAnchoredObjectQueryDescriptor(0, a5, a3, a4);

  v8 = a2;
  sub_191BFB17C(Descriptor, v9, v10, v11);
}

uint64_t HKAnchoredObjectQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  v5 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = *(v3 + 48);
  *(v4 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C1D698, 0, 0);
}

uint64_t sub_191C1D698()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = swift_task_alloc();
  v0[12] = v3;
  v4 = *(v1 + 16);
  v3[2] = v4;
  v3[3] = v0 + 2;
  v3[4] = v2;
  v5 = swift_task_alloc();
  v0[13] = v5;
  v8 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(0, v4, v6, v7);
  *v5 = v0;
  v5[1] = sub_191C1D7A0;
  v9 = v0[9];

  return (sub_191BFBCE8)(v9, 0, 0, sub_191C1DB4C, v3, v8);
}

uint64_t sub_191C1D7A0()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C1D8DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_191C1D8DC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_191C1D940(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*(a2 + 24))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a2 + 16);
  }

  sub_191BFAE6C(0, &qword_1EADCA8C8, off_1E73753D8);
  sub_191C03C1C(*a2, a4, v9, v10);
  v11 = *(a2 + 8);
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a3;
  v12[4] = a1;
  v13 = objc_allocWithZone(HKAnchoredObjectQuery);
  v14 = a3;
  v15 = sub_191CC68D8();

  v24 = sub_191C1F0D0;
  v25 = v12;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v22 = sub_191C1EAD0;
  v23 = &block_descriptor_44;
  v16 = _Block_copy(&aBlock);
  v17 = [v13 initWithQueryDescriptors:v15 anchor:v11 limit:v8 resultsHandler:v16];

  _Block_release(v16);

  aBlock = *(a2 + 32);
  v22 = *(a2 + 48);
  v18 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    sub_191BFC340(&aBlock, v20);
    v18 = sub_191CC6778();
  }

  v19 = v22;
  [v17 setDebugIdentifier_];

  [v17 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  [v14 executeQuery_];
}

uint64_t sub_191C1DB70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, id a6, uint64_t a7, uint64_t a8)
{
  [a6 stopQuery_];
  if (a2 && a4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v16 = a3;
    }

    v28[0] = a2;
    v28[1] = v16;
    v28[2] = a4;
    v17 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(0, a8, v14, v15);
    sub_191BF92E0();
    v18 = *(*(a7 + 64) + 40);
    v19 = *(*(v17 - 8) + 32);

    v20 = a4;

    v19(v18, v28, v17);
    return swift_continuation_throwingResume();
  }

  else
  {
    if (a5)
    {
      v22 = a5;
    }

    else
    {
      type metadata accessor for HKError(0);
      v28[3] = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v22 = v28[0];
    }

    v28[0] = v22;
    v23 = a5;
    v26 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(0, a8, v24, v25);
    v27 = sub_191BF92E0();
    return sub_191C1D1B4(v28, a7, v26, v27, MEMORY[0x1E69E7288]);
  }
}

uint64_t sub_191C1DD08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_191BFF960;

  return HKAnchoredObjectQueryDescriptor.result(for:)(a1, a2, a3);
}

uint64_t HKAnchoredObjectQueryDescriptor.Results.Iterator.next()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a2 + 16), v6, v7);
  sub_191BF92E0();
  v8 = sub_191CC6AD8();
  *v5 = v2;
  v5[1] = sub_191BFD978;

  return MEMORY[0x1EEE6DB98](a1, v8);
}

uint64_t sub_191C1DE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, a2, a3, a4);
  sub_191BF92E0();
  v7 = sub_191CC6AD8();
  v8 = *(*(v7 - 8) + 32);

  return v8(a5, a1, v7);
}

uint64_t sub_191C1DF2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191BFF960;

  return HKAnchoredObjectQueryDescriptor.Results.Iterator.next()(a1, a2);
}

uint64_t sub_191C1DFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_191C1E0A8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_191C1E0A8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t HKAnchoredObjectQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, v5, a2, a3);
  sub_191BF92E0();
  v7 = sub_191CC6AD8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v12 = type metadata accessor for HKQueryAsyncStream(0, v6, v10, v11);
  HKQueryAsyncStream.makeAsyncIterator()(v12);
  return sub_191C1DE94(v9, v5, v13, v14, a4);
}

uint64_t sub_191C1E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, a2, a3, a4);
  v10 = type metadata accessor for HKQueryAsyncStream(0, v7, v8, v9);
  v11 = *(*(v10 - 8) + 32);

  return v11(a5, a1, v10);
}

uint64_t sub_191C1E2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  HKAnchoredObjectQueryDescriptor.Results.makeAsyncIterator()(a1, a2, a3, a4);
  v6 = *(*(a1 - 8) + 8);

  return v6(v4, a1);
}

uint64_t HKAnchoredObjectQueryDescriptor.results(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 16);
  v10 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, v9, a3, a4);
  v13 = type metadata accessor for HKQueryAsyncStream(0, v10, v11, v12);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24[-v14 - 8];
  v16 = *(v5 + 16);
  v25[0] = *v5;
  v25[1] = v16;
  v25[2] = *(v5 + 32);
  v26 = *(v5 + 48);
  v17 = swift_allocObject();
  *(v17 + 16) = v9;
  v18 = *(v5 + 16);
  *(v17 + 24) = *v5;
  *(v17 + 40) = v18;
  *(v17 + 56) = *(v5 + 32);
  *(v17 + 72) = *(v5 + 48);
  v19 = a1;
  (*(*(a2 - 8) + 16))(v24, v25, a2);
  HKQueryAsyncStream.init(healthStore:queryBuilder:)(v19, sub_191C1E898, v17, v10);
  return sub_191C1E27C(v15, v9, v20, v21, a5);
}

id sub_191C1E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, a3, a3, a4);
  sub_191BF92E0();
  v31 = sub_191CC6AA8();
  v7 = *(v31 - 8);
  v37 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v30 - v8;
  v32 = sub_191BFAE6C(0, &qword_1EADCA8C8, off_1E73753D8);
  v10 = *a2;
  v36 = a3;
  sub_191C03C1C(v10, a3, v11, v12);
  v40 = a2;
  v13 = *(a2 + 16);
  if (*(a2 + 24))
  {
    v13 = 0;
  }

  v33 = *(a2 + 8);
  v34 = v13;
  v38 = *(v7 + 16);
  v14 = v31;
  v38(v9, a1, v31);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  v35 = *(v7 + 32);
  v17 = v14;
  v35(v16 + v15, v9, v14);
  v18 = objc_allocWithZone(HKAnchoredObjectQuery);
  v19 = sub_191CC68D8();

  v45 = sub_191C1EF2C;
  v46 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v43 = sub_191C1EAD0;
  v44 = &block_descriptor_10;
  v20 = _Block_copy(&aBlock);
  v21 = [v18 initWithQueryDescriptors:v19 anchor:v33 limit:v34 resultsHandler:v20];

  _Block_release(v20);

  v38(v9, v39, v17);
  v22 = swift_allocObject();
  v23 = v35;
  *(v22 + 16) = v36;
  v23(v22 + v15, v9, v17);
  v45 = sub_191C1F0E4;
  v46 = v22;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v43 = sub_191C1EAD0;
  v44 = &block_descriptor_38_0;
  v24 = _Block_copy(&aBlock);

  [v21 setUpdateHandler_];
  _Block_release(v24);
  aBlock = *(v40 + 32);
  v43 = *(v40 + 48);
  v25 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v26 = v21;
    sub_191BFC340(&aBlock, v41);
    v25 = sub_191CC6778();
  }

  else
  {
    v27 = v21;
  }

  v28 = v43;
  [v21 setDebugIdentifier_];

  [v21 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  return v21;
}

uint64_t sub_191C1E8DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, a7, a3, a4);
  sub_191BF92E0();
  v11 = sub_191CC6A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  if (a2 && a4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      v15 = a3;
    }

    v20[0] = a2;
    v20[1] = v15;
    v20[2] = a4;
    sub_191CC6AA8();

    v16 = a4;

    sub_191CC6A88();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v18 = a5;
    if (!a5)
    {
      type metadata accessor for HKError(0);
      v20[3] = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v18 = v20[0];
    }

    v20[0] = v18;
    v19 = a5;
    sub_191CC6AA8();
    return sub_191CC6A98();
  }
}

uint64_t sub_191C1EAD0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCA8D0, off_1E7375440);
    v9 = sub_191CC68E8();
  }

  if (a4)
  {
    sub_191BFAE6C(0, &qword_1EADCB1E8, off_1E7374DF0);
    a4 = sub_191CC68E8();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);
}

uint64_t sub_191C1EBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_191C1EC44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_191C1EC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C1ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C1ED14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_191C1ED5C(uint64_t result, int a2, int a3)
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

uint64_t sub_191C1ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a1 + 16), a3, a4);
  result = type metadata accessor for HKQueryAsyncStream(319, v4, v5, v6);
  if (v8 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C1EE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(a1 + 16), a3, a4);
  sub_191BF92E0();
  result = sub_191CC6AD8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_30Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, *(v4 + 16), a3, a4);
  sub_191BF92E0();
  v5 = sub_191CC6AA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(v6 + 64);
  (*(v6 + 8))(v4 + v8, v5);

  return MEMORY[0x1EEE6BDD0](v4, v8 + v9, v7 | 7);
}

uint64_t sub_191C1EFF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v11 = *(v5 + 16);
  type metadata accessor for HKAnchoredObjectQueryDescriptor.Result(255, v11, a3, a4);
  sub_191BF92E0();
  v12 = *(sub_191CC6AA8() - 8);
  v13 = v5 + ((*(v12 + 80) + 24) & ~*(v12 + 80));

  return sub_191C1E8DC(a1, a2, a3, a4, a5, v13, v11);
}

uint64_t HKAttachment.AsyncBytes.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong size];

  sub_191C1F98C(v2, v9);
  v6 = swift_allocObject();
  sub_191C1F9C4(v9, v6 + 16);
  type metadata accessor for _AsyncBytesBuffer.Storage();
  result = swift_allocObject();
  *(result + 48) = 0;
  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    *(result + 16) = &unk_191DD2568;
    *(result + 24) = v6;
    result = swift_slowAlloc();
    *(v8 + 32) = result;
    *(v8 + 40) = result + v5;
    *a1 = v8;
    a1[1] = result;
    a1[2] = result;
    a1[3] = 0;
  }

  return result;
}

uint64_t sub_191C1F1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a3;
  v4[31] = a4;
  v4[28] = a1;
  v4[29] = a2;
  sub_191C1FF28(0);
  v4[32] = v5;
  v4[33] = *(v5 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C1F2C0, 0, 0);
}

uint64_t sub_191C1F2C0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[32];
  v7 = v1[31];
  v13 = v1[30];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1[35] = Strong;
  v9 = swift_unknownObjectUnownedLoadStrong();
  v1[36] = v9;
  v12 = *(v7 + 16);
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_191C1F4CC;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v4 + 32))(boxed_opaque_existential_0, v5, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C1FAAC;
  v1[13] = &block_descriptor_11;
  [Strong getDataChunkForAttachment:v9 chunkSize:v12 offset:v13 completion:?];
  (*(v4 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_191C1F4CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_191C1F8D8;
  }

  else
  {
    v2 = sub_191C1F608;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C1F608()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v3)
    {
      *(v0 + 192) = v0 + 304;
      *(v0 + 304) = v2;
      *(v0 + 312) = v1;
      v4 = BYTE6(v1);
      *(v0 + 314) = BYTE2(v1);
      *(v0 + 315) = BYTE3(v1);
      *(v0 + 316) = BYTE4(v1);
      *(v0 + 317) = BYTE5(v1);
      *(v0 + 200) = v0 + 304 + BYTE6(v1);
      sub_191C1FFA8();
LABEL_30:
      sub_191CC5C78();
      sub_191C049D8(v2, v1);
      goto LABEL_32;
    }

    if (v2 >> 32 >= v2)
    {
      v12 = sub_191CC5D08();
      if (!v12)
      {
LABEL_21:
        v14 = sub_191CC5D18();
        if (v14 >= (v2 >> 32) - v2)
        {
          v15 = (v2 >> 32) - v2;
        }

        else
        {
          v15 = v14;
        }

        v16 = v15 + v12;
        if (!v12)
        {
          v16 = 0;
        }

        *(v0 + 176) = v12;
        *(v0 + 184) = v16;
        if (v12)
        {
          v4 = v15;
        }

        else
        {
          v4 = 0;
        }

LABEL_29:
        sub_191C1FFA8();
        goto LABEL_30;
      }

      v13 = sub_191CC5D28();
      if (!__OFSUB__(v2, v13))
      {
        v12 += v2 - v13;
        goto LABEL_21;
      }

LABEL_38:
      __break(1u);
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v3 == 2)
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = sub_191CC5D08();
    if (v7)
    {
      v8 = sub_191CC5D28();
      if (__OFSUB__(v5, v8))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v7 += v5 - v8;
    }

    if (!__OFSUB__(v6, v5))
    {
      v9 = sub_191CC5D18();
      if (v9 >= v6 - v5)
      {
        v10 = v6 - v5;
      }

      else
      {
        v10 = v9;
      }

      v11 = v10 + v7;
      if (!v7)
      {
        v11 = 0;
      }

      *(v0 + 160) = v7;
      *(v0 + 168) = v11;
      if (v7)
      {
        v4 = v10;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *(v0 + 208) = v0 + 318;
  *(v0 + 318) = 0;
  *(v0 + 324) = 0;
  *(v0 + 216) = v0 + 318;
  sub_191C1FFA8();
  sub_191CC5C78();
  sub_191C049D8(v2, v1);
  v4 = 0;
LABEL_32:
  v17 = *(v0 + 288);

  v18 = *(v0 + 8);

  return v18(v4);
}

uint64_t sub_191C1F8D8()
{
  v1 = v0[36];
  v2 = v0[35];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_191C1F9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_191C1FFFC;

  return sub_191C1F1D0(a1, a2, a3, v3 + 16);
}

void sub_191C1FAAC(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_191C1FF28(0);
    v5 = a3;
    sub_191CC69D8();
  }

  else
  {
    v6 = a2;
    sub_191CC6048();

    sub_191C1FF28(0);
    sub_191CC69E8();
  }
}

uint64_t sub_191C1FB58@<X0>(uint64_t *a1@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong size];

  sub_191C1F98C(v1, v14);
  v5 = swift_allocObject();
  sub_191C1F9C4(v14, v5 + 16);
  v6 = _s9HealthKit17_AsyncBytesBufferV8capacity12readFunctionACSi_SiSw_SitYaKctcfC_0(v4, &unk_191DD25F0, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_191C1FEF8(v1);
  *a1 = v6;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  return result;
}

unint64_t sub_191C1FC24()
{
  result = qword_1EADCB1F0;
  if (!qword_1EADCB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB1F0);
  }

  return result;
}

uint64_t sub_191C1FC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 24))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_191C1FCBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectUnownedDestroy();
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_191C1FD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_191C1FDFC;

  return sub_191C1F1D0(a1, a2, a3, v3 + 16);
}

uint64_t sub_191C1FDFC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_191C1FF28(uint64_t a1)
{
  if (!qword_1EADCB1F8)
  {
    sub_191BF92E0();
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB1F8);
    }
  }
}

unint64_t sub_191C1FFA8()
{
  result = qword_1EADCB200;
  if (!qword_1EADCB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB200);
  }

  return result;
}

uint64_t HKDatabase.Pruning.Show.Configuration.init(pruningUsingRestrictionPredicatesEnabled:newStoreAnchorRelevanceInterval:frozenAnchorRelevanceInterval:deletedSampleAvailableDays:isRecentRecordRollingEnabled:localSyncIdentity:transactionObjectLimit:operationObjectLimit:databaseAssertionTimeout:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>)
{
  *a7 = result;
  *(a7 + 8) = a8;
  *(a7 + 16) = a9;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  *(a7 + 64) = a10;
  return result;
}

unint64_t sub_191C201D0(unsigned __int8 a1)
{
  v1 = 0xD000000000000011;
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000001DLL;
    if (a1 != 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD00000000000001FLL;
    if (!a1)
    {
      v6 = 0xD000000000000028;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000014;
    if (a1 != 7)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    if (a1 == 4)
    {
      v1 = 0xD00000000000001CLL;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C202DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C30B80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C20304(uint64_t a1)
{
  v2 = sub_191C20630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C20340(uint64_t a1)
{
  v2 = sub_191C20630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.Configuration.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB208, sub_191C20630, &_s14descr1F05F1AE1C7PruningO4ShowV13ConfigurationV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  v16 = *(v1 + 24);
  v15 = *(v1 + 32);
  v7 = *(v1 + 40);
  v14[1] = *(v1 + 48);
  v14[2] = v7;
  v8 = a1[3];
  v9 = a1;
  v11 = v10;
  __swift_project_boxed_opaque_existential_0(v9, v8);
  sub_191C20630();
  sub_191CC7548();
  v26 = 0;
  v12 = v17;
  sub_191CC7318();
  if (!v12)
  {
    v25 = 1;
    sub_191CC7328();
    v24 = 2;
    sub_191CC7328();
    v23 = 3;
    sub_191CC7338();
    v22 = 4;
    sub_191CC7318();
    v21 = 5;
    sub_191CC7338();
    v20 = 6;
    sub_191CC7338();
    v19 = 7;
    sub_191CC7338();
    v18 = 8;
    sub_191CC7328();
  }

  return (*(v4 + 8))(v6, v11);
}

unint64_t sub_191C20630()
{
  result = qword_1EADCB210;
  if (!qword_1EADCB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB210);
  }

  return result;
}

uint64_t HKDatabase.Pruning.Show.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C2E288(0, &qword_1EADCB218, sub_191C20630, &_s14descr1F05F1AE1C7PruningO4ShowV13ConfigurationV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v10);
  sub_191C20630();
  sub_191CC7528();
  if (!v2)
  {
    v11 = v7;
    v37 = 0;
    v12 = sub_191CC7238();
    v36 = 1;
    sub_191CC7248();
    v14 = v13;
    v35 = 2;
    sub_191CC7248();
    v16 = v15;
    v34 = 3;
    v17 = sub_191CC7258();
    v33 = 4;
    v27 = sub_191CC7238();
    v32 = 5;
    v26 = sub_191CC7258();
    v31 = 6;
    v25 = sub_191CC7258();
    v30 = 7;
    v24 = sub_191CC7258();
    v29 = 8;
    sub_191CC7248();
    v20 = v19;
    v21 = v27 & 1;
    (*(v11 + 8))(v9, v6);
    *a2 = v12 & 1;
    *(a2 + 8) = v14;
    *(a2 + 16) = v16;
    *(a2 + 24) = v17;
    *(a2 + 32) = v21;
    v22 = v25;
    *(a2 + 40) = v26;
    *(a2 + 48) = v22;
    *(a2 + 56) = v24;
    *(a2 + 64) = v20;
  }

  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.instanceDiscriminator.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0) + 28));

  return v1;
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.instanceDiscriminator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.init(identifier:hardwareIdentifier:databaseIdentifier:instanceDiscriminator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  v11 = type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0);
  v12 = v11[5];
  v13 = sub_191CC61A8();
  v14 = *(*(v13 - 8) + 32);
  v14(&a6[v12], a2, v13);
  result = (v14)(&a6[v11[6]], a3, v13);
  v16 = &a6[v11[7]];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

unint64_t sub_191C20CC0()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_191C20D48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C30E50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C20D70(uint64_t a1)
{
  v2 = sub_191C2103C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C20DAC(uint64_t a1)
{
  v2 = sub_191C2103C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB220, sub_191C2103C, &_s14descr1F05F1AE1C7PruningO4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2103C();
  sub_191CC7548();
  v13 = 0;
  sub_191CC7338();
  if (!v1)
  {
    type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0);
    v12 = 1;
    sub_191CC61A8();
    sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_191CC7348();
    v11 = 2;
    sub_191CC7348();
    v10 = 3;
    sub_191CC7308();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_191C2103C()
{
  result = qword_1EADCB228;
  if (!qword_1EADCB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB228);
  }

  return result;
}

uint64_t HKDatabase.Pruning.Show.SyncIdentity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v34 = sub_191CC61A8();
  v32 = *(v34 - 8);
  v3 = MEMORY[0x1EEE9AC00](v34);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - v5;
  sub_191C2E288(0, &qword_1EADCB230, sub_191C2103C, &_s14descr1F05F1AE1C7PruningO4ShowV12SyncIdentityV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v35 = v7;
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2103C();
  v36 = v9;
  v13 = v37;
  sub_191CC7528();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v10;
  v15 = v33;
  v14 = v34;
  v29 = v12;
  v41 = 0;
  v16 = v35;
  v17 = sub_191CC7258();
  v18 = v29;
  *v29 = v17;
  v40 = 1;
  sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_191CC7268();
  v19 = v18 + v37[5];
  v28 = *(v32 + 32);
  v28(v19, v6, v14);
  v39 = 2;
  v20 = v31;
  sub_191CC7268();
  v28(v29 + v37[6], v20, v14);
  v38 = 3;
  v21 = sub_191CC7228();
  v23 = v22;
  (*(v15 + 8))(v36, v16);
  v25 = v29;
  v24 = v30;
  v26 = (v29 + v37[7]);
  *v26 = v21;
  v26[1] = v23;
  sub_191C2E0F4(v25, v24, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_191C3241C(v25, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity);
}

uint64_t sub_191C2153C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.schemaIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.schemaIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.init(entityIdentifier:schemaIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t static HKDatabase.Pruning.Show.SyncEntityIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3)
    {
      if (v4)
      {
        v5 = a1[1] == a2[1] && v3 == v4;
        if (v5 || (sub_191CC73E8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_191C21714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000191D2C160 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000191D2C180 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_191CC73E8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_191C217FC(uint64_t a1)
{
  v2 = sub_191C2BB6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C21838(uint64_t a1)
{
  v2 = sub_191C2BB6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB238, sub_191C2BB6C, &_s14descr1F05F1AE1C7PruningO4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 8);
  v11[1] = *(v1 + 16);
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2BB6C();
  sub_191CC7548();
  v13 = 0;
  v9 = v11[3];
  sub_191CC7338();
  if (!v9)
  {
    v12 = 1;
    sub_191CC72C8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x193B02C70](*v1);
  if (!v2)
  {
    return sub_191CC74E8();
  }

  sub_191CC74E8();

  return sub_191CC67E8();
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  return sub_191CC7508();
}

uint64_t HKDatabase.Pruning.Show.SyncEntityIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_191C2E288(0, &qword_1EADCB248, sub_191C2BB6C, &_s14descr1F05F1AE1C7PruningO4ShowV20SyncEntityIdentifierV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2BB6C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v16;
  v18 = 0;
  v10 = sub_191CC7258();
  v17 = 1;
  v11 = sub_191CC71E8();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_191C21D2C()
{
  v1 = *v0;
  v2 = v0[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  return sub_191CC7508();
}

uint64_t sub_191C21DAC(uint64_t a1)
{
  v2 = v1[2];
  MEMORY[0x193B02C70](*v1);
  if (!v2)
  {
    return sub_191CC74E8();
  }

  sub_191CC74E8();

  return sub_191CC67E8();
}

uint64_t sub_191C21E24(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  sub_191CC74C8();
  MEMORY[0x193B02C70](v2);
  sub_191CC74E8();
  if (v3)
  {
    sub_191CC67E8();
  }

  return sub_191CC7508();
}

uint64_t sub_191C21EA0(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3)
    {
      if (v4)
      {
        v5 = a1[1] == a2[1] && v3 == v4;
        if (v5 || (sub_191CC73E8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.maximumAnchor.setter(uint64_t a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 24);

  return sub_191C18FCC(v3, a1);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.startDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 24);

  return sub_191C2BBE0(a1, v3);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.excludedSyncIdentities.getter()
{
  type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.excludedSyncIdentities.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(storeId:maximumAnchor:startDate:endDate:excludedSyncIdentities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v11 = v10[6];
  v12 = sub_191CC6148();
  v13 = *(*(v12 - 8) + 56);
  v13(a6 + v11, 1, 1, v12);
  v14 = v10[7];
  v13(a6 + v14, 1, 1, v12);
  v15 = v10[8];
  v16 = sub_191CC61A8();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  *(a6 + v10[5]) = a2;
  sub_191C2BBE0(a3, a6 + v11);
  result = sub_191C2BBE0(a4, a6 + v14);
  *(a6 + v15) = a5;
  return result;
}

uint64_t sub_191C22320(uint64_t a1)
{
  v2 = sub_191C2C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2235C(uint64_t a1)
{
  v2 = sub_191C2C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C22398()
{
  v1 = *v0;
  v2 = 0x65726F7473;
  v3 = 0x65746E4965746164;
  v4 = 0x726F68636E61;
  if (v1 != 3)
  {
    v4 = 0x686374616DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E656449636E7973;
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

uint64_t sub_191C22438@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C30FC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C22460(uint64_t a1)
{
  v2 = sub_191C2CA60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2249C(uint64_t a1)
{
  v2 = sub_191C2CA60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C224D8(uint64_t a1)
{
  v2 = sub_191C2C944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C22514(uint64_t a1)
{
  v2 = sub_191C2C944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C22550(uint64_t a1)
{
  v2 = sub_191C2C89C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2258C(uint64_t a1)
{
  v2 = sub_191C2C89C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C225C8(uint64_t a1)
{
  v2 = sub_191C2C9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C22604(uint64_t a1)
{
  v2 = sub_191C2C9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s9HealthKit10AnyCodableV13DecodingErrorO9hashValueSivg_0()
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](0);
  return sub_191CC7508();
}

uint64_t sub_191C22684(uint64_t a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](0);
  return sub_191CC7508();
}

uint64_t sub_191C226C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C22744(uint64_t a1)
{
  v2 = sub_191C2C998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C22780(uint64_t a1)
{
  v2 = sub_191C2C998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  sub_191C2E288(0, &qword_1EADCB250, sub_191C2C89C, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15MatchCodingKeysON, MEMORY[0x1E69E6F58]);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v47 - v4;
  sub_191C2E288(0, &qword_1EADCB260, sub_191C2C8F0, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO16AnchorCodingKeysON, v2);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v47 - v6;
  sub_191C2E288(0, &qword_1EADCB270, sub_191C2C944, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22DateIntervalCodingKeysON, v2);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v47 - v8;
  sub_191C2E288(0, &qword_1EADCB280, sub_191C2C998, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22SyncIdentityCodingKeysON, v2);
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v47 - v10;
  sub_191C2E288(0, &qword_1EADCB290, sub_191C2C9EC, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15StoreCodingKeysON, v2);
  v61 = *(v11 - 8);
  v62 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v47 - v12;
  v67 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v47 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v48 = &v47 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v47 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v47 - v22;
  v24 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB2A0, sub_191C2CA60, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO10CodingKeysON, v2);
  v69 = *(v27 - 8);
  v70 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v47 - v28;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CA60();
  v68 = v29;
  sub_191CC7548();
  sub_191C2E0F4(v66, v26, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v37 = v21;
    v38 = v60;
    v39 = v61;
    v40 = v62;
    v41 = v63;
    v43 = v64;
    v42 = v65;
    if (EnumCaseMultiPayload)
    {
      v44 = v37;
      sub_191C2CB70(v26, v37, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v72 = 1;
      sub_191C2C998();
      v33 = v70;
      v34 = v68;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      sub_191CC7348();
      (*(v43 + 8))(v41, v42);
      v23 = v44;
    }

    else
    {
      sub_191C2CB70(v26, v23, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v71 = 0;
      sub_191C2C9EC();
      v33 = v70;
      v34 = v68;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      sub_191CC7348();
      (*(v39 + 8))(v38, v40);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v31 = v48;
      sub_191C2CB70(v26, v48, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v73 = 2;
      sub_191C2C944();
      v32 = v51;
      v33 = v70;
      v34 = v68;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v35 = v53;
      sub_191CC7348();
      v36 = v52;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v31 = v49;
      sub_191C2CB70(v26, v49, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v74 = 3;
      sub_191C2C8F0();
      v32 = v54;
      v33 = v70;
      v34 = v68;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v35 = v56;
      sub_191CC7348();
      v36 = v55;
    }

    else
    {
      v31 = v50;
      sub_191C2CB70(v26, v50, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v75 = 4;
      sub_191C2C89C();
      v32 = v57;
      v33 = v70;
      v34 = v68;
      sub_191CC72B8();
      sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v35 = v59;
      sub_191CC7348();
      v36 = v58;
    }

    (*(v36 + 8))(v32, v35);
    v23 = v31;
  }

  v45 = v69;
  sub_191C3241C(v23, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
  return (*(v45 + 8))(v34, v33);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C2E288(0, &qword_1EADCB2B8, sub_191C2C89C, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15MatchCodingKeysON, MEMORY[0x1E69E6F48]);
  v82 = v4;
  v85 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v70 - v5;
  sub_191C2E288(0, &qword_1EADCB2C0, sub_191C2C8F0, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO16AnchorCodingKeysON, v3);
  v83 = *(v6 - 8);
  v84 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v70 - v7;
  sub_191C2E288(0, &qword_1EADCB2C8, sub_191C2C944, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22DateIntervalCodingKeysON, v3);
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v70 - v9;
  sub_191C2E288(0, &qword_1EADCB2D0, sub_191C2C998, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO22SyncIdentityCodingKeysON, v3);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v90 = &v70 - v12;
  sub_191C2E288(0, &qword_1EADCB2D8, sub_191C2C9EC, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO15StoreCodingKeysON, v3);
  v76 = *(v13 - 8);
  v77 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v70 - v14;
  sub_191C2E288(0, &qword_1EADCB2E0, sub_191C2CA60, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV14ClassificationO10CodingKeysON, v3);
  v94 = v15;
  v92 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  v88 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(0);
  v18 = MEMORY[0x1EEE9AC00](v88);
  v75 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v70 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v70 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v70 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v70 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v70 - v32;
  v34 = a1[3];
  v96 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v34);
  sub_191C2CA60();
  v35 = v95;
  sub_191CC7528();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_0(v96);
  }

  v70 = v28;
  v71 = v25;
  v72 = v31;
  v73 = v22;
  v95 = 0;
  v36 = v89;
  v37 = v90;
  v38 = v91;
  v74 = v33;
  v39 = v93;
  v40 = v94;
  v41 = sub_191CC7298();
  if (*(v41 + 16) != 1 || (v42 = *(v41 + 32), v42 == 5))
  {
    v48 = sub_191CC7028();
    swift_allocError();
    v49 = v17;
    v50 = v40;
    v52 = v51;
    sub_191C2CAB4(0);
    *v52 = v88;
    sub_191CC71D8();
    sub_191CC7008();
    (*(*(v48 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v48);
    swift_willThrow();
    (*(v92 + 8))(v49, v50);
LABEL_10:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v96);
  }

  if (*(v41 + 32) > 1u)
  {
    if (v42 == 2)
    {
      v99 = 2;
      sub_191C2C944();
      v57 = v95;
      sub_191CC71C8();
      if (!v57)
      {
        type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
        sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
        v44 = v71;
        v58 = v81;
        sub_191CC7268();
        v59 = v92;
        v95 = 0;
        (*(v80 + 8))(v38, v58);
        (*(v59 + 8))(v17, v40);
        swift_unknownObjectRelease();
        goto LABEL_24;
      }
    }

    else
    {
      v43 = v95;
      if (v42 == 3)
      {
        v100 = 3;
        sub_191C2C8F0();
        sub_191CC71C8();
        if (!v43)
        {
          type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
          sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
          v44 = v73;
          v45 = v84;
          v46 = v87;
          sub_191CC7268();
          v47 = v92;
          v95 = 0;
          (*(v83 + 8))(v46, v45);
          (*(v47 + 8))(v17, v40);
          swift_unknownObjectRelease();
LABEL_24:
          swift_storeEnumTagMultiPayload();
          v69 = v44;
          v62 = v39;
          v56 = v74;
          goto LABEL_25;
        }
      }

      else
      {
        v101 = 4;
        sub_191C2C89C();
        sub_191CC71C8();
        if (!v43)
        {
          type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
          sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
          v44 = v75;
          v60 = v82;
          v61 = v86;
          sub_191CC7268();
          v95 = 0;
          (*(v85 + 8))(v61, v60);
          (*(v92 + 8))(v17, v40);
          swift_unknownObjectRelease();
          goto LABEL_24;
        }
      }
    }

    (*(v92 + 8))(v17, v40);
    goto LABEL_10;
  }

  if (*(v41 + 32))
  {
    v62 = v39;
    v98 = 1;
    sub_191C2C998();
    v63 = v37;
    v54 = v94;
    v64 = v95;
    sub_191CC71C8();
    v56 = v74;
    if (v64)
    {
      goto LABEL_14;
    }

    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
    sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    v67 = v70;
    v68 = v78;
    sub_191CC7268();
    v95 = 0;
    (*(v79 + 8))(v63, v68);
    (*(v92 + 8))(v17, v94);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v69 = v67;
  }

  else
  {
    v97 = 0;
    sub_191C2C9EC();
    v54 = v94;
    v55 = v95;
    sub_191CC71C8();
    v56 = v74;
    if (v55)
    {
LABEL_14:
      (*(v92 + 8))(v17, v54);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v96);
    }

    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
    sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    v65 = v72;
    v66 = v77;
    sub_191CC7268();
    v95 = 0;
    (*(v76 + 8))(v36, v66);
    (*(v92 + 8))(v17, v94);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v69 = v65;
    v62 = v93;
  }

LABEL_25:
  sub_191C2CB70(v69, v56, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  sub_191C2CB70(v56, v62, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  return __swift_destroy_boxed_opaque_existential_0(v96);
}

uint64_t sub_191C23F60()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 17;
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

uint64_t sub_191C23F94()
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

uint64_t sub_191C23FC8()
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

uint64_t sub_191C24034()
{
  v1 = *v0;
  v2 = 0x644965726F7473;
  v3 = 0x7461447472617473;
  v4 = 0x65746144646E65;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x416D756D6978616DLL;
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

uint64_t sub_191C240E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C31174(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C2410C(uint64_t a1)
{
  v2 = sub_191C2CBD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C24148(uint64_t a1)
{
  v2 = sub_191C2CBD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB300, sub_191C2CBD8, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CBD8();
  sub_191CC7548();
  v17 = 0;
  sub_191CC61A8();
  sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_191CC7348();
  if (!v2)
  {
    v10 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
    v16 = 1;
    sub_191CC7338();
    v15 = 2;
    sub_191CC6148();
    sub_191C2153C(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC72F8();
    v14 = 3;
    sub_191CC72F8();
    v12[1] = *(v3 + *(v10 + 32));
    v13 = 4;
    sub_191C2CC2C();
    sub_191C2CD10(&qword_1EADCB320, MEMORY[0x1E69E6538], MEMORY[0x1E69E64F0]);
    sub_191CC72F8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t HKDatabase.Pruning.Show.PruningRestrictionPredicate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v27 - v6;
  v33 = sub_191CC61A8();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB328, sub_191C2CBD8, &_s14descr1F05F1AE1C7PruningO4ShowV27PruningRestrictionPredicateV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v36 = v8;
  v31 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 24);
  v16 = sub_191CC6148();
  v17 = *(*(v16 - 8) + 56);
  v39 = v15;
  v17(&v14[v15], 1, 1, v16);
  v38 = *(v11 + 28);
  v17(&v14[v38], 1, 1, v16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CBD8();
  v35 = v10;
  v18 = v37;
  sub_191CC7528();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v23 = v38;
    sub_191C2CC84(&v14[v39]);
    return sub_191C2CC84(&v14[v23]);
  }

  else
  {
    v19 = v31;
    v20 = v32;
    v37 = v11;
    v21 = a1;
    v45 = 0;
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v22 = v33;
    sub_191CC7268();
    (*(v30 + 32))(v14, v34, v22);
    v44 = 1;
    *&v14[*(v37 + 20)] = sub_191CC7258();
    v43 = 2;
    sub_191C2153C(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_191CC7218();
    sub_191C2BBE0(v20, &v14[v39]);
    v42 = 3;
    v24 = v29;
    sub_191CC7218();
    sub_191C2BBE0(v24, &v14[v38]);
    sub_191C2CC2C();
    v41 = 4;
    sub_191C2CD10(&qword_1EADCB338, MEMORY[0x1E69E6560], MEMORY[0x1E69E6510]);
    sub_191CC7218();
    v25 = *(v37 + 32);
    (*(v19 + 8))(v35, v36);
    *&v14[v25] = v40;
    sub_191C2E0F4(v14, v28, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    __swift_destroy_boxed_opaque_existential_0(v21);
    return sub_191C3241C(v14, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
  }
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV7storeId10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_191CC61A8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV7storeId10Foundation4UUIDVvs_0(uint64_t a1)
{
  v3 = sub_191CC61A8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HKDatabase.Pruning.Show.Store.type.setter(uint64_t a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_191C24C90@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_191C24D48(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = *(a2(0) + 24);
  v7 = a3(0);
  v8 = *(*(v7 - 8) + 40);

  return v8(v3 + v6, a1, v7);
}

uint64_t sub_191C24E48(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 28);

  return sub_191C2BBE0(a1, v4);
}

uint64_t HKDatabase.Pruning.Show.Store.frozenAnchorMap.getter()
{
  type metadata accessor for HKDatabase.Pruning.Show.Store(0);
}

uint64_t HKDatabase.Pruning.Show.Store.frozenAnchorMap.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDatabase.Pruning.Show.Store(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.syncIdentity.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.isSupportedShardType.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.activeEpoch.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 44);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.pendingEpoch.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 48);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.tombstoneEpoch.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Store.init(identifier:type:creationDate:latestFrozenAnchorDate:frozenAnchorMap:syncIdentity:isSupportedShardType:activeEpoch:pendingEpoch:tombstoneEpoch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  v16 = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v17 = v16[7];
  v18 = sub_191CC6148();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = v16[10];
  v21 = a9 + v16[9];
  v22 = a9 + v16[11];
  v23 = a9 + v16[12];
  v24 = a9 + v16[13];
  v25 = sub_191CC61A8();
  (*(*(v25 - 8) + 32))(a9, a1, v25);
  *(a9 + v16[5]) = a2;
  (*(v19 + 32))(a9 + v16[6], a3, v18);
  result = sub_191C2BBE0(a4, a9 + v17);
  *(a9 + v16[8]) = a5;
  *v21 = a6;
  *(v21 + 8) = a7 & 1;
  *(a9 + v20) = a8;
  *v22 = a10;
  *(v22 + 8) = a11 & 1;
  *v23 = a12;
  *(v23 + 8) = a13 & 1;
  *v24 = a14;
  *(v24 + 8) = a15 & 1;
  return result;
}

unint64_t sub_191C2550C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7045657669746361;
    v6 = 0x45676E69646E6570;
    if (a1 != 8)
    {
      v6 = 0x6E6F7473626D6F74;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E656449636E7973;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6E6F697461657263;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0x6E416E657A6F7266;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C25690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C3133C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C256C4(uint64_t a1)
{
  v2 = sub_191C2CD90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C25700(uint64_t a1)
{
  v2 = sub_191C2CD90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.Store.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB340, sub_191C2CD90, &_s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CD90();
  sub_191CC7548();
  LOBYTE(v13) = 0;
  sub_191CC61A8();
  sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_191CC7348();
  if (!v2)
  {
    v10 = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
    LOBYTE(v13) = 1;
    sub_191CC7338();
    LOBYTE(v13) = 2;
    sub_191CC6148();
    sub_191C2153C(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC7348();
    LOBYTE(v13) = 3;
    sub_191CC72F8();
    v13 = *(v3 + *(v10 + 32));
    v12[15] = 4;
    sub_191C2CDE4(0);
    sub_191C2CF00();
    sub_191CC7348();
    LOBYTE(v13) = 5;
    sub_191CC72E8();
    LOBYTE(v13) = 6;
    sub_191CC72D8();
    LOBYTE(v13) = 7;
    sub_191CC72E8();
    LOBYTE(v13) = 8;
    sub_191CC72E8();
    LOBYTE(v13) = 9;
    sub_191CC72E8();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t HKDatabase.Pruning.Show.Store.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v38 - v4;
  v5 = sub_191CC6148();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_191CC61A8();
  v45 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB380, sub_191C2CD90, &_s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v50 = v9;
  v48 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = type metadata accessor for HKDatabase.Pruning.Show.Store(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 28);
  v44 = v6;
  (*(v6 + 56))(&v15[v16], 1, 1, v5);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2CD90();
  v49 = v11;
  v17 = v52;
  sub_191CC7528();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_191C2CC84(&v15[v16]);
  }

  else
  {
    v18 = v46;
    v40 = v12;
    v41 = v16;
    v39 = v5;
    v52 = a1;
    LOBYTE(v54) = 0;
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v19 = v47;
    v20 = v51;
    sub_191CC7268();
    (*(v45 + 32))(v15, v19, v20);
    LOBYTE(v54) = 1;
    *&v15[v40[5]] = sub_191CC7258();
    LOBYTE(v54) = 2;
    sub_191C2153C(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v21 = v39;
    sub_191CC7268();
    (*(v44 + 32))(&v15[v40[6]], v18, v21);
    LOBYTE(v54) = 3;
    v22 = v43;
    sub_191CC7218();
    sub_191C2BBE0(v22, &v15[v41]);
    sub_191C2CDE4(0);
    v53 = 4;
    sub_191C2CFF4();
    sub_191CC7268();
    v23 = v40;
    *&v15[v40[8]] = v54;
    LOBYTE(v54) = 5;
    v24 = sub_191CC7208();
    v25 = &v15[v23[9]];
    *v25 = v24;
    v25[8] = v26 & 1;
    LOBYTE(v54) = 6;
    v15[v23[10]] = sub_191CC71F8();
    LOBYTE(v54) = 7;
    v27 = sub_191CC7208();
    v28 = &v15[v40[11]];
    *v28 = v27;
    v28[8] = v29 & 1;
    LOBYTE(v54) = 8;
    v30 = sub_191CC7208();
    v31 = &v15[v40[12]];
    *v31 = v30;
    v31[8] = v32 & 1;
    LOBYTE(v54) = 9;
    v33 = sub_191CC7208();
    v35 = v34;
    v36 = &v15[v40[13]];
    (*(v48 + 8))(v49, v50);
    *v36 = v33;
    v36[8] = v35 & 1;
    sub_191C2E0F4(v15, v42, type metadata accessor for HKDatabase.Pruning.Show.Store);
    __swift_destroy_boxed_opaque_existential_0(v52);
    return sub_191C3241C(v15, type metadata accessor for HKDatabase.Pruning.Show.Store);
  }
}

uint64_t HKDatabase.Pruning.Show.Entity.className.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HKDatabase.Pruning.Show.Entity.className.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.identifier.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_191C2D148(v2, v3, v4);
}

__n128 HKDatabase.Pruning.Show.Entity.identifier.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_191C2D15C(v1[2], v1[3], v1[4]);
  result = v4;
  *(v1 + 1) = v4;
  v1[4] = v2;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.maximumPruningAnchor.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.Entity.pruningRestrictionPredicates.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

__n128 HKDatabase.Pruning.Show.Entity.init(className:identifier:supportsPruning:supportsPruningRestrictionPredicates:maximumPruningAnchor:pruningRestrictionPredicates:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, unint64_t a6@<X5>, char a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>)
{
  v17 = *a3;
  v15 = a3[1].n128_u64[0];
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  sub_191C2D15C(0, 0, 1);
  result = v17;
  a9[1] = v17;
  a9[2].n128_u64[0] = v15;
  a9[2].n128_u8[8] = a4;
  a9[2].n128_u8[9] = a5;
  a9[3].n128_u64[0] = a6;
  a9[3].n128_u8[8] = a7 & 1;
  a9[4].n128_u64[0] = a8;
  return result;
}

unint64_t sub_191C26688()
{
  v1 = *v0;
  v2 = 0x6D614E7373616C63;
  v3 = 0xD000000000000024;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x696669746E656469;
  if (v1 != 1)
  {
    v5 = 0x7374726F70707573;
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

uint64_t sub_191C26764@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C316A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C2678C(uint64_t a1)
{
  v2 = sub_191C2D170();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C267C8(uint64_t a1)
{
  v2 = sub_191C2D170();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.Entity.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB3A0, sub_191C2D170, &_s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v8;
  v16 = *(v1 + 32);
  v23 = *(v1 + 40);
  v15 = *(v1 + 41);
  v14 = *(v1 + 48);
  v13 = *(v1 + 56);
  v12 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2D170();
  sub_191CC7548();
  LOBYTE(v20) = 0;
  v9 = v19;
  sub_191CC7308();
  if (!v9)
  {
    v20 = v18;
    v21 = v17;
    v22 = v16;
    v24 = 1;
    sub_191C2D148(v18, v17, v16);
    sub_191C2CFA0();
    sub_191CC72F8();
    sub_191C2D15C(v20, v21, v22);
    LOBYTE(v20) = 2;
    sub_191CC7318();
    LOBYTE(v20) = 3;
    sub_191CC7318();
    LOBYTE(v20) = 4;
    sub_191CC72E8();
    v20 = v12;
    v24 = 5;
    sub_191C2D1C4(0);
    sub_191C2D270();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKDatabase.Pruning.Show.Entity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_191C2E288(0, &qword_1EADCB3C0, sub_191C2D170, &_s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2D170();
  sub_191CC7528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_191C2D15C(0, 0, 1);
  }

  else
  {
    v9 = v6;
    v10 = v52;
    LOBYTE(v35) = 0;
    v11 = v5;
    v12 = sub_191CC7228();
    v14 = v13;
    v28 = v12;
    LOBYTE(v30) = 1;
    sub_191C2D094();
    sub_191CC7218();
    v29 = v35;
    v15 = v36;
    sub_191C2D15C(0, 0, 1);
    LOBYTE(v35) = 2;
    v27 = sub_191CC7238();
    LOBYTE(v35) = 3;
    v26 = sub_191CC7238();
    LOBYTE(v35) = 4;
    v25 = sub_191CC7208();
    v49 = v16 & 1;
    sub_191C2D1C4(0);
    v46 = 5;
    sub_191C2D350();
    sub_191CC7268();
    v27 &= 1u;
    v17 = v27;
    v26 &= 1u;
    (*(v9 + 8))(v8, v11);
    v18 = v47;
    *&v30 = v28;
    v19 = v29;
    *(&v30 + 1) = v14;
    v31 = v29;
    *&v32 = v15;
    BYTE8(v32) = v17;
    v20 = v26;
    BYTE9(v32) = v26;
    HIWORD(v32) = v51;
    *(&v32 + 10) = v50;
    *&v33 = v25;
    v21 = v49;
    BYTE8(v33) = v49;
    *(&v33 + 9) = *v48;
    HIDWORD(v33) = *&v48[3];
    v34 = v47;
    *(v10 + 64) = v47;
    v22 = v31;
    *v10 = v30;
    *(v10 + 16) = v22;
    v23 = v33;
    *(v10 + 32) = v32;
    *(v10 + 48) = v23;
    sub_191C2D430(&v30, &v35);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *&v35 = v28;
    *(&v35 + 1) = v14;
    v36 = __PAIR128__(*(&v29 + 1), v19);
    v37 = v15;
    v38 = v27;
    v39 = v20;
    v40 = v50;
    v41 = v51;
    v42 = v25;
    v43 = v21;
    *v44 = *v48;
    *&v44[3] = *&v48[3];
    v45 = v18;
    return sub_191C2D468(&v35);
  }
}

uint64_t HKDatabase.Pruning.Show.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 HKDatabase.Pruning.Show.configuration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 HKDatabase.Pruning.Show.configuration.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v2;
  *(v1 + 80) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t HKDatabase.Pruning.Show.activeStoresForMinAnchor.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.activeStoresForRestrictionPredicates.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.syncIdentities.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.stores.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.Show.entities.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

__n128 HKDatabase.Pruning.Show.init(configuration:activeStoresForMinAnchor:activeStoresForRestrictionPredicates:syncIdentities:stores:entities:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 2;
  *(a7 + 8) = 0;
  v7 = *(a1 + 48);
  *(a7 + 48) = *(a1 + 32);
  *(a7 + 64) = v7;
  v8 = *(a1 + 64);
  result = *(a1 + 16);
  *(a7 + 16) = *a1;
  *(a7 + 32) = result;
  *(a7 + 80) = v8;
  *(a7 + 88) = a2;
  *(a7 + 96) = a3;
  *(a7 + 104) = a4;
  *(a7 + 112) = a5;
  *(a7 + 120) = a6;
  return result;
}

uint64_t sub_191C27240()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x7365726F7473;
  if (v1 != 5)
  {
    v3 = 0x7365697469746E65;
  }

  v4 = 0xD000000000000024;
  if (v1 != 3)
  {
    v4 = 0x6E656449636E7973;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x72756769666E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000018;
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

uint64_t sub_191C2733C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C318BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C27370(uint64_t a1)
{
  v2 = sub_191C2D498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C273AC(uint64_t a1)
{
  v2 = sub_191C2D498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.Show.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB3D0, sub_191C2D498, &_s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = *(v1 + 48);
  v33 = *(v1 + 64);
  v9 = *(v1 + 80);
  v23 = *(v1 + 88);
  v34 = v9;
  v10 = *(v1 + 16);
  v31 = *(v1 + 32);
  v32 = v8;
  v30 = v10;
  v11 = *(v1 + 104);
  v22 = *(v1 + 96);
  v21 = v11;
  v12 = *(v1 + 120);
  v20 = *(v1 + 112);
  v19 = v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2D498();
  sub_191CC7548();
  LOBYTE(v25) = 0;
  v13 = v35;
  sub_191CC72E8();
  if (!v13)
  {
    v14 = v23;
    v15 = v22;
    v16 = v21;
    v17 = v20;
    v27 = v32;
    v28 = v33;
    v29 = v34;
    v25 = v30;
    v26 = v31;
    v24 = 1;
    sub_191C2D4EC();
    sub_191CC7348();
    *&v25 = v14;
    v24 = 2;
    sub_191C2D540(0);
    sub_191C2D920(&qword_1EADCB3F0, &qword_1EADCAD80, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_191CC7348();
    *&v25 = v15;
    v24 = 3;
    sub_191CC7348();
    *&v25 = v16;
    v24 = 4;
    sub_191C2D5D4(0, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
    sub_191C2D638();
    sub_191CC7348();
    *&v25 = v17;
    v24 = 5;
    sub_191C2D5D4(0, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
    sub_191C2D710();
    sub_191CC7348();
    *&v25 = v19;
    v24 = 6;
    sub_191C2EAD4(0, &qword_1EADCB428, &type metadata for HKDatabase.Pruning.Show.Entity, MEMORY[0x1E69E62F8]);
    sub_191C2D7E8(&qword_1EADCB430, sub_191C2D878, MEMORY[0x1E69E6300]);
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKDatabase.Pruning.Show.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  sub_191C2E288(0, &qword_1EADCB440, sub_191C2D498, &_s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v32 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - v6;
  v8 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v8);
  sub_191C2D498();
  v9 = v7;
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  v10 = v5;
  v12 = v31;
  v11 = v32;
  LOBYTE(v36) = 0;
  v13 = v9;
  v30 = sub_191CC7208();
  v56 = v14 & 1;
  v49 = 1;
  sub_191C2D8CC();
  sub_191CC7268();
  *&v55[23] = v51;
  *&v55[39] = v52;
  *&v55[55] = v53;
  *&v55[71] = v54;
  *&v55[7] = v50;
  sub_191C2D540(0);
  LOBYTE(v33[0]) = 2;
  sub_191C2D920(&qword_1EADCB450, &qword_1EADCAD70, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  sub_191CC7268();
  v15 = v36;
  LOBYTE(v33[0]) = 3;
  sub_191CC7268();
  v16 = v36;
  sub_191C2D5D4(0, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
  LOBYTE(v33[0]) = 4;
  sub_191C2D9B0();
  sub_191CC7268();
  v29 = v16;
  v17 = v15;
  v28 = v36;
  sub_191C2D5D4(0, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
  LOBYTE(v33[0]) = 5;
  sub_191C2DA88();
  sub_191CC7268();
  v27 = v36;
  sub_191C2EAD4(0, &qword_1EADCB428, &type metadata for HKDatabase.Pruning.Show.Entity, MEMORY[0x1E69E62F8]);
  v47 = 6;
  sub_191C2D7E8(&qword_1EADCB478, sub_191C2DB60, MEMORY[0x1E69E6330]);
  sub_191CC7268();
  (*(v10 + 8))(v13, v11);
  *(&v33[4] + 8) = *&v55[63];
  *(&v33[3] + 9) = *&v55[48];
  *(v33 + 9) = *v55;
  v19 = v29;
  v18 = v30;
  v32 = v48;
  *&v33[0] = v30;
  LOBYTE(v15) = v56;
  BYTE8(v33[0]) = v56;
  *(&v33[2] + 9) = *&v55[32];
  *(&v33[1] + 9) = *&v55[16];
  *(&v33[5] + 1) = v17;
  *&v34 = v29;
  v20 = v27;
  v21 = v28;
  *(&v34 + 1) = v28;
  *&v35 = v27;
  *(&v35 + 1) = v48;
  v22 = v33[5];
  v12[4] = v33[4];
  v12[5] = v22;
  v23 = v35;
  v12[6] = v34;
  v12[7] = v23;
  v24 = v33[1];
  *v12 = v33[0];
  v12[1] = v24;
  v25 = v33[3];
  v12[2] = v33[2];
  v12[3] = v25;
  sub_191C2DBB4(v33, &v36);
  __swift_destroy_boxed_opaque_existential_0(v57);
  v39 = *&v55[16];
  v40 = *&v55[32];
  *v41 = *&v55[48];
  *&v41[15] = *&v55[63];
  v36 = v18;
  v37 = v15;
  v38 = *v55;
  v42 = v17;
  v43 = v19;
  v44 = v21;
  v45 = v20;
  v46 = v32;
  return sub_191C2DBEC(&v36);
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.init(recentTombstones:ineligibleForPruning:almostEligibleForPruning:eligibleForPruningLessThanMonthOld:betweenMonthAndThreeMonthsOld:betweenThreeMonthsAndSixMonthsOld:betweenSixMonthsAndTwelveMonthsOld:betweenTwelveMonthsAndThirtySixMonthsOld:betweenThirtySixMonthsAndSixtyMonthsOld:overSixtyMonthsOld:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = 2;
  *(a9 + 8) = 0;
  *(a9 + 16) = result;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  return result;
}

double HKDatabase.Pruning.DeletedSampleInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

unint64_t sub_191C28140(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0x6E6F6973726576;
    v5 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000024;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v1 = 0xD00000000000002ALL;
      v2 = 0xD000000000000014;
      if (a1 == 9)
      {
        v2 = 0xD000000000000029;
      }

      v3 = a1 == 8;
    }

    else
    {
      v1 = 0xD00000000000001FLL;
      v2 = 0xD000000000000023;
      if (a1 != 6)
      {
        v2 = 0xD000000000000024;
      }

      v3 = a1 == 5;
    }

    if (v3)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_191C282BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C31B1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C282F0(uint64_t a1)
{
  v2 = sub_191C2DC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2832C(uint64_t a1)
{
  v2 = sub_191C2DC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB488, sub_191C2DC1C, &_s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = v1[2];
  v15[8] = v1[3];
  v15[9] = v8;
  v9 = v1[4];
  v15[6] = v1[5];
  v15[7] = v9;
  v10 = v1[6];
  v15[4] = v1[7];
  v15[5] = v10;
  v11 = v1[8];
  v15[2] = v1[9];
  v15[3] = v11;
  v12 = v1[10];
  v15[0] = v1[11];
  v15[1] = v12;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DC1C();
  sub_191CC7548();
  v26 = 0;
  v13 = v15[10];
  sub_191CC72E8();
  if (!v13)
  {
    v25 = 1;
    sub_191CC7338();
    v24 = 2;
    sub_191CC7338();
    v23 = 3;
    sub_191CC7338();
    v22 = 4;
    sub_191CC7338();
    v21 = 5;
    sub_191CC7338();
    v20 = 6;
    sub_191CC7338();
    v19 = 7;
    sub_191CC7338();
    v18 = 8;
    sub_191CC7338();
    v17 = 9;
    sub_191CC7338();
    v16 = 10;
    sub_191CC7338();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKDatabase.Pruning.DeletedSampleInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C2E288(0, &qword_1EADCB498, sub_191C2DC1C, &_s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DC1C();
  sub_191CC7528();
  if (!v2)
  {
    v9 = v6;
    v43 = 0;
    v10 = sub_191CC7208();
    v36 = v11 & 1;
    v42 = 1;
    v12 = sub_191CC7258();
    v41 = 2;
    v30 = sub_191CC7258();
    v40 = 3;
    v29 = sub_191CC7258();
    v39 = 4;
    v28 = sub_191CC7258();
    v38 = 5;
    v27 = sub_191CC7258();
    v37 = 6;
    v26 = sub_191CC7258();
    v35 = 7;
    v25 = sub_191CC7258();
    v34 = 8;
    v14 = sub_191CC7258();
    v33 = 9;
    v24 = sub_191CC7258();
    v32 = 10;
    v15 = sub_191CC7258();
    (*(v9 + 8))(v8, v31);
    v16 = v36;
    *a2 = v10;
    *(a2 + 8) = v16;
    v18 = v29;
    v17 = v30;
    *(a2 + 16) = v12;
    *(a2 + 24) = v17;
    v20 = v27;
    v19 = v28;
    *(a2 + 32) = v18;
    *(a2 + 40) = v19;
    v21 = v25;
    v22 = v26;
    *(a2 + 48) = v20;
    *(a2 + 56) = v22;
    *(a2 + 64) = v21;
    *(a2 + 72) = v14;
    *(a2 + 80) = v24;
    *(a2 + 88) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingMinAnchor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  v3 = *(v1 + 96);
  *(a1 + 64) = *(v1 + 80);
  *(a1 + 80) = v3;
  result = *(v1 + 16);
  v5 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingMinAnchor.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v2;
  v3 = *(a1 + 80);
  v1[5] = *(a1 + 64);
  v1[6] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingMinAnchor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = v2;
  v3 = *(v1 + 192);
  *(a1 + 64) = *(v1 + 176);
  *(a1 + 80) = v3;
  result = *(v1 + 112);
  v5 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingMinAnchor.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[9] = *(a1 + 32);
  v1[10] = v2;
  v3 = *(a1 + 80);
  v1[11] = *(a1 + 64);
  v1[12] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[7] = *a1;
  v1[8] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingRestrictionPredicates.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 256);
  *(a1 + 32) = *(v1 + 240);
  *(a1 + 48) = v2;
  v3 = *(v1 + 288);
  *(a1 + 64) = *(v1 + 272);
  *(a1 + 80) = v3;
  result = *(v1 + 208);
  v5 = *(v1 + 224);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.prunedUsingRestrictionPredicates.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[15] = *(a1 + 32);
  v1[16] = v2;
  v3 = *(a1 + 80);
  v1[17] = *(a1 + 64);
  v1[18] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[13] = *a1;
  v1[14] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingRestrictionPredicates.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 352);
  *(a1 + 32) = *(v1 + 336);
  *(a1 + 48) = v2;
  v3 = *(v1 + 384);
  *(a1 + 64) = *(v1 + 368);
  *(a1 + 80) = v3;
  result = *(v1 + 304);
  v5 = *(v1 + 320);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.notPrunedUsingRestrictionPredicates.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[21] = *(a1 + 32);
  v1[22] = v2;
  v3 = *(a1 + 80);
  v1[23] = *(a1 + 64);
  v1[24] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[19] = *a1;
  v1[20] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(prunedUsingMinAnchor:notPrunedUsingMinAnchor:prunedUsingRestrictionPredicates:notPrunedUsingRestrictionPredicates:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v17[7] = *a1;
  *&v17[23] = a1[1];
  *&v17[39] = a1[2];
  *&v17[87] = a1[5];
  *&v17[71] = a1[4];
  *&v17[55] = a1[3];
  *a5 = 2;
  *(a5 + 8) = 0;
  *(a5 + 41) = *&v17[32];
  *(a5 + 25) = *&v17[16];
  *(a5 + 9) = *v17;
  *(a5 + 104) = *&v17[95];
  *(a5 + 89) = *&v17[80];
  *(a5 + 73) = *&v17[64];
  *(a5 + 57) = *&v17[48];
  v5 = a2[1];
  *(a5 + 112) = *a2;
  *(a5 + 128) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[5];
  *(a5 + 176) = a2[4];
  *(a5 + 192) = v8;
  *(a5 + 144) = v6;
  *(a5 + 160) = v7;
  v9 = a3[1];
  *(a5 + 208) = *a3;
  *(a5 + 224) = v9;
  v10 = a3[2];
  v11 = a3[3];
  v12 = a3[5];
  *(a5 + 272) = a3[4];
  *(a5 + 288) = v12;
  *(a5 + 240) = v10;
  *(a5 + 256) = v11;
  v13 = *(a4 + 16);
  *(a5 + 304) = *a4;
  *(a5 + 320) = v13;
  result = *(a4 + 32);
  v15 = *(a4 + 48);
  v16 = *(a4 + 80);
  *(a5 + 368) = *(a4 + 64);
  *(a5 + 384) = v16;
  *(a5 + 336) = result;
  *(a5 + 352) = v15;
  return result;
}

double HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 2;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 2;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 2;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  return result;
}

unint64_t sub_191C28CF4()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD000000000000023;
  if (v1 == 3)
  {
    v3 = 0xD000000000000020;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_191C28D9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C31E84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C28DC4(uint64_t a1)
{
  v2 = sub_191C2DC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C28E00(uint64_t a1)
{
  v2 = sub_191C2DC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB4A0, sub_191C2DC70, &_s14descr1F05F1AE1C7PruningO27ClassifiedDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - v6;
  v24 = *v1;
  v23[3] = *(v1 + 8);
  v8 = *(v1 + 4);
  v34 = *(v1 + 3);
  v35 = v8;
  v9 = *(v1 + 6);
  v36 = *(v1 + 5);
  v37 = v9;
  v10 = *(v1 + 2);
  v32 = *(v1 + 1);
  v33 = v10;
  v11 = *(v1 + 8);
  v38 = *(v1 + 7);
  v39 = v11;
  v12 = *(v1 + 9);
  v13 = *(v1 + 10);
  v14 = *(v1 + 12);
  v42 = *(v1 + 11);
  v43 = v14;
  v40 = v12;
  v41 = v13;
  v15 = *(v1 + 16);
  v46 = *(v1 + 15);
  v47 = v15;
  v16 = *(v1 + 14);
  v44 = *(v1 + 13);
  v45 = v16;
  v17 = *(v1 + 18);
  v48 = *(v1 + 17);
  v49 = v17;
  v18 = *(v1 + 24);
  v54 = *(v1 + 23);
  v55 = v18;
  v19 = *(v1 + 22);
  v52 = *(v1 + 21);
  v53 = v19;
  v20 = *(v1 + 20);
  v50 = *(v1 + 19);
  v51 = v20;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DC70();
  sub_191CC7548();
  LOBYTE(v26) = 0;
  v21 = v56;
  sub_191CC72E8();
  if (!v21)
  {
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    v25 = 1;
    sub_191C2DCC4();
    sub_191CC7348();
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v31 = v43;
    v26 = v38;
    v27 = v39;
    v25 = 2;
    sub_191CC7348();
    v28 = v46;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    v26 = v44;
    v27 = v45;
    v25 = 3;
    sub_191CC7348();
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    v26 = v50;
    v27 = v51;
    v25 = 4;
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKDatabase.Pruning.ClassifiedDeletedSampleInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_191C2E288(0, &qword_1EADCB4B8, sub_191C2DC70, &_s14descr1F05F1AE1C7PruningO27ClassifiedDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v26 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v9);
  sub_191C2DC70();
  sub_191CC7528();
  if (!v2)
  {
    LOBYTE(v49) = 0;
    v25 = sub_191CC7208();
    v68 = v10 & 1;
    v48 = 1;
    sub_191C2DD18();
    sub_191CC7268();
    *&v67[39] = v51;
    *&v67[55] = v52;
    *&v67[71] = v53;
    *&v67[87] = v54;
    *&v67[7] = v49;
    *&v67[23] = v50;
    v41 = 2;
    sub_191CC7268();
    v63 = v44;
    v64 = v45;
    v65 = v46;
    v66 = v47;
    v61 = v42;
    v62 = v43;
    v34 = 3;
    sub_191CC7268();
    v57 = v37;
    v58 = v38;
    v59 = v39;
    v60 = v40;
    v55 = v35;
    v56 = v36;
    v27 = 4;
    sub_191CC7268();
    (*(v6 + 8))(v8, v26);
    v12 = *&v67[32];
    *(a2 + 57) = *&v67[48];
    v13 = *&v67[80];
    *(a2 + 73) = *&v67[64];
    *(a2 + 89) = v13;
    v14 = *&v67[16];
    *(a2 + 9) = *v67;
    v15 = v68;
    *a2 = v25;
    *(a2 + 8) = v15;
    *(a2 + 104) = *&v67[95];
    *(a2 + 25) = v14;
    *(a2 + 41) = v12;
    v16 = v64;
    *(a2 + 144) = v63;
    *(a2 + 160) = v16;
    v17 = v66;
    *(a2 + 176) = v65;
    *(a2 + 192) = v17;
    v18 = v62;
    *(a2 + 112) = v61;
    *(a2 + 128) = v18;
    v19 = v58;
    *(a2 + 240) = v57;
    *(a2 + 256) = v19;
    v20 = v60;
    *(a2 + 272) = v59;
    *(a2 + 288) = v20;
    v21 = v56;
    *(a2 + 208) = v55;
    *(a2 + 224) = v21;
    v22 = v29;
    *(a2 + 304) = v28;
    *(a2 + 320) = v22;
    v23 = v33;
    *(a2 + 368) = v32;
    *(a2 + 384) = v23;
    v24 = v31;
    *(a2 + 336) = v30;
    *(a2 + 352) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_0(v69);
}

uint64_t HKDatabase.Pruning.ShowWithDeletedSampleInfo.show.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v14 = v1[4];
  v2 = v14;
  v15 = v3;
  v5 = v1[7];
  v16 = v1[6];
  v4 = v16;
  v17 = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  v8 = v1[3];
  v12 = v1[2];
  v7 = v12;
  v13 = v8;
  *a1 = v11[0];
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v4;
  a1[7] = v5;
  return sub_191C2DBB4(v11, &v10);
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.show.setter(uint64_t a1)
{
  v3 = v1[5];
  v12[4] = v1[4];
  v12[5] = v3;
  v4 = v1[7];
  v12[6] = v1[6];
  v12[7] = v4;
  v5 = v1[1];
  v12[0] = *v1;
  v12[1] = v5;
  v6 = v1[3];
  v12[2] = v1[2];
  v12[3] = v6;
  sub_191C2DBEC(v12);
  v7 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v7;
  v8 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v8;
  v9 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v9;
  result = *(a1 + 32);
  v11 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v11;
  return result;
}
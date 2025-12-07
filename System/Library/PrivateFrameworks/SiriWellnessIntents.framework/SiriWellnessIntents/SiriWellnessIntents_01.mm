uint64_t HealthKitFetcher.query(start:end:)(double a1)
{
  v5 = *v2;
  *(v5 + 672) = *v2;
  *(v5 + 1552) = a1;
  *(v5 + 1560) = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  else
  {
    v3 = HealthKitFetcher.query(start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t implicit closure #2 in HealthKitFetcher.query(start:end:)(uint64_t a1)
{
  v4 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v1);
  v7 = &v4 - v5;
  outlined init with copy of Date?(v2, &v4 - v5);
  lazy protocol witness table accessor for type Date? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t specialized implicit closure #5 in HealthKitFetcher.query(start:end:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = [a1 unit];
  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v3);
  }

  MEMORY[0x277D82BD8](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance A?();
  return String.init<A>(describing:)();
}

uint64_t HealthKitFetcher.getMostRecent(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a5;
  *(v6 + 96) = a4;
  *(v6 + 88) = a3;
  *(v6 + 80) = a2;
  *(v6 + 72) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR);
  *(v6 + 120) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  *(v6 + 128) = Descriptor;
  *(v6 + 136) = *(Descriptor - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;

  return MEMORY[0x2822009F8](HealthKitFetcher.getMostRecent(startDate:endDate:), 0);
}

uint64_t HealthKitFetcher.getMostRecent(startDate:endDate:)()
{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[13];
  v4 = v0[12];
  v5 = v0[11];
  v11 = v5;
  v6 = v0[10];
  v7 = v0[9];
  v0[6] = v0;
  HealthKitFetcher.predicate(start:end:)(v7, v6, v5, v4, v3, v2, v1);
  HKStatisticsQueryDescriptor.init(predicate:options:)();
  MEMORY[0x277D82BE0](v11);
  v8 = swift_task_alloc();
  v12[19] = v8;
  *v8 = v12[6];
  v8[1] = HealthKitFetcher.getMostRecent(startDate:endDate:);
  v9 = v12[11];

  return MEMORY[0x2821203E8](v9);
}

{
  v1 = v0[17];
  v0[6] = v0;
  (*(v1 + 8))();

  v2 = *(v0[6] + 8);
  v3 = v0[20];

  return v2(v3);
}

{
  v6 = v0[18];
  v4 = v0[17];
  v5 = v0[16];
  v1 = v0[11];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[6] + 8);

  return v2();
}

uint64_t HealthKitFetcher.getMostRecent(startDate:endDate:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 48) = *v2;
  *(v5 + 160) = a1;
  *(v5 + 168) = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.getMostRecent(startDate:endDate:);
  }

  else
  {

    v3 = HealthKitFetcher.getMostRecent(startDate:endDate:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t HealthKitFetcher.getDiscreteStats(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 120) = a6;
  *(v6 + 112) = a5;
  *(v6 + 104) = a4;
  *(v6 + 96) = a3;
  *(v6 + 88) = a2;
  *(v6 + 80) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR);
  *(v6 + 144) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  *(v6 + 152) = Descriptor;
  *(v6 + 160) = *(Descriptor - 8);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;

  return MEMORY[0x2822009F8](HealthKitFetcher.getDiscreteStats(startDate:endDate:), 0);
}

uint64_t HealthKitFetcher.getDiscreteStats(startDate:endDate:)()
{
  v16 = v0[18];
  v15 = v0[17];
  v14 = v0[16];
  v13 = v0[15];
  v12 = v0[14];
  v11 = v0[13];
  v17 = v0[12];
  v7 = v0[11];
  v5 = v0[10];
  v0[6] = v0;
  v9 = type metadata accessor for Date();
  v6 = *(v9 - 8);
  v8 = *(v6 + 16);
  v8(v15, v5);
  v10 = *(v6 + 56);
  v10(v15);
  (v8)(v14, v7, v9);
  (v10)(v14, 0, 1, v9);
  HealthKitFetcher.predicate(start:end:)(v15, v14, v17, v11, v12, v13, v16);
  outlined destroy of Date?(v14);
  outlined destroy of Date?(v15);
  type metadata accessor for HKStatisticsOptions(0);
  _allocateUninitializedArray<A>(_:)();
  *v1 = 4;
  v1[1] = 8;
  v1[2] = 2;
  _finalizeUninitializedArray<A>(_:)();
  lazy protocol witness table accessor for type HKStatisticsOptions and conformance HKStatisticsOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  HKStatisticsQueryDescriptor.init(predicate:options:)();
  MEMORY[0x277D82BE0](v17);
  v2 = swift_task_alloc();
  v18[22] = v2;
  *v2 = v18[6];
  v2[1] = HealthKitFetcher.getDiscreteStats(startDate:endDate:);
  v3 = v18[12];

  return MEMORY[0x2821203E8](v3);
}

{
  v1 = v0[20];
  v0[6] = v0;
  (*(v1 + 8))();

  v2 = *(v0[6] + 8);
  v3 = v0[23];

  return v2(v3);
}

{
  v6 = v0[21];
  v4 = v0[20];
  v5 = v0[19];
  v1 = v0[12];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[6] + 8);

  return v2();
}

uint64_t HealthKitFetcher.getDiscreteStats(startDate:endDate:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 48) = *v2;
  *(v5 + 184) = a1;
  *(v5 + 192) = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.getDiscreteStats(startDate:endDate:);
  }

  else
  {

    v3 = HealthKitFetcher.getDiscreteStats(startDate:endDate:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a5;
  *(v6 + 96) = a4;
  *(v6 + 88) = a3;
  *(v6 + 80) = a2;
  *(v6 + 72) = a1;
  *(v6 + 48) = v6;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR);
  *(v6 + 136) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsQueryDescriptor();
  *(v6 + 144) = Descriptor;
  *(v6 + 152) = *(Descriptor - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 56) = a1;
  *(v6 + 64) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;

  return MEMORY[0x2822009F8](HealthKitFetcher.getCumulativeTotal(startDate:endDate:), 0);
}

uint64_t HealthKitFetcher.getCumulativeTotal(startDate:endDate:)()
{
  v15 = v0[17];
  v14 = v0[16];
  v13 = v0[15];
  v12 = v0[14];
  v11 = v0[13];
  v10 = v0[12];
  v16 = v0[11];
  v6 = v0[10];
  v4 = v0[9];
  v0[6] = v0;
  v8 = type metadata accessor for Date();
  v5 = *(v8 - 8);
  v7 = *(v5 + 16);
  v7(v14, v4);
  v9 = *(v5 + 56);
  v9(v14);
  (v7)(v13, v6, v8);
  (v9)(v13, 0, 1, v8);
  HealthKitFetcher.predicate(start:end:)(v14, v13, v16, v10, v11, v12, v15);
  outlined destroy of Date?(v13);
  outlined destroy of Date?(v14);
  HKStatisticsQueryDescriptor.init(predicate:options:)();
  MEMORY[0x277D82BE0](v16);
  v1 = swift_task_alloc();
  v17[21] = v1;
  *v1 = v17[6];
  v1[1] = HealthKitFetcher.getCumulativeTotal(startDate:endDate:);
  v2 = v17[11];

  return MEMORY[0x2821203E8](v2);
}

{
  v1 = v0[19];
  v0[6] = v0;
  (*(v1 + 8))();

  v2 = *(v0[6] + 8);
  v3 = v0[22];

  return v2(v3);
}

{
  v6 = v0[20];
  v4 = v0[19];
  v5 = v0[18];
  v1 = v0[11];
  v0[6] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v4 + 8))(v6, v5);

  v2 = *(v0[6] + 8);

  return v2();
}

uint64_t HealthKitFetcher.getCumulativeTotal(startDate:endDate:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 48) = *v2;
  *(v5 + 176) = a1;
  *(v5 + 184) = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.getCumulativeTotal(startDate:endDate:);
  }

  else
  {

    v3 = HealthKitFetcher.getCumulativeTotal(startDate:endDate:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 272) = a7;
  *(v7 + 264) = a6;
  *(v7 + 256) = a5;
  *(v7 + 248) = a4;
  *(v7 + 240) = a3;
  *(v7 + 232) = a2;
  *(v7 + 224) = a1;
  *(v7 + 168) = v7;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  *(v7 + 192) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 200) = 0;
  *(v7 + 208) = 0;
  *(v7 + 216) = 0;
  v8 = type metadata accessor for Date();
  *(v7 + 280) = v8;
  *(v7 + 288) = *(v8 - 8);
  *(v7 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMd, &_s9HealthKit17HKSamplePredicateVySo16HKQuantitySampleCGMR);
  *(v7 + 320) = swift_task_alloc();
  Descriptor = type metadata accessor for HKStatisticsCollectionQueryDescriptor();
  *(v7 + 328) = Descriptor;
  *(v7 + 336) = *(Descriptor - 8);
  *(v7 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  *(v7 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  *(v7 + 360) = swift_task_alloc();
  v10 = type metadata accessor for DateComponents();
  *(v7 + 368) = v10;
  *(v7 + 376) = *(v10 - 8);
  *(v7 + 384) = swift_task_alloc();
  *(v7 + 392) = swift_task_alloc();
  *(v7 + 176) = a1;
  *(v7 + 184) = a2;
  *(v7 + 192) = a3;
  *(v7 + 64) = a4;
  *(v7 + 72) = a5;
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;

  return MEMORY[0x2822009F8](HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:), 0);
}

uint64_t HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)()
{
  v20 = v0[49];
  v23 = v0[48];
  v19 = v0[47];
  v21 = v0[46];
  v6 = v0[45];
  v7 = v0[44];
  v24 = v0[40];
  v15 = v0[39];
  v14 = v0[38];
  v22 = v0[37];
  v8 = v0[36];
  v17 = v0[35];
  v13 = v0[34];
  v12 = v0[33];
  v11 = v0[32];
  v25 = v0[31];
  v9 = v0[29];
  v16 = v0[28];
  v0[21] = v0;
  v1 = type metadata accessor for Calendar();
  (*(*(v1 - 8) + 56))(v6, 1);
  v2 = type metadata accessor for TimeZone();
  (*(*(v2 - 8) + 56))(v7, 1);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  v18 = *(v8 + 16);
  v0[50] = v18;
  v0[51] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v18(v15, v16, v17);
  v10 = *(v8 + 56);
  v10(v15);
  v18(v14, v9, v17);
  (v10)(v14, 0, 1, v17);
  HealthKitFetcher.predicate(start:end:)(v15, v14, v25, v11, v12, v13, v24);
  outlined destroy of Date?(v14);
  outlined destroy of Date?(v15);
  v18(v22, v16, v17);
  (*(v19 + 16))(v23, v20, v21);
  HKStatisticsCollectionQueryDescriptor.init(predicate:options:anchorDate:intervalComponents:)();
  MEMORY[0x277D82BE0](v25);
  v3 = swift_task_alloc();
  v26[52] = v3;
  *v3 = v26[21];
  v3[1] = HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  v4 = v26[31];

  return MEMORY[0x2821204E8](v4);
}

{
  v31 = *(v0 + 424);
  v26 = *(v0 + 400);
  v1 = *(v0 + 296);
  v24 = *(v0 + 288);
  v27 = *(v0 + 280);
  v30 = *(v0 + 240);
  v25 = *(v0 + 232);
  v23 = *(v0 + 224);
  *(v0 + 168) = v0;
  *(v0 + 200) = v31;
  v29 = swift_allocObject();
  *(v0 + 208) = v29 + 16;
  *(v29 + 16) = 0;
  v35 = swift_allocObject();
  *(v0 + 216) = v35 + 16;
  *(v35 + 16) = 0;
  v26(v1, v23, v27);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v28 = *(v24 + 8);
  v28(v1, v27);
  v26(v1, v25, v27);
  v33 = Date._bridgeToObjectiveC()().super.isa;
  v28(v1, v27);

  MEMORY[0x277D82BE0](v30);

  v2 = swift_allocObject();
  v2[2] = v29;
  v2[3] = v30;
  v2[4] = v35;
  *(v0 + 48) = partial apply for closure #1 in HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 28) = 0;
  *(v0 + 32) = thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  *(v0 + 40) = &block_descriptor_0;
  v32 = _Block_copy((v0 + 16));

  [v31 enumerateStatisticsFromDate:isa toDate:v33 withBlock:v32];
  _Block_release(v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](isa);
  swift_beginAccess();
  v36 = *(v35 + 16);
  swift_endAccess();
  if (v36 > 0)
  {
    v14 = v22[53];
    v19 = v22[49];
    v20 = v22[46];
    v16 = v22[43];
    v17 = v22[41];
    v18 = v22[47];
    v15 = v22[42];
    swift_beginAccess();
    v13 = *(v29 + 16);
    swift_endAccess();
    swift_beginAccess();
    swift_endAccess();

    MEMORY[0x277D82BD8](v14);
    (*(v15 + 8))(v16, v17);
    (*(v18 + 8))(v19, v20);
    v21 = v13 / v36;
  }

  else
  {
    v6 = v22[53];
    v11 = v22[49];
    v12 = v22[46];
    v8 = v22[43];
    v9 = v22[41];
    v10 = v22[47];
    v7 = v22[42];

    MEMORY[0x277D82BD8](v6);
    (*(v7 + 8))(v8, v9);
    (*(v10 + 8))(v11, v12);
    v21 = 0.0;
  }

  v3.n128_f64[0] = v21;
  v4 = *(v22[21] + 8);

  return v4(v3);
}

{
  v9 = v0[49];
  v7 = v0[47];
  v8 = v0[46];
  v10 = v0[43];
  v5 = v0[42];
  v6 = v0[41];
  v1 = v0[31];
  v0[21] = v0;
  MEMORY[0x277D82BD8](v1);
  (*(v5 + 8))(v10, v6);
  (*(v7 + 8))(v9, v8);

  v2 = *(v0[21] + 8);
  v3.n128_u64[0] = v11;

  return v2(v3);
}

uint64_t HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 168) = *v2;
  *(v5 + 424) = a1;
  *(v5 + 432) = v1;

  if (v1)
  {
    v3 = HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  }

  else
  {

    v3 = HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t specialized implicit closure #12 in HealthKitFetcher.query(start:end:)(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  type metadata accessor for GetHealthQuantityIntentResponse();
  lazy protocol witness table accessor for type GetHealthQuantityIntentResponse and conformance NSObject();
  return String.init<A>(describing:)();
}

id closure #1 in HealthKitFetcher.getCumulativeAverage(startDate:endDate:unit:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 sumQuantity];
  v14 = result;
  if (result)
  {
    [result doubleValueForUnit_];
    v9 = v6;
    swift_beginAccess();
    *(a3 + 16) = *(a3 + 16) + v9;
    swift_endAccess();
    result = swift_beginAccess();
    v7 = *(a5 + 16);
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
    }

    else
    {
      *(a5 + 16) = v10;
      swift_endAccess();
      return MEMORY[0x277D82BD8](v14);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed HKStatistics, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  v5(a2, a3);
  MEMORY[0x277D82BD8](a2);
}

uint64_t protocol witness for QuantityFetching.isReadingAuthorized(for:) in conformance HealthKitFetcher(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[3];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.isLoggingAuthorized(for:) in conformance HealthKitPersistor;

  return HealthKitFetcher.isReadingAuthorized(for:)(a1, v6, v7, v8, v9);
}

uint64_t protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  v11 = v2[3];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher;

  return HealthKitFetcher.query(start:end:)(a1, a2, v8, v9, v10, v11);
}

uint64_t protocol witness for QuantityFetching.query(start:end:) in conformance HealthKitFetcher(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_269946E40()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

void *outlined destroy of HealthKitFetcher(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);

  return a1;
}

uint64_t sub_269946F34()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in GetHealthQuantityIntentHandler.handle(intent:)(v7, v5, v6);
}

unint64_t type metadata accessor for HKSample()
{
  v2 = lazy cache variable for type metadata for HKSample;
  if (!lazy cache variable for type metadata for HKSample)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSample);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_2699470E4()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_269947160()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

void *outlined init with take of Date?(const void *a1, void *a2)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t partial apply for implicit closure #2 in HealthKitFetcher.query(start:end:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return implicit closure #2 in HealthKitFetcher.query(start:end:)(v2);
}

uint64_t sub_269947438()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_269947800()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type [HKQuantityType] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKQuantityType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantityType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo14HKQuantityTypeCGMd, &_sSaySo14HKQuantityTypeCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantityType] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKQuantityType and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject)
  {
    type metadata accessor for HKQuantityType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject)
  {
    type metadata accessor for HKQuantityType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKQuantityType and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_269947C90()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_269947D9C()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_269948058()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_269948164()
{
  v2 = *(type metadata accessor for Date() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_269948680()
{

  MEMORY[0x277D82BD8](*(v0 + 24));

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HealthKitFetcher(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HealthKitFetcher(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GetHealthQuantityIntentResponse and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type GetHealthQuantityIntentResponse and conformance NSObject;
  if (!lazy protocol witness table cache variable for type GetHealthQuantityIntentResponse and conformance NSObject)
  {
    type metadata accessor for GetHealthQuantityIntentResponse();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type GetHealthQuantityIntentResponse and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance A?()
{
  v2 = lazy protocol witness table cache variable for type Date? and conformance A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Date? and conformance A?);
    return WitnessTable;
  }

  return v2;
}

id LogPeriodIntent.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for LogPeriodIntent();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogPeriodIntent.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogPeriodIntent.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for LogPeriodIntent();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogPeriodIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = MEMORY[0x26D6492A0](a1);

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v11 initWithIdentifier_backingStore_];
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](v7);
  return v5;
}

id LogPeriodIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  v12 = a1;
  v13 = a2;
  v11 = a3;

  if (a2)
  {
    v5 = MEMORY[0x26D6492A0](a1);

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10.receiver = 0;
  v10.super_class = type metadata accessor for LogPeriodIntent();
  v4 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_backingStore_, v6, a3);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BE0](v4);
  v14 = v4;
  MEMORY[0x277D82BD8](a3);

  MEMORY[0x277D82BD8](v14);
  return v4;
}

id LogPeriodIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_allocWithZone(v5);
  v16 = MEMORY[0x26D6492A0](a1, a2);
  v18 = MEMORY[0x26D6492A0](a3, a4);
  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:isa];
  }

  else
  {
    v6 = [v13 initWithDomain:v16 verb:v18 parametersByName:0];
  }

  v9 = v6;
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v18);

  MEMORY[0x277D82BD8](v16);

  return v9;
}

id LogPeriodIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v20 = a1;
  v21 = a2;
  v18 = a3;
  v19 = a4;
  v17 = a5;

  v11 = MEMORY[0x26D6492A0](a1, a2);

  v14 = MEMORY[0x26D6492A0](a3, a4);

  if (a5)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = isa;
  }

  else
  {
    v8 = 0;
  }

  v16.receiver = 0;
  v16.super_class = type metadata accessor for LogPeriodIntent();
  v6 = objc_msgSendSuper2(&v16, sel_initWithDomain_verb_parametersByName_, v11, v14, v8);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BE0](v6);
  v22 = v6;

  MEMORY[0x277D82BD8](v22);
  return v6;
}

id LogPeriodIntent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogPeriodIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LogPeriodIntentResponseCode.init(rawValue:)(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
    case 5:
      return 5;
    case 6:
      return 6;
    case 100:
      return 100;
    case 101:
      return 101;
    case 102:
      return 102;
  }

  return 0;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LogPeriodIntentResponseCode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LogPeriodIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t LogPeriodIntentResponse.code.getter()
{
  v2 = (v0 + OBJC_IVAR___LogPeriodIntentResponse_code);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t LogPeriodIntentResponse.code.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___LogPeriodIntentResponse_code);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t key path getter for LogPeriodIntentResponse.code : LogPeriodIntentResponse@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x277D82BE0](*a1);
  *a2 = LogPeriodIntentResponse.code.getter();
  return MEMORY[0x277D82BD8](v3);
}

uint64_t key path setter for LogPeriodIntentResponse.code : LogPeriodIntentResponse(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = *a2;
  MEMORY[0x277D82BE0](*a2);
  LogPeriodIntentResponse.code.setter(v4);
  return MEMORY[0x277D82BD8](v3);
}

char *LogPeriodIntentResponse.init(code:userActivity:)(uint64_t a1, uint64_t a2)
{
  v6 = [v7 init];
  MEMORY[0x277D82BE0](v6);
  v3 = &v6[OBJC_IVAR___LogPeriodIntentResponse_code];
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  MEMORY[0x277D82BE0](v6);
  [v6 setUserActivity_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](v6);
  return v6;
}

id LogPeriodIntentResponse.init()()
{
  v3 = 0;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for LogPeriodIntentResponse();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x277D82BE0](v1);
  v3 = v1;
  MEMORY[0x277D82BD8](v1);
  return v1;
}

id LogPeriodIntentResponse.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogPeriodIntentResponse.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogPeriodIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogPeriodIntentResponse.__allocating_init(backingStore:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithBackingStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id LogPeriodIntentResponse.init(backingStore:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for LogPeriodIntentResponse();
  v4 = objc_msgSendSuper2(&v5, sel_initWithBackingStore_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id LogPeriodIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  v8 = objc_allocWithZone(v1);
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v2 = [v8 initWithPropertiesByName_];
  }

  else
  {
    v2 = [v8 initWithPropertiesByName_];
  }

  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

id LogPeriodIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  v9 = 0;
  v8 = a1;
  *OBJC_IVAR___LogPeriodIntentResponse_code = 0;

  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v5 = isa;
  }

  else
  {
    v5 = 0;
  }

  v7.receiver = v9;
  v7.super_class = type metadata accessor for LogPeriodIntentResponse();
  v3 = objc_msgSendSuper2(&v7, sel_initWithPropertiesByName_, v5);
  MEMORY[0x277D82BD8](v5);
  if (v3)
  {
    MEMORY[0x277D82BE0](v3);
    v9 = v3;

    MEMORY[0x277D82BD8](v9);
    return v3;
  }

  else
  {
    MEMORY[0x277D82BD8](0);

    return 0;
  }
}

id LogPeriodIntentResponse.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogPeriodIntentResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode()
{
  v2 = lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode;
  if (!lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type LogPeriodIntentResponseCode and conformance LogPeriodIntentResponseCode);
    return WitnessTable;
  }

  return v2;
}

id MatchedMedSchedule.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = objc_allocWithZone(v6);
  if (a2)
  {
    v12 = MEMORY[0x26D6492A0](a1);

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v11 = MEMORY[0x26D6492A0](a3, a4);
  if (a6)
  {
    v9 = MEMORY[0x26D6492A0](a5);

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v8 = [v20 initWithIdentifier:v13 displayString:v11 pronunciationHint:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  MEMORY[0x277D82BD8](v13);
  return v8;
}

id MatchedMedSchedule.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v24 = a1;
  v25 = a2;
  v22 = a3;
  v23 = a4;
  v20 = a5;
  v21 = a6;

  if (a2)
  {
    v11 = MEMORY[0x26D6492A0](a1);

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = MEMORY[0x26D6492A0](a3, a4);

  if (a6)
  {
    v8 = MEMORY[0x26D6492A0](a5);

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v19.receiver = 0;
  v19.super_class = type metadata accessor for MatchedMedSchedule();
  v7 = objc_msgSendSuper2(&v19, sel_initWithIdentifier_displayString_pronunciationHint_, v12, v10, v9);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v7);
  v26 = v7;

  MEMORY[0x277D82BD8](v26);
  return v7;
}

id MatchedMedSchedule.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id MatchedMedSchedule.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for MatchedMedSchedule();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x277D82BE0](v4);
    v7 = v4;
    MEMORY[0x277D82BD8](a1);
    MEMORY[0x277D82BD8](v7);
    return v4;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a1);
    return 0;
  }
}

id MatchedMedSchedule.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedSchedule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MatchedMedScheduleResolutionResult.success(with:)(uint64_t a1)
{
  v7 = a1;
  v6 = v1;
  v5.receiver = swift_getObjCClassFromMetadata();
  v5.super_class = &OBJC_METACLASS___MatchedMedScheduleResolutionResult;
  v2 = objc_msgSendSuper2(&v5, sel_successWithResolvedObject_, a1);

  return v2;
}

id static MatchedMedScheduleResolutionResult.disambiguation(with:)(uint64_t a1)
{
  v8 = a1;
  v7 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  type metadata accessor for MatchedMedSchedule();
  type metadata accessor for INObject();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6.receiver = ObjCClassFromMetadata;
  v6.super_class = &OBJC_METACLASS___MatchedMedScheduleResolutionResult;
  v5 = objc_msgSendSuper2(&v6, sel_disambiguationWithObjectsToDisambiguate_, isa);
  MEMORY[0x277D82BD8](isa);
  return v5;
}

id static MatchedMedScheduleResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v10 = a1;
  v9 = v1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  MEMORY[0x277D82BE0](a1);
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS___MatchedMedScheduleResolutionResult;
  v4 = objc_msgSendSuper2(&v8, sel_confirmationRequiredWithObjectToConfirm_, v5);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

void static MatchedMedScheduleResolutionResult.success(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26994B230(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedScheduleResolutionResult.disambiguation(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26994B34C(void *a1)
{

  (MEMORY[0x277D82BD8])();

  return a1;
}

void static MatchedMedScheduleResolutionResult.confirmationRequired(with:)()
{
  implicit closure #1 in default argument 0 of fatalError(_:file:line:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_26994B454(void *a1)
{
  (MEMORY[0x277D82BD8])();

  return a1;
}

id MatchedMedScheduleResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithJSONDictionary_forIntent_];
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](isa);

  return v7;
}

id MatchedMedScheduleResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = a1;
  v8 = a2;

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = 0;
  v7.super_class = type metadata accessor for MatchedMedScheduleResolutionResult();
  v6 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, isa, a2);
  MEMORY[0x277D82BD8](isa);
  if (v6)
  {
    MEMORY[0x277D82BE0](v6);
    v10 = v6;
    MEMORY[0x277D82BD8](a2);

    MEMORY[0x277D82BD8](v10);
    return v6;
  }

  else
  {
    MEMORY[0x277D82BD8](0);
    MEMORY[0x277D82BD8](a2);

    return 0;
  }
}

id MatchedMedScheduleResolutionResult.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MatchedMedScheduleResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getPreferredUnit(for:store:)(uint64_t a1, uint64_t a2)
{
  v2[45] = a2;
  v2[44] = a1;
  v2[33] = v2;
  v2[34] = 0;
  v2[35] = 0;
  v2[37] = 0;
  v2[39] = 0;
  v2[40] = 0;
  v2[43] = 0;
  v3 = type metadata accessor for Logger();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[34] = a1;
  v2[35] = a2;

  return MEMORY[0x2822009F8](getPreferredUnit(for:store:), 0);
}

uint64_t getPreferredUnit(for:store:)(uint64_t a1)
{
  v39 = v1;
  v2 = v1[52];
  v21 = v1[47];
  v23 = v1[46];
  v24 = v1[44];
  v1[33] = v1;
  v22 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v21 + 16);
  v1[53] = v3;
  v1[54] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v22, v23);
  swift_endAccess();
  MEMORY[0x277D82BE0](v24);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v26 + 24) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v29 + 24) = v26;
  v1[55] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v30 = v4;

  *v30 = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[1] = v27;

  v30[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[3] = v28;

  v30[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v30[5] = v29;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v31, v32))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v18 = createStorage<A>(capacity:type:)(1, v16, v16);
    v19 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v34 = buf;
    v35 = v18;
    v36 = v19;
    serialize(_:at:)(2, &v34);
    serialize(_:at:)(1, &v34);
    v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    v37 = partial apply for closure #1 in OSLogArguments.append(_:);
    v38 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_269912000, v31, v32, "Getting preferred unit for quantityType: %@", buf, 0xCu);
    destroyStorage<A>(_:count:)(v18, 1, v16);
    destroyStorage<A>(_:count:)(v19, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  *(v20 + 448) = 0;
  v13 = *(v20 + 416);
  v14 = *(v20 + 368);
  v15 = *(v20 + 360);
  v12 = *(v20 + 376);
  MEMORY[0x277D82BD8](v31);
  v5 = *(v12 + 8);
  *(v20 + 456) = v5;
  *(v20 + 464) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v13, v14);
  MEMORY[0x277D82BE0](v15);
  *(v20 + 288) = v15;
  if (*(v20 + 288))
  {
    v33 = *(v20 + 288);
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v33 = NSDateFormatter.__allocating_init()();
    if (*(v20 + 288))
    {
      outlined destroy of HealthKitPersistor((v20 + 288));
    }
  }

  v9 = *(v20 + 352);
  *(v20 + 472) = v33;
  *(v20 + 296) = v33;
  *(v20 + 480) = type metadata accessor for HKQuantityType();
  _allocateUninitializedArray<A>(_:)();
  v8 = v6;
  MEMORY[0x277D82BE0](v9);
  *v8 = v9;
  _finalizeUninitializedArray<A>(_:)();
  *(v20 + 488) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
  Set.init(arrayLiteral:)();
  isa = Set._bridgeToObjectiveC()().super.isa;
  *(v20 + 496) = isa;

  *(v20 + 16) = *(v20 + 264);
  *(v20 + 56) = v20 + 304;
  *(v20 + 24) = getPreferredUnit(for:store:);
  v10 = swift_continuation_init();
  *(v20 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
  *(v20 + 112) = v10;
  *(v20 + 80) = MEMORY[0x277D85DD0];
  *(v20 + 88) = 1107296256;
  *(v20 + 92) = 0;
  *(v20 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
  *(v20 + 104) = &block_descriptor_1;
  [v33 preferredUnitsForQuantityTypes:isa completion:?];

  return MEMORY[0x282200938](v20 + 16);
}

{
  v42 = v1;
  v16 = v1[62];
  v17 = v1[59];
  v1[33] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v22 = v1[63];
  v20 = v1[53];
  v2 = v1[48];
  v19 = v1[46];
  v21 = v1[44];
  v3 = v22;
  v1[39] = v22;
  v18 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v20(v2, v18, v19);
  swift_endAccess();
  MEMORY[0x277D82BE0](v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  v4 = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

  oslog = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 64;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v24 + 24) = v23;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v30 + 24) = v24;
  v31 = swift_allocObject();
  *(v31 + 16) = 64;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
  *(v26 + 24) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
  *(v27 + 24) = v26;
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v33 + 24) = v27;
  _allocateUninitializedArray<A>(_:)();
  v34 = v5;

  *v34 = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[1] = v28;

  v34[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[3] = v29;

  v34[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[5] = v30;

  v34[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[7] = v31;

  v34[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[9] = v32;

  v34[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v34[11] = v33;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v36))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(2, v11, v11);
    v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v37 = buf;
    v38 = v13;
    v39 = v14;
    serialize(_:at:)(2, &v37);
    serialize(_:at:)(2, &v37);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    v40 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41 = v33;
    closure #1 in osLogInternal(_:log:type:)(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_269912000, oslog, v36, "Failed to fetch preferredUnits for quantityType=%@ with error: %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v13, 2, v11);
    destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[57];
  v10 = v15[48];
  v8 = v15[46];
  MEMORY[0x277D82BD8](oslog);
  v9(v10, v8);
  swift_willThrow();

  v6 = *(v15[33] + 8);

  return v6();
}

uint64_t getPreferredUnit(for:store:)()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 264) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 504) = v1;
  if (v1)
  {
    v2 = getPreferredUnit(for:store:);
  }

  else
  {
    v2 = getPreferredUnit(for:store:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v146 = v0;
  v1 = v0[62];
  v109 = v0[53];
  v2 = v0[51];
  v108 = v0[46];
  v112 = v0[44];
  v0[33] = v0;
  v110 = v0[38];
  v0[40] = v110;
  MEMORY[0x277D82BD8](v1);
  v107 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v109(v2, v107, v108);
  swift_endAccess();

  v111 = swift_allocObject();
  *(v111 + 16) = v110;

  v113 = swift_allocObject();
  *(v113 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v113 + 24) = v111;

  MEMORY[0x277D82BE0](v112);
  v115 = swift_allocObject();
  *(v115 + 16) = v112;
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();
  v117 = swift_allocObject();
  *(v117 + 16) = 32;
  v118 = swift_allocObject();
  *(v118 + 16) = 8;
  v114 = swift_allocObject();
  *(v114 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
  *(v114 + 24) = v113;
  v119 = swift_allocObject();
  *(v119 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v119 + 24) = v114;
  v120 = swift_allocObject();
  *(v120 + 16) = 64;
  v121 = swift_allocObject();
  *(v121 + 16) = 8;
  v116 = swift_allocObject();
  *(v116 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v116 + 24) = v115;
  v122 = swift_allocObject();
  *(v122 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v122 + 24) = v116;
  _allocateUninitializedArray<A>(_:)();
  v123 = v3;

  *v123 = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[1] = v117;

  v123[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[3] = v118;

  v123[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[5] = v119;

  v123[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[7] = v120;

  v123[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[9] = v121;

  v123[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v123[11] = v122;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v124, v125))
  {
    v4 = v106[56];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v104 = createStorage<A>(capacity:type:)(1, v102, v102);
    v105 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v141 = buf;
    v142 = v104;
    v143 = v105;
    serialize(_:at:)(2, &v141);
    serialize(_:at:)(2, &v141);
    v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145 = v117;
    closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
    if (v4)
    {
    }

    v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145 = v118;
    closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
    v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145 = v119;
    closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
    v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145 = v120;
    closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
    v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145 = v121;
    closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
    v144 = partial apply for closure #1 in OSLogArguments.append(_:);
    v145 = v122;
    closure #1 in osLogInternal(_:log:type:)(&v144, &v141, &v142, &v143);
    _os_log_impl(&dword_269912000, v124, v125, "Received preferredUnits=%s for quantityType=%@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v104, 1, v102);
    destroyStorage<A>(_:count:)(v105, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

    v101 = 0;
  }

  else
  {

    v101 = v106[56];
  }

  v99 = v106[61];
  v98 = v106[60];
  v96 = v106[57];
  v94 = v106[51];
  v95 = v106[46];
  v97 = v106[44];
  MEMORY[0x277D82BD8](v124);
  v96(v94, v95);
  MEMORY[0x277D82BE0](v97);
  v106[42] = v97;
  v6 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v106 + 42, v110, v98, v6, v99);
  MEMORY[0x277D82BD8](v106[42]);
  v100 = v106[41];
  if (v100)
  {
    v79 = v106[53];
    v7 = v106[50];
    v78 = v106[46];
    v80 = v106[44];
    v106[43] = v100;
    v77 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v79(v7, v77, v78);
    swift_endAccess();
    MEMORY[0x277D82BE0](v100);
    v81 = swift_allocObject();
    *(v81 + 16) = v100;
    MEMORY[0x277D82BE0](v80);
    v83 = swift_allocObject();
    *(v83 + 16) = v80;
    oslog = Logger.logObject.getter();
    v93 = static os_log_type_t.debug.getter();
    v85 = swift_allocObject();
    *(v85 + 16) = 64;
    v86 = swift_allocObject();
    *(v86 + 16) = 8;
    v82 = swift_allocObject();
    *(v82 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v82 + 24) = v81;
    v87 = swift_allocObject();
    *(v87 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v87 + 24) = v82;
    v88 = swift_allocObject();
    *(v88 + 16) = 64;
    v89 = swift_allocObject();
    *(v89 + 16) = 8;
    v84 = swift_allocObject();
    *(v84 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v84 + 24) = v83;
    v90 = swift_allocObject();
    *(v90 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v90 + 24) = v84;
    _allocateUninitializedArray<A>(_:)();
    v91 = v8;

    *v91 = partial apply for closure #1 in OSLogArguments.append(_:);
    v91[1] = v85;

    v91[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v91[3] = v86;

    v91[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v91[5] = v87;

    v91[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v91[7] = v88;

    v91[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v91[9] = v89;

    v91[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v91[11] = v90;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v93))
    {
      v74 = static UnsafeMutablePointer.allocate(capacity:)();
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v75 = createStorage<A>(capacity:type:)(2, v73, v73);
      v76 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v136 = v74;
      v137 = v75;
      v138 = v76;
      serialize(_:at:)(2, &v136);
      serialize(_:at:)(2, &v136);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v85;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      if (v101)
      {
      }

      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v86;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v87;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v88;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v89;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v90;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      _os_log_impl(&dword_269912000, oslog, v93, "Retrieved preferred unit=%@ for quantityType=%@", v74, 0x16u);
      destroyStorage<A>(_:count:)(v75, 2, v73);
      destroyStorage<A>(_:count:)(v76, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v74, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v71 = v106[59];
    v70 = v106[57];
    v72 = v106[50];
    v69 = v106[46];
    MEMORY[0x277D82BD8](oslog);
    v70(v72, v69);

    MEMORY[0x277D82BD8](v71);

    v9 = *(v106[33] + 8);

    return v9(v100);
  }

  else
  {
    v53 = v106[53];
    v10 = v106[49];
    v52 = v106[46];
    v54 = v106[44];
    v51 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v53(v10, v51, v52);
    swift_endAccess();
    MEMORY[0x277D82BE0](v54);
    v56 = swift_allocObject();
    *(v56 + 16) = v54;

    v55 = swift_allocObject();
    *(v55 + 16) = v110;

    v58 = swift_allocObject();
    *(v58 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
    *(v58 + 24) = v55;

    log = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    v60 = swift_allocObject();
    *(v60 + 16) = 64;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v57 + 24) = v56;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v62 + 24) = v57;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v64 = swift_allocObject();
    *(v64 + 16) = 8;
    v59 = swift_allocObject();
    *(v59 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0;
    *(v59 + 24) = v58;
    v65 = swift_allocObject();
    *(v65 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v65 + 24) = v59;
    _allocateUninitializedArray<A>(_:)();
    v66 = v11;

    *v66 = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[1] = v60;

    v66[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[3] = v61;

    v66[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[5] = v62;

    v66[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[7] = v63;

    v66[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[9] = v64;

    v66[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v66[11] = v65;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v68))
    {
      v48 = static UnsafeMutablePointer.allocate(capacity:)();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v49 = createStorage<A>(capacity:type:)(1, v47, v47);
      v50 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v131 = v48;
      v132 = v49;
      v133 = v50;
      serialize(_:at:)(2, &v131);
      serialize(_:at:)(2, &v131);
      v134 = partial apply for closure #1 in OSLogArguments.append(_:);
      v135 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
      if (v101)
      {
      }

      v134 = partial apply for closure #1 in OSLogArguments.append(_:);
      v135 = v61;
      closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
      v134 = partial apply for closure #1 in OSLogArguments.append(_:);
      v135 = v62;
      closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
      v134 = partial apply for closure #1 in OSLogArguments.append(_:);
      v135 = v63;
      closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
      v134 = partial apply for closure #1 in OSLogArguments.append(_:);
      v135 = v64;
      closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
      v134 = partial apply for closure #1 in OSLogArguments.append(_:);
      v135 = v65;
      closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
      _os_log_impl(&dword_269912000, log, v68, "Failed to find quantityType=%@ in preferredUnits=%s", v48, 0x16u);
      destroyStorage<A>(_:count:)(v49, 1, v47);
      destroyStorage<A>(_:count:)(v50, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v48, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v27 = v106[59];
    v26 = v106[57];
    v24 = v106[49];
    v25 = v106[46];
    MEMORY[0x277D82BD8](log);
    v26(v24, v25);
    lazy protocol witness table accessor for type HealthKitLocalizationError and conformance HealthKitLocalizationError();
    v32 = swift_allocError();
    swift_willThrow();

    MEMORY[0x277D82BD8](v27);
    v30 = v106[53];
    v12 = v106[48];
    v29 = v106[46];
    v31 = v106[44];
    v13 = v32;
    v106[39] = v32;
    v28 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    v30(v12, v28, v29);
    swift_endAccess();
    MEMORY[0x277D82BE0](v31);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v14 = v32;
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    default argument 2 of OSLogInterpolation.appendInterpolation(_:privacy:attributes:)();

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = 64;
    v39 = swift_allocObject();
    *(v39 + 16) = 8;
    v34 = swift_allocObject();
    *(v34 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v34 + 24) = v33;
    v40 = swift_allocObject();
    *(v40 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v40 + 24) = v34;
    v41 = swift_allocObject();
    *(v41 + 16) = 64;
    v42 = swift_allocObject();
    *(v42 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for implicit closure #10 in getPreferredUnit(for:store:);
    *(v36 + 24) = v35;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:);
    *(v37 + 24) = v36;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v43 + 24) = v37;
    _allocateUninitializedArray<A>(_:)();
    v44 = v15;

    *v44 = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[1] = v38;

    v44[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[3] = v39;

    v44[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[5] = v40;

    v44[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[7] = v41;

    v44[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[9] = v42;

    v44[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[11] = v43;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v45, v46))
    {
      v21 = static UnsafeMutablePointer.allocate(capacity:)();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v22 = createStorage<A>(capacity:type:)(2, v20, v20);
      v23 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v126 = v21;
      v127 = v22;
      v128 = v23;
      serialize(_:at:)(2, &v126);
      serialize(_:at:)(2, &v126);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v38;
      closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v39;
      closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v40;
      closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v41;
      closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v42;
      closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
      v129 = partial apply for closure #1 in OSLogArguments.append(_:);
      v130 = v43;
      closure #1 in osLogInternal(_:log:type:)(&v129, &v126, &v127, &v128);
      _os_log_impl(&dword_269912000, v45, v46, "Failed to fetch preferredUnits for quantityType=%@ with error: %@", v21, 0x16u);
      destroyStorage<A>(_:count:)(v22, 2, v20);
      destroyStorage<A>(_:count:)(v23, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v21, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v18 = v106[57];
    v19 = v106[48];
    v17 = v106[46];
    MEMORY[0x277D82BD8](v45);
    v18(v19, v17);
    swift_willThrow();

    v16 = *(v106[33] + 8);

    return v16();
  }
}

Swift::String __swiftcall localizedUnitName(for:value:store:)(HKUnit a1, Swift::Double_optional value, HKHealthStore_optional store)
{
  v20 = *&value.is_nil;
  isa = store.value.super.isa;
  v22 = *&store.is_nil;
  v28 = a1.super.isa;
  v26 = *&value.is_nil;
  v27 = store.value.super.isa & 1;
  v25 = *&store.is_nil;
  MEMORY[0x277D82BE0](*&store.is_nil);
  v23 = v22;
  if (v22)
  {
    v24 = v23;
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v24 = NSDateFormatter.__allocating_init()();
  }

  v17 = v24;
  type metadata accessor for HKUnitPreferenceController();
  MEMORY[0x277D82BE0](v17);
  v18 = HKUnitPreferenceController.__allocating_init(healthStore:)(v17);
  if (isa)
  {
    v8 = [v18 localizedDisplayNameForUnit:a1.super.isa value:0];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v4;
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    v15 = v9;
    v16 = v10;
  }

  else
  {
    type metadata accessor for NSNumber();
    v11 = NSNumber.__allocating_init(value:)(v20).super.super.isa;
    v12 = [v18 localizedDisplayNameForUnit:a1.super.isa value:?];
    MEMORY[0x277D82BD8](v11);
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v3;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v17);
    v15 = v13;
    v16 = v14;
  }

  v5 = v15;
  v6 = v16;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t localizedUnitName(for:store:)(uint64_t a1, unint64_t a2)
{
  v12 = a1;
  v11 = a2;
  MEMORY[0x277D82BE0](a2);
  v9 = a2;
  if (a2)
  {
    v10 = v9;
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v10 = NSDateFormatter.__allocating_init()();
  }

  v4 = v10;
  type metadata accessor for HKUnitPreferenceController();
  MEMORY[0x277D82BE0](v4);
  v8 = HKUnitPreferenceController.__allocating_init(healthStore:)(v4);
  v3 = [v8 localizedDisplayNameForDisplayType_];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

uint64_t localizedPreferredUnitName(for:value:store:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 96) = a4;
  *(v4 + 25) = a3;
  *(v4 + 88) = a2;
  *(v4 + 80) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3 & 1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](localizedPreferredUnitName(for:value:store:), 0);
}

uint64_t localizedPreferredUnitName(for:value:store:)()
{
  v1 = v0[12];
  v6 = v1;
  v0[4] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[7] = v6;
  if (v0[7])
  {
    v7 = v5[7];
  }

  else
  {
    type metadata accessor for HKHealthStore();
    v7 = NSDateFormatter.__allocating_init()();
    if (v5[7])
    {
      outlined destroy of HealthKitPersistor(v5 + 7);
    }
  }

  v5[13] = v7;
  v5[8] = v7;
  MEMORY[0x277D82BE0](v7);
  v2 = swift_task_alloc();
  v5[14] = v2;
  *v2 = v5[4];
  v2[1] = localizedPreferredUnitName(for:value:store:);
  v3 = v5[10];

  return getPreferredUnit(for:store:)(v3, v7);
}

{
  fora.super.isa = *(v0 + 120);
  v1 = *(v0 + 104);
  store = v1;
  v6 = *(v0 + 25);
  value = *(v0 + 88);
  *(v0 + 32) = v0;
  *(v0 + 72) = fora;
  MEMORY[0x277D82BE0](v1);
  v11.is_nil = value;
  v10.is_nil = store;
  v10.value.super.isa = (v6 & 1);
  v2 = localizedUnitName(for:value:store:)(fora, v11, v10);
  MEMORY[0x277D82BD8](store);
  MEMORY[0x277D82BD8](fora.super.isa);
  MEMORY[0x277D82BD8](store);
  v3 = *(*(v0 + 32) + 8);

  return v3(v2._countAndFlagsBits, v2._object);
}

{
  v3 = *(v0 + 104);
  *(v0 + 32) = v0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t localizedPreferredUnitName(for:value:store:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 32) = *v2;
  *(v5 + 120) = a1;
  *(v5 + 128) = v1;

  if (v1)
  {
    v3 = localizedPreferredUnitName(for:value:store:);
  }

  else
  {

    v3 = localizedPreferredUnitName(for:value:store:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t implicit closure #3 in getPreferredUnit(for:store:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t HKHealthStore.query(quantityType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = v4;
  v5[11] = a4;
  v5[10] = a3;
  v5[9] = a2;
  v5[8] = a1;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[6] = 0;
  v5[7] = 0;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = v4;
  MEMORY[0x277D82BE0](v4);
  v6 = swift_task_alloc();
  *(v8 + 104) = v6;
  *v6 = *(v8 + 16);
  v6[1] = HKHealthStore.query(quantityType:start:end:);

  return getPreferredUnit(for:store:)(a2, v4);
}

uint64_t HKHealthStore.query(quantityType:start:end:)(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 112) = a1;
  *(v5 + 120) = v1;

  if (v1)
  {
    v3 = HKHealthStore.query(quantityType:start:end:);
  }

  else
  {

    v3 = HKHealthStore.query(quantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t HKHealthStore.query(quantityType:start:end:)()
{
  v10 = v0[14];
  v6 = v0[12];
  v8 = v0[11];
  v7 = v0[10];
  v9 = v0[9];
  v0[2] = v0;
  v0[7] = v10;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(quantityType:start:end:)", 0x1EuLL, 1);
  v0[16] = v1._object;
  MEMORY[0x277D82BE0](v6);
  MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BE0](v10);
  v12 = swift_task_alloc();
  v0[17] = v12;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = v10;
  v2 = swift_task_alloc();
  v11[18] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  *v2 = v11[2];
  v2[1] = HKHealthStore.query(quantityType:start:end:);
  v4 = v11[8];

  return MEMORY[0x2822008A0](v4, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in HKHealthStore.query(quantityType:start:end:), v12, v3);
}

{
  v7 = *v1;
  v7[2] = *v1;
  v7[19] = v0;

  if (v0)
  {
    v2 = HKHealthStore.query(quantityType:start:end:);
  }

  else
  {
    v6 = v7[14];
    v4 = v7[12];
    v5 = v7[9];

    v2 = HKHealthStore.query(quantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = *(v0 + 112);
  *(v0 + 16) = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

{
  v1 = *(v0 + 96);
  *(v0 + 16) = v0;
  MEMORY[0x277D82BD8](v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

{
  v5 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  MEMORY[0x277D82BD8](v5);
  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t closure #1 in HKHealthStore.query(quantityType:start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a1;
  v75 = a2;
  v38 = a3;
  v39 = a4;
  v70 = a5;
  v63 = a6;
  v68 = partial apply for closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:);
  v85 = 0;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v78 = 0;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
  v54 = *(v58 - 8);
  v55 = v58 - 8;
  v50 = v54;
  v51 = *(v54 + 64);
  v37 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v7);
  v57 = &v36 - v37;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v40 = *(v48 - 8);
  v52 = v40;
  v53 = *(v40 + 64);
  v41 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48, v38);
  v62 = &v36 - v41;
  v42 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v36 - v41, v8);
  v72 = &v36 - v42;
  v43 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10);
  v74 = &v36 - v43;
  v44 = (v53 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12);
  v77 = &v36 - v44;
  v85 = &v36 - v44;
  v84 = v49;
  v83 = a2;
  v82 = v13;
  v81 = v14;
  v80 = v15;
  v79 = v16;
  v45 = v17[12];
  v46 = v17[16];
  v47 = v17[20];
  v18 = HKHealthStore.queryParameters(start:end:)(&v36 - v44, v13, v14);
  v19 = v46;
  v20 = v47;
  v21 = v77;
  v66 = v22;
  *&v77[v45] = v18;
  *&v21[v19] = v23;
  *&v21[v20] = v22;
  type metadata accessor for HKSampleQuery();
  MEMORY[0x277D82BE0](v70);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v77, v74);
  v65 = *&v74[*(v48 + 48)];
  v73 = *&v74[*(v48 + 64)];
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v77, v72);
  v71 = *&v72[*(v48 + 48)];
  v67 = *&v72[*(v48 + 64)];
  (*(v54 + 16))(v57, v49, v58);
  MEMORY[0x277D82BE0](v70);
  MEMORY[0x277D82BE0](v75);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v77, v62);
  MEMORY[0x277D82BE0](v63);
  v56 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v59 = (v56 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 8 + *(v52 + 80)) & ~*(v52 + 80);
  v64 = (v61 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  (*(v54 + 32))(v69 + v56, v57, v58);
  v24 = v60;
  v25 = v61;
  v26 = v69;
  v27 = v75;
  v28 = v62;
  *(v69 + v59) = v70;
  *(v26 + v24) = v27;
  outlined init with take of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v28, (v26 + v25));
  v29 = v65;
  v30 = v66;
  v31 = v67;
  v32 = v68;
  v33 = v69;
  v34 = v70;
  *(v69 + v64) = v63;
  v76 = HKSampleQuery.__allocating_init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(v34, v29, v30, v31, v32, v33);
  MEMORY[0x277D82BD8](v71);
  outlined destroy of DateInterval?(v72);

  outlined destroy of DateInterval?(v74);
  v78 = v76;
  [v75 executeQuery_];
  MEMORY[0x277D82BD8](v76);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v77);
}

uint64_t HKHealthStore.queryParameters(start:end:)(void *a1, uint64_t a2, const void *a3)
{
  v31 = a1;
  v39 = a2;
  v40 = a3;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v45 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMd, &_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMR);
  v33 = (*(*(v32 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32, v4);
  v34 = &v20 - v33;
  v35 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7);
  v36 = &v20 - v35;
  v53 = &v20 - v35;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v40);
  v38 = &v20 - v37;
  v52 = &v20 - v37;
  v51 = v8;
  v50 = v9;
  v49 = v3;
  closure #1 in HKHealthStore.queryParameters(start:end:)(v8, v9, &v20 - v37);
  v44 = closure #2 in HKHealthStore.queryParameters(start:end:)(v39, v40);
  v48 = v44;
  v41 = type metadata accessor for NSSortDescriptor();
  v42 = *MEMORY[0x277CCCD50];
  MEMORY[0x277D82BE0](v42);
  v10.value._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  NSSortDescriptor.__allocating_init(key:ascending:)(0, v10, 0);
  v43 = v11;
  MEMORY[0x277D82BD8](v42);
  v47 = v43;
  v46 = v44;
  v30 = v44 == 0;
  v29 = v44 == 0;
  v25 = v29;
  v45 = v29;
  v20 = v32[12];
  v23 = v32[16];
  v24 = v32[20];
  outlined init with copy of DateInterval?(v38, v36);
  MEMORY[0x277D82BE0](v44);
  *&v36[v20] = v44;
  v22 = _allocateUninitializedArray<A>(_:)();
  v21 = v12;
  MEMORY[0x277D82BE0](v43);
  *v21 = v43;
  _finalizeUninitializedArray<A>(_:)();
  v13 = v24;
  v14 = v25;
  v15 = v34;
  v17 = v16;
  v18 = v36;
  *&v36[v23] = v17;
  *&v18[v13] = v14;
  outlined init with copy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(v18, v15);
  v28 = *&v34[v32[12]];
  v26 = *&v34[v32[16]];
  v27 = *&v34[v32[20]];
  outlined init with take of DateInterval?(v34, v31);
  outlined destroy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(v36);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  outlined destroy of DateInterval?(v38);
  return v28;
}

uint64_t closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, const void *a7, void *a8)
{
  v194 = a8;
  v193 = a7;
  v192 = a6;
  v191 = a5;
  v190 = a4;
  v204 = a3;
  v195 = a2;
  v189 = a1;
  v183 = 0;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v228 = 0;
  v227 = 0;
  v226 = 0;
  v225 = 0;
  v224 = 0;
  v178 = 0;
  v217 = 0;
  v211 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  v179 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v181 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  v180 = &v65[-v181];
  MEMORY[0x28223BE20](&v65[-v181], v10);
  v182 = &v65[-v181];
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v185 = *(v184 - 8);
  v186 = v185;
  v187 = (*(v185 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v183, v184);
  v188 = &v65[-v187];
  v232 = &v65[-v187];
  v196 = type metadata accessor for Logger();
  v197 = *(v196 - 8);
  v198 = v197;
  v200 = *(v197 + 64);
  MEMORY[0x28223BE20](v204, v195);
  v202 = (v200 + 15) & 0xFFFFFFFFFFFFFFF0;
  v199 = &v65[-v202];
  MEMORY[0x28223BE20](v11, v12);
  v201 = &v65[-v202];
  MEMORY[0x28223BE20](v13, v14);
  v203 = &v65[-v202];
  v231 = v15;
  v230 = v16;
  v229 = v17;
  v228 = v18;
  v227 = v19;
  v226 = v20;
  v225 = v21;
  v224 = v22;
  v23 = v17;
  if (v204)
  {
    v177 = v204;
    v24 = v203;
    v157 = v204;
    v211 = v204;
    v155 = Logger.wellnessIntents.unsafeMutableAddressor();
    v163 = 32;
    v156 = &v210;
    swift_beginAccess();
    (*(v198 + 16))(v24, v155, v196);
    swift_endAccess();
    v25 = v157;
    v164 = 7;
    v165 = swift_allocObject();
    *(v165 + 16) = v157;
    v175 = Logger.logObject.getter();
    v158 = v175;
    v174 = static os_log_type_t.error.getter();
    v159 = v174;
    v160 = 17;
    v168 = swift_allocObject();
    v161 = v168;
    *(v168 + 16) = 64;
    v169 = swift_allocObject();
    v162 = v169;
    *(v169 + 16) = 8;
    v26 = swift_allocObject();
    v27 = v165;
    v166 = v26;
    *(v26 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v166;
    v172 = v28;
    v167 = v28;
    *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v28 + 24) = v29;
    v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v170 = _allocateUninitializedArray<A>(_:)();
    v171 = v30;

    v31 = v168;
    v32 = v171;
    *v171 = partial apply for closure #1 in OSLogArguments.append(_:);
    v32[1] = v31;

    v33 = v169;
    v34 = v171;
    v171[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v34[3] = v33;

    v35 = v171;
    v36 = v172;
    v171[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v35[5] = v36;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v175, v174))
    {
      v38 = v178;
      v148 = static UnsafeMutablePointer.allocate(capacity:)();
      v145 = v148;
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v151 = 1;
      v149 = createStorage<A>(capacity:type:)(1, v146, v146);
      v147 = v149;
      v150 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v209[0] = v148;
      v208 = v149;
      v207 = v150;
      v152 = v209;
      serialize(_:at:)(2, v209);
      serialize(_:at:)(v151, v152);
      v205 = partial apply for closure #1 in OSLogArguments.append(_:);
      v206 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v205, v152, &v208, &v207);
      v153 = v38;
      v154 = v38;
      if (v38)
      {
        v143 = 0;

        __break(1u);
      }

      else
      {
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v162;
        closure #1 in osLogInternal(_:log:type:)(&v205, v209, &v208, &v207);
        v141 = 0;
        v142 = 0;
        v205 = partial apply for closure #1 in OSLogArguments.append(_:);
        v206 = v167;
        closure #1 in osLogInternal(_:log:type:)(&v205, v209, &v208, &v207);
        v139 = 0;
        v140 = 0;
        _os_log_impl(&dword_269912000, v158, v159, "Error while querying HealthKit for quantity samples: %@", v145, 0xCu);
        destroyStorage<A>(_:count:)(v147, 1, v146);
        destroyStorage<A>(_:count:)(v150, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v145, MEMORY[0x277D84B78]);

        v144 = v139;
      }
    }

    else
    {
      v39 = v178;

      v144 = v39;
    }

    v137 = v144;

    (*(v198 + 8))(v203, v196);
    v40 = v157;
    v209[1] = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    return v137;
  }

  else
  {

    if (v195)
    {
      v176 = v195;
      v134 = v195;
      v132 = 0;
      v133 = type metadata accessor for HKSample();
      type metadata accessor for HKQuantitySample();
      v135 = _arrayConditionalCast<A, B>(_:)();

      v136 = v135;
    }

    else
    {
      v136 = 0;
    }

    v131 = v136;
    if (v136)
    {
      v130 = v131;
      v108 = v131;
      v217 = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
      HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(v193, v108, v194, v182);
      v54 = (*(v186 + 48))(v182, 1, v184);
      if (v54 == 1)
      {
        v55 = v199;
        outlined destroy of Statistics<Double>?(v182);
        v100 = Logger.wellnessIntents.unsafeMutableAddressor();
        v101 = &v216;
        v104 = 0;
        swift_beginAccess();
        (*(v198 + 16))(v55, v100, v196);
        swift_endAccess();
        v106 = Logger.logObject.getter();
        v102 = v106;
        v105 = static os_log_type_t.debug.getter();
        v103 = v105;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        v107 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v106, v105))
        {
          v57 = v178;
          v91 = static UnsafeMutablePointer.allocate(capacity:)();
          v87 = v91;
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v89 = 0;
          v92 = createStorage<A>(capacity:type:)(0, v88, v88);
          v90 = v92;
          v93 = createStorage<A>(capacity:type:)(v89, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          v215 = v91;
          v214 = v92;
          v213 = v93;
          v94 = 0;
          v95 = &v215;
          serialize(_:at:)(0, &v215);
          serialize(_:at:)(v94, v95);
          v212 = v107;
          v96 = v65;
          MEMORY[0x28223BE20](v65, v58);
          v97 = &v65[-48];
          *&v65[-32] = v59;
          *&v65[-24] = &v214;
          *&v65[-16] = &v213;
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
          lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
          Sequence.forEach(_:)();
          v99 = v57;
          if (v57)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_269912000, v102, v103, "Empty array of quantity samples.", v87, 2u);
            v85 = 0;
            destroyStorage<A>(_:count:)(v90, 0, v88);
            destroyStorage<A>(_:count:)(v93, v85, MEMORY[0x277D84F70] + 8);
            MEMORY[0x26D6497C0](v87, MEMORY[0x277D84B78]);

            v86 = v99;
          }
        }

        else
        {

          v86 = v178;
        }

        v84 = v86;

        (*(v198 + 8))(v199, v196);
        (*(v186 + 56))(v180, 1, 1, v184);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();

        return v84;
      }

      else
      {
        outlined init with take of Statistics<Double>(v182, v188);
        v56 = outlined init with copy of Statistics<Double>(v188, v180);
        (*(v186 + 56))(v180, 0, 1, v184, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
        outlined destroy of Statistics<Double>(v188);

        return v178;
      }
    }

    else
    {
      v41 = v201;
      v109 = Logger.wellnessIntents.unsafeMutableAddressor();
      v113 = 32;
      v117 = 32;
      v110 = &v223;
      swift_beginAccess();
      (*(v198 + 16))(v41, v109, v196);
      swift_endAccess();
      v42 = v191;
      v118 = 7;
      v119 = swift_allocObject();
      *(v119 + 16) = v191;
      v129 = Logger.logObject.getter();
      v111 = v129;
      v128 = static os_log_type_t.error.getter();
      v112 = v128;
      v114 = 17;
      v122 = swift_allocObject();
      v115 = v122;
      *(v122 + 16) = v113;
      v123 = swift_allocObject();
      v116 = v123;
      *(v123 + 16) = 8;
      v43 = swift_allocObject();
      v44 = v119;
      v120 = v43;
      *(v43 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v120;
      v126 = v45;
      v121 = v45;
      *(v45 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v45 + 24) = v46;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v124 = _allocateUninitializedArray<A>(_:)();
      v125 = v47;

      v48 = v122;
      v49 = v125;
      *v125 = partial apply for closure #1 in OSLogArguments.append(_:);
      v49[1] = v48;

      v50 = v123;
      v51 = v125;
      v125[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v51[3] = v50;

      v52 = v125;
      v53 = v126;
      v125[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v52[5] = v53;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v129, v128))
      {
        v60 = v178;
        v77 = static UnsafeMutablePointer.allocate(capacity:)();
        v74 = v77;
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v78 = createStorage<A>(capacity:type:)(0, v75, v75);
        v76 = v78;
        v80 = 1;
        v79 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v222[0] = v77;
        v221 = v78;
        v220 = v79;
        v81 = v222;
        serialize(_:at:)(2, v222);
        serialize(_:at:)(v80, v81);
        v218 = partial apply for closure #1 in OSLogArguments.append(_:);
        v219 = v115;
        closure #1 in osLogInternal(_:log:type:)(&v218, v81, &v221, &v220);
        v82 = v60;
        v83 = v60;
        if (v60)
        {
          v72 = 0;

          __break(1u);
        }

        else
        {
          v218 = partial apply for closure #1 in OSLogArguments.append(_:);
          v219 = v116;
          closure #1 in osLogInternal(_:log:type:)(&v218, v222, &v221, &v220);
          v70 = 0;
          v71 = 0;
          v218 = partial apply for closure #1 in OSLogArguments.append(_:);
          v219 = v121;
          closure #1 in osLogInternal(_:log:type:)(&v218, v222, &v221, &v220);
          v68 = 0;
          v69 = 0;
          _os_log_impl(&dword_269912000, v111, v112, "%s samples could not be converted to [HKQuantitySample]. Programmer Error.", v74, 0xCu);
          destroyStorage<A>(_:count:)(v76, 0, v75);
          destroyStorage<A>(_:count:)(v79, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v74, MEMORY[0x277D84B78]);

          v73 = v68;
        }
      }

      else
      {
        v61 = v178;

        v73 = v61;
      }

      v67 = v73;

      (*(v198 + 8))(v201, v196);
      lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
      v66 = 0;
      v62 = swift_allocError();
      *v63 = v66;
      v222[1] = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
      CheckedContinuation.resume(throwing:)();
      return v67;
    }
  }
}

uint64_t implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(void *a1)
{
  v1 = a1;
  v4 = _convertErrorToNSError(_:)();

  return v4;
}

uint64_t implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(void *a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = [a1 identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t HKHealthStore.computeStatistics(queryDateRange:samples:unit:)@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v115 = a3;
  v117 = a2;
  v116 = a1;
  v99 = a4;
  v126 = 0;
  v184 = 0;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v177 = 0;
  v175 = 0;
  v167 = 0;
  v164 = 0;
  v163 = 0;
  v161 = 0;
  v155 = 0;
  v144 = 0;
  v143 = 0;
  v139 = 0.0;
  v138 = 0.0;
  v137 = 0;
  v136 = 0;
  v100 = type metadata accessor for Logger();
  v101 = *(v100 - 8);
  v102 = v101;
  MEMORY[0x28223BE20](v100 - 8, v100);
  v103 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v104 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6 - 8, v7);
  v105 = &v38 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v107 = *(v106 - 8);
  v108 = v107;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v126, v106);
  v110 = &v38 - v109;
  v184 = &v38 - v109;
  v111 = *(*(type metadata accessor for Date() - 8) + 64);
  MEMORY[0x28223BE20](v126, v8);
  v113 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
  v112 = &v38 - v113;
  MEMORY[0x28223BE20](v9, &v38 - v113);
  v114 = &v38 - v113;
  v118 = type metadata accessor for DateInterval();
  v119 = *(v118 - 8);
  v120 = v119;
  v121 = *(v119 + 64);
  MEMORY[0x28223BE20](v116, v117);
  v123 = (v121 + 15) & 0xFFFFFFFFFFFFFFF0;
  v122 = &v38 - v123;
  MEMORY[0x28223BE20](v10, v11);
  v124 = &v38 - v123;
  v183 = &v38 - v123;
  v182 = v12;
  v181 = v13;
  v180 = v14;
  v179 = v4;
  v178 = v13;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
  v125 = v127;
  v128 = lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  v15 = Sequence.sorted(by:)();
  v129 = 0;
  v130 = v15;
  v96 = v15;
  v177 = v15;
  v176 = v117;
  v16 = Sequence.sorted(by:)();
  v97 = 0;
  v98 = v16;
  v93 = v16;
  v175 = v16;
  v174 = v96;
  v94 = lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  Collection.first.getter();
  v95 = v173;
  if (!v173)
  {
LABEL_19:
    v31 = v103;
    v55 = Logger.wellnessIntents.unsafeMutableAddressor();
    v56 = &v172;
    v59 = 0;
    swift_beginAccess();
    (*(v102 + 16))(v31, v55, v100);
    swift_endAccess();
    v61 = Logger.logObject.getter();
    v57 = v61;
    v60 = static os_log_type_t.debug.getter();
    v58 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v62 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v61, v60))
    {
      v32 = v97;
      v46 = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = v46;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v44 = 0;
      v47 = createStorage<A>(capacity:type:)(0, v43, v43);
      v45 = v47;
      v48 = createStorage<A>(capacity:type:)(v44, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v171 = v46;
      v170 = v47;
      v169 = v48;
      v49 = 0;
      v50 = &v171;
      serialize(_:at:)(0, &v171);
      serialize(_:at:)(v49, v50);
      v168 = v62;
      v51 = &v38;
      MEMORY[0x28223BE20](&v38, v33);
      v52 = &v38 - 6;
      v36[0] = v34;
      v36[1] = &v170;
      v37 = &v169;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v54 = v32;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v57, v58, "Empty array of quantity samples.", v42, 2u);
        v40 = 0;
        destroyStorage<A>(_:count:)(v45, 0, v43);
        destroyStorage<A>(_:count:)(v48, v40, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v42, MEMORY[0x277D84B78]);

        v41 = v54;
      }
    }

    else
    {

      v41 = v97;
    }

    v39 = v41;

    (*(v102 + 8))(v103, v100);
    (*(v108 + 56))(v99, 1, 1, v106);

    return v39;
  }

  v92 = v95;
  v90 = v95;
  v167 = v95;
  v166 = v93;
  lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]();
  BidirectionalCollection.last.getter();
  v91 = v165;
  if (!v165)
  {

    goto LABEL_19;
  }

  v89 = v91;
  v17 = v97;
  v81 = v91;
  v164 = v91;
  v18 = v90;
  v83 = [v90 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v81;
  v82 = [v81 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.init(start:end:)();
  v84 = type metadata accessor for HKQuantitySample();
  v85 = MEMORY[0x26D6494A0](v117, v84);
  v163 = v85;
  v162 = v117;
  v20 = v115;
  v86 = &v38;
  MEMORY[0x28223BE20](&v38, v21);
  v37 = v22;
  v26 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #3 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:), v36, v23, MEMORY[0x277D839F8], MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);
  v87 = v17;
  v88 = v26;
  if (v17)
  {

    __break(1u);
  }

  else
  {
    v78 = v88;

    v161 = v78;
    v160 = v78;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    v79 = v80;
    lazy protocol witness table accessor for type [Double] and conformance [A]();
    BidirectionalCollection.last.getter();
    v156 = v158;
    v157 = v159;
    if (v159)
    {
      v77 = 0;
    }

    else
    {
      v77 = v156;
    }

    v75 = v77;
    v155 = v77;
    v152 = v78;
    v76 = lazy protocol witness table accessor for type [Double] and conformance [A]();
    Sequence<>.min()();
    v150 = v153;
    v151 = v154;
    if (v154)
    {
      v74 = 0;
    }

    else
    {
      v74 = v150;
    }

    v73 = v74;
    v147 = v78;
    Sequence<>.max()();
    v145 = v148;
    v146 = v149;
    if (v149)
    {
      v72 = 0;
    }

    else
    {
      v72 = v145;
    }

    v27 = v87;
    v70 = v72;
    v143 = v73;
    v144 = v72;
    v141 = v78;
    v140 = 0;
    Sequence.reduce<A>(_:_:)();
    v71 = v27;
    if (!v27)
    {
      v65 = v142;
      v139 = v142;
      v66 = MEMORY[0x277D839F8];
      v28 = MEMORY[0x26D6494A0](v78);
      v64 = v65 / v28;
      v138 = v64;
      v63 = [v115 unitString];
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v29;
      v136 = v67;
      v137 = v29;

      outlined init with copy of DateInterval?(v116, v105);
      (*(v120 + 16))(v122, v124, v118);
      v135 = v73;
      v134 = v70;
      v133 = v75;
      v132 = v64;
      v131 = v65;
      Statistics.init(queryDateRange:dataDateRange:sampleCount:unit:valueRange:latestValue:averageValue:totalValue:)(v105, v122, v85, v67, v68, &v135, &v134, &v133, v110, &v132, &v131, v66);
      v30 = outlined init with copy of Statistics<Double>(v110, v99);
      (*(v108 + 56))(v99, 0, 1, v106, v30);
      outlined destroy of Statistics<Double>(v110);

      (*(v120 + 8))(v124, v118);

      return v71;
    }
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[14] = v7;
  v8[13] = a7;
  v8[12] = a6;
  v8[11] = a4;
  v8[10] = a3;
  v8[9] = a2;
  v8[8] = a1;
  v8[2] = v8;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v8[6] = 0;
  v8[7] = 0;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = v7;
  return MEMORY[0x2822009F8](HKHealthStore.query<A>(categoryType:start:end:enumerationType:), 0);
}

uint64_t HKHealthStore.query<A>(categoryType:start:end:enumerationType:)()
{
  v7 = v0[14];
  v6 = v0[13];
  v11 = v0[12];
  v9 = v0[11];
  v8 = v0[10];
  v10 = v0[9];
  v0[2] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(categoryType:start:end:enumerationType:)", 0x2EuLL, 1);
  v0[15] = v1._object;
  MEMORY[0x277D82BE0](v7);
  MEMORY[0x277D82BE0](v10);
  v13 = swift_task_alloc();
  v0[16] = v13;
  v13[2] = v11;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v13[6] = v9;
  v13[7] = v10;
  v2 = swift_task_alloc();
  v12[17] = v2;
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  v3 = type metadata accessor for Optional();
  *v2 = v12[2];
  v2[1] = HKHealthStore.query<A>(categoryType:start:end:enumerationType:);
  v4 = v12[8];

  return MEMORY[0x2822008A0](v4, 0, 0, v1._countAndFlagsBits, v1._object, partial apply for closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:), v13, v3);
}

{
  v6 = *v1;
  v6[2] = *v1;
  v6[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](HKHealthStore.query<A>(categoryType:start:end:enumerationType:), 0);
  }

  else
  {
    v4 = v6[14];
    v5 = v6[9];

    v2 = *(v6[2] + 8);

    return v2();
  }
}

{
  v3 = v0[14];
  v4 = v0[9];
  v0[2] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  v1 = *(v0[2] + 8);

  return v1();
}

uint64_t closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a1;
  v70 = a2;
  v38 = a3;
  v39 = a4;
  v65 = a5;
  v52 = a6;
  v53 = a7;
  v36[1] = 0;
  v63 = partial apply for closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:);
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v80 = a6;
  v36[2] = 255;
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  v36[3] = type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v47 = 0;
  v58 = type metadata accessor for CheckedContinuation();
  v54 = *(v58 - 8);
  v55 = v58 - 8;
  v50 = v54;
  v51 = *(v54 + 64);
  v37 = (v51 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v58, v8);
  v57 = v36 - v37;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v42 = *(*(v48 - 8) + 64);
  v40 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v48, v38);
  v67 = v36 - v40;
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10);
  v69 = v36 - v41;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12);
  v72 = v36 - v43;
  v79 = v36 - v43;
  v78 = v49;
  v77 = a2;
  v76 = v13;
  v75 = v14;
  v74 = v15;
  v44 = v16[12];
  v45 = v16[16];
  v46 = v16[20];
  v17 = HKHealthStore.queryParameters(start:end:)(v36 - v43, v13, v14);
  v18 = v45;
  v19 = v46;
  v20 = v72;
  v61 = v21;
  *&v72[v44] = v17;
  *&v20[v18] = v22;
  *&v20[v19] = v21;
  type metadata accessor for HKSampleQuery();
  MEMORY[0x277D82BE0](v65);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v72, v69);
  v60 = *&v69[*(v48 + 48)];
  v68 = *&v69[*(v48 + 64)];
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v72, v67);
  v66 = *&v67[*(v48 + 48)];
  v62 = *&v67[*(v48 + 64)];
  (*(v54 + 16))(v57, v49, v58);
  MEMORY[0x277D82BE0](v65);
  v56 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v59 = (v56 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v24 = v53;
  v25 = v54;
  v26 = v56;
  v27 = v57;
  v28 = v58;
  v64 = v23;
  *(v23 + 16) = v52;
  *(v23 + 24) = v24;
  (*(v25 + 32))(v23 + v26, v27, v28);
  v29 = v60;
  v30 = v61;
  v31 = v62;
  v32 = v63;
  v33 = v64;
  v34 = v65;
  *(v64 + v59) = v65;
  v71 = HKSampleQuery.__allocating_init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(v34, v29, v30, v31, v32, v33);
  MEMORY[0x277D82BD8](v66);
  outlined destroy of DateInterval?(v67);

  outlined destroy of DateInterval?(v69);
  v73 = v71;
  [v70 executeQuery_];
  MEMORY[0x277D82BD8](v71);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v72);
}

void closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v113 = a1;
  v116 = a2;
  v122 = a3;
  v114 = a4;
  v115 = a5;
  v104 = a6;
  v82 = a7;
  v89 = 0;
  v83 = partial apply for implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v84 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v85 = partial apply for closure #1 in OSLogArguments.append(_:);
  v86 = partial apply for closure #1 in OSLogArguments.append(_:);
  v87 = partial apply for closure #1 in OSLogArguments.append(_:);
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v88 = 0;
  v128 = 0;
  v124 = 0;
  v142 = a6;
  v90 = 255;
  v93 = type metadata accessor for Date();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v105 = 0;
  v91 = type metadata accessor for Optional();
  v92 = (*(*(v91 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v104);
  v94 = v38 - v92;
  v95 = *(v93 - 8);
  v96 = v93 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v99 = v38 - v97;
  v100 = *(TupleTypeMetadata2 - 8);
  v101 = TupleTypeMetadata2 - 8;
  v102 = (*(v100 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10);
  v103 = v38 - v102;
  v141 = v38 - v102;
  v106 = type metadata accessor for Optional();
  v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105, v11);
  v108 = v38 - v107;
  v109 = *(v12 - 8);
  v110 = v12 - 8;
  v111 = (*(v109 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v38 - v107);
  v112 = v38 - v111;
  v140 = v38 - v111;
  v117 = type metadata accessor for Logger();
  v118 = *(v117 - 8);
  v119 = v117 - 8;
  v120 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v122, v116);
  v121 = v38 - v120;
  v139 = v14;
  v138 = v15;
  v137 = v16;
  v136 = v17;
  v135 = v18;
  v19 = v16;
  if (v122)
  {
    v81 = v122;
    v79 = v122;
    v124 = v122;
    v20 = v122;
    v78 = &v123;
    v123 = v79;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
  }

  else
  {

    if (v116)
    {
      v80 = v116;
      v75 = v116;
      v126 = v116;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
      lazy protocol witness table accessor for type [HKSample] and conformance [A]();
      Collection.first.getter();
      v76 = v125;

      v77 = v76;
    }

    else
    {
      v77 = 0;
    }

    v73 = v77;
    if (v77)
    {
      v72 = v73;
      v69 = v73;
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      v70 = v21;
      if (v21)
      {
        v68 = v70;
      }

      else
      {
        MEMORY[0x277D82BD8](v69);
        v68 = 0;
      }

      v71 = v68;
    }

    else
    {
      v71 = 0;
    }

    v67 = v71;
    if (v71)
    {
      v66 = v67;
      v50 = v67;
      v128 = v67;
      v127[1] = [v67 value];
      dispatch thunk of RawRepresentable.init(rawValue:)();
      v34 = (*(v109 + 48))(v108, 1, v104);
      if (v34 == 1)
      {
        outlined destroy of A?(v108, v104);
        lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
        v35 = swift_allocError();
        *v36 = 1;
        v49 = v127;
        v127[0] = v35;
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
        type metadata accessor for CheckedContinuation();
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        (*(v109 + 32))(v112, v108, v104);
        v47 = v103 + *(TupleTypeMetadata2 + 48);
        (*(v109 + 16))();
        MEMORY[0x277D82BE0](v50);
        v48 = [v50 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v95 + 32))(v47, v99, v93);
        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](v48);
        outlined init with copy of (value: A, startDate: Date)(v103, v94, v104, TupleTypeMetadata2);
        (*(v100 + 56))(v94, 0, 1, TupleTypeMetadata2);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
        type metadata accessor for CheckedContinuation();
        CheckedContinuation.resume(returning:)();
        outlined destroy of (value: A, startDate: Date)(v103, v104, TupleTypeMetadata2);
        (*(v109 + 8))(v112, v104);
      }

      MEMORY[0x277D82BD8](v50);
    }

    else
    {
      v22 = v121;
      v51 = Logger.wellnessIntents.unsafeMutableAddressor();
      v52 = &v134;
      v54 = 32;
      swift_beginAccess();
      (*(v118 + 16))(v22, v51, v117);
      swift_endAccess();
      MEMORY[0x277D82BE0](v115);
      v55 = 7;
      v56 = swift_allocObject();
      *(v56 + 16) = v115;
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.debug.getter();
      v53 = 17;
      v58 = swift_allocObject();
      *(v58 + 16) = 32;
      v59 = swift_allocObject();
      *(v59 + 16) = 8;
      v23 = swift_allocObject();
      v24 = v56;
      v57 = v23;
      *(v23 + 16) = v83;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v57;
      v61 = v25;
      *(v25 + 16) = v84;
      *(v25 + 24) = v26;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v60 = _allocateUninitializedArray<A>(_:)();
      v62 = v27;

      v28 = v58;
      v29 = v62;
      *v62 = v85;
      v29[1] = v28;

      v30 = v59;
      v31 = v62;
      v62[2] = v86;
      v31[3] = v30;

      v32 = v61;
      v33 = v62;
      v62[4] = v87;
      v33[5] = v32;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v64, v65))
      {
        v37 = v88;
        v40 = static UnsafeMutablePointer.allocate(capacity:)();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v41 = createStorage<A>(capacity:type:)(0, v39, v39);
        v42 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        v43 = &v133;
        v133 = v40;
        v44 = &v132;
        v132 = v41;
        v45 = &v131;
        v131 = v42;
        serialize(_:at:)(2, &v133);
        serialize(_:at:)(1, v43);
        v129 = v85;
        v130 = v58;
        closure #1 in osLogInternal(_:log:type:)(&v129, v43, v44, v45);
        v46 = v37;
        if (v37)
        {

          __break(1u);
        }

        else
        {
          v129 = v86;
          v130 = v59;
          closure #1 in osLogInternal(_:log:type:)(&v129, &v133, &v132, &v131);
          v38[1] = 0;
          v129 = v87;
          v130 = v61;
          closure #1 in osLogInternal(_:log:type:)(&v129, &v133, &v132, &v131);
          _os_log_impl(&dword_269912000, v64, v65, "No samples found for %s", v40, 0xCu);
          destroyStorage<A>(_:count:)(v41, 0, v39);
          destroyStorage<A>(_:count:)(v42, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v40, MEMORY[0x277D84B78]);
        }
      }

      else
      {
      }

      MEMORY[0x277D82BD8](v64);
      (*(v118 + 8))(v121, v117);
      (*(v100 + 56))(v94, 1, 1, TupleTypeMetadata2);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
      type metadata accessor for CheckedContinuation();
      CheckedContinuation.resume(returning:)();
    }
  }
}

uint64_t HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[42] = v6;
  v7[41] = a6;
  v7[40] = a5;
  v7[39] = a4;
  v7[38] = a3;
  v7[37] = a2;
  v7[36] = a1;
  v7[21] = v7;
  v7[22] = 0;
  v7[23] = 0;
  v7[24] = 0;
  v7[25] = 0;
  v7[26] = 0;
  v7[27] = 0;
  v7[29] = 0;
  v7[32] = 0;
  v7[35] = 0;
  v8 = type metadata accessor for Logger();
  v7[43] = v8;
  v7[44] = *(v8 - 8);
  v7[45] = swift_task_alloc();
  v7[22] = a2;
  v7[23] = a3;
  v7[24] = a4;
  v7[25] = a5;
  v7[26] = a6;
  v7[27] = v6;

  return MEMORY[0x2822009F8](HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), 0);
}

uint64_t HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)()
{
  v8 = *(v0 + 336);
  v5 = *(v0 + 312);
  v3 = *(v0 + 304);
  *(v0 + 168) = v0;
  *(v0 + 368) = type metadata accessor for HKQuantityType();
  _allocateUninitializedArray<A>(_:)();
  v4 = v1;
  MEMORY[0x277D82BE0](v3);
  *v4 = v3;
  MEMORY[0x277D82BE0](v5);
  v4[1] = v5;
  _finalizeUninitializedArray<A>(_:)();
  *(v0 + 376) = lazy protocol witness table accessor for type HKQuantityType and conformance NSObject();
  Set.init(arrayLiteral:)();
  isa = Set._bridgeToObjectiveC()().super.isa;
  *(v0 + 384) = isa;

  *(v0 + 16) = *(v0 + 168);
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMd, &_sSccySDySo14HKQuantityTypeCSo6HKUnitCGs5Error_pGMR);
  *(v0 + 112) = v6;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSDictionary, @unowned NSError?) -> () with result type [HKQuantityType : HKUnit];
  *(v0 + 104) = &block_descriptor_183;
  [v8 preferredUnitsForQuantityTypes:isa completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v4 = *v0;
  v4[21] = *v0;
  v1 = v4[6];
  v4[49] = v1;
  if (v1)
  {
    v2 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  else
  {
    v2 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v58 = v0;
  v1 = v0[48];
  v49 = v0[46];
  v48 = v0[38];
  v0[21] = v0;
  v50 = v0[28];
  v0[50] = v50;
  v0[29] = v50;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BE0](v48);
  v0[31] = v48;
  v51 = type metadata accessor for HKUnit();
  MEMORY[0x26D649240](v0 + 31, v50, v49);
  MEMORY[0x277D82BD8](v0[31]);
  v52 = v0[30];
  v0[51] = v52;
  if (v52)
  {
    v45 = v47[47];
    v44 = v47[46];
    v43 = v47[39];
    v47[32] = v52;
    MEMORY[0x277D82BE0](v43);
    v47[34] = v43;
    MEMORY[0x26D649240](v47 + 34, v50, v44, v51, v45);
    MEMORY[0x277D82BD8](v47[34]);
    v46 = v47[33];
    v47[52] = v46;
    if (v46)
    {
      v36 = v47[42];
      v38 = v47[41];
      v37 = v47[40];
      v41 = v47[39];
      v40 = v47[38];
      v39 = v47[37];
      v47[35] = v46;
      v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("query(correlationType:firstQuantityType:secondQuantityType:start:end:)", 0x46uLL, 1);
      v47[53] = v2._object;
      MEMORY[0x277D82BE0](v36);
      MEMORY[0x277D82BE0](v39);
      MEMORY[0x277D82BE0](v40);
      MEMORY[0x277D82BE0](v41);
      MEMORY[0x277D82BE0](v52);
      MEMORY[0x277D82BE0](v46);
      v42 = swift_task_alloc();
      v47[54] = v42;
      v42[2] = v36;
      v42[3] = v37;
      v42[4] = v38;
      v42[5] = v39;
      v42[6] = v40;
      v42[7] = v41;
      v42[8] = v52;
      v42[9] = v46;
      v3 = swift_task_alloc();
      v47[55] = v3;
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
      *v3 = v47[21];
      v3[1] = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
      v5 = v47[36];

      return MEMORY[0x2822008A0](v5, 0, 0, v2._countAndFlagsBits, v2._object, partial apply for closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), v42, v4);
    }

    MEMORY[0x277D82BD8](v52);
  }

  v6 = v47[45];
  v20 = v47[43];
  v22 = v47[39];
  v21 = v47[38];
  v18 = v47[44];
  v19 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v18 + 16))(v6, v19, v20);
  swift_endAccess();
  MEMORY[0x277D82BE0](v21);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  MEMORY[0x277D82BE0](v22);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  oslog = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v24 + 24) = v23;
  v29 = swift_allocObject();
  *(v29 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v29 + 24) = v24;
  v30 = swift_allocObject();
  *(v30 + 16) = 64;
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
  *(v26 + 24) = v25;
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
  *(v32 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v33 = v7;

  *v33 = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[1] = v27;

  v33[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[3] = v28;

  v33[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[5] = v29;

  v33[6] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[7] = v30;

  v33[8] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[9] = v31;

  v33[10] = partial apply for closure #1 in OSLogArguments.append(_:);
  v33[11] = v32;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v35))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(2, v14, v14);
    v17 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v53 = buf;
    v54 = v16;
    v55 = v17;
    serialize(_:at:)(2, &v53);
    serialize(_:at:)(2, &v53);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    v56 = partial apply for closure #1 in OSLogArguments.append(_:);
    v57 = v32;
    closure #1 in osLogInternal(_:log:type:)(&v56, &v53, &v54, &v55);
    _os_log_impl(&dword_269912000, oslog, v35, "Failed to get preferred units for %@ or %@", buf, 0x16u);
    destroyStorage<A>(_:count:)(v16, 2, v14);
    destroyStorage<A>(_:count:)(v17, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v12 = v47[45];
  v13 = v47[43];
  v11 = v47[44];
  MEMORY[0x277D82BD8](oslog);
  (*(v11 + 8))(v12, v13);
  lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
  swift_allocError();
  *v8 = 0;
  swift_willThrow();

  v9 = *(v47[21] + 8);

  return v9();
}

{
  v10 = *v1;
  v10[21] = *v1;
  v10[56] = v0;

  if (v0)
  {
    v2 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  else
  {
    v9 = v10[52];
    v8 = v10[51];
    v4 = v10[42];
    v7 = v10[39];
    v6 = v10[38];
    v5 = v10[37];

    v2 = HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v1 = v0[52];
  v4 = v0[51];
  v0[21] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);

  v2 = *(v0[21] + 8);

  return v2();
}

{
  v7 = v0[52];
  v8 = v0[51];
  v3 = v0[42];
  v6 = v0[39];
  v5 = v0[38];
  v4 = v0[37];
  v0[21] = v0;

  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v7);

  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  v1 = *(v0[21] + 8);

  return v1();
}

uint64_t HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1)
{
  v4 = *(v1 + 384);
  *(v1 + 168) = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v4);

  v2 = *(*(v1 + 168) + 8);

  return v2();
}

uint64_t closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v60 = a1;
  v92 = a2;
  v50 = a3;
  v51 = a4;
  v87 = a5;
  v71 = a6;
  v73 = a7;
  v78 = a8;
  v81 = a9;
  v85 = partial apply for closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
  v105 = 0;
  v104 = 0;
  v103 = 0;
  v102 = 0;
  v101 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v95 = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
  v65 = *(v69 - 8);
  v66 = v69 - 8;
  v61 = v65;
  v62 = *(v65 + 64);
  v49 = (v62 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v69, v10);
  v68 = &v48 - v49;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v52 = *(v59 - 8);
  v63 = v52;
  v64 = *(v52 + 64);
  v53 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v50);
  v77 = &v48 - v53;
  v54 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v48 - v53, v11);
  v89 = &v48 - v54;
  v55 = (v64 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13);
  v91 = &v48 - v55;
  MEMORY[0x28223BE20](v14, v15);
  v94 = &v48 - v16;
  v105 = &v48 - v16;
  v104 = v60;
  v103 = a2;
  v102 = v17;
  v101 = v18;
  v100 = v19;
  v99 = v20;
  v98 = v21;
  v97 = v22;
  v96 = v81;
  v56 = v23[12];
  v57 = v23[16];
  v58 = v23[20];
  v24 = HKHealthStore.queryParameters(start:end:)(&v48 - v16, v17, v18);
  v25 = v57;
  v26 = v58;
  v27 = v94;
  v83 = v28;
  *&v94[v56] = v24;
  *&v27[v25] = v29;
  *&v27[v26] = v28;
  type metadata accessor for HKSampleQuery();
  MEMORY[0x277D82BE0](v87);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v94, v91);
  v82 = *&v91[*(v59 + 48)];
  v90 = *&v91[*(v59 + 64)];
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v94, v89);
  v88 = *&v89[*(v59 + 48)];
  v84 = *&v89[*(v59 + 64)];
  (*(v65 + 16))(v68, v60, v69);
  MEMORY[0x277D82BE0](v87);
  MEMORY[0x277D82BE0](v71);
  MEMORY[0x277D82BE0](v73);
  MEMORY[0x277D82BE0](v92);
  outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v94, v77);
  MEMORY[0x277D82BE0](v78);
  MEMORY[0x277D82BE0](v81);
  v67 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v70 = (v67 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 8 + *(v63 + 80)) & ~*(v63 + 80);
  v79 = (v76 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  (*(v65 + 32))(v86 + v67, v68, v69);
  v30 = v71;
  v31 = v72;
  v32 = v73;
  v33 = v74;
  v34 = v75;
  v35 = v76;
  v36 = v86;
  v37 = v92;
  v38 = v77;
  *(v86 + v70) = v87;
  *(v36 + v31) = v30;
  *(v36 + v33) = v32;
  *(v36 + v34) = v37;
  outlined init with take of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v38, (v36 + v35));
  v39 = v80;
  v40 = v81;
  v41 = v82;
  v42 = v83;
  v43 = v84;
  v44 = v85;
  v45 = v86;
  v46 = v87;
  *(v86 + v79) = v78;
  *(v45 + v39) = v40;
  v93 = HKSampleQuery.__allocating_init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(v46, v41, v42, v43, v44, v45);
  MEMORY[0x277D82BD8](v88);
  outlined destroy of DateInterval?(v89);

  outlined destroy of DateInterval?(v91);
  v95 = v93;
  [v92 executeQuery_];
  MEMORY[0x277D82BD8](v93);
  return outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v94);
}

uint64_t closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, char *a9, void *a10, void *a11)
{
  v251 = a8;
  v250 = a7;
  v249 = a6;
  v248 = a5;
  v247 = a4;
  v263 = a3;
  v253 = a2;
  v259 = a1;
  v252 = a11;
  v217 = a11;
  v261 = a10;
  v218 = a10;
  v260 = a9;
  v219 = a9;
  v239 = 0;
  v310 = 0;
  v309 = 0;
  v308 = 0;
  v307 = 0;
  v306 = 0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v220 = 0;
  v290 = 0;
  v288 = 0;
  v285 = 0;
  v284 = 0;
  v283 = 0;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  v278 = 0;
  v277 = 0;
  v276 = 0;
  v270 = 0;
  v221 = type metadata accessor for DateInterval();
  v222 = *(v221 - 8);
  v223 = v222;
  MEMORY[0x28223BE20](v221 - 8, v221);
  v224 = &v88[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v226 = (*(*(v225 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v225 - 8, v12);
  v227 = &v88[-v226];
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  v229 = *(v228 - 8);
  v230 = v229;
  v231 = (*(v229 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v228 - 8, v228);
  v232 = &v88[-v231];
  v310 = &v88[-v231];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgMR);
  v233 = (*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - 8, v14);
  v234 = &v88[-v233];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGSgMd, &_s19SiriWellnessIntents10StatisticsVySdGSgMR);
  v235 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v237 = (v235 + 15) & 0xFFFFFFFFFFFFFFF0;
  v236 = &v88[-v237];
  MEMORY[0x28223BE20](&v88[-v237], v17);
  v238 = &v88[-v237];
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  v241 = *(v240 - 1);
  v242 = v241;
  v243 = *(v241 + 64);
  MEMORY[0x28223BE20](v239, v18);
  v245 = (v243 + 15) & 0xFFFFFFFFFFFFFFF0;
  v244 = &v88[-v245];
  v309 = &v88[-v245];
  MEMORY[0x28223BE20](v19, v20);
  v246 = &v88[-v245];
  v308 = &v88[-v245];
  v254 = type metadata accessor for Logger();
  v255 = *(v254 - 8);
  v256 = v255;
  v257 = *(v255 + 64);
  MEMORY[0x28223BE20](v263, v253);
  v258 = &v88[-((v257 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v262 = &v88[-v23];
  v307 = v259;
  v306 = v24;
  v305 = v25;
  v304 = v26;
  v303 = v27;
  v302 = v28;
  v301 = v29;
  v300 = v30;
  v299 = v260;
  v298 = v261;
  v297 = v31;
  v32 = v25;
  if (v263)
  {
    v216 = v263;
    v33 = v262;
    v196 = v263;
    v270 = v263;
    v194 = Logger.wellnessIntents.unsafeMutableAddressor();
    v202 = 32;
    v195 = &v269;
    swift_beginAccess();
    (*(v256 + 16))(v33, v194, v254);
    swift_endAccess();
    v34 = v196;
    v203 = 7;
    v204 = swift_allocObject();
    *(v204 + 16) = v196;
    v214 = Logger.logObject.getter();
    v197 = v214;
    v213 = static os_log_type_t.error.getter();
    v198 = v213;
    v199 = 17;
    v207 = swift_allocObject();
    v200 = v207;
    *(v207 + 16) = 64;
    v208 = swift_allocObject();
    v201 = v208;
    *(v208 + 16) = 8;
    v35 = swift_allocObject();
    v36 = v204;
    v205 = v35;
    *(v35 + 16) = partial apply for implicit closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v205;
    v211 = v37;
    v206 = v37;
    *(v37 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v37 + 24) = v38;
    v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v209 = _allocateUninitializedArray<A>(_:)();
    v210 = v39;

    v40 = v207;
    v41 = v210;
    *v210 = partial apply for closure #1 in OSLogArguments.append(_:);
    v41[1] = v40;

    v42 = v208;
    v43 = v210;
    v210[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v43[3] = v42;

    v44 = v210;
    v45 = v211;
    v210[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v44[5] = v45;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v214, v213))
    {
      v47 = v220;
      v187 = static UnsafeMutablePointer.allocate(capacity:)();
      v184 = v187;
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v190 = 1;
      v188 = createStorage<A>(capacity:type:)(1, v185, v185);
      v186 = v188;
      v189 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v268[0] = v187;
      v267 = v188;
      v266 = v189;
      v191 = v268;
      serialize(_:at:)(2, v268);
      serialize(_:at:)(v190, v191);
      v264 = partial apply for closure #1 in OSLogArguments.append(_:);
      v265 = v200;
      closure #1 in osLogInternal(_:log:type:)(&v264, v191, &v267, &v266);
      v192 = v47;
      v193 = v47;
      if (v47)
      {
        v182 = 0;

        __break(1u);
      }

      else
      {
        v264 = partial apply for closure #1 in OSLogArguments.append(_:);
        v265 = v201;
        closure #1 in osLogInternal(_:log:type:)(&v264, v268, &v267, &v266);
        v180 = 0;
        v181 = 0;
        v264 = partial apply for closure #1 in OSLogArguments.append(_:);
        v265 = v206;
        closure #1 in osLogInternal(_:log:type:)(&v264, v268, &v267, &v266);
        v178 = 0;
        v179 = 0;
        _os_log_impl(&dword_269912000, v197, v198, "Error while querying HealthKit for quantity samples: %@", v184, 0xCu);
        destroyStorage<A>(_:count:)(v186, 1, v185);
        destroyStorage<A>(_:count:)(v189, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v184, MEMORY[0x277D84B78]);

        v183 = v178;
      }
    }

    else
    {
      v48 = v220;

      v183 = v48;
    }

    v49 = v183;

    (*(v256 + 8))(v262, v254);
    v50 = v196;
    v268[1] = v196;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();

    return v49;
  }

  if (v253)
  {
    v215 = v253;
    v174 = v253;
    v172 = 0;
    v173 = type metadata accessor for HKSample();
    type metadata accessor for HKCorrelation();
    v175 = _arrayConditionalCast<A, B>(_:)();

    v176 = v175;
  }

  else
  {
    v176 = 0;
  }

  v171 = v176;
  if (!v176)
  {
    v51 = v258;
    v149 = Logger.wellnessIntents.unsafeMutableAddressor();
    v153 = 32;
    v157 = 32;
    v150 = &v296;
    swift_beginAccess();
    (*(v256 + 16))(v51, v149, v254);
    swift_endAccess();
    v52 = v248;
    v158 = 7;
    v159 = swift_allocObject();
    *(v159 + 16) = v248;
    v169 = Logger.logObject.getter();
    v151 = v169;
    v168 = static os_log_type_t.error.getter();
    v152 = v168;
    v154 = 17;
    v162 = swift_allocObject();
    v155 = v162;
    *(v162 + 16) = v153;
    v163 = swift_allocObject();
    v156 = v163;
    *(v163 + 16) = 8;
    v53 = swift_allocObject();
    v54 = v159;
    v160 = v53;
    *(v53 + 16) = partial apply for implicit closure #2 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:);
    *(v53 + 24) = v54;
    v55 = swift_allocObject();
    v56 = v160;
    v166 = v55;
    v161 = v55;
    *(v55 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v55 + 24) = v56;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v164 = _allocateUninitializedArray<A>(_:)();
    v165 = v57;

    v58 = v162;
    v59 = v165;
    *v165 = partial apply for closure #1 in OSLogArguments.append(_:);
    v59[1] = v58;

    v60 = v163;
    v61 = v165;
    v165[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[3] = v60;

    v62 = v165;
    v63 = v166;
    v165[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v62[5] = v63;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v169, v168))
    {
      v83 = v220;
      v100 = static UnsafeMutablePointer.allocate(capacity:)();
      v97 = v100;
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v101 = createStorage<A>(capacity:type:)(0, v98, v98);
      v99 = v101;
      v103 = 1;
      v102 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v295[0] = v100;
      v294 = v101;
      v293 = v102;
      v104 = v295;
      serialize(_:at:)(2, v295);
      serialize(_:at:)(v103, v104);
      v291 = partial apply for closure #1 in OSLogArguments.append(_:);
      v292 = v155;
      closure #1 in osLogInternal(_:log:type:)(&v291, v104, &v294, &v293);
      v105 = v83;
      v106 = v83;
      if (v83)
      {
        v95 = 0;

        __break(1u);
      }

      else
      {
        v291 = partial apply for closure #1 in OSLogArguments.append(_:);
        v292 = v156;
        closure #1 in osLogInternal(_:log:type:)(&v291, v295, &v294, &v293);
        v93 = 0;
        v94 = 0;
        v291 = partial apply for closure #1 in OSLogArguments.append(_:);
        v292 = v161;
        closure #1 in osLogInternal(_:log:type:)(&v291, v295, &v294, &v293);
        v91 = 0;
        v92 = 0;
        _os_log_impl(&dword_269912000, v151, v152, "Samples returned for %s were not correlations", v97, 0xCu);
        destroyStorage<A>(_:count:)(v99, 0, v98);
        destroyStorage<A>(_:count:)(v102, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v97, MEMORY[0x277D84B78]);

        v96 = v91;
      }
    }

    else
    {
      v84 = v220;

      v96 = v84;
    }

    v90 = v96;

    (*(v256 + 8))(v258, v254);
    lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
    v89 = 0;
    v85 = swift_allocError();
    *v86 = v89;
    v295[1] = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return v90;
  }

  v170 = v171;
  v64 = v220;
  v141 = v171;
  v290 = v171;
  v289 = v171;
  v65 = v249;
  v66 = v250;
  v142 = v88;
  MEMORY[0x28223BE20](v88, v67);
  v144 = &v88[-48];
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16HKQuantitySampleC_ABtMd, &_sSo16HKQuantitySampleC_ABtMR);
  v143 = v146;
  lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]();
  v68 = Sequence.compactMap<A>(_:)();
  v147 = v64;
  v148 = v68;
  if (v64)
  {

    __break(1u);

    __break(1u);
  }

  else
  {
    v131 = v148;

    v288 = v131;
    v287 = v131;
    KeyPath = swift_getKeyPath();
    v132 = KeyPath;

    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16HKQuantitySampleC_ABtGMd, &_sSaySo16HKQuantitySampleC_ABtGMR);
    v133 = v136;
    v137 = type metadata accessor for HKQuantitySample();
    v134 = v137;
    v138 = lazy protocol witness table accessor for type [(HKQuantitySample, HKQuantitySample)] and conformance [A]();
    v70 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), KeyPath, v136, v137, MEMORY[0x277D84A98], v138, MEMORY[0x277D84AC0], v69);
    v139 = 0;
    v140 = v70;
    v128 = v70;

    HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(v219, v128, v218, v238);

    v129 = *(v242 + 48);
    v130 = (v242 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v129(v238, 1, v240) == 1)
    {
      v71 = v139;
      outlined destroy of Statistics<Double>?(v238);
      (*(v230 + 56))(v234, 1, 1, v228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
      CheckedContinuation.resume(returning:)();

      return v71;
    }

    v72 = v139;
    outlined init with take of Statistics<Double>(v238, v246);
    v286 = v131;
    v125 = swift_getKeyPath();
    v124 = v125;

    v74 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:), v125, v133, v134, MEMORY[0x277D84A98], v138, MEMORY[0x277D84AC0], v73);
    v126 = v72;
    v127 = v74;
    if (!v72)
    {
      v123 = v127;

      HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(v219, v123, v217, v236);

      if (v129(v236, 1, v240) == 1)
      {
        outlined destroy of Statistics<Double>?(v236);
        (*(v230 + 56))(v234, 1, 1, v228);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
      }

      else
      {
        outlined init with take of Statistics<Double>(v236, v244);
        v75 = v240[10];
        v107 = *&v246[v75];
        v109 = *&v246[v75 + 8];
        v76 = &v244[v75];
        v108 = *v76;
        v110 = *(v76 + 1);
        v284 = v107;
        v285 = v108;
        v282 = v109;
        v283 = v110;
        v77 = v240[11];
        v111 = *&v246[v77];
        v112 = *&v244[v77];
        v280 = v111;
        v281 = v112;
        v78 = v240[12];
        v113 = *&v246[v78];
        v114 = *&v244[v78];
        v278 = v113;
        v279 = v114;
        v79 = v240[13];
        v115 = *&v246[v79];
        v116 = *&v244[v79];
        v276 = v115;
        v277 = v116;
        outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(v219, v227);
        v122 = *&v227[*(v225 + 48)];
        v121 = *&v227[*(v225 + 64)];
        (*(v223 + 16))(v224, &v246[v240[7]], v221);
        v117 = MEMORY[0x26D6494A0](v131, v143);
        v120 = [v218 unitString];
        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v119 = v80;
        v275[0] = v107;
        v275[1] = v108;
        v274[0] = v109;
        v274[1] = v110;
        v273[0] = v111;
        v273[1] = v112;
        v272[0] = v113;
        v272[1] = v114;
        v271[0] = v115;
        v271[1] = v116;
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd5first_Sd6secondtMd, &_sSd5first_Sd6secondtMR);
        Statistics.init(queryDateRange:dataDateRange:sampleCount:unit:valueRange:latestValue:averageValue:totalValue:)(v227, v224, v117, v118, v119, v275, v274, v273, v232, v272, v271, v81);

        v82 = outlined init with copy of Statistics<(first: Double, second: Double)>(v232, v234);
        (*(v230 + 56))(v234, 0, 1, v228, v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
        CheckedContinuation.resume(returning:)();
        outlined destroy of Statistics<(first: Double, second: Double)>(v232);
        outlined destroy of Statistics<Double>(v244);
      }

      outlined destroy of Statistics<Double>(v246);

      return v126;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v79 = a4;
  v78 = a3;
  v80 = a2;
  v81 = a1;
  v77 = a5;
  v88 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v103 = 0;
  v100 = 0;
  v82 = type metadata accessor for Logger();
  v83 = *(v82 - 8);
  v84 = v83;
  v85 = *(v83 + 64);
  v5 = MEMORY[0x28223BE20](v81, v82);
  v86 = &v25[-((v85 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v87 = *v6;
  v114 = v87;
  v113 = v7;
  v112 = v8;
  v111 = v9;
  v92 = [v87 objectsForType_];
  v89 = v92;
  v91 = type metadata accessor for HKSample();
  v90 = v91;
  v93 = lazy protocol witness table accessor for type HKSample and conformance NSObject();
  v97 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v97;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
  v94 = v95;
  v96 = lazy protocol witness table accessor for type Set<HKSample> and conformance Set<A>();
  Collection.first.getter();
  v99 = v109;
  v98 = v109;

  if (v99)
  {
    v75 = v98;
    v72 = v98;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v73 = v10;
    if (v10)
    {
      v71 = v73;
    }

    else
    {

      v71 = 0;
    }

    v70 = v71;

    v74 = v70;
  }

  else
  {

    v74 = 0;
  }

  v69 = v74;
  if (v74)
  {
    v68 = v69;
    v63 = v69;
    v103 = v69;
    v64 = [v87 objectsForType_];
    v65 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v102 = v65;
    Collection.first.getter();
    v67 = v101;
    v66 = v101;

    if (v67)
    {
      v62 = v66;
      v59 = v66;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      v60 = v11;
      if (v11)
      {
        v58 = v60;
      }

      else
      {

        v58 = 0;
      }

      v57 = v58;

      v61 = v57;
    }

    else
    {

      v61 = 0;
    }

    v56 = v61;
    if (v61)
    {
      v55 = v56;
      v53 = v56;
      v100 = v56;
      v12 = v63;
      v13 = v53;
      v14 = v77;
      v15 = v53;
      *v77 = v63;
      v14[1] = v15;

      result = v76;
      v54 = v76;
      return result;
    }
  }

  v17 = v86;
  v45 = Logger.wellnessIntents.unsafeMutableAddressor();
  v46 = &v108;
  v49 = 0;
  swift_beginAccess();
  (*(v84 + 16))(v17, v45, v82);
  swift_endAccess();
  v51 = Logger.logObject.getter();
  v47 = v51;
  v50 = static os_log_type_t.error.getter();
  v48 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v52 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v51, v50))
  {
    v43 = v76;
    v35 = static UnsafeMutablePointer.allocate(capacity:)();
    v31 = v35;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v33 = 0;
    v36 = createStorage<A>(capacity:type:)(0, v32, v32);
    v34 = v36;
    v37 = createStorage<A>(capacity:type:)(v33, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v107[0] = v35;
    v106 = v36;
    v105 = v37;
    v38 = 0;
    v39 = v107;
    serialize(_:at:)(0, v107);
    serialize(_:at:)(v38, v39);
    v104 = v52;
    v40 = v25;
    MEMORY[0x28223BE20](v25, v18);
    v41 = &v25[-48];
    *&v25[-32] = v19;
    *&v25[-24] = &v106;
    *&v25[-16] = &v105;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    v20 = v43;
    Sequence.forEach(_:)();
    v44 = v20;
    if (v20)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v47, v48, "Unable to extract quantities from correlation due to wrong identifiers. Programmer Error.", v31, 2u);
      v29 = 0;
      destroyStorage<A>(_:count:)(v34, 0, v32);
      destroyStorage<A>(_:count:)(v37, v29, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v31, MEMORY[0x277D84B78]);

      v30 = v44;
    }
  }

  else
  {

    v30 = v76;
  }

  v28 = v30;

  (*(v84 + 8))(v86, v82);
  lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error();
  v27 = 0;
  v26 = 0;
  v21 = swift_allocError();
  *v22 = v26;
  v107[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  v23 = v77;
  v24 = v27;
  result = v28;
  *v77 = v27;
  v23[1] = v24;
  return result;
}

uint64_t implicit closure #3 in closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  MEMORY[0x277D82BE0](*a1);
  MEMORY[0x277D82BE0](v4);

  v5[0] = v3;
  v5[1] = v4;
  swift_getAtKeyPath();
  outlined destroy of (HKQuantitySample, HKQuantitySample)(v5);
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a1;
  v37 = a2;
  v61 = a3;
  v51 = a4;
  v38 = a5;
  v60 = a6;
  v40 = a8;
  v41 = "Fatal error";
  v42 = "Range requires lowerBound <= upperBound";
  v43 = "Swift/Range.swift";
  v44 = "Index out of range";
  v45 = "invalid Collection: count differed in successive traversals";
  v46 = "Swift/ArrayShared.swift";
  v71[3] = a3;
  v71[2] = a4;
  v71[1] = a5;
  v47 = *(a5 - 8);
  v48 = a5 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1, a2);
  v50 = &v17 - v49;
  v52 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v55 = AssociatedTypeWitness - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52, v60);
  v57 = &v17 - v56;
  v58 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10);
  v59 = &v17 - v58;
  v62 = swift_getAssociatedTypeWitness();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v61, v60);
  v66 = &v17 - v65;
  v67 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12, v13);
  v68 = &v17 - v67;
  v69 = dispatch thunk of Collection.count.getter();
  if (!v69)
  {
    goto LABEL_24;
  }

  v71[0] = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v69);
  result = dispatch thunk of Collection.startIndex.getter();
  if (v69 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_24:
    v19 = static Array._allocateUninitialized(_:)();
    v20 = v39;
    return v19;
  }

  if (!v69)
  {
LABEL_19:
    v25 = v39;
LABEL_20:
    v21 = v25;
    dispatch thunk of Collection.endIndex.getter();
    swift_getAssociatedConformanceWitness();
    v24 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *(v63 + 8);
    v23 = v63 + 8;
    v22(v66, v62);
    if ((v24 & 1) == 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }

    v22(v68, v62);
    v18 = v71[0];

    v19 = v18;
    v20 = v21;
    return v19;
  }

  v33 = 0;
  for (i = v39; ; i = v29)
  {
    v31 = i;
    v32 = v33;
    if (v33 < 0 || v32 >= v69)
    {
      goto LABEL_18;
    }

    if (v69 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_18:
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_19;
    }

    v30 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    v28 = &v70;
    v27 = dispatch thunk of Collection.subscript.read();
    (*(v54 + 16))(v57);
    v27();
    v16 = v31;
    v36(v57, v50);
    v29 = v16;
    if (v16)
    {
      (*(v54 + 8))(v57, AssociatedTypeWitness);
      (*(v63 + 8))(v68, v62);
      outlined destroy of ContiguousArray<A1>(v71);
      (*(v47 + 32))(v40, v50, v38);
      return v26;
    }

    (*(v54 + 8))(v57, AssociatedTypeWitness);
    ContiguousArray.append(_:)();
    dispatch thunk of Collection.formIndex(after:)();
    if (v30 == v69)
    {
      v25 = v29;
      goto LABEL_20;
    }

    result = v29;
    v33 = v30;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in HKHealthStore.queryParameters(start:end:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a3;
  v30 = a1;
  v29 = a2;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v27 = v19 - v26;
  v28 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19 - v26, v6);
  v43 = v19 - v28;
  v42 = type metadata accessor for Date();
  v40 = *(v42 - 8);
  v41 = v42 - 8;
  v36 = v40[8];
  v31 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v43);
  v32 = v19 - v31;
  v33 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7, v8);
  v34 = v19 - v33;
  v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v10);
  v37 = v19 - v35;
  v49 = v19 - v35;
  v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v12);
  v39 = v19 - v38;
  v48 = v19 - v38;
  v47 = v13;
  v46 = v14;
  outlined init with copy of Date?(v13, v15);
  v44 = v40[6];
  v45 = v40 + 6;
  if (v44(v43, 1, v42) == 1)
  {
    outlined destroy of Date?(v43);
  }

  else
  {
    v23 = v40[4];
    v24 = v40 + 4;
    v23(v39, v43, v42);
    outlined init with copy of Date?(v29, v27);
    if (v44(v27, 1, v42) != 1)
    {
      v23(v37, v27, v42);
      v20 = v40[2];
      v19[1] = v40 + 2;
      v20(v34, v39, v42);
      v20(v32, v37, v42);
      DateInterval.init(start:end:)();
      v16 = type metadata accessor for DateInterval();
      (*(*(v16 - 8) + 56))(v25, 0, 1);
      v22 = v40[1];
      v21 = v40 + 1;
      v22(v37, v42);
      return (v22)(v39, v42);
    }

    outlined destroy of Date?(v27);
    (v40[1])(v39, v42);
  }

  v18 = type metadata accessor for DateInterval();
  return (*(*(v18 - 8) + 56))(v25, 1);
}

id closure #2 in HKHealthStore.queryParameters(start:end:)(uint64_t a1, const void *a2)
{
  v36 = a1;
  v35 = a2;
  v54 = 0;
  v53 = 0;
  v52 = 0;
  v51 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v32 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2, v3);
  v33 = &v19 - v32;
  v34 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v19 - v32, v5);
  v47 = &v19 - v34;
  v46 = type metadata accessor for Date();
  v44 = *(v46 - 8);
  v45 = v46 - 8;
  v40 = *(v44 + 64);
  v37 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v36, v47);
  v38 = &v19 - v37;
  v39 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7);
  v41 = &v19 - v39;
  v54 = &v19 - v39;
  v42 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9);
  v43 = &v19 - v42;
  v53 = &v19 - v42;
  v52 = v10;
  v51 = v11;
  outlined init with copy of Date?(v10, v12);
  v48 = *(v44 + 48);
  v49 = v44 + 48;
  if (v48(v47, 1, v46) == 1)
  {
    outlined destroy of Date?(v47);
    return 0;
  }

  v30 = *(v44 + 32);
  v31 = v44 + 32;
  v30(v43, v47, v46);
  outlined init with copy of Date?(v35, v33);
  if (v48(v33, 1, v46) == 1)
  {
    outlined destroy of Date?(v33);
    (*(v44 + 8))(v43, v46);
    return 0;
  }

  v13 = v38;
  v30(v41, v33, v46);
  v23 = objc_opt_self();
  v20 = *(v44 + 16);
  v19 = v44 + 16;
  v20(v13, v43, v46);
  v14.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v15 = v38;
  isa = v14.super.isa;
  v27 = *(v44 + 8);
  v26 = v44 + 8;
  v27(v38, v46);
  v20(v15, v41, v46);
  v24 = Date._bridgeToObjectiveC()().super.isa;
  v27(v38, v46);
  type metadata accessor for HKQueryOptions(0);
  v21 = 1;
  _allocateUninitializedArray<A>(_:)();
  *v16 = v21;
  _finalizeUninitializedArray<A>(_:)();
  v22 = v17;
  lazy protocol witness table accessor for type HKQueryOptions and conformance HKQueryOptions();
  SetAlgebra<>.init(arrayLiteral:)();
  v28 = [v23 predicateForSamplesWithStartDate:isa endDate:v24 options:v50];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](isa);
  v27(v41, v46);
  v27(v43, v46);
  return v28;
}

void __swiftcall NSSortDescriptor.__allocating_init(key:ascending:)(NSSortDescriptor *__return_ptr retstr, Swift::String_optional key, Swift::Bool ascending)
{
  countAndFlagsBits = key.value._countAndFlagsBits;
  object = key.value._object;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  @nonobjc NSSortDescriptor.init(key:ascending:)(countAndFlagsBits, object);
}

uint64_t closure #1 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v26 = 0;
  v25 = 0;
  v20 = type metadata accessor for Date();
  v15 = *(v20 - 8);
  v16 = v20 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v8);
  v17 = &v8 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v19 = &v8 - v11;
  v12 = *v5;
  v26 = v12;
  v14 = *v6;
  v25 = v14;
  MEMORY[0x277D82BE0](v12);
  v13 = 0x1FB31F000uLL;
  v23 = [v12 0x1FB31F378];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v14);
  v18 = [v14 (v13 + 888)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v14);
  v24 = static Date.< infix(_:_:)();
  v22 = *(v15 + 8);
  v21 = v15 + 8;
  v22(v17, v20);
  MEMORY[0x277D82BD8](v18);
  v22(v19, v20);
  MEMORY[0x277D82BD8](v23);
  return v24 & 1;
}

uint64_t closure #2 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v8 = a2;
  v26 = 0;
  v25 = 0;
  v20 = type metadata accessor for Date();
  v15 = *(v20 - 8);
  v16 = v20 - 8;
  v10 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9, v8);
  v17 = &v8 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4);
  v19 = &v8 - v11;
  v12 = *v5;
  v26 = v12;
  v14 = *v6;
  v25 = v14;
  MEMORY[0x277D82BE0](v12);
  v13 = 0x1FA937000uLL;
  v23 = [v12 0x1FA937B78];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BE0](v14);
  v18 = [v14 (v13 + 2936)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v14);
  v24 = static Date.< infix(_:_:)();
  v22 = *(v15 + 8);
  v21 = v15 + 8;
  v22(v17, v20);
  MEMORY[0x277D82BD8](v18);
  v22(v19, v20);
  MEMORY[0x277D82BD8](v23);
  return v24 & 1;
}

double closure #3 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)@<D0>(id *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = [*a1 quantity];
  [v6 doubleValueForUnit_];
  v8 = v3;
  MEMORY[0x277D82BD8](v6);
  result = v8;
  *a3 = v8;
  return result;
}

double implicit closure #4 in HKHealthStore.computeStatistics(queryDateRange:samples:unit:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

id @nonobjc HKUnitPreferenceController.init(healthStore:)(uint64_t a1)
{
  v4 = [v1 initWithHealthStore_];
  MEMORY[0x277D82BD8](a1);
  return v4;
}

id @nonobjc HKSampleQuery.init(sampleType:predicate:limit:sortDescriptors:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    type metadata accessor for NSSortDescriptor();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = isa;
  }

  else
  {
    v10 = 0;
  }

  v22 = a5;
  v23 = a6;
  aBlock = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = 0;
  v20 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  v21 = &block_descriptor_238;
  v7 = _Block_copy(&aBlock);
  v8 = [v16 initWithSampleType:a1 predicate:a2 limit:a3 sortDescriptors:v10 resultsHandler:?];
  _Block_release(v7);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](a2);
  MEMORY[0x277D82BD8](a1);
  return v8;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a1 + 32);

  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  if (a3)
  {
    type metadata accessor for HKSample();
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](a3);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x277D82BE0](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v9(a2, v7);

  MEMORY[0x277D82BD8](a2);
}

id @nonobjc NSSortDescriptor.init(key:ascending:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = MEMORY[0x26D6492A0](a1);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v3 = [v6 initWithKey_ascending_];
  MEMORY[0x277D82BD8](v5);
  return v3;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x277D82BE0](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo14HKQuantityTypeCSo6HKUnitCGMd, &_sSDySo14HKQuantityTypeCSo6HKUnitCGMR);
  v1 = lazy protocol witness table accessor for type [HKQuantityType : HKUnit] and conformance [A : B]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type HealthKitLocalizationError and conformance HealthKitLocalizationError()
{
  v2 = lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError;
  if (!lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError;
  if (!lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError;
  if (!lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HealthKitLocalizationError and conformance HealthKitLocalizationError);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKUnitPreferenceController()
{
  v2 = lazy cache variable for type metadata for HKUnitPreferenceController;
  if (!lazy cache variable for type metadata for HKUnitPreferenceController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKUnitPreferenceController);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for NSNumber()
{
  v2 = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSNumber);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKHealthStore.Error and conformance HKHealthStore.Error()
{
  v2 = lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error;
  if (!lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error;
  if (!lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error;
  if (!lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKHealthStore.Error and conformance HKHealthStore.Error);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for NSSortDescriptor()
{
  v2 = lazy cache variable for type metadata for NSSortDescriptor;
  if (!lazy cache variable for type metadata for NSSortDescriptor)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for NSSortDescriptor);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined init with copy of DateInterval?(const void *a1, void *a2)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

char *outlined init with copy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(char *a1, char *a2)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a2, a1, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMd, &_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMR);
  v4 = v8[12];
  v5 = *&a1[v4];
  MEMORY[0x277D82BE0](v5);
  *&a2[v4] = v5;
  v6 = v8[16];
  v7 = *&a1[v6];

  result = a2;
  *&a2[v6] = v7;
  *&a2[v8[20]] = *&a1[v8[20]];
  return result;
}

void *outlined init with take of DateInterval?(const void *a1, void *a2)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t outlined destroy of (DateInterval?, NSPredicate?, [NSSortDescriptor], Int)(uint64_t a1)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMd, &_s10Foundation12DateIntervalVSg_So11NSPredicateCSgSaySo16NSSortDescriptorCGSitMR);
  MEMORY[0x277D82BD8](*(a1 + *(v2 + 48)));

  return a1;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [HKQuantitySample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16HKQuantitySampleCGMd, &_sSaySo16HKQuantitySampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKQuantitySample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [Double] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Double] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

__n128 outlined init with copy of Statistics<Double>(char *a1, char *a2)
{
  v10 = type metadata accessor for DateInterval();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v11 + 16))(a2, a1, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  (*(v11 + 16))(&a2[v7[7]], &a1[v7[7]], v10);
  *&a2[v7[8]] = *&a1[v7[8]];
  v5 = &a2[v7[9]];
  v3 = &a1[v7[9]];
  *v5 = *v3;
  v6 = *(v3 + 1);

  *(v5 + 1) = v6;
  result = *&a1[v7[10]];
  *&a2[v7[10]] = result;
  *&a2[v7[11]] = *&a1[v7[11]];
  *&a2[v7[12]] = *&a1[v7[12]];
  *&a2[v7[13]] = *&a1[v7[13]];
  return result;
}

uint64_t outlined destroy of Statistics<Double>(uint64_t a1)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  (*(v5 + 8))(a1 + *(v2 + 28), v4);

  return a1;
}

uint64_t getEnumTagSinglePayload for HealthKitLocalizationError(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthKitLocalizationError(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HKHealthStore.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFE)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 1) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 254;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 2;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HKHealthStore.Error(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFE)
  {
    v5 = ((a3 + 1) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFE)
  {
    v4 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t type metadata accessor for HKSampleQuery()
{
  v2 = lazy cache variable for type metadata for HKSampleQuery;
  if (!lazy cache variable for type metadata for HKSampleQuery)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKSampleQuery);
    return ObjCClassMetadata;
  }

  return v2;
}

char *outlined init with copy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(char *a1, char *a2)
{
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(a2, a1, v11);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v4 = v8[12];
  v5 = *&a1[v4];
  MEMORY[0x277D82BE0](v5);
  *&a2[v4] = v5;
  v6 = v8[16];
  v7 = *&a1[v6];

  result = a2;
  *&a2[v6] = v7;
  *&a2[v8[20]] = *&a1[v8[20]];
  return result;
}

uint64_t sub_26995D728()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR);
  v7 = *(v5 - 8);
  v4 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v4 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v1 = *(*(v6 - 8) + 80);
  v13 = (v12 + 8 + v1) & ~v1;
  v8 = (v13 + *(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v4, v5);
  MEMORY[0x277D82BD8](*(v0 + v9));
  MEMORY[0x277D82BD8](*(v0 + v10));
  MEMORY[0x277D82BD8](*(v0 + v11));
  MEMORY[0x277D82BD8](*(v0 + v12));
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v13, 1))
  {
    (*(v15 + 8))(v3 + v13, v14);
  }

  MEMORY[0x277D82BD8](*(v3 + v13 + *(v6 + 48)));

  MEMORY[0x277D82BD8](*(v3 + v8));
  MEMORY[0x277D82BD8](*(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)));
  return swift_deallocObject();
}

char *outlined init with take of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(char *a1, char *a2)
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  result = a2;
  *&a2[v3[12]] = *&a1[v3[12]];
  *&a2[v3[16]] = *&a1[v3[16]];
  *&a2[v3[20]] = *&a1[v3[20]];
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGSgs5Error_pGMR) - 8);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v8 = (v12 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR) - 8);
  v4 = (((v9 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(v14 + 80)) & ~*(v14 + 80);
  v5 = (v4 + *(v14 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  return closure #1 in closure #1 in HKHealthStore.query(correlationType:firstQuantityType:secondQuantityType:start:end:)(a1, a2, a3, v3 + v12, *(v3 + v8), *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + v9), *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), (v3 + v4), *(v3 + v5), *(v3 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t outlined destroy of (dateRange: DateInterval?, predicate: NSPredicate?, sortDescriptors: [NSSortDescriptor], limit: Int)(uint64_t a1)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  MEMORY[0x277D82BD8](*(a1 + *(v2 + 48)));

  return a1;
}

uint64_t block_copy_helper_236(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type [HKCorrelation] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo13HKCorrelationCGMd, &_sSaySo13HKCorrelationCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKCorrelation] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of Statistics<Double>?(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    v2 = type metadata accessor for DateInterval();
    v3 = *(v2 - 8);
    if (!(*(v3 + 48))(a1, 1))
    {
      (*(v3 + 8))(a1, v2);
    }

    (*(v3 + 8))(a1 + *(v5 + 28), v2);
  }

  return a1;
}

__n128 outlined init with take of Statistics<Double>(char *a1, char *a2)
{
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySdGMd, &_s19SiriWellnessIntents10StatisticsVySdGMR);
  (*(v8 + 32))(&a2[v4[7]], &a1[v4[7]], v7);
  *&a2[v4[8]] = *&a1[v4[8]];
  *&a2[v4[9]] = *&a1[v4[9]];
  result = *&a1[v4[10]];
  *&a2[v4[10]] = result;
  *&a2[v4[11]] = *&a1[v4[11]];
  *&a2[v4[12]] = *&a1[v4[12]];
  *&a2[v4[13]] = *&a1[v4[13]];
  return result;
}

__n128 outlined init with copy of Statistics<(first: Double, second: Double)>(char *a1, char *a2)
{
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))(a2, a1, v12);
    (*(v13 + 56))(a2, 0, 1, v12);
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  (*(v13 + 16))(&a2[v9[7]], &a1[v9[7]], v12);
  *&a2[v9[8]] = *&a1[v9[8]];
  v7 = &a2[v9[9]];
  v3 = &a1[v9[9]];
  *v7 = *v3;
  v8 = *(v3 + 1);

  *(v7 + 1) = v8;
  v4 = &a2[v9[10]];
  v5 = v9[10];
  *v4 = *&a1[v5];
  *(v4 + 1) = *&a1[v5 + 16];
  *&a2[v9[11]] = *&a1[v9[11]];
  *&a2[v9[12]] = *&a1[v9[12]];
  result = *&a1[v9[13]];
  *&a2[v9[13]] = result;
  return result;
}

uint64_t outlined destroy of Statistics<(first: Double, second: Double)>(uint64_t a1)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, v4);
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMd, &_s19SiriWellnessIntents10StatisticsVySd5first_Sd6secondtGMR);
  (*(v5 + 8))(a1 + *(v2 + 28), v4);

  return a1;
}

unint64_t type metadata accessor for HKCorrelation()
{
  v2 = lazy cache variable for type metadata for HKCorrelation;
  if (!lazy cache variable for type metadata for HKCorrelation)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKCorrelation);
    return ObjCClassMetadata;
  }

  return v2;
}

void *outlined destroy of (HKQuantitySample, HKQuantitySample)(void *a1)
{
  MEMORY[0x277D82BD8](*a1);
  MEMORY[0x277D82BD8](a1[1]);
  return a1;
}

unint64_t lazy protocol witness table accessor for type HKSample and conformance NSObject()
{
  v2 = lazy protocol witness table cache variable for type HKSample and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HKSample and conformance NSObject)
  {
    type metadata accessor for HKSample();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKSample and conformance NSObject);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Set<HKSample> and conformance Set<A>()
{
  v2 = lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySo8HKSampleCGMd, &_sShySo8HKSampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Set<HKSample> and conformance Set<A>);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26995EAD8()
{
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = *(type metadata accessor for CheckedContinuation() - 8);
  v1 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v4 = (v1 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v1);
  MEMORY[0x277D82BD8](*(v0 + v4));
  return swift_deallocObject();
}

void partial apply for closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  type metadata accessor for Date();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Optional();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v11 = *(type metadata accessor for CheckedContinuation() - 8);
  v4 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v5 = *(v3 + ((v4 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in closure #1 in HKHealthStore.query<A>(categoryType:start:end:enumerationType:)(a1, a2, a3, v3 + v4, v5, v7, v8);
}

uint64_t outlined destroy of A?(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t outlined init with copy of (value: A, startDate: Date)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  v7 = *(a4 + 48);
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 16))(a2 + v7, a1 + v7);
  return a2;
}

uint64_t outlined destroy of (value: A, startDate: Date)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a2 - 8) + 8))();
  v6 = *(a3 + 48);
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(a1 + v6);
  return a1;
}

unint64_t lazy protocol witness table accessor for type [HKSample] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKSample] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKSample] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8HKSampleCGMd, &_sSaySo8HKSampleCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKSample] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26995F150()
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR);
  v7 = *(v5 - 8);
  v4 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v4 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v1 = *(*(v6 - 8) + 80);
  v11 = (v10 + 8 + v1) & ~v1;
  v8 = (v11 + *(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v7 + 8))(v0 + v4, v5);
  MEMORY[0x277D82BD8](*(v0 + v9));
  MEMORY[0x277D82BD8](*(v0 + v10));
  v12 = type metadata accessor for DateInterval();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v0 + v11, 1))
  {
    (*(v13 + 8))(v3 + v11, v12);
  }

  MEMORY[0x277D82BD8](*(v3 + v11 + *(v6 + 48)));

  MEMORY[0x277D82BD8](*(v3 + v8));
  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMd, &_sScCy19SiriWellnessIntents10StatisticsVySdGSgs5Error_pGMR) - 8);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v11 = (v14 + *(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMd, &_s10Foundation12DateIntervalVSg9dateRange_So11NSPredicateCSg9predicateSaySo16NSSortDescriptorCG15sortDescriptorsSi5limittMR);
  v5 = (((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v6 = *(v3 + v11);
  v7 = *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v3 + ((v5 + *(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in closure #1 in HKHealthStore.query(quantityType:start:end:)(a1, a2, a3, v3 + v14, v6, v7, (v3 + v5), v8);
}

void *UndoMedsIntentHandler.init(storage:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v12 = v1;
  outlined init with copy of QuantityPersisting?(a1, v9);
  if (v10)
  {
    outlined init with take of QuantityPersisting(v9, __dst);
  }

  else
  {
    v2 = MedsUndoer.init()();
    __dst[3] = &type metadata for MedsUndoer;
    __dst[4] = &protocol witness table for MedsUndoer;
    __dst[0] = v2;
    __dst[1] = v3;
    if (v10)
    {
      outlined destroy of QuantityPersisting?(v9);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents21UndoMedsIntentHandler_storage]);
  v8.receiver = v12;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v5);
  v12 = v5;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v12);
  return v5;
}

uint64_t MedsUndoer.init()()
{
  v3 = 0;
  v4 = 0;
  type metadata accessor for HKHealthStore();
  v2 = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v2);
  v3 = v2;
  type metadata accessor for HKMedicationExposableDoseEventControl();
  MEMORY[0x277D82BE0](v2);
  v1 = HKUnitPreferenceController.__allocating_init(healthStore:)(v2);
  MEMORY[0x277D82BE0](v1);
  v4 = v1;
  outlined destroy of (HKQuantitySample, HKQuantitySample)(&v3);
  return v2;
}

unint64_t type metadata accessor for HKMedicationExposableDoseEventControl()
{
  v2 = lazy cache variable for type metadata for HKMedicationExposableDoseEventControl;
  if (!lazy cache variable for type metadata for HKMedicationExposableDoseEventControl)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationExposableDoseEventControl);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t UndoMedsIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[19] = v1;
  v2[18] = a1;
  v2[10] = v2;
  v2[11] = 0;
  v2[12] = 0;
  v2[17] = 0;
  v3 = type metadata accessor for Logger();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[11] = a1;
  v2[12] = v1;

  return MEMORY[0x2822009F8](UndoMedsIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 80) = *v1;
  *(v3 + 200) = a1;

  return MEMORY[0x2822009F8](UndoMedsIntentHandler.handle(intent:), 0);
}

uint64_t UndoMedsIntentHandler.handle(intent:)()
{
  v1 = *(v0 + 144);
  *(v0 + 80) = v0;
  v28 = [v1 matchingMeds];
  if (v28)
  {
    type metadata accessor for MatchedMedName();
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v28);
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  *(v27 + 184) = v26;
  if (v26)
  {
    v2 = *(v27 + 152);
    *(v27 + 136) = v26;
    outlined init with copy of QuantityPersisting(v2 + OBJC_IVAR____TtC19SiriWellnessIntents21UndoMedsIntentHandler_storage, v27 + 16);
    v22 = *(v27 + 40);
    v23 = *(v27 + 48);
    __swift_project_boxed_opaque_existential_1((v27 + 16), v22);
    v24 = (*(v23 + 8) + **(v23 + 8));
    v3 = swift_task_alloc();
    *(v27 + 192) = v3;
    *v3 = *(v27 + 80);
    v3[1] = UndoMedsIntentHandler.handle(intent:);

    return v24(v26, v22, v23);
  }

  else
  {
    v5 = *(v27 + 176);
    v18 = *(v27 + 160);
    v16 = *(v27 + 168);
    v17 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v16 + 16))(v5, v17, v18);
    swift_endAccess();
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v13 = createStorage<A>(capacity:type:)(0, v11, v11);
      v14 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v27 + 104) = buf;
      *(v27 + 112) = v13;
      *(v27 + 120) = v14;
      serialize(_:at:)(0, (v27 + 104));
      serialize(_:at:)(0, (v27 + 104));
      *(v27 + 128) = v21;
      v15 = swift_task_alloc();
      v15[2] = v27 + 104;
      v15[3] = v27 + 112;
      v15[4] = v27 + 120;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, v20, v19, "Missing matchingMeds. Aborting delete.", buf, 2u);
      destroyStorage<A>(_:count:)(v13, 0, v11);
      destroyStorage<A>(_:count:)(v14, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
    }

    v8 = *(v27 + 176);
    v9 = *(v27 + 160);
    v7 = *(v27 + 168);
    MEMORY[0x277D82BD8](v20);
    (*(v7 + 8))(v8, v9);
    type metadata accessor for UndoMedsIntentResponse();
    v10 = UndoMedsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

    v6 = *(*(v27 + 80) + 8);

    return v6(v10);
  }
}

{
  v0[10] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[25];

  v1 = *(v0[10] + 8);

  return v1(v3);
}

uint64_t @objc closure #1 in UndoMedsIntentHandler.handle(intent:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[4] = a3;
  v3[3] = a1;
  v3[2] = v3;
  MEMORY[0x277D82BE0](a1);
  v3[5] = _Block_copy(a2);
  MEMORY[0x277D82BE0](a3);
  v5 = swift_task_alloc();
  *(v8 + 48) = v5;
  *v5 = *(v8 + 16);
  v5[1] = @objc closure #1 in LogQuantityIntentHandler.handle(intent:);

  return UndoMedsIntentHandler.handle(intent:)(a1);
}

id UndoMedsIntentHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MedsUndoer.undo(matchingMeds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[39] = a3;
  v3[38] = a2;
  v3[37] = a1;
  v3[29] = v3;
  v3[30] = 0;
  v3[27] = 0;
  v3[28] = 0;
  v3[31] = 0;
  v3[32] = 0;
  v4 = type metadata accessor for Logger();
  v3[40] = v4;
  v3[41] = *(v4 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[30] = a1;
  v3[27] = a2;
  v3[28] = a3;

  return MEMORY[0x2822009F8](MedsUndoer.undo(matchingMeds:), 0);
}

uint64_t MedsUndoer.undo(matchingMeds:)(uint64_t a1)
{
  v37 = v1;
  v2 = v1[44];
  v19 = v1[41];
  v21 = v1[40];
  v22 = v1[37];
  v1[29] = v1;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = *(v19 + 16);
  v1[45] = v3;
  v1[46] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v2, v20, v21);
  swift_endAccess();

  v23 = swift_allocObject();
  *(v23 + 16) = v22;

  v24 = swift_allocObject();
  *(v24 + 16) = partial apply for implicit closure #3 in getPreferredUnit(for:store:);
  *(v24 + 24) = v23;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1;
  *(v25 + 24) = v24;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v28 + 24) = v25;
  v1[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v29 = v4;

  *v29 = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[1] = v26;

  v29[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[3] = v27;

  v29[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v29[5] = v28;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v30, v31))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v16 = createStorage<A>(capacity:type:)(0, v14, v14);
    v17 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v32 = buf;
    v33 = v16;
    v34 = v17;
    serialize(_:at:)(2, &v32);
    serialize(_:at:)(1, &v32);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v26;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v27;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    v35 = partial apply for closure #1 in OSLogArguments.append(_:);
    v36 = v28;
    closure #1 in osLogInternal(_:log:type:)(&v35, &v32, &v33, &v34);
    _os_log_impl(&dword_269912000, v30, v31, "Starting to undo matching meds: %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v16, 0, v14);
    destroyStorage<A>(_:count:)(v17, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v18[48] = 0;
  v12 = v18[44];
  v13 = v18[40];
  v11 = v18[41];
  MEMORY[0x277D82BD8](v30);
  v5 = *(v11 + 8);
  v18[49] = v5;
  v18[50] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v12, v13);
  v6 = swift_task_alloc();
  v18[51] = v6;
  *v6 = v18[29];
  v6[1] = MedsUndoer.undo(matchingMeds:);
  v7 = v18[39];
  v8 = v18[38];
  v9 = v18[37];

  return MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(v9, v8, v7);
}

{
  v3 = *v1;
  *(v3 + 232) = *v1;
  *(v3 + 416) = a1;

  return MEMORY[0x2822009F8](MedsUndoer.undo(matchingMeds:), 0);
}

{
  v19 = v1[54];
  v18 = v1[53];
  v22 = v1[45];
  v16 = v1[42];
  v21 = v1[40];
  v17 = v1[39];
  v1[29] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v2 = v19;
  v1[32] = v19;
  v20 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v22(v16, v20, v21);
  swift_endAccess();
  v24 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();
  v25 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v24, v23))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 264) = buf;
    *(v15 + 272) = v12;
    *(v15 + 280) = v13;
    serialize(_:at:)(0, (v15 + 264));
    serialize(_:at:)(0, (v15 + 264));
    *(v15 + 288) = v25;
    v14 = swift_task_alloc();
    v14[2] = v15 + 264;
    v14[3] = v15 + 272;
    v14[4] = v15 + 280;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v24, v23, "failed to undo writing of doseEvents, returning .success", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v8 = *(v15 + 432);
  v7 = *(v15 + 392);
  v5 = *(v15 + 336);
  v6 = *(v15 + 320);
  MEMORY[0x277D82BD8](v24);
  v7(v5, v6);
  type metadata accessor for UndoMedsIntentResponse();
  v9 = UndoMedsIntentResponse.__allocating_init(code:userActivity:)(5, 0);

  v3 = *(*(v15 + 232) + 8);

  return v3(v9);
}

uint64_t MedsUndoer.undo(matchingMeds:)()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 312);
  v7 = v2;
  *(v0 + 232) = v0;
  *(v0 + 248) = v1;
  MEMORY[0x277D82BE0](v2);

  type metadata accessor for HKMedicationExposableDoseEvent();
  isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 424) = isa;

  *(v0 + 16) = *(v0 + 232);
  *(v0 + 56) = v4;
  *(v0 + 24) = MedsUndoer.undo(matchingMeds:);
  v5 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 112) = v5;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 92) = 0;
  *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v0 + 104) = &block_descriptor_2;
  [v7 writeDoseEvents:isa completion:?];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v4 = *v0;
  v4[29] = *v0;
  v1 = v4[6];
  v4[54] = v1;
  if (v1)
  {
    v2 = MedsUndoer.undo(matchingMeds:);
  }

  else
  {
    v2 = MedsUndoer.undo(matchingMeds:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v34 = v0;
  v16 = v0[53];
  v20 = v0[52];
  v19 = v0[45];
  v1 = v0[43];
  v18 = v0[40];
  v2 = v0[39];
  v0[29] = v0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v16);
  v17 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  v19(v1, v17, v18);
  swift_endAccess();

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = partial apply for implicit closure #2 in MedsUndoer.undo(matchingMeds:);
  *(v22 + 24) = v21;
  v25 = swift_allocObject();
  *(v25 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v25 + 24) = v22;
  _allocateUninitializedArray<A>(_:)();
  v26 = v3;

  *v26 = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[1] = v23;

  v26[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[3] = v24;

  v26[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v26[5] = v25;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v27, v28))
  {
    v4 = v15[48];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v13 = createStorage<A>(capacity:type:)(0, v11, v11);
    v14 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v29 = buf;
    v30 = v13;
    v31 = v14;
    serialize(_:at:)(2, &v29);
    serialize(_:at:)(1, &v29);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v23;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    if (v4)
    {
    }

    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v24;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    v32 = partial apply for closure #1 in OSLogArguments.append(_:);
    v33 = v25;
    closure #1 in osLogInternal(_:log:type:)(&v32, &v29, &v30, &v31);
    _os_log_impl(&dword_269912000, v27, v28, "successfully undid writing of %s doseEvents, returning .success", buf, 0xCu);
    destroyStorage<A>(_:count:)(v13, 0, v11);
    destroyStorage<A>(_:count:)(v14, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v9 = v15[49];
  v7 = v15[43];
  v8 = v15[40];
  MEMORY[0x277D82BD8](v27);
  v9(v7, v8);
  type metadata accessor for UndoMedsIntentResponse();
  v10 = UndoMedsIntentResponse.__allocating_init(code:userActivity:)(4, 0);

  v6 = *(v15[29] + 8);

  return v6(v10);
}

uint64_t MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[92] = a3;
  v3[91] = a2;
  v3[90] = a1;
  v3[56] = v3;
  v3[57] = 0;
  v3[46] = 0;
  v3[47] = 0;
  v3[58] = 0;
  v3[60] = 0;
  v3[65] = 0;
  v3[71] = 0;
  v3[37] = 0;
  v3[38] = 0;
  v3[39] = 0;
  v3[72] = 0;
  v3[50] = 0;
  v3[51] = 0;
  v3[75] = 0;
  v3[85] = 0;
  v3[87] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3[93] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[94] = v4;
  v9 = *(v4 - 8);
  v3[95] = v9;
  v3[96] = *(v9 + 64);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[99] = v5;
  v3[100] = *(v5 - 8);
  v3[101] = swift_task_alloc();
  v3[102] = swift_task_alloc();
  v3[103] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[104] = v6;
  v3[105] = *(v6 - 8);
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  v3[110] = v7;
  v3[111] = *(v7 - 8);
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  v3[57] = a1;
  v3[46] = a2;
  v3[47] = a3;

  return MEMORY[0x2822009F8](MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:), 0);
}

uint64_t MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(uint64_t a1)
{
  v11 = *(v1 + 904);
  v14 = *(v1 + 896);
  v12 = *(v1 + 888);
  v13 = *(v1 + 880);
  v5 = *(v1 + 872);
  v9 = *(v1 + 864);
  v6 = *(v1 + 856);
  v10 = *(v1 + 848);
  v4 = *(v1 + 840);
  v7 = *(v1 + 832);
  v17 = *(v1 + 736);
  *(v1 + 448) = v1;
  Date.init()();
  Date.startOfDay.getter(v9);
  v8 = *(v4 + 8);
  v8(v5, v7);
  Date.init()();
  Date.endOfDay.getter(v10);
  v8(v6, v7);
  DateInterval.init(start:end:)();
  MEMORY[0x277D82BE0](v17);
  (*(v12 + 16))(v14, v11, v13);
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  *(v1 + 912) = isa;
  v2 = *(v12 + 8);
  *(v1 + 920) = v2;
  *(v1 + 928) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v14, v13);
  *(v1 + 16) = *(v1 + 448);
  *(v1 + 56) = v1 + 472;
  *(v1 + 24) = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  v15 = swift_continuation_init();
  *(v1 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMd, &_sSccySaySo30HKMedicationExposableDoseEventCGs5Error_pGMR);
  *(v1 + 176) = v15;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  *(v1 + 152) = 1107296256;
  *(v1 + 156) = 0;
  *(v1 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent];
  *(v1 + 168) = &block_descriptor_45;
  [v17 doseEventsForDateInterval:isa medicationIdentifier:0 completion:?];

  return MEMORY[0x282200938](v1 + 16);
}

{
  v20 = v1[115];
  v17 = v1[114];
  v18 = v1[113];
  v19 = v1[110];
  v16 = v1[92];
  v1[56] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v20(v18, v19);
  v21 = v1[117];
  v2 = v1[101];
  v22 = v1[100];
  v24 = v1[99];
  v3 = v21;
  v1[60] = v21;
  v23 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v22 + 16))(v2, v23, v24);
  swift_endAccess();
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 488) = buf;
    *(v15 + 496) = v12;
    *(v15 + 504) = v13;
    serialize(_:at:)(0, (v15 + 488));
    serialize(_:at:)(0, (v15 + 488));
    *(v15 + 512) = v27;
    v14 = swift_task_alloc();
    v14[2] = v15 + 488;
    v14[3] = v15 + 496;
    v14[4] = v15 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v26, v25, "failed to get or delete dose events in convertMatchedMedNamesToDoseEvents", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 808);
  v8 = *(v15 + 792);
  v6 = *(v15 + 800);
  MEMORY[0x277D82BD8](v26);
  (*(v6 + 8))(v7, v8);
  type metadata accessor for HKMedicationExposableDoseEvent();
  v9 = _allocateUninitializedArray<A>(_:)();

  v4 = *(*(v15 + 448) + 8);

  return v4(v9);
}

{
  v20 = v1[122];
  v17 = v1[121];
  v21 = v1[119];
  v23 = v1[115];
  v24 = v1[113];
  v22 = v1[110];
  v18 = v1[98];
  v19 = v1[94];
  v16 = v1[92];
  v1[56] = v1;
  swift_willThrow();
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v20(v18, v19);
  MEMORY[0x277D82BD8](v21);
  outlined destroy of [HKQuantityType](v1 + 50);
  outlined destroy of [HKQuantityType](v1 + 72);
  outlined destroy of [HKQuantityType](v1 + 71);
  outlined destroy of [HKQuantityType](v1 + 65);
  outlined destroy of [HKQuantityType](v1 + 58);
  v23(v24, v22);
  v25 = v1[124];
  v2 = v1[101];
  v26 = v1[100];
  v28 = v1[99];
  v3 = v25;
  v1[60] = v25;
  v27 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v26 + 16))(v2, v27, v28);
  swift_endAccess();
  v30 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v30, v29))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v12 = createStorage<A>(capacity:type:)(0, v10, v10);
    v13 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v15 + 488) = buf;
    *(v15 + 496) = v12;
    *(v15 + 504) = v13;
    serialize(_:at:)(0, (v15 + 488));
    serialize(_:at:)(0, (v15 + 488));
    *(v15 + 512) = v31;
    v14 = swift_task_alloc();
    v14[2] = v15 + 488;
    v14[3] = v15 + 496;
    v14[4] = v15 + 504;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_269912000, v30, v29, "failed to get or delete dose events in convertMatchedMedNamesToDoseEvents", buf, 2u);
    destroyStorage<A>(_:count:)(v12, 0, v10);
    destroyStorage<A>(_:count:)(v13, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v15 + 808);
  v8 = *(v15 + 792);
  v6 = *(v15 + 800);
  MEMORY[0x277D82BD8](v30);
  (*(v6 + 8))(v7, v8);
  type metadata accessor for HKMedicationExposableDoseEvent();
  v9 = _allocateUninitializedArray<A>(_:)();

  v4 = *(*(v15 + 448) + 8);

  return v4(v9);
}

uint64_t MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 936) = v1;
  if (v1)
  {
    v2 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  else
  {
    v2 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v82 = v0[114];
  v81 = v0[92];
  v0[56] = v0;
  v83 = v0[59];

  v0[58] = v83;
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](v82);
  v0[67] = v83;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v0[118] = v84;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v85 = Sequence.sorted(by:)();
  outlined destroy of [HKQuantityType]((v80 + 536));
  *(v80 + 544) = v85;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  v79 = _ArrayProtocol.filter(_:)();
  v77 = *(v80 + 720);
  *(v80 + 552) = v79;
  v1 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  MEMORY[0x26D649280](v84, v1);
  *(v80 + 560) = *(v80 + 528);
  type metadata accessor for HKMedicationExposableDoseEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
  lazy protocol witness table accessor for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>();
  *(v80 + 520) = Array.init<A>(_:)();
  *(v80 + 568) = _allocateUninitializedArray<A>(_:)();
  v2 = type metadata accessor for MatchedMedName();
  v78 = MEMORY[0x26D6494A0](v77, v2);
  if (v78 < 0)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  *(v80 + 384) = 0;
  *(v80 + 392) = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  Collection<>.makeIterator()();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySnySiGGMd, &_ss16IndexingIteratorVySnySiGGMR);
    IndexingIterator.next()();
    if (*(v80 + 440))
    {
      break;
    }

    *(v80 + 696) = *(v80 + 432);
    Array.subscript.getter();
    *(v80 + 712) = *(v80 + 704);
    Array.append(_:)();
  }

  *(v80 + 576) = _allocateUninitializedArray<A>(_:)();
  v74 = *(v80 + 568);

  *(v80 + 584) = v74;
  lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();
  Collection<>.makeIterator()();
  v75 = 0;
  for (i = 0; ; i = v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
    IndexingIterator.next()();
    v73 = *(v80 + 592);
    *(v80 + 952) = v73;
    if (!v73)
    {
      break;
    }

    *(v80 + 600) = v73;
    *(v80 + 608) = [v73 logOrigin];
    *(v80 + 616) = 2;
    type metadata accessor for HKMedicationDoseEventLogOrigin(0);
    lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin();
    if ((== infix<A>(_:_:)() & 1) == 0)
    {
      v52 = [v73 persistedUUID];
      if (v52)
      {
        v49 = *(v80 + 776);
        v50 = *(v80 + 752);
        v51 = *(v80 + 744);
        v48 = *(v80 + 760);
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v48 + 32))(v51, v49, v50);
        (*(v48 + 56))(v51, 0, 1, v50);
        MEMORY[0x277D82BD8](v52);
      }

      else
      {
        (*(*(v80 + 760) + 56))(*(v80 + 744), 1, 1, *(v80 + 752));
      }

      if ((*(*(v80 + 760) + 48))(*(v80 + 744), 1, *(v80 + 752)) != 1)
      {
        v5 = *(v80 + 816);
        v31 = *(v80 + 792);
        v32 = *(v80 + 784);
        v36 = *(v80 + 776);
        v37 = *(v80 + 752);
        v29 = *(v80 + 800);
        v34 = *(v80 + 760);
        v38 = *(v34 + 32);
        v38();
        v30 = Logger.wellnessIntents.unsafeMutableAddressor();
        swift_beginAccess();
        (*(v29 + 16))(v5, v30, v31);
        swift_endAccess();
        v33 = *(v34 + 16);
        v33(v36, v32, v37);
        v35 = (*(v34 + 80) + 16) & ~*(v34 + 80);
        v39 = swift_allocObject();
        (v38)(v39 + v35, v36, v37);

        v40 = swift_allocObject();
        *(v40 + 16) = partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
        *(v40 + 24) = v39;

        log = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        v42 = swift_allocObject();
        *(v42 + 16) = 32;
        v43 = swift_allocObject();
        *(v43 + 16) = 8;
        v41 = swift_allocObject();
        *(v41 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
        *(v41 + 24) = v40;
        v44 = swift_allocObject();
        *(v44 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v44 + 24) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
        _allocateUninitializedArray<A>(_:)();
        v45 = v6;

        *v45 = partial apply for closure #1 in OSLogArguments.append(_:);
        v45[1] = v42;

        v45[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v45[3] = v43;

        v45[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v45[5] = v44;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(log, v47))
        {
          v26 = static UnsafeMutablePointer.allocate(capacity:)();
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v27 = createStorage<A>(capacity:type:)(0, v25, v25);
          v28 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
          *(v80 + 624) = v26;
          *(v80 + 632) = v27;
          *(v80 + 640) = v28;
          serialize(_:at:)(2, (v80 + 624));
          serialize(_:at:)(1, (v80 + 624));
          *(v80 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
          *(v80 + 424) = v42;
          closure #1 in osLogInternal(_:log:type:)((v80 + 416), v80 + 624, v80 + 632, v80 + 640);
          *(v80 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
          *(v80 + 424) = v43;
          closure #1 in osLogInternal(_:log:type:)((v80 + 416), v80 + 624, v80 + 632, v80 + 640);
          *(v80 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
          *(v80 + 424) = v44;
          closure #1 in osLogInternal(_:log:type:)((v80 + 416), v80 + 624, v80 + 632, v80 + 640);
          _os_log_impl(&dword_269912000, log, v47, "Deleting as needed doseEvent with persistent uuid: %s", v26, 0xCu);
          destroyStorage<A>(_:count:)(v27, 0, v25);
          destroyStorage<A>(_:count:)(v28, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D6497C0](v26, MEMORY[0x277D84B78]);

          v23 = 0;
        }

        else
        {

          v23 = v75;
        }

        *(v80 + 960) = v23;
        v15 = *(v80 + 816);
        v16 = *(v80 + 792);
        v17 = *(v80 + 784);
        v7 = *(v80 + 776);
        v19 = *(v80 + 752);
        v22 = *(v80 + 736);
        v14 = *(v80 + 800);
        v18 = *(v80 + 760);
        MEMORY[0x277D82BD8](log);
        (*(v14 + 8))(v15, v16);
        MEMORY[0x277D82BE0](v22);
        v33(v7, v17, v19);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        *(v80 + 968) = isa;
        v8 = *(v18 + 8);
        *(v80 + 976) = v8;
        *(v80 + 984) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v8(v7, v19);
        *(v80 + 80) = *(v80 + 448);
        *(v80 + 120) = v24;
        *(v80 + 88) = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
        v20 = swift_continuation_init();
        *(v80 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        *(v80 + 240) = v20;
        *(v80 + 208) = MEMORY[0x277D85DD0];
        *(v80 + 216) = 1107296256;
        *(v80 + 220) = 0;
        *(v80 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
        *(v80 + 232) = &block_descriptor_72;
        [v22 deleteDoseEventWithPersistentUUID:isa completion:?];

        return MEMORY[0x282200938](v80 + 80);
      }

      outlined destroy of UUID?(*(v80 + 744));
      v71 = v75;
      goto LABEL_26;
    }

    v72 = MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(v73, *(v80 + 720), *(v80 + 728), *(v80 + 736));
    if (v72)
    {
      *(v80 + 680) = v72;
      MEMORY[0x277D82BE0](v72);
      *(v80 + 688) = v72;
      Array.append(_:)();
      MEMORY[0x277D82BD8](v72);
      v71 = v75;
LABEL_26:
      MEMORY[0x277D82BD8](*(v80 + 952));
      v56 = v71;
      v57 = i;
      goto LABEL_27;
    }

    v4 = *(v80 + 824);
    v67 = *(v80 + 792);
    v65 = *(v80 + 800);
    v66 = Logger.wellnessIntents.unsafeMutableAddressor();
    swift_beginAccess();
    (*(v65 + 16))(v4, v66, v67);
    swift_endAccess();
    oslog = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v70 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v68))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v62 = createStorage<A>(capacity:type:)(0, v60, v60);
      v63 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      *(v80 + 648) = buf;
      *(v80 + 656) = v62;
      *(v80 + 664) = v63;
      serialize(_:at:)(0, (v80 + 648));
      serialize(_:at:)(0, (v80 + 648));
      *(v80 + 672) = v70;
      v64 = swift_task_alloc();
      v64[2] = v80 + 648;
      v64[3] = v80 + 656;
      v64[4] = v80 + 664;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();

      _os_log_impl(&dword_269912000, oslog, v68, "Failed to get a matching med for this doseEvent, skipping", buf, 2u);
      destroyStorage<A>(_:count:)(v62, 0, v60);
      destroyStorage<A>(_:count:)(v63, 0, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

      v58 = 0;
      v59 = 0;
    }

    else
    {

      v58 = v75;
      v59 = i;
    }

    v54 = *(v80 + 824);
    v55 = *(v80 + 792);
    v53 = *(v80 + 800);
    MEMORY[0x277D82BD8](oslog);
    (*(v53 + 8))(v54, v55);
    MEMORY[0x277D82BD8](v73);
    v56 = v58;
    v57 = v59;
LABEL_27:
    v75 = v56;
  }

  v11 = *(v80 + 920);
  v12 = *(v80 + 904);
  v10 = *(v80 + 880);
  outlined destroy of [HKQuantityType]((v80 + 400));
  v13 = *(v80 + 576);

  outlined destroy of [HKQuantityType]((v80 + 576));
  outlined destroy of [HKQuantityType]((v80 + 568));
  outlined destroy of [HKQuantityType]((v80 + 520));
  outlined destroy of [HKQuantityType]((v80 + 464));
  v11(v12, v10);

  v9 = *(*(v80 + 448) + 8);

  return v9(v13);
}

{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 992) = v1;
  if (v1)
  {
    v2 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  else
  {
    v2 = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  }

  return MEMORY[0x2822009F8](v2, 0);
}

{
  v79 = v0[122];
  v76 = v0[121];
  v77 = v0[98];
  v78 = v0[94];
  v1 = v0[92];
  v0[56] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v76);
  v79(v77, v78);
  v80 = v0[120];
  while (2)
  {
    v71 = v80;
    v72 = v47;
LABEL_25:
    MEMORY[0x277D82BD8](*(v75 + 952));
    v56 = v71;
    for (i = v72; ; i = v59)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss16IndexingIteratorVySaySo30HKMedicationExposableDoseEventCGGMR);
      IndexingIterator.next()();
      v74 = *(v75 + 592);
      *(v75 + 952) = v74;
      if (!v74)
      {
        v10 = *(v75 + 920);
        v11 = *(v75 + 904);
        v9 = *(v75 + 880);
        outlined destroy of [HKQuantityType]((v75 + 400));
        v12 = *(v75 + 576);

        outlined destroy of [HKQuantityType]((v75 + 576));
        outlined destroy of [HKQuantityType]((v75 + 568));
        outlined destroy of [HKQuantityType]((v75 + 520));
        outlined destroy of [HKQuantityType]((v75 + 464));
        v10(v11, v9);

        v8 = *(*(v75 + 448) + 8);

        return v8(v12);
      }

      *(v75 + 600) = v74;
      *(v75 + 608) = [v74 logOrigin];
      *(v75 + 616) = 2;
      type metadata accessor for HKMedicationDoseEventLogOrigin(0);
      lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin();
      if ((== infix<A>(_:_:)() & 1) == 0)
      {
        break;
      }

      v73 = MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(v74, *(v75 + 720), *(v75 + 728), *(v75 + 736));
      if (v73)
      {
        *(v75 + 680) = v73;
        MEMORY[0x277D82BE0](v73);
        *(v75 + 688) = v73;
        Array.append(_:)();
        MEMORY[0x277D82BD8](v73);
        v71 = v56;
        v72 = i;
        goto LABEL_25;
      }

      v2 = *(v75 + 824);
      v67 = *(v75 + 792);
      v65 = *(v75 + 800);
      v66 = Logger.wellnessIntents.unsafeMutableAddressor();
      swift_beginAccess();
      (*(v65 + 16))(v2, v66, v67);
      swift_endAccess();
      oslog = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
      v70 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v68))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v62 = createStorage<A>(capacity:type:)(0, v60, v60);
        v63 = createStorage<A>(capacity:type:)(0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
        *(v75 + 648) = buf;
        *(v75 + 656) = v62;
        *(v75 + 664) = v63;
        serialize(_:at:)(0, (v75 + 648));
        serialize(_:at:)(0, (v75 + 648));
        *(v75 + 672) = v70;
        v64 = swift_task_alloc();
        v64[2] = v75 + 648;
        v64[3] = v75 + 656;
        v64[4] = v75 + 664;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();
        if (v56)
        {
        }

        _os_log_impl(&dword_269912000, oslog, v68, "Failed to get a matching med for this doseEvent, skipping", buf, 2u);
        destroyStorage<A>(_:count:)(v62, 0, v60);
        destroyStorage<A>(_:count:)(v63, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](buf, MEMORY[0x277D84B78]);

        v58 = 0;
        v59 = 0;
      }

      else
      {

        v58 = v56;
        v59 = i;
      }

      v54 = *(v75 + 824);
      v55 = *(v75 + 792);
      v53 = *(v75 + 800);
      MEMORY[0x277D82BD8](oslog);
      (*(v53 + 8))(v54, v55);
      MEMORY[0x277D82BD8](v74);
      v56 = v58;
    }

    v52 = [v74 persistedUUID];
    if (v52)
    {
      v49 = *(v75 + 776);
      v50 = *(v75 + 752);
      v51 = *(v75 + 744);
      v48 = *(v75 + 760);
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v48 + 32))(v51, v49, v50);
      (*(v48 + 56))(v51, 0, 1, v50);
      MEMORY[0x277D82BD8](v52);
    }

    else
    {
      (*(*(v75 + 760) + 56))(*(v75 + 744), 1, 1, *(v75 + 752));
    }

    if ((*(*(v75 + 760) + 48))(*(v75 + 744), 1, *(v75 + 752)) == 1)
    {
      outlined destroy of UUID?(*(v75 + 744));
      v80 = v56;
      v47 = i;
      continue;
    }

    break;
  }

  v4 = *(v75 + 816);
  v30 = *(v75 + 792);
  v31 = *(v75 + 784);
  v35 = *(v75 + 776);
  v36 = *(v75 + 752);
  v28 = *(v75 + 800);
  v33 = *(v75 + 760);
  v37 = *(v33 + 32);
  v37();
  v29 = Logger.wellnessIntents.unsafeMutableAddressor();
  swift_beginAccess();
  (*(v28 + 16))(v4, v29, v30);
  swift_endAccess();
  v32 = *(v33 + 16);
  v32(v35, v31, v36);
  v34 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v38 = swift_allocObject();
  (v37)(v38 + v34, v35, v36);

  v39 = swift_allocObject();
  *(v39 + 16) = partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  *(v39 + 24) = v38;

  log = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v40 = swift_allocObject();
  *(v40 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply;
  *(v40 + 24) = v39;
  v43 = swift_allocObject();
  *(v43 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v43 + 24) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  _allocateUninitializedArray<A>(_:)();
  v44 = v5;

  *v44 = partial apply for closure #1 in OSLogArguments.append(_:);
  v44[1] = v41;

  v44[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v44[3] = v42;

  v44[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v44[5] = v43;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(log, v46))
  {
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v26 = createStorage<A>(capacity:type:)(0, v24, v24);
    v27 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    *(v75 + 624) = v25;
    *(v75 + 632) = v26;
    *(v75 + 640) = v27;
    serialize(_:at:)(2, (v75 + 624));
    serialize(_:at:)(1, (v75 + 624));
    *(v75 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v75 + 424) = v41;
    closure #1 in osLogInternal(_:log:type:)((v75 + 416), v75 + 624, v75 + 632, v75 + 640);
    if (v56)
    {
    }

    *(v75 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v75 + 424) = v42;
    closure #1 in osLogInternal(_:log:type:)((v75 + 416), v75 + 624, v75 + 632, v75 + 640);
    *(v75 + 416) = partial apply for closure #1 in OSLogArguments.append(_:);
    *(v75 + 424) = v43;
    closure #1 in osLogInternal(_:log:type:)((v75 + 416), v75 + 624, v75 + 632, v75 + 640);
    _os_log_impl(&dword_269912000, log, v46, "Deleting as needed doseEvent with persistent uuid: %s", v25, 0xCu);
    destroyStorage<A>(_:count:)(v26, 0, v24);
    destroyStorage<A>(_:count:)(v27, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D6497C0](v25, MEMORY[0x277D84B78]);

    v22 = 0;
  }

  else
  {

    v22 = v56;
  }

  *(v75 + 960) = v22;
  v14 = *(v75 + 816);
  v15 = *(v75 + 792);
  v16 = *(v75 + 784);
  v6 = *(v75 + 776);
  v18 = *(v75 + 752);
  v21 = *(v75 + 736);
  v13 = *(v75 + 800);
  v17 = *(v75 + 760);
  MEMORY[0x277D82BD8](log);
  (*(v13 + 8))(v14, v15);
  MEMORY[0x277D82BE0](v21);
  v32(v6, v16, v18);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v75 + 968) = isa;
  v7 = *(v17 + 8);
  *(v75 + 976) = v7;
  *(v75 + 984) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v6, v18);
  *(v75 + 80) = *(v75 + 448);
  *(v75 + 120) = v23;
  *(v75 + 88) = MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:);
  v19 = swift_continuation_init();
  *(v75 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v75 + 240) = v19;
  *(v75 + 208) = MEMORY[0x277D85DD0];
  *(v75 + 216) = 1107296256;
  *(v75 + 220) = 0;
  *(v75 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type () zero on error;
  *(v75 + 232) = &block_descriptor_72;
  [v21 deleteDoseEventWithPersistentUUID:isa completion:?];

  return MEMORY[0x282200938](v75 + 80);
}

uint64_t implicit closure #2 in MedsUndoer.undo(matchingMeds:)(uint64_t a1)
{
  v1 = type metadata accessor for HKMedicationExposableDoseEvent();
  MEMORY[0x26D6494A0](a1, v1);
  return String.init<A>(describing:)();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [HKMedicationExposableDoseEvent](uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x277D82BE0](a2);
  MEMORY[0x277D82BE0](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v10, a3, v6);
  }

  else
  {
    MEMORY[0x277D82BE0](a2);
    type metadata accessor for HKMedicationExposableDoseEvent();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    _resumeUnsafeThrowingContinuation<A>(_:_:)(v10, &v11, v3);
    MEMORY[0x277D82BD8](a2);
  }

  MEMORY[0x277D82BD8](a3);
  return MEMORY[0x277D82BD8](a2);
}

uint64_t closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v27 = 0;
  v26 = 0;
  v21 = type metadata accessor for Date();
  v16 = *(v21 - 8);
  v17 = v21 - 8;
  v12 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11, v10);
  v18 = &v9 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v20 = &v9 - v13;
  v27 = *v6;
  v15 = *v7;
  v26 = v15;
  v14 = 0x1FB31F000uLL;
  v24 = [v27 0x1FB31F378];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = [v15 (v14 + 888)];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = static Date.< infix(_:_:)();
  v23 = *(v16 + 8);
  v22 = v16 + 8;
  v23(v18, v21);
  MEMORY[0x277D82BD8](v19);
  v23(v20, v21);
  MEMORY[0x277D82BD8](v24);
  return v25 & 1;
}

uint64_t closure #2 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(id *a1)
{
  v3 = *a1;
  [*a1 status];
  type metadata accessor for HKMedicationDoseEventStatus(0);
  lazy protocol witness table accessor for type HKMedicationDoseEventStatus and conformance HKMedicationDoseEventStatus();
  v4 = == infix<A>(_:_:)();
  MEMORY[0x277D82BE0](v3);
  if (v4)
  {
    v2 = 1;
  }

  else
  {
    [v3 status];
    v2 = == infix<A>(_:_:)();
  }

  MEMORY[0x277D82BD8](v3);
  return v2 & 1;
}

id MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v181 = v234;
  v184 = a4;
  v183 = a3;
  v185 = a2;
  v200 = a1;
  v193 = 0;
  v262 = 0;
  v261 = 0;
  v260 = 0;
  v259 = 0;
  v257[1] = 0;
  v257[0] = 0;
  v182 = 0;
  v249 = 0;
  v242 = 0;
  v241 = 0;
  v237 = 0;
  v196 = type metadata accessor for Logger();
  v186 = v196;
  v187 = *(v196 - 8);
  v194 = v187;
  v188 = v187;
  v189 = *(v187 + 64);
  MEMORY[0x28223BE20](v200, v185);
  v191 = (v189 + 15) & 0xFFFFFFFFFFFFFFF0;
  v190 = &v45 - v191;
  MEMORY[0x28223BE20](v4, v5);
  v6 = &v45 - v191;
  v192 = &v45 - v191;
  v262 = v7;
  v261 = v8;
  v259 = v9;
  v260 = v10;
  v195 = Logger.wellnessIntents.unsafeMutableAddressor();
  v203 = 32;
  v207 = 32;
  v199 = &v258;
  swift_beginAccess();
  v197 = *(v194 + 16);
  v198 = (v194 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v197(v6, v195, v196);
  swift_endAccess();
  v11 = v200;
  v208 = 7;
  v209 = swift_allocObject();
  *(v209 + 16) = v200;
  v220 = Logger.logObject.getter();
  v201 = v220;
  v219 = static os_log_type_t.debug.getter();
  v202 = v219;
  v204 = 17;
  v213 = swift_allocObject();
  v205 = v213;
  *(v213 + 16) = v203;
  v214 = swift_allocObject();
  v206 = v214;
  *(v214 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v209;
  v210 = v12;
  *(v12 + 16) = partial apply for implicit closure #1 in MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:);
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v210;
  v217 = v14;
  v211 = v14;
  *(v14 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v14 + 24) = v15;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v212 = v218;
  v215 = _allocateUninitializedArray<A>(_:)();
  v216 = v16;

  v17 = v213;
  v18 = v216;
  *v216 = partial apply for closure #1 in OSLogArguments.append(_:);
  v18[1] = v17;

  v19 = v214;
  v20 = v216;
  v216[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v20[3] = v19;

  v21 = v216;
  v22 = v217;
  v216[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v21[5] = v22;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v220, v219))
  {
    v23 = v182;
    v174 = static UnsafeMutablePointer.allocate(capacity:)();
    v171 = v174;
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v175 = createStorage<A>(capacity:type:)(0, v172, v172);
    v173 = v175;
    v177 = 1;
    v176 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v225 = v174;
    v224 = v175;
    v223 = v176;
    v178 = &v225;
    serialize(_:at:)(2, &v225);
    serialize(_:at:)(v177, v178);
    v221 = partial apply for closure #1 in OSLogArguments.append(_:);
    v222 = v205;
    closure #1 in osLogInternal(_:log:type:)(&v221, v178, &v224, &v223);
    v179 = v23;
    v180 = v23;
    if (v23)
    {
      v169 = 0;

      __break(1u);
    }

    else
    {
      v221 = partial apply for closure #1 in OSLogArguments.append(_:);
      v222 = v206;
      closure #1 in osLogInternal(_:log:type:)(&v221, &v225, &v224, &v223);
      v167 = 0;
      v168 = 0;
      v221 = partial apply for closure #1 in OSLogArguments.append(_:);
      v222 = v211;
      closure #1 in osLogInternal(_:log:type:)(&v221, &v225, &v224, &v223);
      v165 = 0;
      v166 = 0;
      _os_log_impl(&dword_269912000, v201, v202, "Starting to get updated status dose event for %s", v171, 0xCu);
      destroyStorage<A>(_:count:)(v173, 0, v172);
      destroyStorage<A>(_:count:)(v176, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v171, MEMORY[0x277D84B78]);

      v170 = v165;
    }
  }

  else
  {
    v24 = v182;

    v170 = v24;
  }

  v163 = v170;

  v160 = *(v188 + 8);
  v161 = (v188 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v160(v192, v186);

  v256 = v185;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  lazy protocol witness table accessor for type [MatchedMedName] and conformance [A]();
  Collection<>.makeIterator()();
  for (i = v163; ; i = v70)
  {
    v158 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVySay19SiriWellnessIntents14MatchedMedNameCGGMd, &_ss16IndexingIteratorVySay19SiriWellnessIntents14MatchedMedNameCGGMR);
    IndexingIterator.next()();
    v159 = v255;
    if (!v255)
    {
      break;
    }

    v157 = v159;
    v155 = v159;
    v249 = v159;
    v156 = [v159 medicationID];
    if (v156)
    {
      v154 = v156;
      v149 = v156;
      v150 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v151 = v25;

      v152 = v150;
      v153 = v151;
    }

    else
    {
      v152 = 0;
      v153 = 0;
    }

    v145 = v153;
    v144 = v152;

    v141 = [v200 medicationIdentifier];
    v140 = [v141 underlyingIdentifier];
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v146 = v26;

    v142 = v146;

    v147 = v247;
    v148 = v248;
    v247[0] = v144;
    v247[1] = v145;
    v248[0] = v143;
    v248[1] = v146;
    if (v145)
    {
      outlined init with copy of String?(v147, &v228);
      if (v148[1])
      {
        v227 = v228;
        v226 = *v148;
        v138 = MEMORY[0x26D649310](v228, *(&v228 + 1), v226, *(&v226 + 1));
        outlined destroy of String.UTF8View(&v226);
        outlined destroy of String.UTF8View(&v227);
        outlined destroy of String.UTF8View(v147);
        v139 = v138;
        goto LABEL_17;
      }

      outlined destroy of String.UTF8View(&v228);
LABEL_19:
      outlined destroy of (String?, String?)(v247);
      v139 = 0;
      goto LABEL_17;
    }

    if (v148[1])
    {
      goto LABEL_19;
    }

    outlined destroy of String.UTF8View(v147);
    v139 = 1;
LABEL_17:
    v137 = v139;

    v27 = v155;
    v28 = v200;
    if ((v137 & 1) == 0)
    {
      v114 = 0;
      goto LABEL_36;
    }

    v136 = [v155 scheduleID];
    if (v136)
    {
      v135 = v136;
      v130 = v136;
      v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v132 = v29;

      v133 = v131;
      v134 = v132;
    }

    else
    {
      v133 = 0;
      v134 = 0;
    }

    v127 = v134;
    v128 = v133;

    v129 = [v200 scheduleItemIdentifier];
    if (v129)
    {
      v126 = v129;
      v121 = v129;
      v122 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v30;

      v124 = v122;
      v125 = v123;
    }

    else
    {
      v124 = 0;
      v125 = 0;
    }

    v118 = v125;
    v117 = v124;

    v119 = v232;
    v120 = v233;
    v232[0] = v128;
    v232[1] = v127;
    v233[0] = v117;
    v233[1] = v118;
    if (!v127)
    {
      if (!v120[1])
      {
        outlined destroy of String.UTF8View(v119);
        v116 = 1;
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    outlined init with copy of String?(v119, &v231);
    if (!v120[1])
    {
      outlined destroy of String.UTF8View(&v231);
LABEL_34:
      outlined destroy of (String?, String?)(v232);
      v116 = 0;
      goto LABEL_33;
    }

    v230 = v231;
    v229 = *v120;
    v115 = MEMORY[0x26D649310](v231, *(&v231 + 1), v229, *(&v229 + 1));
    outlined destroy of String.UTF8View(&v229);
    outlined destroy of String.UTF8View(&v230);
    outlined destroy of String.UTF8View(v119);
    v116 = v115;
LABEL_33:
    v113 = v116;

    v114 = v113;
LABEL_36:
    v111 = v114;

    v112 = v155;
    if (v111)
    {
      v109 = v112;
      v110 = [v112 completionStatus];
      if (v110)
      {
        v108 = v110;
        v103 = v110;
        v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v105 = v31;

        v106 = v104;
        v107 = v105;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v99 = v107;
      v98 = v106;

      v32 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("taken", 5uLL, 1);
      countAndFlagsBits = v32._countAndFlagsBits;
      object = v32._object;
      v96 = v32._object;

      v101 = v245;
      v102 = v246;
      v245[0] = v98;
      v245[1] = v99;
      v246[0] = countAndFlagsBits;
      v246[1] = object;
      if (v99)
      {
        outlined init with copy of String?(v101, &v236);
        if (v102[1])
        {
          v33 = v181;
          v34 = v102;
          v181[1] = v236;
          *v33 = *v34;
          v94 = MEMORY[0x26D649310](v235[0], v235[1], v234[0], v234[1]);
          outlined destroy of String.UTF8View(v234);
          outlined destroy of String.UTF8View(v235);
          outlined destroy of String.UTF8View(v101);
          v95 = v94;
          goto LABEL_46;
        }

        outlined destroy of String.UTF8View(&v236);
LABEL_48:
        outlined destroy of (String?, String?)(v245);
        v95 = 0;
      }

      else
      {
        if (v102[1])
        {
          goto LABEL_48;
        }

        outlined destroy of String.UTF8View(v101);
        v95 = 1;
      }

LABEL_46:
      v93 = v95;

      if (v93)
      {
        v237 = [v200 updateForNewStatus_];
        v90 = v237;

        outlined destroy of [HKQuantityType](v257);
        v91 = v90;
        v92 = v158;
        return v91;
      }

      v35 = [v109 completionStatus];
      v89 = v35;
      if (v35)
      {
        v88 = v89;
        v83 = v89;
        v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v36;

        v86 = v84;
        v87 = v85;
      }

      else
      {
        v86 = 0;
        v87 = 0;
      }

      v79 = v87;
      v78 = v86;

      v37 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("skipped", 7uLL, 1);
      v77 = v37._countAndFlagsBits;
      v80 = v37._object;
      v76 = v37._object;

      v81 = v243;
      v82 = v244;
      v243[0] = v78;
      v243[1] = v79;
      v244[0] = v77;
      v244[1] = v80;
      if (v79)
      {
        outlined init with copy of String?(v81, v240);
        if (v82[1])
        {
          v38 = v181;
          v39 = v82;
          v181[5] = v181[6];
          v38[4] = *v39;
          v74 = MEMORY[0x26D649310](v239[0], v239[1], v238[0], v238[1]);
          outlined destroy of String.UTF8View(v238);
          outlined destroy of String.UTF8View(v239);
          outlined destroy of String.UTF8View(v81);
          v75 = v74;
LABEL_60:
          v73 = v75;

          if (v73)
          {
            v241 = [v200 updateForNewStatus_];
            v72 = v241;

            outlined destroy of [HKQuantityType](v257);
            v91 = v72;
          }

          else
          {
            v242 = [v200 updateForNewStatus_];
            v71 = v242;

            outlined destroy of [HKQuantityType](v257);
            v91 = v71;
          }

          v92 = v158;
          return v91;
        }

        outlined destroy of String.UTF8View(v240);
      }

      else if (!v82[1])
      {
        outlined destroy of String.UTF8View(v81);
        v75 = 1;
        goto LABEL_60;
      }

      outlined destroy of (String?, String?)(v243);
      v75 = 0;
      goto LABEL_60;
    }

    v70 = v158;
  }

  v40 = v190;
  outlined destroy of [HKQuantityType](v257);
  v62 = Logger.wellnessIntents.unsafeMutableAddressor();
  v63 = &v254;
  v65 = 0;
  swift_beginAccess();
  v197(v40, v62, v186);
  swift_endAccess();
  v68 = Logger.logObject.getter();
  v64 = v68;
  v67 = static os_log_type_t.error.getter();
  v66 = v67;
  v69 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v68, v67))
  {
    v41 = v158;
    v53 = static UnsafeMutablePointer.allocate(capacity:)();
    v49 = v53;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v51 = 0;
    v54 = createStorage<A>(capacity:type:)(0, v50, v50);
    v52 = v54;
    v55 = createStorage<A>(capacity:type:)(v51, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v253 = v53;
    v252 = v54;
    v251 = v55;
    v56 = 0;
    v57 = &v253;
    serialize(_:at:)(0, &v253);
    serialize(_:at:)(v56, v57);
    v250 = v69;
    v58 = &v45;
    MEMORY[0x28223BE20](&v45, v42);
    v59 = &v45 - 6;
    *(&v45 - 4) = v43;
    *(&v45 - 3) = &v252;
    *(&v45 - 2) = &v251;
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v61 = v41;
    if (v41)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_269912000, v64, v66, "Couldn't find a matching med for this doseEvent, returning nil", v49, 2u);
      v47 = 0;
      destroyStorage<A>(_:count:)(v52, 0, v50);
      destroyStorage<A>(_:count:)(v55, v47, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D6497C0](v49, MEMORY[0x277D84B78]);

      v48 = v61;
    }
  }

  else
  {

    v48 = v158;
  }

  v46 = v48;

  v160(v190, v186);
  v91 = 0;
  v92 = v46;
  return v91;
}

uint64_t implicit closure #1 in MedsUndoer.getUpdatedDoseEvent(doseEvent:matchingMeds:)(void *a1)
{
  v2 = [a1 medicationIdentifier];
  v3 = [v2 underlyingIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](v2);
  v4 = String.init<A>(describing:)();
  MEMORY[0x277D82BD8](v3);
  return v4;
}

uint64_t protocol witness for MedsUndoing.undo(matchingMeds:) in conformance MedsUndoer(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = protocol witness for QuantityPersisting.save(quantityIdentifier:value:units:) in conformance HealthKitPersistor;

  return MedsUndoer.undo(matchingMeds:)(a1, v6, v7);
}

uint64_t sub_269967304()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t partial apply for @objc closure #1 in UndoMedsIntentHandler.handle(intent:)()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = _sIeghH_IeAgH_TRTQ0_;

  return @objc closure #1 in UndoMedsIntentHandler.handle(intent:)(v7, v5, v6);
}

uint64_t _s2os18OSLogInterpolationV06appendC0_5align7privacyyxyXA_AA0B15StringAlignmentVAA0B7PrivacyVts06CustomG11ConvertibleRzlFSSycfu_TA_1()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
  v1 = lazy protocol witness table accessor for type [MatchedMedName] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type [MatchedMedName] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay19SiriWellnessIntents14MatchedMedNameCGMd, &_sSay19SiriWellnessIntents14MatchedMedNameCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [MatchedMedName] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for HKMedicationExposableDoseEvent()
{
  v2 = lazy cache variable for type metadata for HKMedicationExposableDoseEvent;
  if (!lazy cache variable for type metadata for HKMedicationExposableDoseEvent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKMedicationExposableDoseEvent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [HKMedicationExposableDoseEvent] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>()
{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>;
  if (!lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMd, &_ss18ReversedCollectionVySaySo30HKMedicationExposableDoseEventCGGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ReversedCollection<[HKMedicationExposableDoseEvent]> and conformance ReversedCollection<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  v2 = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin()
{
  v2 = lazy protocol witness table cache variable for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin;
  if (!lazy protocol witness table cache variable for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin)
  {
    type metadata accessor for HKMedicationDoseEventLogOrigin(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type HKMedicationDoseEventLogOrigin and conformance HKMedicationDoseEventLogOrigin);
    return WitnessTable;
  }

  return v2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_269967D88()
{
  v2 = *(type metadata accessor for UUID() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return implicit closure #1 in MedsUndoer.convertMatchedMedNamesToDoseEvents(matchingMeds:)(v3, a1);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)partial apply()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for UUID();
  v1 = lazy protocol witness table accessor for type UUID and conformance UUID();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v1 = lazy protocol witness table accessor for type [String] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo30HKMedicationExposableDoseEventCGMd, &_sSaySo30HKMedicationExposableDoseEventCGMR);
  v1 = lazy protocol witness table accessor for type [HKMedicationExposableDoseEvent] and conformance [A]();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for DateInterval();
  v1 = lazy protocol witness table accessor for type DateInterval and conformance DateInterval();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSSgGMd, &_sShySSSgGMR);
  v1 = lazy protocol witness table accessor for type Set<String?> and conformance Set<A>();

  return implicit closure #1 in OSLogInterpolation.appendInterpolation<A>(_:align:privacy:)(v5, v3, v4, v1);
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  v2 = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UUID and conformance UUID);
    return WitnessTable;
  }

  return v2;
}

void *outlined init with copy of String?(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];

  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for MedsUndoer(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MedsUndoer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

Swift::Bool __swiftcall validateQuantity(identifier:quantity:)(HKQuantityTypeIdentifier identifier, HKQuantity quantity)
{
  isa = quantity.super.isa;
  v156 = identifier;
  v168 = 0;
  v186 = 0;
  v185 = 0;
  v184 = 0;
  v155 = 0;
  v178 = 0;
  v177 = 0;
  v158 = type metadata accessor for Logger();
  v159 = *(v158 - 8);
  v160 = v159;
  v161 = *(v159 + 64);
  MEMORY[0x28223BE20](v156, isa);
  v163 = (v161 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v52 - v163;
  MEMORY[0x28223BE20](v2, v3);
  v164 = &v52 - v163;
  v186 = v4;
  v185 = v5;
  v165 = HKQuantityTypeIdentifier.rawValue.getter(v4);
  v167 = v6;

  v169 = MEMORY[0x26D6492A0](v165, v167);
  v166 = v169;
  v7 = v169;

  v184 = v169;
  type metadata accessor for HKQuantityType();
  v170 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v170)
  {
    v154 = v170;
    v114 = v170;
    v178 = v170;
    v111 = 0;
    type metadata accessor for HKManualEntryValidationController();
    v8 = NSDateFormatter.__allocating_init()();
    v9 = v164;
    v109 = v8;
    v116 = [v8 validateQuantity:isa ofType:v114];
    v110 = v116;

    v177 = v116;
    v112 = Logger.wellnessIntents.unsafeMutableAddressor();
    v130 = 32;
    v135 = 32;
    v113 = &v176;
    swift_beginAccess();
    (*(v160 + 16))(v9, v112, v158);
    swift_endAccess();
    v10 = isa;
    v115 = 24;
    v136 = 7;
    v11 = swift_allocObject();
    v12 = v114;
    v121 = v11;
    *(v11 + 16) = isa;
    v13 = v12;
    v127 = swift_allocObject();
    *(v127 + 16) = v114;
    v137 = swift_allocObject();
    *(v137 + 16) = v116;
    v153 = Logger.logObject.getter();
    v117 = v153;
    v152 = static os_log_type_t.debug.getter();
    v118 = v152;
    v131 = 17;
    v140 = swift_allocObject();
    v119 = v140;
    v124 = 64;
    *(v140 + 16) = 64;
    v141 = swift_allocObject();
    v120 = v141;
    v133 = 8;
    *(v141 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v121;
    v122 = v14;
    *(v14 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v122;
    v142 = v16;
    v123 = v16;
    *(v16 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v16 + 24) = v17;
    v143 = swift_allocObject();
    v125 = v143;
    *(v143 + 16) = v124;
    v144 = swift_allocObject();
    v126 = v144;
    *(v144 + 16) = v133;
    v18 = swift_allocObject();
    v19 = v127;
    v128 = v18;
    *(v18 + 16) = partial apply for implicit closure #3 in LogQuantityIntentHandler.handle(intent:);
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v128;
    v145 = v20;
    v129 = v20;
    *(v20 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:);
    *(v20 + 24) = v21;
    v146 = swift_allocObject();
    v132 = v146;
    *(v146 + 16) = v130;
    v147 = swift_allocObject();
    v134 = v147;
    *(v147 + 16) = v133;
    v22 = swift_allocObject();
    v23 = v137;
    v138 = v22;
    *(v22 + 16) = partial apply for implicit closure #3 in validateQuantity(identifier:quantity:);
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v138;
    v150 = v24;
    v139 = v24;
    *(v24 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v24 + 24) = v25;
    v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v148 = _allocateUninitializedArray<A>(_:)();
    v149 = v26;

    v27 = v140;
    v28 = v149;
    *v149 = partial apply for closure #1 in OSLogArguments.append(_:);
    v28[1] = v27;

    v29 = v141;
    v30 = v149;
    v149[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v30[3] = v29;

    v31 = v142;
    v32 = v149;
    v149[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v32[5] = v31;

    v33 = v143;
    v34 = v149;
    v149[6] = partial apply for closure #1 in OSLogArguments.append(_:);
    v34[7] = v33;

    v35 = v144;
    v36 = v149;
    v149[8] = partial apply for closure #1 in OSLogArguments.append(_:);
    v36[9] = v35;

    v37 = v145;
    v38 = v149;
    v149[10] = partial apply for closure #1 in OSLogArguments.append(_:);
    v38[11] = v37;

    v39 = v146;
    v40 = v149;
    v149[12] = partial apply for closure #1 in OSLogArguments.append(_:);
    v40[13] = v39;

    v41 = v147;
    v42 = v149;
    v149[14] = partial apply for closure #1 in OSLogArguments.append(_:);
    v42[15] = v41;

    v43 = v149;
    v44 = v150;
    v149[16] = partial apply for closure #1 in OSLogArguments.append(_:);
    v43[17] = v44;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(v153, v152))
    {
      v45 = v155;
      v102 = static UnsafeMutablePointer.allocate(capacity:)();
      v99 = v102;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v104 = 2;
      v103 = createStorage<A>(capacity:type:)(2, v100, v100);
      v101 = v103;
      v105 = createStorage<A>(capacity:type:)(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v175[0] = v102;
      v174 = v103;
      v173 = v105;
      v106 = v175;
      serialize(_:at:)(v104, v175);
      serialize(_:at:)(3, v106);
      v171 = partial apply for closure #1 in OSLogArguments.append(_:);
      v172 = v119;
      closure #1 in osLogInternal(_:log:type:)(&v171, v106, &v174, &v173);
      v107 = v45;
      v108 = v45;
      if (v45)
      {
        v97 = 0;

        __break(1u);
      }

      else
      {
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v120;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v95 = 0;
        v96 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v123;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v93 = 0;
        v94 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v125;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v91 = 0;
        v92 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v126;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v89 = 0;
        v90 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v129;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v87 = 0;
        v88 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v132;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v85 = 0;
        v86 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v134;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v83 = 0;
        v84 = 0;
        v171 = partial apply for closure #1 in OSLogArguments.append(_:);
        v172 = v139;
        closure #1 in osLogInternal(_:log:type:)(&v171, v175, &v174, &v173);
        v81 = 0;
        v82 = 0;
        _os_log_impl(&dword_269912000, v117, v118, "%@ for %@ returned validation result: %s", v99, 0x20u);
        destroyStorage<A>(_:count:)(v101, 2, v100);
        destroyStorage<A>(_:count:)(v105, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v99, MEMORY[0x277D84B78]);

        v98 = v81;
      }
    }

    else
    {
      v46 = v155;

      v98 = v46;
    }

    v78 = v98;

    (*(v160 + 8))(v164, v158);
    v175[2] = v110;
    v175[1] = 2;
    v76 = type metadata accessor for HKManualEntryValidationResult(0);
    lazy protocol witness table accessor for type HKManualEntryValidationResult and conformance HKManualEntryValidationResult();
    v77 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;

    v79 = v77;
    v80 = v78;
  }

  else
  {
    v47 = v162;
    v68 = Logger.wellnessIntents.unsafeMutableAddressor();
    v69 = &v183;
    v72 = 0;
    swift_beginAccess();
    (*(v160 + 16))(v47, v68, v158);
    swift_endAccess();
    v74 = Logger.logObject.getter();
    v70 = v74;
    v73 = static os_log_type_t.error.getter();
    v71 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
    v75 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v74, v73))
    {
      v48 = v155;
      v59 = static UnsafeMutablePointer.allocate(capacity:)();
      v55 = v59;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v57 = 0;
      v60 = createStorage<A>(capacity:type:)(0, v56, v56);
      v58 = v60;
      v61 = createStorage<A>(capacity:type:)(v57, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v182 = v59;
      v181 = v60;
      v180 = v61;
      v62 = 0;
      v63 = &v182;
      serialize(_:at:)(0, &v182);
      serialize(_:at:)(v62, v63);
      v179 = v75;
      v64 = &v52;
      MEMORY[0x28223BE20](&v52, v49);
      v65 = &v52 - 6;
      *(&v52 - 4) = v50;
      *(&v52 - 3) = &v181;
      *(&v52 - 2) = &v180;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
      Sequence.forEach(_:)();
      v67 = v48;
      if (v48)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_269912000, v70, v71, "Couldn't create a HKQuantityType in validateQuantity(identifier: HKQuantityTypeIdentifier, quantity: HKQuantity). Returning false.", v55, 2u);
        v53 = 0;
        destroyStorage<A>(_:count:)(v58, 0, v56);
        destroyStorage<A>(_:count:)(v61, v53, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D6497C0](v55, MEMORY[0x277D84B78]);

        v54 = v67;
      }
    }

    else
    {

      v54 = v155;
    }

    v52 = v54;

    (*(v160 + 8))(v162, v158);
    v79 = 0;
    v80 = v52;
  }

  return v79 & 1;
}

uint64_t HKQuantityTypeIdentifier.rawValue.getter(uint64_t a1)
{
  MEMORY[0x277D82BE0](a1);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  MEMORY[0x277D82BD8](a1);
  return v3;
}

unint64_t type metadata accessor for HKManualEntryValidationController()
{
  v2 = lazy cache variable for type metadata for HKManualEntryValidationController;
  if (!lazy cache variable for type metadata for HKManualEntryValidationController)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for HKManualEntryValidationController);
    return ObjCClassMetadata;
  }

  return v2;
}

void *GetMenstruationPredictionIntentHandler.init(store:)(void *a1)
{
  ObjectType = swift_getObjectType();
  __dst[5] = a1;
  v11 = v1;
  outlined init with copy of QuantityPersisting?(a1, v8);
  if (v9)
  {
    outlined init with take of QuantityPersisting(v8, __dst);
  }

  else
  {
    v2.store.super.isa = CycleTrackingFetcher.init()().store.super.isa;
    __dst[3] = &type metadata for CycleTrackingFetcher;
    __dst[4] = &protocol witness table for CycleTrackingFetcher;
    __dst[0] = v2.store.super.isa;
    if (v9)
    {
      outlined destroy of QuantityPersisting?(v8);
    }
  }

  outlined init with take of QuantityPersisting(__dst, &v1[OBJC_IVAR____TtC19SiriWellnessIntents38GetMenstruationPredictionIntentHandler_store]);
  v7.receiver = v11;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);
  MEMORY[0x277D82BE0](v4);
  v11 = v4;
  outlined destroy of QuantityPersisting?(a1);
  MEMORY[0x277D82BD8](v11);
  return v4;
}

SiriWellnessIntents::CycleTrackingFetcher __swiftcall CycleTrackingFetcher.init()()
{
  isa = 0;
  type metadata accessor for HKHealthStore();
  v1.store.super.isa = NSDateFormatter.__allocating_init()();
  MEMORY[0x277D82BE0](v1.store.super.isa);
  isa = v1.store.super.isa;
  outlined destroy of HealthKitPersistor(&isa);
  return v1;
}

uint64_t GetMenstruationPredictionIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[16] = v1;
  v2[15] = a1;
  v2[12] = v2;
  v2[13] = 0;
  v2[14] = 0;
  v2[13] = a1;
  v2[14] = v1;
  return MEMORY[0x2822009F8](GetMenstruationPredictionIntentHandler.handle(intent:), 0);
}

{
  v3 = *v1;
  *(v3 + 96) = *v1;
  *(v3 + 152) = a1;

  return MEMORY[0x2822009F8](GetMenstruationPredictionIntentHandler.handle(intent:), 0);
}

uint64_t GetMenstruationPredictionIntentHandler.handle(intent:)()
{
  v1 = v0[16];
  v0[12] = v0;
  outlined init with copy of QuantityPersisting(v1 + OBJC_IVAR____TtC19SiriWellnessIntents38GetMenstruationPredictionIntentHandler_store, (v0 + 2));
  v7 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
  v6 = (*(v5 + 8) + **(v5 + 8));
  v2 = swift_task_alloc();
  *(v4 + 136) = v2;
  *v2 = *(v4 + 96);
  v2[1] = GetMenstruationPredictionIntentHandler.handle(intent:);

  return v6(v7, v5);
}

{
  v11 = *(v0 + 160);
  *(v0 + 96) = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v11)
  {
    v5 = v10[15];
    outlined init with copy of QuantityPersisting(v10[16] + OBJC_IVAR____TtC19SiriWellnessIntents38GetMenstruationPredictionIntentHandler_store, (v10 + 7));
    v6 = v10[10];
    v7 = v10[11];
    __swift_project_boxed_opaque_existential_1(v10 + 7, v6);
    v9 = [v5 projectionFocus];
    v8 = (*(v7 + 16) + **(v7 + 16));
    v1 = swift_task_alloc();
    v10[18] = v1;
    *v1 = v10[12];
    v1[1] = GetMenstruationPredictionIntentHandler.handle(intent:);

    return v8(v9, v6, v7);
  }

  else
  {
    type metadata accessor for GetMenstruationPredictionIntentResponse();
    v3 = GetMenstruationPredictionIntentResponse.__allocating_init(code:userActivity:)(101, 0);
    v4 = *(v10[12] + 8);

    return v4(v3);
  }
}

{
  v0[12] = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[19];
  v2 = *(v0[12] + 8);

  return v2(v1);
}
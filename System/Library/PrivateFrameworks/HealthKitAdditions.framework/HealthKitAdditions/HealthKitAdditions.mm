uint64_t LockProviding.synchronized(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  a1(v7);
  v8 = *(a4 + 16);

  return v8(a3, a4);
}

uint64_t LockProviding.synchronized<A>(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(a5 + 8))(a3, a5);
  a1(v8);
  v9 = *(a5 + 16);

  return v9(a3, a5);
}

uint64_t sub_1DF69E888(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Publisher.retainingSink(receiveCompletion:receiveValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DF69EB20(0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1DF6F5EDC();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v9;

  sub_1DF6F5ECC();
  swift_getWitnessTable();
  sub_1DF6F606C();
  sub_1DF6F5F4C();

  swift_getWitnessTable();
  v11 = sub_1DF6F5F5C();
  os_unfair_lock_lock((v9 + 24));
  sub_1DF69EBB0((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));

  return v11;
}

uint64_t sub_1DF69EAE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DF69EB20(uint64_t a1)
{
  if (!qword_1EDC04680)
  {
    sub_1DF6D0A60(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1DF6F6BCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04680);
    }
  }
}

uint64_t sub_1DF69EBB0(void *a1)
{

  *a1 = v1;
}

uint64_t HKHealthStore.cloudSyncStatusPublisher()()
{
  sub_1DF69EE70(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC04760 != -1)
  {
    v4 = swift_once();
  }

  v7 = qword_1EDC04770;
  MEMORY[0x1EEE9AC00](v4);
  *(&v10 - 2) = v0;
  os_unfair_lock_lock((v7 + 24));
  sub_1DF6A00C4((v7 + 16), &v11);
  os_unfair_lock_unlock((v7 + 24));
  sub_1DF69EF18(0, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
  sub_1DF69F164(0);
  sub_1DF69FF10();
  sub_1DF6F5FFC();
  sub_1DF6A02A0(qword_1EDC047C0, sub_1DF69EE70, MEMORY[0x1E695BC80]);
  v8 = sub_1DF6F5FEC();

  (*(v3 + 8))(v6, v2);
  return v8;
}

void sub_1DF69EE70(uint64_t a1)
{
  if (!qword_1EDC047B8)
  {
    sub_1DF69EF18(255, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
    sub_1DF69F164(255);
    sub_1DF69FF10();
    v1 = sub_1DF6F5DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC047B8);
    }
  }
}

void sub_1DF69EF18(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1DF69EF80(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DF69EF80(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DF69F054(void *a1)
{
  sub_1DF6F5EBC();
  result = sub_1DF6F6A0C();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1DF69F164(uint64_t a1)
{
  if (!qword_1EDC04660)
  {
    sub_1DF69EF80(255, &qword_1EDC046C0, 0x1E696BFF0);
    sub_1DF69F1E4();
    v1 = sub_1DF6F6F6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04660);
    }
  }
}

unint64_t sub_1DF69F1E4()
{
  result = qword_1EDC05250;
  if (!qword_1EDC05250)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC05250);
  }

  return result;
}

uint64_t _s18HealthKitAdditions13FeatureStatusO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureStatus.Eligibility(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FeatureStatus.OnboardingRecord(0);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FeatureStatus(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  sub_1DF69F8A4(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 56);
  sub_1DF69F908(a1, v18, type metadata accessor for FeatureStatus);
  sub_1DF69F908(a2, &v18[v19], type metadata accessor for FeatureStatus);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DF69F908(v18, v12, type metadata accessor for FeatureStatus);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DF69F970(&v18[v19], v6, type metadata accessor for FeatureStatus.Eligibility);
      type metadata accessor for HKFeatureAvailabilityContext(0);
      sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
      sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
      sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
      sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
      sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158, MEMORY[0x1E69E81C0]);
      v20 = sub_1DF6F61DC();
      sub_1DF69FE90(v6, type metadata accessor for FeatureStatus.Eligibility);
      sub_1DF69FE90(v12, type metadata accessor for FeatureStatus.Eligibility);
LABEL_14:
      v23 = type metadata accessor for FeatureStatus;
      goto LABEL_15;
    }

    v21 = type metadata accessor for FeatureStatus.Eligibility;
    v22 = v12;
  }

  else
  {
    sub_1DF69F908(v18, v14, type metadata accessor for FeatureStatus);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1DF69F970(&v18[v19], v8, type metadata accessor for FeatureStatus.OnboardingRecord);
      type metadata accessor for HKFeatureAvailabilityContext(0);
      sub_1DF69EF80(0, &qword_1EDC04F70, 0x1E696C158);
      sub_1DF69FA50(&qword_1EDC04F80, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B470]);
      sub_1DF69FA50(&qword_1EDC04F98, type metadata accessor for HKFeatureAvailabilityContext, MEMORY[0x1E696B468]);
      sub_1DF69FA50(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
      sub_1DF69FAE8(&qword_1EDC03570, &qword_1EDC04F70, 0x1E696C158, MEMORY[0x1E69E81C0]);
      if (sub_1DF6F61DC() & 1) != 0 && (sub_1DF69EF80(0, &qword_1EDC04FA8, 0x1E696C168), sub_1DF69FAE8(qword_1EDC03660, &qword_1EDC04FA8, 0x1E696C168, MEMORY[0x1E69E81C0]), (sub_1DF6F60DC()) && (sub_1DF69FCD8(*&v14[*(v26 + 24)], *&v8[*(v26 + 24)]) & 1) != 0 && (sub_1DF6F5A5C())
      {
        sub_1DF69FE90(v8, type metadata accessor for FeatureStatus.OnboardingRecord);
        sub_1DF69FE90(v14, type metadata accessor for FeatureStatus.OnboardingRecord);
        v20 = 1;
      }

      else
      {
        sub_1DF69FE90(v8, type metadata accessor for FeatureStatus.OnboardingRecord);
        sub_1DF69FE90(v14, type metadata accessor for FeatureStatus.OnboardingRecord);
        v20 = 0;
      }

      goto LABEL_14;
    }

    v21 = type metadata accessor for FeatureStatus.OnboardingRecord;
    v22 = v14;
  }

  sub_1DF69FE90(v22, v21);
  v20 = 0;
  v23 = sub_1DF69F8A4;
LABEL_15:
  sub_1DF69FE90(v18, v23);
  return v20 & 1;
}

void sub_1DF69F8A4(uint64_t a1)
{
  if (!qword_1EDC04568)
  {
    type metadata accessor for FeatureStatus(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC04568);
    }
  }
}

uint64_t sub_1DF69F908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF69F970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DF69FA00(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DF69FA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF69FA98(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1DF69EF80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF69FAE8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DF69EF80(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF69FB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DF69FB7C(uint64_t a1)
{
  if (!qword_1EDC05240)
  {
    sub_1DF6F5A7C();
    v1 = sub_1DF6F6A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC05240);
    }
  }
}

uint64_t sub_1DF69FBD4(uint64_t a1)
{
  sub_1DF6F63EC();
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  v1 = sub_1DF6F6F2C();

  return v1;
}

uint64_t sub_1DF69FC50(void *a1, uint64_t *a2)
{
  v2 = sub_1DF6F63EC();
  v4 = v3;
  if (v2 == sub_1DF6F63EC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1DF6F6E2C();
  }

  return v7 & 1;
}

uint64_t sub_1DF69FCD8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1DF6F6F0C();

    sub_1DF6F645C();
    v16 = sub_1DF6F6F2C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1DF6F6E2C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF69FE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DF69FF10()
{
  result = qword_1EDC04A88[0];
  if (!qword_1EDC04A88[0])
  {
    sub_1DF69EF18(255, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC04A88);
  }

  return result;
}

uint64_t sub_1DF69FF94()
{
  type metadata accessor for PublisherCache();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_opt_self() weakToWeakObjectsMapTable];
  sub_1DF6A0034(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EDC04770 = result;
  return result;
}

void sub_1DF6A0034(uint64_t a1)
{
  if (!qword_1EDC04690)
  {
    type metadata accessor for PublisherCache();
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1DF6F6BCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04690);
    }
  }
}

id sub_1DF6A00E0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  result = [*(*a1 + 16) objectForKey_];
  if (!result)
  {
    sub_1DF69EF18(0, &qword_1EDC04A80, &qword_1EDC046C8, 0x1E696BFE8, type metadata accessor for CloudSyncStatusPublisherImpl);
    v7 = swift_allocObject();
    v7[10] = a2;
    v7[11] = 0;
    v7[13] = 0;
    v7[14] = 0;
    v7[12] = 0;
    v8 = sub_1DF6A0228(0, 255);
    [*(v5 + 16) setObject:v8 forKey:a2];
    result = v8;
  }

  *a3 = result;
  return result;
}

void sub_1DF6A01C4(uint64_t a1)
{
  if (!qword_1EDC04670)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1DF6F6BCC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04670);
    }
  }
}

uint64_t sub_1DF6A0228(uint64_t a1, char a2)
{
  sub_1DF6A01C4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 16) = v5;
  *(v2 + 32) = 0;
  *(v2 + 40) = 2;
  *(v2 + 64) = MEMORY[0x1E69E7CC0];
  *(v2 + 72) = 0;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  *(v2 + 24) = 16777472;
  return v2;
}

uint64_t sub_1DF6A02A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF6A0344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_1DF6A03D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for DownstreamHandlerSubscriptionState.Inactive(319, v2, *(a1 + 24), v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6A0468(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t static DownstreamHandlerSubscriptionState.ready(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  (*(v7 + 56))(a4, 0, 1, a2);
  type metadata accessor for DownstreamHandlerSubscriptionState(0, a2, a3, v8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DownstreamHandlerSubscription.request(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v41 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for DownstreamHandlerSubscriptionState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v41 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v46 = *(a3 + 32);
  v47 = a3 + 32;
  v46(v50, a2, a3);
  v21 = v51;
  v20 = v52;
  __swift_project_boxed_opaque_existential_0(v50, v51);
  (*(v20 + 8))(v21, v20);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v22 = *(a3 + 40);
  v48 = v3;
  v22(a2, a3);
  v45 = v12;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v49;
    if ((*(v49 + 48))(v19, 1, AssociatedTypeWitness) != 1)
    {
      v34 = v42;
      (*(v23 + 32))(v42, v19, AssociatedTypeWitness);
      v35 = *(swift_getTupleTypeMetadata2() + 48);
      v36 = v41;
      (*(v23 + 16))(v41, v34, AssociatedTypeWitness);
      *&v36[v35] = v44;
      swift_storeEnumTagMultiPayload();
      (*(a3 + 48))(v36, a2, a3);
      v46(v50, a2, a3);
      v37 = v51;
      v38 = v52;
      __swift_project_boxed_opaque_existential_0(v50, v51);
      (*(v38 + 16))(v37, v38);
      __swift_destroy_boxed_opaque_existential_1(v50);
      (*(a3 + 80))(a2, a3);
      return (*(v23 + 8))(v34, AssociatedTypeWitness);
    }

    v46(v50, a2, a3);
    v24 = v51;
    v25 = v52;
    __swift_project_boxed_opaque_existential_0(v50, v51);
    (*(v25 + 16))(v24, v25);
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *&v19[*(TupleTypeMetadata2 + 48)];
  v28 = v49;
  v29 = v43;
  (*(v49 + 32))(v43, v19, AssociatedTypeWitness);
  (*(v28 + 16))(v15, v29, AssociatedTypeWitness);
  sub_1DF6F5F0C();
  v30 = sub_1DF6F5EEC();
  v31 = sub_1DF6F5F0C();
  if ((v30 & 1) == 0)
  {
    v32 = v44;
    result = sub_1DF6F5EEC();
    if ((result & 1) == 0)
    {
      if ((v27 | v32) < 0)
      {
        __break(1u);
        goto LABEL_16;
      }

      v31 = v27 + v32;
      if (!__OFADD__(v27, v32))
      {
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_16:
        __break(1u);
        return result;
      }
    }

    v31 = sub_1DF6F5F0C();
  }

LABEL_12:
  *&v15[*(TupleTypeMetadata2 + 48)] = v31;
  swift_storeEnumTagMultiPayload();
  (*(a3 + 48))(v15, a2, a3);
  v46(v50, a2, a3);
  v39 = v51;
  v40 = v52;
  __swift_project_boxed_opaque_existential_0(v50, v51);
  (*(v40 + 16))(v39, v40);
  (*(v28 + 8))(v29, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v50);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1DF6A0BC8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1DF6A0C08@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DF6A0C84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DF6F63EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF6A0CB0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A0D34()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF6A0DB4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF6F5DDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 68);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF6A0E60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F5DDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A0F08()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A0F54()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A0F8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF6A0FCC()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1DF6B03FC(*(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF6A1024()
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1DF6F5A7C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1DF6A116C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF6A11AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DF6A11F4()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DF6A1244()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DF6A1290()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1DF6A12CC(id a1, char a2)
{
  if (a2)
  {
  }
}

__n128 sub_1DF6A13C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DF6A13D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1434(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1DF6F613C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF6A14E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F613C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A1584()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A15C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6F5B9C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DF6F5B5C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_1DF6B9190(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_1DF6A1700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DF6F5B9C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1DF6F5B5C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_1DF6B9190(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1DF6A184C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A1884()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF6A18BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A18F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1984@<X0>(uint64_t *a1@<X8>)
{
  sub_1DF6BD050(0);
  result = sub_1DF6F61BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DF6A19B8(uint64_t *a1)
{
  sub_1DF6BD050(0);

  return sub_1DF6F61CC();
}

uint64_t sub_1DF6A1A00@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeatureStatus.OnboardingRecord(0);
  sub_1DF6C4974(0);
  result = sub_1DF6F60BC();
  *a1 = result;
  return result;
}

uint64_t sub_1DF6A1A80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1DF6C4974(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1DF6F5A7C();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

void sub_1DF6A1BF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for FeatureStatus.PerContextEvaluation(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    v11(v12, a2, a2, v10);
    return;
  }

  sub_1DF6C4974(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1DF6F5A7C();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1DF6A1DA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1DD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A1E10()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1E48()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A1E80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A1F18(uint64_t a1, uint64_t a2)
{
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF6A1FA0(uint64_t a1, uint64_t a2)
{
  sub_1DF6C9204(0, &qword_1ECE4DA58, MEMORY[0x1E69E87B8]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF6A2030()
{
  sub_1DF6C9204(0, &qword_1ECE4DAB0, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DF6A20D8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 1, v2 | 7);
}

uint64_t sub_1DF6A215C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1DF6A21DC()
{
  MEMORY[0x1E12DCC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A2214()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A224C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A22B0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_1DF6F5DDC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1DF6F5B5C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

char *sub_1DF6A2444(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    *(result + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = sub_1DF6F5DDC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1DF6F5B5C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  sub_1DF6D4FC8(0, &qword_1ECE4D940, MEMORY[0x1E6968278]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[7]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DF6A25E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A2620(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DF6F5DDC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1DF6A26CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F5DDC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A2780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6D96D0(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1DF6F613C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 36);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1DF6A2870(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DF6D96D0(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1DF6F613C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 36);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1DF6A296C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A29A4()
{
  MEMORY[0x1E12DCC30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DF6A29E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A2A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF6A2A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for HKUserDomainConceptQueryDescriptor(0, *(v4 + 16), a3, a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = (*(*v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v7;

  v10 = v5[12];
  v11 = sub_1DF6F613C();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v4, v8 + 8, v6 | 7);
}

uint64_t sub_1DF6A2B68(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_1DF6F613C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1DF6A2C14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DF6F613C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DF6A2CB8(uint64_t a1, uint64_t a2)
{
  sub_1DF6E04B0(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1DF6A2D24(uint64_t a1, uint64_t a2)
{
  sub_1DF6E04B0(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DF6A2D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
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

void sub_1DF6A2E78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1DF6E0C48(0, &qword_1EDC03EE0, MEMORY[0x1E69E87B8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }
}

uint64_t sub_1DF6A2F4C()
{
  sub_1DF6E0C48(0, &qword_1EDC03EE8, MEMORY[0x1E69E87A0]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1DF6A3004()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A303C()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DF6A3078()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A30B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A30EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A3124()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DF6A31F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1DF6A32B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for HKHealthStore.StatisticsCollectionPublisher.Configuration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DF6A3368(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1DF6F5A7C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1DF6F590C();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  sub_1DF6F1E2C(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = &a1[a3[9]];

  return v16(v17, a2, v15);
}

char *sub_1DF6A34D4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1DF6F5A7C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1DF6F590C();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  sub_1DF6F1E2C(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 56);
  v17 = &v5[a4[9]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1DF6A3640()
{

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

id sub_1DF6A3680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  v3 = *(a1 + 8);
  *(a2 + 8) = v3;
  return sub_1DF6F4D38(v2, v3);
}

uint64_t sub_1DF6A3698(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t HKSharingRecipientAuthorizationStore.getAuthorizationIdentifiers()()
{
  *(swift_allocObject() + 16) = v0;
  sub_1DF6A3844(0);
  swift_allocObject();
  v1 = v0;
  return sub_1DF6F5FBC();
}

void sub_1DF6A372C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DF6A4EC8;
  *(v7 + 24) = v6;
  v9[4] = sub_1DF6A4F08;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1DF6A3F90;
  v9[3] = &block_descriptor;
  v8 = _Block_copy(v9);

  [a3 fetchSharingAuthorizationsWithCompletion_];
  _Block_release(v8);
}

void sub_1DF6A3844(uint64_t a1)
{
  if (!qword_1ECE4D1E0)
  {
    sub_1DF69FA00(255, &qword_1ECE4D1E8, &type metadata for HKSharingAuthorizationIdentifier, MEMORY[0x1E69E62F8]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D1E0);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1DF6A3960(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6A3980(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DF6A39DC(uint64_t a1, int a2)
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

uint64_t sub_1DF6A39FC(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF6A3CD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DF6A3CF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1DF6A3D20(unint64_t a1, id a2, void (*a3)(id, uint64_t))
{
  if (a2)
  {
    v5 = a2;
    a3(a2, 1);

    return;
  }

  if (!a1)
  {
    a3(MEMORY[0x1E69E7CC0], 0);
    return;
  }

  if (a1 >> 62)
  {
LABEL_28:
    v7 = sub_1DF6F6A8C();
    if (v7)
    {
LABEL_8:
      v8 = 0;
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = v8;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1E12DBF80](v10, a1);
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_26;
            }
          }

          else
          {
            if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v11 = *(a1 + 8 * v10 + 32);
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          HKSharingAuthorizationIdentifier.init(_:)(v11, &v30);
          v12 = v36;
          if (v36 != 255)
          {
            break;
          }

          sub_1DF6A4F74(v30, v31, v32, v33, v34, v35, 255);
          ++v10;
          if (v8 == v7)
          {
            goto LABEL_30;
          }
        }

        v28 = v31;
        v29 = v30;
        v24 = v32;
        v25 = v33;
        v26 = v34;
        v27 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DF6B4F68(0, *(v9 + 2) + 1, 1, v9);
        }

        v14 = *(v9 + 2);
        v13 = *(v9 + 3);
        v15 = v14 + 1;
        v17 = v26;
        v16 = v27;
        v19 = v24;
        v18 = v25;
        v20 = v28;
        v21 = v29;
        if (v14 >= v13 >> 1)
        {
          v23 = sub_1DF6B4F68((v13 > 1), v14 + 1, 1, v9);
          v15 = v14 + 1;
          v19 = v24;
          v16 = v27;
          v20 = v28;
          v18 = v25;
          v17 = v26;
          v9 = v23;
          v21 = v29;
        }

        *(v9 + 2) = v15;
        v22 = &v9[56 * v14];
        *(v22 + 4) = v21;
        *(v22 + 5) = v20;
        *(v22 + 6) = v19;
        *(v22 + 7) = v18;
        *(v22 + 8) = v17;
        *(v22 + 9) = v16;
        v22[80] = v12;
      }

      while (v8 != v7);
      goto LABEL_30;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_8;
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_30:
  a3(v9, 0);
}

uint64_t sub_1DF6A3F90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1DF6A4F28();
    v4 = sub_1DF6F65AC();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1DF6A4024(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D418, type metadata accessor for HKError, &unk_1DF6F8A24);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF6A4090(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D418, type metadata accessor for HKError, &unk_1DF6F8A24);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DF6A4100(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1DF6A4174()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A41BC(uint64_t a1)
{
  v2 = *v1;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v2);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A4200(uint64_t a1, id *a2)
{
  result = sub_1DF6F63CC();
  *a2 = 0;
  return result;
}

uint64_t sub_1DF6A4278(uint64_t a1, id *a2)
{
  v3 = sub_1DF6F63DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1DF6A42F8@<X0>(uint64_t *a2@<X8>)
{
  sub_1DF6F63EC();
  v3 = sub_1DF6F63BC();

  *a2 = v3;
  return result;
}

uint64_t sub_1DF6A434C(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DF6A43B8(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DF6A4424(void *a1, uint64_t a2)
{
  v4 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DF6A44D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DF6A4554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6F6F0C();
  sub_1DF6F62FC();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A45B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6A4784(&qword_1ECE4D450, type metadata accessor for HKError, &unk_1DF6F8A68);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1DF6A4638(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1EDC04F90, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F885C);
  v3 = sub_1DF6A4784(&qword_1ECE4D390, type metadata accessor for HKFeatureAvailabilityContext, &unk_1DF6F8104);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF6A47CC(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D380, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1DF6F881C);
  v3 = sub_1DF6A4784(&qword_1ECE4D388, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier, &unk_1DF6F8204);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4918(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D370, type metadata accessor for HKQuantityTypeIdentifier, &unk_1DF6F8378);
  v3 = sub_1DF6A4784(&qword_1ECE4D378, type metadata accessor for HKQuantityTypeIdentifier, &unk_1DF6F8318);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4A64@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DF6F63BC();

  *a2 = v3;
  return result;
}

uint64_t sub_1DF6A4AAC(uint64_t a1)
{
  v2 = sub_1DF6A4784(&qword_1ECE4D360, type metadata accessor for HKCategoryTypeIdentifier, &unk_1DF6F84D0);
  v3 = sub_1DF6A4784(&qword_1ECE4D368, type metadata accessor for HKCategoryTypeIdentifier, &unk_1DF6F8470);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DF6A4B68()
{
  v0 = sub_1DF6F63EC();
  v1 = MEMORY[0x1E12DB920](v0);

  return v1;
}

uint64_t sub_1DF6A4BA4(uint64_t a1)
{
  sub_1DF6F63EC();
  sub_1DF6F645C();
}

uint64_t sub_1DF6A4EC8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6A4F28()
{
  result = qword_1ECE4D3F8;
  if (!qword_1ECE4D3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECE4D3F8);
  }

  return result;
}

void sub_1DF6A4F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_1DF6A4F88(a1, a2, a3, a4, a5, a6, a7);
  }
}

void sub_1DF6A4F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 3 || a7 == 1)
  {
  }

  else if (!a7)
  {
  }
}

unint64_t sub_1DF6A5264()
{
  result = qword_1ECE4D440;
  if (!qword_1ECE4D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE4D440);
  }

  return result;
}

uint64_t HKQueryPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v25 = a5;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for HKQueryPublisherInner(0, a3, AssociatedTypeWitness, a5);
  (*(v14 + 16))(v16, a1, a3);
  v19 = v27;
  v26 = (*(a4 + 32))(a2, a4);
  (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19, a2);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  *(v21 + 4) = a4;
  *(v21 + 5) = v25;
  (*(v10 + 32))(&v21[v20], &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v22 = swift_allocObject();
  sub_1DF6A5C90(v16, v26, sub_1DF6A5780, v21);
  v29[3] = v18;
  v29[4] = swift_getWitnessTable();
  v29[0] = v22;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1DF6A563C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v16 - v12;
  (*(a6 + 24))(a4, a6);
  v14 = (*(a6 + 40))(v13, a1, a2, a4, a6);
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  return v14;
}

uint64_t sub_1DF6A57C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_1DF6A5C90(a1, a2, a3, a4);
  return v8;
}

unint64_t sub_1DF6A5828(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1DF69F1E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6A58A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1DF6A59B8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1DF6A5BC8(uint64_t a1)
{
  result = sub_1DF6F6A0C();
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

char *sub_1DF6A5C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = sub_1DF6F6A0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = *(v5 + 112);
  v12 = *(v6 - 8);
  v13 = *(v12 + 56);
  v13(&v4[v11], 1, 1, v6);
  v14 = *(*v4 + 120);
  v15 = swift_slowAlloc();
  *v15 = 0;
  *&v4[v14] = v15;
  v16 = *(*v4 + 136);
  *&v4[v16] = sub_1DF6F5EFC();
  (*(v12 + 32))(v10, v22, v6);
  v13(v10, 0, 1, v6);
  swift_beginAccess();
  (*(v8 + 40))(&v4[v11], v10, v7);
  swift_endAccess();
  v17 = v24;
  *(v4 + 2) = v23;
  v18 = &v4[*(*v4 + 128)];
  v19 = v25;
  *v18 = v17;
  *(v18 + 1) = v19;
  v18[16] = 0;
  return v4;
}

id *sub_1DF6A5EB4()
{
  MEMORY[0x1E12DCBA0](*(v0 + *(*v0 + 15)), -1, -1);

  v1 = *(*v0 + 14);
  v2 = sub_1DF6F6A0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DF6A7480(*(v0 + *(*v0 + 16)), *(v0 + *(*v0 + 16) + 8), *(v0 + *(*v0 + 16) + 16));
  return v0;
}

uint64_t sub_1DF6A5F90()
{
  sub_1DF6A5EB4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6A5FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18HealthKitAdditions21HKQueryPublisherInnerC5StateOyxq__G(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF6A6060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1DF6A60A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1DF6A60EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_1DF6A611C(unint64_t a1)
{
  v3 = sub_1DF6F5EFC();
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }
  }

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v4 = sub_1DF6F5EEC();
    if (v3 >= a1 || (v4 & 1) != 0)
    {
      goto LABEL_26;
    }
  }

  v5 = *(v1 + *(*v1 + 120));
  os_unfair_lock_lock(v5);
  v6 = v1 + *(*v1 + 128);
  if (*(v6 + 16))
  {

    os_unfair_lock_unlock(v5);
    return;
  }

  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(*v1 + 136);
  swift_beginAccess();
  v10 = *(v1 + v9);

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v11 = sub_1DF6F5EEC();
    v12 = sub_1DF6F5F0C();
    if (v11)
    {
LABEL_12:
      *(v1 + v9) = v12;
      goto LABEL_18;
    }

    if ((sub_1DF6F5EEC() & 1) == 0)
    {
      if (((v10 | a1) & 0x8000000000000000) != 0)
      {
LABEL_27:
        __break(1u);
        return;
      }

      v12 = v10 + a1;
      if (!__OFADD__(v10, a1))
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        __break(1u);
        goto LABEL_25;
      }
    }

    *(v1 + v9) = sub_1DF6F5F0C();
  }

LABEL_18:
  swift_endAccess();

  v13 = v1;
  v14 = v7(sub_1DF6A74A8, v1);

  v15 = *v6;
  v16 = *(v6 + 8);
  *v6 = v14;
  *(v6 + 8) = 0;
  v17 = *(v6 + 16);
  *(v6 + 16) = 1;
  v18 = v14;
  sub_1DF6A7480(v15, v16, v17);
  os_unfair_lock_unlock(v5);
  v19 = *(v13 + 16);
  [v19 executeQuery_];
  os_unfair_lock_lock(v5);
  v20 = *v6;
  v21 = *(v6 + 8);
  v22 = *(v6 + 16);
  if (v22 != 3 || v21 | v20)
  {
    *v6 = v14;
    *(v6 + 8) = 0;
    v23 = 2;
  }

  else
  {

    [v19 stopQuery_];
    v20 = *v6;
    v21 = *(v6 + 8);
    *v6 = xmmword_1DF6F8BA0;
    LOBYTE(v22) = *(v6 + 16);
    v23 = 3;
  }

  *(v6 + 16) = v23;
  sub_1DF6A7480(v20, v21, v22);
  os_unfair_lock_unlock(v5);

  sub_1DF6A7480(v7, v8, 0);
}

void sub_1DF6A6404(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *v1;
  v50 = a1;
  v51 = v4;
  v5 = *(v3 + 80);
  v6 = sub_1DF6F6A0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v46 - v12;
  v14 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v46 - v15;
  v16 = *(v2 + *(v3 + 120));
  os_unfair_lock_lock(v16);
  v17 = *(*v2 + 136);
  swift_beginAccess();
  v18 = *(v2 + v17);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    if (!v18)
    {
LABEL_6:
      os_unfair_lock_unlock(v16);
      return;
    }
  }

  v19 = *(*v2 + 112);
  swift_beginAccess();
  (*(v7 + 16))(v13, v2 + v19, v6);
  if ((*(v14 + 48))(v13, 1, v5) == 1)
  {
    (*(v7 + 8))(v13, v6);
    goto LABEL_6;
  }

  v49 = v14;
  (*(v14 + 32))(v52, v13, v5);
  v20 = v2 + *(*v2 + 128);
  v21 = *(v20 + 16);
  if ((v21 - 1) > 1u || (v47 = *(v51 + 88), v22 = *v20, sub_1DF6A74AC(*v20, *(v20 + 8), v21), (v48 = v22) == 0))
  {
    os_unfair_lock_unlock(v16);
    (*(v49 + 8))(v52, v5);
    return;
  }

  v25 = type metadata accessor for HKQueryPublisherResult(0, v47, v23, v24);
  v47 = v2;
  v26 = sub_1DF6A6F68(v25);
  v27 = v47;
  v28 = 0;
  if (v26)
  {
    (*(v49 + 56))(v10, 1, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(&v27[v19], v10, v6);
    swift_endAccess();
    v29 = *v20;
    v30 = *(v20 + 8);
    *v20 = 0;
    *(v20 + 8) = 0;
    v31 = *(v20 + 16);
    *(v20 + 16) = 3;
    v28 = v48;
    v32 = v48;
    sub_1DF6A7480(v29, v30, v31);
  }

  swift_beginAccess();
  v33 = *&v27[v17];
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
      v34 = sub_1DF6F5F0C();
LABEL_19:
      *&v27[v17] = v34;
      goto LABEL_20;
    }

    if ((v33 & 0x8000000000000000) == 0)
    {
      if (v33)
      {
        v34 = v33 - 1;
        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_20:
  swift_endAccess();
  os_unfair_lock_unlock(v16);
  if (v28)
  {
    v35 = *(v27 + 2);
    v36 = v28;
    [v35 stopQuery_];
    os_unfair_lock_lock(v16);
    v37 = &v27[*(*v27 + 128)];
    v38 = *v37;
    v39 = *(v37 + 1);
    *v37 = xmmword_1DF6F8BA0;
    v40 = v37[16];
    v37[16] = 3;
    sub_1DF6A7480(v38, v39, v40);
    os_unfair_lock_unlock(v16);
  }

  v41 = v28;
  v42 = v52;
  v43 = sub_1DF6A7054(v50);
  if (v44)
  {
    (*(v49 + 8))(v42, v5);
  }

  else
  {
    v45 = v43;
    os_unfair_lock_lock(v16);
    sub_1DF6A71E8(v47, v45);
    os_unfair_lock_unlock(v16);

    (*(v49 + 8))(v42, v5);
  }
}

void sub_1DF6A6934()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1DF6F6A0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  v11 = *(v0 + *(v1 + 120));
  os_unfair_lock_lock(v11);
  v12 = *v0;
  v13 = v0 + *(*v0 + 128);
  v15 = *v13;
  v14 = *(v13 + 8);
  v16 = *(v13 + 16);
  if (*(v13 + 16))
  {
    if (v16 == 2)
    {
      v26 = *(v13 + 8);
      v17 = *(v12 + 112);
      swift_beginAccess();
      (*(v4 + 16))(v7, v0 + v17, v3);
      if ((*(v8 + 48))(v7, 1, v2) == 1)
      {
        v18 = *(v4 + 8);
        v19 = v15;
        v18(v7, v3);
        os_unfair_lock_unlock(v11);
        sub_1DF6A7480(v15, v26, 2);
      }

      else
      {
        v22 = (*(v8 + 32))(v10, v7, v2);
        MEMORY[0x1EEE9AC00](v22);
        *(&v25 - 2) = v0;
        *(&v25 - 1) = v15;
        v23 = v15;
        sub_1DF6A6E90(v10, sub_1DF6A74D4, (&v25 - 4), v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v24);
        sub_1DF6A7480(v15, v26, 2);
        (*(v8 + 8))(v10, v2);
      }

      return;
    }
  }

  else
  {
    *v13 = xmmword_1DF6F8BA0;
    *(v13 + 16) = 3;
    sub_1DF6A7480(v15, v14, 0);
    v16 = *(v13 + 16);
  }

  if (v16 == 1)
  {
    v20 = *v13;
    v21 = *(v13 + 8);
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 3;
    sub_1DF6A7480(v20, v21, 1);
  }

  os_unfair_lock_unlock(v11);
}

void sub_1DF6A6CB8(id *a1, uint64_t a2)
{
  v4 = *(*a1 + 10);
  v5 = sub_1DF6F6A0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  (*(*(v4 - 8) + 56))(&v15 - v7, 1, 1, v4);
  v9 = *(*a1 + 14);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v9, v8, v5);
  swift_endAccess();
  v10 = *(a1 + *(*a1 + 15));
  os_unfair_lock_unlock(v10);
  [a1[2] stopQuery_];
  os_unfair_lock_lock(v10);
  v11 = a1 + *(*a1 + 16);
  v12 = *v11;
  v13 = *(v11 + 1);
  *v11 = xmmword_1DF6F8BA0;
  v14 = v11[16];
  v11[16] = 3;
  sub_1DF6A7480(v12, v13, v14);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1DF6A6E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

uint64_t sub_1DF6A6F68(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = 6u >> (swift_getEnumCaseMultiPayload() & 7);
  (*(v2 + 8))(v4, a1);
  return v5 & 1;
}

uint64_t sub_1DF6A7054(uint64_t a1)
{
  v2 = *(v1 + 88);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HKQueryPublisherResult(0, v2, v6, v7);
  sub_1DF6A72C4(v8, v5);
  v9 = sub_1DF6F5E9C();
  if (sub_1DF6A6F68(v8))
  {
    v11 = 0;
    sub_1DF6F5E7C();
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v9;
  }
}

uint64_t sub_1DF6A71E8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  swift_beginAccess();
  v5 = *(a1 + v4);
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    return swift_endAccess();
  }

  sub_1DF6F5F0C();
  v6 = sub_1DF6F5EEC();
  v7 = sub_1DF6F5F0C();
  if (v6)
  {
LABEL_9:
    *(a1 + v4) = v7;
    return swift_endAccess();
  }

  result = sub_1DF6F5EEC();
  if (result)
  {
    goto LABEL_7;
  }

  if ((v5 | a2) < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_7:
    v7 = sub_1DF6F5F0C();
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DF6A72C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    return swift_willThrow();
  }

  else
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
  }
}

void sub_1DF6A7480(void *a1, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

id sub_1DF6A74AC(id result, id a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1DF6A75CC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DF6A7694(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DF6A7694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F663C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id DateComponents.age(withCurrentDate:)()
{
  v0 = sub_1DF6F58CC();
  v1 = sub_1DF6F5A4C();
  v2 = [v0 hk:v1 ageWithCurrentDate:?];

  return v2;
}

id HKHealthStore.makeSampleIteratorPublisher(queryDescriptors:sortDescriptors:batchSize:following:upToAndIncluding:distinctBy:debugIdentifier:)@<X0>(void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_1DF69EF80(0, &qword_1EDC03658, 0x1E696C388);
  v17 = sub_1DF6F659C();
  if (a2)
  {
    sub_1DF69EF80(0, qword_1EDC046D8, 0x1E696AEB0);
    a2 = sub_1DF6F659C();
  }

  if (a6)
  {
    a6 = sub_1DF6F659C();
  }

  v18 = [objc_allocWithZone(MEMORY[0x1E696C3C0]) initWithQueryDescriptors:v17 sortDescriptors:a2 followingAnchor:a4 upToAndIncludingAnchor:a5 distinctByKeyPaths:a6];

  *a9 = v18;
  a9[1] = a3;
  a9[2] = a7;
  a9[3] = a8;
  a9[4] = v20;

  return v20;
}

id HKHealthStore.makeSampleIteratorPublisher(cursor:batchSize:debugIdentifier:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v5;

  v7 = a1;

  return v9;
}

id HKHealthStore.SampleIteratorPublisher.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;

  return v4;
}

uint64_t HKHealthStore.SampleIteratorPublisher.receive<A>(subscriber:)(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = a3;
  v7 = *(a2 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v10 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v20 = *(v3 + 32);
  v14 = sub_1DF69F1E4();
  v22 = a2;
  v23 = v14;
  v24 = a3;
  v25 = MEMORY[0x1E69E7288];
  v15 = _s23SampleIteratorPublisherV5InnerCMa(0, &v22);
  (*(v7 + 16))(v9, a1, a2);
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v25 = v13;
  v16 = swift_allocObject();
  v17 = v11;

  sub_1DF6A7B5C(v9, &v22, v20);
  v25 = v15;
  WitnessTable = swift_getWitnessTable();
  v22 = v16;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(&v22);
}

uint64_t sub_1DF6A7AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1DF6A7B5C(a1, a2, a3);
  return v6;
}

uint64_t *sub_1DF6A7B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v22 = a1;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v25 = sub_1DF6F6A0C();
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v22 - v8;
  v10 = v5;
  v11 = *a2;
  v24 = *(a2 + 8);
  v23 = *(a2 + 24);
  v12 = *(v10 + 128);
  v13 = *(v6 - 8);
  v14 = *(v13 + 56);
  v14(v3 + v12, 1, 1, v6);
  v15 = *(*v3 + 136);
  v16 = swift_slowAlloc();
  *v16 = 0;
  *(v3 + v15) = v16;
  v17 = *(*v3 + 144);
  *(v3 + v17) = sub_1DF6F5EFC();
  (*(v13 + 32))(v9, v22, v6);
  v14(v9, 0, 1, v6);
  swift_beginAccess();
  (*(v7 + 40))(v3 + v12, v9, v25);
  swift_endAccess();
  v3[2] = v11;
  *(v3 + 3) = v24;
  v18 = v26;
  v3[5] = v23;
  v3[6] = v18;
  v19 = v3 + *(*v3 + 152);
  *v19 = v11;
  *(v19 + 8) = 0;
  v20 = v11;
  return v3;
}

id *sub_1DF6A7DA8()
{
  MEMORY[0x1E12DCBA0](*(v0 + *(*v0 + 17)), -1, -1);

  v1 = *(*v0 + 16);
  v2 = sub_1DF6F6A0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1DF6A91B4(*(v0 + *(*v0 + 19)), *(v0 + *(*v0 + 19) + 8));
  return v0;
}

uint64_t sub_1DF6A7E98()
{
  sub_1DF6A7DA8();

  return swift_deallocClassInstance();
}

void sub_1DF6A7EF0(unint64_t a1)
{
  v2 = sub_1DF6F5EFC();
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return;
    }
  }

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v3 = sub_1DF6F5EEC();
    if (v2 >= a1 || (v3 & 1) != 0)
    {
      goto LABEL_10;
    }
  }

  sub_1DF6A7F84(a1);
}

void sub_1DF6A7F84(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 10);
  v5 = sub_1DF6F6A0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  v9 = *(v1 + v3[17]);
  os_unfair_lock_lock(v9);
  v10 = *(*v1 + 18);
  swift_beginAccess();
  v11 = *(v1 + v10);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v12 = sub_1DF6F5EEC();
    v13 = sub_1DF6F5F0C();
    if ((v12 & 1) == 0)
    {
      if (sub_1DF6F5EEC())
      {
        goto LABEL_7;
      }

      if ((v11 | a1) < 0)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v13 = v11 + a1;
      if (__OFADD__(v11, a1))
      {
LABEL_7:
        v13 = sub_1DF6F5F0C();
      }

      else if (v13 < 0)
      {
LABEL_20:
        __break(1u);
        return;
      }
    }

    *(v1 + v10) = v13;
  }

  swift_endAccess();
  v14 = *(*v1 + 16);
  swift_beginAccess();
  (*(v6 + 16))(v8, v1 + v14, v5);
  v15 = (*(*(v4 - 8) + 48))(v8, 1, v4);
  (*(v6 + 8))(v8, v5);
  if (v15 == 1)
  {
    goto LABEL_15;
  }

  v16 = *(v1 + v10);
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    goto LABEL_14;
  }

  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v16)
  {
LABEL_14:
    v17 = v1 + *(*v1 + 19);
    if (!v17[8])
    {
      v18 = *v17;
      v19 = sub_1DF6A86A4(*v17);
      v20 = *v17;
      *v17 = v19;
      v21 = v17[8];
      v17[8] = 1;
      v22 = v19;
      sub_1DF6A91B4(v20, v21);
      os_unfair_lock_unlock(v9);
      [v1[6] executeQuery_];

      sub_1DF6A91B4(v18, 0);
      return;
    }
  }

LABEL_15:
  os_unfair_lock_unlock(v9);
}

void sub_1DF6A826C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1DF6F6A0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  v11 = *(v0 + *(v1 + 136));
  os_unfair_lock_lock(v11);
  v12 = *(*v0 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v7, v0 + v12, v3);
  if ((*(v8 + 48))(v7, 1, v2) == 1)
  {
    (*(v4 + 8))(v7, v3);
    os_unfair_lock_unlock(v11);
  }

  else
  {
    (*(v8 + 32))(v10, v7, v2);
    sub_1DF6A6E90(v10, sub_1DF6A92BC, v0, v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v13);
    (*(v8 + 8))(v10, v2);
  }
}

void sub_1DF6A84D8(id *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = sub_1DF6F6A0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = a1 + v2[19];
  v9 = *v8;
  v10 = v8[8];
  *v8 = 0;
  v8[8] = 2;
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v11 = *(*a1 + 16);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v11, v7, v4);
  swift_endAccess();
  os_unfair_lock_unlock(*(a1 + *(*a1 + 17)));
  if (v10 == 1)
  {
    [a1[6] stopQuery_];
  }

  sub_1DF6A91B4(v9, v10);
}

id sub_1DF6A86A4(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = objc_allocWithZone(MEMORY[0x1E696C3B8]);
  v11[4] = sub_1DF6A91C8;
  v12 = v1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DF6A91D0;
  v11[3] = &block_descriptor_0;
  v5 = _Block_copy(v11);

  v6 = [v4 initWithQueryCursor:a1 limit:v3 resultsHandler:v5];
  _Block_release(v5);

  if (*(v1 + 40))
  {
    v7 = v6;
    v8 = sub_1DF6F63BC();
  }

  else
  {
    v9 = v6;
    v8 = 0;
  }

  [v6 setDebugIdentifier_];

  return v6;
}

void sub_1DF6A87D8(int a1, uint64_t a2, void *a3, id a4)
{
  if (a2)
  {
    sub_1DF6A884C(a2, a3, 0);
  }

  else if (a4)
  {
    v5 = a4;
    sub_1DF6A884C(a4, 0, 1);
  }
}

void sub_1DF6A884C(uint64_t a1, void *a2, int a3)
{
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v34 = *v3;
  v4 = v34;
  v5 = v34[10];
  v6 = sub_1DF6F6A0C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - v14;
  v16 = *(v3 + v4[17]);
  os_unfair_lock_lock(v16);
  v17 = *(*v3 + 18);
  swift_beginAccess();
  v18 = *(v3 + v17);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (v18 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    if (!v18)
    {
LABEL_6:
      os_unfair_lock_unlock(v16);
      return;
    }
  }

  v19 = *(*v3 + 16);
  swift_beginAccess();
  (*(v7 + 16))(v12, v3 + v19, v6);
  if ((*(v13 + 48))(v12, 1, v5) == 1)
  {
    (*(v7 + 8))(v12, v6);
    goto LABEL_6;
  }

  (*(v13 + 32))(v15, v12, v5);
  swift_beginAccess();
  v20 = *(v3 + v17);
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
    goto LABEL_14;
  }

  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if ((v20 & 0x8000000000000000) == 0)
    {
      if (v20)
      {
        v21 = v20 - 1;
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
      return;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v21 = sub_1DF6F5F0C();
LABEL_13:
  *(v3 + v17) = v21;
LABEL_14:
  swift_endAccess();
  v22 = v3 + *(*v3 + 19);
  v31 = *v22;
  v32 = v22[8];
  if ((v37 & 1) != 0 || (v23 = v36, v24 = v36, !v23))
  {
    *v22 = 0;
    v22[8] = 2;
    v25 = v33;
    (*(v13 + 56))(v33, 1, 1, v5);
    swift_beginAccess();
    (*(v7 + 40))(v3 + v19, v25, v6);
    swift_endAccess();
  }

  else
  {
    *v22 = v36;
    v22[8] = 0;
  }

  v26 = v35;
  os_unfair_lock_unlock(v16);
  v27 = v32;
  v28 = v31;
  if (v32 == 1)
  {
    [v3[6] stopQuery_];
  }

  v29 = sub_1DF6A8CC8(v26, v36, v37 & 1);
  if (v30)
  {
    (*(v13 + 8))(v15, v5);
    sub_1DF6A91B4(v28, v27);
  }

  else
  {
    sub_1DF6A7F84(v29);
    sub_1DF6A91B4(v28, v27);
    (*(v13 + 8))(v15, v5);
  }
}

uint64_t sub_1DF6A8CC8(unint64_t a1, void *a2, char a3)
{
  if ((a3 & 1) == 0 || (swift_willThrow(), v6 = a1, !a1))
  {
    if (a1 >> 62)
    {
      v7 = sub_1DF6F6A8C();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7)
    {
      v8 = sub_1DF6F5E9C();
      if (a3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
      if (a3)
      {
LABEL_12:
        sub_1DF6F5E7C();
        return 0;
      }
    }

    v9 = a2;
    if (a2)
    {

      return v8;
    }

    goto LABEL_12;
  }

  sub_1DF6F5E7C();

  return 0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF6A8E40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DF6A8E88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF6A8EEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DF6A8F34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1DF6A8F84(uint64_t a1)
{
  result = sub_1DF6F6A0C();
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

uint64_t sub_1DF6A9054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So13HKHealthStoreC18HealthKitAdditionsE23SampleIteratorPublisherV5InnerC5StateOy__xq__G(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DF6A90C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1DF6A9108(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DF6A914C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1DF6A91B4(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_1DF6A91D0(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03568, 0x1E696C3A8);
    v7 = sub_1DF6F65AC();
  }

  v10 = a2;
  v11 = a4;
  v12 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t DefaultOnlyLoggingCategory.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DF6F6D6C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DF6A9378()
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A93E4(uint64_t a1)
{
  sub_1DF6F6F0C();
  sub_1DF6F645C();
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6A9434@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DF6F6D6C();

  *a2 = v3 != 0;
  return result;
}

uint64_t SensitiveLogger.init(subsystem:sensitiveLogger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v29 = a6;
  v28 = a5;
  v32 = a2;
  v31 = a1;
  v30 = a9;
  v27 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v26 - v18;
  v43[0] = a4;
  v43[1] = a5;
  v43[2] = a6;
  v43[3] = a7;
  v43[4] = a8;
  v43[5] = a10;
  v20 = *(type metadata accessor for SensitiveLogger(0, v43) + 68);
  v21 = sub_1DF6F5DDC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a9 + v20, a3, v21);
  sub_1DF6F6B4C();
  swift_getTupleTypeMetadata2();
  v23 = sub_1DF6F65DC();
  v24 = sub_1DF6AA480(v23, a4, v21, a8);

  v42 = v24;
  v34 = a4;
  v35 = v28;
  v36 = v29;
  v37 = a7;
  v38 = a8;
  v39 = v27;
  v40 = v31;
  v41 = v32;
  sub_1DF6F62BC();
  swift_getAssociatedConformanceWitness();
  sub_1DF6F654C();

  (*(v22 + 8))(a3, v21);
  result = (*(v33 + 8))(v19, AssociatedTypeWitness);
  *v30 = v43[0];
  return result;
}

uint64_t sub_1DF6A97B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21[1] = a1;
  sub_1DF6AA7A0(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  (*(v17 + 16))(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a5);
  v18 = *(a7 + 8);

  v18(a5, a7);
  sub_1DF6F5DCC();
  v19 = sub_1DF6F5DDC();
  (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
  sub_1DF6F62BC();
  return sub_1DF6F62DC();
}

uint64_t sub_1DF6A99AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (HKShowSensitiveLogItems())
  {
    v7 = *(a2 + 68);
    v8 = sub_1DF6F5DDC();
    v15 = *(v8 - 8);
    (*(v15 + 16))(a3, &v3[v7], v8);
    v9 = *(v15 + 56);

    return v9(a3, 0, 1, v8);
  }

  else
  {
    v11 = *v3;
    v12 = *(a2 + 16);
    v13 = sub_1DF6F5DDC();
    v14 = *(a2 + 48);

    return MEMORY[0x1EEE68948](a1, v11, v12, v13, v14);
  }
}

uint64_t sub_1DF6A9B44(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1DF6AA7A0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6A99AC(a1, a4, v11);
  v12 = sub_1DF6F5DDC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1DF6AA7F8(v11);
  }

  v15 = sub_1DF6F5DBC();
  v16 = a5();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;
    v19 = a2();
    v21 = sub_1DF6A9D50(v19, v20, &v23);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DF69D000, v15, v16, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12DCBA0](v18, -1, -1);
    MEMORY[0x1E12DCBA0](v17, -1, -1);
  }

  return (*(v13 + 8))(v11, v12);
}

unint64_t sub_1DF6A9D50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1DF6A9E1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DF6AAB1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1DF6A9E1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1DF6A9F28(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1DF6F6BDC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1DF6A9F28(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DF6A9F74(a1, a2);
  sub_1DF6AA0A4(&unk_1F5AA85E8);
  return v3;
}

void *sub_1DF6A9F74(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DF6E8268(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DF6F6BDC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DF6F649C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DF6E8268(v10, 0);
        result = sub_1DF6F6B0C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DF6AA0A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1DF6AA190(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DF6AA190(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6AAB78(0, qword_1ECE4D620, MEMORY[0x1E69E7508], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1DF6AA29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DF6F62EC();

  return sub_1DF6AA2F8(a1, v6, a2, a3);
}

unint64_t sub_1DF6AA2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1DF6F63AC();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1DF6AA480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1DF6F661C())
  {
    sub_1DF6F6D4C();
    v13 = sub_1DF6F6D3C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1DF6F661C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1DF6F65FC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1DF6F6B5C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1DF6AA29C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_1DF6AA7A0(uint64_t a1)
{
  if (!qword_1EDC04108)
  {
    sub_1DF6F5DDC();
    v1 = sub_1DF6F6A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04108);
    }
  }
}

uint64_t sub_1DF6AA7F8(uint64_t a1)
{
  sub_1DF6AA7A0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DF6AA858()
{
  result = qword_1EDC04238[0];
  if (!qword_1EDC04238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC04238);
  }

  return result;
}

unint64_t sub_1DF6AA8B0()
{
  result = qword_1EDC03F38;
  if (!qword_1EDC03F38)
  {
    sub_1DF6AAB78(255, &qword_1EDC03F40, &type metadata for DefaultOnlyLoggingCategory, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03F38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultOnlyLoggingCategory(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DefaultOnlyLoggingCategory(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1DF6AAA44(uint64_t a1)
{
  v1 = sub_1DF6F5DDC();
  v3 = v2;
  result = sub_1DF6F62BC();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return v1;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DF6AAB1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1DF6AAB78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OSAllocatedUnfairRecursiveLock.Ownership.hashValue.getter(char a1)
{
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](a1 & 1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6AAC68(uint64_t a1)
{
  sub_1DF6F6F0C();
  OSAllocatedUnfairRecursiveLock.Ownership.hash(into:)(v3, *v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6AACC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for FeatureStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DF6AAF78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DF6F5DDC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1DF6F5DCC();
}

uint64_t sub_1DF6AB014@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF6F5DDC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
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

uint64_t HKHealthStore.sharedSummaryPublisher(transaction:package:includedIdentifiers:includedObjectTypes:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DF6AB334(0);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s27SharedSummaryQueryPublisherCMa(0);
  v15 = swift_allocObject();
  *(v15 + 104) = a1;
  *(v15 + 112) = a2;
  *(v15 + 120) = a3;
  *(v15 + 128) = a4;
  *(v15 + 136) = a5;
  *(v15 + 96) = 0;
  *(v15 + 80) = v5;
  *(v15 + 88) = 0;
  v25 = sub_1DF6ABA94(0);
  sub_1DF6AB3E0(0);
  v22 = v16;
  sub_1DF6AB450(0);
  sub_1DF6AB970(qword_1EDC04460, sub_1DF6AB3E0, &protocol conformance descriptor for StreamPublisher<A, B>);
  v17 = a1;

  v18 = v5;
  sub_1DF6F5FFC();

  sub_1DF6AB970(&qword_1EDC04100, sub_1DF6AB334, MEMORY[0x1E695BC80]);
  v19 = v23;
  v20 = sub_1DF6F5FEC();
  (*(v24 + 8))(v14, v19);
  return v20;
}

void sub_1DF6AB334(uint64_t a1)
{
  if (!qword_1EDC040F8)
  {
    sub_1DF6AB3E0(255);
    sub_1DF6AB450(255);
    sub_1DF6AB970(qword_1EDC04460, sub_1DF6AB3E0, &protocol conformance descriptor for StreamPublisher<A, B>);
    v1 = sub_1DF6F5DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC040F8);
    }
  }
}

void sub_1DF6AB3E0(uint64_t a1)
{
  if (!qword_1EDC04458)
  {
    sub_1DF6AB450(255);
    v3 = v2;
    v4 = sub_1DF69F1E4();
    PublisherBase = type metadata accessor for QueryPublisherBase(a1, v3, v4, MEMORY[0x1E69E7288]);
    if (!v6)
    {
      atomic_store(PublisherBase, &qword_1EDC04458);
    }
  }
}

void sub_1DF6AB450(uint64_t a1)
{
  if (!qword_1EDC03F30)
  {
    sub_1DF69EF80(255, &qword_1EDC03800, 0x1E696C400);
    v1 = sub_1DF6F663C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03F30);
    }
  }
}

uint64_t _s27SharedSummaryQueryPublisherCMa(uint64_t a1)
{
  result = qword_1EDC03BF8;
  if (!qword_1EDC03BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DF6AB504()
{
  v1 = v0;
  v2 = v0[13];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = swift_allocObject();
  swift_weakInit();
  if (v3)
  {

    v7 = sub_1DF6F63BC();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (v4)
  {
LABEL_3:
    v4 = sub_1DF6F671C();
  }

LABEL_4:
  if (v5)
  {
    sub_1DF69EF80(0, &qword_1EDC03EC8, 0x1E696C2E0);
    sub_1DF6ABA2C();
    v5 = sub_1DF6F671C();
  }

  v8 = objc_allocWithZone(MEMORY[0x1E696C410]);
  v12[4] = sub_1DF6ABA0C;
  v12[5] = v6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6AB898;
  v12[3] = &block_descriptor_1;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithTransaction:v2 package:v7 includedIdentifiers:v4 includedObjectTypes:v5 resultsHandler:v9];

  _Block_release(v9);

  return v10;
}

void sub_1DF6AB6C0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a4)
    {
      v8 = a4;
      v9 = a4;
      sub_1DF6C6ACC(a4);
    }

    else
    {
      if (a2)
      {
        sub_1DF6F3CDC(a2);
        if (a3)
        {
          sub_1DF6C6ACC(0);
        }
      }
    }
  }
}

uint64_t sub_1DF6AB7A8()
{
}

uint64_t sub_1DF6AB800()
{
  if (*(v0 + 88))
  {
    [*(v0 + 80) stopQuery_];
  }

  v1 = sub_1DF6F5124();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6AB898(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 32);
  if (a3)
  {
    sub_1DF69EF80(0, &qword_1EDC03800, 0x1E696C400);
    v7 = sub_1DF6F65AC();
  }

  v10 = a2;
  v11 = a5;
  v9(v10, v7, a4, a5);
}

uint64_t sub_1DF6AB970(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DF6ABA2C()
{
  result = qword_1EDC03EC0;
  if (!qword_1EDC03EC0)
  {
    sub_1DF69EF80(255, &qword_1EDC03EC8, 0x1E696C2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC03EC0);
  }

  return result;
}

uint64_t sub_1DF6ABA94(uint64_t a1)
{
  sub_1DF6A01C4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  *(v1 + 32) = xmmword_1DF6F8BA0;
  *(v1 + 48) = 2;
  v4 = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = 0;
  *(v1 + 56) = a1;
  *(v1 + 64) = v4;
  *(v1 + 24) = 257;
  return v1;
}

uint64_t HKKeyValueDomain.publisher<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = v3;
  a3[1] = a1;
  a3[2] = a2;
  v4 = v3;
}

uint64_t HKKeyValueDomain.Publisher.init(keyValueDomain:key:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t HKKeyValueDomain.makePublisherWithCurrentValue<A>(forKey:observingChanges:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v39 = a3;
  v37 = a1;
  v38 = a2;
  ObjectType = swift_getObjectType();
  v35 = sub_1DF6F6A0C();
  sub_1DF6F663C();
  sub_1DF69F1E4();
  swift_getWitnessTable();
  sub_1DF6F5E6C();
  type metadata accessor for HKKeyValueDomain.Publisher(255, a4, a5, v9);
  swift_getWitnessTable();
  swift_getWitnessTable();
  v33 = sub_1DF6F5E1C();
  sub_1DF6F6F3C();
  v29[1] = swift_getWitnessTable();
  v10 = sub_1DF6F5FDC();
  WitnessTable = swift_getWitnessTable();
  v31 = swift_getWitnessTable();
  v40 = v33;
  v41 = v10;
  v11 = v10;
  v29[0] = v10;
  v42 = WitnessTable;
  v43 = v31;
  v12 = sub_1DF6F5E5C();
  v34 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v29 - v14;
  v30 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v19 = a5;
  v20 = v6;
  v21 = v37;
  *(v18 + 32) = v6;
  *(v18 + 40) = v21;
  v22 = v38;
  *(v18 + 48) = v38;
  *(v18 + 56) = v39;
  *(v18 + 64) = ObjectType;
  v23 = v20;

  sub_1DF6F5FCC();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = v19;
  v24[4] = v23;
  v24[5] = v21;
  v24[6] = v22;
  v25 = v23;

  sub_1DF6F5F0C();
  v26 = v29[0];
  sub_1DF6F604C();

  swift_getWitnessTable();
  v27 = sub_1DF6F5FEC();
  (*(v34 + 8))(v15, v12);
  (*(v30 + 8))(v17, v26);
  return v27;
}

uint64_t sub_1DF6ABFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[4] = a5;
  sub_1DF6F6A0C();
  sub_1DF69F1E4();
  v14 = sub_1DF6F6F6C();
  v7 = MEMORY[0x1EEE9AC00](v14);
  v13[6] = v13 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v13[5] = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  sub_1DF6AC438(a6, v13 - v11);
  return sub_1DF6F6F5C();
}

void *sub_1DF6AC438@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DF69FB7C(0);
  MEMORY[0x1EEE9AC00](v7);
  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F68EC();
    if (v4)
    {
      return result;
    }

    v9 = &qword_1EDC03EF8;
    v10 = MEMORY[0x1E69E6370];
    goto LABEL_7;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F68FC();
    if (v4)
    {
      return result;
    }

    v9 = &qword_1EDC04650;
    v10 = MEMORY[0x1E6969080];
    goto LABEL_7;
  }

  sub_1DF6F5A7C();
  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F690C();
    if (!v4)
    {
      v15 = swift_dynamicCast();
      v12 = *(*(a3 - 8) + 56);
      if (v15)
      {
        v14 = a4;
        v13 = 0;
      }

      else
      {
        v14 = a4;
        v13 = 1;
      }

      return v12(v14, v13, 1, a3);
    }

    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    result = sub_1DF6F693C();
    if (v4)
    {
      return result;
    }

    v9 = &qword_1EDC04788;
    v10 = MEMORY[0x1E69E6530];
    goto LABEL_7;
  }

  sub_1DF69EF80(0, &qword_1EDC03560, 0x1E696AD98);
  if (!swift_dynamicCastMetatype())
  {
    if (swift_dynamicCastMetatype())
    {
      result = sub_1DF6F692C();
      if (v4)
      {
        return result;
      }

      v9 = &qword_1EDC04798;
      v10 = MEMORY[0x1E69E6158];
    }

    else
    {
      result = sub_1DF6F68CC();
      if (v4)
      {
        return result;
      }

      v9 = &qword_1EDC034A0;
      v10 = MEMORY[0x1E69E7CA0] + 8;
    }

LABEL_7:
    sub_1DF6AE368(0, v9, v10);
LABEL_8:
    v11 = swift_dynamicCast();
    v12 = *(*(a3 - 8) + 56);
    v13 = v11 ^ 1u;
    v14 = a4;
    return v12(v14, v13, 1, a3);
  }

  result = sub_1DF6F691C();
  if (!v4)
  {
    sub_1DF6AE310(0, &qword_1ECE4D788, &qword_1EDC03560, 0x1E696AD98);
    goto LABEL_8;
  }

  return result;
}

void sub_1DF6AC74C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;

  v14 = v9;
  v10 = sub_1DF6F6A0C();
  sub_1DF6F6DFC();
  v11 = *(v10 - 8);
  swift_allocObject();
  sub_1DF6F65BC();
  (*(v11 + 16))(v12, a1, v10);
  sub_1DF6F663C();
  type metadata accessor for HKKeyValueDomain.Publisher(0, a5, a6, v13);
  swift_getWitnessTable();
  sub_1DF6F605C();
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t HKKeyValueDomain.Publisher.key.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t HKKeyValueDomain.Publisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v6 = *(v4 + 8);
  v8 = *(v4 + 16);
  v9 = *(a2 + 24);
  v14[0] = *(a2 + 16);
  v14[1] = a3;
  v14[2] = v9;
  v15 = a4;
  v10 = _s12SubscriptionCMa(0, v14);
  swift_allocObject();
  v11 = v7;

  v12 = sub_1DF6AD8D0(v11, v6, v8, a1);

  v15 = v10;
  WitnessTable = swift_getWitnessTable();
  v14[0] = v12;
  sub_1DF6F5E8C();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1DF6ACA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v7 = *(_s17SubscriptionStateVMa(0, a4, a3, a4) + 32);
  v8 = sub_1DF6F6A0C();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a3, v8);
}

void sub_1DF6ACB04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + *(*v4 + 128));
  _s17SubscriptionStateVMa(0, *(*v4 + 80), a3, a4);
  v6 = *(*v5 + *MEMORY[0x1E69E6B68] + 16);
  v7 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v7));
  sub_1DF6AE280((v5 + v6));
  os_unfair_lock_unlock((v5 + v7));
}

uint64_t sub_1DF6ACBF0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if ((result & 1) == 0)
  {
    sub_1DF6F5F0C();
    v6 = sub_1DF6F5EEC();
    result = sub_1DF6F5F0C();
    v7 = result;
    if ((v6 & 1) == 0)
    {
      result = sub_1DF6F5EEC();
      if ((result & 1) == 0)
      {
        if ((v4 | a2) < 0)
        {
          __break(1u);
          goto LABEL_12;
        }

        v7 = v4 + a2;
        if (!__OFADD__(v4, a2))
        {
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_12:
          __break(1u);
          return result;
        }
      }

      result = sub_1DF6F5F0C();
      v7 = result;
    }

LABEL_9:
    *a1 = v7;
  }

  return result;
}

void sub_1DF6ACC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *(v4 + *(*v4 + 128));
  _s17SubscriptionStateVMa(0, *(*v4 + 80), a3, a4);
  sub_1DF6AE310(0, &qword_1EDC036F0, qword_1EDC036F8, 0x1E696C210);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1DF6AE2A4(v6 + v7, &v10);
  os_unfair_lock_unlock((v6 + v8));
  v9 = v10;
  if (v10)
  {
    [v10 stopObservation_];
  }
}

uint64_t sub_1DF6ACDD4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = sub_1DF6F6A0C();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - v5;
  v7 = *(v0 + *(v2 + 128));
  v20 = v3;
  v19 = *(v2 + 88);
  v21 = v19;
  v22 = *(v2 + 104);
  _s17SubscriptionStateVMa(0, v3, v8, v9);
  v10 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v11));
  sub_1DF6AE2D4((v7 + v10), &v23);
  os_unfair_lock_unlock((v7 + v11));
  v12 = v23;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
    goto LABEL_4;
  }

  if (v12 < 0)
  {
    __break(1u);
    return result;
  }

  if (v12)
  {
LABEL_4:
    v14 = sub_1DF6AC438(v3, v6);
    MEMORY[0x1EEE9AC00](v14);
    *(&v17 - 2) = v6;
    *(&v17 - 1) = v1;
    v15 = *(*v7 + *MEMORY[0x1E69E6B68] + 16);
    v16 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v7 + v16));
    sub_1DF6AE2F4((v7 + v15));
    os_unfair_lock_unlock((v7 + v16));
    return (*(v18 + 8))(v6, v4);
  }

  return result;
}

uint64_t sub_1DF6AD0D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if ((result & 1) == 0)
  {
    if (v4 < 0)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
LABEL_11:
    *a2 = v4;
    return result;
  }

  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
    result = sub_1DF6F5F0C();
LABEL_10:
    *a1 = result;
    goto LABEL_11;
  }

  if (v4 < 0)
  {
    goto LABEL_13;
  }

  if (v4)
  {
    result = v4 - 1;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DF6AD174(uint64_t *a1, char *a2, void *a3)
{
  v50 = a2;
  v44 = *a3;
  v42 = a3;
  v4 = *(v44 + 80);
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v38 = &v37 - v5;
  v6 = sub_1DF6F6A0C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v37 - v9;
  v11 = *(v6 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v18 = *(_s17SubscriptionStateVMa(0, v4, v16, v17) + 32);
  v19 = *(v11 + 16);
  v45 = a1;
  v41 = v18;
  v19(v15, a1 + v18, v6);
  v40 = TupleTypeMetadata2;
  v20 = *(TupleTypeMetadata2 + 48);
  v19(v10, v50, v6);
  v46 = v20;
  v19(&v10[v20], v15, v6);
  v21 = *(v49 + 48);
  v47 = v4;
  v22 = v21(v10, 1, v4);
  v48 = v11;
  if (v22 == 1)
  {
    v23 = *(v11 + 8);
    v23(v15, v6);
    if (v21(&v10[v46], 1, v47) == 1)
    {
      return (v23)(v10, v6);
    }

    goto LABEL_6;
  }

  v25 = v43;
  v19(v43, v10, v6);
  v27 = v46;
  v26 = v47;
  if (v21(&v10[v46], 1, v47) == 1)
  {
    (*(v48 + 8))(v15, v6);
    (*(v49 + 8))(v25, v26);
LABEL_6:
    (*(v39 + 8))(v10, v40);
    v28 = v45;
    goto LABEL_7;
  }

  v33 = v49;
  v34 = v38;
  (*(v49 + 32))(v38, &v10[v27], v26);
  LODWORD(v46) = sub_1DF6F63AC();
  v35 = *(v33 + 8);
  v35(v34, v26);
  v36 = *(v48 + 8);
  v36(v15, v6);
  v35(v43, v26);
  result = (v36)(v10, v6);
  v28 = v45;
  if (v46)
  {
    return result;
  }

LABEL_7:
  (*(v48 + 24))(v28 + v41, v50, v6);
  v29 = sub_1DF6F5E9C();
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if ((result & 1) == 0)
  {
    if (v29 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v29)
    {
      return result;
    }
  }

  v30 = *v28;
  sub_1DF6F5F0C();
  result = sub_1DF6F5EEC();
  if (result)
  {
    return result;
  }

  sub_1DF6F5F0C();
  v31 = sub_1DF6F5EEC();
  result = sub_1DF6F5F0C();
  v32 = result;
  if ((v31 & 1) == 0)
  {
    result = sub_1DF6F5EEC();
    if (result)
    {
LABEL_16:
      result = sub_1DF6F5F0C();
      v32 = result;
      goto LABEL_20;
    }

    if (((v30 | v29) & 0x8000000000000000) == 0)
    {
      v32 = v30 + v29;
      if (!__OFADD__(v30, v29))
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_24:
        __break(1u);
        return result;
      }

      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_20:
  *v28 = v32;
  return result;
}

uint64_t sub_1DF6AD6BC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_1DF6ACDD4();
}

uint64_t sub_1DF6AD70C()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  return v0;
}

uint64_t sub_1DF6AD7B8()
{
  sub_1DF6AD70C();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6AD854(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1DF6F6BCC();
  return sub_1DF6F6BBC();
}

uint64_t *sub_1DF6AD8D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v8 = *v4;
  v9 = *(*v4 + 80);
  v10 = sub_1DF6F6A0C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v15 = _s17SubscriptionStateVMa(0, v9, v13, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
  sub_1DF6ACA74(0, a1, v12, v9, v18);
  v19 = a1;
  *(v4 + *(*v4 + 128)) = sub_1DF6AD854(v18, v15);
  (*(*(*(v8 + 88) - 8) + 16))(v4 + *(*v4 + 112), a4);
  v20 = (v4 + *(*v4 + 120));
  v21 = v24;
  *v20 = a2;
  v20[1] = v21;
  [v19 startObservation_];
  (*(v16 + 8))(v18, v15);
  return v4;
}

uint64_t sub_1DF6ADB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DF6ADB6C(uint64_t *a1, int a2)
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

uint64_t sub_1DF6ADBB4(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF6ADBF4(uint64_t a1)
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

void sub_1DF6ADCA0(uint64_t a1)
{
  sub_1DF6AE310(319, &qword_1EDC036F0, qword_1EDC036F8, 0x1E696C210);
  if (v1 <= 0x3F)
  {
    sub_1DF6F6A0C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DF6ADD50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_31;
  }

  v11 = v9 + ((v8 + 16) & ~v8);
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v15 < 2)
    {
LABEL_31:
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v6 > 0x7FFFFFFE)
      {
        v19 = (*(v4 + 48))((v17 + v8 + 8) & ~v8);
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *v17;
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        if ((v18 + 1) >= 2)
        {
          return v18;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_31;
  }

LABEL_20:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v7 + (v11 | v16) + 1;
}

void sub_1DF6ADF20(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 16) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 8) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 8) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

id sub_1DF6AE2A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 8);
  *a2 = v2;
  return v2;
}

void sub_1DF6AE310(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1DF69EF80(255, a3, a4);
    v5 = sub_1DF6F6A0C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DF6AE368(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DF6F6A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DF6AE3B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1DF6AE480(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B21D4;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6B2148;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6AE6E0;
  v13[3] = &block_descriptor_192;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 numberForKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_1DF6AE5D0(uint64_t a1)
{
  if (!qword_1EDC03FE0)
  {
    sub_1DF6AE368(255, &qword_1EDC03EF8, MEMORY[0x1E69E6370]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03FE0);
    }
  }
}

void sub_1DF6AE650(void *a1, void *a2, void (*a3)(void *, BOOL))
{
  if (a1)
  {
    v5 = [a1 BOOLValue];
  }

  else
  {
    v5 = 2;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  v7 = a2;
  a3(v6, a2 != 0);

  sub_1DF6A12CC(v6, a2 != 0);
}

void sub_1DF6AE6E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1DF6AE7A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B2098;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6B20DC;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6AEA04;
  v13[3] = &block_descriptor_183;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 dataForKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_1DF6AE8F0(uint64_t a1)
{
  if (!qword_1EDC04008)
  {
    sub_1DF6AE368(255, &qword_1EDC04650, MEMORY[0x1E6969080]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04008);
    }
  }
}

void sub_1DF6AE970(uint64_t a1, unint64_t a2, id a3, void (*a4)(id, uint64_t, BOOL))
{
  if (a3)
  {
    v6 = 0;
    v7 = a3;
  }

  else
  {
    v6 = a2;
    v7 = a1;
    sub_1DF6B0468(a1, a2);
  }

  v8 = a3;
  a4(v7, v6, a3 != 0);

  sub_1DF6B20FC(v7, v6, a3 != 0);
}

uint64_t sub_1DF6AEA04(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1DF6F5A0C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1DF6B20E8(v4, v8);
}

void sub_1DF6AEAE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DF6F63BC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v12[4] = sub_1DF6B1FA0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6AEDAC;
  v12[3] = &block_descriptor_174;
  v10 = _Block_copy(v12);

  v11 = a3;

  [v11 dateForKey:v8 completion:v10];
  _Block_release(v10);
}

void sub_1DF6AEC00(uint64_t a1)
{
  if (!qword_1EDC04000)
  {
    sub_1DF6AF3E8(255, &qword_1EDC05240, MEMORY[0x1E6969530]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC04000);
    }
  }
}

uint64_t sub_1DF6AEC8C(uint64_t a1, void *a2, void (*a3)(char *))
{
  sub_1DF6B200C(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v12 - v8;
  if (a2)
  {
    *v9 = a2;
  }

  else
  {
    sub_1DF6B1124(a1, &v12 - v8, &qword_1EDC05240, MEMORY[0x1E6969530], sub_1DF6AF3E8);
  }

  swift_storeEnumTagMultiPayload();
  v10 = a2;
  a3(v9);
  return sub_1DF6B1E48(v9, sub_1DF6B200C);
}

uint64_t sub_1DF6AEDAC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_1DF6F5A6C();
    v10 = sub_1DF6F5A7C();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_1DF6F5A7C();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = a3;
  v9(v8, a3);

  return sub_1DF6B1FAC(v8, &qword_1EDC05240, MEMORY[0x1E6969530], sub_1DF6AF3E8);
}

void sub_1DF6AEF64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B1F44;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6B1F88;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6AE6E0;
  v13[3] = &block_descriptor_168;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 numberForKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_1DF6AF0B4(uint64_t a1)
{
  if (!qword_1EDC03FD8)
  {
    sub_1DF6AE368(255, &qword_1EDC04788, MEMORY[0x1E69E6530]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03FD8);
    }
  }
}

void sub_1DF6AF134(id a1, unint64_t a2, void (*a3)(unint64_t, void))
{
  v5 = a1;
  if (a1)
  {
    a1 = [a1 integerValue];
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = (a2 | v5) == 0;
  v8 = a2;
  a3(v6, v7 | ((a2 != 0) << 8));

  sub_1DF6B1F94(v6, v7, a2 != 0);
}

void sub_1DF6AF20C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B21D4;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6B1F2C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6AE6E0;
  v13[3] = &block_descriptor_159;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 numberForKey:v9 completion:v11];
  _Block_release(v11);
}

void sub_1DF6AF35C(uint64_t a1)
{
  if (!qword_1ECE4D790)
  {
    sub_1DF6AF3E8(255, &qword_1ECE4D788, sub_1DF6AF43C);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D790);
    }
  }
}

void sub_1DF6AF3E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DF6F6A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF6AF43C()
{
  result = qword_1EDC03560;
  if (!qword_1EDC03560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC03560);
  }

  return result;
}

void sub_1DF6AF488(void *a1, id a2, void (*a3)(id, BOOL))
{
  v5 = a2;
  if (!a2)
  {
    v5 = a1;
    v6 = a1;
  }

  v7 = a2;
  a3(v5, a2 != 0);

  sub_1DF6B1F38(v5);
}

void sub_1DF6AF53C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DF6F63BC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v12[4] = sub_1DF6B1E2C;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1DF6AF78C;
  v12[3] = &block_descriptor_150;
  v10 = _Block_copy(v12);

  v11 = a3;

  [v11 propertyListValueForKey:v8 completion:v10];
  _Block_release(v10);
}

void sub_1DF6AF658(uint64_t a1)
{
  if (!qword_1EDC03FD0)
  {
    sub_1DF6AE368(255, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03FD0);
    }
  }
}

uint64_t sub_1DF6AF6DC(uint64_t a1, id a2, void (*a3)(void *))
{
  if (a2)
  {
    v7[0] = a2;
  }

  else
  {
    sub_1DF6B1124(a1, v7, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
  }

  v8 = a2 != 0;
  v5 = a2;
  a3(v7);
  return sub_1DF6B1E48(v7, sub_1DF6B1EA8);
}

uint64_t sub_1DF6AF78C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1DF6B1E38(&v8, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  swift_unknownObjectRetain();
  v6 = a3;
  v5(v10, a3);

  return sub_1DF6B1FAC(v10, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
}

uint64_t sub_1DF6AF888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = a1;
  v9[4] = a2;
  a4(0);
  swift_allocObject();
  v10 = v5;

  return sub_1DF6F5FBC();
}

void sub_1DF6AF918(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = sub_1DF6F63BC();
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B218C;
  v10[3] = v8;
  v10[4] = a3;
  v13[4] = sub_1DF6B1E10;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6AFBC0;
  v13[3] = &block_descriptor_144;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 stringForKey:v9 completion:v11];
  _Block_release(v11);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1DF6AFAA8(uint64_t a1)
{
  if (!qword_1EDC047A0)
  {
    sub_1DF6AE368(255, &qword_1EDC04798, MEMORY[0x1E69E6158]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC047A0);
    }
  }
}

void sub_1DF6AFB28(void *a1, uint64_t a2, id a3, void (*a4)(id, uint64_t, BOOL))
{
  if (a3)
  {
    v6 = 0;
    v7 = a3;
  }

  else
  {
    v6 = a2;
    v7 = a1;
  }

  v8 = a3;
  a4(v7, v6, a3 != 0);

  sub_1DF6B1E1C(v7, v6, a3 != 0);
}

uint64_t sub_1DF6AFBC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DF6F63EC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

uint64_t HKKeyValueDomain.getAllValues()()
{
  *(swift_allocObject() + 16) = v0;
  sub_1DF6AFDF8(0);
  swift_allocObject();
  v1 = v0;
  return sub_1DF6F5FBC();
}

void sub_1DF6AFCD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  v7[2] = sub_1DF6B1DF4;
  v7[3] = v6;
  v7[4] = a3;
  v10[4] = sub_1DF6B1DF8;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DF6AFF1C;
  v10[3] = &block_descriptor_135;
  v8 = _Block_copy(v10);

  v9 = a3;

  [v9 allValuesWithCompletion_];
  _Block_release(v8);
}

void sub_1DF6AFDF8(uint64_t a1)
{
  if (!qword_1EDC03FF8)
  {
    sub_1DF6B1A50(255, &qword_1EDC03F58, MEMORY[0x1E69E5E28]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03FF8);
    }
  }
}

void sub_1DF6AFE84(uint64_t a1, id a2, void (*a3)(uint64_t, BOOL))
{
  if (a1)
  {
    v5 = a2;
    if (!a2)
    {
    }
  }

  else if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v6 = a2;
  a3(v5, a2 != 0);

  sub_1DF6B1E04(v5, a2 != 0);
}

uint64_t sub_1DF6AFF1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1DF6F62AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t HKKeyValueDomain.setBool(_:for:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_1DF6B0160(0);
  swift_allocObject();
  v8 = v3;

  return sub_1DF6F5FBC();
}

uint64_t sub_1DF6B0068(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = swift_allocObject();
  v10[2] = sub_1DF6B21CC;
  v10[3] = v9;
  v10[4] = a3;

  v11 = a3;
  sub_1DF6F694C();
}

void sub_1DF6B0160(uint64_t a1)
{
  if (!qword_1EDC03FC0)
  {
    sub_1DF69F1E4();
    v1 = sub_1DF6F5FAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC03FC0);
    }
  }
}

uint64_t HKKeyValueDomain.setData(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_1DF6B0160(0);
  swift_allocObject();
  v10 = v4;
  sub_1DF6B0468(a1, a2);

  return sub_1DF6F5FBC();
}

void sub_1DF6B027C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  if (a5 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1DF6F59FC();
  }

  v13 = sub_1DF6F63BC();
  v14 = swift_allocObject();
  v14[2] = sub_1DF6B21CC;
  v14[3] = v11;
  v14[4] = a3;
  v17[4] = sub_1DF6B21D0;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1DF6CDA24;
  v17[3] = &block_descriptor_119;
  v15 = _Block_copy(v17);
  v16 = a3;

  [v16 setData:v12 forKey:v13 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1DF6B03FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1DF6B0468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF6B047C(a1, a2);
  }

  return a1;
}

uint64_t sub_1DF6B047C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t HKKeyValueDomain.setDate(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E6969530];
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v18 - v11;
  sub_1DF6B1124(a1, &v18 - v11, &qword_1EDC05240, v7, sub_1DF6AF3E8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  sub_1DF6B08D8(v12, v14 + v13);
  v15 = (v14 + ((v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;
  sub_1DF6B0160(0);
  swift_allocObject();
  v16 = v3;

  return sub_1DF6F5FBC();
}

void sub_1DF6B0664(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = MEMORY[0x1E6969530];
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = aBlock - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1DF6B1124(a4, v13, &qword_1EDC05240, v10, sub_1DF6AF3E8);
  v15 = sub_1DF6F5A7C();
  v16 = *(v15 - 8);
  LODWORD(a1) = (*(v16 + 48))(v13, 1, v15);

  v17 = 0;
  if (a1 != 1)
  {
    v17 = sub_1DF6F5A4C();
    (*(v16 + 8))(v13, v15);
  }

  v18 = sub_1DF6F63BC();
  v19 = swift_allocObject();
  v19[2] = sub_1DF6B21CC;
  v19[3] = v14;
  v19[4] = a3;
  aBlock[4] = sub_1DF6B21D0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6CDA24;
  aBlock[3] = &block_descriptor_109;
  v20 = _Block_copy(aBlock);
  v21 = a3;

  [v21 setDate:v17 forKey:v18 completion:v20];
  _Block_release(v20);
}

uint64_t sub_1DF6B08D8(uint64_t a1, uint64_t a2)
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DF6B0958(uint64_t a1, uint64_t a2)
{
  sub_1DF6AF3E8(0, &qword_1EDC05240, MEMORY[0x1E6969530]);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_1DF6B0664(a1, a2, v8, v2 + v7, v10, v11);
}

uint64_t HKKeyValueDomain.setInteger(_:for:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2 & 1;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  sub_1DF6B0160(0);
  swift_allocObject();
  v10 = v4;

  return sub_1DF6F5FBC();
}

uint64_t sub_1DF6B0AD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = sub_1DF6B21CC;
  v11[3] = v10;
  v11[4] = a3;

  v12 = a3;
  sub_1DF6F68DC();
}

uint64_t HKKeyValueDomain.setNumber(_:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = a3;
  sub_1DF6B0160(0);
  swift_allocObject();
  v8 = a1;

  v9 = v3;
  return sub_1DF6F5FBC();
}

void sub_1DF6B0C70(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1DF6F63BC();
  v12 = swift_allocObject();
  v12[2] = sub_1DF6B21CC;
  v12[3] = v10;
  v12[4] = a3;
  v15[4] = sub_1DF6B21D0;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1DF6CDA24;
  v15[3] = &block_descriptor_92;
  v13 = _Block_copy(v15);
  v14 = a3;

  [v14 setNumber:a4 forKey:v11 completion:v13];
  _Block_release(v13);
}

uint64_t HKKeyValueDomain.setPropertyListValue(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DF6B1124(a1, v10, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v7 = v10[1];
  *(v6 + 24) = v10[0];
  *(v6 + 40) = v7;
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  sub_1DF6B0160(0);
  swift_allocObject();
  v8 = v3;

  return sub_1DF6F5FBC();
}

void sub_1DF6B0EA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_1DF6B1124(a4, aBlock, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8, sub_1DF6AE368);
  v11 = v22;
  if (v22)
  {
    v12 = __swift_project_boxed_opaque_existential_0(aBlock, v22);
    v13 = *(v11 - 1);
    MEMORY[0x1EEE9AC00](v12);
    v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);

    v16 = sub_1DF6F6E1C();
    (*(v13 + 8))(v15, v11);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  else
  {

    v16 = 0;
  }

  v17 = sub_1DF6F63BC();
  v18 = swift_allocObject();
  v18[2] = sub_1DF6B21CC;
  v18[3] = v10;
  v18[4] = a3;
  v23 = sub_1DF6B1D8C;
  v24 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DF6CDA24;
  v22 = &block_descriptor_82;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  [v20 setPropertyListValue:v16 forKey:v17 completion:v19];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_1DF6B1124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t HKKeyValueDomain.setString(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[6] = a4;
  sub_1DF6B0160(0);
  swift_allocObject();

  v10 = v4;
  return sub_1DF6F5FBC();
}

void sub_1DF6B1250(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  if (a5)
  {
    a5 = sub_1DF6F63BC();
  }

  v12 = sub_1DF6F63BC();
  v13 = swift_allocObject();
  v13[2] = sub_1DF6B21CC;
  v13[3] = v11;
  v13[4] = a3;
  v16[4] = sub_1DF6B21D0;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1DF6CDA24;
  v16[3] = &block_descriptor_72;
  v14 = _Block_copy(v16);
  v15 = a3;

  [v15 setString:a5 forKey:v12 completion:v14];
  _Block_release(v14);
}

uint64_t HKKeyValueDomain.removeValues(for:)(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_1DF6B0160(0);
  swift_allocObject();
  v4 = v1;

  return sub_1DF6F5FBC();
}

void sub_1DF6B1484(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1DF6E53FC(v8);

  v9 = sub_1DF6F671C();

  v10 = swift_allocObject();
  v10[2] = sub_1DF6B1D68;
  v10[3] = v7;
  v10[4] = a3;
  v13[4] = sub_1DF6B21D0;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF6CDA24;
  v13[3] = &block_descriptor_2;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v12 removeValuesForKeys:v9 completion:v11];
  _Block_release(v11);
}

uint64_t HKKeyValueDomain.removeAllValues()()
{
  sub_1DF6B1988(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF6B1ABC(0);
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(swift_allocObject() + 16) = v0;
  sub_1DF6AFDF8(0);
  swift_allocObject();
  v10 = v0;
  v19 = sub_1DF6F5FBC();
  sub_1DF6B1A50(0, &qword_1ECE4D7A0, MEMORY[0x1E69E5D88]);
  v11 = MEMORY[0x1E695C038];
  sub_1DF6B1CD8(&qword_1ECE4D7A8, sub_1DF6AFDF8, MEMORY[0x1E695C038]);
  sub_1DF6F600C();

  *(swift_allocObject() + 16) = v10;
  v12 = v10;
  sub_1DF6F5F0C();
  sub_1DF6B0160(0);
  sub_1DF6B1CD8(&qword_1ECE4D7B8, sub_1DF6B1988, MEMORY[0x1E695BD60]);
  sub_1DF6B1CD8(&qword_1EDC03FC8, sub_1DF6B0160, v11);
  sub_1DF6F604C();

  (*(v3 + 8))(v5, v2);
  sub_1DF6B1CD8(qword_1ECE4D7C0, sub_1DF6B1ABC, MEMORY[0x1E695BE40]);
  v13 = v17;
  v14 = sub_1DF6F5FEC();
  (*(v18 + 8))(v9, v13);
  return v14;
}

void sub_1DF6B1988(uint64_t a1)
{
  if (!qword_1ECE4D798)
  {
    sub_1DF6AFDF8(255);
    sub_1DF6B1A50(255, &qword_1ECE4D7A0, MEMORY[0x1E69E5D88]);
    sub_1DF6B1CD8(&qword_1ECE4D7A8, sub_1DF6AFDF8, MEMORY[0x1E695C038]);
    v1 = sub_1DF6F5E2C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D798);
    }
  }
}

void sub_1DF6B1A50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DF6B1ABC(uint64_t a1)
{
  if (!qword_1ECE4D7B0)
  {
    sub_1DF6B0160(255);
    sub_1DF6B1988(255);
    sub_1DF6B1CD8(&qword_1EDC03FC8, sub_1DF6B0160, MEMORY[0x1E695C038]);
    sub_1DF6B1CD8(&qword_1ECE4D7B8, sub_1DF6B1988, MEMORY[0x1E695BD60]);
    v1 = sub_1DF6F5E5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE4D7B0);
    }
  }
}

uint64_t sub_1DF6B1BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v7 = sub_1DF6E81CC(v6, 0);
  v8 = sub_1DF6EA18C(&v14, v7 + 4, v6, v5);
  v9 = v14;

  result = sub_1DF6B1D20(v9);
  if (v8 == v6)
  {
    v4 = a3;
LABEL_5:
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = v7;
    sub_1DF6B0160(0);
    swift_allocObject();
    v12 = a2;
    result = sub_1DF6F5FBC();
    *v4 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF6B1CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_44Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DF6B1D90(int a1, id a2)
{
  v4 = *(v2 + 16);
  v5 = a2 != 0;
  v6 = a2;
  v4(a2, v5);

  sub_1DF6A12CC(a2, v5);
}

void sub_1DF6B1E04(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1DF6B1E1C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

_OWORD *sub_1DF6B1E38(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1DF6B1E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DF6B1EA8(uint64_t a1)
{
  if (!qword_1EDC034A8)
  {
    sub_1DF6AE368(255, &qword_1EDC034A0, MEMORY[0x1E69E7CA0] + 8);
    sub_1DF69F1E4();
    v1 = sub_1DF6F6F6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC034A8);
    }
  }
}

uint64_t sub_1DF6B1F44(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 0x1FF;
  return v3(&v5);
}

void sub_1DF6B1F94(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1DF6B1FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1DF6B200C(uint64_t a1)
{
  if (!qword_1EDC034B0)
  {
    sub_1DF6AF3E8(255, &qword_1EDC05240, MEMORY[0x1E6969530]);
    sub_1DF69F1E4();
    v1 = sub_1DF6F6F6C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC034B0);
    }
  }
}

uint64_t sub_1DF6B209C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

uint64_t sub_1DF6B20E8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DF6B03FC(result, a2);
  }

  return result;
}

void sub_1DF6B20FC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DF6B20E8(a1, a2);
  }
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DF6B21E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  sub_1DF6F5EBC();
  v4 = sub_1DF6F6A0C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1DF6B22B4(uint64_t a1)
{
  v3 = *(*v1 + 128);
  swift_beginAccess();
  sub_1DF6F5EBC();
  v4 = sub_1DF6F6A0C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1DF6B2388@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1DF6B2428(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_1DF6B2508(uint64_t a1@<X8>)
{
  os_unfair_lock_lock((*(v1 + 16) + 16));
  sub_1DF6B2388(a1);
  v3 = (*(v1 + 16) + 16);

  os_unfair_lock_unlock(v3);
}

uint64_t sub_1DF6B2554(uint64_t a1)
{
  v3 = *v1;
  sub_1DF6B5844(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_1DF6B25D0(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1DF6B2508(v9);
  return sub_1DF6B26E4;
}

void sub_1DF6B26E4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1DF6B5844(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1DF6B5844(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1DF6B27C0(void *a1)
{
  v3 = v1[2];
  os_unfair_lock_lock(v3 + 4);
  sub_1DF6B5934(a1, v10);
  v4 = *(*v1 + 152);
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1DF6B5090(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1DF6B5090((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  sub_1DF6A3698(v10, &v5[5 * v8 + 4]);
  *(v1 + v4) = v5;
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF6F5F0C();
  return sub_1DF6F5F2C();
}

uint64_t sub_1DF6B28F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v32 = a3;
  v28 = *v3;
  v5 = v28[11];
  v29 = v28[12];
  v30 = v5;
  v6 = sub_1DF6F5EBC();
  v7 = sub_1DF6F6A0C();
  v27 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = *(v6 - 8);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v26 - v13;
  v15 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 16);
  os_unfair_lock_lock(v18 + 4);
  if (*(v3 + 25) == 1)
  {
    v20 = v30;
    v33[0] = v28[10];
    v19 = v33[0];
    v33[1] = v30;
    v33[2] = a2;
    v34 = v32;
    v21 = type metadata accessor for StreamPublisher.StreamConduit(0, v33);
    (*(v15 + 16))(v17, v31, a2);
    swift_allocObject();

    v23 = sub_1DF6B3A54(v22, v17);
    swift_beginAccess();
    v24 = type metadata accessor for StreamConduitList(0, v19, v20, v29);
    sub_1DF6B9438(v23, v24);
    swift_endAccess();
    os_unfair_lock_unlock(v18 + 4);
    v34 = v21;
    WitnessTable = swift_getWitnessTable();
    v33[0] = v23;
    sub_1DF6F5E8C();
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1DF6B21E8(v10);
    if ((*(v11 + 48))(v10, 1, v6) == 1)
    {
      result = (*(v27 + 8))(v10, v7);
      __break(1u);
    }

    else
    {
      (*(v11 + 32))(v14, v10, v6);
      os_unfair_lock_unlock(v18 + 4);
      sub_1DF6F5F3C();
      sub_1DF6F5E8C();
      __swift_destroy_boxed_opaque_existential_1(v33);
      sub_1DF6F5E7C();
      return (*(v11 + 8))(v14, v6);
    }
  }

  return result;
}

void sub_1DF6B2CF0(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - v5;
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  if (*(v1 + 25) == 1)
  {
    v8 = v1 + *(*v1 + 136);
    swift_beginAccess();
    v9 = *v8;
    LOBYTE(v8) = *(v8 + 8);
    (*(v4 + 16))(v6, a1, v3);
    sub_1DF6B59B0(v9, v8);
    sub_1DF6B2428(v6);
    os_unfair_lock_unlock(v7 + 4);
    MEMORY[0x1EEE9AC00](v10);
    *(&v11 - 2) = a1;
    sub_1DF6B962C(sub_1DF6B59CC, (&v11 - 4), v9, v8);
    sub_1DF6B5A20(v9, v8);
  }

  else
  {

    os_unfair_lock_unlock(v7 + 4);
  }
}

void sub_1DF6B2EFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = sub_1DF6F5EBC();
  v7 = sub_1DF6F6A0C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  if (*(v1 + 25) == 1)
  {
    *(v1 + 25) = 0;
    v11 = *(v6 - 8);
    (*(v11 + 16))(v9, a1, v6);
    (*(v11 + 56))(v9, 0, 1, v6);
    v12 = v1;
    sub_1DF6B22B4(v9);
    v13 = v1 + *(*v1 + 136);
    swift_beginAccess();
    v14 = *v13;
    v15 = *(v13 + 8);
    swift_beginAccess();
    sub_1DF6B59B0(v14, v15);
    type metadata accessor for StreamConduitList(0, *(v3 + 80), v4, v5);
    sub_1DF6B9750();
    v16 = swift_endAccess();
    (*(*v12 + 408))(v16);
    os_unfair_lock_unlock(v10 + 4);
    MEMORY[0x1EEE9AC00](v17);
    *&v18[-16] = a1;
    sub_1DF6B962C(sub_1DF6B5A3C, &v18[-32], v14, v15);
    sub_1DF6B5A20(v14, v15);
  }

  else
  {

    os_unfair_lock_unlock(v10 + 4);
  }
}

void sub_1DF6B3208(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  v6 = v4[12];
  v7 = sub_1DF6F5EBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  v11 = v2[2];
  os_unfair_lock_lock(v11 + 4);
  if (*(v2 + 25) == 1)
  {
    swift_beginAccess();
    v12 = type metadata accessor for StreamConduitList(0, v4[10], v5, v6);
    sub_1DF6B977C(a1, v12);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    if (*(v2 + 24) == 1)
    {
      (*(*(v5 - 8) + 56))(v10, 1, 1, v5);
      sub_1DF6B2EFC(v10);
      (*(v8 + 8))(v10, v7);
    }
  }

  else
  {

    os_unfair_lock_unlock(v11 + 4);
  }
}

void sub_1DF6B3434()
{
  v1 = v0[2];
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 160);
  if ((*(v0 + v2) & 1) == 0)
  {
    *(v0 + v2) = 1;
    (*(*v0 + 400))();
  }

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t StreamPublisher.DownstreamDisconnectBehaviour.hashValue.getter()
{
  v1 = *v0;
  sub_1DF6F6F0C();
  MEMORY[0x1E12DC330](v1);
  return sub_1DF6F6F2C();
}

uint64_t sub_1DF6B3558(uint64_t a1)
{
  sub_1DF6F6F0C();
  StreamPublisher.DownstreamDisconnectBehaviour.hash(into:)();
  return sub_1DF6F6F2C();
}

uint64_t StreamPublisher.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StreamPublisher.init(_:)(a1);
  return v2;
}

uint64_t *StreamPublisher.init(_:)(uint64_t a1)
{
  v3 = *v1;
  sub_1DF6B5E18(0, &qword_1EDC04670, type metadata accessor for os_unfair_lock_s);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v1[2] = v4;
  *(v1 + 25) = 1;
  v5 = *(v3 + 128);
  v6 = sub_1DF6F5EBC();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v1 + *(*v1 + 136);
  v8 = *(v3 + 80);
  *v7 = sub_1DF6B942C();
  *(v7 + 8) = v9;
  *(v1 + *(*v1 + 152)) = MEMORY[0x1E69E7CC0];
  *(v1 + *(*v1 + 160)) = 0;
  (*(*(v8 - 8) + 32))(v1 + *(*v1 + 144), a1, v8);
  *(v1 + 24) = 0;
  return v1;
}

char *StreamPublisher.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 152);
  swift_beginAccess();
  v4 = *(v0 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;

    do
    {
      sub_1DF6B5934(v6, v10);
      __swift_project_boxed_opaque_existential_0(v10, v10[3]);
      sub_1DF6F5EAC();
      __swift_destroy_boxed_opaque_existential_1(v10);
      v6 += 40;
      --v5;
    }

    while (v5);
  }

  v7 = *(*v0 + 128);
  sub_1DF6F5EBC();
  v8 = sub_1DF6F6A0C();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  sub_1DF6B5A20(*(v1 + *(*v1 + 136)), *(v1 + *(*v1 + 136) + 8));
  (*(*(*(v2 + 80) - 8) + 8))(v1 + *(*v1 + 144));

  return v1;
}

uint64_t StreamPublisher.__deallocating_deinit()
{
  StreamPublisher.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DF6B3A54(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  v3 = *v2;
  v4 = *(*v2 + 176);
  v5 = sub_1DF6F6A0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  *(v2 + 2) = 0;
  v9 = *(v3 + 200);
  v10 = *(v4 - 8);
  v11 = *(v10 + 56);
  v11(&v2[v9], 1, 1, v4);
  v2[*(*v2 + 208)] = 0;
  v12 = *(*v2 + 216);
  *&v2[v12] = sub_1DF6F5EFC();
  v13 = *(*v2 + 224);
  sub_1DF6B5E18(0, &qword_1EDC04670, type metadata accessor for os_unfair_lock_s);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v2[v13] = v14;
  v15 = *(*v2 + 232);
  sub_1DF6B5E18(0, &qword_1EDC04668, type metadata accessor for os_unfair_recursive_lock_s);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v2[v15] = v16;
  v2[*(*v2 + 240)] = 0;
  *(v2 + 2) = v19;

  (*(v10 + 32))(v8, v20, v4);
  v11(v8, 0, 1, v4);
  swift_beginAccess();
  (*(v6 + 40))(&v2[v9], v8, v5);
  swift_endAccess();
  return sub_1DF6B9920();
}

void sub_1DF6B3CFC(uint64_t a1)
{
  v25 = *v1;
  v2 = v25;
  v26 = a1;
  v3 = *(v25 + 176);
  v4 = sub_1DF6F6A0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = *(v1 + *(v2 + 224));
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 216);
  swift_beginAccess();
  v14 = *(v1 + v13);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    if (!v14)
    {
LABEL_6:
      *(v1 + *(*v1 + 240)) = 0;
      os_unfair_lock_unlock(v12 + 4);
      return;
    }
  }

  v15 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v15, v4);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_6;
  }

  v16 = v11;
  (*(v9 + 32))(v11, v8, v3);
  swift_beginAccess();
  v17 = *(v1 + v13);
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
      v18 = sub_1DF6F5F0C();
    }

    else
    {
      if (v17 < 0)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (!v17)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v18 = v17 - 1;
    }

    *(v1 + v13) = v18;
  }

  swift_endAccess();
  *(v1 + *(*v1 + 240)) = 1;
  os_unfair_lock_unlock(v12 + 4);
  v19 = v1;
  os_unfair_recursive_lock_lock_with_options();
  v20 = sub_1DF6F5E9C();
  os_unfair_recursive_lock_unlock();
  sub_1DF6F5F0C();
  if (sub_1DF6F5EEC())
  {
LABEL_17:
    os_unfair_lock_lock(v12 + 4);
    swift_beginAccess();
    v21 = *(v19 + v13);
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
LABEL_26:
      swift_endAccess();
      os_unfair_lock_unlock(v12 + 4);
      goto LABEL_27;
    }

    sub_1DF6F5F0C();
    v22 = sub_1DF6F5EEC();
    v23 = sub_1DF6F5F0C();
    if (v22)
    {
LABEL_25:
      *(v19 + v13) = v23;
      goto LABEL_26;
    }

    if (sub_1DF6F5EEC())
    {
LABEL_23:
      v23 = sub_1DF6F5F0C();
      goto LABEL_25;
    }

    if (((v21 | v20) & 0x8000000000000000) == 0)
    {
      v23 = v21 + v20;
      if (!__OFADD__(v21, v20))
      {
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

LABEL_34:
        __break(1u);
        return;
      }

      goto LABEL_23;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v20 < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v20)
  {
    goto LABEL_17;
  }

LABEL_27:
  (*(v9 + 8))(v16, v3);
}

void sub_1DF6B4148(uint64_t a1)
{
  v18[0] = *v1;
  v2 = v18[0];
  v18[1] = a1;
  v3 = *(v18[0] + 176);
  v4 = sub_1DF6F6A0C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v18 - v10;
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - v13;
  v15 = *&v1[*(v2 + 224)];
  os_unfair_lock_lock(v15 + 4);
  v16 = *(*v1 + 200);
  swift_beginAccess();
  (*(v5 + 16))(v11, &v1[v16], v4);
  if ((*(v12 + 48))(v11, 1, v3) == 1)
  {
    (*(v5 + 8))(v11, v4);
    os_unfair_lock_unlock(v15 + 4);
  }

  else
  {
    (*(v12 + 32))(v14, v11, v3);
    (*(v12 + 56))(v8, 1, 1, v3);
    swift_beginAccess();
    (*(v5 + 40))(&v1[v16], v8, v4);
    swift_endAccess();
    v17 = *(v1 + 2);
    *(v1 + 2) = 0;
    os_unfair_lock_unlock(v15 + 4);
    if (v17)
    {

      sub_1DF6B3208(v1);
    }

    os_unfair_recursive_lock_lock_with_options();
    sub_1DF6F5E7C();
    os_unfair_recursive_lock_unlock();

    (*(v12 + 8))(v14, v3);
  }
}

void sub_1DF6B4498(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v39 = *(*v2 + 160);
  v40 = *(v39 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = v38 - v8;
  v10 = *(v9 + 176);
  v11 = sub_1DF6F6A0C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v38 - v14;
  v16 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = v38 - v17;
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_4:
  v38[1] = v4;
  v42 = v18;
  v19 = *&v2[*(*v2 + 224)];
  os_unfair_lock_lock(v19 + 4);
  v20 = *(*v2 + 200);
  swift_beginAccess();
  (*(v12 + 16))(v15, &v2[v20], v11);
  if ((*(v16 + 48))(v15, 1, v10) == 1)
  {
    (*(v12 + 8))(v15, v11);
    os_unfair_lock_unlock(v19 + 4);
    return;
  }

  v21 = v42;
  (*(v16 + 32))(v42, v15, v10);
  v22 = *(*v2 + 216);
  swift_beginAccess();
  v23 = *&v2[v22];
  sub_1DF6F5F0C();
  if ((sub_1DF6F5EEC() & 1) == 0)
  {
    sub_1DF6F5F0C();
    v24 = sub_1DF6F5EEC();
    v25 = sub_1DF6F5F0C();
    if ((v24 & 1) == 0)
    {
      if (sub_1DF6F5EEC())
      {
        goto LABEL_12;
      }

      if ((v23 | a1) < 0)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v25 = v23 + a1;
      if (__OFADD__(v23, a1))
      {
LABEL_12:
        v25 = sub_1DF6F5F0C();
      }

      else if (v25 < 0)
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    *&v2[v22] = v25;
  }

  swift_endAccess();
  v26 = *(*v2 + 208);
  if ((v2[v26] & 1) == 0)
  {
    v2[v26] = 1;
    if (*(v2 + 2))
    {

      sub_1DF6B3434();
    }
  }

  v27 = *(*v2 + 240);
  if ((v2[v27] & 1) == 0 && *(v2 + 2))
  {

    sub_1DF6B2508(v7);

    v28 = v7;
    v29 = v39;
    (*(v40 + 32))(v41, v28, v39);
    v2[v27] = 1;
    swift_beginAccess();
    v30 = *&v2[v22];
    sub_1DF6F5F0C();
    if ((sub_1DF6F5EEC() & 1) == 0)
    {
      sub_1DF6F5F0C();
      if (sub_1DF6F5EEC())
      {
        v31 = sub_1DF6F5F0C();
      }

      else
      {
        if (v30 < 0)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (!v30)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v31 = v30 - 1;
      }

      *&v2[v22] = v31;
    }

    swift_endAccess();
    os_unfair_lock_unlock(v19 + 4);
    os_unfair_recursive_lock_lock_with_options();
    v32 = sub_1DF6F5E9C();
    os_unfair_recursive_lock_unlock();
    sub_1DF6F5F0C();
    if (sub_1DF6F5EEC())
    {
LABEL_31:
      os_unfair_lock_lock(v19 + 4);
      swift_beginAccess();
      v33 = *&v2[v22];
      sub_1DF6F5F0C();
      v34 = sub_1DF6F5EEC();
      v21 = v42;
      if (v34)
      {
LABEL_42:
        swift_endAccess();
        os_unfair_lock_unlock(v19 + 4);
        (*(v40 + 8))(v41, v29);
        goto LABEL_43;
      }

      sub_1DF6F5F0C();
      v35 = sub_1DF6F5EEC();
      v36 = sub_1DF6F5F0C();
      if (v35)
      {
        v29 = v39;
LABEL_41:
        *&v2[v22] = v36;
        goto LABEL_42;
      }

      v37 = sub_1DF6F5EEC();
      v29 = v39;
      if (v37)
      {
        goto LABEL_38;
      }

      if (((v33 | v32) & 0x8000000000000000) == 0)
      {
        v36 = v33 + v32;
        if (!__OFADD__(v33, v32))
        {
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

LABEL_53:
          __break(1u);
          return;
        }

LABEL_38:
        v36 = sub_1DF6F5F0C();
        goto LABEL_41;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if ((v32 & 0x8000000000000000) == 0)
    {
      if (!v32)
      {
        (*(v40 + 8))(v41, v29);
        (*(v16 + 8))(v42, v10);
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_47;
  }

  os_unfair_lock_unlock(v19 + 4);
LABEL_43:
  (*(v16 + 8))(v21, v10);
}

void sub_1DF6B4AD0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = sub_1DF6F6A0C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = *&v0[*(v1 + 224)];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v0 + 200);
  swift_beginAccess();
  (*(v4 + 16))(v9, &v0[v11], v3);
  v12 = *(v2 - 8);
  LODWORD(v1) = (*(v12 + 48))(v9, 1, v2);
  (*(v4 + 8))(v9, v3);
  if (v1 == 1)
  {
    os_unfair_lock_unlock(v10 + 4);
  }

  else
  {
    (*(v12 + 56))(v7, 1, 1, v2);
    swift_beginAccess();
    (*(v4 + 40))(&v0[v11], v7, v3);
    swift_endAccess();
    v13 = *(v0 + 2);
    *(v0 + 2) = 0;
    os_unfair_lock_unlock(v10 + 4);
    if (v13)
    {

      sub_1DF6B3208(v0);
    }
  }
}

uint64_t sub_1DF6B4D3C()
{

  v1 = *(*v0 + 200);
  v2 = sub_1DF6F6A0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

char *sub_1DF6B4E10(uint64_t a1)
{
  v1 = sub_1DF6B9920();

  v2 = *(*v1 + 200);
  v3 = sub_1DF6F6A0C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t sub_1DF6B4EE4(uint64_t a1)
{
  sub_1DF6B4E10(a1);

  return swift_deallocClassInstance();
}

char *sub_1DF6B4F68(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6B5DCC(0, &qword_1ECE4D858, &type metadata for HKSharingAuthorizationIdentifier);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1DF6B5090(void *result, int64_t a2, char a3, void *a4)
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
    sub_1DF6B5E78(0, &qword_1ECE4D870, sub_1DF6B5ECC);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1DF6B5ECC();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF6B51DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6B5E78(0, &qword_1ECE4D848, sub_1DF6B5D74);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DF6B52F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DF6B5DCC(0, &qword_1ECE4D860, MEMORY[0x1E69E6158]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF6B5440(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
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
    sub_1DF6B5E78(0, a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1DF6B5540(void *result, int64_t a2, char a3, void *a4)
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
    sub_1DF6B5E78(0, &qword_1ECE4D868, type metadata accessor for HKFeatureAvailabilityRequirementIdentifier);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for HKFeatureAvailabilityRequirementIdentifier(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *_s18HealthKitAdditions15StreamPublisherC_12onDisconnectACyxq_Gx_AC010DownstreamG9BehaviourOyxq__Gtcfc_0(uint64_t a1)
{
  v3 = *v1;
  sub_1DF6B5E18(0, &qword_1EDC04670, type metadata accessor for os_unfair_lock_s);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v1[2] = v4;
  *(v1 + 25) = 1;
  v5 = *(v3 + 128);
  v6 = sub_1DF6F5EBC();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v1 + *(*v1 + 136);
  v8 = *(v3 + 80);
  *v7 = sub_1DF6B942C();
  *(v7 + 8) = v9;
  *(v1 + *(*v1 + 152)) = MEMORY[0x1E69E7CC0];
  *(v1 + *(*v1 + 160)) = 0;
  (*(*(v8 - 8) + 32))(v1 + *(*v1 + 144), a1, v8);
  *(v1 + 24) = 1;
  return v1;
}

void sub_1DF6B5844(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  v7 = v1[2];
  os_unfair_lock_lock(v7 + 4);
  (*(v4 + 16))(v6, a1, v3);
  sub_1DF6B2428(v6);
  os_unfair_lock_unlock(v7 + 4);
  sub_1DF6B2CF0(a1);
}

uint64_t sub_1DF6B5934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DF6B59B0(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1DF6B5A20(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1DF6B5CAC(uint64_t a1)
{
  result = sub_1DF6F6A0C();
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

void sub_1DF6B5D74()
{
  if (!qword_1ECE4D850)
  {
    v0 = sub_1DF6F681C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE4D850);
    }
  }
}

void sub_1DF6B5DCC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DF6F6DFC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}
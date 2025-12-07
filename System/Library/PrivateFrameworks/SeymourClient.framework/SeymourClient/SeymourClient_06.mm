uint64_t type metadata accessor for OptInPrivacyPreferenceUpdated(uint64_t a1)
{
  result = qword_1EDB71748;
  if (!qword_1EDB71748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CadenceMetricUpdated.cadenceMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65274();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CadenceMetricUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CadenceMetricUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for CadenceMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F5500;
  if (!qword_1EB8F5500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CadenceMetricUpdated.init(cadenceMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65274();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for CadenceMetricUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4E6D724(uint64_t a1)
{
  result = sub_1B4F65274();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t NetworkMonitorError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E6D848()
{
  result = qword_1EB8F5510;
  if (!qword_1EB8F5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5510);
  }

  return result;
}

uint64_t RemoteParticipantDeviceType.init(modelString:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B4F67F64();
  v3 = [v2 hasPrefix:@"iPhone"];

  if (v3)
  {

    return 0;
  }

  else
  {
    v5 = sub_1B4F67F64();
    v6 = [v5 hasPrefix:@"Watch"];

    if (v6)
    {

      return 1;
    }

    else
    {
      v7 = sub_1B4F67F64();
      v8 = [v7 hasPrefix:@"AppleTV"];

      if (v8)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B4F67F64();

        v10 = v9;
        LODWORD(v9) = [v10 hasPrefix:@"iPad"];

        if (v9)
        {
          return 2;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t AchievementEnvironmentCacheUpdated.cache.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66F74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AchievementEnvironmentCacheUpdated.init(cache:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66F74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AchievementEnvironmentCacheUpdated(uint64_t a1)
{
  result = qword_1EDB71628;
  if (!qword_1EDB71628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E6DB54(uint64_t a1)
{
  result = sub_1B4F66F74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void static CurrentDevice.identifier()(double a1)
{
  v1 = MobileGestalt_get_current_device();
  if (v1)
  {
    v2 = v1;
    v3 = MobileGestalt_copy_uniqueDeviceID_obj();

    if (v3)
    {
      sub_1B4F67F74();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id static CurrentDevice.hasExtendedColorDisplay()(double a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    hasExtendedColorDisplay = MobileGestalt_get_hasExtendedColorDisplay();

    return hasExtendedColorDisplay;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FitnessModeObserver.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 36) = 1;
  return result;
}

uint64_t FitnessModeObserver.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  return v2;
}

uint64_t FitnessModeObserver.deinit()
{
  if ((*(v0 + 36) & 1) == 0)
  {
    [objc_opt_self() cancelToken_];
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B4E6DD44(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B4F67C54();
    __swift_project_value_buffer(v3, qword_1EDB72490);
    v4._countAndFlagsBits = 0xD000000000000027;
    v4._object = 0x80000001B4F819D0;
    v5._object = 0x80000001B4F81A00;
    v5._countAndFlagsBits = 0xD00000000000001ALL;
    Logger.trace(file:function:)(v4, v5);
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for FitnessModeUpdated, &protocol witness table for FitnessModeUpdated, ObjectType, v6);
  }

  return result;
}

SeymourClient::FitnessMode __swiftcall FitnessModeObserver.queryMode()()
{
  v0 = [objc_opt_self() sharedBehavior];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 fitnessMode];

    LOBYTE(v0) = sub_1B4DE30B4(v2);
  }

  else
  {
    __break(1u);
  }

  return v0;
}

id sub_1B4E6DEF4()
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v1 = result;
    v2 = [result fitnessMode];

    return sub_1B4DE30B4(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FitnessModeObserver.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FitnessModeObserver.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1B4E6E03C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4E6E058(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t GatedResourceError.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E6E118()
{
  result = qword_1EB8F5518;
  if (!qword_1EB8F5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F5518);
  }

  return result;
}

uint64_t sub_1B4E6E390(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ActivityTracer(0);
  __swift_allocate_value_buffer(v8, a2);
  v9 = __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for LogSystem(0);
  v11 = __swift_project_value_buffer(v10, a4) + *(v10 + 24);

  return sub_1B4DDD9BC(v11, v9);
}

uint64_t Meditation.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F64A84();

  return sub_1B4F64A94();
}

uint64_t sub_1B4E6E4C4(double a1)
{
  sub_1B4F64A84();

  return sub_1B4F64A94();
}

uint64_t DistanceMetricUpdated.distanceMetric.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65854();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DistanceMetricUpdated.sessionIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DistanceMetricUpdated(0) + 20));

  return v1;
}

uint64_t type metadata accessor for DistanceMetricUpdated(uint64_t a1)
{
  result = qword_1EB8F5568;
  if (!qword_1EB8F5568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DistanceMetricUpdated.init(distanceMetric:sessionIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F65854();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for DistanceMetricUpdated(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1B4E6E73C(uint64_t a1)
{
  result = sub_1B4F65854();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4E6E7B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_1B4F65B34();
  v4 = *(v26 - 8);
  v6 = MEMORY[0x1EEE9AC00](v26, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 sources];
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    goto LABEL_15;
  }

  v11 = v9;
  sub_1B4E6EA2C();
  v12 = sub_1B4F681C4();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v13 = sub_1B4F688F4();
  if (!v13)
  {
LABEL_14:

LABEL_15:
    sub_1B4F661E4();

    return;
  }

LABEL_4:
  v27 = v10;
  sub_1B4E25808(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v22 = a2;
    v23 = a1;
    v14 = 0;
    v15 = v27;
    v16 = v12;
    v24 = v4 + 32;
    v25 = v12 & 0xC000000000000001;
    do
    {
      if (v25)
      {
        v17 = MEMORY[0x1B8C82290](v14, v16);
      }

      else
      {
        v17 = *(v16 + 8 * v14 + 32);
      }

      v18 = v17;
      v19 = [v17 bundleIdentifier];
      sub_1B4F67F74();

      sub_1B4F65B14();
      v27 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B4E25808((v20 > 1), v21 + 1, 1);
        v15 = v27;
      }

      ++v14;
      *(v15 + 16) = v21 + 1;
      (*(v4 + 32))(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v8, v26);
      v16 = v12;
    }

    while (v13 != v14);

    a1 = v23;
    goto LABEL_15;
  }

  __break(1u);
}

unint64_t sub_1B4E6EA2C()
{
  result = qword_1EB8F5578;
  if (!qword_1EB8F5578)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB8F5578);
  }

  return result;
}

uint64_t AssetBundleUpdated.bundle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64B34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AssetBundleUpdated.init(bundle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64B34();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for AssetBundleUpdated(uint64_t a1)
{
  result = qword_1EDB71998;
  if (!qword_1EDB71998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E6EBD0(uint64_t a1)
{
  result = sub_1B4F64B34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4E6EC3C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v39 = a3;
  v38 = a2(0);
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v37 = v31 - v7;
  v8 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v31[1] = v3;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1B4E257A4(0, v8, 0);
    v42 = a1 + 56;
    v43 = v44;
    result = sub_1B4F688B4();
    v10 = result;
    v11 = 0;
    v35 = v5 + 8;
    v36 = v5 + 16;
    v32 = a1 + 64;
    v33 = v8;
    v34 = v5;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v42 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v40 = *(a1 + 36);
      v15 = v37;
      v16 = v38;
      v17 = (*(v5 + 16))(v37, *(a1 + 48) + *(v5 + 72) * v10, v38);
      v41 = v39(v17);
      v19 = v18;
      result = (*(v5 + 8))(v15, v16);
      v20 = v43;
      v44 = v43;
      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1B4E257A4((v21 > 1), v22 + 1, 1);
        v20 = v44;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v41;
      *(v23 + 40) = v19;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v24 = *(v42 + 8 * v14);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v20;
      if (v40 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v12 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v33;
        v5 = v34;
      }

      else
      {
        v26 = v14 << 6;
        v27 = v14 + 1;
        v13 = v33;
        v28 = (v32 + 8 * v14);
        v5 = v34;
        while (v27 < (v12 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1B4DF3104(v10, v40, 0);
            v12 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1B4DF3104(v10, v40, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      if (v11 == v13)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1B4E6EF4C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, double a4)
{
  v41 = sub_1B4F65C64();
  MEMORY[0x1EEE9AC00](v41, v8);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10, v11);
  v40 = &v30 - v14;
  v37 = *(a3 + 16);
  if (v37)
  {
    v15 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = MEMORY[0x1E69E7CC0];
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v15 < *(a3 + 16))
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = *(v12 + 72);
      v18 = a3;
      v19 = a3 + v16 + v17 * v15;
      v20 = v12;
      v21 = a1;
      v22 = v40;
      (*(v12 + 16))(v40, v19, v41, v13);
      v23 = v22;
      a1 = v21;
      v24 = v21(v23);
      if (v4)
      {
        (*v34)(v40, v41);

        return;
      }

      if (v24)
      {
        v25 = *v35;
        (*v35)(v38, v40, v41);
        v26 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4E2584C(0, *(v26 + 16) + 1, 1);
          v26 = v42;
        }

        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1B4E2584C((v28 > 1), v29 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v29 + 1;
        v39 = v26;
        v25((v26 + v16 + v29 * v17), v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        (*v34)(v40, v41);
        a3 = v18;
      }

      ++v15;
      v12 = v20;
      if (v37 == v15)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

void sub_1B4E6F21C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1B4E95150(a3 + v16 + v17 * v14, v13, type metadata accessor for RemoteBrowsingJournalEntry);
      v18 = a1(v13);
      if (v3)
      {
        sub_1B4E951B8(v13, type metadata accessor for RemoteBrowsingJournalEntry);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1B4E95218(v13, v25, type metadata accessor for RemoteBrowsingJournalEntry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B4E25934(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B4E25934((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1B4E95218(v25, v15 + v16 + v21 * v17, type metadata accessor for RemoteBrowsingJournalEntry);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1B4E951B8(v13, type metadata accessor for RemoteBrowsingJournalEntry);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t RemoteBrowsingEnvironment.applyingJournal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v1147 = a1;
  v1088 = a2;
  v1094 = sub_1B4F66BA4();
  v1099 = *(v1094 - 8);
  MEMORY[0x1EEE9AC00](v1094, v3);
  v1015 = &v906[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1093 = sub_1B4F66A54();
  v1098 = *(v1093 - 8);
  MEMORY[0x1EEE9AC00](v1093, v5);
  v1014 = &v906[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1092 = sub_1B4F669F4();
  v1150 = *(v1092 - 8);
  MEMORY[0x1EEE9AC00](v1092, v7);
  v1013 = &v906[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5580, &qword_1B4F73E08);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v970 = &v906[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5588, &qword_1B4F7CFB0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v969 = &v906[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5590, &qword_1B4F73E10);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v1012 = &v906[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5598, &qword_1B4F73E18);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v1011 = &v906[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A0, &qword_1B4F73E20);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v1010 = &v906[-v23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55A8, &qword_1B4F73E28);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v1009 = &v906[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5140, &qword_1B4F70ED8);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v1060 = &v906[-v29];
  v1059 = sub_1B4F66674();
  v1096 = *(v1059 - 8);
  MEMORY[0x1EEE9AC00](v1059, v30);
  v1058 = &v906[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1073 = sub_1B4F66604();
  v1067 = *(v1073 - 8);
  MEMORY[0x1EEE9AC00](v1073, v32);
  v961 = &v906[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34, v35);
  v1033 = &v906[-v36];
  v1008 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B0, &qword_1B4F78E30);
  MEMORY[0x1EEE9AC00](v1008, v37);
  v1007 = &v906[-v38];
  v1072 = sub_1B4F66454();
  v1066 = *(v1072 - 8);
  MEMORY[0x1EEE9AC00](v1072, v39);
  v946 = &v906[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41, v42);
  v1040 = &v906[-v43];
  v1006 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55B8, &qword_1B4F73E30);
  MEMORY[0x1EEE9AC00](v1006, v44);
  v1005 = &v906[-v45];
  v1071 = sub_1B4F65184();
  v1065 = *(v1071 - 8);
  MEMORY[0x1EEE9AC00](v1071, v46);
  v945 = &v906[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v48, v49);
  v1039 = &v906[-v50];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55C0, &qword_1B4F73E38);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v1057 = &v906[-v53];
  v1056 = sub_1B4F67154();
  v1095 = *(v1056 - 8);
  MEMORY[0x1EEE9AC00](v1056, v54);
  v1055 = &v906[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1054 = sub_1B4F666C4();
  v1080 = *(v1054 - 8);
  MEMORY[0x1EEE9AC00](v1054, v56);
  v981 = &v906[-((v57 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v58, v59);
  v968 = &v906[-v60];
  MEMORY[0x1EEE9AC00](v61, v62);
  v980 = &v906[-v63];
  MEMORY[0x1EEE9AC00](v64, v65);
  v967 = &v906[-v66];
  v1053 = sub_1B4F66484();
  v1081 = *(v1053 - 8);
  MEMORY[0x1EEE9AC00](v1053, v67);
  v1035 = &v906[-((v68 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v69, v70);
  v1017 = &v906[-v71];
  MEMORY[0x1EEE9AC00](v72, v73);
  v1034 = &v906[-v74];
  v944 = sub_1B4F67244();
  v1070 = *(v944 - 8);
  MEMORY[0x1EEE9AC00](v944, v75);
  v972 = &v906[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1079 = sub_1B4F670C4();
  v1076 = *(v1079 - 8);
  MEMORY[0x1EEE9AC00](v1079, v77);
  v1004 = &v906[-((v78 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v79, v80);
  v1003 = &v906[-v81];
  MEMORY[0x1EEE9AC00](v82, v83);
  v1002 = &v906[-v84];
  MEMORY[0x1EEE9AC00](v85, v86);
  v1051 = &v906[-v87];
  v1050 = sub_1B4F66AF4();
  v1064 = *(v1050 - 8);
  MEMORY[0x1EEE9AC00](v1050, v88);
  v1001 = &v906[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v90, v91);
  v1000 = &v906[-v92];
  MEMORY[0x1EEE9AC00](v93, v94);
  v1049 = &v906[-v95];
  v1078 = sub_1B4F660C4();
  v1075 = *(v1078 - 8);
  MEMORY[0x1EEE9AC00](v1078, v96);
  v999 = &v906[-((v97 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v98, v99);
  v998 = &v906[-v100];
  MEMORY[0x1EEE9AC00](v101, v102);
  v997 = &v906[-v103];
  MEMORY[0x1EEE9AC00](v104, v105);
  v1048 = &v906[-v106];
  v1082 = sub_1B4F67074();
  v1146 = *(v1082 - 8);
  MEMORY[0x1EEE9AC00](v1082, v107);
  v979 = &v906[-((v108 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v109, v110);
  v1016 = &v906[-v111];
  MEMORY[0x1EEE9AC00](v112, v113);
  v978 = &v906[-v114];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4898, &qword_1B4F6E548);
  MEMORY[0x1EEE9AC00](v115 - 8, v116);
  v996 = &v906[-((v117 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v118, v119);
  v1036 = &v906[-v120];
  MEMORY[0x1EEE9AC00](v121, v122);
  v995 = &v906[-v123];
  MEMORY[0x1EEE9AC00](v124, v125);
  v1018 = &v906[-v126];
  MEMORY[0x1EEE9AC00](v127, v128);
  v994 = &v906[-v129];
  MEMORY[0x1EEE9AC00](v130, v131);
  v1045 = &v906[-v132];
  v1139 = sub_1B4F65C64();
  v1090 = *(v1139 - 8);
  MEMORY[0x1EEE9AC00](v1139, v133);
  v1069 = &v906[-((v134 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v135, v136);
  v993 = &v906[-v137];
  MEMORY[0x1EEE9AC00](v138, v139);
  v992 = &v906[-v140];
  v1068 = sub_1B4F65E04();
  v1108 = *(v1068 - 8);
  MEMORY[0x1EEE9AC00](v1068, v141);
  v991 = &v906[-((v142 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v143, v144);
  v990 = &v906[-v145];
  MEMORY[0x1EEE9AC00](v146, v147);
  v989 = &v906[-v148];
  v1077 = sub_1B4F65DE4();
  v1074 = *(v1077 - 8);
  MEMORY[0x1EEE9AC00](v1077, v149);
  v988 = &v906[-((v150 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v151, v152);
  v987 = &v906[-v153];
  MEMORY[0x1EEE9AC00](v154, v155);
  v986 = &v906[-v156];
  MEMORY[0x1EEE9AC00](v157, v158);
  v1047 = &v906[-v159];
  v1091 = sub_1B4F67A94();
  v1133 = *(v1091 - 8);
  MEMORY[0x1EEE9AC00](v1091, v160);
  v985 = &v906[-((v161 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v162, v163);
  v984 = &v906[-v164];
  MEMORY[0x1EEE9AC00](v165, v166);
  v983 = &v906[-v167];
  v1044 = sub_1B4F65954();
  v1063 = *(v1044 - 8);
  MEMORY[0x1EEE9AC00](v1044, v168);
  v960 = &v906[-((v169 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v170, v171);
  v966 = &v906[-v172];
  MEMORY[0x1EEE9AC00](v173, v174);
  v965 = &v906[-v175];
  MEMORY[0x1EEE9AC00](v176, v177);
  v1052 = &v906[-v178];
  v1046 = sub_1B4F64ED4();
  v1062 = *(v1046 - 8);
  MEMORY[0x1EEE9AC00](v1046, v179);
  v982 = &v906[-((v180 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1135 = type metadata accessor for RemoteBrowsingJournalProperty(0);
  MEMORY[0x1EEE9AC00](v1135, v181);
  v1144 = &v906[-((v182 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v183, v184);
  v1143 = &v906[-v185];
  MEMORY[0x1EEE9AC00](v186, v187);
  v1141 = &v906[-v188];
  MEMORY[0x1EEE9AC00](v189, v190);
  v1134 = &v906[-v191];
  MEMORY[0x1EEE9AC00](v192, v193);
  v1140 = &v906[-v194];
  MEMORY[0x1EEE9AC00](v195, v196);
  v1142 = &v906[-v197];
  v1138 = type metadata accessor for RemoteBrowsingJournalEntry(0);
  v1061 = *(v1138 - 8);
  MEMORY[0x1EEE9AC00](v1138, v198);
  v1151 = &v906[-((v199 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55C8, &qword_1B4F73E40);
  MEMORY[0x1EEE9AC00](v200 - 8, v201);
  v1087 = &v906[-v202];
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  MEMORY[0x1EEE9AC00](v203 - 8, v204);
  v1086 = &v906[-v205];
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55D0, &qword_1B4F73E48);
  MEMORY[0x1EEE9AC00](v206 - 8, v207);
  v1085 = &v906[-v208];
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55D8, &qword_1B4F73E50);
  MEMORY[0x1EEE9AC00](v209 - 8, v210);
  v1084 = &v906[-v211];
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55E0, &qword_1B4F73E58);
  MEMORY[0x1EEE9AC00](v212 - 8, v213);
  v1083 = &v906[-v214];
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55E8, &qword_1B4F73E60);
  MEMORY[0x1EEE9AC00](v215 - 8, v216);
  v1105 = &v906[-v217];
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  MEMORY[0x1EEE9AC00](v218 - 8, v219);
  v1104 = &v906[-v220];
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55F0, &qword_1B4F73E68);
  MEMORY[0x1EEE9AC00](v221 - 8, v222);
  v1103 = &v906[-v223];
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  MEMORY[0x1EEE9AC00](v224 - 8, v225);
  v1102 = &v906[-v226];
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F55F8, &qword_1B4F73E70);
  MEMORY[0x1EEE9AC00](v227 - 8, v228);
  v1101 = &v906[-v229];
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5600, &qword_1B4F73E78);
  MEMORY[0x1EEE9AC00](v230 - 8, v231);
  v1100 = &v906[-v232];
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5608, &qword_1B4F79E90);
  MEMORY[0x1EEE9AC00](v233 - 8, v234);
  v1132 = &v906[-v235];
  v1119 = sub_1B4F673D4();
  v1124 = *(v1119 - 8);
  MEMORY[0x1EEE9AC00](v1119, v236);
  v238 = &v906[-((v237 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1117 = sub_1B4F66624();
  v1123 = *(v1117 - 8);
  MEMORY[0x1EEE9AC00](v1117, v239);
  v241 = &v906[-((v240 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5610, &qword_1B4F79E70);
  MEMORY[0x1EEE9AC00](v242 - 8, v243);
  v245 = &v906[-v244];
  v1115 = sub_1B4F668C4();
  v1122 = *(v1115 - 8);
  MEMORY[0x1EEE9AC00](v1115, v246);
  v248 = &v906[-((v247 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v249 - 8, v250);
  v964 = &v906[-((v251 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v252, v253);
  v1136 = &v906[-v254];
  MEMORY[0x1EEE9AC00](v255, v256);
  v258 = &v906[-v257];
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v259 - 8, v260);
  v262 = &v906[-v261];
  v1107 = sub_1B4F67464();
  v1121 = *(v1107 - 8);
  MEMORY[0x1EEE9AC00](v1107, v263);
  v943 = &v906[-((v264 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v265, v266);
  v942 = &v906[-v267];
  MEMORY[0x1EEE9AC00](v268, v269);
  v271 = &v906[-v270];
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v272 - 8, v273);
  v963 = &v906[-((v274 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v275, v276);
  v1038 = &v906[-v277];
  MEMORY[0x1EEE9AC00](v278, v279);
  v281 = &v906[-v280];
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5618, &qword_1B4F79E80);
  MEMORY[0x1EEE9AC00](v282 - 8, v283);
  v285 = &v906[-v284];
  v1149 = sub_1B4F66F74();
  v1120 = *(v1149 - 8);
  MEMORY[0x1EEE9AC00](v1149, v286);
  v962 = &v906[-((v287 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v288, v289);
  v1037 = &v906[-v290];
  MEMORY[0x1EEE9AC00](v291, v292);
  v1145 = &v906[-v293];
  sub_1B4F66BC4();
  v1167 = sub_1B4F66D74();
  v1113 = v285;
  sub_1B4F66C24();
  v1131 = sub_1B4F66D64();
  v1126 = v281;
  sub_1B4F66BD4();
  v1106 = v271;
  sub_1B4F66CA4();
  v1112 = sub_1B4F66C94();
  v1111 = v294;
  v1097 = v295;
  v1109 = v262;
  sub_1B4F66D24();
  v1166 = sub_1B4F66DB4();
  v1165 = sub_1B4F66C54();
  v1164 = sub_1B4F66D04();
  v1163 = sub_1B4F66C64();
  v1162 = sub_1B4F66D94();
  v1161 = sub_1B4F66C74();
  v1127 = v258;
  sub_1B4F66CD4();
  v1114 = v248;
  sub_1B4F66C04();
  v1125 = v245;
  sub_1B4F66D14();
  v1116 = v241;
  sub_1B4F66BE4();
  v1118 = v238;
  sub_1B4F66D84();
  v1130 = sub_1B4F66DC4();
  v1160 = sub_1B4F66D34();
  v1159 = sub_1B4F66CB4();
  v1158 = sub_1B4F66C34();
  v1110 = sub_1B4F66BF4();
  v1129 = sub_1B4F66C44();
  sub_1B4F66CC4();
  v1128 = sub_1B4F66C14();
  v1157 = sub_1B4F66CE4();
  v1156 = sub_1B4F66D44();
  v1089 = v2;
  v1155 = sub_1B4F66D54();
  v1148 = *(v1147 + 16);
  if (!v1148)
  {
    v303 = v1149;
    v305 = v1150;
LABEL_4:
    v306 = v1120;
    v307 = v1100;
    (*(v1120 + 16))(v1100, v1145, v303);
    (*(v306 + 56))(v307, 0, 1, v303);
    v1151 = v1167;
    v308 = sub_1B4F67594();
    (*(*(v308 - 8) + 56))(v1101, 1, 1, v308);
    v1143 = v1166;
    (*(v305 + 56))(v1102, 1, 1, v1092);
    v1150 = v1165;
    v309 = sub_1B4F66EC4();
    (*(*(v309 - 8) + 56))(v1103, 1, 1, v309);
    v1148 = v1162;
    v1147 = v1163;
    v1144 = v1164;
    (*(v1098 + 56))();
    v1146 = v1161;
    v310 = v1122;
    v311 = v1105;
    v312 = v1115;
    (*(v1122 + 16))(v1105, v1114, v1115);
    (*(v310 + 56))(v311, 0, 1, v312);
    v313 = v1123;
    v314 = v1083;
    v315 = v1117;
    (*(v1123 + 16))(v1083, v1116, v1117);
    (*(v313 + 56))(v314, 0, 1, v315);
    v316 = v1121;
    v317 = v1084;
    v318 = v1107;
    (*(v1121 + 16))(v1084, v1106, v1107);
    (*(v316 + 56))(v317, 0, 1, v318);
    v319 = v1124;
    v320 = v1085;
    v321 = v1119;
    (*(v1124 + 16))(v1085, v1118, v1119);
    (*(v319 + 56))(v320, 0, 1, v321);
    v1139 = v1160;
    v322 = v1086;
    (*(v1099 + 56))(v1086, 1, 1, v1094);
    v1140 = v1159;
    v1141 = v1158;
    v323 = sub_1B4F66044();
    v324 = v1087;
    (*(*(v323 - 8) + 56))(v1087, 1, 1, v323);
    v1136 = v1157;
    v1137 = v1156;
    v1138 = v1155;
    v325 = v1103;
    LODWORD(v1142) = v1097 & 1;
    v326 = v1102;
    v327 = v1101;
    v328 = v1100;
    sub_1B4F66DA4();
    sub_1B4DD2BC4(v324, &qword_1EB8F55C8, &qword_1B4F73E40);
    sub_1B4DD2BC4(v322, &qword_1EB8F4100, &qword_1B4F6A618);
    sub_1B4DD2BC4(v320, &qword_1EB8F55D0, &qword_1B4F73E48);
    sub_1B4DD2BC4(v317, &qword_1EB8F55D8, &qword_1B4F73E50);
    sub_1B4DD2BC4(v314, &qword_1EB8F55E0, &qword_1B4F73E58);
    sub_1B4DD2BC4(v1105, &qword_1EB8F55E8, &qword_1B4F73E60);
    sub_1B4DD2BC4(v1104, &qword_1EB8F4108, &qword_1B4F6A620);
    sub_1B4DD2BC4(v325, &qword_1EB8F55F0, &qword_1B4F73E68);
    sub_1B4DD2BC4(v326, &qword_1EB8F4110, &qword_1B4F6A628);
    sub_1B4DD2BC4(v327, &qword_1EB8F55F8, &qword_1B4F73E70);
    sub_1B4DD2BC4(v328, &qword_1EB8F5600, &qword_1B4F73E78);

    sub_1B4DD2BC4(v1132, &qword_1EB8F5608, &qword_1B4F79E90);

    (*(v1124 + 8))(v1118, v1119);
    (*(v1123 + 8))(v1116, v1117);
    sub_1B4DD2BC4(v1125, &qword_1EB8F5610, &qword_1B4F79E70);
    (*(v1122 + 8))(v1114, v1115);
    sub_1B4DD2BC4(v1127, &qword_1EB8F40D0, &unk_1B4F78940);

    sub_1B4DD2BC4(v1109, &qword_1EB8F4138, &qword_1B4F6A640);
    sub_1B4DE5390(v1112, v1111, v1142);
    (*(v1121 + 8))(v1106, v1107);
    sub_1B4DD2BC4(v1126, &qword_1EB8F7050, &qword_1B4F71500);

    sub_1B4DD2BC4(v1113, &qword_1EB8F5618, &qword_1B4F79E80);

    return (*(v1120 + 8))(v1145, v1149);
  }

  v296 = 0;
  v1137 = 0;
  v973 = (v1120 + 40);
  v1032 = (v1146 + 48);
  v940 = (v1146 + 32);
  v941 = (v1080 + 32);
  v915 = v1081 + 16;
  v914 = v1080 + 40;
  v939 = (v1081 + 8);
  v938 = (v1146 + 8);
  v1031 = (v1076 + 32);
  v959 = (v1076 + 16);
  v1030 = v1076 + 8;
  v1029 = (v1075 + 32);
  v958 = (v1075 + 16);
  v1028 = v1075 + 8;
  v957 = (v1062 + 4);
  v956 = (v1062 + 7);
  v1027 = (v1090 + 32);
  v955 = v1090 + 16;
  v1026 = (v1090 + 8);
  v297 = (*(v1061 + 80) + 32) & ~*(v1061 + 80);
  v1025 = (v1108 + 32);
  v1147 += v297;
  v954 = v1108 + 16;
  v1146 = *(v1061 + 72);
  v1024 = (v1108 + 8);
  v1023 = (v1074 + 32);
  v953 = (v1074 + 16);
  v1022 = (v1074 + 8);
  v934 = v1099 + 32;
  v933 = v1099 + 16;
  v932 = v1099 + 8;
  v298 = v1133;
  v1021 = (v1133 + 32);
  v952 = v1133 + 16;
  v1020 = (v1133 + 8);
  v951 = (v1124 + 40);
  v950 = (v1123 + 40);
  v1019 = (v1067 + 4);
  v971 = (v1067 + 7);
  v949 = (v1122 + 40);
  v1042 = (v1066 + 32);
  v1061 = v1066 + 56;
  v931 = v1098 + 32;
  v930 = v1098 + 16;
  v929 = v1098 + 8;
  v928 = v1150 + 32;
  v927 = v1150 + 16;
  v926 = v1150 + 8;
  v1041 = (v1065 + 4);
  v1043 = v1065 + 7;
  v925 = (v1120 + 32);
  v924 = (v1120 + 8);
  v977 = v1095 + 16;
  v976 = v1095 + 8;
  v916 = (v1080 + 56);
  v948 = (v1064 + 4);
  v947 = (v1064 + 1);
  v975 = v1096 + 16;
  v974 = v1096 + 8;
  v923 = (v1067 + 6);
  v937 = (v1067 + 1);
  v913 = (v1067 + 2);
  v922 = (v1066 + 16);
  v921 = (v1066 + 48);
  v936 = (v1066 + 8);
  v920 = (v1065 + 2);
  v919 = (v1065 + 6);
  v935 = v1065 + 1;
  v1064 += 2;
  v918 = (v1062 + 2);
  ++v1062;
  v917 = (v1063 + 4);
  v1067 = v1063 + 2;
  v1065 = (v1063 + 1);
  v1063 = (v1121 + 16);
  v912 = v1070 + 16;
  v911 = (v1121 + 8);
  v910 = v1070 + 8;
  v909 = (v1121 + 40);
  v299 = v1139;
  v300 = v1135;
  v301 = v1134;
  v302 = v1138;
  v303 = v1149;
  v304 = v1136;
  while (1)
  {
    sub_1B4E95150(v1147 + v1146 * v296, v1151, type metadata accessor for RemoteBrowsingJournalEntry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v340 = v1142;
      sub_1B4E95218(v1151, v1142, type metadata accessor for RemoteBrowsingJournalProperty);
      sub_1B4E95150(v340, v1140, type metadata accessor for RemoteBrowsingJournalProperty);
      v341 = swift_getEnumCaseMultiPayload();
      v305 = v1150;
      switch(v341)
      {
        case 1:
          v510 = v1052;
          v511 = v1044;
          (*v917)(v1052, v1140, v1044);
          sub_1B4F65914();
          v513 = v512;
          sub_1B4F66A74();
          if (v514 > v513)
          {
            if (qword_1EDB70468 != -1)
            {
              swift_once();
            }

            v515 = sub_1B4F67C54();
            __swift_project_value_buffer(v515, qword_1EDB70470);
            v516 = v966;
            v517 = v1052;
            v518 = v1044;
            (*v1067)(v966, v1052, v1044);
            v519 = sub_1B4F67C34();
            v520 = sub_1B4F685E4();
            if (os_log_type_enabled(v519, v520))
            {
              v521 = swift_slowAlloc();
              v522 = swift_slowAlloc();
              v1153[0] = v522;
              *v521 = 136315138;
              sub_1B4E952A0(&qword_1EB8F5678, MEMORY[0x1E69CB538], MEMORY[0x1E69CB558]);
              v523 = sub_1B4F68D04();
              v525 = v524;
              v526 = *v1065;
              (*v1065)(v516, v518);
              v527 = sub_1B4DC4F88(v523, v525, v1153);

              *(v521 + 4) = v527;
              _os_log_impl(&dword_1B4DC2000, v519, v520, "Archived session %s does not meet personalization inclusion requirements.", v521, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v522);
              v528 = v522;
              v305 = v1150;
              MEMORY[0x1B8C831D0](v528, -1, -1);
              v302 = v1138;
              MEMORY[0x1B8C831D0](v521, -1, -1);

              v526(v1052, v518);
            }

            else
            {

              v869 = *v1065;
              (*v1065)(v516, v518);
              v869(v517, v518);
            }

            sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
            v299 = v1139;
            v300 = v1135;
            v301 = v1134;
            v303 = v1149;
            v304 = v1136;
            v298 = v1133;
            goto LABEL_9;
          }

          v838 = *v1067;
          v839 = v965;
          (*v1067)(v965, v510, v511);
          v840 = v972;
          v841 = v1137;
          PersonalizationArchivedSession.init(_:isSampleContent:)(v839, 0);
          v1137 = v841;
          if (v841)
          {
            if (qword_1EDB70468 != -1)
            {
              swift_once();
            }

            v842 = sub_1B4F67C54();
            __swift_project_value_buffer(v842, qword_1EDB70470);
            v843 = v960;
            v844 = v1052;
            v845 = v1044;
            v838(v960, v1052, v1044);
            v846 = v1137;
            v847 = v1137;
            v848 = sub_1B4F67C34();
            v849 = sub_1B4F685E4();

            if (os_log_type_enabled(v848, v849))
            {
              v850 = swift_slowAlloc();
              v1066 = swift_slowAlloc();
              v1153[0] = v1066;
              *v850 = 136315394;
              sub_1B4E952A0(&qword_1EB8F5678, MEMORY[0x1E69CB538], MEMORY[0x1E69CB558]);
              v907 = v849;
              v851 = sub_1B4F68D04();
              v853 = v852;
              v908 = *v1065;
              v908(v843, v845);
              v854 = sub_1B4DC4F88(v851, v853, v1153);

              *(v850 + 4) = v854;
              *(v850 + 12) = 2080;
              swift_getErrorValue();
              v855 = sub_1B4F68DC4();
              v857 = sub_1B4DC4F88(v855, v856, v1153);

              *(v850 + 14) = v857;
              _os_log_impl(&dword_1B4DC2000, v848, v907, "Failed to transform %s for personalization with error: %s", v850, 0x16u);
              v858 = v1066;
              swift_arrayDestroy();
              MEMORY[0x1B8C831D0](v858, -1, -1);
              MEMORY[0x1B8C831D0](v850, -1, -1);

              v908(v1052, v845);
            }

            else
            {

              v903 = *v1065;
              (*v1065)(v843, v845);
              v903(v844, v845);
            }

            sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
            v1137 = 0;
            v299 = v1139;
            v300 = v1135;
            v302 = v1138;
            v303 = v1149;
            v301 = v1134;
            goto LABEL_185;
          }

          v890 = v943;
          (*v1063)(v943, v1106, v1107);
          v891 = v840;
          v892 = sub_1B4F67444();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5680, &qword_1B4F73EC0);
          v893 = v1070;
          v894 = (*(v1070 + 80) + 32) & ~*(v1070 + 80);
          v895 = swift_allocObject();
          *(v895 + 16) = xmmword_1B4F6CF50;
          v896 = *(v893 + 16);
          v897 = v944;
          v896(v895 + v894, v891, v944);
          v898 = MEMORY[0x1E69CCF40];
          v1153[0] = sub_1B4E78BC8(0, *(v892 + 16) + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5680, &qword_1B4F73EC0, MEMORY[0x1E69CCF40]);

          sub_1B4E8F0E8(v899);
          v900 = v898;
          v305 = v1150;
          sub_1B4E8D19C(v895, &qword_1EB8F5680, &qword_1B4F73EC0, v900, MEMORY[0x1E69CCF40]);

          sub_1B4DF22A0(v1153[0]);

          v901 = v942;
          sub_1B4F67454();

          v902 = v1107;
          (*v911)(v890, v1107);
          (*(v1070 + 8))(v972, v897);
          (*v1065)(v510, v511);
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v909)(v1106, v901, v902);
          v299 = v1139;
LABEL_117:
          v298 = v1133;
          v300 = v1135;
          v301 = v1134;
          v302 = v1138;
          v303 = v1149;
          goto LABEL_186;
        case 2:
          goto LABEL_145;
        case 3:
        case 5:
        case 9:
        case 17:
        case 21:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v342 = v1140;
          goto LABEL_146;
        case 4:
          v400 = *v1140;
          v401 = MEMORY[0x1E69CD2D8];
          v402 = sub_1B4E7B5D0;
          goto LABEL_134;
        case 6:
          v400 = *v1140;
          v401 = MEMORY[0x1E69CCE28];
          v402 = sub_1B4E7B2F0;
          goto LABEL_134;
        case 7:
          v400 = *v1140;
          v401 = MEMORY[0x1E69CCE28];
          v402 = sub_1B4E7B2F0;
          goto LABEL_134;
        case 8:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v576 = *v1140;

          v1162 = v576;
          goto LABEL_147;
        case 10:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v444 = v1127;
          sub_1B4DD2BC4(v1127, &qword_1EB8F40D0, &unk_1B4F78940);
          v445 = v1072;
          (*v1042)(v444, v1140, v1072);
          v446 = &v1093;
          goto LABEL_63;
        case 11:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v949)(v1114, v1140, v1115);
          goto LABEL_147;
        case 12:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v444 = v1125;
          sub_1B4DD2BC4(v1125, &qword_1EB8F5610, &qword_1B4F79E70);
          v445 = v1073;
          (*v1019)(v444, v1140, v1073);
          v446 = &v1003;
          goto LABEL_63;
        case 13:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v950)(v1116, v1140, v1117);
          goto LABEL_147;
        case 14:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          (*v951)(v1118, v1140, v1119);
          goto LABEL_147;
        case 15:
          v415 = v983;
          v416 = v1091;
          v417 = (*(v298 + 32))(v983, v1140, v1091);
          MEMORY[0x1EEE9AC00](v417, v418);
          vars0 = v415;
          v419 = v298;
          v420 = v1130;

          v421 = v1137;
          v422 = sub_1B4E8F864(sub_1B4E95320, &v1170, v420, MEMORY[0x1E69CD370], sub_1B4EE8CD8, MEMORY[0x1E69CD370], sub_1B4EE8CD8);
          v1137 = v421;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5648, &qword_1B4F73EA8);
          v423 = (*(v419 + 80) + 32) & ~*(v419 + 80);
          v424 = swift_allocObject();
          *(v424 + 16) = xmmword_1B4F6CF50;
          (*(v298 + 16))(v424 + v423, v415, v416);
          v425 = MEMORY[0x1E69CD370];
          v1153[0] = sub_1B4E78BC8(0, v422[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);

          sub_1B4E8E96C(v426);
          v427 = v424;
          v305 = v1150;
          v428 = v1135;
          v429 = v425;
          v302 = v1138;
          sub_1B4E8D19C(v427, &qword_1EB8F5648, &qword_1B4F73EA8, v429, MEMORY[0x1E69CD370]);

          v430 = sub_1B4DF243C(v1153[0]);

          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v300 = v428;
          v298 = v419;
          v304 = v1136;

          v431 = v415;
          v301 = v1134;
          (*(v298 + 8))(v431, v1091);
          v432 = &v1156;
          goto LABEL_55;
        case 16:
          v400 = *v1140;
          v401 = MEMORY[0x1E69CC5E8];
          v402 = sub_1B4E7AD30;
          goto LABEL_134;
        case 18:
          v362 = v1047;
          v363 = v300;
          v364 = v1077;
          (*v1023)(v1047, v1140, v1077);
          v365 = v987;
          (*v953)(v987, v362, v364);
          v366 = v986;
          sub_1B4E79BF0(v986, v365);
          v299 = v1139;
          v367 = *v1022;
          (*v1022)(v366, v364);
          v368 = v362;
          v304 = v1136;
          v301 = v1134;
          v369 = v364;
          v300 = v363;
          v298 = v1133;
          v367(v368, v369);
          goto LABEL_145;
        case 19:
          v481 = v1108;
          v482 = v989;
          v483 = v1068;
          v484 = (*(v1108 + 32))(v989, v1140, v1068);
          MEMORY[0x1EEE9AC00](v484, v485);
          vars0 = v482;
          v486 = v1129;

          v487 = v1137;
          v488 = sub_1B4E8F864(sub_1B4E9511C, &v1170, v486, MEMORY[0x1E69CB850], sub_1B4EE89B0, MEMORY[0x1E69CB850], sub_1B4EE89B0);
          v1137 = v487;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5630, &qword_1B4F73E90);
          v489 = (*(v481 + 80) + 32) & ~*(v481 + 80);
          v490 = swift_allocObject();
          *(v490 + 16) = xmmword_1B4F6CF50;
          (*(v481 + 16))(v490 + v489, v482, v483);
          v491 = MEMORY[0x1E69CB850];
          v1153[0] = sub_1B4E78BC8(0, v488[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);

          sub_1B4E8E1F0(v492);
          v493 = v490;
          v302 = v1138;
          v494 = v1135;
          v495 = v491;
          v305 = v1150;
          sub_1B4E8D19C(v493, &qword_1EB8F5630, &qword_1B4F73E90, v495, MEMORY[0x1E69CB850]);

          v430 = sub_1B4DF25D8(v1153[0]);

          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);

          v496 = v482;
          v304 = v1136;
          v301 = v1134;
          v497 = v483;
          v300 = v494;
          v298 = v1133;
          (*(v1108 + 8))(v496, v497);
          v432 = &v1155;
LABEL_55:
          *(v432 - 32) = v430;
          goto LABEL_56;
        case 20:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v353 = v298;
          v354 = v300;
          v355 = v1132;
          sub_1B4DD2BC4(v1132, &qword_1EB8F5608, &qword_1B4F79E90);
          v356 = sub_1B4F66354();
          v357 = *(v356 - 8);
          (*(v357 + 32))(v355, v1140, v356);
          v358 = v355;
          v300 = v354;
          v298 = v353;
          (*(v357 + 56))(v358, 0, 1, v356);
LABEL_56:
          v299 = v1139;
          goto LABEL_147;
        case 22:
          v686 = v1090;
          v687 = v992;
          v688 = (*(v1090 + 32))(v992, v1140, v299);
          v689 = v299;
          MEMORY[0x1EEE9AC00](v688, v690);
          vars0 = v687;
          v691 = v1128;

          v692 = v1137;
          sub_1B4E6EF4C(sub_1B4E952E8, &v1170, v691, v693);
          v695 = v694;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A8, &qword_1B4F6D080);
          v696 = (*(v686 + 80) + 32) & ~*(v686 + 80);
          v697 = swift_allocObject();
          *(v697 + 16) = xmmword_1B4F6CF50;
          (*(v686 + 16))(v697 + v696, v687, v689);
          v1153[0] = v695;
          sub_1B4E8D19C(v697, &qword_1EB8F46A8, &qword_1B4F6D080, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6B0]);

          sub_1B4E8FE78(v1153, v698);
          v699 = &v1163;
          v1137 = v692;
          if (v692)
          {
            goto LABEL_234;
          }

          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);

          v1128 = v1153[0];
          (*v1026)(v687, v689);
          v305 = v1150;
          v299 = v689;
          goto LABEL_117;
        case 23:
          v722 = v300;
          v723 = v982;
          v724 = v1046;
          (*v957)(v982, v1140, v1046);
          v725 = v1113;
          sub_1B4DD2BC4(v1113, &qword_1EB8F5618, &qword_1B4F79E80);
          (*v918)(v725, v723, v724);
          v726 = v725;
          v305 = v1150;
          (*v956)(v726, 0, 1, v724);
          v727 = v723;
          v300 = v722;
          (*v1062)(v727, v724);
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);

          v1131 = MEMORY[0x1E69E7CC8];
          goto LABEL_147;
        case 24:
          v433 = v1048;
          v434 = v1078;
          (*v1029)(v1048, v1140, v1078);
          v443 = v998;
          (*v958)(v998, v433, v434);
          v436 = v997;
          sub_1B4E79910(v997, v443);
          v437 = v1139;
          v438 = &v1060;
          goto LABEL_144;
        case 25:
          v433 = v1049;
          v434 = v1050;
          (*v948)(v1049, v1140, v1050);
          v435 = v1001;
          (*v1064)(v1001, v433, v434);
          v436 = v1000;
          sub_1B4E7A770(v1000, v435);
          v437 = v1139;
          v438 = &v979;
          goto LABEL_144;
        case 26:
          v433 = v1051;
          v434 = v1079;
          (*v1031)(v1051, v1140, v1079);
          v752 = v1003;
          (*v959)(v1003, v433, v434);
          v436 = v1002;
          sub_1B4E79630(v1002, v752);
          v437 = v1139;
          v438 = &v1062;
LABEL_144:
          v753 = *(v438 - 32);
          v754 = *v753;
          (*v753)(v436, v434);
          v755 = v433;
          v304 = v1136;
          v301 = v1134;
          v756 = v434;
          v299 = v437;
          v298 = v1133;
          v302 = v1138;
          v754(v755, v756);
          goto LABEL_145;
        case 27:
          v350 = v1045;
          sub_1B4E340C4(v1140, v1045);
          v351 = v994;
          sub_1B4E21A90(v350, v994, &qword_1EB8F4898, &qword_1B4F6E548);
          v352 = v1082;
          if ((*v1032)(v351, 1, v1082) == 1)
          {
            sub_1B4DD2BC4(v1045, &qword_1EB8F4898, &qword_1B4F6E548);
            sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
            sub_1B4DD2BC4(v351, &qword_1EB8F4898, &qword_1B4F6E548);
            v299 = v1139;
            v303 = v1149;
LABEL_196:
            v300 = v1135;
            goto LABEL_9;
          }

          v807 = v301;
          (*v940)(v978, v351, v352);
          v808 = v1034;
          sub_1B4F67064();
          v809 = v967;
          sub_1B4F67054();
          v810 = *v941;
          (*v941)(v980, v809, v1054);
          v811 = v1131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v1153[0] = v811;
          v813 = sub_1B4DF43BC(v808);
          v815 = *(v811 + 16);
          v816 = (v814 & 1) == 0;
          v817 = __OFADD__(v815, v816);
          v818 = v815 + v816;
          if (v817)
          {
            goto LABEL_230;
          }

          v819 = v814;
          if (*(v811 + 24) < v818)
          {
            sub_1B4E26A6C(v818, isUniquelyReferenced_nonNull_native);
            v813 = sub_1B4DF43BC(v1034);
            if ((v819 & 1) != (v820 & 1))
            {
              goto LABEL_233;
            }

            v301 = v807;
            v821 = v1053;
            v822 = v1081;
            v299 = v1139;
            goto LABEL_167;
          }

          v821 = v1053;
          v822 = v1081;
          v301 = v807;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v904 = v813;
            sub_1B4E28860();
            v822 = v1081;
            v821 = v1053;
            v813 = v904;
            v299 = v1139;
LABEL_167:
            v302 = v1138;
            goto LABEL_205;
          }

          v302 = v1138;
          v299 = v1139;
LABEL_205:
          v879 = v1153[0];
          v304 = v1136;
          v1131 = v1153[0];
          if (v819)
          {
            (*(v1080 + 40))(*(v1153[0] + 56) + *(v1080 + 72) * v813, v980, v1054);
          }

          else
          {
            *(v1153[0] + 8 * (v813 >> 6) + 64) |= 1 << v813;
            v880 = v813;
            (*(v822 + 16))(*(v879 + 48) + *(v822 + 72) * v813, v1034, v821);
            v810(*(v1131 + 56) + *(v1080 + 72) * v880, v980, v1054);
            v881 = *(v1131 + 16);
            v817 = __OFADD__(v881, 1);
            v882 = v881 + 1;
            if (v817)
            {
              goto LABEL_232;
            }

            *(v1131 + 16) = v882;
          }

          v303 = v1149;
          v300 = v1135;
          (*v939)(v1034, v1053);
          (*v938)(v978, v1082);
          sub_1B4DD2BC4(v1045, &qword_1EB8F4898, &qword_1B4F6E548);
          v883 = &v1168;
          break;
        case 28:
          v400 = *v1140;
          v401 = MEMORY[0x1E69CCEC8];
          v402 = sub_1B4E7BB90;
LABEL_134:
          sub_1B4E78238(v400, v401, v402);
          v299 = v1139;
LABEL_145:
          v342 = v1142;
          goto LABEL_146;
        case 29:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v303 = v1149;
          (*v973)(v1145, v1140, v1149);
          goto LABEL_9;
        default:
          sub_1B4E951B8(v1142, type metadata accessor for RemoteBrowsingJournalProperty);
          v444 = v1126;
          sub_1B4DD2BC4(v1126, &qword_1EB8F7050, &qword_1B4F71500);
          v445 = v1071;
          (*v1041)(v444, v1140, v1071);
          v446 = &v1075;
LABEL_63:
          (**(v446 - 32))(v444, 0, 1, v445);
          goto LABEL_147;
      }

      goto LABEL_217;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v343 = v1143;
    sub_1B4E95218(v1151, v1143, type metadata accessor for RemoteBrowsingJournalProperty);
    sub_1B4E95150(v343, v1144, type metadata accessor for RemoteBrowsingJournalProperty);
    v344 = swift_getEnumCaseMultiPayload();
    v345 = v1145;
    switch(v344)
    {
      case 1:
      case 21:
      case 25:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v303 = v1149;
        sub_1B4E951B8(v1144, type metadata accessor for RemoteBrowsingJournalProperty);
        goto LABEL_8;
      case 2:
        v1152 = *v1144;
        sub_1B4E95094();
        sub_1B4F65084();
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        sub_1B4DE5390(v1112, v1111, v1097 & 1);
        v1112 = v1153[0];
        v1111 = v1153[1];
        v1097 = v1154;
        goto LABEL_8;
      case 3:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v661 = v1109;
        sub_1B4DD2BC4(v1109, &qword_1EB8F4138, &qword_1B4F6A640);
        v662 = sub_1B4F66754();
        v663 = *(v662 - 8);
        (*(v663 + 32))(v661, v1144, v662);
        v664 = *(v663 + 56);
        v665 = v661;
        v302 = v1138;
        goto LABEL_137;
      case 4:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v682 = *v1144;

        v1166 = v682;
        goto LABEL_7;
      case 5:
        v305 = v1150;
        v616 = v1013;
        v617 = v1092;
        v618 = (*(v1150 + 32))();
        v619 = v1165;
        MEMORY[0x1EEE9AC00](v618, v620);
        vars0 = v616;
        v621 = v616;

        v622 = v1137;
        v623 = sub_1B4E8F864(sub_1B4E95060, &v1170, v619, MEMORY[0x1E69CC830], sub_1B4EE7D10, MEMORY[0x1E69CC830], sub_1B4EE7D10);
        v1137 = v622;

        v1165 = v623;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5658, &qword_1B4F73EB8);
        v624 = (*(v305 + 80) + 32) & ~*(v305 + 80);
        v625 = swift_allocObject();
        *(v625 + 16) = xmmword_1B4F6CF50;
        (*(v305 + 16))(v625 + v624, v621, v617);
        sub_1B4E94E9C(v625, MEMORY[0x1E69CC830], sub_1B4E7A490);
        swift_setDeallocating();
        v626 = *(v305 + 8);
        v626(v625 + v624, v617);
        v303 = v1149;
        swift_deallocClassInstance();
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v300 = v1135;
        v626(v621, v617);
        v304 = v1136;
        v302 = v1138;
        goto LABEL_105;
      case 6:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v685 = *v1144;

        v1163 = v685;
        goto LABEL_7;
      case 7:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v540 = *v1144;

        v1164 = v540;
        goto LABEL_7;
      case 8:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v684 = *v1144;

        v1162 = v684;
        goto LABEL_7;
      case 9:
        v468 = v1098;
        v469 = v1014;
        v470 = v1093;
        v471 = (*(v1098 + 32))(v1014, v1144, v1093);
        v472 = v1161;
        MEMORY[0x1EEE9AC00](v471, v473);
        vars0 = v469;

        v474 = v1137;
        v475 = sub_1B4E8F864(sub_1B4E9502C, &v1170, v472, MEMORY[0x1E69CC938], sub_1B4EE79E8, MEMORY[0x1E69CC938], sub_1B4EE79E8);
        v1137 = v474;

        v1161 = v475;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5650, &qword_1B4F73EB0);
        v476 = (*(v468 + 80) + 32) & ~*(v468 + 80);
        v477 = swift_allocObject();
        *(v477 + 16) = xmmword_1B4F6CF50;
        (*(v468 + 16))(v477 + v476, v469, v470);
        sub_1B4E94E9C(v477, MEMORY[0x1E69CC938], sub_1B4E7A1B0);
        swift_setDeallocating();
        v478 = *(v468 + 8);
        v302 = v1138;
        v478(v477 + v476, v470);
        v303 = v1149;
        swift_deallocClassInstance();
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v479 = v469;
        v304 = v1136;
        v301 = v1134;
        v480 = v470;
        v298 = v1133;
        v300 = v1135;
        v478(v479, v480);
        goto LABEL_139;
      case 10:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v387 = v1127;
        sub_1B4DD2BC4(v1127, &qword_1EB8F40D0, &unk_1B4F78940);
        v388 = v1072;
        (*v1042)(v387, v1144, v1072);
        v389 = &v1093;
        goto LABEL_102;
      case 11:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v949)(v1114, v1144, v1115);
        goto LABEL_8;
      case 12:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v387 = v1125;
        sub_1B4DD2BC4(v1125, &qword_1EB8F5610, &qword_1B4F79E70);
        v388 = v1073;
        (*v1019)(v387, v1144, v1073);
        v389 = &v1003;
        goto LABEL_102;
      case 13:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v950)(v1116, v1144, v1117);
        goto LABEL_8;
      case 14:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v951)(v1118, v1144, v1119);
        goto LABEL_8;
      case 15:
        v627 = v985;
        v628 = v1091;
        v629 = (*(v298 + 32))(v985, v1144, v1091);
        MEMORY[0x1EEE9AC00](v629, v630);
        vars0 = v627;
        v631 = v1130;

        v632 = v1137;
        v633 = sub_1B4E8F864(sub_1B4E94FF8, &v1170, v631, MEMORY[0x1E69CD370], sub_1B4EE8CD8, MEMORY[0x1E69CD370], sub_1B4EE8CD8);
        v1137 = v632;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5648, &qword_1B4F73EA8);
        v634 = (*(v298 + 80) + 32) & ~*(v298 + 80);
        v635 = swift_allocObject();
        *(v635 + 16) = xmmword_1B4F6CF50;
        (*(v298 + 16))(v635 + v634, v627, v628);
        v636 = MEMORY[0x1E69CD370];
        v1153[0] = sub_1B4E78BC8(0, v633[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5648, &qword_1B4F73EA8, MEMORY[0x1E69CD370]);

        sub_1B4E8E96C(v637);
        v638 = v635;
        v302 = v1138;
        v639 = v1135;
        v640 = v636;
        v305 = v1150;
        sub_1B4E8D19C(v638, &qword_1EB8F5648, &qword_1B4F73EA8, v640, MEMORY[0x1E69CD370]);

        v641 = sub_1B4DF243C(v1153[0]);
        v303 = v1149;

        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v300 = v639;
        v304 = v1136;

        v642 = v627;
        v301 = v1134;
        (*(v298 + 8))(v642, v1091);
        v1130 = v641;
LABEL_105:
        v299 = v1139;
        goto LABEL_9;
      case 16:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v683 = *v1144;

        v1160 = v683;
        goto LABEL_7;
      case 17:
        v733 = v1099;
        v734 = v1015;
        v735 = v1094;
        v736 = (*(v1099 + 32))(v1015, v1144, v1094);
        v737 = v1159;
        MEMORY[0x1EEE9AC00](v736, v738);
        vars0 = v734;

        v739 = v1137;
        v740 = sub_1B4E8F864(sub_1B4E93DA8, &v1170, v737, MEMORY[0x1E69CCAC8], sub_1B4EE76C0, MEMORY[0x1E69CCAC8], sub_1B4EE76C0);
        v1137 = v739;

        v741 = v1143;
        v1159 = v740;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5640, &qword_1B4F73EA0);
        v742 = (*(v733 + 80) + 32) & ~*(v733 + 80);
        v743 = swift_allocObject();
        *(v743 + 16) = xmmword_1B4F6CF50;
        (*(v733 + 16))(v743 + v742, v734, v735);
        sub_1B4E94E9C(v743, MEMORY[0x1E69CCAC8], sub_1B4E79ED0);
        swift_setDeallocating();
        v744 = *(v733 + 8);
        v300 = v1135;
        v745 = v1138;
        v744(v743 + v742, v735);
        v303 = v1149;
        swift_deallocClassInstance();
        sub_1B4E951B8(v741, type metadata accessor for RemoteBrowsingJournalProperty);
        v746 = v734;
        v302 = v745;
        v747 = v735;
        v304 = v1136;
        v301 = v1134;
        v298 = v1133;
        v744(v746, v747);
        goto LABEL_139;
      case 18:
        v643 = v1074;
        v644 = v988;
        v645 = v1077;
        v646 = (*(v1074 + 32))(v988, v1144, v1077);
        v647 = v1158;
        MEMORY[0x1EEE9AC00](v646, v648);
        vars0 = v644;

        v649 = v1137;
        v650 = sub_1B4E8F864(sub_1B4E93D74, &v1170, v647, MEMORY[0x1E69CB800], sub_1B4EE7398, MEMORY[0x1E69CB800], sub_1B4EE7398);
        v1137 = v649;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5638, &qword_1B4F73E98);
        v651 = (*(v643 + 80) + 32) & ~*(v643 + 80);
        v652 = swift_allocObject();
        *(v652 + 16) = xmmword_1B4F6CF50;
        (*(v643 + 16))(v652 + v651, v644, v645);
        v653 = MEMORY[0x1E69CB800];
        v1153[0] = sub_1B4E78BC8(0, v650[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5638, &qword_1B4F73E98, MEMORY[0x1E69CB800]);

        sub_1B4E8DA74(v654);
        v305 = v1150;
        v655 = v1143;
        sub_1B4E8D19C(v652, &qword_1EB8F5638, &qword_1B4F73E98, v653, MEMORY[0x1E69CB800]);
        v656 = v655;
        v300 = v1135;

        v657 = sub_1B4DF2774(v1153[0]);
        v658 = v1139;

        sub_1B4E951B8(v656, type metadata accessor for RemoteBrowsingJournalProperty);
        v303 = v1149;

        v1158 = v657;
        v299 = v658;
        v302 = v1138;
        v659 = *(v643 + 8);
        v660 = v644;
        v304 = v1136;
        v301 = v1134;
        v298 = v1133;
        v659(v660, v1077);
        goto LABEL_9;
      case 19:
        v666 = v991;
        v667 = v1068;
        v668 = (*(v1108 + 32))(v991, v1144, v1068);
        MEMORY[0x1EEE9AC00](v668, v669);
        vars0 = v666;
        v670 = v1129;

        v671 = v1137;
        v672 = sub_1B4E8F864(sub_1B4E95304, &v1170, v670, MEMORY[0x1E69CB850], sub_1B4EE89B0, MEMORY[0x1E69CB850], sub_1B4EE89B0);
        v1137 = v671;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5630, &qword_1B4F73E90);
        v673 = (*(v1108 + 80) + 32) & ~*(v1108 + 80);
        v674 = swift_allocObject();
        *(v674 + 16) = xmmword_1B4F6CF50;
        (*(v1108 + 16))(v674 + v673, v666, v667);
        v675 = MEMORY[0x1E69CB850];
        v1153[0] = sub_1B4E78BC8(0, v672[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5630, &qword_1B4F73E90, MEMORY[0x1E69CB850]);

        sub_1B4E8E1F0(v676);
        v677 = v674;
        v678 = v1143;
        v300 = v1135;
        v679 = v675;
        v302 = v1138;
        sub_1B4E8D19C(v677, &qword_1EB8F5630, &qword_1B4F73E90, v679, MEMORY[0x1E69CB850]);

        v680 = sub_1B4DF25D8(v1153[0]);
        v303 = v1149;

        sub_1B4E951B8(v678, type metadata accessor for RemoteBrowsingJournalProperty);

        v681 = v666;
        v304 = v1136;
        v301 = v1134;
        v298 = v1133;
        (*(v1108 + 8))(v681, v667);
        v1129 = v680;
        goto LABEL_139;
      case 20:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v728 = v298;
        v729 = v300;
        v730 = v1132;
        sub_1B4DD2BC4(v1132, &qword_1EB8F5608, &qword_1B4F79E90);
        v662 = sub_1B4F66354();
        v731 = *(v662 - 8);
        (*(v731 + 32))(v730, v1144, v662);
        v664 = *(v731 + 56);
        v665 = v730;
        v300 = v729;
        v298 = v728;
LABEL_137:
        v732 = v662;
        v303 = v1149;
        v664(v665, 0, 1, v732);
LABEL_139:
        v299 = v1139;
        goto LABEL_8;
      case 22:
        v757 = v1090;
        v758 = (*(v1090 + 32))(v1069, v1144, v299);
        v759 = v299;
        MEMORY[0x1EEE9AC00](v758, v760);
        vars0 = v1069;
        v761 = v1128;

        v762 = v1137;
        sub_1B4E6EF4C(sub_1B4E952E8, &v1170, v761, v763);
        v765 = v764;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A8, &qword_1B4F6D080);
        v766 = (*(v757 + 80) + 32) & ~*(v757 + 80);
        v767 = swift_allocObject();
        *(v767 + 16) = xmmword_1B4F6CF50;
        v768 = *(v757 + 16);
        v769 = v1069;
        v768(v767 + v766, v1069, v759);
        v1153[0] = v765;
        sub_1B4E8D19C(v767, &qword_1EB8F46A8, &qword_1B4F6D080, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6B0]);

        sub_1B4E8FE78(v1153, v770);
        v699 = &v1163;
        v1137 = v762;
        if (v762)
        {
          goto LABEL_234;
        }

        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);

        v1128 = v1153[0];
        (*v1026)(v769, v759);
        v299 = v759;
        v298 = v1133;
        v300 = v1135;
        v301 = v1134;
        v302 = v1138;
        v303 = v1149;
        v305 = v1150;
        goto LABEL_186;
      case 23:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v560 = v1113;
        sub_1B4DD2BC4(v1113, &qword_1EB8F5618, &qword_1B4F79E80);
        v561 = v1046;
        (*v957)(v560, v1144, v1046);
        v562 = v561;
        v303 = v1149;
        (*v956)(v560, 0, 1, v562);
        goto LABEL_8;
      case 24:
        v541 = v1075;
        v542 = v999;
        v543 = v1078;
        v544 = (*(v1075 + 32))(v999, v1144, v1078);
        v545 = v1157;
        MEMORY[0x1EEE9AC00](v544, v546);
        vars0 = v542;

        v547 = v1137;
        v548 = sub_1B4E8F864(sub_1B4E93D40, &v1170, v545, MEMORY[0x1E69CBE40], sub_1B4EE7070, MEMORY[0x1E69CBE40], sub_1B4EE7070);
        v1137 = v547;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5628, &qword_1B4F73E88);
        v549 = (*(v541 + 80) + 32) & ~*(v541 + 80);
        v550 = swift_allocObject();
        *(v550 + 16) = xmmword_1B4F6CF50;
        (*(v541 + 16))(v550 + v549, v542, v543);
        v551 = MEMORY[0x1E69CBE40];
        v1153[0] = sub_1B4E78BC8(0, v548[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5628, &qword_1B4F73E88, MEMORY[0x1E69CBE40]);

        sub_1B4E8D2F8(v552);
        v553 = v550;
        v554 = v1143;
        v305 = v1150;
        sub_1B4E8D19C(v553, &qword_1EB8F5628, &qword_1B4F73E88, v551, MEMORY[0x1E69CBE40]);
        v555 = v554;
        v300 = v1135;

        v556 = sub_1B4DF2910(v1153[0]);
        v557 = v1139;

        sub_1B4E951B8(v555, type metadata accessor for RemoteBrowsingJournalProperty);
        v303 = v1149;

        v1157 = v556;
        v299 = v557;
        v302 = v1138;
        v558 = *(v541 + 8);
        v304 = v1136;
        v298 = v1133;
        v559 = v542;
        v301 = v1134;
        v558(v559, v1078);
        goto LABEL_9;
      case 26:
        v772 = v1076;
        v773 = v1004;
        v774 = v1079;
        v775 = (*(v1076 + 32))(v1004, v1144, v1079);
        v776 = v1155;
        MEMORY[0x1EEE9AC00](v775, v777);
        vars0 = v773;

        v778 = v1137;
        v779 = sub_1B4E8F864(sub_1B4E78818, &v1170, v776, MEMORY[0x1E69CCDC8], sub_1B4EE6D48, MEMORY[0x1E69CCDC8], sub_1B4EE6D48);
        v1137 = v778;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5620, &qword_1B4F73E80);
        v780 = (*(v772 + 80) + 32) & ~*(v772 + 80);
        v781 = swift_allocObject();
        *(v781 + 16) = xmmword_1B4F6CF50;
        (*(v772 + 16))(v781 + v780, v773, v774);
        v782 = MEMORY[0x1E69CCDC8];
        v1153[0] = sub_1B4E78BC8(0, v779[2] + 1, 0, MEMORY[0x1E69E7CC0], &qword_1EB8F5620, &qword_1B4F73E80, MEMORY[0x1E69CCDC8]);

        sub_1B4E8CA20(v783);
        v784 = v781;
        v785 = v1143;
        v305 = v1150;
        sub_1B4E8D19C(v784, &qword_1EB8F5620, &qword_1B4F73E80, v782, MEMORY[0x1E69CCDC8]);
        v786 = v785;
        v300 = v1135;

        v787 = sub_1B4DF2AAC(v1153[0]);
        v788 = v1139;

        sub_1B4E951B8(v786, type metadata accessor for RemoteBrowsingJournalProperty);
        v303 = v1149;

        v1155 = v787;
        v299 = v788;
        v302 = v1138;
        v789 = *(v772 + 8);
        v790 = v773;
        v304 = v1136;
        v301 = v1134;
        v298 = v1133;
        v789(v790, v1079);
        goto LABEL_9;
      case 27:
        v359 = v1036;
        sub_1B4E340C4(v1144, v1036);
        v360 = v996;
        sub_1B4E21A90(v359, v996, &qword_1EB8F4898, &qword_1B4F6E548);
        v361 = v1082;
        if ((*v1032)(v360, 1, v1082) == 1)
        {
          sub_1B4DD2BC4(v359, &qword_1EB8F4898, &qword_1B4F6E548);
          sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
          sub_1B4DD2BC4(v360, &qword_1EB8F4898, &qword_1B4F6E548);
          v299 = v1139;
LABEL_184:
          v303 = v1149;
          v305 = v1150;
LABEL_185:
          v298 = v1133;
LABEL_186:
          v304 = v1136;
          goto LABEL_9;
        }

        v823 = v301;
        (*v940)(v979, v360, v361);
        v824 = v1035;
        sub_1B4F67064();
        v825 = v968;
        sub_1B4F67054();
        v826 = *v941;
        (*v941)(v981, v825, v1054);
        v827 = v1131;
        v828 = swift_isUniquelyReferenced_nonNull_native();
        v1153[0] = v827;
        v829 = sub_1B4DF43BC(v824);
        v831 = *(v827 + 16);
        v832 = (v830 & 1) == 0;
        v817 = __OFADD__(v831, v832);
        v833 = v831 + v832;
        if (v817)
        {
          goto LABEL_229;
        }

        v834 = v830;
        v298 = v1133;
        if (*(v827 + 24) < v833)
        {
          sub_1B4E26A6C(v833, v828);
          v829 = sub_1B4DF43BC(v1035);
          v305 = v1150;
          if ((v834 & 1) != (v835 & 1))
          {
            goto LABEL_233;
          }

          v301 = v823;
          v836 = v1053;
          v837 = v1081;
          v299 = v1139;
          goto LABEL_172;
        }

        v836 = v1053;
        v837 = v1081;
        v305 = v1150;
        v301 = v823;
        if ((v828 & 1) == 0)
        {
          v905 = v829;
          sub_1B4E28860();
          v837 = v1081;
          v836 = v1053;
          v829 = v905;
          v299 = v1139;
LABEL_172:
          v302 = v1138;
          goto LABEL_212;
        }

        v302 = v1138;
        v299 = v1139;
LABEL_212:
        v884 = v1153[0];
        v304 = v1136;
        v1131 = v1153[0];
        if (v834)
        {
          (*(v1080 + 40))(*(v1153[0] + 56) + *(v1080 + 72) * v829, v981, v1054);
        }

        else
        {
          *(v1153[0] + 8 * (v829 >> 6) + 64) |= 1 << v829;
          v885 = v829;
          (*(v837 + 16))(*(v884 + 48) + *(v837 + 72) * v829, v1035, v836);
          v826(*(v1131 + 56) + *(v1080 + 72) * v885, v981, v1054);
          v886 = *(v1131 + 16);
          v817 = __OFADD__(v886, 1);
          v887 = v886 + 1;
          if (v817)
          {
            goto LABEL_231;
          }

          *(v1131 + 16) = v887;
        }

        v303 = v1149;
        v300 = v1135;
        (*v939)(v1035, v1053);
        (*v938)(v979, v1082);
        sub_1B4DD2BC4(v1036, &qword_1EB8F4898, &qword_1B4F6E548);
        v883 = &v1169;
        break;
      case 28:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v771 = *v1144;

        v1167 = v771;
        goto LABEL_7;
      case 29:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        (*v973)(v345, v1144, v303);
        goto LABEL_8;
      default:
        sub_1B4E951B8(v1143, type metadata accessor for RemoteBrowsingJournalProperty);
        v387 = v1126;
        sub_1B4DD2BC4(v1126, &qword_1EB8F7050, &qword_1B4F71500);
        v388 = v1071;
        (*v1041)(v387, v1144, v1071);
        v389 = &v1075;
LABEL_102:
        v615 = v387;
        v303 = v1149;
        (**(v389 - 32))(v615, 0, 1, v388);
        goto LABEL_8;
    }

LABEL_217:
    sub_1B4E951B8(*(v883 - 32), type metadata accessor for RemoteBrowsingJournalProperty);
LABEL_9:
    if (++v296 == v1148)
    {
      goto LABEL_4;
    }
  }

  sub_1B4E95218(v1151, v301, type metadata accessor for RemoteBrowsingJournalProperty);
  sub_1B4E95150(v301, v1141, type metadata accessor for RemoteBrowsingJournalProperty);
  v338 = swift_getEnumCaseMultiPayload();
  v339 = v1145;
  switch(v338)
  {
    case 1:
    case 3:
    case 5:
    case 9:
    case 11:
    case 13:
    case 14:
    case 17:
    case 23:
      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_14;
    case 2:
      goto LABEL_142;
    case 4:
      v462 = v304;
      v463 = v298;
      v464 = v1137;
      v465 = sub_1B4E6EC3C(*v1141, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2B8]);

      v467 = sub_1B4E93DDC(v466, v465);
      v1137 = v464;
      v336 = v463;
      v304 = v462;
      v302 = v1138;
      v299 = v1139;

      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);

      v1166 = v467;
      goto LABEL_6;
    case 6:
      v498 = v304;
      v499 = v298;
      v500 = v1137;
      v501 = sub_1B4E6EC3C(*v1141, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE20]);

      v503 = sub_1B4E941EC(v502, v501, sub_1B4E9533C, sub_1B4E9533C);
      v1137 = v500;
      v336 = v499;
      v304 = v498;
      v302 = v1138;
      v299 = v1139;

      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);

      v1163 = v503;
      goto LABEL_6;
    case 7:
      v330 = v304;
      v331 = v298;
      v332 = v1137;
      v333 = sub_1B4E6EC3C(*v1141, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE20]);

      v335 = sub_1B4E941EC(v334, v333, sub_1B4E9533C, sub_1B4E9533C);
      v1137 = v332;
      v336 = v331;
      v304 = v330;
      v302 = v1138;
      v299 = v1139;

      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);

      v1164 = v335;
LABEL_6:
      v298 = v336;
      v300 = v1135;
      goto LABEL_7;
    case 8:
      v563 = *v1141;
      if (*(v1162 + 16))
      {
        v564 = v302;
        v565 = v300;
        v566 = 1 << *(v563 + 32);
        v567 = -1;
        if (v566 < 64)
        {
          v567 = ~(-1 << v566);
        }

        v568 = v567 & *(v563 + 56);
        v569 = (v566 + 63) >> 6;

        v570 = 0;
        if (v568)
        {
          while (1)
          {
            v571 = v570;
LABEL_88:
            v572 = __clz(__rbit64(v568));
            v568 &= v568 - 1;
            v573 = (*(v563 + 48) + ((v571 << 10) | (16 * v572)));
            v574 = *v573;
            v575 = v573[1];

            sub_1B4E90E70(v574, v575);

            v299 = v1139;
            v565 = v1135;
            v564 = v1138;
            if (!v568)
            {
              goto LABEL_84;
            }
          }
        }

        while (1)
        {
LABEL_84:
          v571 = v570 + 1;
          if (__OFADD__(v570, 1))
          {
            goto LABEL_227;
          }

          if (v571 >= v569)
          {
            break;
          }

          v568 = *(v563 + 56 + 8 * v571);
          ++v570;
          if (v568)
          {
            v570 = v571;
            goto LABEL_88;
          }
        }

        v305 = v1150;
        v301 = v1134;
        v304 = v1136;
        v300 = v565;
        v302 = v564;
        v298 = v1133;
      }

      else
      {

        v305 = v1150;
      }

      v342 = v301;
LABEL_146:
      sub_1B4E951B8(v342, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_147;
    case 10:
      v587 = *v1042;
      v588 = v1040;
      v589 = v1072;
      (*v1042)(v1040, v1141, v1072);
      (*v922)(v304, v588, v589);
      v1066 = *v1061;
      (v1066)(v304, 0, 1, v589);
      v590 = v921;
      v591 = *(v1008 + 48);
      v592 = v1007;
      sub_1B4E21A90(v1127, v1007, &qword_1EB8F40D0, &unk_1B4F78940);
      sub_1B4E21A90(v304, &v592[v591], &qword_1EB8F40D0, &unk_1B4F78940);
      v593 = *v590;
      if ((*v590)(v592, 1, v589) == 1)
      {
        sub_1B4DD2BC4(v304, &qword_1EB8F40D0, &unk_1B4F78940);
        (*v936)(v588, v589);
        v301 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v594 = v593(&v592[v591], 1, v589);
        v299 = v1139;
        v300 = v1135;
        v302 = v1138;
        if (v594 != 1)
        {
          goto LABEL_183;
        }

        sub_1B4DD2BC4(v592, &qword_1EB8F40D0, &unk_1B4F78940);
        v298 = v1133;
        v304 = v1136;
LABEL_202:
        v878 = v1127;
        sub_1B4DD2BC4(v1127, &qword_1EB8F40D0, &unk_1B4F78940);
        (v1066)(v878, 1, 1, v1072);
        goto LABEL_7;
      }

      v861 = v964;
      sub_1B4E21A90(v592, v964, &qword_1EB8F40D0, &unk_1B4F78940);
      if (v593(&v592[v591], 1, v589) == 1)
      {
        sub_1B4DD2BC4(v1136, &qword_1EB8F40D0, &unk_1B4F78940);
        v862 = *v936;
        (*v936)(v1040, v589);
        v301 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v862(v861, v589);
        v299 = v1139;
        v300 = v1135;
        v302 = v1138;
LABEL_183:
        sub_1B4DD2BC4(v592, &qword_1EB8F55B0, &qword_1B4F78E30);
        goto LABEL_184;
      }

      v875 = v946;
      v587(v946, &v592[v591], v589);
      sub_1B4E952A0(&qword_1EB8F5668, MEMORY[0x1E69CC1F8], MEMORY[0x1E69CC210]);
      v876 = sub_1B4F67F54();
      v877 = *v936;
      (*v936)(v875, v589);
      sub_1B4DD2BC4(v1136, &qword_1EB8F40D0, &unk_1B4F78940);
      v877(v1040, v589);
      sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
      v877(v861, v589);
      v304 = v1136;
      v301 = v1134;
      v298 = v1133;
      sub_1B4DD2BC4(v592, &qword_1EB8F40D0, &unk_1B4F78940);
      v299 = v1139;
      v300 = v1135;
      v302 = v1138;
      if (v876)
      {
        goto LABEL_202;
      }

LABEL_7:
      v303 = v1149;
LABEL_8:
      v305 = v1150;
      goto LABEL_9;
    case 12:
      v504 = v1033;
      v505 = v1073;
      (*v1019)(v1033, v1141, v1073);
      v506 = sub_1B4F665C4();
      v508 = v507;
      v509 = v1125;
      if ((*v923)(v1125, 1, v505))
      {

        (*v937)(v504, v505);
        v301 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v299 = v1139;
        v302 = v1138;
        goto LABEL_184;
      }

      v863 = v961;
      (*v913)(v961, v509, v505);
      v864 = sub_1B4F665C4();
      v866 = v865;
      v867 = *v937;
      (*v937)(v863, v505);
      v305 = v1150;
      if (v506 == v864 && v508 == v866)
      {

        v868 = v1073;
        v867(v1033, v1073);
        v301 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v298 = v1133;
        v304 = v1136;
      }

      else
      {
        v888 = sub_1B4F68D54();

        v868 = v1073;
        v867(v1033, v1073);
        v301 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v298 = v1133;
        v304 = v1136;
        if ((v888 & 1) == 0)
        {
          goto LABEL_220;
        }
      }

      v889 = v1125;
      sub_1B4DD2BC4(v1125, &qword_1EB8F5610, &qword_1B4F79E70);
      (*v971)(v889, 1, 1, v868);
LABEL_220:
      v299 = v1139;
      v300 = v1135;
      v302 = v1138;
      goto LABEL_147;
    case 15:
      v604 = v298;
      v605 = v301;
      v606 = v984;
      v607 = v1091;
      v608 = (*v1021)(v984, v1141, v1091);
      MEMORY[0x1EEE9AC00](v608, v609);
      vars0 = v606;
      v610 = v1130;

      v611 = v1137;
      v612 = sub_1B4E8F864(sub_1B4E95320, &v1170, v610, MEMORY[0x1E69CD370], sub_1B4EE8CD8, MEMORY[0x1E69CD370], sub_1B4EE8CD8);
      v1137 = v611;
      v302 = v1138;
      v299 = v1139;
      sub_1B4E951B8(v605, type metadata accessor for RemoteBrowsingJournalProperty);
      v304 = v1136;

      v613 = v606;
      v301 = v605;
      v298 = v604;
      v614 = v607;
      v300 = v1135;
      (*v1020)(v613, v614);
      v1130 = v612;
      goto LABEL_7;
    case 16:
      v447 = *v1141;
      if (!*(v1160 + 16))
      {
        goto LABEL_154;
      }

      v448 = v299;
      v449 = v447 + 56;
      v450 = 1 << *(v447 + 32);
      v451 = -1;
      if (v450 < 64)
      {
        v451 = ~(-1 << v450);
      }

      v452 = v451 & *(v447 + 56);
      v453 = (v450 + 63) >> 6;
      v1066 = *v1141;

      v454 = 0;
      if (v452)
      {
        goto LABEL_44;
      }

      while (2)
      {
        v456 = v1096;
        v303 = v1149;
        v305 = v1150;
LABEL_46:
        v455 = v454 + 1;
        if (__OFADD__(v454, 1))
        {
          goto LABEL_228;
        }

        if (v455 < v453)
        {
          v452 = *(v449 + 8 * v455);
          ++v454;
          if (v452)
          {
            v454 = v455;
            while (1)
            {
              v457 = __clz(__rbit64(v452));
              v452 &= v452 - 1;
              v458 = v1058;
              v459 = v1059;
              (*(v456 + 16))(v1058, *(v1066 + 48) + *(v456 + 72) * (v457 | (v455 << 6)), v1059);
              v460 = v456;
              v461 = v1060;
              sub_1B4E90B60(v458, v1060);
              (*(v460 + 8))(v458, v459);
              sub_1B4DD2BC4(v461, &qword_1EB8F5140, &qword_1B4F70ED8);
              v448 = v1139;
              if (!v452)
              {
                break;
              }

LABEL_44:
              v455 = v454;
              v456 = v1096;
            }

            continue;
          }

          goto LABEL_46;
        }

        break;
      }

      v298 = v1133;
      v300 = v1135;
      v301 = v1134;
      v302 = v1138;
      v304 = v1136;
      v299 = v448;
      goto LABEL_158;
    case 18:
      v595 = v302;
      v596 = v301;
      v597 = v1047;
      v598 = v298;
      v599 = v300;
      v600 = v1077;
      (*v1023)(v1047, v1141, v1077);
      v601 = v1009;
      sub_1B4E90850(v597, v1009);
      v299 = v1139;
      sub_1B4DD2BC4(v601, &qword_1EB8F55A8, &qword_1B4F73E28);
      v602 = v597;
      v301 = v596;
      v302 = v595;
      v304 = v1136;
      v603 = v600;
      v300 = v599;
      v298 = v598;
      (*v1022)(v602, v603);
      goto LABEL_142;
    case 19:
      v390 = v990;
      v391 = v300;
      v392 = v1068;
      v393 = (*v1025)(v990, v1141, v1068);
      MEMORY[0x1EEE9AC00](v393, v394);
      vars0 = v390;
      v395 = v1129;

      v396 = v1137;
      v397 = sub_1B4E8F864(sub_1B4E95304, &v1170, v395, MEMORY[0x1E69CB850], sub_1B4EE89B0, MEMORY[0x1E69CB850], sub_1B4EE89B0);
      v1137 = v396;
      v302 = v1138;
      v299 = v1139;
      sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);

      v398 = v390;
      v304 = v1136;
      v301 = v1134;
      v399 = v392;
      v300 = v391;
      v298 = v1133;
      (*v1024)(v398, v399);
      v1129 = v397;
      goto LABEL_7;
    case 20:
      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);
      v439 = v300;
      v440 = v1132;
      sub_1B4DD2BC4(v1132, &qword_1EB8F5608, &qword_1B4F79E90);
      v441 = sub_1B4F66354();
      v442 = v440;
      v300 = v439;
      (*(*(v441 - 8) + 56))(v442, 1, 1, v441);
LABEL_14:
      sub_1B4E951B8(v1141, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_7;
    case 21:
      v577 = *v1141;
      v578 = v1141[1];

      v580 = v298;
      v581 = v301;
      v582 = v304;
      v583 = v580;
      v584 = v1137;
      v585 = sub_1B4E94AF0(v579, v577, v578);
      v1137 = v584;
      v586 = v583;
      v304 = v582;
      v301 = v581;
      v298 = v586;
      v302 = v1138;
      v299 = v1139;

      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);

      v1110 = v585;
      goto LABEL_7;
    case 22:
      v370 = v299;
      v371 = v298;
      v372 = v993;
      v373 = (*v1027)(v993, v1141, v370);
      MEMORY[0x1EEE9AC00](v373, v374);
      vars0 = v372;
      v375 = v304;
      v376 = v301;
      v377 = v1128;

      v378 = v371;
      v379 = v1137;
      sub_1B4E6EF4C(sub_1B4E950E8, &v1170, v377, v380);
      v382 = v381;
      v1137 = v379;
      v383 = v378;
      v384 = v1138;
      v385 = v1139;
      sub_1B4E951B8(v376, type metadata accessor for RemoteBrowsingJournalProperty);
      v301 = v376;
      v302 = v384;
      v304 = v375;

      v386 = v372;
      v298 = v383;
      v299 = v385;
      v300 = v1135;
      (*v1026)(v386, v385);
      v1128 = v382;
      goto LABEL_7;
    case 24:
      v413 = v298;
      v404 = v300;
      v405 = v301;
      v406 = v1048;
      v407 = v304;
      v408 = v413;
      v409 = v1078;
      (*v1029)(v1048, v1141, v1078);
      v414 = v1010;
      sub_1B4E90540(v406, v1010);
      v411 = v1139;
      sub_1B4DD2BC4(v414, &qword_1EB8F55A0, &qword_1B4F73E20);
      v412 = &v1060;
      goto LABEL_141;
    case 25:
      v403 = v298;
      v404 = v300;
      v405 = v301;
      v406 = v1049;
      v407 = v304;
      v408 = v403;
      v409 = v1050;
      (*v948)(v1049, v1141, v1050);
      v410 = v1011;
      sub_1B4E90230(v406, v1011);
      v411 = v1139;
      sub_1B4DD2BC4(v410, &qword_1EB8F5598, &qword_1B4F73E18);
      v412 = &v979;
      goto LABEL_141;
    case 26:
      v748 = v298;
      v404 = v300;
      v405 = v301;
      v406 = v1051;
      v407 = v304;
      v408 = v748;
      v409 = v1079;
      (*v1031)(v1051, v1141, v1079);
      v749 = v1012;
      sub_1B4E8FF20(v406, v1012);
      v411 = v1139;
      sub_1B4DD2BC4(v749, &qword_1EB8F5590, &qword_1B4F73E10);
      v412 = &v1062;
LABEL_141:
      v750 = v406;
      v301 = v405;
      v300 = v404;
      v751 = v409;
      v299 = v411;
      v298 = v408;
      v304 = v407;
      v302 = v1138;
      (**(v412 - 32))(v750, v751);
LABEL_142:
      sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);
      goto LABEL_7;
    case 27:
      v346 = v304;
      v347 = v1018;
      sub_1B4E340C4(v1141, v1018);
      v348 = v995;
      sub_1B4E21A90(v347, v995, &qword_1EB8F4898, &qword_1B4F6E548);
      v349 = v1082;
      if ((*v1032)(v348, 1, v1082) == 1)
      {
        sub_1B4DD2BC4(v348, &qword_1EB8F4898, &qword_1B4F6E548);
        sub_1B4DD2BC4(v347, &qword_1EB8F4898, &qword_1B4F6E548);
        sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);

        v1131 = MEMORY[0x1E69E7CC8];
        v299 = v1139;
        v302 = v1138;
        v303 = v1149;
      }

      else
      {
        (*v940)(v1016, v348, v349);
        v792 = v1017;
        sub_1B4F67064();
        v793 = v1131;
        v794 = sub_1B4DF43BC(v792);
        if (v795)
        {
          v796 = v794;
          v797 = v301;
          v798 = swift_isUniquelyReferenced_nonNull_native();
          v1153[0] = v793;
          if ((v798 & 1) == 0)
          {
            sub_1B4E28860();
            v793 = v1153[0];
          }

          v799 = *(v1081 + 8);
          v800 = v1053;
          v799(*(v793 + 48) + *(v1081 + 72) * v796, v1053);
          v801 = v796;
          v802 = v1080;
          v803 = v970;
          v804 = v1054;
          (*(v1080 + 32))(v970, *(v793 + 56) + *(v1080 + 72) * v801, v1054);
          v1131 = v793;
          v805 = v793;
          v806 = v803;
          sub_1B4E8BFD0(v801, v805);
          (*(v802 + 56))(v803, 0, 1, v804);
          v347 = v1018;
          v303 = v1149;
          v346 = v1136;
          v301 = v797;
        }

        else
        {
          v806 = v970;
          (*v916)(v970, 1, 1, v1054);
          v799 = *v939;
          v800 = v1053;
          v303 = v1149;
        }

        v799(v1017, v800);
        sub_1B4DD2BC4(v806, &qword_1EB8F5580, &qword_1B4F73E08);
        (*v938)(v1016, v1082);
        sub_1B4DD2BC4(v347, &qword_1EB8F4898, &qword_1B4F6E548);
        sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);
        v299 = v1139;
        v302 = v1138;
      }

      v305 = v1150;
      v298 = v1133;
      v304 = v346;
      goto LABEL_196;
    case 28:
      v700 = *v1141;
      if (!*(v1167 + 2))
      {
LABEL_154:

        v303 = v1149;
        v305 = v1150;
        goto LABEL_158;
      }

      v701 = v304;
      v702 = v301;
      v703 = v701;
      v704 = v700 + 56;
      v705 = 1 << *(v700 + 32);
      v706 = -1;
      if (v705 < 64)
      {
        v706 = ~(-1 << v705);
      }

      v707 = v706 & *(v700 + 56);
      v708 = (v705 + 63) >> 6;
      v1066 = *v1141;

      v709 = 0;
      if (v707)
      {
LABEL_122:
        v710 = v709;
        v711 = v1095;
        goto LABEL_128;
      }

      while (2)
      {
        v711 = v1095;
        v303 = v1149;
        v305 = v1150;
LABEL_124:
        v710 = v709 + 1;
        if (!__OFADD__(v709, 1))
        {
          if (v710 < v708)
          {
            v707 = *(v704 + 8 * v710);
            ++v709;
            if (v707)
            {
              v709 = v710;
LABEL_128:
              v712 = __clz(__rbit64(v707));
              v707 &= v707 - 1;
              v713 = v1055;
              v714 = v711;
              v715 = v1056;
              (*(v711 + 16))(v1055, *(v1066 + 48) + *(v711 + 72) * (v712 | (v710 << 6)), v1056);
              v716 = v1057;
              sub_1B4E90FAC(v713, v1057);
              (*(v714 + 8))(v713, v715);
              sub_1B4DD2BC4(v716, &qword_1EB8F55C0, &qword_1B4F73E38);
              v702 = v1134;
              v703 = v1136;
              if (v707)
              {
                goto LABEL_122;
              }

              continue;
            }

            goto LABEL_124;
          }

          v300 = v1135;
          v302 = v1138;
          v298 = v1133;
          v791 = v703;
          v301 = v702;
          v304 = v791;
          v299 = v1139;
LABEL_158:
          sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);
          goto LABEL_9;
        }

        break;
      }

      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      sub_1B4F68DB4();
      __break(1u);
LABEL_234:

      __break(1u);
      return result;
    case 29:
      v717 = v1037;
      v303 = v1149;
      (*v925)(v1037, v1141, v1149);
      if (MEMORY[0x1B8C807E0](v339, v717))
      {
        v718 = sub_1B4F666E4();
        (*(*(v718 - 8) + 56))(v969, 1, 1, v718);
        vars0 = 0;
        vars8 = MEMORY[0x1E69E7CC8];
        v719 = v301;
        v720 = v962;
        v303 = v1149;
        sub_1B4F66F54();
        (*v924)(v1037, v303);
        sub_1B4E951B8(v719, type metadata accessor for RemoteBrowsingJournalProperty);
        v721 = v720;
        v301 = v719;
        (*v973)(v339, v721, v303);
      }

      else
      {
        (*v924)(v717, v303);
        sub_1B4E951B8(v301, type metadata accessor for RemoteBrowsingJournalProperty);
      }

      goto LABEL_8;
    default:
      v529 = *v1041;
      v530 = v1039;
      v531 = v1071;
      (*v1041)(v1039, v1141, v1071);
      v532 = v1038;
      (*v920)(v1038, v530, v531);
      v533 = *v1043;
      (*v1043)(v532, 0, 1, v531);
      v534 = *(v1006 + 48);
      v535 = v1005;
      sub_1B4E21A90(v1126, v1005, &qword_1EB8F7050, &qword_1B4F71500);
      sub_1B4E21A90(v532, &v535[v534], &qword_1EB8F7050, &qword_1B4F71500);
      v536 = *v919;
      if ((*v919)(v535, 1, v531) == 1)
      {
        v1066 = v533;
        sub_1B4DD2BC4(v532, &qword_1EB8F7050, &qword_1B4F71500);
        (*v935)(v530, v531);
        v537 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v538 = &v535[v534];
        v301 = v537;
        v539 = v536(v538, 1, v531);
        v299 = v1139;
        v298 = v1133;
        v302 = v1138;
        v305 = v1150;
        v304 = v1136;
        if (v539 != 1)
        {
          goto LABEL_180;
        }

        sub_1B4DD2BC4(v535, &qword_1EB8F7050, &qword_1B4F71500);
        v300 = v1135;
LABEL_200:
        v874 = v1126;
        sub_1B4DD2BC4(v1126, &qword_1EB8F7050, &qword_1B4F71500);
        (v1066)(v874, 1, 1, v1071);
        goto LABEL_147;
      }

      v859 = v963;
      sub_1B4E21A90(v535, v963, &qword_1EB8F7050, &qword_1B4F71500);
      if (v536(&v535[v534], 1, v531) == 1)
      {
        sub_1B4DD2BC4(v1038, &qword_1EB8F7050, &qword_1B4F71500);
        v860 = *v935;
        (*v935)(v1039, v531);
        v301 = v1134;
        sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
        v860(v859, v531);
        v299 = v1139;
        v298 = v1133;
        v302 = v1138;
        v305 = v1150;
        v304 = v1136;
LABEL_180:
        sub_1B4DD2BC4(v535, &qword_1EB8F55B8, &qword_1B4F73E30);
        v300 = v1135;
        goto LABEL_147;
      }

      v1066 = v533;
      v870 = &v535[v534];
      v871 = v945;
      v529(v945, v870, v531);
      sub_1B4E952A0(&qword_1EB8F5670, MEMORY[0x1E69CB238], MEMORY[0x1E69CB250]);
      v872 = sub_1B4F67F54();
      v873 = *v935;
      (*v935)(v871, v531);
      sub_1B4DD2BC4(v1038, &qword_1EB8F7050, &qword_1B4F71500);
      v873(v1039, v531);
      v301 = v1134;
      sub_1B4E951B8(v1134, type metadata accessor for RemoteBrowsingJournalProperty);
      v873(v859, v531);
      sub_1B4DD2BC4(v535, &qword_1EB8F7050, &qword_1B4F71500);
      v299 = v1139;
      v298 = v1133;
      v300 = v1135;
      v302 = v1138;
      v305 = v1150;
      v304 = v1136;
      if (v872)
      {
        goto LABEL_200;
      }

LABEL_147:
      v303 = v1149;
      goto LABEL_9;
  }
}

void sub_1B4E78238(uint64_t a1, uint64_t (*a2)(void), void (*a3)(char *, char *))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - v11;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v28 - v16;
  v18 = 0;
  v30 = a1;
  v21 = *(a1 + 56);
  v20 = a1 + 56;
  v19 = v21;
  v22 = 1 << *(v20 - 24);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[2] = v5 + 32;
  v28[3] = v5 + 16;
  v28[1] = v5 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v5 + 16))(v17, *(v30 + 48) + *(v5 + 72) * (v27 | (v26 << 6)), v4, v15);
      (*(v5 + 32))(v8, v17, v4);
      v29(v12, v8);
      (*(v5 + 8))(v12, v4);
    }

    while (v24);
  }

  while (1)
  {
    v26 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {

      return;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      v18 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_1B4E78458(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1B4F674E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v18 - v12;
  v14 = (a3)(v11);
  a3(v14);
  sub_1B4E952A0(&qword_1EB8F57B8, MEMORY[0x1E69CD1A0], MEMORY[0x1E69CD1A8]);
  v15 = sub_1B4F67F54();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v13, v4);
  return (v15 & 1) == 0;
}

uint64_t sub_1B4E785DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = sub_1B4F68D54();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

BOOL sub_1B4E78694(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_1B4F649A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v18 - v12;
  v14 = (a3)(v11);
  a3(v14);
  sub_1B4E952A0(&qword_1EB8F4650, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v15 = sub_1B4F67F54();
  v16 = *(v5 + 8);
  v16(v8, v4);
  v16(v13, v4);
  return (v15 & 1) == 0;
}

char *sub_1B4E7884C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
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

char *sub_1B4E78958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5708, &qword_1B4F73F10);
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

char *sub_1B4E78A4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5770, &qword_1B4F73F40);
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

void *sub_1B4E78BC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

void *sub_1B4E78DA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_1B4E78E28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F64E14();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A0]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5718, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A8]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E82488(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E79108(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B4F68E84();
  sub_1B4F67FE4();
  v8 = sub_1B4F68EC4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B4F68D54() & 1) != 0)
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

    sub_1B4E82750(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B4E79258(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66484();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F41C8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC290]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E828D0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E79538(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](a2);
  v6 = sub_1B4F68EC4();
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
    sub_1B4E82B98(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4E79630(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F670C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5798, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDE0]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E82CF8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E79910(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F660C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5778, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE58]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E82FC0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E79BF0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F65DE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5760, MEMORY[0x1E69CB800], MEMORY[0x1E69CB818]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E83288(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E79ED0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66BA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAD8]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F57D8, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAE0]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E83550(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7A1B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66A54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC948]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F57C0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC950]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E83818(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7A490(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F669F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC840]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F57A8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC848]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E83AE0(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7A770(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5788, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA18]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E83DA8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7AA50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F65E04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F57E8, MEMORY[0x1E69CB850], MEMORY[0x1E69CB868]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E84070(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7AD30(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66674();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5750, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC600]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E84338(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B010(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67A94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F56D8, MEMORY[0x1E69CD370], MEMORY[0x1E69CD388]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E84600(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B2F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67124();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F56E8, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE40]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E848C8(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B5D0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F679C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F56F8, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2F0]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E84B90(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7B8B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67244();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF48]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5738, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF50]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E84E58(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7BB90(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67154();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5728, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCEE0]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E85120(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7BE70(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1B4F68E84();
  sub_1B4F64D54();
  sub_1B4F67FE4();

  v7 = sub_1B4F68EC4();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1B4F64D54();
      v13 = v12;
      if (v11 == sub_1B4F64D54() && v13 == v14)
      {
        break;
      }

      v16 = sub_1B4F68D54();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1B4E853E8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4E7BFF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = sub_1B4F66E34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4F68E84();
  sub_1B4F66E24();
  v11 = sub_1B4F68EC4();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_1B4E95150(*(v10 + 48) + v15 * v13, v9, MEMORY[0x1E69CCB48]);
      v16 = MEMORY[0x1B8C806C0](v9, a2);
      sub_1B4E951B8(v9, MEMORY[0x1E69CCB48]);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B4E951B8(a2, MEMORY[0x1E69CCB48]);
    sub_1B4E95150(*(v10 + 48) + v15 * v13, v20, MEMORY[0x1E69CCB48]);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B4E95150(a2, v9, MEMORY[0x1E69CCB48]);
    v21 = *v3;
    sub_1B4E855C0(v9, v13, isUniquelyReferenced_nonNull_native);
    v18 = v20;
    *v3 = v21;
    sub_1B4E95218(a2, v18, MEMORY[0x1E69CCB48]);
    return 1;
  }
}

uint64_t sub_1B4E7C238(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F64F74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178], MEMORY[0x1E69CB180]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F56C8, MEMORY[0x1E69CB178], MEMORY[0x1E69CB188]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E85804(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7C518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1;
  v5 = sub_1B4F67184();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1B4F68E84();
  sub_1B4F67174();
  v11 = sub_1B4F68EC4();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = *(v6 + 72);
    while (1)
    {
      sub_1B4E95150(*(v10 + 48) + v15 * v13, v9, MEMORY[0x1E69CCEF0]);
      v16 = MEMORY[0x1B8C80A10](v9, a2);
      sub_1B4E951B8(v9, MEMORY[0x1E69CCEF0]);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1B4E951B8(a2, MEMORY[0x1E69CCEF0]);
    sub_1B4E95150(*(v10 + 48) + v15 * v13, v20, MEMORY[0x1E69CCEF0]);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B4E95150(a2, v9, MEMORY[0x1E69CCEF0]);
    v21 = *v3;
    sub_1B4E85ACC(v9, v13, isUniquelyReferenced_nonNull_native);
    v18 = v20;
    *v3 = v21;
    sub_1B4E95218(a2, v18, MEMORY[0x1E69CCEF0]);
    return 1;
  }
}

uint64_t sub_1B4E7C758(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F67004();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCE8]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F56B8, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCF0]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E85D10(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7CA38(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1B8C82710](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
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
    sub_1B4E85FD8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B4E7CB20(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1B4F66894();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710], MEMORY[0x1E69CC718]);
  v34 = a2;
  v12 = sub_1B4F67F14();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      sub_1B4E952A0(&qword_1EB8F5690, MEMORY[0x1E69CC710], MEMORY[0x1E69CC720]);
      v22 = sub_1B4F67F54();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    sub_1B4E860FC(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t sub_1B4E7CE00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
    v2 = sub_1B4F68984();
    v15 = v2;
    sub_1B4F688E4();
    if (sub_1B4F68914())
    {
      type metadata accessor for XPCClient();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B4E81E38(v9 + 1);
        }

        v2 = v15;
        sub_1B4F68E84();
        sub_1B4F68774();
        result = sub_1B4F68EC4();
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

      while (sub_1B4F68914());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B4E7D000(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B0, &qword_1B4F6D088);
  result = sub_1B4F68974();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E7D26C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F64E14();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5720, &qword_1B4F73F20);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A0]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7D5C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
  result = sub_1B4F68974();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E7D828(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F66484();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5808, &qword_1B4F73F80);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7DB84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E8, &qword_1B4F6D0C0);
  result = sub_1B4F68974();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](v17);
      result = sub_1B4F68EC4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E7DDD4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F670C4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57A0, &qword_1B4F73F50);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7E130(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F660C4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5780, &unk_1B4F79F50);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7E48C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F65DE4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5768, &unk_1B4F79F40);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7E7E8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F66BA4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57E0, &qword_1B4F73F60);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAD8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7EB44(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F66A54();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57C8, &unk_1B4F79F30);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC948]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7EEA0(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F669F4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57B0, &qword_1B4F73F58);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC840]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7F1FC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F66AF4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5790, &qword_1B4F73F48);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4DA0, MEMORY[0x1E69CCA00], MEMORY[0x1E69CCA10]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7F558(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F66674();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5758, &unk_1B4F79F60);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EDB70088, MEMORY[0x1E69CC5E8], MEMORY[0x1E69CC5F8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7F8B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F67154();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5730, &qword_1B4F73F28);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EDB70030, MEMORY[0x1E69CCEC8], MEMORY[0x1E69CCED8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7FC10(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F65E04();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F57F0, &qword_1B4F73F68);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E7FF6C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F67A94();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56E0, &qword_1B4F73EF8);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E802C8(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F67124();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56F0, &qword_1B4F73F00);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EDB70038, MEMORY[0x1E69CCE28], MEMORY[0x1E69CCE38]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E80624(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F679C4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5700, &qword_1B4F73F08);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EDB70020, MEMORY[0x1E69CD2D8], MEMORY[0x1E69CD2E8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E80980(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F67244();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5740, &qword_1B4F73F30);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4178, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF48]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E80CDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5710, &qword_1B4F73F18);
  result = sub_1B4F68974();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1B4F68E84();
      sub_1B4F64D54();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E80F48(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4F66E34();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
  result = sub_1B4F68974();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v1;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v32 + 72);
      sub_1B4E95218(*(v7 + 48) + v21 * (v18 | (v10 << 6)), v6, MEMORY[0x1E69CCB48]);
      sub_1B4F68E84();
      sub_1B4F66E24();
      result = sub_1B4F68EC4();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1B4E95218(v6, *(v9 + 48) + v17 * v21, MEMORY[0x1E69CCB48]);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1B4E81250(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F64F74();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56D0, &qword_1B4F73EF0);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4170, MEMORY[0x1E69CB178], MEMORY[0x1E69CB180]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E815AC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B4F67184();
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
  result = sub_1B4F68974();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v1;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v32 + 72);
      sub_1B4E95218(*(v7 + 48) + v21 * (v18 | (v10 << 6)), v6, MEMORY[0x1E69CCEF0]);
      sub_1B4F68E84();
      sub_1B4F67174();
      result = sub_1B4F68EC4();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = sub_1B4E95218(v6, *(v9 + 48) + v17 * v21, MEMORY[0x1E69CCEF0]);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

uint64_t sub_1B4E818B4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F67004();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56C0, &qword_1B4F73EE8);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F4168, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCE8]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_1B4E81C10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A8, &qword_1B4F73ED8);
  result = sub_1B4F68974();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      result = MEMORY[0x1B8C82710](*(v5 + 40), v17, 4);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E81E38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56A0, &qword_1B4F73ED0);
  result = sub_1B4F68974();
  v5 = result;
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
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1B4F68E84();
      sub_1B4F68774();
      result = sub_1B4F68EC4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B4E82088(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1B4F66894();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5698, &qword_1B4F73EC8);
  result = sub_1B4F68974();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v35 = v3 + 32;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v21;
      v21(v36, v20, v37);
      sub_1B4E952A0(&qword_1EB8F5688, MEMORY[0x1E69CC710], MEMORY[0x1E69CC718]);
      result = sub_1B4F67F14();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = v34(*(v8 + 48) + v16 * v33, v36, v37);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

unint64_t sub_1B4E823E4(uint64_t a1, uint64_t a2)
{
  sub_1B4F68E84();
  sub_1B4F68774();
  sub_1B4F68EC4();
  result = sub_1B4F688D4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B4E82488(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F64E14();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7D26C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB098], &qword_1EB8F5720, &qword_1B4F73F20);
      goto LABEL_12;
    }

    sub_1B4E872AC(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F41B0, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A0]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5718, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A8]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82750(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B4E7D5C8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B4E863C4();
      goto LABEL_16;
    }

    sub_1B4E875C8(v8 + 1);
  }

  v10 = *v4;
  sub_1B4F68E84();
  sub_1B4F67FE4();
  result = sub_1B4F68EC4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B4F68D54();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E828D0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F66484();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7D828(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC278], &qword_1EB8F5808, &qword_1B4F73F80);
      goto LABEL_12;
    }

    sub_1B4E87800(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F41C8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC290]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82B98(uint64_t result, unint64_t a2, char a3)
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
    sub_1B4E7DB84(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B4E86520(&qword_1EB8F46E8, &qword_1B4F6D0C0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B4E87B1C(v5 + 1);
  }

  v8 = *v3;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v4);
  result = sub_1B4F68EC4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82CF8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F670C4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7DDD4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCDC8], &qword_1EB8F57A0, &qword_1B4F73F50);
      goto LABEL_12;
    }

    sub_1B4E87D3C(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5798, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDE0]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E82FC0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F660C4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7E130(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CBE40], &qword_1EB8F5780, &unk_1B4F79F50);
      goto LABEL_12;
    }

    sub_1B4E88058(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5778, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE58]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83288(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F65DE4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7E48C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CB800], &qword_1EB8F5768, &unk_1B4F79F40);
      goto LABEL_12;
    }

    sub_1B4E88374(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F5760, MEMORY[0x1E69CB800], MEMORY[0x1E69CB818]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83550(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F66BA4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7E7E8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CCAC8], &qword_1EB8F57E0, &qword_1B4F73F60);
      goto LABEL_12;
    }

    sub_1B4E88690(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4DC0, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAD8]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57D8, MEMORY[0x1E69CCAC8], MEMORY[0x1E69CCAE0]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83818(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F66A54();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7EB44(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC938], &qword_1EB8F57C8, &unk_1B4F79F30);
      goto LABEL_12;
    }

    sub_1B4E889AC(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4DF0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC948]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57C0, MEMORY[0x1E69CC938], MEMORY[0x1E69CC950]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}

uint64_t sub_1B4E83AE0(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1B4F669F4();
  v7 = *(v6 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B4E7EEA0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1B4E86E38(MEMORY[0x1E69CC830], &qword_1EB8F57B0, &qword_1B4F73F58);
      goto LABEL_12;
    }

    sub_1B4E88CC8(v12 + 1);
  }

  v14 = *v3;
  sub_1B4E952A0(&qword_1EB8F4DF8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC840]);
  v15 = sub_1B4F67F14();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1B4E952A0(&qword_1EB8F57A8, MEMORY[0x1E69CC830], MEMORY[0x1E69CC848]);
      v23 = sub_1B4F67F54();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B4F68DA4();
  __break(1u);
  return result;
}
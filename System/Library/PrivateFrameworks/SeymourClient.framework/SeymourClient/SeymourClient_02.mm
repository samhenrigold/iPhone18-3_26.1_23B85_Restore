id sub_1B4DF6AB4(char a1, uint64_t a2, uint64_t a3, double a4)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v7 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((Platform.internalInstall.getter(deviceClassNumber == 3) & 1) == 0)
    {
      goto LABEL_13;
    }

    v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v10 = sub_1B4F67F64();
    v11 = [v9 initWithSuiteName_];

    if (!v11)
    {
      goto LABEL_13;
    }

    UserDefaultsKeys.rawValue.getter();
    v12 = sub_1B4F67F64();

    v13 = [v11 stringForKey_];

    if (v13)
    {
      v14 = sub_1B4F67F74();
      v16 = v15;

      if (a3 && (v14 == a2 && v16 == a3 || (sub_1B4F68D54() & 1) != 0))
      {

LABEL_12:

LABEL_13:

        return a2;
      }
    }

    else
    {
      if (!a3)
      {
        goto LABEL_12;
      }

      v14 = 0;
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v17 = sub_1B4F67C54();
    __swift_project_value_buffer(v17, qword_1EDB72490);
    swift_bridgeObjectRetain_n();
    v18 = sub_1B4F67C34();
    v19 = sub_1B4F685E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315394;
      v22 = UserDefaultsKeys.rawValue.getter();
      v24 = sub_1B4DC4F88(v22, v23, &v28);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7690, qword_1B4F6C9F0);
      v25 = sub_1B4F67F94();
      v27 = sub_1B4DC4F88(v25, v26, &v28);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1B4DC2000, v18, v19, "Non default value set for %s: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v21, -1, -1);
      MEMORY[0x1B8C831D0](v20, -1, -1);
    }

    else
    {
    }

    return v14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4DF6DE8(char a1, uint64_t a2, double a3)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((Platform.internalInstall.getter(deviceClassNumber == 3) & 1) == 0)
    {
      return a2;
    }

    v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v9 = sub_1B4F67F64();
    v10 = [v8 initWithSuiteName_];

    if (!v10)
    {
      return a2;
    }

    v26 = a1;
    v11 = UserDefaultsKeys.rawValue.getter();
    v13 = _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v10, v11, v12);

    if (v13 == 2)
    {
      if (a2 == 2)
      {

        return 2;
      }
    }

    else if (a2 != 2 && ((v13 ^ a2) & 1) == 0)
    {

      return a2;
    }

    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B4F67C54();
    __swift_project_value_buffer(v14, qword_1EDB72490);
    v15 = sub_1B4F67C34();
    v16 = sub_1B4F685E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315394;
      v19 = UserDefaultsKeys.rawValue.getter();
      v21 = sub_1B4DC4F88(v19, v20, &v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F0, &qword_1B4F6C9E8);
      v22 = sub_1B4F67F94();
      v24 = sub_1B4DC4F88(v22, v23, &v25);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1B4DC2000, v15, v16, "Non default value set for %s: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v18, -1, -1);
      MEMORY[0x1B8C831D0](v17, -1, -1);
    }

    return v13;
  }

  __break(1u);
  return result;
}

id sub_1B4DF7094(char a1, int a2, double a3)
{
  LODWORD(v3) = a2;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter(deviceClassNumber == 3))
    {
      v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v9 = sub_1B4F67F64();
      v10 = [v8 initWithSuiteName_];

      if (v10)
      {
        v25 = a1;
        v11 = UserDefaultsKeys.rawValue.getter();
        v13 = _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v10, v11, v12);

        if (v13 == 2 || ((v13 ^ v3) & 1) == 0)
        {
        }

        else
        {
          if (qword_1EDB724A8 != -1)
          {
            swift_once();
          }

          v14 = sub_1B4F67C54();
          __swift_project_value_buffer(v14, qword_1EDB72490);
          v3 = sub_1B4F67C34();
          v15 = sub_1B4F685E4();
          if (os_log_type_enabled(v3, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            v24 = v17;
            *v16 = 136315394;
            v18 = UserDefaultsKeys.rawValue.getter();
            v20 = sub_1B4DC4F88(v18, v19, &v24);

            *(v16 + 4) = v20;
            *(v16 + 12) = 2080;
            v21 = sub_1B4F67F94();
            v23 = sub_1B4DC4F88(v21, v22, &v24);

            *(v16 + 14) = v23;
            _os_log_impl(&dword_1B4DC2000, v3, v15, "Non default value set for %s: %s", v16, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B8C831D0](v17, -1, -1);
            MEMORY[0x1B8C831D0](v16, -1, -1);
          }

          LOBYTE(v3) = v13;
        }
      }
    }

    return (v3 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B4DF7310(char a1, double a2)
{
  v4 = MobileGestalt_get_current_device();
  if (v4)
  {
    v5 = v4;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (Platform.internalInstall.getter(deviceClassNumber == 3))
    {
      v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
      v8 = sub_1B4F67F64();
      v9 = [v7 initWithSuiteName_];

      if (v9)
      {
        LOBYTE(v26) = a1;
        v10 = UserDefaultsKeys.rawValue.getter();
        v12 = COERCE_DOUBLE(sub_1B4DD7F90(v9, v10, v11));
        v14 = v13;

        if ((v14 & 1) != 0 || v12 == a2)
        {
        }

        else
        {
          if (qword_1EDB724A8 != -1)
          {
            swift_once();
          }

          v15 = sub_1B4F67C54();
          __swift_project_value_buffer(v15, qword_1EDB72490);
          v16 = sub_1B4F67C34();
          v17 = sub_1B4F685E4();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v26 = v19;
            *v18 = 136315394;
            v20 = UserDefaultsKeys.rawValue.getter();
            v22 = sub_1B4DC4F88(v20, v21, &v26);

            *(v18 + 4) = v22;
            *(v18 + 12) = 2080;
            v23 = sub_1B4F67F94();
            v25 = sub_1B4DC4F88(v23, v24, &v26);

            *(v18 + 14) = v25;
            _os_log_impl(&dword_1B4DC2000, v16, v17, "Non default value set for %s: %s", v18, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1B8C831D0](v19, -1, -1);
            MEMORY[0x1B8C831D0](v18, -1, -1);
          }
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id NSURLSessionConfiguration.forBundleAttribution(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1B4F67F64();
  }

  else
  {
    v2 = 0;
  }

  [v4 set:v2 sourceApplicationBundleIdentifier:?];

  return v4;
}

id NSURLSession.forBundleAttribution(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v9 = v2;
  v4 = [v2 configuration];
  v5 = a2;
  v6 = v4;
  if (v5)
  {
    v7 = sub_1B4F67F64();
  }

  else
  {
    v7 = 0;
  }

  [v6 set:v7 sourceApplicationBundleIdentifier:?];

  return v9;
}

uint64_t ScoreSummary.scale(by:)()
{
  v0 = sub_1B4F65104();
  sub_1B4F650E4();
  v2 = v1;
  sub_1B4F66074();
  *&v3 = v3;
  v4 = v2 * *&v3;
  sub_1B4F650A4();
  v6 = v5;
  sub_1B4F66074();
  *&v7 = v7;
  v8 = v6 * *&v7;
  sub_1B4F650C4();
  v10 = v9;
  sub_1B4F66074();
  *&v11 = v11;
  v12 = v10 * *&v11;
  sub_1B4F650D4();
  v14 = v13;
  sub_1B4F66074();
  *&v15 = v15;
  v16 = v14 * *&v15;
  sub_1B4F650B4();
  v18 = v17;
  sub_1B4F66074();
  v20.n128_f32[0] = v20.n128_f64[0];
  v19.n128_f32[0] = v18 * v20.n128_f32[0];
  v20.n128_f32[0] = v4;
  v21.n128_f32[0] = v8;
  v22.n128_f32[0] = v12;
  v23.n128_f32[0] = v16;

  return MEMORY[0x1EEE34E18](v0, v20, v21, v22, v23, v19);
}

uint64_t SubscriptionToken.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = a2;
  *(v3 + 32) = v4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t SubscriptionToken.deinit()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DF7BEC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  sub_1B4DDC964(v0 + 16);

  return v0;
}

uint64_t sub_1B4DF7964(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = type metadata accessor for Subscription(0, a3, a4, a4);
  (*(*(v7 - 8) + 16))(v14, a2, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1B4DC8B60(0, v6[2] + 1, 1, v6);
    *a1 = v6;
  }

  v9 = v6[2];
  v10 = v6[3];
  if (v9 >= v10 >> 1)
  {
    v13 = v6[2];
    v6 = sub_1B4DC8B60((v10 > 1), v9 + 1, 1, v6);
    v9 = v13;
    *a1 = v6;
  }

  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v15 = *(a2 + 32);
  result = sub_1B4DC92A4(v9, v14, a1, v7, &protocol witness table for Subscription<A>);
  *a1 = v6;
  return result;
}

uint64_t sub_1B4DF7A90(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v5 = *a1 + 32;
    do
    {
      sub_1B4DC40A0(v5, v9);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(a2 + 24);
        ObjectType = swift_getObjectType();
        (*(v6 + 56))(v9, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1B4DF7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41F8, &qword_1B4F6CA20);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = a4;
  *(a2 + 32) = v6;
  swift_unknownObjectWeakAssign();
  return a2;
}

uint64_t ScoreMetric.applyingTimestampOffset(_:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v7[-v3];
  sub_1B4F64DD4();
  v5 = sub_1B4F65A94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7[28] = 1;
  v7[24] = 1;
  v7[20] = 1;
  v7[16] = 1;
  v7[12] = 1;
  sub_1B4F64DF4();
  return sub_1B4DF7DC8(v4);
}

uint64_t sub_1B4DF7DC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4DF7E30(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v7[-v3];
  sub_1B4F64DD4();
  v5 = sub_1B4F65A94();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v7[28] = 1;
  v7[24] = 1;
  v7[20] = 1;
  v7[16] = 1;
  v7[12] = 1;
  sub_1B4F64DF4();
  return sub_1B4DF7DC8(v4);
}

uint64_t getEnumTagSinglePayload for MediaPlayerPlaybackStarting(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlayerPlaybackStarting(uint64_t result, int a2, int a3)
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

uint64_t EnergyMetric.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F64F94();

  return sub_1B4F64FC4();
}

uint64_t sub_1B4DF8190(double a1)
{
  sub_1B4F64F94();

  return sub_1B4F64FC4();
}

uint64_t SessionTerminated.termination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F64E44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SessionTerminated.init(termination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F64E44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B4DF8330(unint64_t a1)
{
  v3 = *(v1 + 16) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DA60](a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 24) = v5;
  *v5 = v1;
  v5[1] = sub_1B4DF8418;
  a1 = v4;

  return MEMORY[0x1EEE6DA60](a1);
}

uint64_t sub_1B4DF8418()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *MetricClient.__allocating_init(queue:)(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v3 = a1;
  v4 = sub_1B4F67F64();
  v5 = [v2 initWithMachServiceName:v4 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v6 = sub_1B4DC42B8(v5, v3);

  v7 = *(v6 + 32);
  os_unfair_lock_lock(*(v7 + 16));
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 2;
    [*(v6 + 24) resume];
  }

  os_unfair_lock_unlock(*(v7 + 16));

  result = swift_allocObject();
  result[2] = v6;
  result[3] = &protocol witness table for XPCClient;
  result[4] = &protocol witness table for XPCClient;
  return result;
}

void *MetricClient.__allocating_init(connection:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_1B4DF9C08(a1, v3, ObjectType, a2, a3);
}

uint64_t MetricClient.recordMetricClickStream(_:)(uint64_t a1)
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703E8);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F7FC60;
  v5._object = 0x80000001B4F7FC90;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 152;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65EB4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CBAD0], MEMORY[0x1E69CBAD8], ObjectType, v6);
}

uint64_t MetricClient.recordMetricPerformanceStream(_:)(uint64_t a1)
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703E8);
  v4._object = 0x80000001B4F7FC60;
  v5._countAndFlagsBits = 0xD000000000000021;
  v5._object = 0x80000001B4F7FCB0;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 159;
  v8 = *(v6 + 16);
  v9 = sub_1B4F668A4();
  return v8(&v11, a1, v9, MEMORY[0x1E69CC728], MEMORY[0x1E69CC730], ObjectType, v6);
}

uint64_t MetricClient.recordMetricPlayStream(_:)(uint64_t a1)
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703E8);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F7FC60;
  v5._object = 0x80000001B4F7FCE0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v11 = 153;
  v8 = *(v6 + 16);
  v9 = sub_1B4F65D84();
  return v8(&v11, a1, v9, MEMORY[0x1E69CB790], MEMORY[0x1E69CB798], ObjectType, v6);
}

uint64_t MetricClient.flushMetrics()()
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703E8);
  v2._countAndFlagsBits = 0x74654D6873756C66;
  v2._object = 0xEE00292873636972;
  v3._object = 0x80000001B4F7FC60;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v2);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 154;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t MetricClient.queryUserIdentifier(for:)(char a1)
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703E8);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F7FC60;
  v5._object = 0x80000001B4F7FD00;
  v5._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 155;
  v9 = a1;
  return (*(v6 + 32))(&v10, &v9, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v6);
}

uint64_t MetricClient.queryClientIdentifier(for:)(char a1)
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB703E8);
  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001B4F7FC60;
  v5._object = 0x80000001B4F7FD20;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 156;
  v9 = a1;
  return (*(v6 + 32))(&v10, &v9, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v6);
}

uint64_t MetricClient.updateMetricIdentifiers()()
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703E8);
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001B4F7FC60;
  v3._object = 0x80000001B4F7FD40;
  v3._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 157;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t MetricClient.resetMetricIdentifiers()()
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703E8);
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001B4F7FC60;
  v3._object = 0x80000001B4F7FD60;
  v3._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 158;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t MetricClient.queryLastBackgroundAccountEvent()()
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703E8);
  v2._object = 0x80000001B4F7FC60;
  v3._countAndFlagsBits = 0xD000000000000021;
  v3._object = 0x80000001B4F7FD80;
  v2._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v9 = 162;
  v6 = *(v4 + 24);
  v7 = sub_1B4F67104();
  return v6(&v9, v7, MEMORY[0x1E69CCE10], MEMORY[0x1E69CCE18], ObjectType, v4);
}

uint64_t MetricClient.recordBackgroundAccountEvent()()
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703E8);
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001B4F7FC60;
  v3._object = 0x80000001B4F7FDB0;
  v3._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 160;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t MetricClient.resetBackgroundAccountEvent()()
{
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB703E8);
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001B4F7FC60;
  v3._object = 0x80000001B4F7FDD0;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v7 = 161;
  return (*(v4 + 8))(&v7, ObjectType, v4);
}

uint64_t sub_1B4DF92E8(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FC90;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 152;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65EB4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CBAD0], MEMORY[0x1E69CBAD8], ObjectType, v7);
}

uint64_t sub_1B4DF940C(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._object = 0x80000001B4F7FC60;
  v6._countAndFlagsBits = 0xD000000000000021;
  v6._object = 0x80000001B4F7FCB0;
  v5._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 159;
  v9 = *(v7 + 16);
  v10 = sub_1B4F668A4();
  return v9(&v12, a1, v10, MEMORY[0x1E69CC728], MEMORY[0x1E69CC730], ObjectType, v7);
}

uint64_t sub_1B4DF9530(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB703E8);
  v5._countAndFlagsBits = 0xD000000000000020;
  v5._object = 0x80000001B4F7FC60;
  v6._object = 0x80000001B4F7FCE0;
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = 153;
  v9 = *(v7 + 16);
  v10 = sub_1B4F65D84();
  return v9(&v12, a1, v10, MEMORY[0x1E69CB790], MEMORY[0x1E69CB798], ObjectType, v7);
}

uint64_t sub_1B4DF9654()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0x74654D6873756C66;
  v3._object = 0xEE00292873636972;
  v4._object = 0x80000001B4F7FC60;
  v4._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v4, v3);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 154;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4DF9744()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FD40;
  v4._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 157;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4DF9830()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FD60;
  v4._countAndFlagsBits = 0xD000000000000018;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 158;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4DF991C()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._object = 0x80000001B4F7FC60;
  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001B4F7FD80;
  v3._countAndFlagsBits = 0xD000000000000020;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 162;
  v7 = *(v5 + 24);
  v8 = sub_1B4F67104();
  return v7(&v10, v8, MEMORY[0x1E69CCE10], MEMORY[0x1E69CCE18], ObjectType, v5);
}

uint64_t sub_1B4DF9A30()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FDB0;
  v4._countAndFlagsBits = 0xD00000000000001ELL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 160;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

uint64_t sub_1B4DF9B1C()
{
  v1 = *v0;
  if (qword_1EDB703E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB703E8);
  v3._countAndFlagsBits = 0xD000000000000020;
  v3._object = 0x80000001B4F7FC60;
  v4._object = 0x80000001B4F7FDD0;
  v4._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v8 = 161;
  return (*(v5 + 8))(&v8, ObjectType, v5);
}

void *sub_1B4DF9C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a4;
  result[4] = a5;
  return result;
}

void *RemoteBrowsingClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E20AB8(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4DF9DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v10 = a3(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v17 = a4(0);
    (*(*(v17 - 8) + 16))(v13, a1, v17);
    (*(v15 + 8))(v13, v10, a5, ObjectType, v15);
    swift_unknownObjectRelease();
    return sub_1B4E21CBC(v13, a6);
  }

  return result;
}

uint64_t sub_1B4DF9F5C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, &type metadata for RemoteBrowsingGuestVerificationCompleted, &protocol witness table for RemoteBrowsingGuestVerificationCompleted, ObjectType, v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RemoteBrowsingClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t RemoteBrowsingClient.insertConnectionRecord(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v111 = sub_1B4F64964();
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v87 - v8;
  v9 = sub_1B4F67BD4();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v87 - v25;
  v93 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = sub_1B4F67274();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 179;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CCF68], MEMORY[0x1E69CCF70], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertConnectionRecord";
  *(v41 + 24) = 44;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertConnectionRecord", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v106 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v107 = v30;
  v46 = v96;
  v94 = v31;
  v47 = *(v96 + 16);
  v48 = v95;
  v49 = v97;
  v47(v95, v37, v97);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::insertConnectionRecord";
  *(v51 + 8) = 44;
  *(v51 + 16) = 2;
  v52 = v91;
  v53 = v92;
  (*(v91 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v14, v92);
  v54 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v14, v53);
  *(v55 + 16) = 0;
  v90 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v55;
  v56 = v106;
  v114 = v106;
  v57 = sub_1B4F67F94();
  v97 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v54;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertConnectionRecord";
  *(v60 + 56) = 44;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v61 = v110;
  v62 = (v110 + 16);
  v63 = *(v110 + 16);
  v64 = v108;
  v65 = v102;
  v63(v108, v107, v102);
  v92 = v63;
  v95 = v62;
  v88 = *(v61 + 80);
  v66 = (v88 + 16) & ~v88;
  v67 = v66 + v93;
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v91 = v66;
  v69(v68 + v66, v64, v65);
  v93 = v61 + 32;
  v89 = v69;
  v70 = v98;
  v63(v98, v112, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E20DC8;
  v73[1] = v68;
  sub_1B4F675F4();
  v74 = v105;
  v75 = v103;
  v76 = v111;
  (*(v105 + 16))(v103, v113, v111);
  v77 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v96;
  *(v79 + 16) = v97;
  *(v79 + 24) = v80;
  *(v79 + 32) = "RemoteBrowsingClient::insertConnectionRecord";
  *(v79 + 40) = 44;
  *(v79 + 48) = 2;
  (*(v74 + 32))(v79 + v77, v75, v76);
  *(v79 + v78) = v90;
  *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v82 = v108;
  v81 = v109;
  (v92)(v108, v109, v65);
  v83 = swift_allocObject();
  v89(v83 + v91, v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E20DDC;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v94);
}

uint64_t RemoteBrowsingClient.queryConnectionRecord()@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v101 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v2);
  v94 = v3;
  v95 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v108 = v83 - v6;
  v107 = sub_1B4F64964();
  v99 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v7);
  v98 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v110 = v83 - v11;
  v92 = sub_1B4F67BD4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1B4F67BA4();
  v14 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88, v15);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4208, &qword_1B4F6CC28);
  v97 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v18);
  v105 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v93 = v83 - v22;
  v89 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = v83 - v26;
  if (qword_1EDB6DE48 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for ActivityTracer(0);
  v29 = __swift_project_value_buffer(v28, qword_1EDB6DE50);
  v30 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v112[0] = 193;
  v32 = *(v30 + 24);
  v104 = sub_1B4F67274();
  v103 = v27;
  v32(v112, v104, MEMORY[0x1E69CCF68], MEMORY[0x1E69CCF70], ObjectType, v30);
  type metadata accessor for ActivityTrace();
  v33 = swift_allocObject();
  *(v33 + 16) = "RemoteBrowsingClient::queryConnectionRecord";
  *(v33 + 24) = 43;
  *(v33 + 32) = 2;
  v34 = v33;
  v35 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v36 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::queryConnectionRecord", v35, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v37 = swift_allocObject();
  *(v37 + 44) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = 0;
  *(v37 + 16) = v36;
  *(v37 + 40) = 0;
  *(v34 + 40) = v37;
  v102 = v34;

  sub_1B4F67BC4();
  v38 = v17;
  sub_1B4F67B84();
  v39 = v91;
  v40 = *(v91 + 16);
  v41 = v90;
  v42 = v92;
  v40(v90, v29, v92);
  type metadata accessor for Signpost(0);
  v43 = swift_allocObject();
  v44 = v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v44 = "RemoteBrowsingClient::queryConnectionRecord";
  *(v44 + 8) = 43;
  *(v44 + 16) = 2;
  v45 = v17;
  v46 = v88;
  (*(v14 + 16))(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v45, v88);
  *(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v40((v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v41, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v47 = swift_allocObject();
  *(v47 + 24) = 0;
  (*(v39 + 8))(v41, v42);
  (*(v14 + 8))(v38, v46);
  *(v47 + 16) = 0;
  v84 = v43;
  *(v43 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v47;
  v48 = v102;
  v111 = v102;
  v49 = sub_1B4F67F94();
  v92 = v49;
  v51 = v50;
  sub_1B4F64944();
  v52 = swift_allocObject();
  *(v52 + 16) = v48;
  *(v52 + 24) = v43;
  *(v52 + 32) = v49;
  *(v52 + 40) = v51;
  v91 = v51;
  *(v52 + 48) = "RemoteBrowsingClient::queryConnectionRecord";
  *(v52 + 56) = 43;
  *(v52 + 64) = 2;

  v53 = v108;
  sub_1B4F675F4();
  v54 = v97;
  v55 = *(v97 + 16);
  v88 = v97 + 16;
  v90 = v55;
  v57 = v105;
  v56 = v106;
  (v55)(v105, v103, v106);
  v87 = *(v54 + 80);
  v85 = &v89[(v87 + 16) & ~v87];
  v58 = (v87 + 16) & ~v87;
  v86 = v58;
  v59 = swift_allocObject();
  v60 = *(v54 + 32);
  v83[1] = v54 + 32;
  v89 = v60;
  (v60)(v59 + v58, v57, v56);
  v61 = v101;
  v62 = v95;
  v63 = v109;
  (*(v101 + 16))(v95, v53, v109);
  v64 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v65 = (v94 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  (*(v61 + 32))(v66 + v64, v62, v63);
  v67 = (v66 + v65);
  *v67 = sub_1B4E20E24;
  v67[1] = v59;
  v68 = v93;
  sub_1B4F675F4();
  v70 = v98;
  v69 = v99;
  v71 = v107;
  (*(v99 + 16))(v98, v110, v107);
  v72 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v73 = (v96 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v75 = v91;
  *(v74 + 16) = v92;
  *(v74 + 24) = v75;
  *(v74 + 32) = "RemoteBrowsingClient::queryConnectionRecord";
  *(v74 + 40) = 43;
  *(v74 + 48) = 2;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v84;
  *(v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8)) = v102;
  v77 = v105;
  v76 = v106;
  (v90)(v105, v68, v106);
  v78 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  (v89)(v79 + v86, v77, v76);
  v80 = (v79 + v78);
  *v80 = sub_1B4E20E68;
  v80[1] = v74;

  sub_1B4F675F4();
  v81 = *(v54 + 8);
  v81(v68, v76);
  (*(v61 + 8))(v108, v109);
  (*(v69 + 8))(v110, v107);
  v81(v103, v76);
}

uint64_t RemoteBrowsingClient.requestEnvironment(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4210, &unk_1B4F6CC30);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F65F84();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EB8F5550);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 181;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F66DD4();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CCB00], MEMORY[0x1E69CCB08], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteBrowsingClient::requestEnvironment";
  *(v38 + 24) = 40;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestEnvironment", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "RemoteBrowsingClient::requestEnvironment";
  *(v48 + 8) = 40;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "RemoteBrowsingClient::requestEnvironment";
  *(v56 + 56) = 40;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4E20EB0;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "RemoteBrowsingClient::requestEnvironment";
  *(v78 + 40) = 40;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E20EF4;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteBrowsingClient.requestEnvironmentWithConfirmation(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4210, &unk_1B4F6CC30);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F65F84();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EB8F5550);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 180;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F66DD4();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CCB00], MEMORY[0x1E69CCB08], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v38 + 24) = 56;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestEnvironmentWithConfirmation", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v48 + 8) = 56;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v56 + 56) = 56;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4E21D48;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "RemoteBrowsingClient::requestEnvironmentWithConfirmation";
  *(v78 + 40) = 56;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E21D20;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteBrowsingClient.cancelRemoteBrowsingEnvironmentRequest(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v111 = sub_1B4F64964();
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v87 - v8;
  v9 = sub_1B4F67BD4();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v87 - v25;
  v93 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = sub_1B4F65F84();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 198;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v41 + 24) = 60;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v106 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v107 = v30;
  v46 = v96;
  v94 = v31;
  v47 = *(v96 + 16);
  v48 = v95;
  v49 = v97;
  v47(v95, v37, v97);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v51 + 8) = 60;
  *(v51 + 16) = 2;
  v52 = v91;
  v53 = v92;
  (*(v91 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v14, v92);
  v54 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v14, v53);
  *(v55 + 16) = 0;
  v90 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v55;
  v56 = v106;
  v114 = v106;
  v57 = sub_1B4F67F94();
  v97 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v54;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v60 + 56) = 60;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v61 = v110;
  v62 = (v110 + 16);
  v63 = *(v110 + 16);
  v64 = v108;
  v65 = v102;
  v63(v108, v107, v102);
  v92 = v63;
  v95 = v62;
  v88 = *(v61 + 80);
  v66 = (v88 + 16) & ~v88;
  v67 = v66 + v93;
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v91 = v66;
  v69(v68 + v66, v64, v65);
  v93 = v61 + 32;
  v89 = v69;
  v70 = v98;
  v63(v98, v112, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  sub_1B4F675F4();
  v74 = v105;
  v75 = v103;
  v76 = v111;
  (*(v105 + 16))(v103, v113, v111);
  v77 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v96;
  *(v79 + 16) = v97;
  *(v79 + 24) = v80;
  *(v79 + 32) = "RemoteBrowsingClient::cancelRemoteBrowsingEnvironmentRequest";
  *(v79 + 40) = 60;
  *(v79 + 48) = 2;
  (*(v74 + 32))(v79 + v77, v75, v76);
  *(v79 + v78) = v90;
  *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v82 = v108;
  v81 = v109;
  (v92)(v108, v109, v65);
  v83 = swift_allocObject();
  v89(v83 + v91, v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v94);
}

uint64_t RemoteBrowsingClient.requestServiceSubscription(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F65F84();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EB8F5550);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 183;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F66354();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CBFC8], MEMORY[0x1E69CBFD0], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteBrowsingClient::requestServiceSubscription";
  *(v38 + 24) = 48;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestServiceSubscription", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "RemoteBrowsingClient::requestServiceSubscription";
  *(v48 + 8) = 48;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "RemoteBrowsingClient::requestServiceSubscription";
  *(v56 + 56) = 48;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4E20F3C;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "RemoteBrowsingClient::requestServiceSubscription";
  *(v78 + 40) = 48;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E20F80;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteBrowsingClient.requestGuestAuthentication(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v111 = sub_1B4F64964();
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v87 - v8;
  v9 = sub_1B4F67BD4();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v94 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v87 - v25;
  v93 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = sub_1B4F65F84();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 186;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v41 + 24) = 48;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestGuestAuthentication", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v106 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v107 = v30;
  v47 = v96;
  v46 = v97;
  v95 = v31;
  v48 = *(v96 + 16);
  v49 = v94;
  v48(v94, v37, v97);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v51 + 8) = 48;
  *(v51 + 16) = 2;
  v52 = v91;
  v53 = v92;
  (*(v91 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v14, v92);
  v54 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  (*(v47 + 8))(v49, v46);
  (*(v52 + 8))(v14, v53);
  *(v55 + 16) = 0;
  v90 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v55;
  v56 = v106;
  v114 = v106;
  v57 = sub_1B4F67F94();
  v97 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v54;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v60 + 56) = 48;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v61 = v110;
  v62 = (v110 + 16);
  v63 = *(v110 + 16);
  v64 = v108;
  v65 = v102;
  v63(v108, v107, v102);
  v92 = v63;
  v94 = v62;
  v88 = *(v61 + 80);
  v66 = (v88 + 16) & ~v88;
  v67 = v66 + v93;
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v91 = v66;
  v69(v68 + v66, v64, v65);
  v93 = v61 + 32;
  v89 = v69;
  v70 = v98;
  v63(v98, v112, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  sub_1B4F675F4();
  v74 = v105;
  v75 = v103;
  v76 = v111;
  (*(v105 + 16))(v103, v113, v111);
  v77 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v96;
  *(v79 + 16) = v97;
  *(v79 + 24) = v80;
  *(v79 + 32) = "RemoteBrowsingClient::requestGuestAuthentication";
  *(v79 + 40) = 48;
  *(v79 + 48) = 2;
  (*(v74 + 32))(v79 + v77, v75, v76);
  *(v79 + v78) = v90;
  *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v82 = v108;
  v81 = v109;
  (v92)(v108, v109, v65);
  v83 = swift_allocObject();
  v89(v83 + v91, v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v95);
}

uint64_t RemoteBrowsingClient.allowPendingConfirmationRequest()@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = sub_1B4F64964();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v95 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v105 = &v83 - v7;
  v91 = sub_1B4F67BD4();
  v8 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67BA4();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v103 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v16);
  v92 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v101 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v102 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v104 = &v83 - v26;
  v88 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v83 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer(0);
  v33 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  v34 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v107[0] = 184;
  (*(v34 + 8))(v107, ObjectType, v34);
  type metadata accessor for ActivityTrace();
  v36 = swift_allocObject();
  *(v36 + 16) = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v36 + 24) = 53;
  *(v36 + 32) = 2;
  v37 = v36;
  v38 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v39 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::allowPendingConfirmationRequest", v38, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v40 = swift_allocObject();
  *(v40 + 44) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = 0;
  *(v37 + 40) = v40;
  v99 = v37;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v100 = v31;
  v41 = v8;
  v42 = *(v8 + 16);
  v43 = v33;
  v44 = v91;
  v42(v11, v43, v91);
  type metadata accessor for Signpost(0);
  v45 = swift_allocObject();
  v46 = v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v46 = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v46 + 8) = 53;
  *(v46 + 16) = 2;
  v48 = v89;
  v47 = v90;
  (*(v89 + 16))(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v15, v90);
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v42((v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v11, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  (*(v41 + 8))(v11, v44);
  (*(v48 + 8))(v15, v47);
  *(v49 + 16) = 0;
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v49;
  v50 = v99;
  v106 = v99;
  v51 = sub_1B4F67F94();
  v91 = v51;
  v53 = v52;
  sub_1B4F64944();
  v54 = swift_allocObject();
  *(v54 + 16) = v50;
  *(v54 + 24) = v45;
  v87 = v45;
  *(v54 + 32) = v51;
  *(v54 + 40) = v53;
  v90 = v53;
  *(v54 + 48) = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v54 + 56) = 53;
  *(v54 + 64) = 2;

  sub_1B4F675F4();
  v55 = v103;
  v56 = v103 + 16;
  v57 = *(v103 + 16);
  v58 = v101;
  v59 = v94;
  v57(v101, v100, v94);
  v86 = v57;
  v89 = v56;
  v83 = *(v55 + 80);
  v60 = (v83 + 16) & ~v83;
  v61 = v60 + v88;
  v62 = swift_allocObject();
  v63 = *(v55 + 32);
  v85 = v60;
  v63(v62 + v60, v58, v59);
  v88 = v55 + 32;
  v84 = v63;
  v64 = v92;
  v57(v92, v104, v59);
  v65 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v63(v66 + v60, v64, v59);
  v67 = (v66 + v65);
  *v67 = sub_1B4E21D54;
  v67[1] = v62;
  sub_1B4F675F4();
  v69 = v97;
  v68 = v98;
  v70 = v95;
  (*(v97 + 16))(v95, v105, v98);
  v71 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v72 = (v93 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v90;
  *(v73 + 16) = v91;
  *(v73 + 24) = v74;
  *(v73 + 32) = "RemoteBrowsingClient::allowPendingConfirmationRequest";
  *(v73 + 40) = 53;
  *(v73 + 48) = 2;
  v75 = v73 + v71;
  v76 = v68;
  (*(v69 + 32))(v75, v70, v68);
  *(v73 + v72) = v87;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;
  v77 = v101;
  v78 = v102;
  v86(v101, v102, v59);
  v79 = swift_allocObject();
  v84(v79 + v85, v77, v59);
  v80 = (v79 + v65);
  *v80 = sub_1B4E21D24;
  v80[1] = v73;

  sub_1B4F675F4();
  v81 = *(v103 + 8);
  v81(v78, v59);
  v81(v104, v59);
  (*(v69 + 8))(v105, v76);
  v81(v100, v59);
}

uint64_t RemoteBrowsingClient.denyPendingConfirmationRequest()@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = sub_1B4F64964();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v95 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v105 = &v83 - v7;
  v91 = sub_1B4F67BD4();
  v8 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67BA4();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v103 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v16);
  v92 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v101 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v102 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v104 = &v83 - v26;
  v88 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v83 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer(0);
  v33 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  v34 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v107[0] = 185;
  (*(v34 + 8))(v107, ObjectType, v34);
  type metadata accessor for ActivityTrace();
  v36 = swift_allocObject();
  *(v36 + 16) = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v36 + 24) = 52;
  *(v36 + 32) = 2;
  v37 = v36;
  v38 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v39 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::denyPendingConfirmationRequest", v38, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v40 = swift_allocObject();
  *(v40 + 44) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = 0;
  *(v37 + 40) = v40;
  v99 = v37;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v100 = v31;
  v41 = v8;
  v42 = *(v8 + 16);
  v43 = v33;
  v44 = v91;
  v42(v11, v43, v91);
  type metadata accessor for Signpost(0);
  v45 = swift_allocObject();
  v46 = v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v46 = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v46 + 8) = 52;
  *(v46 + 16) = 2;
  v48 = v89;
  v47 = v90;
  (*(v89 + 16))(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v15, v90);
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v42((v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v11, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  (*(v41 + 8))(v11, v44);
  (*(v48 + 8))(v15, v47);
  *(v49 + 16) = 0;
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v49;
  v50 = v99;
  v106 = v99;
  v51 = sub_1B4F67F94();
  v91 = v51;
  v53 = v52;
  sub_1B4F64944();
  v54 = swift_allocObject();
  *(v54 + 16) = v50;
  *(v54 + 24) = v45;
  v87 = v45;
  *(v54 + 32) = v51;
  *(v54 + 40) = v53;
  v90 = v53;
  *(v54 + 48) = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v54 + 56) = 52;
  *(v54 + 64) = 2;

  sub_1B4F675F4();
  v55 = v103;
  v56 = v103 + 16;
  v57 = *(v103 + 16);
  v58 = v101;
  v59 = v94;
  v57(v101, v100, v94);
  v86 = v57;
  v89 = v56;
  v83 = *(v55 + 80);
  v60 = (v83 + 16) & ~v83;
  v61 = v60 + v88;
  v62 = swift_allocObject();
  v63 = *(v55 + 32);
  v85 = v60;
  v63(v62 + v60, v58, v59);
  v88 = v55 + 32;
  v84 = v63;
  v64 = v92;
  v57(v92, v104, v59);
  v65 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v63(v66 + v60, v64, v59);
  v67 = (v66 + v65);
  *v67 = sub_1B4E21D54;
  v67[1] = v62;
  sub_1B4F675F4();
  v69 = v97;
  v68 = v98;
  v70 = v95;
  (*(v97 + 16))(v95, v105, v98);
  v71 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v72 = (v93 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v90;
  *(v73 + 16) = v91;
  *(v73 + 24) = v74;
  *(v73 + 32) = "RemoteBrowsingClient::denyPendingConfirmationRequest";
  *(v73 + 40) = 52;
  *(v73 + 48) = 2;
  v75 = v73 + v71;
  v76 = v68;
  (*(v69 + 32))(v75, v70, v68);
  *(v73 + v72) = v87;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;
  v77 = v101;
  v78 = v102;
  v86(v101, v102, v59);
  v79 = swift_allocObject();
  v84(v79 + v85, v77, v59);
  v80 = (v79 + v65);
  *v80 = sub_1B4E21D24;
  v80[1] = v73;

  sub_1B4F675F4();
  v81 = *(v103 + 8);
  v81(v78, v59);
  v81(v104, v59);
  (*(v69 + 8))(v105, v76);
  v81(v100, v59);
}

uint64_t RemoteBrowsingClient.tryPassword(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v6 = sub_1B4F64964();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v99 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v109 = &v86 - v11;
  v12 = sub_1B4F67BD4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B4F67BA4();
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v107 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v21);
  v96 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v105 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v106 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v108 = &v86 - v31;
  v93 = v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v86 - v35;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for ActivityTracer(0);
  v38 = __swift_project_value_buffer(v37, qword_1EB8F5550);
  v39 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v111[0] = 229;
  v110[0] = a1;
  v110[1] = a2;
  (*(v39 + 16))(v111, v110, MEMORY[0x1E69E6158], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::tryPassword";
  *(v41 + 24) = 33;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::tryPassword", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v103 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v104 = v36;
  v46 = v13;
  v47 = *(v13 + 16);
  v47(v16, v38, v12);
  type metadata accessor for Signpost(0);
  v48 = swift_allocObject();
  v49 = v48 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v49 = "RemoteBrowsingClient::tryPassword";
  *(v49 + 8) = 33;
  *(v49 + 16) = 2;
  v50 = v94;
  v51 = v95;
  (*(v94 + 16))(v48 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v20, v95);
  *(v48 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v48 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v16, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v52 = swift_allocObject();
  *(v52 + 24) = 0;
  (*(v46 + 8))(v16, v12);
  (*(v50 + 8))(v20, v51);
  *(v52 + 16) = 0;
  *(v48 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v52;
  v53 = v103;
  v110[0] = v103;
  v54 = sub_1B4F67F94();
  v95 = v54;
  v56 = v55;
  sub_1B4F64944();
  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  *(v57 + 24) = v48;
  v92 = v48;
  *(v57 + 32) = v54;
  *(v57 + 40) = v56;
  v94 = v56;
  *(v57 + 48) = "RemoteBrowsingClient::tryPassword";
  *(v57 + 56) = 33;
  *(v57 + 64) = 2;

  sub_1B4F675F4();
  v58 = v107;
  v59 = v107 + 16;
  v60 = *(v107 + 16);
  v61 = v105;
  v62 = v98;
  v60(v105, v104, v98);
  v90 = v60;
  v91 = v59;
  v87 = *(v58 + 80);
  v63 = (v87 + 16) & ~v87;
  v64 = v63 + v93;
  v65 = swift_allocObject();
  v66 = *(v58 + 32);
  v89 = v63;
  v66(v65 + v63, v61, v62);
  v93 = v58 + 32;
  v88 = v66;
  v67 = v96;
  v60(v96, v108, v62);
  v68 = (v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v66(v69 + v63, v67, v62);
  v70 = (v69 + v68);
  *v70 = sub_1B4E21D54;
  v70[1] = v65;
  sub_1B4F675F4();
  v72 = v101;
  v71 = v102;
  v73 = v99;
  (*(v101 + 16))(v99, v109, v102);
  v74 = (*(v72 + 80) + 49) & ~*(v72 + 80);
  v75 = (v97 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v94;
  *(v76 + 16) = v95;
  *(v76 + 24) = v77;
  *(v76 + 32) = "RemoteBrowsingClient::tryPassword";
  *(v76 + 40) = 33;
  *(v76 + 48) = 2;
  v78 = v76 + v74;
  v79 = v71;
  (*(v72 + 32))(v78, v73, v71);
  *(v76 + v75) = v92;
  *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v103;
  v80 = v105;
  v81 = v106;
  v90(v105, v106, v62);
  v82 = swift_allocObject();
  v88(v82 + v89, v80, v62);
  v83 = (v82 + v68);
  *v83 = sub_1B4E21D24;
  v83[1] = v76;

  sub_1B4F675F4();
  v84 = *(v107 + 8);
  v84(v81, v62);
  v84(v108, v62);
  (*(v72 + 8))(v109, v79);
  v84(v104, v62);
}

uint64_t RemoteBrowsingClient.cancelPendingGuestPairingVerification()@<X0>(uint64_t a1@<X8>)
{
  v96 = a1;
  v2 = sub_1B4F64964();
  v97 = *(v2 - 8);
  v98 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v95 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v105 = &v83 - v7;
  v91 = sub_1B4F67BD4();
  v8 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4F67BA4();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v103 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v16);
  v92 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v101 = &v83 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v102 = &v83 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v104 = &v83 - v26;
  v88 = v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v83 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer(0);
  v33 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  v34 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v107[0] = 221;
  (*(v34 + 8))(v107, ObjectType, v34);
  type metadata accessor for ActivityTrace();
  v36 = swift_allocObject();
  *(v36 + 16) = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v36 + 24) = 59;
  *(v36 + 32) = 2;
  v37 = v36;
  v38 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v39 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::cancelPendingGuestPairingVerification", v38, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v40 = swift_allocObject();
  *(v40 + 44) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = 0;
  *(v40 + 16) = v39;
  *(v40 + 40) = 0;
  *(v37 + 40) = v40;
  v99 = v37;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v100 = v31;
  v41 = v8;
  v42 = *(v8 + 16);
  v43 = v33;
  v44 = v91;
  v42(v11, v43, v91);
  type metadata accessor for Signpost(0);
  v45 = swift_allocObject();
  v46 = v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v46 = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v46 + 8) = 59;
  *(v46 + 16) = 2;
  v48 = v89;
  v47 = v90;
  (*(v89 + 16))(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v15, v90);
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v42((v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v11, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  (*(v41 + 8))(v11, v44);
  (*(v48 + 8))(v15, v47);
  *(v49 + 16) = 0;
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v49;
  v50 = v99;
  v106 = v99;
  v51 = sub_1B4F67F94();
  v91 = v51;
  v53 = v52;
  sub_1B4F64944();
  v54 = swift_allocObject();
  *(v54 + 16) = v50;
  *(v54 + 24) = v45;
  v87 = v45;
  *(v54 + 32) = v51;
  *(v54 + 40) = v53;
  v90 = v53;
  *(v54 + 48) = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v54 + 56) = 59;
  *(v54 + 64) = 2;

  sub_1B4F675F4();
  v55 = v103;
  v56 = v103 + 16;
  v57 = *(v103 + 16);
  v58 = v101;
  v59 = v94;
  v57(v101, v100, v94);
  v86 = v57;
  v89 = v56;
  v83 = *(v55 + 80);
  v60 = (v83 + 16) & ~v83;
  v61 = v60 + v88;
  v62 = swift_allocObject();
  v63 = *(v55 + 32);
  v85 = v60;
  v63(v62 + v60, v58, v59);
  v88 = v55 + 32;
  v84 = v63;
  v64 = v92;
  v57(v92, v104, v59);
  v65 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  v63(v66 + v60, v64, v59);
  v67 = (v66 + v65);
  *v67 = sub_1B4E21D54;
  v67[1] = v62;
  sub_1B4F675F4();
  v69 = v97;
  v68 = v98;
  v70 = v95;
  (*(v97 + 16))(v95, v105, v98);
  v71 = (*(v69 + 80) + 49) & ~*(v69 + 80);
  v72 = (v93 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v74 = v90;
  *(v73 + 16) = v91;
  *(v73 + 24) = v74;
  *(v73 + 32) = "RemoteBrowsingClient::cancelPendingGuestPairingVerification";
  *(v73 + 40) = 59;
  *(v73 + 48) = 2;
  v75 = v73 + v71;
  v76 = v68;
  (*(v69 + 32))(v75, v70, v68);
  *(v73 + v72) = v87;
  *(v73 + ((v72 + 15) & 0xFFFFFFFFFFFFFFF8)) = v99;
  v77 = v101;
  v78 = v102;
  v86(v101, v102, v59);
  v79 = swift_allocObject();
  v84(v79 + v85, v77, v59);
  v80 = (v79 + v65);
  *v80 = sub_1B4E21D24;
  v80[1] = v73;

  sub_1B4F675F4();
  v81 = *(v103 + 8);
  v81(v78, v59);
  v81(v104, v59);
  (*(v69 + 8))(v105, v76);
  v81(v100, v59);
}

uint64_t RemoteBrowsingClient.updateAudioFocusSelection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4220, &qword_1B4F6CC40);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 214;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4228, &qword_1EB8F4220, &qword_1B4F6CC40, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4230, &qword_1EB8F4220, &qword_1B4F6CC40, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v41 + 24) = 47;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateAudioFocusSelection", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v53 + 8) = 47;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v60 + 56) = 47;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateAudioFocusSelection";
  *(v80 + 40) = 47;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateAudioLanguageEngagementSheetAcknowledgment(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4238, &qword_1B4F6CC48);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 223;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4240, &qword_1EB8F4238, &qword_1B4F6CC48, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4248, &qword_1EB8F4238, &qword_1B4F6CC48, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v41 + 24) = 70;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v53 + 8) = 70;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v60 + 56) = 70;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateAudioLanguageEngagementSheetAcknowledgment";
  *(v80 + 40) = 70;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateAudioLanguagePreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4250, &qword_1B4F6CC50);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 222;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4258, &qword_1EB8F4250, &qword_1B4F6CC50, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4260, &qword_1EB8F4250, &qword_1B4F6CC50, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v41 + 24) = 51;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateAudioLanguagePreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v53 + 8) = 51;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v60 + 56) = 51;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateAudioLanguagePreference";
  *(v80 + 40) = 51;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateBurnBarDisplayPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4268, &qword_1B4F6CC58);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 188;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4270, &qword_1EB8F4268, &qword_1B4F6CC58, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4278, &qword_1EB8F4268, &qword_1B4F6CC58, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v41 + 24) = 52;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateBurnBarDisplayPreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v53 + 8) = 52;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v60 + 56) = 52;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateBurnBarDisplayPreference";
  *(v80 + 40) = 52;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateMetricsDisplayPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4280, &qword_1B4F6CC60);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 189;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4288, &qword_1EB8F4280, &qword_1B4F6CC60, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4290, &qword_1EB8F4280, &qword_1B4F6CC60, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v41 + 24) = 52;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateMetricsDisplayPreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v53 + 8) = 52;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v60 + 56) = 52;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateMetricsDisplayPreference";
  *(v80 + 40) = 52;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateProgressDisplayPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4298, &qword_1B4F6CC68);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 192;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F42A0, &qword_1EB8F4298, &qword_1B4F6CC68, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F42A8, &qword_1EB8F4298, &qword_1B4F6CC68, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v41 + 24) = 53;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateProgressDisplayPreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v53 + 8) = 53;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v60 + 56) = 53;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateProgressDisplayPreference";
  *(v80 + 40) = 53;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateNoticePrivacyPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42B0, &qword_1B4F6CC70);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 190;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F42B8, &qword_1EB8F42B0, &qword_1B4F6CC70, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F42C0, &qword_1EB8F42B0, &qword_1B4F6CC70, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v41 + 24) = 51;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateNoticePrivacyPreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v53 + 8) = 51;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v60 + 56) = 51;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateNoticePrivacyPreference";
  *(v80 + 40) = 51;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateOptInPrivacyPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42C8, &qword_1B4F6CC78);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 191;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F42D0, &qword_1EB8F42C8, &qword_1B4F6CC78, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F42D8, &qword_1EB8F42C8, &qword_1B4F6CC78, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v41 + 24) = 50;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateOptInPrivacyPreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v53 + 8) = 50;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v60 + 56) = 50;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateOptInPrivacyPreference";
  *(v80 + 40) = 50;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.queryAllPrivacyAcknowledgements()@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v103 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v2);
  v96 = v3;
  v97 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v110 = v85 - v6;
  v109 = sub_1B4F64964();
  v101 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v7);
  v100 = v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v112 = v85 - v11;
  v94 = sub_1B4F67BD4();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v12);
  v92 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1B4F67BA4();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v14);
  v16 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v99 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108, v17);
  v107 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v95 = v85 - v21;
  v90 = v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = v85 - v25;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for ActivityTracer(0);
  v28 = __swift_project_value_buffer(v27, qword_1EB8F5550);
  v29 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v114[0] = 273;
  v31 = *(v29 + 24);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E8, &unk_1B4F70E80);
  v106 = v32;
  v33 = sub_1B4E21010();
  v34 = sub_1B4E21094();
  v105 = v26;
  v31(v114, v32, v33, v34, ObjectType, v29);
  type metadata accessor for ActivityTrace();
  v35 = swift_allocObject();
  *(v35 + 16) = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v35 + 24) = 53;
  *(v35 + 32) = 2;
  v36 = v35;
  v37 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v38 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::queryAllPrivacyAcknowledgements", v37, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v39 = swift_allocObject();
  *(v39 + 44) = 0;
  *(v39 + 24) = 0;
  *(v39 + 32) = 0;
  *(v39 + 16) = v38;
  *(v39 + 40) = 0;
  *(v36 + 40) = v39;
  v104 = v36;

  sub_1B4F67BC4();
  v40 = v16;
  sub_1B4F67B84();
  v41 = v93;
  v42 = *(v93 + 16);
  v43 = v92;
  v44 = v94;
  v42(v92, v28, v94);
  type metadata accessor for Signpost(0);
  v45 = swift_allocObject();
  v46 = v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v46 = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v46 + 8) = 53;
  *(v46 + 16) = 2;
  v47 = v89;
  v48 = v91;
  (*(v89 + 16))(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v40, v91);
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v42((v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  (*(v41 + 8))(v43, v44);
  (*(v47 + 8))(v40, v48);
  *(v49 + 16) = 0;
  v86 = v45;
  *(v45 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v49;
  v50 = v104;
  v113 = v104;
  v51 = sub_1B4F67F94();
  v94 = v51;
  v53 = v52;
  sub_1B4F64944();
  v54 = swift_allocObject();
  *(v54 + 16) = v50;
  *(v54 + 24) = v45;
  *(v54 + 32) = v51;
  *(v54 + 40) = v53;
  v93 = v53;
  *(v54 + 48) = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v54 + 56) = 53;
  *(v54 + 64) = 2;

  v55 = v110;
  sub_1B4F675F4();
  v56 = v99;
  v57 = *(v99 + 16);
  v91 = v99 + 16;
  v92 = v57;
  v59 = v107;
  v58 = v108;
  (v57)(v107, v105, v108);
  v89 = *(v56 + 80);
  v87 = &v90[(v89 + 16) & ~v89];
  v60 = (v89 + 16) & ~v89;
  v88 = v60;
  v61 = swift_allocObject();
  v62 = *(v56 + 32);
  v85[1] = v56 + 32;
  v90 = v62;
  (v62)(v61 + v60, v59, v58);
  v63 = v103;
  v64 = v97;
  v65 = v111;
  (*(v103 + 16))(v97, v55, v111);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = (v96 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v63 + 32))(v68 + v66, v64, v65);
  v69 = (v68 + v67);
  *v69 = sub_1B4E21170;
  v69[1] = v61;
  v70 = v95;
  sub_1B4F675F4();
  v72 = v100;
  v71 = v101;
  v73 = v109;
  (*(v101 + 16))(v100, v112, v109);
  v74 = (*(v71 + 80) + 49) & ~*(v71 + 80);
  v75 = (v98 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v93;
  *(v76 + 16) = v94;
  *(v76 + 24) = v77;
  *(v76 + 32) = "RemoteBrowsingClient::queryAllPrivacyAcknowledgements";
  *(v76 + 40) = 53;
  *(v76 + 48) = 2;
  (*(v71 + 32))(v76 + v74, v72, v73);
  *(v76 + v75) = v86;
  *(v76 + ((v75 + 15) & 0xFFFFFFFFFFFFFFF8)) = v104;
  v79 = v107;
  v78 = v108;
  (v92)(v107, v70, v108);
  v80 = (v87 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (v90)(v81 + v88, v79, v78);
  v82 = (v81 + v80);
  *v82 = sub_1B4E211B4;
  v82[1] = v76;

  sub_1B4F675F4();
  v83 = *(v56 + 8);
  v83(v70, v78);
  (*(v63 + 8))(v110, v111);
  (*(v71 + 8))(v112, v109);
  v83(v105, v78);
}

uint64_t RemoteBrowsingClient.insertPrivacyAcknowledgement(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4308, &qword_1B4F6CC90);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 194;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4310, &qword_1EB8F4308, &qword_1B4F6CC90, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4318, &qword_1EB8F4308, &qword_1B4F6CC90, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v41 + 24) = 50;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertPrivacyAcknowledgement", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v53 + 8) = 50;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v60 + 56) = 50;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertPrivacyAcknowledgement";
  *(v80 + 40) = 50;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertBookmarks(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4320, &qword_1B4F6CC98);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 195;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4328, &qword_1EB8F4320, &qword_1B4F6CC98, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4330, &qword_1EB8F4320, &qword_1B4F6CC98, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertBookmarks";
  *(v41 + 24) = 37;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertBookmarks", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertBookmarks";
  *(v53 + 8) = 37;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertBookmarks";
  *(v60 + 56) = 37;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertBookmarks";
  *(v80 + 40) = 37;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.removeBookmarks(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4320, &qword_1B4F6CC98);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 196;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4328, &qword_1EB8F4320, &qword_1B4F6CC98, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4330, &qword_1EB8F4320, &qword_1B4F6CC98, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::removeBookmark";
  *(v41 + 24) = 36;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::removeBookmark", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::removeBookmark";
  *(v53 + 8) = 36;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::removeBookmark";
  *(v60 + 56) = 36;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::removeBookmark";
  *(v80 + 40) = 36;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertPlaylist(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4338, &qword_1B4F6CCA0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 200;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4340, &qword_1EB8F4338, &qword_1B4F6CCA0, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4348, &qword_1EB8F4338, &qword_1B4F6CCA0, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertPlaylist";
  *(v41 + 24) = 36;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertPlaylist", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertPlaylist";
  *(v53 + 8) = 36;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertPlaylist";
  *(v60 + 56) = 36;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertPlaylist";
  *(v80 + 40) = 36;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.deletePlaylist(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4338, &qword_1B4F6CCA0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 201;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4340, &qword_1EB8F4338, &qword_1B4F6CCA0, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4348, &qword_1EB8F4338, &qword_1B4F6CCA0, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::deletePlaylist";
  *(v41 + 24) = 36;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::deletePlaylist", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::deletePlaylist";
  *(v53 + 8) = 36;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::deletePlaylist";
  *(v60 + 56) = 36;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::deletePlaylist";
  *(v80 + 40) = 36;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertArchivedSession(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4350, &qword_1B4F6CCA8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 199;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4358, &qword_1EB8F4350, &qword_1B4F6CCA8, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4360, &qword_1EB8F4350, &qword_1B4F6CCA8, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertArchivedSession";
  *(v41 + 24) = 43;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertArchivedSession", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertArchivedSession";
  *(v53 + 8) = 43;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertArchivedSession";
  *(v60 + 56) = 43;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertArchivedSession";
  *(v80 + 40) = 43;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertCatalogTipJournal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4368, &qword_1B4F6CCB0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 204;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4370, &qword_1EB8F4368, &qword_1B4F6CCB0, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4378, &qword_1EB8F4368, &qword_1B4F6CCB0, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v41 + 24) = 45;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertCatalogTipJournal", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v53 + 8) = 45;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v60 + 56) = 45;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertCatalogTipJournal";
  *(v80 + 40) = 45;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertCompletedMarketingVideo(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4380, &qword_1B4F6CCB8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 197;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4388, &qword_1EB8F4380, &qword_1B4F6CCB8, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4390, &qword_1EB8F4380, &qword_1B4F6CCB8, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v41 + 24) = 51;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertCompletedMarketingVideo", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v53 + 8) = 51;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v60 + 56) = 51;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertCompletedMarketingVideo";
  *(v80 + 40) = 51;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.processUpNextQueueUpdates(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4398, &unk_1B4F6CCC0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 212;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F43A0, &qword_1EB8F4398, &unk_1B4F6CCC0, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F43A8, &qword_1EB8F4398, &unk_1B4F6CCC0, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v41 + 24) = 47;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::processUpNextQueueUpdates", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v53 + 8) = 47;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v60 + 56) = 47;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::processUpNextQueueUpdates";
  *(v80 + 40) = 47;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.repeatWorkoutPlan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v111 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v4);
  v104 = v5;
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v90 - v8;
  v116 = sub_1B4F64964();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v9);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v120 = &v90 - v13;
  v98 = sub_1B4F67BD4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v14);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1B4F67BA4();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v16);
  v93 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v107 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v18);
  v114 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v103 = &v90 - v22;
  v99 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v119 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B8, &qword_1B4F6CCD0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v90 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer(0);
  v92 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  (*(v28 + 16))(v31, a1, v27);
  v33 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v122 = 341;
  v101 = v27;
  v112 = *(v33 + 32);
  v35 = sub_1B4F64ED4();
  v113 = v35;
  v102 = v28;
  v36 = sub_1B4E21468(&qword_1EB8F43C0, &qword_1EB8F43B8, &qword_1B4F6CCD0, MEMORY[0x1E69CD098]);
  v100 = v31;
  v37 = v36;
  v38 = sub_1B4E21468(&qword_1EB8F43C8, &qword_1EB8F43B8, &qword_1B4F6CCD0, MEMORY[0x1E69CD0A0]);
  v112(&v122, v31, v27, v35, v37, v38, MEMORY[0x1E69CB0C8], MEMORY[0x1E69CB0D0], ObjectType, v33);
  type metadata accessor for ActivityTrace();
  v39 = swift_allocObject();
  *(v39 + 16) = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v39 + 24) = 39;
  *(v39 + 32) = 2;
  v40 = v39;
  v41 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v42 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::repeatWorkoutPlan", v41, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v43 = swift_allocObject();
  *(v43 + 44) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = 0;
  *(v40 + 40) = v43;
  v112 = v40;

  v44 = v92;
  sub_1B4F67BC4();
  v45 = v93;
  sub_1B4F67B84();
  v46 = v97;
  v47 = *(v97 + 16);
  v48 = v96;
  v49 = v98;
  v47(v96, v44, v98);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v51 + 8) = 39;
  *(v51 + 16) = 2;
  v52 = v94;
  v53 = v95;
  (*(v94 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v45, v95);
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v45, v53);
  *(v54 + 16) = 0;
  v91 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v54;
  v55 = v112;
  v121 = v112;
  v56 = sub_1B4F67F94();
  v98 = v56;
  v58 = v57;
  sub_1B4F64944();
  v59 = swift_allocObject();
  *(v59 + 16) = v55;
  *(v59 + 24) = v50;
  *(v59 + 32) = v56;
  *(v59 + 40) = v58;
  v97 = v58;
  *(v59 + 48) = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v59 + 56) = 39;
  *(v59 + 64) = 2;

  v60 = v117;
  sub_1B4F675F4();
  v61 = v107;
  v62 = *(v107 + 16);
  v95 = v107 + 16;
  v96 = v62;
  v64 = v114;
  v63 = v115;
  (v62)(v114, v119, v115);
  v94 = *(v61 + 80);
  v92 = v99 + ((v94 + 16) & ~v94);
  v65 = (v94 + 16) & ~v94;
  v93 = v65;
  v66 = swift_allocObject();
  v67 = *(v61 + 32);
  v90 = v61 + 32;
  v99 = v67;
  v67((v66 + v65), v64, v63);
  v68 = v111;
  v69 = v105;
  v70 = v118;
  (*(v111 + 16))(v105, v60, v118);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v104 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = (v73 + v72);
  *v74 = sub_1B4E211FC;
  v74[1] = v66;
  v75 = v103;
  sub_1B4F675F4();
  v77 = v108;
  v76 = v109;
  v78 = v116;
  (*(v109 + 16))(v108, v120, v116);
  v79 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v80 = (v106 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v97;
  *(v81 + 16) = v98;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingClient::repeatWorkoutPlan";
  *(v81 + 40) = 39;
  *(v81 + 48) = 2;
  (*(v76 + 32))(v81 + v79, v77, v78);
  *(v81 + v80) = v91;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
  v84 = v114;
  v83 = v115;
  (v96)(v114, v75, v115);
  v85 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v99(&v93[v86], v84, v83);
  v87 = (v86 + v85);
  *v87 = sub_1B4E21240;
  v87[1] = v81;

  sub_1B4F675F4();
  v88 = *(v61 + 8);
  v88(v75, v83);
  (*(v68 + 8))(v117, v118);
  (*(v76 + 8))(v120, v116);
  v88(v119, v83);
  (*(v102 + 8))(v100, v101);
}

uint64_t RemoteBrowsingClient.updateWorkoutPlan(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v111 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v4);
  v104 = v5;
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v90 - v8;
  v116 = sub_1B4F64964();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v9);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v120 = &v90 - v13;
  v98 = sub_1B4F67BD4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v14);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1B4F67BA4();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v16);
  v93 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v107 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v18);
  v114 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v103 = &v90 - v22;
  v99 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v119 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43D0, &qword_1B4F6CCD8);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v90 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer(0);
  v92 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  (*(v28 + 16))(v31, a1, v27);
  v33 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v122 = 211;
  v101 = v27;
  v112 = *(v33 + 32);
  v35 = sub_1B4F64ED4();
  v113 = v35;
  v102 = v28;
  v36 = sub_1B4E21468(&qword_1EB8F43D8, &qword_1EB8F43D0, &qword_1B4F6CCD8, MEMORY[0x1E69CD098]);
  v100 = v31;
  v37 = v36;
  v38 = sub_1B4E21468(&qword_1EB8F43E0, &qword_1EB8F43D0, &qword_1B4F6CCD8, MEMORY[0x1E69CD0A0]);
  v112(&v122, v31, v27, v35, v37, v38, MEMORY[0x1E69CB0C8], MEMORY[0x1E69CB0D0], ObjectType, v33);
  type metadata accessor for ActivityTrace();
  v39 = swift_allocObject();
  *(v39 + 16) = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v39 + 24) = 39;
  *(v39 + 32) = 2;
  v40 = v39;
  v41 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v42 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateWorkoutPlan", v41, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v43 = swift_allocObject();
  *(v43 + 44) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = 0;
  *(v40 + 40) = v43;
  v112 = v40;

  v44 = v92;
  sub_1B4F67BC4();
  v45 = v93;
  sub_1B4F67B84();
  v46 = v97;
  v47 = *(v97 + 16);
  v48 = v96;
  v49 = v98;
  v47(v96, v44, v98);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v51 + 8) = 39;
  *(v51 + 16) = 2;
  v52 = v94;
  v53 = v95;
  (*(v94 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v45, v95);
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v45, v53);
  *(v54 + 16) = 0;
  v91 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v54;
  v55 = v112;
  v121 = v112;
  v56 = sub_1B4F67F94();
  v98 = v56;
  v58 = v57;
  sub_1B4F64944();
  v59 = swift_allocObject();
  *(v59 + 16) = v55;
  *(v59 + 24) = v50;
  *(v59 + 32) = v56;
  *(v59 + 40) = v58;
  v97 = v58;
  *(v59 + 48) = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v59 + 56) = 39;
  *(v59 + 64) = 2;

  v60 = v117;
  sub_1B4F675F4();
  v61 = v107;
  v62 = *(v107 + 16);
  v95 = v107 + 16;
  v96 = v62;
  v64 = v114;
  v63 = v115;
  (v62)(v114, v119, v115);
  v94 = *(v61 + 80);
  v92 = v99 + ((v94 + 16) & ~v94);
  v65 = (v94 + 16) & ~v94;
  v93 = v65;
  v66 = swift_allocObject();
  v67 = *(v61 + 32);
  v90 = v61 + 32;
  v99 = v67;
  v67((v66 + v65), v64, v63);
  v68 = v111;
  v69 = v105;
  v70 = v118;
  (*(v111 + 16))(v105, v60, v118);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v104 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = (v73 + v72);
  *v74 = sub_1B4E21D60;
  v74[1] = v66;
  v75 = v103;
  sub_1B4F675F4();
  v77 = v108;
  v76 = v109;
  v78 = v116;
  (*(v109 + 16))(v108, v120, v116);
  v79 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v80 = (v106 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v97;
  *(v81 + 16) = v98;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingClient::updateWorkoutPlan";
  *(v81 + 40) = 39;
  *(v81 + 48) = 2;
  (*(v76 + 32))(v81 + v79, v77, v78);
  *(v81 + v80) = v91;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
  v84 = v114;
  v83 = v115;
  (v96)(v114, v75, v115);
  v85 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v99(&v93[v86], v84, v83);
  v87 = (v86 + v85);
  *v87 = sub_1B4E21D28;
  v87[1] = v81;

  sub_1B4F675F4();
  v88 = *(v61 + 8);
  v88(v75, v83);
  (*(v68 + 8))(v117, v118);
  (*(v76 + 8))(v120, v116);
  v88(v119, v83);
  (*(v102 + 8))(v100, v101);
}

uint64_t RemoteBrowsingClient.requestWorkoutPlanAlternatives(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43E8, &qword_1B4F6CCE0);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F672A4();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EB8F5550);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 328;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F66974();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CCF90], MEMORY[0x1E69CCF98], MEMORY[0x1E69CC7E8], MEMORY[0x1E69CC7F0], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v38 + 24) = 52;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestWorkoutPlanAlternatives", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v48 + 8) = 52;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v56 + 56) = 52;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4E21288;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "RemoteBrowsingClient::requestWorkoutPlanAlternatives";
  *(v78 + 40) = 52;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E212CC;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteBrowsingClient.showWorkoutPlanCreationPrompt(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v111 = sub_1B4F64964();
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v87 - v8;
  v9 = sub_1B4F67BD4();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v87 - v25;
  v93 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = sub_1B4F65F84();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 329;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v41 + 24) = 51;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::showWorkoutPlanCreationPrompt", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v106 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v107 = v30;
  v46 = v96;
  v94 = v31;
  v47 = *(v96 + 16);
  v48 = v95;
  v49 = v97;
  v47(v95, v37, v97);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v51 + 8) = 51;
  *(v51 + 16) = 2;
  v52 = v91;
  v53 = v92;
  (*(v91 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v14, v92);
  v54 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v14, v53);
  *(v55 + 16) = 0;
  v90 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v55;
  v56 = v106;
  v114 = v106;
  v57 = sub_1B4F67F94();
  v97 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v54;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v60 + 56) = 51;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v61 = v110;
  v62 = (v110 + 16);
  v63 = *(v110 + 16);
  v64 = v108;
  v65 = v102;
  v63(v108, v107, v102);
  v92 = v63;
  v95 = v62;
  v88 = *(v61 + 80);
  v66 = (v88 + 16) & ~v88;
  v67 = v66 + v93;
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v91 = v66;
  v69(v68 + v66, v64, v65);
  v93 = v61 + 32;
  v89 = v69;
  v70 = v98;
  v63(v98, v112, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  sub_1B4F675F4();
  v74 = v105;
  v75 = v103;
  v76 = v111;
  (*(v105 + 16))(v103, v113, v111);
  v77 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v96;
  *(v79 + 16) = v97;
  *(v79 + 24) = v80;
  *(v79 + 32) = "RemoteBrowsingClient::showWorkoutPlanCreationPrompt";
  *(v79 + 40) = 51;
  *(v79 + 48) = 2;
  (*(v74 + 32))(v79 + v77, v75, v76);
  *(v79 + v78) = v90;
  *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v82 = v108;
  v81 = v109;
  (v92)(v108, v109, v65);
  v83 = swift_allocObject();
  v89(v83 + v91, v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v94);
}

uint64_t RemoteBrowsingClient.showPersonalizedWorkoutPlanCreationPrompt(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v111 = sub_1B4F64964();
  v105 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111, v4);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  v113 = &v87 - v8;
  v9 = sub_1B4F67BD4();
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92, v12);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v110 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v15);
  v98 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v109 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v112 = &v87 - v25;
  v93 = v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v87 - v29;
  v31 = sub_1B4F675A4();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for ActivityTracer(0);
  v37 = __swift_project_value_buffer(v36, qword_1EB8F5550);
  v38 = *(v32 + 16);
  v99 = v35;
  v38(v35, a1, v31);
  v100 = v32;
  v39 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v115[0] = 357;
  (*(v39 + 16))(v115, v35, v31, MEMORY[0x1E69CD250], MEMORY[0x1E69CD258], ObjectType, v39);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v41 + 24) = 63;
  *(v41 + 32) = 2;
  v42 = v41;
  v43 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v44 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt", v43, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v45 = swift_allocObject();
  *(v45 + 44) = 0;
  *(v45 + 24) = 0;
  *(v45 + 32) = 0;
  *(v45 + 16) = v44;
  *(v45 + 40) = 0;
  *(v42 + 40) = v45;
  v106 = v42;

  sub_1B4F67BC4();
  sub_1B4F67B84();
  v107 = v30;
  v46 = v96;
  v94 = v31;
  v47 = *(v96 + 16);
  v48 = v95;
  v49 = v97;
  v47(v95, v37, v97);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v51 + 8) = 63;
  *(v51 + 16) = 2;
  v52 = v91;
  v53 = v92;
  (*(v91 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v14, v92);
  v54 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v55 = swift_allocObject();
  *(v55 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v14, v53);
  *(v55 + 16) = 0;
  v90 = v54;
  *(v54 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v55;
  v56 = v106;
  v114 = v106;
  v57 = sub_1B4F67F94();
  v97 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  *(v60 + 16) = v56;
  *(v60 + 24) = v54;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v96 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v60 + 56) = 63;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v61 = v110;
  v62 = (v110 + 16);
  v63 = *(v110 + 16);
  v64 = v108;
  v65 = v102;
  v63(v108, v107, v102);
  v92 = v63;
  v95 = v62;
  v88 = *(v61 + 80);
  v66 = (v88 + 16) & ~v88;
  v67 = v66 + v93;
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v91 = v66;
  v69(v68 + v66, v64, v65);
  v93 = v61 + 32;
  v89 = v69;
  v70 = v98;
  v63(v98, v112, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  sub_1B4F675F4();
  v74 = v105;
  v75 = v103;
  v76 = v111;
  (*(v105 + 16))(v103, v113, v111);
  v77 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v78 = (v101 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v96;
  *(v79 + 16) = v97;
  *(v79 + 24) = v80;
  *(v79 + 32) = "RemoteBrowsingClient::showPersonalizedWorkoutPlanCreationPrompt";
  *(v79 + 40) = 63;
  *(v79 + 48) = 2;
  (*(v74 + 32))(v79 + v77, v75, v76);
  *(v79 + v78) = v90;
  *(v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8)) = v106;
  v82 = v108;
  v81 = v109;
  (v92)(v108, v109, v65);
  v83 = swift_allocObject();
  v89(v83 + v91, v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v79;

  sub_1B4F675F4();
  v85 = *(v110 + 8);
  v85(v81, v65);
  v85(v112, v65);
  (*(v74 + 8))(v113, v111);
  v85(v107, v65);
  (*(v100 + 8))(v99, v94);
}

uint64_t RemoteBrowsingClient.requireActiveWorkoutPlan(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v108 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v4);
  v101 = v5;
  v102 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v115 = &v87 - v8;
  v114 = sub_1B4F64964();
  v106 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v9);
  v105 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v117 = &v87 - v13;
  v96 = sub_1B4F67BD4();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96, v14);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1B4F67BA4();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v16);
  v90 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43F0, &qword_1B4F6CCE8);
  v104 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113, v18);
  v112 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v100 = &v87 - v22;
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v87 - v26;
  v28 = sub_1B4F65F84();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v30);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for ActivityTracer(0);
  v34 = __swift_project_value_buffer(v33, qword_1EB8F5550);
  (*(v29 + 16))(v32, a1, v28);
  v35 = *(v2 + 24);
  v98 = v28;
  ObjectType = swift_getObjectType();
  v119 = 203;
  v97 = v32;
  v99 = v29;
  v37 = *(v35 + 32);
  v110 = sub_1B4F669C4();
  v111 = v27;
  v37(&v119, v32, v28, v110, MEMORY[0x1E69CBB80], MEMORY[0x1E69CBB88], MEMORY[0x1E69CC808], MEMORY[0x1E69CC810], ObjectType, v35);
  type metadata accessor for ActivityTrace();
  v38 = swift_allocObject();
  *(v38 + 16) = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v38 + 24) = 46;
  *(v38 + 32) = 2;
  v39 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v40 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requireActiveWorkoutPlan", v39, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v41 = swift_allocObject();
  *(v41 + 44) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;
  *(v41 + 16) = v40;
  *(v41 + 40) = 0;
  *(v38 + 40) = v41;
  v109 = v38;

  sub_1B4F67BC4();
  v42 = v90;
  sub_1B4F67B84();
  v43 = v95;
  v44 = *(v95 + 16);
  v45 = v94;
  v46 = v96;
  v44(v94, v34, v96);
  type metadata accessor for Signpost(0);
  v47 = swift_allocObject();
  v48 = v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v48 = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v48 + 8) = 46;
  *(v48 + 16) = 2;
  v49 = v91;
  v50 = v93;
  (*(v91 + 16))(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v42, v93);
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v44((v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v51 = swift_allocObject();
  *(v51 + 24) = 0;
  (*(v43 + 8))(v45, v46);
  (*(v49 + 8))(v42, v50);
  *(v51 + 16) = 0;
  v88 = v47;
  *(v47 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v51;
  v52 = v109;
  v118 = v109;
  v53 = sub_1B4F67F94();
  v96 = v53;
  v55 = v54;
  sub_1B4F64944();
  v56 = swift_allocObject();
  *(v56 + 16) = v52;
  *(v56 + 24) = v47;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  v95 = v55;
  *(v56 + 48) = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v56 + 56) = 46;
  *(v56 + 64) = 2;

  v57 = v115;
  sub_1B4F675F4();
  v58 = v104;
  v59 = *(v104 + 16);
  v93 = v104 + 16;
  v94 = v59;
  v60 = v112;
  v61 = v113;
  (v59)(v112, v111, v113);
  v91 = *(v58 + 80);
  v89 = &v92[(v91 + 16) & ~v91];
  v62 = (v91 + 16) & ~v91;
  v90 = v62;
  v63 = swift_allocObject();
  v64 = *(v58 + 32);
  v87 = v58 + 32;
  v92 = v64;
  (v64)(v63 + v62, v60, v61);
  v65 = v108;
  v66 = v102;
  v67 = v116;
  (*(v108 + 16))(v102, v57, v116);
  v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v69 = (v101 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v65 + 32))(v70 + v68, v66, v67);
  v71 = (v70 + v69);
  *v71 = sub_1B4E21314;
  v71[1] = v63;
  v72 = v100;
  sub_1B4F675F4();
  v73 = v105;
  v74 = v106;
  v75 = v114;
  (*(v106 + 16))(v105, v117, v114);
  v76 = (*(v74 + 80) + 49) & ~*(v74 + 80);
  v77 = (v103 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  v79 = v95;
  *(v78 + 16) = v96;
  *(v78 + 24) = v79;
  *(v78 + 32) = "RemoteBrowsingClient::requireActiveWorkoutPlan";
  *(v78 + 40) = 46;
  *(v78 + 48) = 2;
  (*(v74 + 32))(v78 + v76, v73, v75);
  *(v78 + v77) = v88;
  *(v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8)) = v109;
  v81 = v112;
  v80 = v113;
  (v94)(v112, v72, v113);
  v82 = (v89 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  (v92)(&v90[v83], v81, v80);
  v84 = (v83 + v82);
  *v84 = sub_1B4E21358;
  v84[1] = v78;

  sub_1B4F675F4();
  v85 = *(v58 + 8);
  v85(v72, v80);
  (*(v65 + 8))(v115, v116);
  (*(v74 + 8))(v117, v114);
  v85(v111, v80);
  (*(v99 + 8))(v97, v98);
}

uint64_t RemoteBrowsingClient.insertWorkoutPlanSummaryViewed(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43F8, &qword_1B4F6CCF0);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 210;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4400, &qword_1EB8F43F8, &qword_1B4F6CCF0, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4408, &qword_1EB8F43F8, &qword_1B4F6CCF0, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v41 + 24) = 52;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v53 + 8) = 52;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v60 + 56) = 52;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertWorkoutPlanSummaryViewed";
  *(v80 + 40) = 52;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertArchivedWorkoutPlanSession(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4410, &qword_1B4F6CCF8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 213;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4418, &qword_1EB8F4410, &qword_1B4F6CCF8, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4420, &qword_1EB8F4410, &qword_1B4F6CCF8, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v41 + 24) = 54;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertArchivedWorkoutPlanSession", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v53 + 8) = 54;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v60 + 56) = 54;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertArchivedWorkoutPlanSession";
  *(v80 + 40) = 54;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.requestWorkoutPlanTemplateUpdate(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4428, &qword_1B4F6CD00);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 206;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4430, &qword_1EB8F4428, &qword_1B4F6CD00, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4438, &qword_1EB8F4428, &qword_1B4F6CD00, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v41 + 24) = 54;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v53 + 8) = 54;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v60 + 56) = 54;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::requestWorkoutPlanTemplateUpdate";
  *(v80 + 40) = 54;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.requestEndWorkoutPlan(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4440, &qword_1B4F6CD08);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 205;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4448, &qword_1EB8F4440, &qword_1B4F6CD08, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4450, &qword_1EB8F4440, &qword_1B4F6CD08, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v41 + 24) = 43;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestEndWorkoutPlan", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v53 + 8) = 43;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v60 + 56) = 43;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::requestEndWorkoutPlan";
  *(v80 + 40) = 43;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.updateOnboardingSurveyResult(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4458, &qword_1B4F6CD10);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 218;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4460, &qword_1EB8F4458, &qword_1B4F6CD10, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4468, &qword_1EB8F4458, &qword_1B4F6CD10, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v41 + 24) = 50;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::updateOnboardingSurveyResult", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v53 + 8) = 50;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v60 + 56) = 50;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::updateOnboardingSurveyResult";
  *(v80 + 40) = 50;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertRecentSearchTerm(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4470, &qword_1B4F6CD18);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 215;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4478, &qword_1EB8F4470, &qword_1B4F6CD18, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4480, &qword_1EB8F4470, &qword_1B4F6CD18, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v41 + 24) = 44;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertRecentSearchTerm", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v53 + 8) = 44;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v60 + 56) = 44;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertRecentSearchTerm";
  *(v80 + 40) = 44;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.deleteRecentSearchTerms(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4488, &qword_1B4F6CD20);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 216;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F4490, &qword_1EB8F4488, &qword_1B4F6CD20, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F4498, &qword_1EB8F4488, &qword_1B4F6CD20, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v41 + 24) = 44;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::deleteRecentSearchTerm", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v53 + 8) = 44;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v60 + 56) = 44;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::deleteRecentSearchTerm";
  *(v80 + 40) = 44;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertAchievementNotificationRecord(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44A0, &qword_1B4F6CD28);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 217;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F44A8, &qword_1EB8F44A0, &qword_1B4F6CD28, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F44B0, &qword_1EB8F44A0, &qword_1B4F6CD28, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v41 + 24) = 57;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertAchievementNotificationRecord", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v53 + 8) = 57;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v60 + 56) = 57;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertAchievementNotificationRecord";
  *(v80 + 40) = 57;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.insertPersonalizationPrivacyPreference(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v4 = sub_1B4F64964();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v103 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v112 = v87 - v9;
  v107 = sub_1B4F67BD4();
  v94 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v10);
  v93 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1B4F67BA4();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v12);
  v90 = v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v109 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v14);
  v98 = v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v108 = v87 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v100 = v87 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v110 = v87 - v24;
  v95 = v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v111 = v87 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44B8, &qword_1B4F6CD30);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = v87 - v32;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for ActivityTracer(0);
  v88 = __swift_project_value_buffer(v34, qword_1EB8F5550);
  (*(v30 + 16))(v33, a1, v29);
  v35 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v96 = v33;
  v97 = v29;
  v37 = ObjectType;
  v114[0] = 219;
  v99 = v30;
  v38 = *(v35 + 16);
  v39 = sub_1B4E21468(&qword_1EB8F44C0, &qword_1EB8F44B8, &qword_1B4F6CD30, MEMORY[0x1E69CD098]);
  v40 = sub_1B4E21468(&qword_1EB8F44C8, &qword_1EB8F44B8, &qword_1B4F6CD30, MEMORY[0x1E69CD0A0]);
  v38(v114, v33, v29, v39, v40, v37, v35);
  type metadata accessor for ActivityTrace();
  v41 = swift_allocObject();
  *(v41 + 16) = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v41 + 24) = 60;
  *(v41 + 32) = 2;
  v42 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v43 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::insertPersonalizationPrivacyPreference", v42, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v44 = swift_allocObject();
  *(v44 + 44) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = 0;
  *(v44 + 16) = v43;
  *(v44 + 40) = 0;
  *(v41 + 40) = v44;

  v45 = v88;
  sub_1B4F67BC4();
  v46 = v90;
  sub_1B4F67B84();
  v47 = v94;
  v48 = *(v94 + 16);
  v49 = v93;
  v50 = v45;
  v51 = v107;
  v48(v93, v50, v107);
  type metadata accessor for Signpost(0);
  v52 = swift_allocObject();
  v53 = v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v53 = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v53 + 8) = 60;
  *(v53 + 16) = 2;
  v54 = v91;
  v55 = v92;
  v91[2](v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v46, v92);
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v48((v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v56 = swift_allocObject();
  *(v56 + 24) = 0;
  (*(v47 + 8))(v49, v51);
  (v54[1])(v46, v55);
  *(v56 + 16) = 0;
  v88 = v52;
  *(v52 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v56;
  v113 = v41;
  v57 = sub_1B4F67F94();
  v94 = v57;
  v59 = v58;
  sub_1B4F64944();
  v60 = swift_allocObject();
  v89 = v41;
  *(v60 + 16) = v41;
  *(v60 + 24) = v52;
  *(v60 + 32) = v57;
  *(v60 + 40) = v59;
  v93 = v59;
  *(v60 + 48) = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v60 + 56) = 60;
  *(v60 + 64) = 2;

  sub_1B4F675F4();
  v62 = v108;
  v61 = v109;
  v63 = v109 + 16;
  v64 = *(v109 + 16);
  v65 = v102;
  (v64)(v108, v111, v102);
  v91 = v64;
  v92 = v63;
  v107 = *(v61 + 80);
  v66 = (v107 + 16) & ~v107;
  v67 = &v95[v66];
  v68 = swift_allocObject();
  v69 = *(v61 + 32);
  v90 = v66;
  v69(v68 + v66, v62, v65);
  v87[1] = v61 + 32;
  v95 = v69;
  v70 = v98;
  (v64)(v98, v110, v65);
  v71 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  v69(v72 + v66, v70, v65);
  v73 = (v72 + v71);
  *v73 = sub_1B4E21D54;
  v73[1] = v68;
  v74 = v100;
  sub_1B4F675F4();
  v76 = v105;
  v75 = v106;
  v77 = v103;
  (*(v105 + 16))(v103, v112, v106);
  v78 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v79 = (v101 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  v81 = v93;
  *(v80 + 16) = v94;
  *(v80 + 24) = v81;
  *(v80 + 32) = "RemoteBrowsingClient::insertPersonalizationPrivacyPreference";
  *(v80 + 40) = 60;
  *(v80 + 48) = 2;
  (*(v76 + 32))(v80 + v78, v77, v75);
  *(v80 + v79) = v88;
  *(v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8)) = v89;
  v82 = v108;
  (v91)(v108, v74, v65);
  v83 = swift_allocObject();
  (v95)(&v90[v83], v82, v65);
  v84 = (v83 + v71);
  *v84 = sub_1B4E21D24;
  v84[1] = v80;

  sub_1B4F675F4();
  v85 = *(v109 + 8);
  v85(v74, v65);
  v85(v110, v65);
  (*(v76 + 8))(v112, v75);
  v85(v111, v65);
  (*(v99 + 8))(v96, v97);
}

uint64_t RemoteBrowsingClient.requestRemoteSyncableCounts(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v111 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118, v4);
  v104 = v5;
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v117 = &v90 - v8;
  v116 = sub_1B4F64964();
  v109 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v9);
  v108 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v120 = &v90 - v13;
  v98 = sub_1B4F67BD4();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v14);
  v96 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1B4F67BA4();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95, v16);
  v93 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44D0, &qword_1B4F6CD38);
  v107 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115, v18);
  v114 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v103 = &v90 - v22;
  v99 = v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v119 = &v90 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44D8, &qword_1B4F6CD40);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v90 - v30;
  if (qword_1EB8F3D20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for ActivityTracer(0);
  v92 = __swift_project_value_buffer(v32, qword_1EB8F5550);
  (*(v28 + 16))(v31, a1, v27);
  v33 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v122 = 220;
  v101 = v27;
  v112 = *(v33 + 32);
  v35 = sub_1B4F658E4();
  v113 = v35;
  v102 = v28;
  v36 = sub_1B4E21468(&qword_1EB8F44E0, &qword_1EB8F44D8, &qword_1B4F6CD40, MEMORY[0x1E69CD098]);
  v100 = v31;
  v37 = v36;
  v38 = sub_1B4E21468(&qword_1EB8F44E8, &qword_1EB8F44D8, &qword_1B4F6CD40, MEMORY[0x1E69CD0A0]);
  v112(&v122, v31, v27, v35, v37, v38, MEMORY[0x1E69CB4D0], MEMORY[0x1E69CB4D8], ObjectType, v33);
  type metadata accessor for ActivityTrace();
  v39 = swift_allocObject();
  *(v39 + 16) = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v39 + 24) = 49;
  *(v39 + 32) = 2;
  v40 = v39;
  v41 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
  v42 = _os_activity_create(&dword_1B4DC2000, "RemoteBrowsingClient::requestRemoteSyncableCounts", v41, OS_ACTIVITY_FLAG_DEFAULT);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
  v43 = swift_allocObject();
  *(v43 + 44) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 0;
  *(v43 + 16) = v42;
  *(v43 + 40) = 0;
  *(v40 + 40) = v43;
  v112 = v40;

  v44 = v92;
  sub_1B4F67BC4();
  v45 = v93;
  sub_1B4F67B84();
  v46 = v97;
  v47 = *(v97 + 16);
  v48 = v96;
  v49 = v98;
  v47(v96, v44, v98);
  type metadata accessor for Signpost(0);
  v50 = swift_allocObject();
  v51 = v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v51 = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v51 + 8) = 49;
  *(v51 + 16) = 2;
  v52 = v94;
  v53 = v95;
  (*(v94 + 16))(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID, v45, v95);
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = 0;
  v47((v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_poster), v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v54 = swift_allocObject();
  *(v54 + 24) = 0;
  (*(v46 + 8))(v48, v49);
  (*(v52 + 8))(v45, v53);
  *(v54 + 16) = 0;
  v91 = v50;
  *(v50 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v54;
  v55 = v112;
  v121 = v112;
  v56 = sub_1B4F67F94();
  v98 = v56;
  v58 = v57;
  sub_1B4F64944();
  v59 = swift_allocObject();
  *(v59 + 16) = v55;
  *(v59 + 24) = v50;
  *(v59 + 32) = v56;
  *(v59 + 40) = v58;
  v97 = v58;
  *(v59 + 48) = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v59 + 56) = 49;
  *(v59 + 64) = 2;

  v60 = v117;
  sub_1B4F675F4();
  v61 = v107;
  v62 = *(v107 + 16);
  v95 = v107 + 16;
  v96 = v62;
  v64 = v114;
  v63 = v115;
  (v62)(v114, v119, v115);
  v94 = *(v61 + 80);
  v92 = v99 + ((v94 + 16) & ~v94);
  v65 = (v94 + 16) & ~v94;
  v93 = v65;
  v66 = swift_allocObject();
  v67 = *(v61 + 32);
  v90 = v61 + 32;
  v99 = v67;
  v67((v66 + v65), v64, v63);
  v68 = v111;
  v69 = v105;
  v70 = v118;
  (*(v111 + 16))(v105, v60, v118);
  v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v72 = (v104 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v68 + 32))(v73 + v71, v69, v70);
  v74 = (v73 + v72);
  *v74 = sub_1B4E214E4;
  v74[1] = v66;
  v75 = v103;
  sub_1B4F675F4();
  v77 = v108;
  v76 = v109;
  v78 = v116;
  (*(v109 + 16))(v108, v120, v116);
  v79 = (*(v76 + 80) + 49) & ~*(v76 + 80);
  v80 = (v106 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  v82 = v97;
  *(v81 + 16) = v98;
  *(v81 + 24) = v82;
  *(v81 + 32) = "RemoteBrowsingClient::requestRemoteSyncableCounts";
  *(v81 + 40) = 49;
  *(v81 + 48) = 2;
  (*(v76 + 32))(v81 + v79, v77, v78);
  *(v81 + v80) = v91;
  *(v81 + ((v80 + 15) & 0xFFFFFFFFFFFFFFF8)) = v112;
  v84 = v114;
  v83 = v115;
  (v96)(v114, v75, v115);
  v85 = (v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  v99(&v93[v86], v84, v83);
  v87 = (v86 + v85);
  *v87 = sub_1B4E21690;
  v87[1] = v81;

  sub_1B4F675F4();
  v88 = *(v61 + 8);
  v88(v75, v83);
  (*(v68 + 8))(v117, v118);
  (*(v76 + 8))(v120, v116);
  v88(v119, v83);
  (*(v102 + 8))(v100, v101);
}

void sub_1B4E1832C(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a7;
  v61 = a5;
  v62 = a6;
  v60 = a3;
  v64 = a9;
  v65 = a10;
  v68 = *MEMORY[0x1E69E9840];
  v14 = sub_1B4F64964();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v59 - v25;
  if (a2)
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v27 = sub_1B4F67C54();
    __swift_project_value_buffer(v27, qword_1EDB70E18);
    (*(v15 + 16))(v22, a8, v14);

    sub_1B4DE3B04(a1, 1);
    v28 = sub_1B4F67C34();
    v29 = sub_1B4F685C4();

    sub_1B4DDC730(a1, 1);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      state.opaque[0] = v59;
      *v30 = 136446978;
      *(v30 + 4) = sub_1B4DC4F88(v60, a4, &state);
      *(v30 + 12) = 2082;
      v31 = sub_1B4F689D4();
      v33 = sub_1B4DC4F88(v31, v32, &state);

      *(v30 + 14) = v33;
      *(v30 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v35 = v34;
      v36 = *(v15 + 8);
      v36(v18, v14);
      v36(v22, v14);
      *(v30 + 24) = v35;
      *(v30 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v38 = MEMORY[0x1EEE9AC00](ErrorValue, v66);
      (*(v40 + 16))(&v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
      v41 = sub_1B4F67F94();
      v43 = sub_1B4DC4F88(v41, v42, &state);

      *(v30 + 34) = v43;
      _os_log_impl(&dword_1B4DC2000, v28, v29, "[%{public}s] %{public}s ended in %fs -> %{public}s", v30, 0x2Au);
      v44 = v59;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v44, -1, -1);
      v45 = v30;
LABEL_10:
      MEMORY[0x1B8C831D0](v45, -1, -1);

      goto LABEL_13;
    }

    (*(v15 + 8))(v22, v14);
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v46 = sub_1B4F67C54();
    __swift_project_value_buffer(v46, qword_1EDB70E18);
    (*(v15 + 16))(v26, a8, v14);

    v28 = sub_1B4F67C34();
    v47 = sub_1B4F685E4();

    if (os_log_type_enabled(v28, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      state.opaque[0] = v49;
      *v48 = 136446722;
      *(v48 + 4) = sub_1B4DC4F88(v60, a4, &state);
      *(v48 + 12) = 2082;
      v50 = sub_1B4F689D4();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v48 + 14) = v52;
      *(v48 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v54 = v53;
      v55 = *(v15 + 8);
      v55(v18, v14);
      v55(v26, v14);
      *(v48 + 24) = v54;
      _os_log_impl(&dword_1B4DC2000, v28, v47, "[%{public}s] %{public}s ended in %fs", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v49, -1, -1);
      v45 = v48;
      goto LABEL_10;
    }

    (*(v15 + 8))(v26, v14);
  }

LABEL_13:
  v56 = *(v64 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v56 + 24));
  sub_1B4DDF3A4((v56 + 16));
  os_unfair_lock_unlock((v56 + 24));
  v57 = *(v65 + 40);
  os_unfair_lock_lock((v57 + 44));
  if (*(v57 + 40) == 1)
  {
    v58 = *(v57 + 16);
    state = *(v57 + 24);
    os_activity_scope_leave(&state);
    *(v57 + 24) = 0;
    *(v57 + 32) = 0;
    *(v57 + 16) = v58;
    *(v57 + 40) = 0;
  }

  os_unfair_lock_unlock((v57 + 44));
}

void sub_1B4E18984(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C8, &unk_1B4F6CE80);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F45C8, &unk_1B4F6CE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F45C8, &unk_1B4F6CE80);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E190B0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C0, &qword_1B4F6CE78);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F45C0, &qword_1B4F6CE78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F45C0, &qword_1B4F6CE78);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E197DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4528, &qword_1B4F6CDD8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F4528, &qword_1B4F6CDD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F4528, &qword_1B4F6CDD8);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E19F08(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v63 = a7;
  v61 = a5;
  v62 = a6;
  v60 = a3;
  v64 = a9;
  v65 = a10;
  v68 = *MEMORY[0x1E69E9840];
  v14 = sub_1B4F64964();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v59 - v25;
  if (a2)
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v27 = sub_1B4F67C54();
    __swift_project_value_buffer(v27, qword_1EDB70E18);
    (*(v15 + 16))(v22, a8, v14);

    sub_1B4E219A8(a1, 1);
    v28 = sub_1B4F67C34();
    v29 = sub_1B4F685C4();

    sub_1B4DDACF4(a1, 1, MEMORY[0x1E69E7CF8]);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      state.opaque[0] = v59;
      *v30 = 136446978;
      *(v30 + 4) = sub_1B4DC4F88(v60, a4, &state);
      *(v30 + 12) = 2082;
      v31 = sub_1B4F689D4();
      v33 = sub_1B4DC4F88(v31, v32, &state);

      *(v30 + 14) = v33;
      *(v30 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v35 = v34;
      v36 = *(v15 + 8);
      v36(v18, v14);
      v36(v22, v14);
      *(v30 + 24) = v35;
      *(v30 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v38 = MEMORY[0x1EEE9AC00](ErrorValue, v66);
      (*(v40 + 16))(&v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
      v41 = sub_1B4F67F94();
      v43 = sub_1B4DC4F88(v41, v42, &state);

      *(v30 + 34) = v43;
      _os_log_impl(&dword_1B4DC2000, v28, v29, "[%{public}s] %{public}s ended in %fs -> %{public}s", v30, 0x2Au);
      v44 = v59;
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v44, -1, -1);
      v45 = v30;
LABEL_10:
      MEMORY[0x1B8C831D0](v45, -1, -1);

      goto LABEL_13;
    }

    (*(v15 + 8))(v22, v14);
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v46 = sub_1B4F67C54();
    __swift_project_value_buffer(v46, qword_1EDB70E18);
    (*(v15 + 16))(v26, a8, v14);

    v28 = sub_1B4F67C34();
    v47 = sub_1B4F685E4();

    if (os_log_type_enabled(v28, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      state.opaque[0] = v49;
      *v48 = 136446722;
      *(v48 + 4) = sub_1B4DC4F88(v60, a4, &state);
      *(v48 + 12) = 2082;
      v50 = sub_1B4F689D4();
      v52 = sub_1B4DC4F88(v50, v51, &state);

      *(v48 + 14) = v52;
      *(v48 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v54 = v53;
      v55 = *(v15 + 8);
      v55(v18, v14);
      v55(v26, v14);
      *(v48 + 24) = v54;
      _os_log_impl(&dword_1B4DC2000, v28, v47, "[%{public}s] %{public}s ended in %fs", v48, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v49, -1, -1);
      v45 = v48;
      goto LABEL_10;
    }

    (*(v15 + 8))(v26, v14);
  }

LABEL_13:
  v56 = *(v64 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v56 + 24));
  sub_1B4DDF3A4((v56 + 16));
  os_unfair_lock_unlock((v56 + 24));
  v57 = *(v65 + 40);
  os_unfair_lock_lock((v57 + 44));
  if (*(v57 + 40) == 1)
  {
    v58 = *(v57 + 16);
    state = *(v57 + 24);
    os_activity_scope_leave(&state);
    *(v57 + 24) = 0;
    *(v57 + 32) = 0;
    *(v57 + 16) = v58;
    *(v57 + 40) = 0;
  }

  os_unfair_lock_unlock((v57 + 44));
}

void sub_1B4E1A574(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F45B8, &qword_1B4F6CE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F45B8, &qword_1B4F6CE70);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}
uint64_t sub_1B4DDD9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityTracer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4DDDA20(unsigned __int8 *a1, double a2)
{
  if (*(v2 + 26))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | (*(v2 + 27) << 24);
  if (*(v2 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1B4DDD4EC(a1, *(v2 + 16), v4 | v5 | *(v2 + 24), a2);
}

void sub_1B4DDDA70(uint64_t a1, unsigned __int8 *a2, int a3, double a4)
{
  v5 = v4;
  v55 = a3;
  v8 = sub_1B4F67DA4();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 3);
  v56 = *a2;
  v15 = v5[6];
  *v13 = v15;
  v16 = *MEMORY[0x1E69E8020];
  v17 = *(v9 + 104);
  v17(v13, *MEMORY[0x1E69E8020], v8, v11);
  v18 = v15;
  LOBYTE(v15) = sub_1B4F67DC4();
  v19 = *(v9 + 8);
  (v19)(v13, v8);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_6;
  }

  v54 = v19;
  v53 = v14;
  if (v14 == 1)
  {

    v19 = 0;
  }

  else
  {
    v20 = sub_1B4F68D54();

    v19 = (v20 & 1) == 0;
  }

  if (qword_1EDB724A8 != -1)
  {
    goto LABEL_27;
  }

LABEL_6:
  v21 = sub_1B4F67C54();
  __swift_project_value_buffer(v21, qword_1EDB72490);
  swift_retain_n();
  v22 = sub_1B4F67C34();
  v23 = sub_1B4F685E4();
  if (!os_log_type_enabled(v22, v23))
  {

    goto LABEL_25;
  }

  v50 = v8;
  v51 = v17;
  v47 = v23;
  v48 = v22;
  v52 = v16;
  v24 = swift_slowAlloc();
  v46 = swift_slowAlloc();
  v57[0] = v46;
  *v24 = 136447234;
  v49 = v19;
  v25 = sub_1B4F65F14();
  v27 = sub_1B4DC4F88(v25, v26, v57);

  *(v24 + 4) = v27;
  *(v24 + 12) = 2082;
  if (v56)
  {
    v28 = 0x616C696176616E75;
  }

  else
  {
    v28 = 0x6C62616C69617661;
  }

  if (v56)
  {
    v29 = 0xEB00000000656C62;
  }

  else
  {
    v29 = 0xE900000000000065;
  }

  v30 = sub_1B4DC4F88(v28, v29, v57);

  *(v24 + 14) = v30;
  *(v24 + 22) = 2082;
  v31 = 0x6168636165726E75;
  if (v53 == 1)
  {
    v31 = 0x6C62616863616572;
    v32 = 0xE900000000000065;
  }

  else
  {
    v32 = 0xEB00000000656C62;
  }

  if (v53)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0x65526E6F69746361;
  }

  if (v53)
  {
    v34 = v32;
  }

  else
  {
    v34 = 0xEE00646572697571;
  }

  v35 = sub_1B4DC4F88(v33, v34, v57);

  *(v24 + 24) = v35;
  *(v24 + 32) = 1026;
  v36 = v5[4];
  v37 = *(v36 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_queue);
  *v13 = v37;
  v38 = v50;
  v51(v13, v52, v50);
  v39 = v37;
  LOBYTE(v35) = sub_1B4F67DC4();
  v54(v13, v38);
  if (v35)
  {
    v40 = *(*(v36 + OBJC_IVAR____TtC13SeymourClient14NetworkMonitor_wifiObserver) + OBJC_IVAR____TtC13SeymourClient12WiFiObserver_isEnabled);

    *(v24 + 34) = v40;

    *(v24 + 38) = 1026;
    *(v24 + 40) = v55 & 1;
    v41 = v48;
    _os_log_impl(&dword_1B4DC2000, v48, v47, "Cached network conditions updated\nNetwork conditions:%{public}s\nInterface availability: %{public}s\nNetwork status: %{public}s\nWi-Fi enabled: %{BOOL,public}d\nCellular availability:%{BOOL,public}d", v24, 0x2Cu);
    v42 = v46;
    swift_arrayDestroy();
    MEMORY[0x1B8C831D0](v42, -1, -1);
    MEMORY[0x1B8C831D0](v24, -1, -1);

    v19 = v49;
LABEL_25:
    v43 = v5[5];
    os_unfair_lock_lock(*(v43 + 16));
    sub_1B4DDE20C(v5, v19, v44);
    os_unfair_lock_unlock(*(v43 + 16));
    return;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v38 + 16));
  __break(1u);
}

uint64_t sub_1B4DDDF70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ActivityTracer(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_1B4DDD9BC(v7, a4);
}

uint64_t TransportDispatchService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ActivityTrace.init(identifier:dso:)(const char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if ((a3 & 1) == 0)
  {
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    *(v4 + 32) = a3;
    if (a1)
    {
      v7 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");
      v8 = _os_activity_create(a4, a1, v7, OS_ACTIVITY_FLAG_DEFAULT);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6550, &qword_1B4F78F60);
      v9 = swift_allocObject();
      *(v9 + 44) = 0;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0;
      *(v9 + 16) = v8;
      *(v9 + 40) = 0;
      *(v4 + 40) = v9;
      return v4;
    }

    __break(1u);
  }

  sub_1B4F689C4();
  sub_1B4F689D4();

  MEMORY[0x1B8C818C0](0xD000000000000026, 0x80000001B4F832A0);
  result = sub_1B4F68B24();
  __break(1u);
  return result;
}

uint64_t MachTimer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t StreamingKeyDeliveryClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDE20C(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  v5 = sub_1B4DF6DE8(*(a1 + 65), *(a1 + 66), a3);
  if (v5 == 2)
  {
    os_unfair_lock_assert_owner(*(*(a1 + 40) + 16));
    result = *(a1 + 64);
    if (result <= 1)
    {
      v7 = sub_1B4F65F14();
      v9 = v8;
      if (v7 != sub_1B4F65F14() || v9 != v10)
      {
        v12 = sub_1B4F68D54();

        *(a1 + 64) = v3;
        if ((v12 & 1) == 0)
        {
          v13 = *(a1 + 24);
          ObjectType = swift_getObjectType();
          v24 = v3;
          return (*(v13 + 8))(&v24, &type metadata for NetworkConditionsChanged, &protocol witness table for NetworkConditionsChanged, ObjectType, v13);
        }

        return result;
      }

      goto LABEL_17;
    }

LABEL_18:
    *(a1 + 64) = v3;
    return result;
  }

  v3 = v5 & 1;
  os_unfair_lock_assert_owner(*(*(a1 + 40) + 16));
  result = *(a1 + 64);
  if (result >= 2)
  {
    goto LABEL_18;
  }

  v15 = sub_1B4F65F14();
  v17 = v16;
  if (v15 == sub_1B4F65F14() && v17 == v18)
  {
LABEL_17:

    goto LABEL_18;
  }

  v20 = sub_1B4F68D54();

  *(a1 + 64) = v3;
  if ((v20 & 1) == 0)
  {
    v21 = *(a1 + 24);
    v22 = swift_getObjectType();
    v23 = v3;
    return (*(v21 + 8))(&v23, &type metadata for NetworkConditionsChanged, &protocol witness table for NetworkConditionsChanged, v22, v21);
  }

  return result;
}

uint64_t ActivityTracer.poster.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F67BD4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Signpost.init(identifier:signpostID:poster:telemetryEnabled:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = v6 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier;
  *v10 = a1;
  *(v10 + 8) = a2;
  *(v10 + 16) = a3;
  v11 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v12 = sub_1B4F67BA4();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v6 + v11, a4, v12);
  *(v6 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled) = a6;
  v14 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v15 = sub_1B4F67BD4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v6 + v14, a5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4200, &qword_1B4F6CC20);
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  (*(v16 + 8))(a5, v15);
  (*(v13 + 8))(a4, v12);
  *(v17 + 16) = 0;
  *(v6 + OBJC_IVAR____TtC13SeymourClient8Signpost_state) = v17;
  return v6;
}

void sub_1B4DDE5FC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6468, &qword_1B4F790C0);
    sub_1B4F682A4();
  }

  else
  {
    sub_1B4DD8804(0, &qword_1EDB6DA80, 0x1E696C370);
    sub_1B4DD8804(0, &unk_1EDB6DA58, 0x1E696C510);
    sub_1B4DD8D08();
    sub_1B4F67EF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6468, &qword_1B4F790C0);
    sub_1B4F682B4();
  }
}

uint64_t sub_1B4DDE718(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_1B4DDE758()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1B4ECDB60;
  }

  else
  {
    v2 = sub_1B4DDEC50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

Swift::Void __swiftcall Signpost.beginInterval()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDE6FC((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B4DDE8C8(uint64_t *a1, uint64_t a2)
{
  v5 = sub_1B4F67BA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v28 - v12;
  v17 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v28 - v16;
  if (!*a1)
  {
    v19 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled);
    v20 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier);
    v31 = v2;
    v32 = v20;
    v29 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier + 16);
    v21 = *(v6 + 16);
    v30 = v21;
    v22 = (a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID);
    if (v19 != 1)
    {
      goto LABEL_7;
    }

    (v21)(&v28 - v16, v22, v5, v17);
    v23 = sub_1B4F67BC4();
    v9 = sub_1B4F68704();
    if ((sub_1B4F68794() & 1) == 0)
    {
LABEL_11:
      v9 = v18;
      goto LABEL_23;
    }

    v28 = v23;
    if (v29)
    {
      if (v32 >> 32)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if ((v32 & 0xFFFFF800) == 0xD800)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v32 >> 16 > 0x10)
      {
        goto LABEL_27;
      }

      v32 = &v33;
    }

    else if (!v32)
    {
      __break(1u);
LABEL_7:
      v21(v9, v22, v5);
      v23 = sub_1B4F67BC4();
      v18 = sub_1B4F68704();
      if ((sub_1B4F68794() & 1) == 0)
      {
LABEL_23:

        v30(v13, v9, v5);
        sub_1B4F67C14();
        swift_allocObject();
        v27 = sub_1B4F67C04();
        (*(v6 + 8))(v9, v5);
        *a1 = v27;
        return;
      }

      v28 = v23;
      if ((v29 & 1) == 0)
      {
        if (!v32)
        {
          __break(1u);
          goto LABEL_11;
        }

        goto LABEL_21;
      }

      if (!(v32 >> 32))
      {
        if ((v32 & 0xFFFFF800) == 0xD800)
        {
LABEL_30:
          __break(1u);
          return;
        }

        if (v32 >> 16 <= 0x10)
        {
          v32 = &v34;
LABEL_21:
          v24 = swift_slowAlloc();
          *v24 = 0;
          v26 = sub_1B4F67B94();
          _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v28, v18, v26, v32, "", v24, 2u);
          goto LABEL_22;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_1B4F67B94();
    _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v28, v9, v25, v32, " enableTelemetry=YES ", v24, 2u);
    v9 = v18;
LABEL_22:
    MEMORY[0x1B8C831D0](v24, -1, -1);
    v23 = v28;
    goto LABEL_23;
  }
}

uint64_t sub_1B4DDEC50()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t static ActivityTracer.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB70E10 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  v3 = __swift_project_value_buffer(v2, qword_1EDB70E18);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B4DDED70(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B4DDEE70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1B4EB8278;
  }

  else
  {

    v4 = sub_1B4DDEF8C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4DDEF8C()
{
  v1 = sub_1B4DDF210(*(v0 + 112), *(v0 + 160));
  if (!v1)
  {
    v1 = [objc_opt_self() kilocalorieUnit];
  }

  v2 = v1;
  v3 = sub_1B4DDF210(*(v0 + 120), *(v0 + 160));
  if (!v3)
  {
    v3 = [objc_opt_self() kilocalorieUnit];
  }

  v4 = v3;
  v5 = sub_1B4DDF210(*(v0 + 128), *(v0 + 160));
  if (!v5)
  {
    v5 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  v6 = v5;
  v7 = sub_1B4DDF210(*(v0 + 136), *(v0 + 160));

  if (!v7)
  {
    v7 = [objc_opt_self() meterUnitWithMetricPrefix_];
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v8 = [v2 unitString];
  sub_1B4F67F74();

  v14 = v2;
  v9 = [v4 unitString];
  sub_1B4F67F74();

  v10 = [v6 unitString];
  sub_1B4F67F74();

  v11 = [v7 unitString];
  sub_1B4F67F74();

  sub_1B4F684B4();
  sub_1B4F65C04();

  v12 = *(v0 + 8);

  return v12();
}

void *sub_1B4DDF210(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1B4F68B14();

    if (v4)
    {
      sub_1B4DD8804(0, &unk_1EDB6DA58, 0x1E696C510);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_1B4DF4484(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_1B4DDF31C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

Swift::Void __swiftcall Signpost.endInterval()()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDF3A4((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1B4DDF41C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1B4F67BE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  v13 = sub_1B4F67BA4();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v22 = &v34 - v21;
  if (*a1)
  {
    v35 = v5;
    v36 = v4;
    v37 = v20;
    v38 = v19;
    *a1 = 0;
    v23 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_telemetryEnabled);
    v39 = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier);
    LOBYTE(a1) = *(a2 + OBJC_IVAR____TtC13SeymourClient8Signpost_identifier + 16);
    v24 = sub_1B4F67BC4();
    if (v23 != 1)
    {
      goto LABEL_7;
    }

    sub_1B4F67BF4();
    v16 = sub_1B4F686F4();
    v8 = v24;
    if ((sub_1B4F68794() & 1) == 0)
    {
LABEL_11:
      v16 = v22;
      v24 = v8;
      goto LABEL_29;
    }

    if (a1)
    {
      v25 = v35;
      a1 = v36;
      if (v39 >> 32)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if ((v39 & 0xFFFFF800) == 0xD800)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (v39 >> 16 > 0x10)
      {
        goto LABEL_33;
      }

      v39 = &v41;
    }

    else
    {
      v25 = v35;
      a1 = v36;
      if (!v39)
      {
        __break(1u);
LABEL_7:
        sub_1B4F67BF4();
        v26 = sub_1B4F686F4();
        if ((sub_1B4F68794() & 1) == 0)
        {
LABEL_29:

          (*(v37 + 8))(v16, v38);
          return;
        }

        if ((a1 & 1) == 0)
        {
          v27 = v36;
          if (!v39)
          {
            __break(1u);
            goto LABEL_11;
          }

          goto LABEL_22;
        }

        v27 = v36;
        if (!(v39 >> 32))
        {
          if ((v39 & 0xFFFFF800) == 0xD800)
          {
LABEL_36:
            __break(1u);
            return;
          }

          if (v39 >> 16 <= 0x10)
          {
            v39 = &v42;
LABEL_22:

            sub_1B4F67C24();

            v29 = v35;
            if ((*(v35 + 88))(v8, v27) == *MEMORY[0x1E69E93E8])
            {
              v30 = "[Error] Interval already ended";
            }

            else
            {
              (*(v29 + 8))(v8, v27);
              v30 = "";
            }

            v31 = swift_slowAlloc();
            *v31 = 0;
            v33 = sub_1B4F67B94();
            _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v24, v26, v33, v39, v30, v31, 2u);
LABEL_28:
            MEMORY[0x1B8C831D0](v31, -1, -1);
            goto LABEL_29;
          }

          goto LABEL_34;
        }

        goto LABEL_32;
      }
    }

    sub_1B4F67C24();

    if ((*(v25 + 88))(v12, a1) == *MEMORY[0x1E69E93E8])
    {
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v25 + 8))(v12, a1);
      v28 = " enableTelemetry=YES ";
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1B4F67B94();
    _os_signpost_emit_with_name_impl(&dword_1B4DC2000, v24, v16, v32, v39, v28, v31, 2u);
    v16 = v22;
    goto LABEL_28;
  }
}

uint64_t Signpost.__deallocating_deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v1 + 24));
  sub_1B4DDF3A4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = OBJC_IVAR____TtC13SeymourClient8Signpost_poster;
  v3 = sub_1B4F67BD4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13SeymourClient8Signpost_signpostID;
  v5 = sub_1B4F67BA4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t ActivityTrace.__deallocating_deinit()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 44));
  if (*(v1 + 40) == 1)
  {
    v2 = *(v1 + 16);
    v4 = *(v1 + 24);
    os_activity_scope_leave(&v4);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v2;
    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 44));

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDFA90@<X0>(_BYTE *a1@<X8>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a2, a3, a4);
  *a1 = result;
  return result;
}

uint64_t _sSb13SeymourClientE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B4F67F64();
  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_1B4F68894();
    swift_unknownObjectRelease();
    sub_1B4E2C940(&v9, v10);
    sub_1B4DDA43C(v10);
    v6 = sub_1B4F67F64();
    v7 = [a1 BOOLForKey_];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    sub_1B4DDA43C(v10);
    return 2;
  }

  return v7;
}

uint64_t sub_1B4DDFBA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return sub_1B4DDFC58(a1, v4);
}

uint64_t sub_1B4DDFC58(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B4DE14E4;

  return v6(a1);
}

uint64_t NetworkEvaluator.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B4DDFF44()
{

  sub_1B4F67CB4();

  sub_1B4DDC964(v0 + 16);
  sub_1B4DDFFB8(v0 + 32);

  return swift_deallocClassInstance();
}

id Error.sanitized()(uint64_t a1, __int128 *a2)
{
  v97 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v94 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v92[-v8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v92[-v12];
  v14 = *(sub_1B4F68E04() + 16);

  if (!v14)
  {
    v15 = sub_1B4F68DD4();
    if (!v15)
    {
      v80 = v97;
      (*(v97 + 16))(v13, v2, a1);
      v81 = sub_1B4F68D24();
      if (v81)
      {
        v82 = v81;
        (*(v80 + 8))(v13, a1);
      }

      else
      {
        v82 = swift_allocError();
        (*(v80 + 32))(v91, v13, a1);
      }

      return v82;
    }
  }

  v16 = sub_1B4F68E04();
  v100 = a2;
  v99 = v2;
  v17 = sub_1B4F68DD4();
  v18 = *MEMORY[0x1E696AA08];
  v101 = a1;
  v96 = v9;
  v103 = v18;
  if (v17)
  {
    v19 = sub_1B4F67F74();
    v21 = v20;
    swift_getErrorValue();
    v22 = Error.sanitized()(v106, v107);
    swift_getErrorValue();
    v23 = v104;
    v24 = v105;
    *(&v116[0] + 1) = v105;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v115);
    (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v23, v24);

    sub_1B4E2C940(&v115, &v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v110 = v16;
    v2 = &v110;
    sub_1B4E5E93C(&v112, v19, v21, isUniquelyReferenced_nonNull_native);

    v16 = v110;
  }

  v27 = (v16 + 64);
  v28 = 1 << *(v16 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v16 + 64);
  v31 = (v28 + 63) >> 6;
  v95 = *MEMORY[0x1E696A250];

  v98 = 0;
  v32 = 0;
  v102 = v16;
  if (!v30)
  {
LABEL_10:
    if (v31 <= v32 + 1)
    {
      v34 = v32 + 1;
    }

    else
    {
      v34 = v31;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {
        v30 = 0;
        v113 = 0u;
        v114 = 0u;
        v32 = v35;
        v112 = 0u;
        goto LABEL_19;
      }

      v30 = *&v27[8 * v33];
      ++v32;
      if (v30)
      {
        v32 = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_70:
    swift_allocError();
    (*(v31 + 32))(v83, v27, v30);
    goto LABEL_71;
  }

  while (1)
  {
    v33 = v32;
LABEL_18:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = v36 | (v33 << 6);
    v38 = (*(v16 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    sub_1B4DC4F2C(*(v16 + 56) + 32 * v37, &v110);
    *&v112 = v40;
    *(&v112 + 1) = v39;
    sub_1B4E2C940(&v110, &v113);

LABEL_19:
    v115 = v112;
    v116[0] = v113;
    v116[1] = v114;
    v41 = *(&v112 + 1);
    if (!*(&v112 + 1))
    {
      break;
    }

    v17 = v115;
    sub_1B4E2C940(v116, &v110);
    v42 = sub_1B4F67F74();
    v2 = v43;
    if (v17 == v42 && v43 == v41)
    {

LABEL_24:

      goto LABEL_25;
    }

    v44 = sub_1B4F68D54();

    if (v44)
    {
      goto LABEL_24;
    }

    sub_1B4DC4F2C(&v110, &v112);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A30, &qword_1B4F7AF80);
    v2 = MEMORY[0x1E69E7CA0];
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      sub_1B4DC4F2C(&v110, &v112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E00, &unk_1B4F7E020);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1B4DC4F2C(&v110, &v112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7A40, &qword_1B4F7AF88);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_1B4DC4F2C(&v110, v109);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6E10, &unk_1B4F7E030);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_24;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v112);
          v2 = v99;
          if (Error.isContainerSanitized(object:)(&v110, v101, v100))
          {
            goto LABEL_24;
          }
        }
      }
    }

    v45 = sub_1B4F68DF4();
    v47 = v46;
    if (v45 == sub_1B4F67F74() && v47 == v48)
    {

LABEL_35:
      *(&v113 + 1) = MEMORY[0x1E69E6158];
      *&v112 = 0x657070697274733CLL;
      *(&v112 + 1) = 0xEA00000000003E64;
      sub_1B4E2C940(&v112, v109);
      v49 = v102;
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v108 = v49;
      v51 = sub_1B4DF4344(v17, v41);
      isa = v49[2].isa;
      v53 = (v50 & 1) == 0;
      v54 = isa + v53;
      if (__OFADD__(isa, v53))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        result = sub_1B4F68DB4();
        __break(1u);
        return result;
      }

      if (v49[3].isa >= v54)
      {
        if (v98)
        {
          if ((v50 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          LODWORD(v102) = v50;
          sub_1B4E29614();
          if ((v102 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        LODWORD(v102) = v50;
        sub_1B4E27F34(v54, v98);
        v55 = sub_1B4DF4344(v17, v41);
        if ((v102 & 1) != (v56 & 1))
        {
          goto LABEL_79;
        }

        v51 = v55;
        if ((v102 & 1) == 0)
        {
LABEL_39:
          v2 = v108;
          v108[(v51 >> 6) + 8].isa = (v108[(v51 >> 6) + 8].isa | (1 << v51));
          v57 = (v2[6].isa + 16 * v51);
          *v57 = v17;
          v57[1] = v41;
          sub_1B4E2C940(v109, v2[7].isa + 2 * v51);
          v58 = v2[2].isa;
          v59 = __OFADD__(v58, 1);
          v60 = (v58 + 1);
          if (v59)
          {
            goto LABEL_76;
          }

          v102 = v2;
          v2[2].isa = v60;
          goto LABEL_44;
        }
      }

      v102 = v108;
      v2 = (v108[7].isa + 32 * v51);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      sub_1B4E2C940(v109, v2);
LABEL_44:
      v98 = 1;
      goto LABEL_25;
    }

    v93 = sub_1B4F68D54();

    if (v93)
    {
      goto LABEL_35;
    }

    *&v112 = 0;
    *(&v112 + 1) = 0xE000000000000000;
    __swift_project_boxed_opaque_existential_1(&v110, v111);
    sub_1B4F68D34();
    *(&v113 + 1) = MEMORY[0x1E69E6158];
    sub_1B4E2C940(&v112, v109);
    v61 = v102;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v61;
    v63 = sub_1B4DF4344(v17, v41);
    v65 = v61[2].isa;
    v66 = (v64 & 1) == 0;
    v59 = __OFADD__(v65, v66);
    v67 = v65 + v66;
    if (v59)
    {
      goto LABEL_77;
    }

    if (v61[3].isa >= v67)
    {
      if ((v62 & 1) == 0)
      {
        v102 = v63;
        v70 = v64;
        sub_1B4E29614();
        v63 = v102;
        if (v70)
        {
LABEL_54:
          v69 = v63;

          v102 = v108;
          v2 = (v108[7].isa + 32 * v69);
          __swift_destroy_boxed_opaque_existential_1Tm(v2);
          sub_1B4E2C940(v109, v2);
          goto LABEL_25;
        }

        goto LABEL_58;
      }
    }

    else
    {
      LODWORD(v102) = v64;
      sub_1B4E27F34(v67, v62);
      v63 = sub_1B4DF4344(v17, v41);
      v68 = v64 & 1;
      LOBYTE(v64) = v102;
      if ((v102 & 1) != v68)
      {
        goto LABEL_79;
      }
    }

    if (v64)
    {
      goto LABEL_54;
    }

LABEL_58:
    v2 = v108;
    v108[(v63 >> 6) + 8].isa = (v108[(v63 >> 6) + 8].isa | (1 << v63));
    v71 = (v2[6].isa + 16 * v63);
    *v71 = v17;
    v71[1] = v41;
    sub_1B4E2C940(v109, v2[7].isa + 2 * v63);
    v72 = v2[2].isa;
    v59 = __OFADD__(v72, 1);
    v73 = (v72 + 1);
    if (v59)
    {
      goto LABEL_78;
    }

    v102 = v2;
    v2[2].isa = v73;
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm(&v110);
    if (!v30)
    {
      goto LABEL_10;
    }
  }

  v30 = v101;
  v74 = v99;
  if ((v98 & 1) == 0)
  {
    goto LABEL_72;
  }

  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v75 = sub_1B4F67C54();
  __swift_project_value_buffer(v75, qword_1EDB72490);
  v31 = v97;
  v76 = *(v97 + 16);
  v77 = v96;
  v76(v96, v74, v30);
  v2 = sub_1B4F67C34();
  LOBYTE(v32) = sub_1B4F685C4();
  if (!os_log_type_enabled(v2, v32))
  {

    (*(v31 + 8))(v77, v30);
    goto LABEL_72;
  }

  v17 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  v79 = v77;
  v103 = v78;
  *v17 = 138412290;
  v27 = v94;
  v76(v94, v79, v30);
  if (!sub_1B4F68D24())
  {
    goto LABEL_70;
  }

  (*(v31 + 8))(v27, v30);
LABEL_71:
  v84 = _swift_stdlib_bridgeErrorToNSError();
  (*(v31 + 8))(v96, v30);
  *(v17 + 1) = v84;
  v85 = v103;
  *v103 = v84;
  _os_log_impl(&dword_1B4DC2000, v2, v32, "Found Errors from Core Data, original error before sanitization: %@", v17, 0xCu);
  sub_1B4DD2BC4(v85, &unk_1EB8F6DF0, &qword_1B4F79210);
  MEMORY[0x1B8C831D0](v85, -1, -1);
  MEMORY[0x1B8C831D0](v17, -1, -1);

LABEL_72:
  sub_1B4F68DF4();
  v86 = sub_1B4F68DE4();
  v87 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v88 = sub_1B4F67F64();

  v89 = sub_1B4F67EE4();

  v82 = [v87 initWithDomain:v88 code:v86 userInfo:v89];

  return v82;
}

void *ContentAvailabilityClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  v10 = type metadata accessor for XPCClient();
  swift_allocObject();
  v11 = sub_1B4DC42B8(v9, v7);

  v12 = *(v11 + 32);
  os_unfair_lock_lock(*(v12 + 16));
  if (*(v11 + 48) == 1)
  {
    *(v11 + 48) = 2;
    [*(v11 + 24) resume];
  }

  os_unfair_lock_unlock(*(v12 + 16));
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  v15 = sub_1B4DC6FFC(v11, a1, v14, v10, ObjectType, &protocol witness table for XPCClient, &protocol witness table for XPCClient, a2);

  return v15;
}

void *sub_1B4DE0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_1B4DC6FFC(a1, a2, v15, a4, a5, a6, a7, a8);
}

uint64_t type metadata accessor for ContentAvailabilityUpdated(uint64_t a1)
{
  result = qword_1EDB717D8;
  if (!qword_1EDB717D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4DE1044()
{
  result = qword_1EDB6DA80;
  if (!qword_1EDB6DA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB6DA80);
  }

  return result;
}

uint64_t sub_1B4DE1090()
{
  v1 = *v0;
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB72490);
  v3._countAndFlagsBits = 0xD00000000000002DLL;
  v3._object = 0x80000001B4F821B0;
  v4._object = 0x80000001B4F82230;
  v4._countAndFlagsBits = 0xD00000000000001ALL;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v10 = 118;
  v7 = *(v5 + 24);
  v8 = sub_1B4F66184();
  return v7(&v10, v8, MEMORY[0x1E69CBF20], MEMORY[0x1E69CBF28], ObjectType, v5);
}

uint64_t StorefrontCache.queryContentAvailability()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75C8, &qword_1B4F7CC60);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_1B4F67F64();
  v8 = [v6 stringForKey_];

  if (!v8)
  {
    goto LABEL_4;
  }

  sub_1B4F67F74();

  sub_1B4F66164();
  v9 = sub_1B4F66184();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_1B4F42E40(v5);
LABEL_4:
    v11 = *MEMORY[0x1E69CBF10];
    v12 = sub_1B4F66184();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  return (*(v10 + 32))(a1, v5, v9);
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t sub_1B4DE13F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4DE14E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B4DE15DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1B4DE1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29 = a7;
  v30 = a8;
  v32 = a4;
  v33 = a9;
  v31 = a3;
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v27 = a10;
  v28 = a11;
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v16 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v17;
  (*(v13 + 16))(v16, v15);
  v19 = (*(v13 + 80) + 64) & ~*(v13 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 9) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a5;
  *(v22 + 3) = a6;
  v23 = v30;
  *(v22 + 4) = v29;
  *(v22 + 5) = v23;
  v24 = v28;
  *(v22 + 6) = v27;
  *(v22 + 7) = v24;
  (*(v13 + 32))(&v22[v19], v16, a5);
  *&v22[v20] = v18;
  *&v22[v21] = v31;
  *&v22[(v21 + 9) & 0xFFFFFFFFFFFFFFF8] = v32;
  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

uint64_t sub_1B4DE17CC()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1B4DE1878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = (*(*(v2[2] - 8) + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL;
  return sub_1B4DE1628(a1, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), v2[2], v2[3], v2[4], v2[5], a2, v2[6], v2[7]);
}

void sub_1B4DE1914(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(v2[2] - 8) + 80) + 64) & ~*(*(v2[2] - 8) + 80);
  v4 = (*(*(v2[2] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4DE19C0(a1, a2, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8)), v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
}

void sub_1B4DE19C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = sub_1B4F66E04();
  v17 = v16;
  sub_1B4DD3014(v15, v16);
  v18 = sub_1B4F64884();
  sub_1B4DD2B70(v15, v17);
  v19 = qword_1B4F71988[a5];
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a8;
  v21[4] = a9;
  v21[5] = a10;
  v21[6] = a11;
  v21[7] = a12;
  v21[8] = v20;
  v21[9] = a1;
  v21[10] = a2;
  aBlock[4] = sub_1B4E56590;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B4E54930;
  aBlock[3] = &block_descriptor_1;
  v22 = _Block_copy(aBlock);

  [a4 receiveRequest:v19 data:v18 completion:v22];
  sub_1B4DD2B5C(v15, v17);
  _Block_release(v22);
}

uint64_t sub_1B4DE1B9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

unint64_t sub_1B4DE1BDC()
{
  result = qword_1EDB70118;
  if (!qword_1EDB70118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB70118);
  }

  return result;
}

uint64_t sub_1B4DE1C28(uint64_t a1)
{
  result = sub_1B4F668C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DE1C94(uint64_t a1)
{
  result = sub_1B4F66624();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static Promise<>.parallel(queue:maxConcurrent:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v35 = &v30 - v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = "SeymourClient/PromiseConcurrency.swift";
  *(v17 + 24) = 38;
  *(v17 + 32) = 2;
  *(v17 + 40) = 36;
  *(v17 + 48) = &unk_1B4F73850;
  *(v17 + 56) = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54F0, &qword_1B4F73858);
  v31 = v12;
  sub_1B4F675F4();
  v34 = *(v5 + 16);
  v34(v8, v12, v4);
  v18 = *(v5 + 80);
  v33 = (v18 + 16) & ~v18;
  v19 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v32 = *(v5 + 32);
  v32(v20 + ((v18 + 16) & ~v18), v8, v4);
  v21 = v36;
  *(v20 + v19) = v36;
  v22 = v21;
  v23 = v35;
  sub_1B4F675F4();
  v24 = *(v5 + 8);
  v25 = v31;
  v24(v31, v4);
  v26 = swift_allocObject();
  *(v26 + 16) = nullsub_1;
  *(v26 + 24) = 0;
  v34(v25, v23, v4);
  v27 = swift_allocObject();
  v32(v27 + v33, v25, v4);
  v28 = (v27 + v19);
  *v28 = sub_1B4DE2BC8;
  v28[1] = v26;
  sub_1B4F675F4();
  return (v24)(v23, v4);
}

uint64_t sub_1B4DE2074()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DE20AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DE20E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B4DE2190()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE21CC(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4570, &qword_1B4F6CE20) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1B4DE236C(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1B4DE2288(uint64_t a1)
{
  result = sub_1B4F673D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4DE22F8(uint64_t a1)
{
  result = sub_1B4F679A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AchievementClient.populateAchievementProgressUpdates(forTemplateNames:)(uint64_t a1)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB72490);
  v4._object = 0x80000001B4F85470;
  v5._countAndFlagsBits = 0xD000000000000035;
  v5._object = 0x80000001B4F854E0;
  v4._countAndFlagsBits = 0xD000000000000025;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 299;
  v13 = a1;
  v8 = *(v6 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F52A8, &qword_1B4F72730);
  v10 = sub_1B4DE24F8();
  v11 = sub_1B4E594C8();
  return v8(&v14, &v13, v9, v10, v11, ObjectType, v6);
}

unint64_t sub_1B4DE24F8()
{
  result = qword_1EDB70150;
  if (!qword_1EDB70150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F52A8, &qword_1B4F72730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70150);
  }

  return result;
}

uint64_t sub_1B4DE2578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v23 = a6;
  v24 = a7;
  v25 = a3;
  v26 = a8;
  v10 = *(a5 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  (*(v10 + 16))(v13, v12);
  v16 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 9) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v21 = v23;
  v20 = v24;
  *(v19 + 2) = a5;
  *(v19 + 3) = v21;
  *(v19 + 4) = v20;
  (*(v10 + 32))(&v19[v16], v13, a5);
  *&v19[v17] = v15;
  *&v19[v18] = v25;
  *&v19[(v18 + 9) & 0xFFFFFFFFFFFFFFF8] = a4;
  swift_unknownObjectRetain();

  return sub_1B4F675F4();
}

uint64_t sub_1B4DE2710()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1B4DE27BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  v4 = (*(*(v2[2] - 8) + 64) + v3 + 1) & 0xFFFFFFFFFFFFFFFELL;
  return sub_1B4DE2578(a1, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), v2[2], v2[3], v2[4], a2);
}

void sub_1B4DE2834(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = (*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B4DCF3B4(a1, a2, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v4 + 9) & 0xFFFFFFFFFFFFFFF8) + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + 16), *(v2 + 24));
}

char *sub_1B4DE28D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5800, &qword_1B4F73F78);
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

void sub_1B4DE29E4(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v22 - v14;
  v22 = a1;
  if (a2)
  {
    v23 = 1;
    v16 = a1;
    a5(&v22);
    v17 = MEMORY[0x1E69E7CF8];
    v18 = a1;
    v19 = 1;
  }

  else
  {

    a3(&v22);
    v20 = sub_1B4F67654();
    v21 = swift_allocObject();
    *(v21 + 16) = a5;
    *(v21 + 24) = a6;

    v20(sub_1B4DDDFD0, v21);

    (*(v12 + 8))(v15, v11);
    v17 = MEMORY[0x1E69E7CF8];
    v18 = a1;
    v19 = 0;
  }

  sub_1B4DDACF4(v18, v19, v17);
}

uint64_t sub_1B4DE2BD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_1B4F675F4();
}

uint64_t sub_1B4DE2C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B4DE2CC0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_1B4DDC730(v6, 0);
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 8))();
  v4 = sub_1B4F687D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

void sub_1B4DE2DF0(void *a1@<X0>, uint64_t *a4@<X8>)
{
  v6 = sub_1B4F67F64();
  v7 = [a1 stringForKey_];

  if (v7)
  {
    v8 = sub_1B4F67F74();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a4 = v8;
  a4[1] = v10;
}

uint64_t sub_1B4DE2E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E8, &qword_1B4F6D0C0);
    v3 = sub_1B4F68994();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1B4F68E84();
      MEMORY[0x1B8C82740](v10);
      result = sub_1B4F68EC4();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t Platform.supportedFeatures.getter(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = &unk_1F2CD4228;
    }

    else
    {
      v4 = &unk_1F2CD4258;
    }

    return sub_1B4DE2E78(v4);
  }

  if (a1)
  {
    v4 = &unk_1F2CD41E8;

    return sub_1B4DE2E78(v4);
  }

  v2 = sub_1B4DE2E78(&unk_1F2CD4178);

  return sub_1B4E45848(&unk_1F2CD41C0, v2);
}

uint64_t sub_1B4DE3054(uint64_t a1)
{
  v2 = *v1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v2);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4DE30B4(uint64_t a1)
{
  result = a1 - 1;
  if (result >= 3)
  {
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4F67C54();
    __swift_project_value_buffer(v2, qword_1EDB72490);
    v3 = sub_1B4F67C34();
    v4 = sub_1B4F685D4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B4DC2000, v3, v4, "### HKFitnessMode not handled", v5, 2u);
      MEMORY[0x1B8C831D0](v5, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_1B4DE31D8()
{
  result = qword_1EDB6F220[0];
  if (!qword_1EDB6F220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB6F220);
  }

  return result;
}

uint64_t sub_1B4DE322C(uint64_t a1)
{
  sub_1B4DE3280();
  sub_1B4DC53AC();
  return sub_1B4F68124();
}

unint64_t sub_1B4DE3280()
{
  result = qword_1EDB6F218;
  if (!qword_1EDB6F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6F218);
  }

  return result;
}

void sub_1B4DE32D4(uint64_t *a1@<X8>)
{
  v2 = 0xEB00000000686374;
  v3 = *v1;
  v4 = 0xE900000000000073;
  v5 = 0x73656C6863746177;
  if (v3 != 1)
  {
    v5 = 0x615765746F6D6572;
    v4 = 0xEB00000000686374;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6157646572696170;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1B4DE3360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B4DE0D94;

  return sub_1B4DDFC58(a1, v4);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroy_16Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B4DE34F0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1B8C831F0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1B8C831F0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *AchievementProgressEnvironment.init(cache:activePlanCompletedNumberOfWorkouts:activePlanTotalNumberOfWorkouts:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5588, &qword_1B4F7CFB0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v63 = &v62 - v7;
  *&v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_bestEnergyBurnedOfWorkoutModality] = 0;
  v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_isSessionGuided] = 0;
  v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_isSessionCompletingProgram] = 0;
  v8 = &v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_modalityIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0xE000000000000000;
  *&v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_sessionDuration] = 0;
  v67 = v3;
  v68 = a1;
  *&v3[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_sessionEnergyBurned] = 0;
  v9 = sub_1B4F66F44();
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F76E0, &qword_1B4F7CFB8);
  result = sub_1B4F68B94();
  v11 = result;
  v12 = 0;
  v13 = *(v9 + 64);
  v70 = result;
  v71 = v9;
  v14 = 1 << *(v9 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v69 = result + 8;
  if ((v15 & v13) != 0)
  {
    do
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_10:
      v21 = v18 | (v12 << 6);
      v22 = (v71[6] + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v71[7] + 8 * v21);
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);

      result = [v26 initWithInteger_];
      v11 = v70;
      *(v69 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (v11[6] + 16 * v21);
      *v27 = v23;
      v27[1] = v24;
      *(v11[7] + 8 * v21) = result;
      v28 = v11[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v11[2] = v30;
    }

    while (v16);
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v12 >= v17)
    {
      break;
    }

    v20 = *(v9 + 64 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v16 = (v20 - 1) & v20;
      goto LABEL_10;
    }
  }

  *&v67[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_numberOfWorkoutsOver5MinutesForModalities] = v11;
  v31 = sub_1B4F66F64();
  result = sub_1B4F68B94();
  v32 = 0;
  v70 = v31;
  v71 = result;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v31 + 64;
  v36 = v34 & *(v31 + 64);
  v37 = (v33 + 63) >> 6;
  v69 = result + 8;
  if (!v36)
  {
LABEL_17:
    v39 = v32;
    while (1)
    {
      v32 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_30;
      }

      if (v32 >= v37)
      {

        v51 = v67;
        *&v67[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_numberOfGuidedWorkoutsOver5MinutesForModalities] = v71;
        *&v51[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_numberOfWorkoutsOver5Minutes] = sub_1B4F66F24();
        v52 = v63;
        sub_1B4F66F04();
        v53 = sub_1B4F666E4();
        v54 = *(v53 - 8);
        if ((*(v54 + 48))(v52, 1, v53) == 1)
        {
          sub_1B4DE3A9C(v52);
          v55 = 0;
        }

        else
        {
          v55 = sub_1B4F666D4();
          (*(v54 + 8))(v52, v53);
        }

        v57 = v67;
        v56 = v68;
        *&v67[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_currentWeeklyStreak] = v55;
        *&v57[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_longestWeeklyStreak] = sub_1B4F66F14();
        v58 = v65;
        *&v57[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_currentPlanCompletedNumberOfWorkouts] = v64;
        *&v57[OBJC_IVAR____TtC13SeymourClient30AchievementProgressEnvironment_currentPlanTotalNumberOfWorkouts] = v58;
        v59 = type metadata accessor for AchievementProgressEnvironment();
        v72.receiver = v57;
        v72.super_class = v59;
        v60 = objc_msgSendSuper2(&v72, sel_init);
        v61 = sub_1B4F66F74();
        (*(*(v61 - 8) + 8))(v56, v61);
        return v60;
      }

      v40 = *(v35 + 8 * v32);
      ++v39;
      if (v40)
      {
        v38 = __clz(__rbit64(v40));
        v36 = (v40 - 1) & v40;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v38 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
LABEL_22:
    v41 = v38 | (v32 << 6);
    v42 = (v70[6] + 16 * v41);
    v43 = *v42;
    v44 = v42[1];
    v45 = *(v70[7] + 8 * v41);
    v46 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    result = [v46 initWithInteger_];
    *(v69 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v47 = v71;
    v48 = (v71[6] + 16 * v41);
    *v48 = v43;
    v48[1] = v44;
    *(v47[7] + 8 * v41) = result;
    v49 = v47[2];
    v29 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v29)
    {
      break;
    }

    v71[2] = v50;
    if (!v36)
    {
      goto LABEL_17;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B4DE3A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5588, &qword_1B4F7CFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B4DE3B04(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t type metadata accessor for SessionTerminated(uint64_t a1)
{
  result = qword_1EDB70C10;
  if (!qword_1EDB70C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DE3C64(uint64_t a1)
{
  result = sub_1B4F64E44();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

CNContact_optional __swiftcall ContactService.userContact(keys:)(Swift::OpaquePointer keys)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1B4DE3FB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6250, &unk_1B4F7C970);
  v2 = sub_1B4F681B4();
  v18[0] = 0;
  v3 = [v1 smu:v2 meContactWithKeysToFetch:v18 error:?];

  v4 = v18[0];
  if (!v3)
  {
    v6 = v4;
    v7 = sub_1B4F647C4();

    swift_willThrow();
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4F67C54();
    __swift_project_value_buffer(v8, qword_1EDB72490);
    v9 = v7;
    v10 = sub_1B4F67C34();
    v11 = sub_1B4F685E4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = MEMORY[0x1B8C826C0]();
      v16 = sub_1B4DC4F88(v14, v15, v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1B4DC2000, v10, v11, "[ContactService] Failed fetching user contact: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1B8C831D0](v13, -1, -1);
      MEMORY[0x1B8C831D0](v12, -1, -1);
    }

    else
    {
    }

    v3 = 0;
  }

  v17 = v3;
  result.value.super.isa = v17;
  result.is_nil = v5;
  return result;
}

uint64_t MetricClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PrivacyPreferenceClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B4DE3FB4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t ServiceSubscriptionClient.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1B4DE40CC(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);
  v4 = sub_1B4F67F74();
  if (*(v3 + 16))
  {
    v6 = sub_1B4DF4344(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v3 + 56) + 8 * v6);

      return v9;
    }
  }

  else
  {
  }

  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v11 initWithInteger_];
}

unint64_t PersonalizationCatalogWorkoutReference.init(_:with:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B4F647A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v162 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1B4F649F4();
  v161 = *(v163 - 1);
  MEMORY[0x1EEE9AC00](v163, v11);
  v13 = v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v144 - v16;
  v18 = sub_1B4F64964();
  v159 = *(v18 - 8);
  v160 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v164 = v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B4F66784();
  v23 = HIBYTE(v22) & 0xF;
  v24 = result & 0xFFFFFFFFFFFFLL;
  if ((v22 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v22) & 0xF;
  }

  else
  {
    v25 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
LABEL_146:

    goto LABEL_148;
  }

  v157 = v8;
  v158 = v7;
  if ((v22 & 0x1000000000000000) != 0)
  {
    LOBYTE(v170) = 0;
    v27 = sub_1B4F407B4(result, v22, 10);

    if ((v27 & 0x100000000) != 0)
    {
      goto LABEL_148;
    }

    goto LABEL_63;
  }

  if ((v22 & 0x2000000000000000) != 0)
  {
    v173 = result;
    v174 = v22 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v23)
      {
        v24 = v23 - 1;
        if (v23 != 1)
        {
          LODWORD(v27) = 0;
          v37 = &v173 + 1;
          while (1)
          {
            v38 = *v37 - 48;
            if (v38 > 9)
            {
              break;
            }

            v39 = 10 * v27;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              break;
            }

            v27 = v39 + v38;
            if (__CFADD__(v39, v38))
            {
              break;
            }

            ++v37;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_153:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v23)
      {
        LODWORD(v27) = 0;
        v42 = &v173;
        while (1)
        {
          v43 = *v42 - 48;
          if (v43 > 9)
          {
            break;
          }

          v44 = 10 * v27;
          if ((v44 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v27 = v44 + v43;
          if (__CFADD__(v44, v43))
          {
            break;
          }

          v42 = (v42 + 1);
          if (!--v23)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v23)
    {
      v24 = v23 - 1;
      if (v23 != 1)
      {
        LODWORD(v27) = 0;
        v31 = &v173 + 1;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v27;
          if ((v33 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          v27 = v33 - v32;
          if (v33 < v32)
          {
            break;
          }

          ++v31;
          if (!--v24)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_151;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v22 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_1B4F68A34();
    v24 = v143;
  }

  v26 = *result;
  if (v26 == 43)
  {
    if (v24 >= 1)
    {
      if (--v24)
      {
        v27 = 0;
        if (result)
        {
          v34 = (result + 1);
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              goto LABEL_61;
            }

            v36 = 10 * v27;
            if ((v36 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            v27 = v36 + v35;
            if (__CFADD__(v36, v35))
            {
              goto LABEL_61;
            }

            ++v34;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_152;
  }

  if (v26 == 45)
  {
    if (v24 >= 1)
    {
      if (--v24)
      {
        v27 = 0;
        if (result)
        {
          v28 = (result + 1);
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              goto LABEL_61;
            }

            v30 = 10 * v27;
            if ((v30 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            v27 = v30 - v29;
            if (v30 < v29)
            {
              goto LABEL_61;
            }

            ++v28;
            if (!--v24)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v24) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  if (v24)
  {
    v27 = 0;
    if (result)
    {
      while (1)
      {
        v40 = *result - 48;
        if (v40 > 9)
        {
          goto LABEL_61;
        }

        v41 = 10 * v27;
        if ((v41 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_61;
        }

        v27 = v41 + v40;
        if (__CFADD__(v41, v40))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v24)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v27 = 0;
  LOBYTE(v24) = 1;
LABEL_62:
  LOBYTE(v170) = v24;
  v45 = v24;

  if (v45)
  {
LABEL_148:
    v140 = sub_1B4F66224();
    sub_1B4F40D30();
    swift_allocError();
    (*(*(v140 - 8) + 104))(v141, *MEMORY[0x1E69CBF58], v140);
    swift_willThrow();

    v142 = sub_1B4F66874();
    return (*(*(v142 - 8) + 8))(a1, v142);
  }

LABEL_63:
  v46 = sub_1B4F667C4();
  v48 = sub_1B4DE5060(v46, v47);
  if ((v48 & 0x100000000) != 0)
  {
    goto LABEL_148;
  }

  v150 = v48;
  v151 = v27;
  v152 = a3;
  v153 = a2;
  v154 = v3;
  v49 = sub_1B4F66864();
  v51 = v50;
  v170 = v49;
  v171 = v50;
  v53 = v52 & 1;
  v172 = v52 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F75B0, &unk_1B4F7CC10);
  sub_1B4F65024();
  sub_1B4DE5390(v49, v51, v53);
  v166 = v168;
  v167 = v169;
  sub_1B4DE533C();
  sub_1B4F65034();
  v149 = v173;
  v148 = v174;
  v147 = v175;
  v165 = a1;
  v54 = sub_1B4F667F4();
  a2 = 0;
  a1 = *(v54 + 16);
  v156 = MEMORY[0x1E69E7CC0];
LABEL_65:
  v55 = (v54 + 40 + 16 * a2);
  while (a1 != a2)
  {
    if (a2 >= *(v54 + 16))
    {
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
      goto LABEL_146;
    }

    a2 = (a2 + 1);
    v56 = v55 + 2;
    v58 = *(v55 - 1);
    v57 = *v55;

    v59 = sub_1B4DE5060(v58, v57);
    v55 = v56;
    if ((v59 & 0x100000000) == 0)
    {
      v60 = v59;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_1B4DE53A0(0, *(v156 + 2) + 1, 1, v156);
      }

      v62 = *(v156 + 2);
      v61 = *(v156 + 3);
      if (v62 >= v61 >> 1)
      {
        v156 = sub_1B4DE53A0((v61 > 1), v62 + 1, 1, v156);
      }

      v63 = v156;
      *(v156 + 2) = v62 + 1;
      *&v63[4 * v62 + 32] = v60;
      goto LABEL_65;
    }
  }

  v146 = sub_1B4F667A4();
  v145 = v64;
  v144[3] = v65;
  v66 = sub_1B4F66834();
  a2 = 0;
  v67 = *(v66 + 16);
  a1 = v66 + 40;
  v155 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v68 = (a1 + 16 * a2);
  while (v67 != a2)
  {
    if (a2 >= *(v66 + 16))
    {
      goto LABEL_140;
    }

    a2 = (a2 + 1);
    v69 = v68 + 2;
    v71 = *(v68 - 1);
    v70 = *v68;

    v72 = sub_1B4DE5060(v71, v70);
    v68 = v69;
    if ((v72 & 0x100000000) == 0)
    {
      v73 = v72;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v155 = sub_1B4DE53A0(0, *(v155 + 2) + 1, 1, v155);
      }

      v75 = *(v155 + 2);
      v74 = *(v155 + 3);
      if (v75 >= v74 >> 1)
      {
        v155 = sub_1B4DE53A0((v74 > 1), v75 + 1, 1, v155);
      }

      v76 = v155;
      *(v155 + 2) = v75 + 1;
      *&v76[4 * v75 + 32] = v73;
      goto LABEL_75;
    }
  }

  sub_1B4F649B4();
  v77 = v162;
  sub_1B4F66794();
  sub_1B4F649C4();
  (*(v157 + 8))(v77, v158);
  (*(v161 + 8))(v13, v163);
  a1 = v159;
  v78 = v160;
  v79 = *(v159 + 48);
  if (v79(v17, 1, v160) == 1)
  {
    sub_1B4F64944();
    if (v79(v17, 1, v78) != 1)
    {
      sub_1B4E5ECFC(v17);
    }
  }

  else
  {
    v80 = *(a1 + 32);
    a1 += 32;
    v80(v164, v17, v78);
  }

  sub_1B4F66854();
  v81 = sub_1B4F66804();
  v82 = 0;
  v83 = *(v81 + 16);
  a2 = (v81 + 40);
  v84 = MEMORY[0x1E69E7CC0];
LABEL_89:
  v85 = &a2[2 * v82];
  while (v83 != v82)
  {
    if (v82 >= *(v81 + 16))
    {
      goto LABEL_141;
    }

    ++v82;
    v86 = v85 + 2;
    a1 = *(v85 - 1);
    v87 = *v85;

    v88 = sub_1B4DE5060(a1, v87);
    v85 = v86;
    if ((v88 & 0x100000000) == 0)
    {
      v89 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1B4DE53A0(0, *(v84 + 2) + 1, 1, v84);
      }

      v91 = *(v84 + 2);
      v90 = *(v84 + 3);
      a1 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        v84 = sub_1B4DE53A0((v90 > 1), v91 + 1, 1, v84);
      }

      *(v84 + 2) = a1;
      *&v84[4 * v91 + 32] = v89;
      goto LABEL_89;
    }
  }

  v92 = sub_1B4F66814();
  a2 = 0;
  v93 = *(v92 + 16);
  a1 = v92 + 40;
  v163 = MEMORY[0x1E69E7CC0];
LABEL_99:
  v94 = (a1 + 16 * a2);
  while (v93 != a2)
  {
    if (a2 >= *(v92 + 16))
    {
      goto LABEL_142;
    }

    a2 = (a2 + 1);
    v95 = v94 + 2;
    v97 = *(v94 - 1);
    v96 = *v94;

    v98 = sub_1B4DE5060(v97, v96);
    v94 = v95;
    if ((v98 & 0x100000000) == 0)
    {
      v99 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v163 = sub_1B4DE53A0(0, *(v163 + 2) + 1, 1, v163);
      }

      v101 = *(v163 + 2);
      v100 = *(v163 + 3);
      if (v101 >= v100 >> 1)
      {
        v163 = sub_1B4DE53A0((v100 > 1), v101 + 1, 1, v163);
      }

      v102 = v163;
      *(v163 + 2) = v101 + 1;
      *&v102[4 * v101 + 32] = v99;
      goto LABEL_99;
    }
  }

  v162 = v84;

  v103 = sub_1B4F66824();
  v104 = 0;
  v105 = *(v103 + 16);
  a1 = v103 + 40;
  v106 = MEMORY[0x1E69E7CC0];
LABEL_109:
  v107 = (a1 + 16 * v104);
  while (v105 != v104)
  {
    if (v104 >= *(v103 + 16))
    {
      goto LABEL_143;
    }

    ++v104;
    v108 = v107 + 2;
    a2 = *(v107 - 1);
    v109 = *v107;

    v110 = sub_1B4DE5060(a2, v109);
    v107 = v108;
    if ((v110 & 0x100000000) == 0)
    {
      v111 = v110;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_1B4DE53A0(0, *(v106 + 2) + 1, 1, v106);
      }

      v113 = *(v106 + 2);
      v112 = *(v106 + 3);
      a2 = (v113 + 1);
      if (v113 >= v112 >> 1)
      {
        v106 = sub_1B4DE53A0((v112 > 1), v113 + 1, 1, v106);
      }

      *(v106 + 2) = a2;
      *&v106[4 * v113 + 32] = v111;
      goto LABEL_109;
    }
  }

  v114 = sub_1B4F667B4();
  v115 = 0;
  v116 = *(v114 + 16);
  a1 = v114 + 40;
  a2 = MEMORY[0x1E69E7CC0];
LABEL_119:
  v117 = (a1 + 16 * v115);
  while (v116 != v115)
  {
    if (v115 >= *(v114 + 16))
    {
      goto LABEL_144;
    }

    ++v115;
    v118 = v117 + 2;
    v120 = *(v117 - 1);
    v119 = *v117;

    v121 = sub_1B4DE5060(v120, v119);
    v117 = v118;
    if ((v121 & 0x100000000) == 0)
    {
      v122 = v121;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = sub_1B4DE53A0(0, a2[2] + 1, 1, a2);
      }

      v124 = a2[2];
      v123 = a2[3];
      if (v124 >= v123 >> 1)
      {
        a2 = sub_1B4DE53A0((v123 > 1), v124 + 1, 1, a2);
      }

      a2[2] = v124 + 1;
      *(a2 + v124 + 8) = v122;
      goto LABEL_119;
    }
  }

  v125 = sub_1B4F667D4();
  v126 = 0;
  a1 = *(v125 + 16);
  v127 = v125 + 40;
  v128 = MEMORY[0x1E69E7CC0];
LABEL_129:
  v129 = (v127 + 16 * v126);
  while (a1 != v126)
  {
    if (v126 >= *(v125 + 16))
    {
      goto LABEL_145;
    }

    ++v126;
    v130 = v129 + 2;
    v132 = *(v129 - 1);
    v131 = *v129;

    v133 = sub_1B4DE5060(v132, v131);
    v129 = v130;
    if ((v133 & 0x100000000) == 0)
    {
      v161 = v127;
      v134 = v133;
      v135 = v106;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_1B4DE53A0(0, *(v128 + 2) + 1, 1, v128);
      }

      v137 = *(v128 + 2);
      v136 = *(v128 + 3);
      if (v137 >= v136 >> 1)
      {
        v128 = sub_1B4DE53A0((v136 > 1), v137 + 1, 1, v128);
      }

      *(v128 + 2) = v137 + 1;
      *&v128[4 * v137 + 32] = v134;
      v106 = v135;
      v127 = v161;
      goto LABEL_129;
    }
  }

  v138 = v165;
  sub_1B4F66844();
  sub_1B4F67564();

  v139 = sub_1B4F66874();
  return (*(*(v139 - 8) + 8))(v138, v139);
}

unint64_t sub_1B4DE5060(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B4F407B4(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B4F68A34();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t sub_1B4DE533C()
{
  result = qword_1EDB70028;
  if (!qword_1EDB70028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70028);
  }

  return result;
}

uint64_t sub_1B4DE5390(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

char *sub_1B4DE53A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F56B0, &qword_1B4F73EE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_1B4DE54E4(char a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v13 = *(*v7 + 24);
  ObjectType = swift_getObjectType();
  v19 = a4;
  v18 = a1;
  v15 = *(v13 + 32);
  v16 = a5(0);
  return v15(&v19, &v18, MEMORY[0x1E69E6370], v16, MEMORY[0x1E69CD480], MEMORY[0x1E69CD488], a6, a7, ObjectType, v13);
}

uint64_t sub_1B4DE55C4(char a1)
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
  v6._object = 0x80000001B4F7FD00;
  v6._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v11 = 155;
  v10 = a1;
  return (*(v7 + 32))(&v11, &v10, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v7);
}

uint64_t sub_1B4DE56FC(char a1)
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
  v6._object = 0x80000001B4F7FD20;
  v6._countAndFlagsBits = 0xD00000000000001BLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v11 = 156;
  v10 = a1;
  return (*(v7 + 32))(&v11, &v10, MEMORY[0x1E69CB078], MEMORY[0x1E69E6158], MEMORY[0x1E69CB068], MEMORY[0x1E69CB070], MEMORY[0x1E69CD450], MEMORY[0x1E69CD458], ObjectType, v7);
}

BOOL ServiceSubscription.isSubscribed(date:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F54A0, &qword_1B4F730F8);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v14 - v2;
  v4 = sub_1B4F64964();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B4F66284() & 1) != 0 || (sub_1B4F66264() & 1) != 0 || (sub_1B4F66254())
  {
    return 1;
  }

  sub_1B4F66234();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B4E5ECFC(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_1B4F648A4();
    v11 = v10;
    sub_1B4F648A4();
    v13 = v12;
    (*(v5 + 8))(v8, v4);
    return v13 < v11;
  }
}

uint64_t sub_1B4DE59E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65E64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE5A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65E64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE5ABC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B4DE5B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F668C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE5B78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F668C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE5BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64E44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE5C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64E44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE626C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1B4DE62B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66B74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6320(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66B74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6390(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE63FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE676C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE67DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66BB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66BB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE68B8()
{
  sub_1B4DE5390(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1B4DE68F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DE69B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67194();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67194();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6A90()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DE6ACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65DB4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65DB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE6C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE6C84()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE6CC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = sub_1B4F67674();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_1B4DE6D34(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B4F67674();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1B4DE6DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65184();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DE6E68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65184();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DE6F24()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE6F5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DE6F9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DE6FD4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B4DE70A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DE70E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67284();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67284();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE71C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67474();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67474();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE72A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v1 = sub_1B4F682C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE7374()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5218, &qword_1B4F71468);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE7464()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE749C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F5240, &qword_1B4F714D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE7574()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE75B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE7608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66754();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66754();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7884()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4DE791C()
{

  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 80), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B4DE7974()
{

  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 56), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B4DE7A18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7CB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE7CF0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B4DE7DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE7F30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE7FA0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DE7FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67524();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67524();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE80B4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v1 = sub_1B4F682C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE81A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DE81E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DE8220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE828C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66124();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE8300()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B4DE8344()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE8384()
{

  sub_1B4E6B7A8(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1B4DE83C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE849C(double a1)
{
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1B4DE8584()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE85C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66624();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE862C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66624();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE869C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65274();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DE875C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65274();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DE8818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66F74();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8884(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66F74();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65854();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DE89B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65854();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DE8A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64B34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64B34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_1B4DE8D04(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B4DE8D18()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE8D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67104();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67104();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE8E34()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE8E74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE8F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE8FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE902C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F673D4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F673D4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64E14();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DE91C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F64E14();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DE94C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE952C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE959C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9608(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE96E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65D04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE97C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65D04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9830(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66AC4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE989C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66AC4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE990C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE99E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B4DE9A20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B4DE9A58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE9A90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DE9B40()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F5130, &qword_1B4F71530);
  v1 = sub_1B4F682C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DE9BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F65B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DE9CB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F65B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DE9D7C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DE9DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F649A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DE9E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F649A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DE9FC0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEA000(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA06C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA1B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66464();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66464();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA300(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65124();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA370(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B4DEA388()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEA3C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEA3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F679A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DEA4BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F679A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DEA578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA5E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65EF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA67C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65A44();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEA7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEA834()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEA86C()
{
  v1 = sub_1B4F678C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DEA934()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEA97C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1B4DEAA14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B4F66AF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B4DEAB54()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEAB90()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEABCC(double a1)
{
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6));
  if (*(v1 + v7))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, v7 + 16, v4 | 7);
}

uint64_t sub_1B4DEACD4(double a1)
{
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v6));

  if (*(v1 + v8))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1B4DEADC4(double a1)
{
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  if (*(v1 + v6))
  {
  }

  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v7));

  return MEMORY[0x1EEE6BDD0](v1, v8 + 8, v4 | 7);
}

uint64_t sub_1B4DEAE98(double a1)
{
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  if (*(v1 + 32))
  {
  }

  v6 = (v4 + 112) & ~v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 64));

  (*(v3 + 8))(v1 + v6, v2);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v5, v4 | 7);
}

uint64_t sub_1B4DEAF80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEAFB8(double a1)
{
  v2 = sub_1B4F67674();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  if (*(v1 + v7))
  {
  }

  return MEMORY[0x1EEE6BDD0](v1, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_1B4DEB0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65F84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB184()
{
  MEMORY[0x1B8C832C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEB1C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEB200(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66694();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB2DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEB314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66454();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66454();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 32);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B4DEB4CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 40) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F6E38, &qword_1B4F7B1E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B4DEB580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66964();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66964();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB66C()
{
  v1 = sub_1B4F68374();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DEB734()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEB76C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEB7B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64D34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F665B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F665B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEB96C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65C34();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEB9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65C34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEBA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEBAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F674B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEBCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64B04();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DEBD90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F64B04();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DEBE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E54();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEBEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66E54();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEBF28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66914();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEBF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66914();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66184();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC14C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F67A34();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DEC358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F67A34();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DEC414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC4F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEC528()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEC570()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEC5CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEC638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F652A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEC6A8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B4F67C54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ActivityTracer(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1B4DEC7CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1B4F67C54();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for ActivityTracer(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B4DECA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B4F64FD4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B4DECADC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B4F64FD4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B4DECB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66014();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DECC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66014();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DECC74()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DECCAC()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1B4DECCF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DECD2C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4588, &qword_1B4F6CE40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DECDD8()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DECE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DECE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F678C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DECEFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DECF34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1B4DECFE0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DED020()
{
  v1 = sub_1B4F66354();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DED0E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66084();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED154(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F66084();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65894();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65894();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED2B4()
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 81) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DED39C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DED3D4()
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B4DED4B4()
{
  v1 = sub_1B4F64824();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1B4DED590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67BD4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED5FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67BD4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED66C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DED6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B4DED72C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7888, &qword_1B4F7D730);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1B4DED7B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67AF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED824(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F67AF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED89C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AA4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED908(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F64AA4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DED978(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F664E4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DED9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F664E4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEDA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B4DEDAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4F65504();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B4DEDB34()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 32), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B4DEDB84()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B4DEDBBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1B4DEDBF4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B4DEDC2C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 88);
  if (v1 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 80), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1B4DEDC8C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 64);
  if (v1 >> 60 != 15)
  {
    sub_1B4DD2B70(*(v0 + 56), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B4DEDCEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B4DEDD34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B4DEDD80()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B4DEDDB8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

SeymourClient::ExponentialBackoffIntervalProvider __swiftcall ExponentialBackoffIntervalProvider.init(initialBackoffInterval:maxBackoffInterval:factor:)(Swift::Double initialBackoffInterval, Swift::Double_optional maxBackoffInterval, Swift::Double factor)
{
  *v4 = initialBackoffInterval;
  *(v4 + 8) = *&maxBackoffInterval.is_nil;
  *(v4 + 16) = v3 & 1;
  *(v4 + 24) = maxBackoffInterval.value;
  result.maxBackoffInterval.value = maxBackoffInterval.value;
  result.maxBackoffInterval.is_nil = maxBackoffInterval.is_nil;
  result.factor = factor;
  result.currentBackoffInterval = initialBackoffInterval;
  return result;
}

Swift::Double __swiftcall ExponentialBackoffIntervalProvider.nextInterval()()
{
  if (*(v0 + 16))
  {
    v1 = *v0;
    result = *v0;
  }

  else
  {
    v1 = *v0;
    result = *(v0 + 8);
    if (*v0 < result)
    {
      result = *v0;
    }
  }

  *v0 = v1 * *(v0 + 24);
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

uint64_t sub_1B4DEE4CC(uint64_t a1, int a2)
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

uint64_t sub_1B4DEE4EC(uint64_t result, int a2, int a3)
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

uint64_t sub_1B4DEE55C(uint64_t a1, int a2)
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

uint64_t sub_1B4DEE57C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B4DEE600(uint64_t a1, int a2)
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

uint64_t sub_1B4DEE620(uint64_t result, int a2, int a3)
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

void sub_1B4DEE65C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ScoreMetric.scale(by:)()
{
  v0 = sub_1B4F65A94();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  sub_1B4F64DD4();
  sub_1B4F64DE4();
  sub_1B4F64E04();
  sub_1B4F64DB4();
  sub_1B4F66074();
  sub_1B4F64D74();
  sub_1B4F66074();
  sub_1B4F64D94();
  sub_1B4F66074();
  sub_1B4F64DA4();
  sub_1B4F66074();
  sub_1B4F64D84();
  sub_1B4F66074();
  return sub_1B4F64DC4();
}

uint64_t UserBodyMassMetric.applyingTimestampOffset(_:)(double a1)
{
  sub_1B4F66054();

  return sub_1B4F66064();
}

uint64_t sub_1B4DEE85C(double a1)
{
  sub_1B4F66054();

  return sub_1B4F66064();
}

uint64_t sub_1B4DEE8E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  a1();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    sub_1B4F64914();
    v4 = 0;
  }

  v5 = sub_1B4F64964();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

void sub_1B4DEE984()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1B4F67F64();
  v2 = [v0 stringArrayForKey_];

  if (v2)
  {
    v3 = sub_1B4F681C4();

    v4 = 0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = (v3 + 40 + 16 * v4);
    while (1)
    {
      if (v5 == v4)
      {

        sub_1B4DCF590(v6);

        return;
      }

      if (v4 >= *(v3 + 16))
      {
        break;
      }

      ++v4;
      v8 = v7 + 2;
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = MEMORY[0x1B8C7EB80](v10, v9);
      v7 = v8;
      if (v11 != 3)
      {
        v12 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B4E78958(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_1B4E78958((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v6[v14 + 32] = v12;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    sub_1B4E2A5A8(&unk_1F2CD3D98);
  }
}

uint64_t sub_1B4DEEB60(uint64_t a1)
{
  result = MEMORY[0x1B8C81DD0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1B4E79108(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4DEEC7C(uint64_t a1)
{
  v2 = sub_1B4F66484();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v28 - v13;
  v15 = *(a1 + 16);
  v16 = sub_1B4DF30BC(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
  result = MEMORY[0x1B8C81DD0](v15, v2, v16);
  v18 = 0;
  v29 = a1;
  v30 = result;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v28[2] = v3 + 32;
  v28[3] = v3 + 16;
  v28[1] = v3 + 8;
  if ((v23 & v19) != 0)
  {
    do
    {
      v26 = v18;
LABEL_9:
      v27 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      (*(v3 + 16))(v14, *(v29 + 48) + *(v3 + 72) * (v27 | (v26 << 6)), v2);
      (*(v3 + 32))(v6, v14, v2);
      sub_1B4E79258(v10, v6);
      result = (*(v3 + 8))(v10, v2);
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

      return v30;
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
  return result;
}

uint64_t sub_1B4DEEEDC(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41B8, &qword_1B4F6A678);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v49 = &v39 - v6;
  v7 = sub_1B4F64E14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v39 - v13;
  v15 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v39 = v2;
    v60 = MEMORY[0x1E69E7CC0];
    sub_1B4E257C4(0, v15, 0);
    v53 = a1 + 56;
    v54 = v60;
    result = sub_1B4F688B4();
    v17 = result;
    v18 = 0;
    v46 = v8 + 8;
    v47 = v8 + 16;
    v44 = v14;
    v45 = v8 + 32;
    v40 = a1 + 64;
    v41 = v15;
    v42 = v8;
    v43 = a1;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a1 + 32))
    {
      v20 = v17 >> 6;
      if ((*(v53 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_23;
      }

      v21 = *(a1 + 36);
      v50 = v18;
      v51 = v21;
      v22 = *(a1 + 48);
      v52 = *(v8 + 72);
      v23 = v48;
      (*(v8 + 16))(v48, v22 + v52 * v17, v7);
      sub_1B4F64DD4();
      v24 = sub_1B4F65A94();
      v25 = v49;
      (*(*(v24 - 8) + 56))(v49, 1, 1, v24);
      v59 = 1;
      v58 = 1;
      v57 = 1;
      v56 = 1;
      v55 = 1;
      sub_1B4F64DF4();
      sub_1B4DD2BC4(v25, &qword_1EB8F41B8, &qword_1B4F6A678);
      v8 = v42;
      (*(v42 + 8))(v23, v7);
      v26 = v54;
      v60 = v54;
      v27 = v43;
      v29 = *(v54 + 16);
      v28 = *(v54 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B4E257C4((v28 > 1), v29 + 1, 1);
        v26 = v60;
      }

      *(v26 + 16) = v29 + 1;
      v30 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v54 = v26;
      result = (*(v8 + 32))(v26 + v30 + v29 * v52, v44, v7);
      v19 = 1 << *(v27 + 32);
      if (v17 >= v19)
      {
        goto LABEL_24;
      }

      v31 = *(v53 + 8 * v20);
      if ((v31 & (1 << v17)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v27;
      if (v51 != *(v27 + 36))
      {
        goto LABEL_26;
      }

      v32 = v31 & (-2 << (v17 & 0x3F));
      if (v32)
      {
        v19 = __clz(__rbit64(v32)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v33 = v7;
        v34 = v20 << 6;
        v35 = v20 + 1;
        v36 = (v40 + 8 * v20);
        while (v35 < (v19 + 63) >> 6)
        {
          v38 = *v36++;
          v37 = v38;
          v34 += 64;
          ++v35;
          if (v38)
          {
            result = sub_1B4DF3104(v17, v51, 0);
            v19 = __clz(__rbit64(v37)) + v34;
            goto LABEL_19;
          }
        }

        result = sub_1B4DF3104(v17, v51, 0);
LABEL_19:
        v7 = v33;
      }

      v18 = v50 + 1;
      v17 = v19;
      if (v50 + 1 == v41)
      {
        return v54;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t Session.applyingTimestampOffset(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v351 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4060, &unk_1B4F788D0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v360 = &v324 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v352 = &v324 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4068, &qword_1B4F6A5C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v350 = &v324 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v364 = &v324 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4070, &unk_1B4F788E0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v349 = &v324 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v362 = &v324 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4078, &qword_1B4F6A5C8);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v348 = &v324 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v363 = &v324 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4080, &unk_1B4F788F0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v347 = &v324 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v359 = &v324 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4088, &qword_1B4F6A5D0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v346 = &v324 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v353 = &v324 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4090, &qword_1B4F6A5D8);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v345 = &v324 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v358 = &v324 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4098, &unk_1B4F78910);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v357 = &v324 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A0, &qword_1B4F6A5E0);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v344 = &v324 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v356 = &v324 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40A8, &qword_1B4F6A5E8);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v331 = &v324 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B0, &unk_1B4F78920);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v343 = &v324 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  v380 = &v324 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40B8, &qword_1B4F6A5F0);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v342 = &v324 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67, v68);
  v379 = &v324 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C0, &unk_1B4F78930);
  MEMORY[0x1EEE9AC00](v70 - 8, v71);
  v378 = &v324 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40C8, &qword_1B4F6A5F8);
  MEMORY[0x1EEE9AC00](v73 - 8, v74);
  v377 = &v324 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D0, &unk_1B4F78940);
  MEMORY[0x1EEE9AC00](v76 - 8, v77);
  v376 = &v324 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40D8, &qword_1B4F6A600);
  MEMORY[0x1EEE9AC00](v79 - 8, v80);
  v375 = &v324 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E0, &unk_1B4F78950);
  MEMORY[0x1EEE9AC00](v82 - 8, v83);
  v340 = &v324 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v85, v86);
  v374 = &v324 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40E8, &qword_1B4F6A608);
  MEMORY[0x1EEE9AC00](v88 - 8, v89);
  v373 = &v324 - v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F0, &unk_1B4F78960);
  MEMORY[0x1EEE9AC00](v91 - 8, v92);
  v339 = &v324 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v94, v95);
  v372 = &v324 - v96;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F72D0, &qword_1B4F6A610);
  MEMORY[0x1EEE9AC00](v97 - 8, v98);
  v338 = &v324 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v100, v101);
  v371 = &v324 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F40F8, &unk_1B4F78970);
  MEMORY[0x1EEE9AC00](v103 - 8, v104);
  v337 = &v324 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106, v107);
  v109 = &v324 - v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  MEMORY[0x1EEE9AC00](v110 - 8, v111);
  v330 = &v324 - v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  MEMORY[0x1EEE9AC00](v113 - 8, v114);
  v329 = &v324 - v115;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  MEMORY[0x1EEE9AC00](v116 - 8, v117);
  v328 = &v324 - v118;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4118, &qword_1B4F6A630);
  MEMORY[0x1EEE9AC00](v119 - 8, v120);
  v336 = &v324 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v122, v123);
  v369 = &v324 - v124;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4120, &unk_1B4F78980);
  MEMORY[0x1EEE9AC00](v125 - 8, v126);
  v335 = &v324 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v128, v129);
  v368 = &v324 - v130;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4128, &qword_1B4F6A638);
  MEMORY[0x1EEE9AC00](v131 - 8, v132);
  v355 = &v324 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134, v135);
  v367 = &v324 - v136;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4130, &unk_1B4F78990);
  MEMORY[0x1EEE9AC00](v137 - 8, v138);
  v334 = &v324 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v140, v141);
  v143 = &v324 - v142;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4138, &qword_1B4F6A640);
  MEMORY[0x1EEE9AC00](v144 - 8, v145);
  v333 = &v324 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v147, v148);
  v150 = &v324 - v149;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4140, qword_1B4F789A0);
  MEMORY[0x1EEE9AC00](v151 - 8, v152);
  v332 = &v324 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v154, v155);
  v365 = &v324 - v156;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4148, &qword_1B4F6A648);
  MEMORY[0x1EEE9AC00](v157 - 8, v158);
  v327 = &v324 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v160, v161);
  v326 = &v324 - v162;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4150, &qword_1B4F6A650);
  MEMORY[0x1EEE9AC00](v163 - 8, v164);
  v166 = &v324 - v165;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F7050, &qword_1B4F71500);
  MEMORY[0x1EEE9AC00](v167 - 8, v168);
  v170 = &v324 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v171, v172);
  v174 = &v324 - v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4158, &qword_1B4F6A658);
  MEMORY[0x1EEE9AC00](v175 - 8, v176);
  v178 = &v324 - v177;
  v179 = sub_1B4F67704();
  v341 = sub_1B4DEEEDC(v179, a2);

  v180 = sub_1B4F65804();
  v181 = *(*(v180 - 8) + 56);
  v354 = v178;
  v181(v178, 1, 1, v180);
  v381 = v2;
  sub_1B4F67714();
  v182 = sub_1B4F65184();
  v183 = *(v182 - 8);
  v184 = (*(v183 + 48))(v170, 1, v182);
  v370 = v109;
  v366 = v150;
  v361 = v174;
  if (v184 == 1)
  {
    v185 = v143;
    sub_1B4DD2BC4(v170, &qword_1EB8F7050, &qword_1B4F71500);
    v186 = 1;
  }

  else
  {
    v187 = sub_1B4F65CA4();
    v188 = *(*(v187 - 8) + 56);
    v325 = v166;
    v188(v166, 1, 1, v187);
    v189 = sub_1B4F64EF4();
    v190 = *(*(v189 - 8) + 56);
    v185 = v143;
    v191 = v326;
    v190(v326, 1, 1, v189);
    v192 = v327;
    v190(v327, 1, 1, v189);
    v174 = v361;
    sub_1B4F65134();
    v193 = v325;
    sub_1B4F65174();
    sub_1B4DD2BC4(v192, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v191, &qword_1EB8F4148, &qword_1B4F6A648);
    sub_1B4DD2BC4(v193, &qword_1EB8F4150, &qword_1B4F6A650);
    (*(v183 + 8))(v170, v182);
    v186 = 0;
  }

  (*(v183 + 56))(v174, v186, 1, v182);
  v194 = v332;
  sub_1B4F677F4();
  v195 = sub_1B4F663B4();
  v196 = *(v195 - 8);
  v197 = (*(v196 + 48))(v194, 1, v195);
  v198 = v338;
  if (v197 == 1)
  {
    sub_1B4DD2BC4(v194, &qword_1EB8F4140, qword_1B4F789A0);
    v199 = 1;
    v200 = v368;
    v201 = v365;
  }

  else
  {
    sub_1B4F66394();
    v201 = v365;
    sub_1B4F663A4();
    (*(v196 + 8))(v194, v195);
    v199 = 0;
    v200 = v368;
  }

  v202 = v185;
  (*(v196 + 56))(v201, v199, 1, v195);
  v203 = v333;
  sub_1B4F67814();
  v204 = sub_1B4F66754();
  v205 = *(v204 - 8);
  v206 = (*(v205 + 48))(v203, 1, v204);
  v207 = v366;
  if (v206 == 1)
  {
    sub_1B4DD2BC4(v203, &qword_1EB8F4138, &qword_1B4F6A640);
    v208 = 1;
  }

  else
  {
    sub_1B4F66714();
    sub_1B4F66744();
    (*(v205 + 8))(v203, v204);
    v208 = 0;
  }

  (*(v205 + 56))(v207, v208, 1, v204);
  v209 = v334;
  sub_1B4F67724();
  v210 = sub_1B4F65274();
  v211 = *(v210 - 8);
  v212 = (*(v211 + 48))(v209, 1, v210);
  v213 = v343;
  if (v212 == 1)
  {
    sub_1B4DD2BC4(v209, &qword_1EB8F4130, &unk_1B4F78990);
    v214 = 1;
  }

  else
  {
    sub_1B4F65254();
    sub_1B4F65264();
    (*(v211 + 8))(v209, v210);
    v214 = 0;
  }

  v215 = v355;
  v216 = *(v211 + 56);
  v355 = v202;
  v216(v202, v214, 1, v210);
  sub_1B4F678B4();
  v217 = sub_1B4F67AF4();
  v218 = *(v217 - 8);
  if ((*(v218 + 48))(v215, 1, v217) == 1)
  {
    sub_1B4DD2BC4(v215, &qword_1EB8F4128, &qword_1B4F6A638);
    v219 = 1;
    v220 = v367;
  }

  else
  {
    sub_1B4F67AD4();
    v220 = v367;
    sub_1B4F67AE4();
    (*(v218 + 8))(v215, v217);
    v219 = 0;
  }

  (*(v218 + 56))(v220, v219, 1, v217);
  v221 = v335;
  sub_1B4F67774();
  v222 = sub_1B4F65AD4();
  v223 = *(v222 - 8);
  if ((*(v223 + 48))(v221, 1, v222) == 1)
  {
    sub_1B4DD2BC4(v221, &qword_1EB8F4120, &unk_1B4F78980);
    v224 = 1;
  }

  else
  {
    sub_1B4F65AB4();
    sub_1B4F65AC4();
    (*(v223 + 8))(v221, v222);
    v224 = 0;
  }

  v225 = v346;
  (*(v223 + 56))(v200, v224, 1, v222);
  v226 = v336;
  sub_1B4F677D4();
  v227 = sub_1B4F66014();
  v228 = *(v227 - 8);
  if ((*(v228 + 48))(v226, 1, v227) == 1)
  {
    sub_1B4DD2BC4(v226, &qword_1EB8F4118, &qword_1B4F6A630);
    v229 = 1;
    v230 = v369;
  }

  else
  {
    v231 = sub_1B4F669F4();
    v232 = v198;
    v233 = v225;
    v234 = v328;
    (*(*(v231 - 8) + 56))(v328, 1, 1, v231);
    v235 = sub_1B4F66A54();
    v236 = v213;
    v237 = v329;
    (*(*(v235 - 8) + 56))(v329, 1, 1, v235);
    v238 = sub_1B4F66BA4();
    v239 = v330;
    (*(*(v238 - 8) + 56))(v330, 1, 1, v238);
    v240 = v226;
    sub_1B4F65FF4();
    v230 = v369;
    sub_1B4F66004();
    sub_1B4DD2BC4(v239, &qword_1EB8F4100, &qword_1B4F6A618);
    v241 = v237;
    v213 = v236;
    sub_1B4DD2BC4(v241, &qword_1EB8F4108, &qword_1B4F6A620);
    v242 = v234;
    v225 = v233;
    v198 = v232;
    sub_1B4DD2BC4(v242, &qword_1EB8F4110, &qword_1B4F6A628);
    (*(v228 + 8))(v240, v227);
    v229 = 0;
  }

  v243 = v339;
  (*(v228 + 56))(v230, v229, 1, v227);
  v244 = v337;
  sub_1B4F67744();
  v245 = sub_1B4F65854();
  v246 = *(v245 - 8);
  if ((*(v246 + 48))(v244, 1, v245) == 1)
  {
    sub_1B4DD2BC4(v244, &qword_1EB8F40F8, &unk_1B4F78970);
    v247 = 1;
    v248 = v345;
    v249 = v370;
  }

  else
  {
    sub_1B4F65814();
    v249 = v370;
    sub_1B4F65844();
    (*(v246 + 8))(v244, v245);
    v247 = 0;
    v248 = v345;
  }

  (*(v246 + 56))(v249, v247, 1, v245);
  sub_1B4F676F4();
  v250 = sub_1B4F64FD4();
  v251 = *(v250 - 8);
  if ((*(v251 + 48))(v198, 1, v250) == 1)
  {
    sub_1B4DD2BC4(v198, &qword_1EB8F72D0, &qword_1B4F6A610);
    v252 = 1;
    v253 = v371;
  }

  else
  {
    sub_1B4F64F94();
    v253 = v371;
    sub_1B4F64FC4();
    (*(v251 + 8))(v198, v250);
    v252 = 0;
  }

  v254 = v379;
  (*(v251 + 56))(v253, v252, 1, v250);
  sub_1B4F677B4();
  v255 = sub_1B4F65D04();
  v256 = *(v255 - 8);
  if ((*(v256 + 48))(v243, 1, v255) == 1)
  {
    sub_1B4DD2BC4(v243, &qword_1EB8F40F0, &unk_1B4F78960);
    v257 = 1;
    v258 = v372;
  }

  else
  {
    sub_1B4F65CE4();
    v258 = v372;
    sub_1B4F65CF4();
    (*(v256 + 8))(v243, v255);
    v257 = 0;
  }

  (*(v256 + 56))(v258, v257, 1, v255);
  v259 = sub_1B4F66B74();
  (*(*(v259 - 8) + 56))(v373, 1, 1, v259);
  v260 = v340;
  sub_1B4F67784();
  v261 = sub_1B4F65B84();
  v262 = *(v261 - 8);
  if ((*(v262 + 48))(v260, 1, v261) == 1)
  {
    sub_1B4DD2BC4(v260, &qword_1EB8F40E0, &unk_1B4F78950);
    v263 = 1;
    v264 = v374;
  }

  else
  {
    sub_1B4F65B64();
    v264 = v374;
    sub_1B4F65B74();
    (*(v262 + 8))(v260, v261);
    v263 = 0;
  }

  v265 = v347;
  (*(v262 + 56))(v264, v263, 1, v261);
  v266 = sub_1B4F64AA4();
  (*(*(v266 - 8) + 56))(v375, 1, 1, v266);
  v267 = sub_1B4F66454();
  (*(*(v267 - 8) + 56))(v376, 1, 1, v267);
  v268 = sub_1B4F65DB4();
  (*(*(v268 - 8) + 56))(v377, 1, 1, v268);
  v269 = sub_1B4F66E84();
  (*(*(v269 - 8) + 56))(v378, 1, 1, v269);
  v270 = v342;
  sub_1B4F676D4();
  v271 = sub_1B4F64B04();
  v272 = *(v271 - 8);
  if ((*(v272 + 48))(v270, 1, v271) == 1)
  {
    sub_1B4DD2BC4(v270, &qword_1EB8F40B8, &qword_1B4F6A5F0);
    v273 = 1;
  }

  else
  {
    sub_1B4F64AE4();
    sub_1B4F64AF4();
    (*(v272 + 8))(v270, v271);
    v273 = 0;
  }

  v274 = v358;
  (*(v272 + 56))(v254, v273, 1, v271);
  sub_1B4F678A4();
  v275 = sub_1B4F67A34();
  v276 = *(v275 - 8);
  if ((*(v276 + 48))(v213, 1, v275) == 1)
  {
    sub_1B4DD2BC4(v213, &qword_1EB8F40B0, &unk_1B4F78920);
    v277 = 1;
    v278 = v380;
  }

  else
  {
    v279 = v213;
    sub_1B4F67A04();
    v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4160, &qword_1B4F6A660);
    v281 = v331;
    (*(*(v280 - 8) + 56))(v331, 1, 1, v280);
    v278 = v380;
    sub_1B4F67A24();
    sub_1B4DD2BC4(v281, &qword_1EB8F40A8, &qword_1B4F6A5E8);
    (*(v276 + 8))(v279, v275);
    v277 = 0;
  }

  v282 = v353;
  v283 = v356;
  (*(v276 + 56))(v278, v277, 1, v275);
  v284 = v344;
  sub_1B4F67754();
  v285 = sub_1B4F65894();
  v286 = *(v285 - 8);
  if ((*(v286 + 48))(v284, 1, v285) == 1)
  {
    sub_1B4DD2BC4(v284, &qword_1EB8F40A0, &qword_1B4F6A5E0);
    v287 = 1;
  }

  else
  {
    sub_1B4F65874();
    sub_1B4F65884();
    (*(v286 + 8))(v284, v285);
    v287 = 0;
  }

  v288 = v348;
  (*(v286 + 56))(v283, v287, 1, v285);
  v289 = sub_1B4F65BC4();
  (*(*(v289 - 8) + 56))(v357, 1, 1, v289);
  sub_1B4F67834();
  v290 = sub_1B4F66914();
  v291 = *(v290 - 8);
  if ((*(v291 + 48))(v248, 1, v290) == 1)
  {
    sub_1B4DD2BC4(v248, &qword_1EB8F4090, &qword_1B4F6A5D8);
    v292 = 1;
  }

  else
  {
    sub_1B4F668F4();
    sub_1B4F66904();
    (*(v291 + 8))(v248, v290);
    v292 = 0;
  }

  v293 = v350;
  (*(v291 + 56))(v274, v292, 1, v290);
  v350 = sub_1B4DF206C(v341);

  sub_1B4F676E4();
  v294 = sub_1B4F64E44();
  v295 = *(v294 - 8);
  if ((*(v295 + 48))(v225, 1, v294) == 1)
  {
    sub_1B4DD2BC4(v225, &qword_1EB8F4088, &qword_1B4F6A5D0);
    v296 = 1;
  }

  else
  {
    sub_1B4F64E24();
    sub_1B4F64E34();
    (*(v295 + 8))(v225, v294);
    v296 = 0;
  }

  (*(v295 + 56))(v282, v296, 1, v294);
  sub_1B4F677A4();
  v297 = sub_1B4F65C34();
  v298 = *(v297 - 8);
  if ((*(v298 + 48))(v265, 1, v297) == 1)
  {
    sub_1B4DD2BC4(v265, &qword_1EB8F4080, &unk_1B4F788F0);
    v299 = 1;
    v300 = v359;
  }

  else
  {
    sub_1B4F65C14();
    v300 = v359;
    sub_1B4F65C24();
    (*(v298 + 8))(v265, v297);
    v299 = 0;
  }

  (*(v298 + 56))(v300, v299, 1, v297);
  sub_1B4F67764();
  v301 = sub_1B4F66084();
  v302 = *(v301 - 8);
  if ((*(v302 + 48))(v288, 1, v301) == 1)
  {
    sub_1B4DD2BC4(v288, &qword_1EB8F4078, &qword_1B4F6A5C8);
    v303 = 1;
  }

  else
  {
    sub_1B4F66054();
    sub_1B4F66064();
    (*(v302 + 8))(v288, v301);
    v303 = 0;
  }

  (*(v302 + 56))(v363, v303, 1, v301);
  v304 = v349;
  sub_1B4F67854();
  v305 = sub_1B4F66AC4();
  v306 = *(v305 - 8);
  if ((*(v306 + 48))(v304, 1, v305) == 1)
  {
    sub_1B4DD2BC4(v304, &qword_1EB8F4070, &unk_1B4F788E0);
    v307 = 1;
  }

  else
  {
    sub_1B4F66AA4();
    sub_1B4F66AB4();
    (*(v306 + 8))(v304, v305);
    v307 = 0;
  }

  (*(v306 + 56))(v362, v307, 1, v305);
  sub_1B4F67884();
  v308 = sub_1B4F679A4();
  v309 = *(v308 - 8);
  if ((*(v309 + 48))(v293, 1, v308) == 1)
  {
    sub_1B4DD2BC4(v293, &qword_1EB8F4068, &qword_1B4F6A5C0);
    v310 = 1;
  }

  else
  {
    sub_1B4F67974();
    sub_1B4F67994();
    (*(v309 + 8))(v293, v308);
    v310 = 0;
  }

  (*(v309 + 56))(v364, v310, 1, v308);
  sub_1B4F67844();
  v311 = v360;
  v312 = sub_1B4F66964();
  v313 = *(v312 - 8);
  if ((*(v313 + 48))(v311, 1, v312) == 1)
  {
    sub_1B4DD2BC4(v311, &qword_1EB8F4060, &unk_1B4F788D0);
    v314 = 1;
  }

  else
  {
    sub_1B4F66944();
    sub_1B4F66954();
    (*(v313 + 8))(v311, v312);
    v314 = 0;
  }

  v315 = v352;
  (*(v313 + 56))(v352, v314, 1, v312);
  v316 = v364;
  v317 = v362;
  v318 = v363;
  v319 = v359;
  v320 = v358;
  v321 = v357;
  v322 = v356;
  sub_1B4F67894();

  sub_1B4DD2BC4(v315, &qword_1EB8F4060, &unk_1B4F788D0);
  sub_1B4DD2BC4(v316, &qword_1EB8F4068, &qword_1B4F6A5C0);
  sub_1B4DD2BC4(v317, &qword_1EB8F4070, &unk_1B4F788E0);
  sub_1B4DD2BC4(v318, &qword_1EB8F4078, &qword_1B4F6A5C8);
  sub_1B4DD2BC4(v319, &qword_1EB8F4080, &unk_1B4F788F0);
  sub_1B4DD2BC4(v353, &qword_1EB8F4088, &qword_1B4F6A5D0);
  sub_1B4DD2BC4(v320, &qword_1EB8F4090, &qword_1B4F6A5D8);
  sub_1B4DD2BC4(v321, &qword_1EB8F4098, &unk_1B4F78910);
  sub_1B4DD2BC4(v322, &qword_1EB8F40A0, &qword_1B4F6A5E0);
  sub_1B4DD2BC4(v380, &qword_1EB8F40B0, &unk_1B4F78920);
  sub_1B4DD2BC4(v379, &qword_1EB8F40B8, &qword_1B4F6A5F0);
  sub_1B4DD2BC4(v378, &qword_1EB8F40C0, &unk_1B4F78930);
  sub_1B4DD2BC4(v377, &qword_1EB8F40C8, &qword_1B4F6A5F8);
  sub_1B4DD2BC4(v376, &qword_1EB8F40D0, &unk_1B4F78940);
  sub_1B4DD2BC4(v375, &qword_1EB8F40D8, &qword_1B4F6A600);
  sub_1B4DD2BC4(v374, &qword_1EB8F40E0, &unk_1B4F78950);
  sub_1B4DD2BC4(v373, &qword_1EB8F40E8, &qword_1B4F6A608);
  sub_1B4DD2BC4(v372, &qword_1EB8F40F0, &unk_1B4F78960);
  sub_1B4DD2BC4(v371, &qword_1EB8F72D0, &qword_1B4F6A610);
  sub_1B4DD2BC4(v370, &qword_1EB8F40F8, &unk_1B4F78970);
  sub_1B4DD2BC4(v369, &qword_1EB8F4118, &qword_1B4F6A630);
  sub_1B4DD2BC4(v368, &qword_1EB8F4120, &unk_1B4F78980);
  sub_1B4DD2BC4(v367, &qword_1EB8F4128, &qword_1B4F6A638);
  sub_1B4DD2BC4(v355, &qword_1EB8F4130, &unk_1B4F78990);
  sub_1B4DD2BC4(v366, &qword_1EB8F4138, &qword_1B4F6A640);
  sub_1B4DD2BC4(v365, &qword_1EB8F4140, qword_1B4F789A0);
  sub_1B4DD2BC4(v361, &qword_1EB8F7050, &qword_1B4F71500);
  return sub_1B4DD2BC4(v354, &qword_1EB8F4158, &qword_1B4F6A658);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B4DF206C(uint64_t a1)
{
  v2 = sub_1B4F64E14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F41B0, MEMORY[0x1E69CB098], MEMORY[0x1E69CB0A0]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E78E28(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2208(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B4E79108(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4DF22A0(uint64_t a1)
{
  v2 = sub_1B4F67244();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4178, MEMORY[0x1E69CCF40], MEMORY[0x1E69CCF48]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E7B8B0(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF243C(uint64_t a1)
{
  v2 = sub_1B4F67A94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4180, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E7B010(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF25D8(uint64_t a1)
{
  v2 = sub_1B4F65E04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4190, MEMORY[0x1E69CB850], MEMORY[0x1E69CB860]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E7AA50(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2774(uint64_t a1)
{
  v2 = sub_1B4F65DE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4188, MEMORY[0x1E69CB800], MEMORY[0x1E69CB810]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E79BF0(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2910(uint64_t a1)
{
  v2 = sub_1B4F660C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4198, MEMORY[0x1E69CBE40], MEMORY[0x1E69CBE50]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E79910(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2AAC(uint64_t a1)
{
  v2 = sub_1B4F670C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F41A0, MEMORY[0x1E69CCDC8], MEMORY[0x1E69CCDD8]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E79630(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2C48(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B4DF3068();
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69CB078], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1B4E7BE70(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B4DF2CBC(uint64_t a1)
{
  v2 = sub_1B4F64F74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4170, MEMORY[0x1E69CB178], MEMORY[0x1E69CB180]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E7C238(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2E58(uint64_t a1)
{
  v2 = sub_1B4F67004();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1B4DF30BC(&qword_1EB8F4168, MEMORY[0x1E69CCCE0], MEMORY[0x1E69CCCE8]);
  result = MEMORY[0x1B8C81DD0](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1B4E7C758(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1B4DF2FF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C81DD0](v2, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B4E7CA38(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1B4DF3068()
{
  result = qword_1EDB700D0;
  if (!qword_1EDB700D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB700D0);
  }

  return result;
}

uint64_t sub_1B4DF30BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4DF3104(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t DisplayPreferences.applyingTimestampOffset(_:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1B4F669F4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_1B4F66A54();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_1B4F66BA4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1B4F65FF4();
  sub_1B4F66004();
  sub_1B4DD2BC4(v4, &qword_1EB8F4100, &qword_1B4F6A618);
  sub_1B4DD2BC4(v8, &qword_1EB8F4108, &qword_1B4F6A620);
  return sub_1B4DD2BC4(v12, &qword_1EB8F4110, &qword_1B4F6A628);
}

uint64_t sub_1B4DF3370(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4100, &qword_1B4F6A618);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4108, &qword_1B4F6A620);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4110, &qword_1B4F6A628);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v17 - v11;
  v13 = sub_1B4F669F4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_1B4F66A54();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = sub_1B4F66BA4();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1B4F65FF4();
  sub_1B4F66004();
  sub_1B4DD2BC4(v4, &qword_1EB8F4100, &qword_1B4F6A618);
  sub_1B4DD2BC4(v8, &qword_1EB8F4108, &qword_1B4F6A620);
  return sub_1B4DD2BC4(v12, &qword_1EB8F4110, &qword_1B4F6A628);
}

uint64_t BookmarksUpdated.changeset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65E64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BookmarksUpdated.init(changeset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65E64();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for BookmarksUpdated(uint64_t a1)
{
  result = qword_1EDB70D48;
  if (!qword_1EDB70D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4DF3728(uint64_t a1)
{
  result = sub_1B4F65E64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t XPCStreamHandler.init(publisher:streams:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1B4DC933C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

Swift::Void __swiftcall XPCStreamHandler.activate()()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_1B4DC9B7C();
    v5 = (v2 + 56);
    v25 = v1;
    do
    {
      v27 = v3;
      v11 = *(v5 - 3);
      v12 = *(v5 - 2);
      v13 = *(v5 - 1);
      v14 = *v5;
      v15 = qword_1EDB724A8;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_1B4F67C54();
      __swift_project_value_buffer(v16, qword_1EDB72490);

      v17 = sub_1B4F67C34();
      v18 = sub_1B4F685E4();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v26 = v13;
        v20 = swift_slowAlloc();
        *&v29[0] = v20;
        *v19 = 136446210;

        v21 = v4;
        v22 = sub_1B4DC4F88(v11, v12, v29);

        *(v19 + 4) = v22;
        v4 = v21;
        _os_log_impl(&dword_1B4DC2000, v17, v18, "Registering xpc stream handler: %{public}s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        v23 = v20;
        v13 = v26;
        MEMORY[0x1B8C831D0](v23, -1, -1);
        v24 = v19;
        v1 = v25;
        MEMORY[0x1B8C831D0](v24, -1, -1);
      }

      v5 += 4;
      v6 = sub_1B4F68654();
      sub_1B4DF3F50(v1, v29);
      v7 = swift_allocObject();
      *(v7 + 16) = v11;
      *(v7 + 24) = v12;
      *(v7 + 32) = v13;
      *(v7 + 40) = v14;
      v8 = v29[1];
      *(v7 + 48) = v29[0];
      *(v7 + 64) = v8;
      *(v7 + 80) = v29[2];
      aBlock[4] = sub_1B4DF3F88;
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B4DF3EF0;
      aBlock[3] = &block_descriptor;
      v9 = _Block_copy(aBlock);

      v10 = sub_1B4F67FB4();
      xpc_set_event_stream_handler((v10 + 32), v6, v9);

      _Block_release(v9);

      v3 = v27 - 1;
    }

    while (v27 != 1);
  }
}

void sub_1B4DF3ACC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (qword_1EDB724A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB72490);

  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1B4DC4F88(a2, a3, &v33);
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Handling xpc stream event: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1B8C831D0](v15, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]))
  {
    v16 = sub_1B4F68024();
    v18 = v17;
    v19 = sub_1B4F67C34();
    v20 = sub_1B4F685E4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v33 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1B4DC4F88(v16, v18, &v33);
      _os_log_impl(&dword_1B4DC2000, v19, v20, "Publishing stream event: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1B8C831D0](v22, -1, -1);
      MEMORY[0x1B8C831D0](v21, -1, -1);
    }

    v23 = a6[3];
    v24 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v23);
    (*(v24 + 8))(v16, v18, v23, v24);
  }

  if (a5 && (v25 = sub_1B4F67FB4(), v26 = xpc_dictionary_get_BOOL(a1, (v25 + 32)), , v26))
  {
    if (xpc_dictionary_create_reply(a1))
    {
      v27 = sub_1B4F67C34();
      v28 = sub_1B4F685E4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B4DC2000, v27, v28, "Sending xpc stream reply", v29, 2u);
        MEMORY[0x1B8C831D0](v29, -1, -1);
      }

      xpc_dictionary_send_reply();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    oslog = sub_1B4F67C34();
    v30 = sub_1B4F685E4();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B4DC2000, oslog, v30, "No reply required", v31, 2u);
      MEMORY[0x1B8C831D0](v31, -1, -1);
    }
  }
}

uint64_t sub_1B4DF3EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

char *sub_1B4DF3F98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41C0, &qword_1B4F6A728);
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

uint64_t sub_1B4DF408C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4DF40D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t NoticePrivacyPreferenceUpdated.preference.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F668C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NoticePrivacyPreferenceUpdated.init(preference:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F668C4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for NoticePrivacyPreferenceUpdated(uint64_t a1)
{
  result = qword_1EDB716B8;
  if (!qword_1EDB716B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EngagementBannerRuleInfo.contextProperties.getter()
{
  v0 = sub_1B4F66A14();

  return sub_1B4DEEB60(v0);
}

double EngagementBannerRuleInfo.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = sub_1B4F66A14();
  if (*(v6 + 16) && (v7 = sub_1B4DF4344(a1, a2), (v8 & 1) != 0))
  {
    sub_1B4DC4F2C(*(v6 + 56) + 32 * v7, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t sub_1B4DF4344(uint64_t a1, uint64_t a2)
{
  sub_1B4F68E84();
  sub_1B4F67FE4();
  v4 = sub_1B4F68EC4();

  return sub_1B4DF44C8(a1, a2, v4);
}

unint64_t sub_1B4DF43BC(uint64_t a1)
{
  sub_1B4F66484();
  sub_1B4DF4968(&qword_1EB8F41A8, MEMORY[0x1E69CC280]);
  v2 = sub_1B4F67F14();

  return sub_1B4DF4580(a1, v2);
}

unint64_t sub_1B4DF4440(uint64_t a1)
{
  v2 = sub_1B4F68934();

  return sub_1B4DF472C(a1, v2);
}

unint64_t sub_1B4DF4484(uint64_t a1)
{
  v2 = sub_1B4F68754();

  return sub_1B4DF48A4(a1, v2);
}

unint64_t sub_1B4DF44C8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B4F68D54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B4DF4580(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1B4F66484();
  v5 = *(v4 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1B4DF4968(&qword_1EB8F41C8, MEMORY[0x1E69CC290]);
      v17 = sub_1B4F67F54();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1B4DF472C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B4DF47F4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8C821F0](v9, a1);
      sub_1B4DF4850(v9);
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

unint64_t sub_1B4DF48A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1B4DE1044();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B4F68764();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1B4DF4968(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B4F66484();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t MachTimer.State.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF4A38()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

double sub_1B4DF4A80()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  v3 = *(v0 + 16);
  if (*(v0 + 40) == 1)
  {
    sub_1B4F684B4();
    v3 = v3 + v4 - *(v0 + 24);
  }

  os_unfair_lock_unlock(*(v1 + 16));

  return v3;
}

uint64_t MachTimer.__allocating_init(state:)(char *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  *(v2 + 16) = 0;
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *(v4 + 16) = v5;
  *v5 = 0;
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;
  sub_1B4F684B4();
  *(v2 + 24) = v6;
  return v2;
}

uint64_t sub_1B4DF4B7C(char *a1)
{
  v2 = *a1;
  os_unfair_lock_assert_owner(*(*(v1 + 32) + 16));
  result = sub_1B4F684B4();
  if (*(v1 + 40) == 1)
  {
    *(v1 + 16) = *(v1 + 16) + v4 - *(v1 + 24);
  }

  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_1B4DF4BE0(char a1)
{
  v3 = *(v1 + 32);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v6 = a1;
  sub_1B4DF4B7C(&v6);
  os_unfair_lock_unlock(*(v3 + 16));
}

unint64_t sub_1B4DF4C74()
{
  result = qword_1EB8F41D0;
  if (!qword_1EB8F41D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F41D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MachTimer.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MachTimer.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B4DF4FE4()
{
  result = qword_1EDB70C48;
  if (!qword_1EDB70C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB70C48);
  }

  return result;
}

uint64_t sub_1B4DF5038()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F6BCA0[v1]);
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF50C0(uint64_t a1)
{
  v2 = *v1;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](qword_1B4F6BCA0[v2]);
  return sub_1B4F68EC4();
}

uint64_t getEnumTagSinglePayload for TransportRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >> 4 < 0xFE9)
  {
    goto LABEL_17;
  }

  if (a2 + 368 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 368 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 368;
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

      return (*a1 | (v4 << 16)) - 368;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 368;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x171;
  v8 = v6 - 369;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for TransportRequest(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 368 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 368 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >> 4 >= 0xFE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 >> 4 > 0xFE8)
  {
    v6 = ((a2 - 65168) >> 16) + 1;
    *result = a2 + 368;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 368;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_1B4DF5280()
{
  result = qword_1EB8F41D8;
  if (!qword_1EB8F41D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F41D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BagConstants(_WORD *result, int a2, int a3)
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

uint64_t SourceLocation.file.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SourceLocation.function.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall SourceLocation.init(file:line:function:)(SeymourClient::SourceLocation *__return_ptr retstr, Swift::String file, Swift::Int line, Swift::String function)
{
  retstr->file = file;
  retstr->line = line;
  retstr->function = function;
}

uint64_t SourceLocation.hash(into:)(uint64_t a1)
{
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](*(v1 + 16));

  return sub_1B4F67FE4();
}

uint64_t SourceLocation.hashValue.getter()
{
  sub_1B4F68E84();
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](*(v0 + 16));
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF5728()
{
  v1 = *(v0 + 16);
  sub_1B4F68E84();
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v1);
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF57A8(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v2);

  return sub_1B4F67FE4();
}

uint64_t sub_1B4DF5810(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1B4F68E84();
  sub_1B4F67FE4();
  MEMORY[0x1B8C82740](v2);
  sub_1B4F67FE4();
  return sub_1B4F68EC4();
}

uint64_t sub_1B4DF588C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s13SeymourClient14SourceLocationV2eeoiySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s13SeymourClient14SourceLocationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4F68D54() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return sub_1B4F68D54();
}

unint64_t sub_1B4DF5974()
{
  result = qword_1EB8F41E0;
  if (!qword_1EB8F41E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F41E0);
  }

  return result;
}

uint64_t sub_1B4DF59C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1B4DF5A10(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Void __swiftcall TransactionCoordinating.beginTransaction(label:file:line:function:)(Swift::String label, Swift::String file, Swift::Int line, Swift::String function)
{
  v5 = file;
  v6 = line;
  v7 = function;
  (*(v8 + 16))(label._countAndFlagsBits, label._object, &v5, v4, v8);
}

Swift::Void __swiftcall TransactionCoordinating.endTransaction(label:file:line:function:)(Swift::String label, Swift::String file, Swift::Int line, Swift::String function)
{
  v5 = file;
  v6 = line;
  v7 = function;
  (*(v8 + 24))(label._countAndFlagsBits, label._object, &v5, v4, v8);
}

uint64_t TransactionCoordinating.beginTransaction<A>(label:file:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B4F68144();
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  (*(a9 + 16))(v18, v19, v20, a7, a9);
}

uint64_t TransactionCoordinating.endTransaction<A>(label:file:line:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B4F68144();
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  (*(a9 + 24))(v18, v19, v20, a7, a9);
}

uint64_t dispatch thunk of TransactionCoordinating.beginTransaction(label:sourceLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v6 = *(a5 + 16);
  v7 = *(a3 + 32);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 16);
  v11 = v7;
  return v6(a1, a2, v9, a4);
}

uint64_t dispatch thunk of TransactionCoordinating.endTransaction(label:sourceLocation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  v6 = *(a5 + 24);
  v7 = *(a3 + 32);
  v9[0] = *a3;
  v9[1] = v5;
  v10 = *(a3 + 16);
  v11 = v7;
  return v6(a1, a2, v9, a4);
}

Swift::Int_optional __swiftcall NullTransactionCoordinator.queryTransactionCount(label:)(Swift::String label)
{
  v2 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_1B4DF5D9C(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 6);
  v3 = v5;
  v4 = v6;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall NullTransactionCoordinator.beginTransaction(label:sourceLocation:)(Swift::String label, SeymourClient::SourceLocation *sourceLocation)
{
  v3 = *v2;
  os_unfair_lock_lock(*v2 + 6);
  sub_1B4DF5EB8(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1B4DF5E08(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    result = sub_1B4DF4344(a2, a3);
    if (v8)
    {
      v7 = *(*(v6 + 56) + 8 * result);
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v5;
    result = sub_1B4E5E444(v9, a2, a3, isUniquelyReferenced_nonNull_native);
    *v5 = v11;
  }

  return result;
}

Swift::Void __swiftcall NullTransactionCoordinator.endTransaction(label:sourceLocation:)(Swift::String label, SeymourClient::SourceLocation *sourceLocation)
{
  v3 = *v2;
  os_unfair_lock_lock(*v2 + 6);
  sub_1B4DF5FF4(&v3[4]);
  os_unfair_lock_unlock(v3 + 6);
}

uint64_t sub_1B4DF5F28(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*(*result + 16))
  {
    v6 = result;
    result = sub_1B4DF4344(a2, a3);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * result);
      if (v8 < 2)
      {

        return sub_1B4E467B8(0, 1, a2, a3);
      }

      else
      {
        v9 = v8 - 1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v6;
        result = sub_1B4E5E444(v9, a2, a3, isUniquelyReferenced_nonNull_native);
        *v6 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1B4DF6010()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1B4DF632C(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_1B4DF6070()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1B4DF635C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_1B4DF60C4()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_1B4DF6344(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t static TransactionCoordinating<>.null.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F41E8, &qword_1B4F6C980);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  *a1 = result;
  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for NullTransactionCoordinator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for NullTransactionCoordinator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B4DF62B4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_1B4DF4344(*(v3 + 16), *(v3 + 24));
    if (v6)
    {
      v7 = 0;
      v8 = *(*(v5 + 56) + 8 * result);
    }

    else
    {
      v8 = 0;
      v7 = 1;
    }
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  *a2 = v8;
  *(a2 + 8) = v7;
  return result;
}

uint64_t HKActivitySummary.activityRings()@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_1B4F64EF4();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1B4F65CA4();
  v54 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v52 = &v50 - v12;
  sub_1B4DF6AB4(23, 0, 0, v11);
  v14 = v13;

  if (v14 && sub_1B4F65C74() != 2)
  {
    v28 = [v1 activeEnergyBurned];
    v29 = [v1 activeEnergyBurned];
    v51 = v6;
    v30 = v29;
    v31 = [v29 _unit];

    [v28 doubleValueForUnit_];
    v32 = [v1 activeEnergyBurnedGoal];
    v33 = [v1 activeEnergyBurnedGoal];
    v34 = [v33 _unit];

    [v32 doubleValueForUnit_];
    v6 = v51;
    sub_1B4F64EE4();
    goto LABEL_8;
  }

  v15 = [v1 activityMoveMode];
  if (v15 == 2)
  {
    v16 = [v1 appleMoveTime];
    v17 = [v1 appleMoveTime];
    v18 = [v17 _unit];

    [v16 doubleValueForUnit_];
    v19 = [v1 appleMoveTimeGoal];
    v20 = [v1 appleMoveTimeGoal];
    v21 = [v20 _unit];

    [v19 doubleValueForUnit_];
    sub_1B4F64EE4();
LABEL_8:
    v35 = v52;
    sub_1B4F65C84();
    v36 = [v1 appleExerciseTime];
    v37 = [v1 appleExerciseTime];
    v38 = [v37 _unit];

    [v36 doubleValueForUnit_];
    v39 = [v1 appleExerciseTimeGoal];
    v40 = [v1 appleExerciseTimeGoal];
    v41 = [v40 _unit];

    [v39 doubleValueForUnit_];
    v42 = [v1 appleStandHours];
    v43 = [v1 appleStandHours];
    v44 = [v43 _unit];

    [v42 doubleValueForUnit_];
    v45 = [v1 appleStandHoursGoal];
    v46 = [v1 appleStandHoursGoal];
    v47 = [v46 _unit];

    [v45 doubleValueForUnit_];
    [v1 _isStandalonePhoneSummary];
    v48 = v54;
    (*(v54 + 16))(v55, v35, v6);
    sub_1B4F64EE4();
    sub_1B4F64EE4();
    [v1 paused];
    sub_1B4F684B4();
    sub_1B4F65154();
    return (*(v48 + 8))(v35, v6);
  }

  if (v15 == 1)
  {
    v22 = [v1 activeEnergyBurned];
    v23 = [v1 activeEnergyBurned];
    v24 = [v23 _unit];

    [v22 doubleValueForUnit_];
    v25 = [v1 activeEnergyBurnedGoal];
    v26 = [v1 activeEnergyBurnedGoal];
    v27 = [v26 _unit];

    [v25 doubleValueForUnit_];
    sub_1B4F64EE4();
    goto LABEL_8;
  }

  result = sub_1B4F68B24();
  __break(1u);
  return result;
}
void sub_1B69AB940(uint64_t a1)
{
  if (!qword_1EDBC8980)
  {
    sub_1B69E8910(255, &qword_1EDBCCDA8, &protocol descriptor for EventProcessorType, 0);
    v1 = sub_1B6AB95D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8980);
    }
  }
}

void sub_1B69AB9AC(uint64_t a1)
{
  if (!qword_1EDBC8028)
  {
    sub_1B69ABFCC(255, &qword_1EDBC8058, sub_1B69AB940, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1B6AB9D30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8028);
    }
  }
}

void *LazyEventProcessor.init(underlyingProcessorProvider:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  sub_1B69AB9AC(0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  v2[4] = v3;
  return v2;
}

uint64_t AppSessionManager.hasTrackingConsent.getter()
{
  v0 = sub_1B6AB90C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB90B0();
  sub_1B6AB9910();
  (*(v1 + 8))(v3, v0);
  return sub_1B6AB9010() & 1;
}

uint64_t sub_1B69ABBE4(const char *a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6AB8F90();
  __swift_project_value_buffer(v5, qword_1EDBCFDA8);
  v6 = sub_1B6AB8F80();
  v7 = sub_1B6AB9900();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B697C000, v6, v7, a1, v8, 2u);
    MEMORY[0x1B8C99550](v8, -1, -1);
  }

  v9 = *(v4 + OBJC_IVAR___AATrackingConsent_accessGroup);

  return a2(v9);
}

uint64_t Tracker.register<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a5;
  v11[4] = sub_1B6A566D4;
  v11[5] = v10;

  sub_1B69ABEB0(0, 0, sub_1B6A579F0, v11, a4, a5);
}

{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  sub_1B69ABEB0(0, 0, sub_1B6A566C8, v10, a4, a5);
}

uint64_t sub_1B69ABE70()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69ABEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 88);
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = v6;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_1B69877A4(v13, sub_1B69C2F64, v14);
}

uint64_t sub_1B69ABF84()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1B69ABFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void Tracker.actionSequence.getter(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  os_unfair_lock_lock_with_options();
  v4 = *(v1 + 184);
  swift_beginAccess();
  v5 = *(v1 + 176);

  sub_1B69979DC(v5);
  *a1 = v4;
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1B69AC0DC(uint64_t result, unsigned int a2)
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

uint64_t sub_1B69AC0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for SessionObserverChange(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B699A32C(a2, v8, type metadata accessor for SessionObserverChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (EnumCaseMultiPayload == 2)
  {
    v10 = 3;
LABEL_7:
    sub_1B6984D38(v8, type metadata accessor for SessionObserverChange);
  }

  return a3(a1, v10);
}

uint64_t type metadata accessor for EventData(uint64_t a1)
{
  result = qword_1EDBCB6D0;
  if (!qword_1EDBCB6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TimedData(uint64_t a1)
{
  result = qword_1EDBCBBB0;
  if (!qword_1EDBCBBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B69AC2BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDBCFDA0;
  *v8 = qword_1EDBCFDA0;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8020], v5);
  v10 = v9;
  LOBYTE(v9) = sub_1B6AB9110();
  result = (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_1B69AC4BC();

  if (v2)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v14 = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69AC4E4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 88);
  v6[1] = *(v0 + 16);
  v7 = v1;
  v8 = *(v0 + 40);
  v9 = v2;
  v10 = v3;
  v11 = *(v0 + 72);
  v12 = v4;
  v13 = *(v0 + 96);
  return sub_1B69AC2BC(sub_1B69B88A4, v6);
}

uint64_t sub_1B69AC5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ProcessEvent(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_1B69AC828();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B69AC620(uint64_t a1)
{
  type metadata accessor for JSON();
  if (v1 <= 0x3F)
  {
    sub_1B6AB8DB0();
    if (v2 <= 0x3F)
    {
      sub_1B69809F4(319, &qword_1EDBCAA50, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1B69809F4(319, &qword_1EDBCA460, &type metadata for ContentType);
        if (v4 <= 0x3F)
        {
          sub_1B69809F4(319, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
          if (v5 <= 0x3F)
          {
            sub_1B69AC76C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B69AC76C(uint64_t a1)
{
  if (!qword_1EDBC9F90)
  {
    sub_1B69AC7C4();
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC9F90);
    }
  }
}

void sub_1B69AC7C4()
{
  if (!qword_1EDBCA880)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCA880);
    }
  }
}

unint64_t sub_1B69AC828()
{
  result = qword_1EDBCBB00;
  if (!qword_1EDBCBB00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBCBB00);
  }

  return result;
}

uint64_t AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a4;
  v28 = a5;
  v25 = a1;
  v26 = a3;
  v24 = a2;
  v9 = type metadata accessor for EventSubmitResult(0, a6, a7, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-v11];
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + 104);

    sub_1B6AB8DA0();
    sub_1B69ACABC(v25, v18, v24 & 1, v16, v26, v27, v28, a6, a7);

    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v19 = v10;
    v20 = v27;
    if (v27)
    {
      sub_1B6A16B30();
      v21 = swift_allocError();
      *v22 = xmmword_1B6AC0310;
      *v12 = v21;
      swift_storeEnumTagMultiPayload();
      v20(v12);
      return (*(v19 + 8))(v12, v9);
    }
  }

  return result;
}

uint64_t sub_1B69ACABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a5;
  v33 = a7;
  v31 = a4;
  v30 = a3;
  v28 = a1;
  v29 = a2;
  v26 = a8;
  v11 = type metadata accessor for EventSubmitResult(0, a8, a9, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v26 - v13);
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v9;
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v18 = v21;
    (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
    v22 = v21;
    LOBYTE(v21) = sub_1B6AB9110();
    result = (*(v16 + 8))(v18, v15);
    if (v21)
    {
      v23 = *(v20 + 88);
      v35 = v26;
      v36 = a9;
      v37 = v20;
      v38 = v28;
      v39 = v29;
      v40 = v30 & 1;
      v41 = v31;
      v42 = *(v27 + 24);
      v43 = v32;
      v44 = a6;
      v45 = v33;
      sub_1B6995F94(v23, sub_1B69AC4E4, v34, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);
    }

    else
    {
      __break(1u);
    }
  }

  else if (a6)
  {
    sub_1B6A16B30();
    v24 = swift_allocError();
    *v25 = xmmword_1B6AC0310;
    *v14 = v24;
    swift_storeEnumTagMultiPayload();
    a6(v14);
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_1B69ACD84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69ACDCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69ACE14()
{
  result = sub_1B69ACE38();
  qword_1EDBC9BA8 = result;
  qword_1EDBC9BB0 = v1;
  return result;
}

uint64_t sub_1B69ACE38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B6AB92B0();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v7);
    return 0;
  }
}

uint64_t sub_1B69ACF4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_1B69FA8BC;
  }

  else
  {

    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_1B69AD088;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B69AD088()
{
  v17 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[12];
  v4 = sub_1B6AB8C70();
  v6 = v5;
  sub_1B6993C94(v2, v1);

  v7 = sub_1B6AB8F80();
  v8 = sub_1B6AB9900();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[8];
  v10 = v0[9];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_1B698F63C(v4, v6, &v16);
    _os_log_impl(&dword_1B697C000, v7, v8, "Generated base64 signature from SHA1, base64=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8C99550](v13, -1, -1);
    MEMORY[0x1B8C99550](v12, -1, -1);
  }

  sub_1B6993C94(v11, v10);

  v14 = v0[1];

  return v14(v4, v6);
}

uint64_t sub_1B69AD21C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (!v0)
  {

    v3 = *(v2 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B6A6F8E8, 0, 0);
}

uint64_t sub_1B69AD388()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B69AD3E4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B69AAC10, 0, 0);
}

id sub_1B69AD510()
{
  result = sub_1B69AD530();
  qword_1EDBC8250 = result;
  return result;
}

id sub_1B69AD530()
{
  v0 = objc_opt_self();
  swift_beginAccess();

  v1 = sub_1B6AB92B0();

  v2 = [v0 backgroundSessionConfigurationWithIdentifier_];

  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v3 = sub_1B6AB92B0();
    [v2 set:v3 sourceApplicationBundleIdentifier:?];
  }

  [v2 setHTTPMaximumConnectionsPerHost_];
  [v2 setAllowsCellularAccess_];
  [v2 setWaitsForConnectivity_];
  [v2 setDiscretionary_];
  v4 = [objc_allocWithZone(type metadata accessor for HeartbeatEventServiceURLSessionDelegate()) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v6 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v4 delegateQueue:v5];

  return v6;
}

uint64_t sub_1B69AD75C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B69AD850()
{
  MEMORY[0x1B8C99550](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69AD890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69867F8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69AD900(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v9 = sub_1B6ABA230();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B69ADAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69882EC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69ADB20(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B6AB9030();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B6AB9090();
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 96);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_1B69BCB14;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B698E534;
  aBlock[3] = &block_descriptor_9;
  v16 = _Block_copy(aBlock);
  v17 = v14;

  sub_1B69A18C0(a2);
  v18 = a1;
  sub_1B6AB9060();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1B69BBCF0();
  sub_1B6988350(0, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B69BBC68();
  sub_1B6AB9BE0();
  MEMORY[0x1B8C981F0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  (*(v11 + 8))(v13, v21);
}

uint64_t sub_1B69ADDE4()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B69ADE38(uint64_t a1@<X8>)
{
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  sub_1B69BCB58(v1 + 32, &v4);
  if (v5)
  {
    sub_1B6980E70(&v4, a1);
  }

  else
  {
    v3 = sub_1B69BCC44(&v4);
    (*(v1 + 16))(v3);
    sub_1B6982544(a1, &v4);
    swift_beginAccess();
    sub_1B69BCD24(&v4, v1 + 32);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(*(v1 + 72) + 16));
}

void URLSessionUploadClientFactory.makeUploadClient()(uint64_t *a1@<X8>)
{
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDBCCB28;
  sub_1B69990B4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B6ABD890;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1B698CEC0();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0xD000000000000026;
  *(v3 + 40) = 0x80000001B6AC9380;
  v6 = sub_1B6AB9900();
  sub_1B6AB8F70("Upload session configuration will be created, identifier=%{public}@", 67, 2, &dword_1B697C000, v2, v6, v3);

  v7 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v8 = sub_1B6AB92B0();
    [v7 set:v8 sourceApplicationBundleIdentifier:?];
  }

  v9 = [objc_opt_self() sessionWithConfiguration:v7 delegate:0 delegateQueue:0];
  v10 = sub_1B6AB92B0();
  [v9 setSessionDescription_];

  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B6ABD890;
  *(v11 + 56) = v4;
  *(v11 + 64) = v5;
  *(v11 + 32) = 0xD000000000000026;
  *(v11 + 40) = 0x80000001B6AC9380;
  v12 = sub_1B6AB9900();
  sub_1B6AB8F70("Upload session configuration has been created, identifier=%{public}@", 68, 2, &dword_1B697C000, v2, v12, v11);

  v13 = type metadata accessor for URLSessionUploadClient();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  a1[3] = v13;
  a1[4] = &off_1F2E75748;

  *a1 = v14;
}

void sub_1B69AE1C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v6 = (a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state);
  if ((*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state + 9) & 1) == 0)
  {
    v7 = *v6;
    v8 = *(v6 + 8);
    goto LABEL_5;
  }

  sub_1B699E1A0(&v9);
  if (!v2)
  {
    v7 = v9;
    v8 = v10;
    *v6 = v9;
    *(v6 + 4) = v8;
LABEL_5:
    *a2 = v7;
    *(a2 + 8) = v8 & 1;
  }

  os_unfair_lock_unlock(*(*(a1 + v5) + 16));
}

uint64_t sub_1B69AE288(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B6993C94(result, a2);
  }

  return result;
}

uint64_t sub_1B69AE29C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v133 = a3;
  v129 = sub_1B6AB8F00();
  v127 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8DB0();
  v130 = *(v8 - 8);
  *&v131 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B697F028(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v117 - v15;
  v17 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v132 = a1;
  v135 = a2;
  v18 = sub_1B699D580(a1, a2);
  v19 = *(v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v20 = *(v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v21 = (v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v19);
  v22 = *(v20 + 16);
  v136 = v18;
  v23 = v22(v18, v19, v20);
  v134 = v21;
  v33 = v23;
  v35 = v34;
  v125 = v4;
  v123 = v10;
  v126 = v16;
  v124 = v14;
  sub_1B6AB9310();
  v36 = sub_1B6AB92F0();
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    v40 = v33;
    v41 = v35;
    v139 = 10;
    v140 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v36);
    *(&v117 - 2) = &v139;

    v43 = sub_1B69AF6DC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B69AFA9C, (&v117 - 4), v38, v39, v42);
    v44 = *(v43 + 16);
    if (v44)
    {
      v121 = v33;
      v122 = v41;

      v45 = 0;
      v142[0] = 0;
      v141 = MEMORY[0x1E69E7CC0];
      v46 = (v43 + 56);
      while (v45 < *(v43 + 16))
      {
        v48 = *(v46 - 1);
        v47 = *v46;
        v49 = *(v46 - 3);
        v38 = *(v46 - 2);

        v51 = MEMORY[0x1B8C98C40](v50);
        sub_1B69AFC18(v49, v38, v48, v47, &v141, v142, &v139);

        v45 = (v45 + 1);
        objc_autoreleasePoolPop(v51);
        v46 += 4;
        if (v44 == v45)
        {

          v52 = v142[0];
          v45 = v135;
          v53 = v125;
          if (!v142[0])
          {
            v92 = *(v141 + 16);
            sub_1B6A60A98();
            v93 = swift_allocError();
            *v94 = v92;
            *(v94 + 8) = 0;
            *(v94 + 16) = 0;
            *(v94 + 24) = 0;
            *(v94 + 32) = 32;
            v38 = v93;
            swift_willThrow();
            sub_1B6993C94(v121, v122);

            v43 = v132;
            goto LABEL_2;
          }

          v54 = v134;
          if (!*(v141 + 16))
          {
            sub_1B6A60A98();
            v97 = swift_allocError();
            v43 = v132;
            *v98 = v132;
            *(v98 + 8) = v45;
            *(v98 + 16) = 0;
            *(v98 + 24) = 0;
            *(v98 + 32) = 64;
            v38 = v97;
            swift_willThrow();

            sub_1B6993C94(v121, v122);

            goto LABEL_2;
          }

          v119 = v141;
          v55 = v134[3];
          v56 = v134[4];
          __swift_project_boxed_opaque_existential_1(v134, v55);
          v57 = *(v53 + 16);
          v58 = *(v56 + 64);

          v120 = v52;
          v59 = v136;
          v60 = v58(v136, v57, v55, v56);
          v62 = v61;
          v63 = v54[3];
          v64 = v54[4];
          __swift_project_boxed_opaque_existential_1(v54, v63);
          v125 = (*(v64 + 72))(v59, *(v53 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_contentType), v63, v64);
          v65 = v54[3];
          v66 = v54[4];
          __swift_project_boxed_opaque_existential_1(v54, v65);
          v118 = (*(v66 + 80))(v59, v65, v66);
          v117 = v67;
          v68 = v54[3];
          v69 = v54[4];
          __swift_project_boxed_opaque_existential_1(v54, v68);
          (*(v69 + 88))(v59, v68, v69);
          v70 = v54[3];
          v71 = v54[4];
          __swift_project_boxed_opaque_existential_1(v54, v70);
          (*(v71 + 104))(&v139, v59, v70, v71);
          v72 = v139;
          v73 = v54[3];
          v74 = v54[4];
          __swift_project_boxed_opaque_existential_1(v54, v73);
          v75 = (*(v74 + 96))(v59, v73, v74);
          if (v76)
          {
            v77 = v75;
            v78 = v76;
            v79 = v123;
            v80 = v129;
            v81 = v128;
          }

          else
          {
            v99 = v120;
            v79 = v123;
            v80 = v129;
            v81 = v128;
            if (*(v120 + 16) && (v100 = sub_1B6993940(0x496E6F6973736573, 0xE900000000000044), (v101 & 1) != 0) && (sub_1B698FE74(*(v99 + 56) + 32 * v100, &v139), (swift_dynamicCast() & 1) != 0))
            {
              v77 = v137;
              v78 = v138;
            }

            else
            {
              v78 = 0xE90000000000006ELL;
              v77 = 0x6F69737365536F6ELL;
            }
          }

          v102 = v135;
          if (v72 == 5)
          {

            sub_1B6993C94(v121, v122);
            v103 = 1;
            v104 = v133;
            v105 = v124;
            v107 = v130;
            v106 = v131;
            v108 = v126;
LABEL_39:
            (*(v107 + 56))(v105, v103, 1, v106);
            v104[4] = v60;
            v104[5] = v62;
            v112 = v118;
            v104[6] = v125;
            v104[7] = v112;
            v104[8] = v117;
            v113 = type metadata accessor for Batch(0);
            sub_1B69B3830(v108, v104 + v113[10]);
            v114 = (v104 + v113[11]);
            *v114 = v77;
            v114[1] = v78;
            v115 = v119;
            *v104 = v120;
            v104[1] = v115;
            v104[2] = v132;
            v104[3] = v102;
            *(v104 + v113[12]) = 0;
            v116 = (v104 + v113[13]);
            *v116 = xmmword_1B6AC3610;
            v116[1] = 0u;
            v116[2] = 0u;
            sub_1B69B3830(v105, v104 + v113[14]);
            (*(*(v113 - 1) + 56))(v104, 0, 1, v113);
          }

          sub_1B6AB8D90();
          if (v72 <= 1)
          {
            if (v72)
            {
              sub_1B6AB8EC0();
              v110 = v81;
              v105 = v124;
              sub_1B6AB8E70();
              (*(v127 + 8))(v110, v80);
              goto LABEL_37;
            }

            v109 = v79;
            v107 = v130;
            v105 = v124;
            (*(v130 + 16))(v124, v109, v131);
            v104 = v133;
          }

          else
          {
            if (v72 == 2 || v72 == 3)
            {
              sub_1B6AB8CE0();
              v105 = v124;
              sub_1B6AB8CD0();
            }

            else
            {
              v105 = v124;
              sub_1B6AB8D10();
            }

LABEL_37:
            v104 = v133;
            v109 = v79;
            v107 = v130;
          }

          v108 = v126;

          sub_1B6993C94(v121, v122);
          v111 = v109;
          v106 = v131;
          (*(v107 + 8))(v111, v131);
          v103 = 0;
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v86 = sub_1B699E9F0(0xD00000000000003CLL, 0x80000001B6ACBF40, 512);
    v45 = v135;
    v91 = v87 >> 60 != 15 && (v88 = v86, v89 = v87, v90 = sub_1B6A78108(v86, v87), sub_1B69AE288(v88, v89), (v90 & 0x100) == 0) && v90 == 1;
    v43 = v132;
    sub_1B6A60A98();
    v95 = swift_allocError();
    *v96 = v38;
    *(v96 + 8) = v39;
    *(v96 + 16) = v40;
    *(v96 + 24) = v41;
    *(v96 + 32) = v91;
    v38 = v95;
    swift_willThrow();
  }

  else
  {
    sub_1B6A60A98();
    v84 = swift_allocError();
    *v85 = 0u;
    *(v85 + 16) = 0u;
    *(v85 + 32) = 0x80;
    v38 = v84;
    swift_willThrow();
    sub_1B6993C94(v33, v35);
    v43 = v132;
    v45 = v135;
  }

LABEL_2:
  if (qword_1EDBCCEE0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = qword_1EDBCCB28;
  v25 = sub_1B6AB98F0();
  sub_1B69990B4(0);
  v26 = swift_allocObject();
  v131 = xmmword_1B6ABF500;
  *(v26 + 16) = xmmword_1B6ABF500;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1B698CEC0();
  *(v26 + 64) = v28;
  *(v26 + 32) = v43;
  *(v26 + 40) = v45;
  v139 = 0;
  v140 = 0xE000000000000000;
  v135 = v38;
  v137 = v38;
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);

  sub_1B6AB9DF0();
  v29 = v139;
  v30 = v140;
  *(v26 + 96) = v27;
  *(v26 + 104) = v28;
  *(v26 + 72) = v29;
  *(v26 + 80) = v30;
  v132 = v24;
  sub_1B6AB8F70("Upload dropbox removing corrupted file that it failed to read, identifier=%{public}@, error=%{public}@", 102, 2, &dword_1B697C000, v24, v25, v26);

  v32 = v134[3];
  v31 = v134[4];
  __swift_project_boxed_opaque_existential_1(v134, v32);
  (*(v31 + 48))(v136, v32, v31);

  v82 = type metadata accessor for Batch(0);
  return (*(*(v82 - 8) + 56))(v133, 1, 1, v82);
}

char *sub_1B69AF0A4(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  sub_1B6986438(0, &qword_1EDBCB648, 0x1E696AC00);
  (*(v4 + 16))(v6, a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url, v3);
  v8 = sub_1B69AF2E8(v6, &selRef_fileHandleForReadingFromURL_error_);
  if (!v1)
  {
    v9 = v8;
    v17[0] = 0;
    v10 = [v8 seekToOffset:0 error:v17];
    v6 = v17[0];
    if (v10)
    {
      v11 = v17[0];
      v12 = sub_1B6AB9890();
      if (v13 >> 60 != 15)
      {
        v6 = v12;
        sub_1B69AF440(v9, a1);

        os_unfair_lock_unlock(*(*(a1 + v7) + 16));
        return v6;
      }

      sub_1B6A7B150();
      swift_allocError();
      *v14 = 1;
    }

    else
    {
      v15 = v17[0];
      sub_1B6AB8A70();
    }

    swift_willThrow();
    sub_1B69AF440(v9, a1);
  }

  os_unfair_lock_unlock(*(*(a1 + v7) + 16));
  return v6;
}

id sub_1B69AF2E8(uint64_t a1, SEL *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B6AB8B20();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1B6AB8BB0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1B6AB8A70();

    swift_willThrow();
    v11 = sub_1B6AB8BB0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

void sub_1B69AF440(void *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v2 = [a1 closeAndReturnError_];
  v3 = v19[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v19[0];
    v6 = sub_1B6AB8A70();

    swift_willThrow();
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v7 = sub_1B6AB8F90();
    __swift_project_value_buffer(v7, qword_1EDBCFDA8);

    v8 = v6;
    v9 = sub_1B6AB8F80();
    v10 = sub_1B6AB98E0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v11 = 136315394;
      v14 = sub_1B6AB8B80();
      v16 = sub_1B698F63C(v14, v15, v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_1B697C000, v9, v10, "⚠️ Failed to close file handle at %s: %@", v11, 0x16u);
      sub_1B6A7B1A4(v12, sub_1B69EC2D4);
      MEMORY[0x1B8C99550](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1B8C99550](v13, -1, -1);
      MEMORY[0x1B8C99550](v11, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_1B69AF6DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B6AB9460();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B69AFAF4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B69AFAF4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B6AB9440();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B6AB9390();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B6AB9390();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B6AB9460();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B69AFAF4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B6AB9460();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B69AFAF4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B69AFAF4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B6AB9390();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69AFA9C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0() & 1;
  }
}

char *sub_1B69AFAF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBCB608, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B69AFC18(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v56[4] = *MEMORY[0x1E69E9840];

  v14 = sub_1B69B0184(a1, a2, a3, a4);
  v16 = v15;
  v17 = objc_opt_self();
  v18 = sub_1B6AB8C60();
  v56[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:v56];

  if (!v19)
  {
    v26 = v56[0];
    v27 = sub_1B6AB8A70();

    swift_willThrow();
    goto LABEL_10;
  }

  v20 = v56[0];
  sub_1B6AB9BC0();
  swift_unknownObjectRelease();
  sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v28 = 0x80;
    v21 = 1;
LABEL_23:
    sub_1B6A60A98();
    v40 = swift_allocError();
    *v41 = v21;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = v28;
    swift_willThrow();
    result = sub_1B6993C94(v14, v16);
    *a7 = v40;
    return result;
  }

  v21 = v55;
  if (!*(v55 + 16))
  {
    goto LABEL_22;
  }

  v22 = sub_1B6993940(1701869940, 0xE400000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B698FE74(*(v55 + 56) + 32 * v22, v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v54 = a5;
  v24 = sub_1B6AB9EF0();

  if (v24)
  {
    if (v24 != 1)
    {
LABEL_22:
      v28 = 96;
      goto LABEL_23;
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  if (!*(v55 + 16))
  {
    goto LABEL_22;
  }

  v29 = sub_1B6993940(1635017060, 0xE400000000000000);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B698FE74(*(v55 + 56) + 32 * v29, v56);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v31 = MEMORY[0x1E69E6158];
  v32 = sub_1B6AB91F0();
  v33 = [v17 isValidJSONObject_];

  if ((v25 & 1) == 0)
  {
    if (v33)
    {
      sub_1B6993C94(v14, v16);
      *a6 = v55;
    }

    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v48 = qword_1EDBCCB28;
    v49 = sub_1B6AB98F0();
    sub_1B69990B4(0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1B6ABD890;
    v51 = sub_1B6AB9220();
    v53 = v52;

    *(v50 + 56) = v31;
    *(v50 + 64) = sub_1B698CEC0();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    sub_1B6AB8F70("Loading session data from file is no longer valid JSON, %@", 58, 2, &dword_1B697C000, v48, v49, v50);
LABEL_32:
    sub_1B6993C94(v14, v16);
  }

  if (!v33)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v42 = qword_1EDBCCB28;
    v43 = sub_1B6AB98F0();
    sub_1B69990B4(0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1B6ABD890;
    v45 = sub_1B6AB9220();
    v47 = v46;

    *(v44 + 56) = v31;
    *(v44 + 64) = sub_1B698CEC0();
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    sub_1B6AB8F70("Loading event data from file is no longer valid JSON, %@", 56, 2, &dword_1B697C000, v42, v43, v44);
    goto LABEL_32;
  }

  v34 = *v54;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v54 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_1B69B097C(0, v34[2] + 1, 1, v34);
    *v54 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    *v54 = sub_1B69B097C((v36 > 1), v37 + 1, 1, v34);
  }

  result = sub_1B6993C94(v14, v16);
  v39 = *v54;
  *(v39 + 16) = v37 + 1;
  *(v39 + 8 * v37 + 32) = v55;
  return result;
}

uint64_t sub_1B69B0184(uint64_t *a1, uint64_t *a2, unint64_t a3, unint64_t a4)
{
  v48 = *MEMORY[0x1E69E9840];
  *&v45 = a1;
  *(&v45 + 1) = a2;
  v46 = a3;
  v47 = a4;
  sub_1B699F974();

  if (!swift_dynamicCast())
  {
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    sub_1B699F9D8(v43);
    sub_1B69B08D8(a1, a2, a3, a4, &v38);
    v8 = *(&v38 + 1);
    v9 = v38;
    if (*(&v38 + 1) >> 60 != 15)
    {
      v43[0] = v38;
      goto LABEL_54;
    }

    v10 = sub_1B6AB9B70();
    *&v43[0] = sub_1B69D5FDC(v10);
    *(&v43[0] + 1) = v11;
    MEMORY[0x1EEE9AC00](*&v43[0]);
    sub_1B69D5760(sub_1B69D654C, &v38);
    v13 = v39;
    v12 = v40;
    v14 = v41;
    v15 = *(&v43[0] + 1) >> 62;
    if ((*(&v43[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v43[0] + 16);
        v16 = *(*&v43[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v42 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v42)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v42)
        {
          sub_1B6AB8C10();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v42 == BYTE14(v43[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v43[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v43[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v43[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v43[0]), v43[0]))
      {
        goto LABEL_61;
      }

      if (v42 != DWORD1(v43[0]) - LODWORD(v43[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v38 + 1) >> 14;
    *(&v45 + 7) = 0;
    *&v45 = 0;
    if (*(&v38 + 1) >> 14 == v41 >> 14)
    {

      sub_1B69AE288(v9, v8);
      goto LABEL_54;
    }

    v33 = v9;
    v34 = v8;
    LOBYTE(v8) = 0;
    v22 = v38 >> 14;
    v23 = (v39 >> 59) & 1;
    if ((v40 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v36 = v40 & 0xFFFFFFFFFFFFFFLL;
    v35 = (v40 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v25 = v39 & 0xFFFFFFFFFFFFLL;
    }

    v37 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_1B69D5E18(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_1B6AB9400();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v38 = v13;
          *(&v38 + 1) = v36;
          v30 = *(&v38 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v35;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_1B6AB9D40();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_1B69D5E18(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v37 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_1B6AB93D0();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v45 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v38 = v45;
        *(&v38 + 6) = *(&v45 + 6);
        sub_1B6AB8C30();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_1B69AE288(v33, v34);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v38 = v45;
        *(&v38 + 6) = *(&v45 + 6);
        sub_1B6AB8C30();
        sub_1B69AE288(v33, v34);
        goto LABEL_53;
      }
    }
  }

  sub_1B6980E70(v43, &v38);
  __swift_project_boxed_opaque_existential_1(&v38, v40);
  sub_1B6AB89B0();
  v43[0] = v45;
  __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_54:
  v31 = v43[0];
  sub_1B6994494(*&v43[0], *(&v43[0] + 1));

  sub_1B6993C94(v31, *(&v31 + 1));
  return v31;
}

uint64_t *sub_1B69B06C0@<X0>(uint64_t *result@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v7 = result;
  v8 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a2 & 0xC;
  v11 = a2;
  if (v10 == 4 << v8)
  {
    v13 = a2;
    v14 = a6;
    v15 = a5;
    v16 = a3;
    result = sub_1B69D5E18(a2, a4, a5);
    a2 = v13;
    a3 = v16;
    a5 = v15;
    a6 = v14;
    v11 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v12 = (v11 >> 16);
      if (v10 != v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a6;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v11 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  result = sub_1B6AB93F0();
  a5 = v21;
  v12 = result;
  a6 = v17;
  a3 = v20;
  a2 = v19;
  if (v10 == v9)
  {
LABEL_14:
    v22 = a6;
    v23 = a5;
    v24 = a3;
    result = sub_1B69D5E18(a2, a4, a5);
    a3 = v24;
    a5 = v23;
    a6 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v9)
  {
    v25 = a2;
    v26 = a6;
    v27 = a5;
    result = sub_1B69D5E18(a3, a4, a5);
    a2 = v25;
    a5 = v27;
    a6 = v26;
    a3 = result;
    if ((v27 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = ((a3 >> 16) - (a2 >> 16));
    goto LABEL_21;
  }

  v28 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v28 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v28 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v29 = a6;
  result = sub_1B6AB93F0();
  a6 = v29;
LABEL_21:
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  if ((result + v12) < v12)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v31 = v7 + v12;
  }

  else
  {
    v31 = 0;
  }

  return sub_1B699FA64(a6, v31, v30);
}

double sub_1B69B08D8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a5 = xmmword_1B6ABD8B0;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v12[0] = a3;
      v12[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v9 = v12;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = a5;
      v9 = sub_1B6AB9D40();
      a5 = v11;
    }

    sub_1B69B06C0(v9, a1, a2, a3, a4, a5);
  }

  return result;
}

void *sub_1B69B097C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B69E8EF8(0, &qword_1EDBCAFC0, sub_1B697EFC4, MEMORY[0x1E69E6F90]);
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
    sub_1B697EFC4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69B0ACC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v5 = (a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent);
  if (*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8))
  {
    v6 = *v5;
  }

  else
  {
    v6 = sub_1B69B0B84(a2);
    *v5 = v6;
    v5[1] = v7;
  }

  v8 = *(*(a1 + v4) + 16);

  os_unfair_lock_unlock(v8);
  return v6;
}

uint64_t sub_1B69B0B84(uint64_t a1)
{
  v1 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1B69B0F8C();
  v3 = sub_1B699E9F0(0xD00000000000003ELL, 0x80000001B6ACD220, v2);
  if (v4 >> 60 == 15)
  {
    return sub_1B69992A4();
  }

  v6 = v4;
  v7 = v3;
  sub_1B6AB9310();
  v8 = v7;
  v9 = v6;
  v10 = sub_1B6AB92F0();
  if (!v11)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v25 = qword_1EDBCCB28;
    v12 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B6ABF500;
    v14 = sub_1B6AB8B80();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1B698CEC0();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = sub_1B6AB8C60();
    v20 = [v19 description];

    v21 = sub_1B6AB92E0();
    v23 = v22;

    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v21;
    *(v13 + 80) = v23;
    sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for user agent data for file %{public}@, data=%{public}@", 100, 2, &dword_1B697C000, v25, v12, v13);

    v10 = sub_1B69992A4();
  }

  v5 = v10;
  sub_1B69AE288(v8, v9);
  return v5;
}

unint64_t sub_1B69B0F8C()
{
  v0 = sub_1B69992A4();
  result = sub_1B699F46C(v0, v1);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    result = sub_1B6993C94(result, v3);
    v6 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
LABEL_10:
      if (v6 + 0x4000000000000000 >= 0)
      {
        return 2 * v6;
      }

      __break(1u);
LABEL_12:
      sub_1B6993C94(result, v3);
      v6 = 0;
      return 2 * v6;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    result = sub_1B6993C94(result, v3);
    v6 = v5;
    goto LABEL_10;
  }

  v9 = HIDWORD(result);
  v10 = result;
  result = sub_1B6993C94(result, v3);
  LODWORD(v6) = v9 - v10;
  if (!__OFSUB__(v9, v10))
  {
    v6 = v6;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *sub_1B69B1028(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B6AB8900();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B6AB8930();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B6AB8920();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1B69B10D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v5 = a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType;
  if (*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType + 8) == 1)
  {
    v6 = sub_1B69B1168(a1, a2);
    *v5 = v6;
    *(v5 + 8) = 0;
  }

  else
  {
    v6 = *v5;
  }

  os_unfair_lock_unlock(*(*(a1 + v4) + 16));
  return v6;
}

unint64_t sub_1B69B1168(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B699E9F0(0xD000000000000039, 0x80000001B6ACD0A0, 8);
  if (v5 >> 60 == 15)
  {
    return a2;
  }

  v6 = v5;
  v7 = v4;
  sub_1B6AB9310();
  v8 = v7;
  v67 = v6;
  result = sub_1B6AB92F0();
  if (!v10)
  {
    v66 = a2;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDBCCB28;
    v23 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1B6ABF500;
    v25 = sub_1B6AB8B80();
    v27 = v26;
    v28 = MEMORY[0x1E69E6158];
    *(v24 + 56) = MEMORY[0x1E69E6158];
    v29 = sub_1B698CEC0();
    *(v24 + 64) = v29;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    v30 = sub_1B6AB8C60();
    v31 = [v30 description];

    v32 = sub_1B6AB92E0();
    v34 = v33;

    *(v24 + 96) = v28;
    *(v24 + 104) = v29;
    *(v24 + 72) = v32;
    *(v24 + 80) = v34;
    sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for content type data for file %{public}@, data=%{public}@", 102, 2, &dword_1B697C000, v22, v23, v24);

    sub_1B69AE288(v7, v67);
    return v66;
  }

  v11 = result;
  v12 = v10;
  v13 = HIBYTE(v10) & 0xF;
  v14 = result & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_69;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    v61 = sub_1B6AB1B98(v11, v12, 10);
    v63 = v62;

    if (v63 & 1) != 0 || (v50 = sub_1B69B193C(v61), (v64))
    {
LABEL_69:
      v52 = a2;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v53 = qword_1EDBCCB28;
      v54 = sub_1B6AB98E0();
      sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1B6ABF500;
      v56 = sub_1B6AB8B80();
      v58 = v57;
      v59 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      v60 = sub_1B698CEC0();
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      *(v55 + 96) = v59;
      *(v55 + 104) = v60;
      *(v55 + 64) = v60;
      *(v55 + 72) = v11;
      *(v55 + 80) = v12;
      sub_1B6AB8F70("Upload dropbox failed to parse integer from content type string for file %{public}@, string=%{public}@", 102, 2, &dword_1B697C000, v53, v54, v55);

      sub_1B69AE288(v8, v67);
      return v52;
    }

    goto LABEL_74;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v13 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B6AB9D40();
      v13 = result;
    }

    v16 = *v13;
    if (v16 == 43)
    {
      if (v14 >= 1)
      {
        v38 = v14 - 1;
        if (v14 != 1)
        {
          v18 = 0;
          if (v13)
          {
            v39 = (v13 + 1);
            while (1)
            {
              v40 = *v39 - 48;
              if (v40 > 9)
              {
                goto LABEL_66;
              }

              v41 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_66;
              }

              v18 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_66;
              }

              ++v39;
              if (!--v38)
              {
LABEL_58:
                LOBYTE(v13) = 0;
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v16 != 45)
    {
      if (v14)
      {
        v18 = 0;
        if (v13)
        {
          while (1)
          {
            v45 = *v13 - 48;
            if (v45 > 9)
            {
              goto LABEL_66;
            }

            v46 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_66;
            }

            v18 = v46 + v45;
            if (__OFADD__(v46, v45))
            {
              goto LABEL_66;
            }

            ++v13;
            if (!--v14)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_66:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_67;
    }

    if (v14 >= 1)
    {
      v17 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v13)
        {
          v19 = (v13 + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_66;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_66;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_66;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_67:
        LOBYTE(v69) = v13;
        if (v13)
        {
          goto LABEL_69;
        }

        v50 = sub_1B69B193C(v18);
        if (v51)
        {
          goto LABEL_69;
        }

LABEL_74:
        v65 = v50;

        sub_1B69AE288(v7, v67);
        return v65;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v68[0] = result;
  v68[1] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v13)
      {
        v18 = 0;
        v47 = v68;
        while (1)
        {
          v48 = *v47 - 48;
          if (v48 > 9)
          {
            break;
          }

          v49 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v49 + v48;
          if (__OFADD__(v49, v48))
          {
            break;
          }

          ++v47;
          if (!--v13)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v13)
    {
      if (--v13)
      {
        v18 = 0;
        v35 = v68 + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v37 - v36;
          if (__OFSUB__(v37, v36))
          {
            break;
          }

          ++v35;
          if (!--v13)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_78;
  }

  if (v13)
  {
    if (--v13)
    {
      v18 = 0;
      v42 = v68 + 1;
      while (1)
      {
        v43 = *v42 - 48;
        if (v43 > 9)
        {
          break;
        }

        v44 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v44 + v43;
        if (__OFADD__(v44, v43))
        {
          break;
        }

        ++v42;
        if (!--v13)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_80:
  __break(1u);
  return result;
}

unint64_t sub_1B69B193C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B69B1980(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v7 = (a1 + *a2);
  if (v7[1])
  {
    v8 = *v7;
  }

  else
  {
    v8 = a3(a1);
    *v7 = v8;
    v7[1] = v9;
  }

  v10 = *(*(a1 + v6) + 16);

  os_unfair_lock_unlock(v10);
  return v8;
}

uint64_t sub_1B69B1A40()
{
  v0 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1B699E9F0(0xD000000000000037, 0x80000001B6ACCFA0, 512);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v2;
  v5 = v1;
  sub_1B6AB9310();
  v6 = v5;
  v7 = v4;
  v8 = sub_1B6AB92F0();
  if (v9)
  {
    v10 = v8;
    sub_1B69AE288(v5, v4);
    return v10;
  }

  else
  {
    v24 = v8;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDBCCB28;
    v12 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B6ABF500;
    v14 = sub_1B6AB8B80();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1B698CEC0();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = sub_1B6AB8C60();
    v20 = [v19 description];

    v21 = sub_1B6AB92E0();
    v23 = v22;

    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v21;
    *(v13 + 80) = v23;
    sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for group name data for file %{public}@, data=%{public}@", 100, 2, &dword_1B697C000, v11, v12, v13);

    sub_1B69AE288(v6, v7);
    return v24;
  }
}

void sub_1B69B1E58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  sub_1B69B1EC0(a1, a2);
  v5 = *(*(a1 + v4) + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t sub_1B69B1EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69867F8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate;
  swift_beginAccess();
  sub_1B69B20C4(a1 + v10, v9);
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1B69AD890(v9, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
    sub_1B69B2180(a2);
    sub_1B69B20C4(a2, v7);
    swift_beginAccess();
    sub_1B69B2890(v7, a1 + v10);
    return swift_endAccess();
  }

  else
  {
    (*(v12 + 32))(a2, v9, v11);
    return (*(v12 + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_1B69B20C4(uint64_t a1, uint64_t a2)
{
  sub_1B69B2128(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69B2128(uint64_t a1)
{
  if (!qword_1EDBCCF40)
  {
    sub_1B6AB8DB0();
    v1 = sub_1B6AB9B30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBCCF40);
    }
  }
}

uint64_t sub_1B69B2180@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8DA0();
  sub_1B6AB8D60();
  (*(v4 + 8))(v6, v3);
  sub_1B6AB97A0();

  v7 = sub_1B699E9F0(0xD00000000000003FLL, 0x80000001B6ACD3E0, 16);
  if (v8 >> 60 == 15)
  {
    return (*(v4 + 56))(a1, 1, 1, v3);
  }

  v40 = v3;
  v9 = v8;
  v10 = v7;
  sub_1B6AB9310();
  v11 = v10;
  v12 = v9;
  v13 = sub_1B6AB92F0();
  if (!v14)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v39 = qword_1EDBCCB28;
    HIDWORD(v38) = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B6ABF500;
    v22 = sub_1B6AB8B80();
    v24 = v23;
    v25 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1B698CEC0();
    *(v21 + 64) = v26;
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v27 = sub_1B6AB8C60();
    v28 = [v27 description];

    v29 = sub_1B6AB92E0();
    v31 = v30;

    *(v21 + 96) = v25;
    *(v21 + 104) = v26;
    *(v21 + 72) = v29;
    *(v21 + 80) = v31;
    sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for session start date data for file %{public}@, data=%{public}@", 108, 2, &dword_1B697C000, v39, HIDWORD(v38), v21);
    sub_1B69AE288(v11, v12);
    goto LABEL_12;
  }

  v15 = v13;
  v16 = v14;
  v41 = 0;
  if (!sub_1B69B2798(v13, v14, &v41))
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v39 = qword_1EDBCCB28;
    HIDWORD(v38) = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1B6ABF500;
    v33 = sub_1B6AB8B80();
    v35 = v34;
    v36 = MEMORY[0x1E69E6158];
    *(v32 + 56) = MEMORY[0x1E69E6158];
    v37 = sub_1B698CEC0();
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    *(v32 + 96) = v36;
    *(v32 + 104) = v37;
    *(v32 + 64) = v37;
    *(v32 + 72) = v15;
    *(v32 + 80) = v16;
    sub_1B6AB8F70("Upload dropbox failed to parse integer from session start date string for file %{public}@, string=%{public}@", 108, 2, &dword_1B697C000, v39, HIDWORD(v38), v32);
    sub_1B69AE288(v11, v12);
LABEL_12:

    v17 = *(v4 + 56);
    v18 = a1;
    v19 = 1;
    return v17(v18, v19, 1, v40);
  }

  sub_1B6AB8D50();
  sub_1B69AE288(v11, v9);
  v17 = *(v4 + 56);
  v18 = a1;
  v19 = 0;
  return v17(v18, v19, 1, v40);
}

BOOL sub_1B69B2798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1B6AB9C90();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_1B69B2890(uint64_t a1, uint64_t a2)
{
  sub_1B69867F8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B69B293C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v5 = (a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_timestampConfiguration);
  v6 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_timestampConfiguration);
  if (v6 == 5)
  {
    sub_1B69B29DC(v9);
    v6 = v9[0];
    v7 = v9[1];
    *v5 = v9[0];
    v5[1] = v7;
  }

  else
  {
    v7 = v5[1];
  }

  *a2 = v6;
  a2[1] = v7;
  v8 = *(*(a1 + v4) + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1B69B29DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B699E9F0(0xD00000000000003DLL, 0x80000001B6ACD4E0, 512);
  v4 = v3;
  if (v3 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v5 = result;
  sub_1B6994494(result, v3);
  v6 = sub_1B69B3200(v5, v4);
  if (!v7)
  {
    v53 = v5;
    v54 = v4;
    sub_1B6994494(v5, v4);
    sub_1B697ED90(0, &qword_1EB95C498, MEMORY[0x1E69E6EE0]);
    if (swift_dynamicCast())
    {
      sub_1B6980E70(&v50, &v55);
      __swift_project_boxed_opaque_existential_1(&v55, v56);
      if (sub_1B6AB9EC0())
      {
        sub_1B69AE288(v5, v4);
        __swift_project_boxed_opaque_existential_1(&v55, v56);
        sub_1B6AB9EB0();
        v8 = *(&v50 + 1);
        v9 = v50;
        __swift_destroy_boxed_opaque_existential_1(&v55);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1(&v55);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_1B6A7B2D8(&v50);
    }

    v6 = sub_1B6A78C40(v5, v4);
  }

  v9 = v6;
  v8 = v7;
  sub_1B69AE288(v5, v4);
LABEL_11:
  v55 = 0;
  v10 = sub_1B69B2798(v9, v8, &v55);

  if (!v10)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v46 = qword_1EDBCCB28;
    v14 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B6ABF500;
    v16 = sub_1B6AB8B80();
    v18 = v17;
    v19 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v20 = sub_1B698CEC0();
    *(v15 + 64) = v20;
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v21 = sub_1B6AB8C60();
    v22 = [v21 description];

    v23 = sub_1B6AB92E0();
    v25 = v24;

    *(v15 + 96) = v19;
    *(v15 + 104) = v20;
    *(v15 + 72) = v23;
    *(v15 + 80) = v25;
    sub_1B6AB8F70("Upload dropbox failed to parse integer from timestamp jitter string for file %{public}@, string=%{public}@", 106, 2, &dword_1B697C000, v46, v14, v15);
    sub_1B69AE288(v5, v4);

    goto LABEL_6;
  }

  v11 = v55;
  v12 = sub_1B699E9F0(0xD000000000000042, 0x80000001B6ACD580, 512);
  v26 = v13;
  v47 = v11;
  if (v13 >> 60 == 15)
  {
    result = sub_1B69AE288(v5, v4);
LABEL_6:
    *a1 = xmmword_1B6AC0320;
    return result;
  }

  v27 = v12;
  sub_1B6994494(v12, v13);
  v28 = sub_1B69B3200(v27, v26);
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    sub_1B69AE288(v27, v26);
LABEL_20:
    v32 = v47;
    goto LABEL_27;
  }

  v53 = v27;
  v54 = v26;
  sub_1B6994494(v27, v26);
  sub_1B697ED90(0, &qword_1EB95C498, MEMORY[0x1E69E6EE0]);
  if (swift_dynamicCast())
  {
    sub_1B6980E70(&v50, &v55);
    __swift_project_boxed_opaque_existential_1(&v55, v56);
    if (sub_1B6AB9EC0())
    {
      sub_1B69AE288(v27, v26);
      __swift_project_boxed_opaque_existential_1(&v55, v56);
      sub_1B6AB9EB0();
      v31 = *(&v50 + 1);
      v30 = v50;
      __swift_destroy_boxed_opaque_existential_1(&v55);
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v55);
    v32 = v47;
  }

  else
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_1B6A7B2D8(&v50);
    v32 = v47;
  }

  v30 = sub_1B6A78C40(v27, v26);
  v31 = v33;
  sub_1B69AE288(v27, v26);
LABEL_27:
  v34._countAndFlagsBits = v30;
  v34._object = v31;
  TimestampGranularity.init(rawValue:)(v34);
  if (v49 == 5)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v48 = qword_1EDBCCB28;
    v45 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B6ABF500;
    v36 = sub_1B6AB8B80();
    v38 = v37;
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v39 = sub_1B698CEC0();
    *(v35 + 64) = v39;
    *(v35 + 32) = v36;
    *(v35 + 40) = v38;
    v40 = sub_1B6AB8C60();
    v41 = [v40 description];

    v42 = sub_1B6AB92E0();
    v44 = v43;

    *(v35 + 96) = MEMORY[0x1E69E6158];
    *(v35 + 104) = v39;
    *(v35 + 72) = v42;
    *(v35 + 80) = v44;
    sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for timestamp granularity data for file %{public}@, data=%{public}@", 111, 2, &dword_1B697C000, v48, v45, v35);
    sub_1B69AE288(v5, v4);
    sub_1B69AE288(v27, v26);

    goto LABEL_6;
  }

  sub_1B69AE288(v5, v4);
  result = sub_1B69AE288(v27, v26);
  *a1 = v49;
  *(a1 + 8) = v32;
  return result;
}

uint64_t sub_1B69B3200(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1B6AB9360();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1B6AB9360();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1B6AB8900();
  if (a1)
  {
    a1 = sub_1B6AB8930();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1B6AB8900() || !__OFSUB__(v5, sub_1B6AB8930()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1B6AB8920();
  return sub_1B6AB9360();
}

AppAnalytics::TimestampGranularity_optional __swiftcall TimestampGranularity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6AB9EF0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B69B343C()
{
  v0 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1B699E9F0(0xD00000000000003FLL, 0x80000001B6ACCEA0, 512);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v2;
  v5 = v1;
  sub_1B6AB9310();
  v6 = v5;
  v7 = v4;
  v8 = sub_1B6AB92F0();
  if (v9)
  {
    v10 = v8;
    sub_1B69AE288(v5, v4);
    return v10;
  }

  else
  {
    v24 = v8;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v11 = qword_1EDBCCB28;
    v12 = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B6ABF500;
    v14 = sub_1B6AB8B80();
    v16 = v15;
    v17 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1B698CEC0();
    *(v13 + 64) = v18;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    v19 = sub_1B6AB8C60();
    v20 = [v19 description];

    v21 = sub_1B6AB92E0();
    v23 = v22;

    *(v13 + 96) = v17;
    *(v13 + 104) = v18;
    *(v13 + 72) = v21;
    *(v13 + 80) = v23;
    sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for sessionID data for file %{public}@, data=%{public}@", 99, 2, &dword_1B697C000, v11, v12, v13);

    sub_1B69AE288(v6, v7);
    return v24;
  }
}

uint64_t sub_1B69B3830(uint64_t a1, uint64_t a2)
{
  sub_1B69882EC(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1B69B38D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1B6986740(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B69B39C0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    sub_1B6986740(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B69B3AA0(uint64_t *a1)
{
  v2 = v1;
  v3 = sub_1B69B3B58(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B69DE144();
    v7 = v11;
  }

  v8 = *(v7 + 48) + 40 * v5;
  sub_1B69B47D4(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32));
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_1B69E5834(v5, v7);
  *v2 = v7;
  return v9;
}

unint64_t sub_1B69B3B58(uint64_t *a1)
{
  sub_1B6ABA1F0();
  if (a1[4])
  {
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  v2 = sub_1B6ABA230();

  return sub_1B69B3C20(a1, v2);
}

unint64_t sub_1B69B3C20(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v7 = *a1;
  v6 = a1[1];
  v27 = a1[3];
  v28 = a1[2];
  v24 = v6;
  v25 = ~v3;
  v26 = *(a1 + 32);
  while (1)
  {
    v8 = *(v30 + 48) + 40 * v4;
    v9 = *v8;
    v10 = *(v8 + 8);
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v13 = *(v8 + 32);
    if (v13)
    {
      break;
    }

    if (a1[4])
    {
LABEL_3:
      sub_1B69E0EFC(a1, v31);
LABEL_4:
      sub_1B69E0EBC(v9, v10, v12, v11, v13);
      sub_1B69B47D4(v9, v10, v12, v11, v13);
      sub_1B69B47D4(v7, v6, v28, v27, v26 & 1);
      goto LABEL_5;
    }

    if (v9 == *a1 && v10 == a1[1])
    {
      sub_1B69E0EFC(a1, v31);
      goto LABEL_30;
    }

    v22 = sub_1B6ABA0F0();
    sub_1B69E0EFC(a1, v31);
    sub_1B69E0EBC(v9, v10, v12, v11, 0);
    sub_1B69B47D4(v9, v10, v12, v11, 0);
    sub_1B69B47D4(v7, v6, v28, v27, v26 & 1);
    if (v22)
    {
      return v4;
    }

LABEL_5:
    v4 = (v4 + 1) & v25;
    if (((*(v29 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  if ((a1[4] & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = v7;
  v15 = a1[2];
  v16 = a1[3];
  v17 = v9 == *a1 && v10 == a1[1];
  if (!v17 && (sub_1B6ABA0F0() & 1) == 0)
  {
    sub_1B69E0EFC(a1, v31);
    v7 = v14;
    v6 = v24;
    goto LABEL_4;
  }

  if (v12 != v15 || v11 != v16)
  {
    v19 = sub_1B6ABA0F0();
    sub_1B69E0EFC(a1, v31);
    sub_1B69E0EBC(v9, v10, v12, v11, 1);
    sub_1B69B47D4(v9, v10, v12, v11, 1);
    v7 = v14;
    v20 = v14;
    v6 = v24;
    sub_1B69B47D4(v20, v24, v28, v27, v26 & 1);
    if (v19)
    {
      return v4;
    }

    goto LABEL_5;
  }

  sub_1B69E0EFC(a1, v31);
  v7 = v14;
  v6 = v24;
LABEL_30:
  sub_1B69E0EBC(v9, v10, v12, v11, v13);
  sub_1B69B47D4(v9, v10, v12, v11, v13);
  sub_1B69B47D4(v7, v6, v28, v27, v26 & 1);
  return v4;
}

unint64_t Batch.toJSONObject()()
{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6986740(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v63 - v7;
  v9 = type metadata accessor for Batch(0);
  sub_1B69B20C4(v1 + *(v9 + 56), v8);
  v10 = (*(v3 + 48))(v8, 1, v2);
  v11 = 0;
  if (v10 != 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1B6AB8D60();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = v13 * 1000.0;
    if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_46;
    }

    if (v14 <= -9.22337204e18)
    {
LABEL_47:
      __break(1u);
    }

    else if (v14 < 9.22337204e18)
    {
      v11 = v14;
      goto LABEL_6;
    }

    __break(1u);
  }

LABEL_6:
  sub_1B6986740(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v76 = xmmword_1B6ABF500;
  *(inited + 16) = xmmword_1B6ABF500;
  *(inited + 32) = 0x617461646174656DLL;
  v66 = inited + 32;
  v68 = inited;
  *(inited + 40) = 0xE800000000000000;
  v16 = swift_initStackObject();
  *(v16 + 32) = 0x6E6F6973726576;
  *(v16 + 16) = xmmword_1B6ABD530;
  v17 = MEMORY[0x1E69E6158];
  *(v16 + 40) = 0xE700000000000000;
  *(v16 + 48) = 0x312E312E30;
  *(v16 + 56) = 0xE500000000000000;
  *(v16 + 72) = v17;
  *(v16 + 80) = 0x696669746E656469;
  *(v16 + 88) = 0xEA00000000007265;
  v18 = v1[3];
  *(v16 + 96) = v1[2];
  *(v16 + 104) = v18;
  *(v16 + 120) = v17;
  *(v16 + 128) = 0x7461446873756C66;
  *(v16 + 136) = 0xE900000000000065;
  if (v10 == 1)
  {
    v78 = 0u;
    v79 = 0u;
    v19 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v20 = [v19 init];
    *(v16 + 168) = sub_1B69E0520();
    *(v16 + 144) = v20;
    if (*(&v79 + 1))
    {
      sub_1B6981634(&v78);
    }
  }

  else
  {
    *(&v79 + 1) = MEMORY[0x1E69E7360];
    *&v78 = v11;
    sub_1B69979CC(&v78, (v16 + 144));
  }

  v21 = sub_1B69B4888(v16);
  swift_setDeallocating();
  sub_1B69B4824();
  v23 = v22;
  swift_arrayDestroy();
  sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
  v25 = v24;
  v26 = v68;
  v68[6] = v21;
  v26[9] = v24;
  v26[10] = 1635017060;
  v26[11] = 0xE400000000000000;
  v27 = swift_initStackObject();
  *(v27 + 32) = 0x6E6F6973736573;
  *(v27 + 16) = v76;
  *(v27 + 40) = 0xE700000000000000;
  *(v27 + 48) = *v1;
  *(v27 + 72) = v25;
  *(v27 + 80) = 0x73746E657665;
  *(v27 + 88) = 0xE600000000000000;
  v28 = v1[1];
  v29 = *(v28 + 16);
  if (v29)
  {
    v63[0] = v27;
    v63[1] = v27 + 32;
    v64 = v25;
    v65 = v23;
    v77 = MEMORY[0x1E69E7CC0];

    v69 = v29;
    sub_1B69B4A24(0, v29, 0);
    v30 = 0;
    v31 = v77;
    v70 = v28 + 32;
    while (1)
    {
      v32 = *(v70 + 8 * v30);
      v33 = *(v32 + 32);
      v34 = v33 & 0x3F;
      v74 = ((1 << v33) + 63) >> 6;
      v35 = 8 * v74;

      if (v34 <= 0xD)
      {
        goto LABEL_13;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_13:
        v72 = v30;
        v73 = v31;
        v71 = v63;
        MEMORY[0x1EEE9AC00](v36);
        v75 = v63 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v75, v35);
        *&v76 = 0;
        v37 = 0;
        v38 = 1 << *(v32 + 32);
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v40 = v39 & *(v32 + 64);
        v41 = (v38 + 63) >> 6;
        while (1)
        {
          if (v40)
          {
            v42 = __clz(__rbit64(v40));
            v40 &= v40 - 1;
            goto LABEL_25;
          }

          v43 = v37;
          do
          {
            v37 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            if (v37 >= v41)
            {
              v52 = sub_1B69B4BEC(v75, v74, v76, v32);
              v30 = v72;
              v31 = v73;
              goto LABEL_34;
            }

            v44 = *(v32 + 64 + 8 * v37);
            ++v43;
          }

          while (!v44);
          v42 = __clz(__rbit64(v44));
          v40 = (v44 - 1) & v44;
LABEL_25:
          v45 = v42 | (v37 << 6);
          v46 = (*(v32 + 48) + 16 * v45);
          v47 = *v46;
          v48 = v46[1];
          sub_1B698FE74(*(v32 + 56) + 32 * v45, v80);
          *&v78 = v47;
          *(&v78 + 1) = v48;
          sub_1B698FE74(v80, &v79);
          if (v47 == 0x4D65746176697270 && v48 == 0xEF61746164617465)
          {
            swift_bridgeObjectRetain_n();
            sub_1B69B4B90(&v78);
            __swift_destroy_boxed_opaque_existential_1(v80);

            continue;
          }

          v50 = sub_1B6ABA0F0();
          swift_bridgeObjectRetain_n();
          sub_1B69B4B90(&v78);
          __swift_destroy_boxed_opaque_existential_1(v80);

          if ((v50 & 1) == 0)
          {
            *&v75[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
            v51 = __OFADD__(v76, 1);
            *&v76 = v76 + 1;
            if (v51)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v55 = swift_slowAlloc();

      v56 = v67;
      v57 = sub_1B6A33038(v55, v74, v32, sub_1B6A32D98);
      v67 = v56;
      if (v56)
      {
        break;
      }

      v52 = v57;

      MEMORY[0x1B8C99550](v55, -1, -1);
LABEL_34:

      v77 = v31;
      v54 = *(v31 + 16);
      v53 = *(v31 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1B69B4A24((v53 > 1), v54 + 1, 1);
        v31 = v77;
      }

      ++v30;
      *(v31 + 16) = v54 + 1;
      *(v31 + 8 * v54 + 32) = v52;
      if (v30 == v69)
      {
        v25 = v64;
        v27 = v63[0];
        goto LABEL_43;
      }
    }

    result = MEMORY[0x1B8C99550](v55, -1, -1);
    __break(1u);
  }

  else
  {

    v31 = MEMORY[0x1E69E7CC0];
LABEL_43:
    sub_1B6986668(0);
    *(v27 + 120) = v58;
    *(v27 + 96) = v31;
    v59 = sub_1B69B4888(v27);
    swift_setDeallocating();
    swift_arrayDestroy();
    v60 = v68;
    v68[15] = v25;
    *(v60 + 96) = v59;
    v61 = sub_1B69B4888(v60);
    swift_setDeallocating();
    swift_arrayDestroy();
    return v61;
  }

  return result;
}

uint64_t sub_1B69B47D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

void sub_1B69B4824()
{
  if (!qword_1EDBCAFF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCAFF8);
    }
  }
}

unint64_t sub_1B69B4888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EDBCBB10, MEMORY[0x1E69E7CA0] + 8);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E6158];
    while (1)
    {
      sub_1B69F7CCC(v4, &v14, &qword_1EDBCAFF8, v5, MEMORY[0x1E69E7CA0] + 8);
      v6 = v14;
      v7 = v15;
      result = sub_1B6993940(v14, v15);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      result = sub_1B69979CC(&v16, (v3[7] + 32 * result));
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B69B49CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_1B69B4A24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B69B4A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69B4A44(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B69E8EF8(0, &qword_1EDBCAFC0, sub_1B697EFC4, MEMORY[0x1E69E6F90]);
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
    sub_1B697EFC4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69B4B90(uint64_t a1)
{
  sub_1B69A1808();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69B4BEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B6988228(0, &qword_1EDBCBB10, MEMORY[0x1E69E6EC8]);
  result = sub_1B6AB9E90();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1B698FE74(v17 + 32 * v16, v33);
    sub_1B69979CC(v33, v32);
    sub_1B6ABA1F0();

    sub_1B6AB9380();
    result = sub_1B6ABA230();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1B69979CC(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B69B4E4C()
{
  sub_1B6988350(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v43 - v2;
  v4 = type metadata accessor for Session(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8BB0();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v43 - v12;
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v0[10] = MEMORY[0x1E69E7CC8];

  os_unfair_lock_unlock(*(v0[11] + 16));
  v14 = __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v15 = *v14;
  v16 = (*v14 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v17 = v16[3];
  v18 = v16[4];
  v46 = v16;
  v47 = v17;
  v45 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v19 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v15 + v19, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1B699D254(v3, qword_1EDBCCC78, type metadata accessor for Session);
    v20 = *(v15 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v21 = *(v15 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v20);
    (*(v21 + 8))(v20, v21);
    v23 = v48;
    v22 = v49;
  }

  else
  {
    sub_1B69B5BF8(v3, v7, type metadata accessor for Session);
    v24 = *(v15 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v25 = *(v15 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v24);
    (*(v25 + 8))(v24, v25);
    sub_1B6AB8B30();
    v26 = v48;
    v22 = v49;
    (*(v48 + 8))(v11, v49);
    sub_1B69B6D24(v7, type metadata accessor for Session);
    v23 = v26;
  }

  v27 = v50;
  v28 = (*(v18 + 128))(v13, v47, v18);
  if (v27)
  {
    return (*(v23 + 8))(v13, v22);
  }

  v30 = v28;
  (*(v23 + 8))(v13, v22);
  v31 = *(v30 + 16);
  v43[0] = v30;
  if (v31)
  {
    v32 = (v30 + 40);
    v44 = xmmword_1B6ABF500;
    v45 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
    v43[1] = v15;
    do
    {
      v33 = *(v32 - 1);
      v34 = *v32;

      os_unfair_lock_lock_with_options();
      v50 = v33;
      v35 = sub_1B699D580(v33, v34);
      v36 = v46[3];
      v37 = v46[4];
      __swift_project_boxed_opaque_existential_1(v46, v36);
      (*(v37 + 24))(v35, v36, v37);

      swift_beginAccess();
      v38 = sub_1B6993940(v50, v34);
      if (v39)
      {
        v40 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *(v15 + 40);
        v51 = v42;
        *(v15 + 40) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B69DDE44();
          v42 = v51;
        }

        sub_1B69AD900(v40, v42);
        *(v15 + 40) = v42;
      }

      swift_endAccess();

      os_unfair_lock_unlock(*(*(v45 + v15) + 16));
      v32 += 2;
      --v31;
    }

    while (v31);
  }
}

char *sub_1B69B5508()
{
  v1 = sub_1B6AB8BB0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v37 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v37 - v9;
  result = sub_1B699344C();
  if (v0)
  {
    return v8;
  }

  v12 = result;
  v39 = v8;
  v45 = v5;
  v43 = *(result + 2);
  v37[1] = 0;
  if (!v43)
  {
    v40 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v23 = *(v40 + 2);
    if (v23)
    {
      v46 = MEMORY[0x1E69E7CC0];
      v24 = v40;
      sub_1B6994474(0, v23, 0);
      v8 = v46;
      v26 = *(v2 + 16);
      v25 = v2 + 16;
      v27 = v24 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
      v42 = *(v25 + 56);
      v43 = v26;
      v41 = (v25 - 8);
      v28 = v45;
      v44 = v25;
      do
      {
        v43(v28, v27, v1);
        v29 = sub_1B6AB8B10();
        v28 = v45;
        v30 = v29;
        v32 = v31;
        v33 = v1;
        (*v41)(v45, v1);
        v46 = v8;
        v35 = *(v8 + 2);
        v34 = *(v8 + 3);
        if (v35 >= v34 >> 1)
        {
          sub_1B6994474((v34 > 1), v35 + 1, 1);
          v28 = v45;
          v8 = v46;
        }

        *(v8 + 2) = v35 + 1;
        v36 = &v8[16 * v35];
        *(v36 + 4) = v30;
        *(v36 + 5) = v32;
        v27 += v42;
        --v23;
        v1 = v33;
      }

      while (v23);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v8;
  }

  v13 = 0;
  v38 = (v2 + 32);
  v41 = (v2 + 8);
  v42 = v2 + 16;
  v40 = MEMORY[0x1E69E7CC0];
  v44 = v2;
  while (v13 < *(v12 + 2))
  {
    v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v15 = *(v2 + 72);
    (*(v2 + 16))(v10, &v12[v14 + v15 * v13], v1);
    if ((sub_1B6AB8B00() & 1) == 0)
    {
      sub_1B6AB8AC0();
      if (sub_1B6AB9420())
      {
      }

      else
      {
        v16 = sub_1B6AB9420();

        if ((v16 & 1) == 0)
        {
          v17 = *v38;
          (*v38)(v39, v10, v1);
          v18 = v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v20 = v18;
          v46 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B699D530(0, *(v18 + 2) + 1, 1);
            v20 = v46;
          }

          v22 = *(v20 + 2);
          v21 = *(v20 + 3);
          if (v22 >= v21 >> 1)
          {
            v40 = v17;
            sub_1B699D530((v21 > 1), v22 + 1, 1);
            v17 = v40;
            v20 = v46;
          }

          *(v20 + 2) = v22 + 1;
          v40 = v20;
          result = (v17)(&v20[v14 + v22 * v15]);
          v2 = v44;
          goto LABEL_6;
        }
      }
    }

    result = (*v41)(v10, v1);
LABEL_6:
    if (v43 == ++v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69B596C(uint64_t a1, uint64_t a2)
{
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1B69B5A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBCBB08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

uint64_t sub_1B69B5B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 88);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v4;
  v10[5] = a1;
  v10[6] = a2;

  sub_1B69877A4(v9, sub_1B69B5C60, v10);
}

uint64_t sub_1B69B5BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B5C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1B6AB9B30();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v4 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1B6AB9110();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v19 = sub_1B69B5FF4(a1, a2, a3, a4);
    v21 = v20;
    swift_beginAccess();
    v22 = *(v4 + 128);
    if (*(v22 + 16))
    {
      v31[1] = v4;

      v23 = sub_1B6993940(v19, v21);
      if (v24)
      {
        sub_1B6982544(*(v22 + 56) + 40 * v23, &v34);

        sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
        v26 = type metadata accessor for DataEventStack(0, a3, a4, v25);
        if (swift_dynamicCast())
        {
          v27 = v38;
          v28 = v39;

          v29 = sub_1B6A25EF0(v27, *(&v27 + 1), v28, a3, a4);

          if ((v29 & 1) == 0)
          {
            sub_1B6A261AC(v26, v30, v11);
            (*(v32 + 8))(v11, v33);
            v36 = v26;
            v37 = &off_1F2E77398;
            v34 = v38;
            v35 = v39;
            swift_beginAccess();
            sub_1B699A480(&v34, v19, v21);
            return swift_endAccess();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69B5FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    a1 = sub_1B6ABA330();
  }

  return a1;
}

uint64_t objectdestroy_156Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t Tracker.time<A>(_:submitAndRestartWithSession:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 104);

  sub_1B6AB8DA0();
  sub_1B69B61BC(a1, v13, v7, v12, a3, a4);

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1B69B61BC(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v21 = a3;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(v6 + 88);
  v18 = *(v6 + 96);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 2) = v19;
  *(v15 + 3) = v16;
  *(v15 + 4) = v6;
  *(v15 + 5) = a1;
  *(v15 + 6) = a2;
  (*(v11 + 32))(&v15[v14], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15[v14 + v12] = v21;

  sub_1B6992B50(a1, a2);
  sub_1B69877A4(v13, sub_1B69C33D0, v15);
}

uint64_t sub_1B69B6350()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;

  sub_1B69C346C(*(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t UploadBatchEventProcessor.didStartSession(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1((*(v1 + 16) + 32), *(*(v1 + 16) + 56));
  sub_1B69B66B8(a1);
  sub_1B69B4E4C();
  sub_1B69B6D84(a1, v6);
  v7 = type metadata accessor for Session(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B6B60(v6, v2 + v8);
  return swift_endAccess();
}

void sub_1B69B66B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Session(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8BB0();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v30 - v12;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v32 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  os_unfair_lock_lock_with_options();
  sub_1B69B6AF8(a1, v18, type metadata accessor for Session);
  (*(v5 + 56))(v18, 0, 1, v4);
  v19 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B6B60(v18, v2 + v19);
  swift_endAccess();
  v20 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v21 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v30 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v20);
  sub_1B69B596C(v2 + v19, v16);
  if ((*(v5 + 48))(v16, 1, v4) == 1)
  {
    sub_1B698E840(v16, qword_1EDBCCC78, type metadata accessor for Session);
    v22 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v23 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v22);
    v24 = v31;
    (*(v23 + 8))(v22, v23);
    v26 = v33;
    v25 = v34;
  }

  else
  {
    sub_1B69B6BF4(v16, v7, type metadata accessor for Session);
    v27 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v28 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v27);
    (*(v28 + 8))(v27, v28);
    v24 = v31;
    sub_1B6AB8B30();
    v26 = v33;
    v29 = v34;
    (*(v33 + 8))(v11, v34);
    sub_1B69B6CC4(v7, type metadata accessor for Session);
    v25 = v29;
  }

  (*(v21 + 120))(v24, v20, v21);
  (*(v26 + 8))(v24, v25);
  os_unfair_lock_unlock(*(*(v2 + v32) + 16));
}

uint64_t sub_1B69B6AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B6B60(uint64_t a1, uint64_t a2)
{
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69B6BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B6C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B6CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B69B6D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B69B6D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69B6DF8(uint64_t *a1, const char *a2, ...)
{
  v16 = *(v2 + 56);
  v4 = sub_1B6AB98D0();
  sub_1B69990B4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B6ABD530;
  v6 = *a1;
  v7 = a1[1];
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1B698CEC0();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  type metadata accessor for Session(0);
  sub_1B6AB8DB0();
  sub_1B69B6F38();

  v10 = sub_1B6ABA080();
  *(v5 + 96) = v8;
  *(v5 + 104) = v9;
  *(v5 + 72) = v10;
  *(v5 + 80) = v11;
  v12 = sub_1B6AB9220();
  *(v5 + 136) = v8;
  *(v5 + 144) = v9;
  *(v5 + 112) = v12;
  *(v5 + 120) = v13;
  sub_1B6AB8F70(a2, 60, 2, &dword_1B697C000, v16, v4, v5);
}

unint64_t sub_1B69B6F38()
{
  result = qword_1EDBCCC38;
  if (!qword_1EDBCCC38)
  {
    sub_1B6AB8DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCCC38);
  }

  return result;
}

uint64_t sub_1B69B6F98(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_1B69AC2BC(sub_1B69B6FF4, v3);
}

uint64_t sub_1B69B7024()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = *(v4 + 88);
  v8[1] = *(v0 + 16);
  v9 = v4;
  v10 = *(v0 + 40);
  v11 = v5;
  v12 = v0 + v2;
  v13 = 0;
  v14 = 0;
  v15 = v0 + v3;
  v16 = *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B6995F94(v6, sub_1B69AC4E4, v8, v0 + v2);
}

void sub_1B69B7120(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, void (*a10)(void *, uint64_t), uint64_t a11)
{
  v202 = a8;
  v182 = a7;
  v184 = a6;
  v183 = a5;
  v178 = a4;
  LODWORD(v201) = a3;
  *(&v198 + 1) = a2;
  *&v198 = a1;
  v192 = type metadata accessor for EventSubmitResult(0, a10, a11, a4);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v190 = (&v166 - v12);
  v199 = a11;
  v200 = a10;
  v171 = type metadata accessor for ProcessEvent(0, a10, a11, v13);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v169 = &v166 - v14;
  v15 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v174 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E6720];
  sub_1B6A56C3C(0, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v180 = &v166 - v19;
  v187 = sub_1B6AB8DB0();
  v186 = *(v187 - 8);
  v20 = MEMORY[0x1EEE9AC00](v187);
  v168 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v185 = &v166 - v22;
  v177 = sub_1B6AB8E40();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v166 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v179);
  v25 = (&v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v189);
  v193 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, v17);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v166 - v28;
  v30 = sub_1B6AB90F0();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v166 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = v11;
  v34 = *(v11 + 88);
  v35 = OBJC_IVAR___AAAccessQueue_queue;
  v173 = v34;
  v36 = *&v34[OBJC_IVAR___AAAccessQueue_queue];
  *v33 = v36;
  v37 = *(v31 + 104);
  v194 = *MEMORY[0x1E69E8020];
  v196 = v31 + 104;
  v195 = v37;
  v37(v33);
  v38 = v36;
  v39 = sub_1B6AB9110();
  v41 = *(v31 + 8);
  v40 = v31 + 8;
  v42 = v30;
  v43 = v40;
  v197 = v41;
  v41(v33, v30);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v172 = v35;
  v181 = v25;
  v44 = a9;
  if (v201)
  {
    v188 = a9;
    v45 = sub_1B69A09A4(v198, *(&v198 + 1), v200);
    v47 = v46;
    v48 = v203;
    swift_beginAccess();
    v49 = v48[14];
    if (!*(v49 + 16) || (, v50 = sub_1B6993940(v45, v47), v52 = v51, , (v52 & 1) == 0))
    {

      v74 = type metadata accessor for Tracker.Timer(0);
      (*(*(v74 - 8) + 56))(v29, 1, 1, v74);
      sub_1B6A5718C(v29, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
      v75 = v202;
      if (!v202)
      {
        return;
      }

      sub_1B6A16B30();
      v76 = swift_allocError();
      *v77 = xmmword_1B6AC0330;
      v78 = v190;
      *v190 = v76;
      v79 = v192;
      swift_storeEnumTagMultiPayload();
      v75(v78);
      goto LABEL_20;
    }

    v53 = *(v49 + 56);
    v54 = type metadata accessor for Tracker.Timer(0);
    v55 = *(v54 - 8);
    sub_1B699A32C(v53 + *(v55 + 72) * v50, v29, type metadata accessor for Tracker.Timer);

    (*(v55 + 56))(v29, 0, 1, v54);
    sub_1B6A5718C(v29, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
    v44 = v188;
  }

  v56 = v203;
  Strong = swift_unknownObjectWeakLoadStrong();
  v58 = v42;
  v43 = v193;
  if (!Strong)
  {
    goto LABEL_11;
  }

  v59 = Strong;
  v60 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v33 = v60;
  v195(v33, v194, v42);
  v61 = v60;
  LOBYTE(v60) = sub_1B6AB9110();
  v197(v33, v42);
  if ((v60 & 1) == 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    swift_once();
    v126 = qword_1EDBCCB28;
    v127 = sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1B6ABF500;
    *&v204 = 0;
    *(&v204 + 1) = 0xE000000000000000;
    v207 = v198;
    type metadata accessor for EventSubmit(0, v200, v199, v129);
    sub_1B6ABA0D0();
    v130 = v204;
    v131 = MEMORY[0x1E69E6158];
    *(v128 + 56) = MEMORY[0x1E69E6158];
    v132 = sub_1B698CEC0();
    *(v128 + 64) = v132;
    *(v128 + 32) = v130;
    *&v204 = 0;
    *(&v204 + 1) = 0xE000000000000000;
    *&v207 = v43;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v133 = v204;
    *(v128 + 96) = v131;
    *(v128 + 104) = v132;
    *(v128 + 72) = v133;
    sub_1B6AB8F70("Failed to create event from available data events, event=%{public}@, error=%{public}@", 85, 2, &dword_1B697C000, v126, v127, v128);

    if (!v42)
    {

      return;
    }

    v78 = v190;
    *v190 = v43;
    v79 = v192;
    swift_storeEnumTagMultiPayload();
    v134 = v43;
    (v42)(v78);

LABEL_20:
    (*(v191 + 8))(v78, v79);
    return;
  }

  v62 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B699A32C(v59 + v62, v43, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6984D38(v43, type metadata accessor for SessionManager.SessionState);
    }

LABEL_11:
    v64 = swift_unknownObjectWeakLoadStrong();
    v65 = v202;
    if (!v64)
    {
LABEL_14:
      if (v65)
      {
        sub_1B6A16B30();
        v70 = swift_allocError();
        *v71 = 0;
        v71[1] = 0;
        v72 = v190;
        *v190 = v70;
        v73 = v192;
        swift_storeEnumTagMultiPayload();
        v65(v72);
        (*(v191 + 8))(v72, v73);
      }

      return;
    }

    v66 = v64;
    v67 = *(*(v64 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v33 = v67;
    v195(v33, v194, v42);
    v68 = v67;
    v43 = sub_1B6AB9110();
    v197(v33, v42);
    if (v43)
    {
      v69 = *(v66 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options);
      swift_unknownObjectRelease();
      if (v69)
      {
        sub_1B6A4CA64(v198, *(&v198 + 1), v183, v184, v182, v65, v44, v200, v199);
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_60;
  }

  v80 = *v43;
  v81 = swift_unknownObjectWeakLoadStrong();
  v188 = v44;
  if (v81)
  {
    sub_1B69B8B64(v198, *(&v198 + 1), v200, v199, &v204);
    v207 = v204;
    v208 = v205;
    v209 = v206;
    v201 = sub_1B69B8DBC(&v207);
    swift_unknownObjectRelease();
  }

  else
  {
    v201 = 0;
  }

  v82 = v175;
  sub_1B6AB8E30();
  v189 = sub_1B6AB8DD0();
  v167 = v83;
  v176[1](v82, v177);
  v84 = *(v186 + 16);
  v177 = v186 + 16;
  v176 = v84;
  (v84)(v185, v178, v187);
  *&v204 = 47;
  *(&v204 + 1) = 0xE100000000000000;

  v85 = MEMORY[0x1E69E7CC0];
  v86 = v56;
  do
  {
    v89 = v86[3];
    if (v89)
    {
      v90 = v86[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1B69B5A00(0, *(v85 + 2) + 1, 1, v85);
      }

      v92 = *(v85 + 2);
      v91 = *(v85 + 3);
      if (v92 >= v91 >> 1)
      {
        v85 = sub_1B69B5A00((v91 > 1), v92 + 1, 1, v85);
      }

      *(v85 + 2) = v92 + 1;
      v87 = &v85[16 * v92];
      *(v87 + 4) = v90;
      *(v87 + 5) = v89;
    }

    v88 = v86[19];

    v86 = v88;
  }

  while (v88);
  *&v207 = sub_1B69B919C(v85);
  sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v93 = sub_1B6AB9290();
  v95 = v94;

  MEMORY[0x1B8C97BE0](v93, v95);

  v96 = *(&v204 + 1);
  v178 = v204;
  v193 = v80;
  if (v201)
  {
    v98 = v201[2];
    v97 = v201[3];
    v99 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
    v100 = *(v201 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
    if (v100)
    {
      v101 = *(v201 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);

      goto LABEL_38;
    }
  }

  else
  {
    v98 = *(v80 + 2);
    v97 = *(v80 + 3);
    v99 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
  }

  v102 = &v80[v99];
  v101 = *v102;
  v100 = *(v102 + 1);

LABEL_38:
  v103 = v181;
  v104 = v167;
  *v181 = v189;
  v103[1] = v104;
  v105 = v179;
  v106 = *(v186 + 32);
  v189 = *(v179 + 20);
  v106(v103 + v189, v185, v187);
  v107 = (v103 + v105[6]);
  *v107 = v178;
  v107[1] = v96;
  v108 = (v103 + v105[7]);
  *v108 = v98;
  v108[1] = v97;
  v109 = (v103 + v105[8]);
  *v109 = v101;
  v109[1] = v100;
  v110 = v180;
  v111 = v198;
  v113 = v199;
  v112 = v200;
  v114 = v203;
  sub_1B69B92B4(v198, *(&v198 + 1), v103, v200, v180);
  if (!sub_1B6A4D468(v111, *(&v111 + 1), v202, v188, v112, v113))
  {

    sub_1B6A5718C(v110, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
    sub_1B6984D38(v103, type metadata accessor for EventData);
    return;
  }

  v186 = v40;
  v115 = v174;
  sub_1B69BA134(v111, *(&v111 + 1), v103, v110, v183, v184, v112, v113, v174);
  v116 = v115;
  v117 = v114[27];
  ObjectType = swift_getObjectType();
  (*(v117 + 8))(&v204, ObjectType, v117);
  v119 = v204;
  v120 = v173;
  v121 = *&v173[v172];
  *v33 = v121;
  v195(v33, v194, v58);
  v122 = v121;
  v123 = sub_1B6AB9110();
  v124 = (v197)(v33, v58);
  if ((v123 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  MEMORY[0x1EEE9AC00](v124);
  v165[2] = v119;
  v165[3] = v115;
  v58 = v115;
  v125 = sub_1B69BF2DC(v120, sub_1B69BFCB4, v165);
  v116 = v202;
  v135 = v125;

  if (!v135)
  {
    v119 = v180;
    if (qword_1EDBCCEE0 == -1)
    {
LABEL_52:
      v157 = qword_1EDBCCB28;
      v158 = sub_1B6AB98D0();
      sub_1B6AB8F70("Privacy-invalid sequence identified, will NOT submit...", 55, 2, &dword_1B697C000, v157, v158, MEMORY[0x1E69E7CC0]);
      if (v116)
      {
        v160 = *v58;
        v159 = v58[1];
        sub_1B6A23D80();
        v161 = swift_allocError();
        *v162 = v160;
        v162[1] = v159;
        v163 = v190;
        *v190 = v161;
        v164 = v192;
        swift_storeEnumTagMultiPayload();

        v116(v163);

        (*(v191 + 8))(v163, v164);
      }

      else
      {
      }

      sub_1B6A5718C(v119, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
      sub_1B6984D38(v181, type metadata accessor for EventData);
      sub_1B6984D38(v58, type metadata accessor for Sequence);
      return;
    }

LABEL_62:
    swift_once();
    goto LABEL_52;
  }

  v137 = v199;
  v136 = v200;
  v138 = sub_1B69C1A34(v200, v199);
  *(&v198 + 1) = v139;
  *&v198 = v140;
  v142 = v141;
  v144 = *v58;
  v143 = v58[1];
  v145 = v168;
  (v176)(v168, v181 + v189, v187);
  sub_1B6992ADC(v182, &v204, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B6980AE0);
  v207 = xmmword_1B6AC0320;
  v146 = v169;
  ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:timestampConfiguration:)(v144, v143, v135, v145, v138, *(&v198 + 1), v198, v142 & 1, v169, &v204, &v207, v136, v137);
  v147 = swift_unknownObjectWeakLoadStrong();

  v149 = v135;
  if (v147)
  {
    sub_1B69C1DD4(v146, v136, v137, v148);
    swift_unknownObjectRelease();
  }

  v150 = v180;
  v151 = v202;
  if (v202)
  {
    v152 = v170;
    v153 = v190;
    v154 = v171;
    (*(v170 + 16))(v190, v146, v171);
    v155 = v146;
    v156 = v192;
    swift_storeEnumTagMultiPayload();
    v151(v153);

    (*(v191 + 8))(v153, v156);
    (*(v152 + 8))(v155, v154);
  }

  else
  {

    (*(v170 + 8))(v146, v171);
  }

  sub_1B6A5718C(v150, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  sub_1B6984D38(v181, type metadata accessor for EventData);
  sub_1B6984D38(v174, type metadata accessor for Sequence);
}

void sub_1B69B891C(uint64_t a1)
{
  sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    sub_1B69B89D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B69B89D8(uint64_t a1)
{
  if (!qword_1EDBC9BD8)
  {
    type metadata accessor for SequenceEntry(255);
    v1 = sub_1B6AB95D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC9BD8);
    }
  }
}

uint64_t sub_1B69B8A30(uint64_t a1)
{
  result = type metadata accessor for SequenceEntry.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B69B8ACC(uint64_t a1)
{
  result = type metadata accessor for TimedData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EventData(319);
    if (v3 <= 0x3F)
    {
      result = sub_1B697ED90(319, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B69B8B64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!(a2 >> 62))
  {
    (*(a4 + 8))(a3, a4);
    return;
  }

  if (a2 >> 62 != 1)
  {
    v12 = (*(a1 + OBJC_IVAR___AARawEvent_sessionGroup) + OBJC_IVAR___AASessionGroup_groupName);
    swift_beginAccess();
    if (sub_1B6AB9340() == 0x746C7561666564 && v13 == 0xE700000000000000)
    {
    }

    else
    {
      v15 = sub_1B6ABA0F0();

      if ((v15 & 1) == 0)
      {
        v16 = v12[1];
        *a5 = *v12;
        *(a5 + 8) = v16;
        *(a5 + 16) = 0;
        *(a5 + 24) = 1;

        return;
      }
    }

    goto LABEL_18;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {
LABEL_18:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
    *(a5 + 16) = 0;
    return;
  }

  v7 = [ObjCClassFromMetadata sessionGroup];
  v8 = &v7[OBJC_IVAR___AASessionGroup_groupName];
  swift_beginAccess();
  if (sub_1B6AB9340() == 0x746C7561666564 && v9 == 0xE700000000000000)
  {
  }

  else
  {
    v11 = sub_1B6ABA0F0();

    if ((v11 & 1) == 0)
    {
      v17 = *v8;
      v18 = *(v8 + 1);

      v19 = 1;
      goto LABEL_22;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_22:
  *a5 = v17;
  *(a5 + 8) = v18;
  *(a5 + 16) = 0;
  *(a5 + 24) = v19;
}

uint64_t sub_1B69B8D94(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

void *sub_1B69B8DBC(uint64_t *a1)
{
  v3 = sub_1B6AB8DB0();
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB90F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[1];
  if (!v13)
  {
    return 0;
  }

  v41 = v3;
  v14 = *a1;
  v15 = *(*(v1 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v15;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v16 = v15;
  LOBYTE(v15) = sub_1B6AB9110();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v18 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v1 + v18, v8, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v8, type metadata accessor for SessionManager.SessionState);
      }

      return 0;
    }

    v20 = *v8;
    v21 = *(*v8 + 16);
    v22 = v20[3];

    v23 = sub_1B69C0574(v14, v13, v21, v22);
    v39 = v24;
    v40 = v23;

    v26 = v20[4];
    v25 = v20[5];
    v27 = v42;
    (*(v42 + 16))(v5, v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v41);
    v28 = *(v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
    v29 = *(v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
    sub_1B6992E2C(v26, v25);

    v38 = sub_1B69C1704(v14, v13, v28, v29);
    v31 = v30;

    LOBYTE(v28) = *(v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter);
    v32 = *(v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);
    LOBYTE(v29) = *(v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 16);
    v33 = *(v20 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 17);

    type metadata accessor for ActiveSession(0);
    v34 = swift_allocObject();
    v35 = v39;
    v34[2] = v40;
    v34[3] = v35;
    v34[4] = v26;
    v34[5] = v25;
    (*(v27 + 32))(v34 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v5, v41);
    result = v34;
    v36 = (v34 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
    *v36 = v38;
    v36[1] = v31;
    v37 = v34 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter;
    *v37 = v28;
    *(v37 + 1) = v32;
    v37[16] = v29;
    v37[17] = v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1B69B919C(char *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v9 = *(v1 + 2);
    if (v4 >= v9)
    {
      break;
    }

    if (v6 >= v9)
    {
      goto LABEL_14;
    }

    v11 = *&v1[v3 + 32];
    v10 = *&v1[v3 + 40];
    v13 = *&v1[i - 8];
    v12 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B6AB7DFC(v1);
    }

    v14 = &v1[v3];
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    *(v8 - 1) = v11;
    *v8 = v10;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B69B92B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v59 = a3;
  v58 = sub_1B6AB8DB0();
  v62 = *(v58 - 8);
  v10 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v54 - v12;
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for Tracker.Timer(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v54 - v21;
  v55 = a1;
  v56 = a2;
  v57 = a4;
  v23 = sub_1B69A09A4(a1, a2, a4);
  v25 = v24;
  swift_beginAccess();
  v26 = *(v5 + 112);
  if (!*(v26 + 16) || (v63 = a5, , v27 = sub_1B6993940(v23, v25), v29 = v28, , (v29 & 1) == 0))
  {

    v53 = *(*(type metadata accessor for TimedData(0) - 8) + 56);
    return v53();
  }

  sub_1B699A32C(*(v26 + 56) + *(v17 + 72) * v27, v20, type metadata accessor for Tracker.Timer);

  v54 = v22;
  sub_1B6A57770(v20, v22, type metadata accessor for Tracker.Timer);
  v30 = v55;
  v32 = v56;
  v31 = v57;
  v33 = sub_1B69A09A4(v55, v56, v57);
  v35 = v34;
  swift_beginAccess();
  sub_1B6A96FA4(v33, v35, v15);
  sub_1B6A5718C(v15, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  swift_endAccess();

  v36 = sub_1B69A09A4(v30, v32, v31);
  v38 = v37;
  swift_beginAccess();
  sub_1B6A96E90(v36, v38, v64);
  sub_1B6A23F44(v64, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
  swift_endAccess();

  v39 = v62;
  v40 = *(v62 + 16);
  v41 = v60;
  v42 = v54;
  v43 = v58;
  v40(v60, v54, v58);
  v44 = type metadata accessor for EventData(0);
  v45 = v61;
  v40(v61, (v59 + *(v44 + 20)), v43);
  v46 = v63;
  v40(v63, v41, v43);
  v47 = type metadata accessor for TimedData(0);
  v40(&v46[*(v47 + 20)], v45, v43);
  sub_1B6AB8D00();
  v49 = v48;
  v50 = *(v39 + 8);
  v50(v45, v43);
  v50(v41, v43);
  result = sub_1B6984D38(v42, type metadata accessor for Tracker.Timer);
  v52 = v49 * 1000.0;
  if (COERCE__INT64(fabs(v49 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v52 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v52 < 9.22337204e18)
  {
    *&v63[*(v47 + 24)] = v52;
    v53 = *(*(v47 - 8) + 56);
    return v53();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B69B9894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1B69B9904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 >> 62))
  {
    return ((*(a4 + 16))(a3, a4) & 1);
  }

  if (a2 >> 62 != 1)
  {
    return *(a1 + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    return [ObjCClassFromMetadata requiresDiagnosticsConsent];
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B69B99A8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v56 = a4;
  v58 = a3;
  v10 = type metadata accessor for EventSubmitResult(0, a5, a6, a4);
  v11 = *(v10 - 8);
  v54 = v10;
  v55 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - v12;
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v51 - v15;
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = NSUserDefaults.overrideSamplingThreshold.getter();
  v20 = v19;

  if (v20)
  {
    v21 = sub_1B69B9F74(a1, a2, v7, v6);
    if (v22)
    {
      if (!swift_unknownObjectWeakLoadStrong() || (v18 = sub_1B69BA028(), v24 = v23, swift_unknownObjectRelease(), (v24 & 1) != 0))
      {
        v18 = 100;
      }
    }

    else
    {
      v18 = v21;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v13;
  if (Strong)
  {
    v26 = a1;
    v27 = a2;
    v28 = v7;
    v29 = v6;
    sub_1B69BA084(v16);
    swift_unknownObjectRelease();
    v30 = sub_1B6AB8E40();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v16, 1, v30) == 1)
    {
      sub_1B6A5718C(v16, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v32 = -1;
    }

    else
    {
      v32 = sub_1B6A6E548();
      (*(v31 + 8))(v16, v30);
    }

    v6 = v29;
    v7 = v28;
    a2 = v27;
    a1 = v26;
    if (v18 >= v32)
    {
      return v18 >= v32;
    }
  }

  else
  {
    v32 = -1;
    if (v18 >= -1)
    {
      return v18 >= v32;
    }
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v53 = v6;
  v33 = sub_1B6AB8F90();
  __swift_project_value_buffer(v33, qword_1EDBCFDA8);
  v34 = sub_1B6AB8F80();
  v35 = sub_1B6AB98D0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v59 = v32;
    v60 = v52;
    *v36 = 134218242;
    *(v36 + 4) = v18;
    *(v36 + 12) = 2080;
    v37 = sub_1B6ABA080();
    v39 = a2;
    v40 = sub_1B698F63C(v37, v38, &v60);

    *(v36 + 14) = v40;
    a2 = v39;
    _os_log_impl(&dword_1B697C000, v34, v35, "Event threshold of %ld is lower than the current sampling value of %s", v36, 0x16u);
    v41 = v52;
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x1B8C99550](v41, -1, -1);
    MEMORY[0x1B8C99550](v36, -1, -1);
  }

  v42 = v57;
  v43 = sub_1B69A09A4(a1, a2, v7);
  v45 = v44;
  if (v58)
  {
    v46 = v43;
    sub_1B6A23EF0();
    v47 = swift_allocError();
    *v48 = v46;
    v48[1] = v45;
    v48[2] = v18;
    v48[3] = v32;
    *v42 = v47;
    v49 = v54;
    swift_storeEnumTagMultiPayload();
    v58(v42);
    (*(v55 + 8))(v42, v49);
  }

  else
  {
  }

  return v18 >= v32;
}

uint64_t NSUserDefaults.overrideSamplingThreshold.getter()
{
  v1 = sub_1B6AB92B0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B69840C4(v7, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
    return 0;
  }
}

id sub_1B69B9F74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 48))(a3, a4);
  }

  if (a2 >> 62 != 1)
  {
    return *(a1 + OBJC_IVAR___AARawEvent_samplingThreshold);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    return [ObjCClassFromMetadata samplingThreshold];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69BA028()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 40);
  if (v1)
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B69BA084@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 40))
    {
      sub_1B6A81954(a1);
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1B6AB8E40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_1B69BA134@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v149 = a8;
  v146 = a7;
  v158 = a6;
  v157 = a5;
  v144 = a4;
  v147 = a3;
  v145 = a2;
  v148 = a1;
  v133 = a9;
  v152 = type metadata accessor for EventData(0);
  MEMORY[0x1EEE9AC00](v152);
  v136 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for SequenceEntry(0);
  v155 = *(v156 - 8);
  v11 = MEMORY[0x1EEE9AC00](v156);
  v161 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v160 = (&v130 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v139 = &v130 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v138 = (&v130 - v18);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v151 = &v130 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v150 = (&v130 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v143 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v142 = (&v130 - v25);
  sub_1B6A56C3C(0, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v141 = &v130 - v27;
  v153 = type metadata accessor for TimedData(0);
  v135 = *(v153 - 8);
  v28 = MEMORY[0x1EEE9AC00](v153);
  v134 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v140 = &v130 - v30;
  v154 = type metadata accessor for Sequence(0);
  MEMORY[0x1EEE9AC00](v154);
  v162 = (&v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v131);
  v132 = (&v130 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1B6AB90F0();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v130 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v9;
  v38 = *(*(v9 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v36 = v38;
  v39 = *MEMORY[0x1E69E8020];
  v41 = v34 + 104;
  v40 = *(v34 + 104);
  (v40)(v36, v39, v33);
  v42 = v38;
  LOBYTE(v38) = sub_1B6AB9110();
  v45 = *(v34 + 8);
  v44 = v34 + 8;
  v43 = v45;
  v45(v36, v33);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  sub_1B69BB510(v148, v145, v146, v149, &v171);
  LODWORD(v137) = v171;
  v159 = v37;
  Strong = swift_unknownObjectWeakLoadStrong();
  v47 = 0;
  if (!Strong)
  {
    v57 = v146;
    v58 = v145;
    v59 = v148;
    v55 = v162;
    v56 = v154;
    goto LABEL_9;
  }

  v48 = Strong;
  v49 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v36 = v49;
  (v40)(v36, v39, v33);
  v50 = v49;
  v39 = sub_1B6AB9110();
  v43(v36, v33);
  if ((v39 & 1) == 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_54;
  }

  v51 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v52 = v48 + v51;
  v53 = v132;
  sub_1B699A32C(v52, v132, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v55 = v162;
  v56 = v154;
  if (EnumCaseMultiPayload)
  {
    v57 = v146;
    v58 = v145;
    v59 = v148;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6984D38(v53, type metadata accessor for SessionManager.SessionState);
    }
  }

  else
  {
    v47 = *(*v53 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);

    v57 = v146;
    v58 = v145;
    v59 = v148;
  }

LABEL_9:
  v60 = sub_1B69A09A4(v59, v58, v57);
  v62 = v61;
  v63 = *(v152 + 20);
  v64 = v56[5];
  v65 = sub_1B6AB8DB0();
  v66 = v55 + v64;
  v67 = v149;
  (*(*(v65 - 8) + 16))(v66, v147 + v63, v65);
  sub_1B69BB668(v59, v58, v57, v67, &v171);
  v68 = v171;
  v69 = BYTE1(v171);
  v154 = v56[7];
  *(v55 + v154) = MEMORY[0x1E69E7CC0];
  *v55 = v60;
  v55[1] = v62;
  v70 = v55 + v56[6];
  *v70 = v137;
  *(v70 + 1) = v47;
  v70[16] = v68;
  v70[17] = v69;
  sub_1B69BB7AC(v59, v58, v57, v67);
  v72 = *(v71 + 16);
  if (v72)
  {
    v132 = v71;
    v73 = v71 + 32;
    v137 = (v135 + 48);
    v74 = MEMORY[0x1E69E7CC0];
    v75 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B69BE328(v73, &v171);
      v77 = v171;
      v76 = v172;
      sub_1B6982544(v173, v167);

      sub_1B69BE384(&v171);
      v78 = v169;
      v79 = v170;
      __swift_project_boxed_opaque_existential_1(v167, v169);
      if ((*(v79 + 16))(v78, v79))
      {
        v80 = v169;
        v81 = v170;
        __swift_project_boxed_opaque_existential_1(v167, v169);
        v82 = (*(v81 + 8))(v80, v81);
        sub_1B69BEDE8(v82, v83, v157, v158, 0, &v163);

        if (v164)
        {
          sub_1B6980E70(&v163, &v165);
          sub_1B6982544(&v165, &v163);
          v84 = v160;
          *v160 = v77;
          v84[1] = v76;
          sub_1B6980E70(&v163, v84 + *(v156 + 20));
          type metadata accessor for SequenceEntry.Kind(0);
          swift_storeEnumTagMultiPayload();
          sub_1B699A32C(v84, v161, type metadata accessor for SequenceEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1B69BED6C(0, v75[2] + 1, 1, v75);
          }

          v86 = v75[2];
          v85 = v75[3];
          if (v86 >= v85 >> 1)
          {
            v75 = sub_1B69BED6C((v85 > 1), v86 + 1, 1, v75);
          }

          sub_1B6984D38(v160, type metadata accessor for SequenceEntry);
          __swift_destroy_boxed_opaque_existential_1(&v165);
          v75[2] = v86 + 1;
          v87 = v75 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v86;
          v88 = &v175;
          goto LABEL_42;
        }

        sub_1B6A23F44(&v163, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      }

      else
      {
        v89 = v169;
        v90 = v170;
        __swift_project_boxed_opaque_existential_1(v167, v169);
        if (((*(v90 + 24))(v89, v90) & 1) == 0)
        {
          v91 = v169;
          v92 = v170;
          __swift_project_boxed_opaque_existential_1(v167, v169);
          if ((*(v92 + 40))(v153, v153, v91, v92))
          {
            v93 = v141;
            sub_1B6992ADC(v144, v141, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720], sub_1B6A56C3C);
            if ((*v137)(v93, 1, v153) == 1)
            {
              sub_1B6A5718C(v93, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
              goto LABEL_24;
            }

            v135 = v74;
            v107 = v93;
            v108 = v140;
            sub_1B6A57770(v107, v140, type metadata accessor for TimedData);
            v109 = v134;
            sub_1B699A32C(v108, v134, type metadata accessor for TimedData);
            v110 = v142;
            *v142 = v77;
            v110[1] = v76;
            sub_1B6A57770(v109, v110 + *(v156 + 20), type metadata accessor for TimedData);
            type metadata accessor for SequenceEntry.Kind(0);
            swift_storeEnumTagMultiPayload();
            sub_1B699A32C(v110, v143, type metadata accessor for SequenceEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_1B69BED6C(0, v75[2] + 1, 1, v75);
            }

            v74 = v135;
            v112 = v75[2];
            v111 = v75[3];
            if (v112 >= v111 >> 1)
            {
              v75 = sub_1B69BED6C((v111 > 1), v112 + 1, 1, v75);
            }

            sub_1B6984D38(v142, type metadata accessor for SequenceEntry);
            sub_1B6984D38(v140, type metadata accessor for TimedData);
            v75[2] = v112 + 1;
            v87 = v75 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v112;
            v88 = &v168;
          }

          else
          {
LABEL_24:
            v94 = v169;
            v95 = v170;
            __swift_project_boxed_opaque_existential_1(v167, v169);
            if ((*(v95 + 40))(v152, v152, v94, v95))
            {
              v96 = v136;
              sub_1B699A32C(v147, v136, type metadata accessor for EventData);
              v97 = v150;
              *v150 = v77;
              v97[1] = v76;
              sub_1B6A57770(v96, v97 + *(v156 + 20), type metadata accessor for EventData);
              type metadata accessor for SequenceEntry.Kind(0);
              swift_storeEnumTagMultiPayload();
              sub_1B699A32C(v97, v151, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v75 = sub_1B69BED6C(0, v75[2] + 1, 1, v75);
              }

              v99 = v75[2];
              v98 = v75[3];
              if (v99 >= v98 >> 1)
              {
                v75 = sub_1B69BED6C((v98 > 1), v99 + 1, 1, v75);
              }

              sub_1B6984D38(v150, type metadata accessor for SequenceEntry);
              v75[2] = v99 + 1;
              v87 = v75 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v99;
              v88 = &v174;
            }

            else
            {
              v100 = v169;
              v101 = v170;
              __swift_project_boxed_opaque_existential_1(v167, v169);
              v102 = (*(v101 + 8))(v100, v101);
              sub_1B69BEDE8(v102, v103, v157, v158, 0, &v163);

              if (!v164)
              {
                sub_1B6A23F44(&v163, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
                v113 = v169;
                v114 = v170;
                __swift_project_boxed_opaque_existential_1(v167, v169);
                v115 = (*(v114 + 32))(v113, v114);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v74 = sub_1B69E3EC4(0, *(v74 + 2) + 1, 1, v74);
                }

                v117 = *(v74 + 2);
                v116 = *(v74 + 3);
                if (v117 >= v116 >> 1)
                {
                  v74 = sub_1B69E3EC4((v116 > 1), v117 + 1, 1, v74);
                }

                *(v74 + 2) = v117 + 1;
                v118 = &v74[24 * v117];
                *(v118 + 4) = v77;
                *(v118 + 5) = v76;
                *(v118 + 6) = v115;
                goto LABEL_12;
              }

              sub_1B6980E70(&v163, &v165);
              sub_1B6982544(&v165, &v163);
              v104 = v138;
              *v138 = v77;
              v104[1] = v76;
              sub_1B6980E70(&v163, v104 + *(v156 + 20));
              type metadata accessor for SequenceEntry.Kind(0);
              swift_storeEnumTagMultiPayload();
              sub_1B699A32C(v104, v139, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v75 = sub_1B69BED6C(0, v75[2] + 1, 1, v75);
              }

              v106 = v75[2];
              v105 = v75[3];
              if (v106 >= v105 >> 1)
              {
                v75 = sub_1B69BED6C((v105 > 1), v106 + 1, 1, v75);
              }

              sub_1B6984D38(v138, type metadata accessor for SequenceEntry);
              __swift_destroy_boxed_opaque_existential_1(&v165);
              v75[2] = v106 + 1;
              v87 = v75 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v106;
              v88 = &v166;
            }
          }

LABEL_42:
          sub_1B6A57770(*(v88 - 32), v87, type metadata accessor for SequenceEntry);
          *(v162 + v154) = v75;
          goto LABEL_12;
        }
      }

LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v167);
      v73 += 56;
      if (!--v72)
      {

        goto LABEL_50;
      }
    }
  }

  v74 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v41 = v148;
  v39 = v162;
  if (!*(v74 + 2))
  {
    goto LABEL_55;
  }

  v33 = sub_1B6A9F26C();
  v43 = v146;
  v44 = v145;
  if (*(v159 + 201) != 1)
  {
    sub_1B6A16B30();
    swift_allocError();
    *v128 = v74;
    v128[1] = v33;
    swift_willThrow();
    return sub_1B6984D38(v39, type metadata accessor for Sequence);
  }

  v40 = v74;
  if (qword_1EDBCCEE0 != -1)
  {
    goto LABEL_58;
  }

LABEL_54:
  v161 = qword_1EDBCCB28;
  v119 = sub_1B6AB98F0();
  sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v120 = swift_allocObject();
  *(v120 + 16) = xmmword_1B6ABF500;
  v121 = sub_1B69A09A4(v41, v44, v43);
  v123 = v122;
  v124 = MEMORY[0x1E69E6158];
  *(v120 + 56) = MEMORY[0x1E69E6158];
  v125 = sub_1B698CEC0();
  *(v120 + 64) = v125;
  *(v120 + 32) = v121;
  *(v120 + 40) = v123;
  v171 = 0;
  v172 = 0xE000000000000000;
  v167[0] = v40;
  v167[1] = v33;
  sub_1B6AB9DF0();

  v126 = v171;
  v127 = v172;
  *(v120 + 96) = v124;
  *(v120 + 104) = v125;
  *(v120 + 72) = v126;
  *(v120 + 80) = v127;
  sub_1B6AB8F70("Failed to create event %@ but graceful event creation enabled, error=%@", 71, 2, &dword_1B697C000, v161, v119, v120);
LABEL_55:

  return sub_1B6A57770(v39, v133, type metadata accessor for Sequence);
}

unint64_t sub_1B69BB510@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 32))(a3, a4);
  }

  if (a2 >> 62 == 1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [ObjCClassFromMetadata respondsToSelector_];
    if ((result & 1) == 0)
    {
      *a5 = 0;
      return result;
    }

    result = [ObjCClassFromMetadata timestampGranularity];
    if (result < 5)
    {
      *a5 = 0x302040100uLL >> (8 * result);
      return result;
    }

    goto LABEL_19;
  }

  v7 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
  if (v7 <= 1)
  {
    if (!v7)
    {
      *a5 = 0;
      return result;
    }

    if (v7 != 1)
    {
      goto LABEL_19;
    }

LABEL_18:
    *a5 = v7;
    return result;
  }

  switch(v7)
  {
    case 2:
      LOBYTE(v7) = 4;
      goto LABEL_18;
    case 3:
      LOBYTE(v7) = 2;
      goto LABEL_18;
    case 4:
      LOBYTE(v7) = 3;
      goto LABEL_18;
  }

LABEL_19:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

unint64_t sub_1B69BB668@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 40))(a3, a4);
  }

  if (a2 >> 62 == 1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [ObjCClassFromMetadata respondsToSelector_];
    if ((result & 1) == 0)
    {
      *a5 = 0;
      return result;
    }

    result = [ObjCClassFromMetadata timeDurationGranularity];
    if (result < 4)
    {
      *a5 = (0xEu >> (result & 0xF)) & 1;
      *(a5 + 1) = result;
      return result;
    }

    goto LABEL_18;
  }

  v7 = *(result + OBJC_IVAR___AARawEvent_timeDurationGranularity);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = 513;
LABEL_17:
      *a5 = v8;
      return result;
    }

    if (v7 == 3)
    {
      v8 = 769;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v7)
    {
      *a5 = 0;
      return result;
    }

    if (v7 == 1)
    {
      v8 = 257;
      goto LABEL_17;
    }
  }

LABEL_18:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

void sub_1B69BB7AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      sub_1B69E1350(a1);
    }

    else
    {
      sub_1B6A43710();
    }
  }

  else
  {
    sub_1B69BB800(a3, a4);
  }
}

char *sub_1B69BB800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B6ABA270();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getMetatypeMetadata();
  v10 = sub_1B6ABA330();
  v12 = v11;
  swift_beginAccess();
  v13 = *(v2 + 16);
  if (*(v13 + 16))
  {

    v14 = sub_1B6993940(v10, v12);
    if (v15)
    {
      v16 = v14;

      v17 = *(*(v13 + 56) + 8 * v16);

      return v17;
    }
  }

  v34 = v10;
  v35 = v12;
  v36 = v7;
  v18 = *(a2 + 56);
  *(&v44 + 1) = a1;
  *&v45 = a2;
  __swift_allocate_boxed_opaque_existential_1(&v43);
  v18(a1, a2);
  v19 = *(&v44 + 1);
  v20 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  *(&v40 + 1) = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v20, v19);
  sub_1B6ABA250();
  __swift_destroy_boxed_opaque_existential_1(&v43);
  sub_1B6ABA260();
  sub_1B69809F4(0, qword_1EDBC90C0, &type metadata for EventMirrorProperty);
  v22 = sub_1B6AB9DE0();

  v23 = *(v22 + 16);
  if (v23)
  {
    v33 = v6;
    v24 = v22 + 32;
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B69BDD74(v24, &v43);
      v37[0] = v43;
      v37[1] = v44;
      v37[2] = v45;
      v38 = v46;
      if (*(&v43 + 1))
      {
        v39 = v43;
        v40 = v44;
        v41 = v45;
        v42 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1B69BDE7C(0, *(v17 + 2) + 1, 1, v17);
        }

        v26 = *(v17 + 2);
        v25 = *(v17 + 3);
        if (v26 >= v25 >> 1)
        {
          v17 = sub_1B69BDE7C((v25 > 1), v26 + 1, 1, v17);
        }

        *(v17 + 2) = v26 + 1;
        v27 = &v17[56 * v26];
        v28 = v39;
        v29 = v40;
        v30 = v41;
        *(v27 + 10) = v42;
        *(v27 + 3) = v29;
        *(v27 + 4) = v30;
        *(v27 + 2) = v28;
      }

      else
      {
        sub_1B6A42804(v37);
      }

      v24 += 56;
      --v23;
    }

    while (v23);

    v6 = v33;
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1B69BDFBC(v17, v34, v35, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v39;
  swift_endAccess();
  (*(v36 + 8))(v9, v6);
  return v17;
}

unint64_t sub_1B69BBC68()
{
  result = qword_1EDBCBB80;
  if (!qword_1EDBCBB80)
  {
    sub_1B6A56C3C(255, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBB80);
  }

  return result;
}

unint64_t sub_1B69BBCF0()
{
  result = qword_1EDBCCC70;
  if (!qword_1EDBCCC70)
  {
    sub_1B6AB9030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCCC70);
  }

  return result;
}

void sub_1B69BBD48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  v137 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E6720];
  sub_1B6988350(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v103 - v9;
  sub_1B6988350(0, &qword_1EDBCBCA8, type metadata accessor for Batch, v7);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v103 - v12);
  v14 = type metadata accessor for Batch(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  ObjectType = swift_getObjectType();
  (*(v18 + 16))(ObjectType, v18);
  v112 = dispatch_group_create();
  v20 = a1[7];
  v128 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 4, v20);
  v21 = sub_1B69BD4B4();
  v121 = v17;
  v116 = v14;
  v110 = v10;
  v28 = v21;
  v122 = *(v21 + 16);
  if (v122)
  {
    v108 = a2;
    v109 = a3;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v29 = qword_1EDBCCB28;
    sub_1B69990B4(0);
    v124 = v30;
    v31 = swift_allocObject();
    v113 = xmmword_1B6ABF500;
    *(v31 + 16) = xmmword_1B6ABF500;
    v32 = *(v28 + 16);
    v33 = MEMORY[0x1E69E65A8];
    *(v31 + 56) = MEMORY[0x1E69E6530];
    *(v31 + 64) = v33;
    *(v31 + 32) = v32;
    v34 = MEMORY[0x1E69E6158];
    v35 = MEMORY[0x1B8C97D60](v28, MEMORY[0x1E69E6158]);
    v37 = v36;
    *(v31 + 96) = v34;
    v123 = sub_1B698CEC0();
    *(v31 + 104) = v123;
    *(v31 + 72) = v35;
    *(v31 + 80) = v37;
    v38 = sub_1B6AB9900();
    v125 = v29;
    sub_1B6AB8F70("Upload manager attempting to flush %ld batches, batchIdentifiers=%{public}@", 75, 2, &dword_1B697C000, v29, v38, v31);

    v39 = 0;
    v120 = (v15 + 48);
    v40 = (v28 + 40);
    v117 = xmmword_1B6ABD890;
    v115 = v13;
    v41 = v116;
    v114 = v28;
    while (1)
    {
      if (v39 >= *(v28 + 16))
      {
        __break(1u);
        swift_once();
        v22 = qword_1EDBCCB28;
        v23 = sub_1B6AB98E0();
        sub_1B69990B4(0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1B6ABD890;
        v132 = 0;
        v133 = 0xE000000000000000;
        v130 = 0;
        sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
        sub_1B6AB9DF0();
        v25 = v132;
        v26 = v133;
        *(v24 + 56) = MEMORY[0x1E69E6158];
        *(v24 + 64) = sub_1B698CEC0();
        *(v24 + 32) = v25;
        *(v24 + 40) = v26;
        sub_1B6AB8F70("Failed to list files for upload during flush, error=%{public}@", 62, 2, &dword_1B697C000, v22, v23, v24);

        if (v37)
        {
          v27 = swift_allocObject();
          *(v27 + 16) = v37;
          *(v27 + 24) = v28;
          sub_1B69A18C0(v37);

          sub_1B6A2B248(sub_1B6A0BE38, v27);

          sub_1B69A3100(v37, v28);
        }

        else
        {
        }

        return;
      }

      v45 = v28;
      v126 = v40;
      v127 = v39;
      v46 = v13;
      v47 = *(v40 - 1);
      v37 = *v40;
      v48 = *__swift_project_boxed_opaque_existential_1(v128 + 4, v128[7]);
      v49 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;

      v50 = v47;
      v13 = v46;
      os_unfair_lock_lock_with_options();
      sub_1B69AE29C(v50, v37, v46);
      os_unfair_lock_unlock(*(*(v48 + v49) + 16));
      if ((*v120)(v46, 1, v41) != 1)
      {
        break;
      }

      sub_1B699D254(v46, &qword_1EDBCBCA8, type metadata accessor for Batch);
      v42 = swift_allocObject();
      *(v42 + 16) = v117;
      v43 = v123;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = v43;
      *(v42 + 32) = v50;
      *(v42 + 40) = v37;
      v44 = sub_1B6AB9900();
      sub_1B6AB8F70("Upload manager failed to load batch, identifier=%{public}@", 58, 2, &dword_1B697C000, v125, v44, v42);

      v28 = v45;
LABEL_9:
      v39 = v127 + 1;
      v40 = v126 + 2;
      if (v122 == v127 + 1)
      {

        a3 = v109;
        a2 = v108;
        goto LABEL_27;
      }
    }

    v118 = v50;
    v119 = v37;
    v51 = v121;
    sub_1B69B5BF8(v46, v121, type metadata accessor for Batch);
    v52 = *(v51 + 64);
    if (v52)
    {
      v53 = *(v51 + 56);
    }

    else
    {
      v53 = 0;
    }

    v54 = (v51 + *(v41 + 44));
    v56 = v54[1];
    v132 = *v54;
    v55 = v132;
    v133 = v56;
    v134 = v53;
    v135 = v52;
    v136 = v52 != 0;

    v57 = v128;
    os_unfair_lock_lock_with_options();
    swift_beginAccess();
    sub_1B69B3AA0(&v132);
    swift_endAccess();
    os_unfair_lock_unlock(*(v57[11] + 16));

    sub_1B69B47D4(v55, v56, v53, v52, v52 != 0);
    v58 = Batch.toJSONObject()();
    v59 = objc_opt_self();
    v60 = MEMORY[0x1E69E6158];
    v61 = sub_1B6AB91F0();
    LOBYTE(v56) = [v59 isValidJSONObject_];

    v13 = v115;
    if (v56)
    {
      v62 = sub_1B6AB91F0();

      v130 = 0;
      v63 = [v59 dataWithJSONObject:v62 options:0 error:&v130];

      v64 = v130;
      if (v63)
      {
        v65 = sub_1B6AB8C80();
        v67 = v66;

        v68 = v110;
        v69 = v118;
        if (*(v128[9] + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled))
        {
          sub_1B6A6D808(v65, v67, v118, v119);
        }

        v105 = sub_1B69993A8(v65, v67);
        v104 = v84;
        v85 = swift_allocObject();
        v107 = v67;
        v86 = v85;
        *(v85 + 16) = v113;
        v106 = v65;
        v87 = v123;
        *(v85 + 56) = v60;
        *(v85 + 64) = v87;
        v37 = v119;
        *(v85 + 32) = v69;
        *(v85 + 40) = v37;
        v88 = v121;
        v89 = *(v121 + 6);

        v90 = ContentType.description.getter(v89);
        v86[12] = v60;
        v86[13] = v87;
        v86[9] = v90;
        v86[10] = v91;
        v92 = sub_1B6AB9900();
        sub_1B6AB8F70("Upload manager attempting to upload batch, identifier=%{public}@, contentType=%{public}@", 88, 2, &dword_1B697C000, v125, v92, v86);

        v93 = v112;
        dispatch_group_enter(v112);
        v95 = *(v88 + 32);
        v94 = *(v88 + 40);
        v96 = sub_1B6AB9680();
        (*(*(v96 - 8) + 56))(v68, 1, 1, v96);
        v97 = v68;
        v98 = swift_allocObject();
        v98[2] = 0;
        v98[3] = 0;
        v98[4] = v128;
        v98[5] = v69;
        v99 = v105;
        v98[6] = v37;
        v98[7] = v99;
        v98[8] = v104;
        v98[9] = v95;
        v28 = v114;
        v98[10] = v94;
        v98[11] = v89;
        v98[12] = v69;
        v98[13] = v37;
        v98[14] = v93;

        v100 = v93;
        v13 = v115;
        sub_1B69EDFB0(0, 0, v97, &unk_1B6AC3D30, v98);

        sub_1B6993C94(v106, v107);
        sub_1B69B6D24(v88, type metadata accessor for Batch);
        goto LABEL_23;
      }

      v77 = v64;
      v75 = sub_1B6AB8A70();
    }

    else
    {
      v70 = sub_1B6AB98F0();
      v71 = swift_allocObject();
      *(v71 + 16) = v117;
      v72 = sub_1B6AB9220();
      v73 = v123;
      *(v71 + 56) = v60;
      *(v71 + 64) = v73;
      *(v71 + 32) = v72;
      *(v71 + 40) = v74;
      sub_1B6AB8F70("Resource failed to convert to JSON object, %@", 45, 2, &dword_1B697C000, v125, v70, v71);

      sub_1B6A2A954();
      v75 = swift_allocError();
      *v76 = v58;
      *(v76 + 8) = 0;
    }

    swift_willThrow();
    v28 = v114;
    v78 = v118;
    sub_1B69B6D24(v121, type metadata accessor for Batch);
    v79 = sub_1B6AB98E0();
    v80 = swift_allocObject();
    *(v80 + 16) = v113;
    v37 = v123;
    *(v80 + 56) = v60;
    *(v80 + 64) = v37;
    v81 = v119;
    *(v80 + 32) = v78;
    *(v80 + 40) = v81;
    v130 = 0;
    v131 = 0xE000000000000000;
    v129 = v75;
    sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
    sub_1B6AB9DF0();
    v82 = v130;
    v83 = v131;
    *(v80 + 96) = v60;
    *(v80 + 104) = v37;
    *(v80 + 72) = v82;
    *(v80 + 80) = v83;
    sub_1B6AB8F70("Failed to load batch file for upload during flush, identifier=%{public}@, error=%{public}@", 90, 2, &dword_1B697C000, v125, v79, v80);

LABEL_23:
    v41 = v116;
    goto LABEL_9;
  }

LABEL_27:
  v101 = v112;
  sub_1B6AB9920();
  if (a2)
  {
    v102 = swift_allocObject();
    *(v102 + 16) = a2;
    *(v102 + 24) = a3;
    sub_1B69A18C0(a2);

    sub_1B6A2B248(sub_1B69BDB14, v102);

    sub_1B69A3100(a2, a3);
  }

  else
  {
  }
}

uint64_t sub_1B69BCA70()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69BCAA8()
{
  swift_unknownObjectRelease();

  sub_1B6993C94(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B69BCB58(uint64_t a1, uint64_t a2)
{
  sub_1B69BCBE8(0, &qword_1EDBCCB30, qword_1EDBCCB38, &protocol descriptor for UploadClient, sub_1B697ED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69BCBE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1B6AB9B30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B69BCC44(uint64_t a1)
{
  sub_1B69BCBE8(0, &qword_1EDBCCB30, qword_1EDBCCB38, &protocol descriptor for UploadClient, sub_1B697ED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69BCCCC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1B69BCD24(uint64_t a1, uint64_t a2)
{
  sub_1B69BCBE8(0, &qword_1EDBCCB30, qword_1EDBCCB38, &protocol descriptor for UploadClient, sub_1B697ED90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69BCDB4(uint64_t a1, uint64_t a2)
{
  sub_1B698E408(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics6ActionO(uint64_t a1)
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

id _s12AppAnalytics11AccessQueueC6globalyAC8Dispatch0F3QoSV0G6SClassOSgFZ_0(uint64_t a1)
{
  v2 = sub_1B6AB9090();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - v7;
  sub_1B698E408(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1B6AB9040();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - v17;
  sub_1B69BCDB4(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B69BD428(v11);
    sub_1B698C854();
    (*(v13 + 104))(v16, *MEMORY[0x1E69E7F98], v12);
    v19 = sub_1B6AB99F0();
    (*(v13 + 8))(v16, v12);
    v20 = type metadata accessor for AccessQueue();
    v21 = objc_allocWithZone(v20);
    *&v21[OBJC_IVAR___AAAccessQueue_queue] = v19;
    v22 = v19;
    sub_1B6AB9050();
    v23 = OBJC_IVAR___AAAccessQueue__qos;
    swift_beginAccess();
    (*(v3 + 16))(v6, v8, v2);
    sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
    v24 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v25 = swift_allocObject();
    v26 = swift_slowAlloc();
    *(v25 + 16) = v26;
    *v26 = 0;
    *(v25 + 24) = 0x10000;
    (*(v3 + 8))(v8, v2);
    *(v24 + 2) = v25;
    (*(v3 + 32))(&v24[*(*v24 + 96)], v6, v2);
    *&v21[v23] = v24;
    swift_endAccess();
    v40.receiver = v21;
    v40.super_class = v20;
    v27 = objc_msgSendSuper2(&v40, sel_init);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    sub_1B698C854();
    v28 = sub_1B6AB99F0();
    v37 = type metadata accessor for AccessQueue();
    v29 = objc_allocWithZone(v37);
    *&v29[OBJC_IVAR___AAAccessQueue_queue] = v28;
    v38 = v28;
    sub_1B6AB9050();
    v36 = OBJC_IVAR___AAAccessQueue__qos;
    swift_beginAccess();
    (*(v3 + 16))(v6, v8, v2);
    sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
    v30 = v2;
    v31 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v32 = v6;
    v33 = swift_allocObject();
    v34 = swift_slowAlloc();
    *(v33 + 16) = v34;
    *v34 = 0;
    *(v33 + 24) = 0x10000;
    (*(v3 + 8))(v8, v30);
    *(v31 + 2) = v33;
    (*(v3 + 32))(&v31[*(*v31 + 96)], v32, v30);
    *&v29[v36] = v31;
    swift_endAccess();
    v39.receiver = v29;
    v39.super_class = v37;
    v27 = objc_msgSendSuper2(&v39, sel_init);

    (*(v13 + 8))(v18, v12);
  }

  return v27;
}

uint64_t sub_1B69BD428(uint64_t a1)
{
  sub_1B698E408(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69BD4B4()
{
  v1 = v0;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for Session(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B6AB8BB0();
  v9 = *(v54 - 8);
  v10 = MEMORY[0x1EEE9AC00](v54);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - v13;
  v48 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  os_unfair_lock_lock_with_options();
  v15 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v50 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v51 = v15;
  v53 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v49 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v15);
  v16 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v1 + v16, v4);
  v17 = (*(v6 + 48))(v4, 1, v5);
  v52 = v1;
  if (v17 == 1)
  {
    sub_1B698E840(v4, qword_1EDBCCC78, type metadata accessor for Session);
    v18 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v8 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v18);
    (*(v8 + 8))(v18, v8);
    v19 = v54;
  }

  else
  {
    sub_1B69B6BF4(v4, v8, type metadata accessor for Session);
    v20 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider);
    v21 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v22 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v23 = *(v22 + 8);
    v24 = v22;
    v1 = v52;
    v23(v21, v24);
    sub_1B6AB8B30();
    v25 = v12;
    v19 = v54;
    (*(v9 + 8))(v25, v54);
    sub_1B69B6CC4(v8, type metadata accessor for Session);
  }

  v26 = v59;
  v27 = (*(v50 + 128))(v14, v51);
  if (v26)
  {
    (*(v9 + 8))(v14, v19);
LABEL_6:
    os_unfair_lock_unlock(*(*(v1 + v48) + 16));
    return v8;
  }

  v28 = v27;
  v59 = 0;
  (*(v9 + 8))(v14, v19);
  v51 = *(v28 + 16);
  if (!v51)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_28:

    os_unfair_lock_unlock(*(*(v1 + v48) + 16));
    return v8;
  }

  result = swift_beginAccess();
  v30 = 0;
  v31 = (v28 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  v50 = v28;
  while (v30 < *(v28 + 16))
  {
    v54 = v8;
    v32 = *(v31 - 1);
    v33 = *v31;
    v34 = *(*(v1 + 40) + 16);

    if (v34)
    {

      sub_1B6993940(v32, v33);
      v8 = v35;
    }

    else
    {
      v8 = 0;
    }

    v36 = v32;
    v37 = sub_1B699D580(v32, v33);
    v38 = v53[3];
    v39 = v53[4];
    __swift_project_boxed_opaque_existential_1(v53, v38);
    v40 = v59;
    (*(v39 + 32))(&v57, v37, v38, v39);
    v59 = v40;
    if (v40)
    {

      v1 = v52;
      goto LABEL_6;
    }

    if (v58 != 1)
    {
      v8 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B69B5A00(0, *(v8 + 16) + 1, 1, v8);
      }

      v28 = v50;
      v44 = *(v8 + 16);
      v43 = *(v8 + 24);
      v45 = v44 + 1;
      if (v44 < v43 >> 1)
      {
        goto LABEL_26;
      }

LABEL_22:
      v8 = sub_1B69B5A00((v43 > 1), v45, 1, v8);
LABEL_26:

      *(v8 + 16) = v45;
      v46 = v8 + 16 * v44;
      *(v46 + 32) = v36;
      *(v46 + 40) = v33;
      goto LABEL_10;
    }

    if (v57 && (v8 & 1) == 0)
    {
      v41 = v53[3];
      v42 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v41);
      v55 = 1;
      v56 = 0;
      (*(v42 + 40))(v37, &v55, v41, v42);
      v8 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1B69B5A00(0, *(v8 + 16) + 1, 1, v8);
      }

      v44 = *(v8 + 16);
      v43 = *(v8 + 24);
      v45 = v44 + 1;
      v28 = v50;
      if (v44 >= v43 >> 1)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    v28 = v50;
    v8 = v54;
LABEL_10:
    ++v30;
    v31 += 2;
    v1 = v52;
    if (v51 == v30)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

double sub_1B69BDB48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69BDC54(a1, &v10);
  v4 = v11;
  if (v11)
  {
    v5 = v10;
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1B69BDC54(a1, &v10);

    sub_1B697ED90(0, &qword_1EDBCB820, &protocol descriptor for EventPropertyType);
    if (swift_dynamicCast())
    {
      sub_1B699A784(v7, v9);
      sub_1B699A784(v9, a2 + 16);
      *a2 = v5;
      *(a2 + 8) = v4;
      return result;
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1B6A42870(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1B69BDC54(uint64_t a1, uint64_t a2)
{
  sub_1B69BDCB8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69BDCB8(uint64_t a1)
{
  if (!qword_1EDBC8CD8)
  {
    sub_1B69809F4(255, &qword_1EDBCAA50, MEMORY[0x1E69E6158]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBC8CD8);
    }
  }
}

void sub_1B69BDD38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69BDB48(a1, a2);
  if (v2)
  {
    swift_allocError();
  }
}

uint64_t sub_1B69BDD74(uint64_t a1, uint64_t a2)
{
  sub_1B69809F4(0, qword_1EDBC90C0, &type metadata for EventMirrorProperty);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69BDDE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B69BDE30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_1B69BDE7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBCB618, &type metadata for EventMirrorProperty, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1B69BDFE8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  sub_1B69BE2AC(0, a3, a4, a5);
  v37 = v7;
  result = sub_1B6AB9E80();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v8 + 56) + 8 * v23);
      if ((v37 & 1) == 0)
      {
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v8 = v36;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_33;
    }

    v35 = 1 << *(v8 + 32);
    v6 = v5;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_33:
  *v6 = v10;
  return result;
}

void sub_1B69BE2AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B6980954(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69BE3D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B69D1460;

  return sub_1B69BE494(a1, v4);
}

uint64_t sub_1B69BE494(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B69F1038;

  return v6(a1);
}

uint64_t sub_1B69BE594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B69AD75C;

  return sub_1B69BE698(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_1B69BE698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B69BE704, 0, 0);
}

uint64_t sub_1B69BE704()
{
  v1 = *(v0[5] + 24);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 8) + **(v1 + 8));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1B6A6D368;
  v4 = v0[6];

  return v6(v4, ObjectType, v1);
}

uint64_t sub_1B69BE830(uint64_t a1)
{
  *(a1 + 8) = sub_1B69A8420(&qword_1EDBCAAC8, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  result = sub_1B69A8420(&qword_1EDBCAAD0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B69BE8B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6A10BC8;

  return sub_1B69BE948(a1);
}

uint64_t sub_1B69BE948(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B69BE9A4, 0, 0);
}

uint64_t sub_1B69BE9A4()
{
  v12 = v0;
  v1 = v0[22];
  v0[24] = qword_1EDBCAD28;
  sub_1B69BEB24(v1, (v0 + 2));
  v2 = sub_1B6AB8F80();
  v3 = sub_1B6AB9900();
  sub_1B69BEDA0(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[22];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1B698F63C(*v4, *(v4 + 8), &v11);
    _os_log_impl(&dword_1B697C000, v2, v3, "Upload service will sign data for upload, identifier=%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1B8C99550](v6, -1, -1);
    MEMORY[0x1B8C99550](v5, -1, -1);
  }

  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_1B6A0DE50;
  v8 = v0[22];
  v9 = v0[23];

  return sub_1B69BF2B0(v9, v8);
}

void *sub_1B69BEB5C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

void *sub_1B69BEDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, _OWORD *a6@<X8>)
{
  v7 = v6;
  v41 = a6;
  v42 = a4;
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v7[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1B6AB9110();
  result = (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (a5)
  {
    v40 = 0;
    goto LABEL_5;
  }

  result = sub_1B69A31EC(&v49);
  v40 = v49;
  if (v49 == 2)
  {
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_5:
  v19 = a3;
  v20 = a1;
  swift_beginAccess();
  v21 = v7[16];
  v22 = a2;
  v23 = v42;
  if (!*(v21 + 16))
  {
    goto LABEL_14;
  }

  v24 = sub_1B6993940(v20, a2);
  if ((v25 & 1) == 0)
  {

LABEL_14:
    v30 = v23;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_1B6982544(*(v21 + 56) + 40 * v24, &v49);

  sub_1B6980E70(&v49, v55);
  v26 = v57;
  v27 = v58;
  __swift_project_boxed_opaque_existential_1(v55, v57);
  (*(v27 + 24))(&v43, v26, v27);
  if (*(&v43 + 1))
  {
    v51 = v45;
    v52 = v46;
    v53 = v47;
    v54 = v48;
    v49 = v43;
    v50 = v44;
    if (sub_1B699ACBC(0, *(&v46 + 1)) && (a5 & 1) == 0)
    {
      v28 = v57;
      v29 = v58;
      __swift_mutable_project_boxed_opaque_existential_1(v55, v57);
      (*(v29 + 32))(&v43, v28, v29);
      sub_1B69840C4(&v43, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
      sub_1B6982544(v55, &v43);
      swift_beginAccess();

      sub_1B699A480(&v43, v20, a2);
      swift_endAccess();
    }

    if ((v40 & v53 & 1) == 0)
    {
      sub_1B6982544(&v50, v41);
      sub_1B69A6664(&v49);
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    sub_1B69A6664(&v49);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    sub_1B69840C4(&v43, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  v30 = v42;
  if (!v42)
  {
LABEL_19:
    v19 = v7[7];
    v30 = v7[8];

    if (!v7[19])
    {
      goto LABEL_20;
    }

LABEL_16:

    sub_1B69BEDE8(v20, a2, v19, v30, a5 & 1, &v49);
    goto LABEL_21;
  }

LABEL_15:
  if (v7[19])
  {
    goto LABEL_16;
  }

LABEL_20:
  *&v51 = 0;
  v49 = 0u;
  v50 = 0u;

LABEL_21:
  swift_beginAccess();
  v31 = v7[17];
  if (*(v31 + 16))
  {

    v32 = sub_1B6993940(v20, v22);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 16 * v32);

      if (v30)
      {
        v35 = v7[4];
        v55[0] = v19;
        v55[1] = v30;
        v56 = v40 & 1;
        v57 = v35;
        v36 = v35;
        v34(&v43, v55);

        if (*(&v44 + 1))
        {
          sub_1B6A23F44(&v49, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
          return sub_1B6980E70(&v43, v41);
        }
      }

      else
      {
      }

      goto LABEL_28;
    }
  }

LABEL_28:
  v37 = v50;
  v38 = v41;
  *v41 = v49;
  v38[1] = v37;
  *(v38 + 4) = v51;
  return result;
}

uint64_t sub_1B69BF2B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B69BFAE8, 0, 0);
}

double sub_1B69BF2D0@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_1B69BF2DC(char *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v67 = a2;
  v66 = a3;
  v4 = sub_1B6AB90F0();
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v64 = a1;
  v59 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v65 = v72;
  if (v72)
  {
    v22 = *(v9 + 16);
    v22(v21, v72 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v8);
    v23 = *(v9 + 56);
    v23(v21, 0, 1, v8);
  }

  else
  {
    v23 = *(v9 + 56);
    v23(v21, 1, 1, v8);
    v22 = *(v9 + 16);
  }

  v22(v19, v70, v8);
  v23(v19, 0, 1, v8);
  v24 = *(v12 + 48);
  v25 = MEMORY[0x1E69695A8];
  v26 = v69;
  sub_1B6994F40(v21, v69, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994F40(v19, v26 + v24, &qword_1EDBCAF50, v25);
  v27 = v9;
  v28 = v9;
  v29 = v26;
  v30 = *(v28 + 48);
  if (v30(v29, 1, v8) == 1)
  {
    v31 = MEMORY[0x1E69695A8];
    sub_1B6994FAC(v19, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B6994FAC(v21, &qword_1EDBCAF50, v31);
    if (v30(v29 + v24, 1, v8) == 1)
    {
      v32 = sub_1B6994FAC(v29, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v56 = v21;
  v33 = v29;
  v34 = v29;
  v35 = v58;
  sub_1B6994F40(v33, v58, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  if (v30(v34 + v24, 1, v8) == 1)
  {
    v36 = MEMORY[0x1E69695A8];
    sub_1B6994FAC(v19, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B6994FAC(v56, &qword_1EDBCAF50, v36);
    (*(v27 + 8))(v35, v8);
    v29 = v34;
LABEL_11:
    sub_1B6995008(v29, sub_1B6992BDC);
    goto LABEL_12;
  }

  v49 = v34 + v24;
  v50 = v57;
  (*(v27 + 32))(v57, v49, v8);
  sub_1B69ACD84(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v51 = sub_1B6AB92A0();
  v52 = *(v27 + 8);
  v52(v50, v8);
  v53 = MEMORY[0x1E69695A8];
  sub_1B6994FAC(v19, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994FAC(v56, &qword_1EDBCAF50, v53);
  v52(v35, v8);
  v32 = sub_1B6994FAC(v34, &qword_1EDBCAF50, v53);
  if (v51)
  {
LABEL_16:
    v54 = v68;
    v67(&v73, v32);

    if (!v54)
    {
      return v73;
    }

    return result;
  }

LABEL_12:
  v37 = v60;
  sub_1B698A2A4(v70, v60, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v38 = swift_allocObject();
  *(v38 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v40 = v63;
  v39 = v64;
  v41 = *&v64[OBJC_IVAR___AAAccessQueue_queue];
  v43 = v61;
  v42 = v62;
  *v61 = v41;
  (*(v42 + 104))(v43, *MEMORY[0x1E69E8020], v40);
  v44 = v41;
  LOBYTE(v41) = sub_1B6AB9110();
  result = (*(v42 + 8))(v43, v40);
  if (v41)
  {
    sub_1B6994AF8(v37, v38 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v38 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v39;
    v71 = v38;
    sub_1B6994AA4(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus);
    v46 = v39;

    v47 = swift_task_localValuePush();
    v48 = v68;
    v67(&v72, v47);
    swift_task_localValuePop();

    if (v48)
    {
    }

    else
    {

      return v72;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69BFAE8()
{
  v1 = v0[13];
  __swift_project_boxed_opaque_existential_1((v0[12] + 40), *(v0[12] + 64));
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1B6A0E288;

  return sub_1B69A93E0(v3, v2);
}

uint64_t sub_1B69BFB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  type metadata accessor for PrivacyValidator();
  inited = swift_initStackObject();
  *(inited + 16) = a1 != 0;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(inited + 24) = v10;
  if (a1 && (v12 = *a2, v11 = a2[1], , sub_1B69C245C(v12, v11)))
  {

    *a3 = 0;
  }

  else
  {
    v14 = sub_1B6A9F5F4(inited);
    swift_setDeallocating();

    if (!v4)
    {
      *a3 = v14;
    }
  }

  return result;
}

uint64_t sub_1B69BFCF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69BFD58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69BFDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69BFE08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69BFE9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B69BFEE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69BFF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69BFF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B69C0248();
    v7 = a3(a1, &type metadata for EventData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t EventData.encode(to:)(void *a1)
{
  sub_1B69BFF70(0, &qword_1EDBCAFC8, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69C0248();
  sub_1B6ABA2D0();
  v9[15] = 0;
  sub_1B6ABA000();
  if (!v1)
  {
    type metadata accessor for EventData(0);
    v9[14] = 1;
    sub_1B6AB8DB0();
    sub_1B69A8420(&qword_1EDBCB5B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1B6ABA040();
    v9[13] = 2;
    sub_1B6ABA000();
    v9[12] = 3;
    sub_1B6ABA000();
    v9[11] = 4;
    sub_1B6AB9FE0();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B69C0248()
{
  result = qword_1EDBCAAE0[0];
  if (!qword_1EDBCAAE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCAAE0);
  }

  return result;
}

unint64_t sub_1B69C02A0()
{
  result = qword_1EDBCB068;
  if (!qword_1EDBCB068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB068);
  }

  return result;
}

unint64_t sub_1B69C02F8()
{
  result = qword_1EDBCAAD8;
  if (!qword_1EDBCAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCAAD8);
  }

  return result;
}

uint64_t sub_1B69C034C()
{
  v1 = *v0;
  v2 = 0x4449746E657665;
  v3 = 0x746150746E657665;
  v4 = 0x496E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x6973736553707061;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6954746E657665;
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

uint64_t storeEnumTagSinglePayload for TimestampGranularity(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TimestampGranularity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B69C0574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a1;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v5 + 16) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1B6AB9110();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    swift_beginAccess();
    v19 = *(v5 + 24);
    v20 = *(v19 + 16);

    if (v20 && (v21 = sub_1B69C0A30(v27, a4, v28, a2), (v22 & 1) != 0))
    {
      v23 = *(*(v19 + 56) + 16 * v21);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_1B6AB8E30();
      v23 = sub_1B6AB8DD0();
      v25 = v24;
      (*(v9 + 8))(v11, v8);
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = *(v5 + 24);
      *(v5 + 24) = 0x8000000000000000;
      sub_1B69C087C(v23, v25, v27, a4, v28, a2, isUniquelyReferenced_nonNull_native);

      *(v5 + 24) = v29;
      swift_endAccess();
    }

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B69C087C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1B69C0A30(a3, a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1B69C1270(v22, a7 & 1);
      v17 = sub_1B69C0A30(a3, a4, a5, a6);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v17;
      sub_1B69DDAD0();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;

    return;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v29 = (v27[6] + 32 * v17);
  *v29 = a3;
  v29[1] = a4;
  v29[2] = a5;
  v29[3] = a6;
  v30 = (v27[7] + 16 * v17);
  *v30 = a1;
  v30[1] = a2;
  v31 = v27[2];
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v32;
}

unint64_t sub_1B69C0A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  sub_1B6AB9380();
  v8 = sub_1B6ABA230();

  return sub_1B69C0DB0(a1, a2, a3, a4, v8);
}

void sub_1B69C0AD0(uint64_t a1, void *a2, unsigned __int8 a3, double a4)
{
  v7 = sub_1B6AB8F00();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8DB0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_1B6AB8EC0();
      sub_1B6AB8E70();
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v12 + 16))(v14, a1, v11);
    }
  }

  else if (a3 == 2 || a3 == 3)
  {
    sub_1B6AB8CE0();
    sub_1B6AB8CD0();
  }

  else
  {
    sub_1B6AB8D10();
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1B6ABA2B0();
  sub_1B6AB8D60();
  v16 = v15 * 1000.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v16 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1B6ABA140();
    (*(v12 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return;
  }

LABEL_16:
  __break(1u);
}

unint64_t sub_1B69C0DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1B6ABA0F0() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t *sub_1B69C0EB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void *, __n128), uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = sub_1B69C1030(v9, v7, v5, a2);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = sub_1B6AA0140(v11, v7, v5, a2);
  result = MEMORY[0x1B8C99550](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

unint64_t *sub_1B69C1030(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, __n128))
{
  v23 = a4;
  v20 = result;
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1B698FE74(*(a3 + 56) + 32 * v14, v22);

    LOBYTE(v16) = (v23)(v16, v17, v22);
    __swift_destroy_boxed_opaque_existential_1(v22);

    if (v16)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_1B69B4BEC(v20, a2, v21, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1B69B4BEC(v20, a2, v21, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_1B69C11A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = sub_1B6AB9EA0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B69C1208(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = sub_1B6AB9EA0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B69C1270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69C11A0(0, &qword_1EDBC8978, sub_1B69C156C, &type metadata for SessionGroupManager.Key, MEMORY[0x1E69E6158]);
  v37 = v4;
  result = sub_1B6AB9E80();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v40 = *v23;
      v25 = v23[3];
      v26 = (v22 + 16 * v21);
      v27 = v26[1];
      v38 = *v26;
      v39 = v23[2];
      if ((v37 & 1) == 0)
      {
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v40;
      v16[1] = v24;
      v16[2] = v39;
      v16[3] = v25;
      v17 = (*(v7 + 56) + 16 * v15);
      *v17 = v38;
      v17[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1B69C156C()
{
  result = qword_1EDBC8A48;
  if (!qword_1EDBC8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8A48);
  }

  return result;
}

unint64_t sub_1B69C15C4()
{
  result = qword_1EDBC8A40;
  if (!qword_1EDBC8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8A40);
  }

  return result;
}

uint64_t sub_1B69C1618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B69C1678(uint64_t a1, uint64_t a2)
{
  sub_1B6980954(0, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69C1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a2;
  v30 = a1;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*(v5 + 16) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x1E69E8020], v12);
  v17 = v16;
  LOBYTE(v16) = sub_1B6AB9110();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    if (a4)
    {
      swift_beginAccess();
      v19 = *(v5 + 32);
      v20 = *(v19 + 16);

      v21 = v29;

      if (v20 && (v22 = sub_1B69C0A30(a3, a4, v30, v21), (v23 & 1) != 0))
      {
        a3 = *(*(v19 + 56) + 16 * v22);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_1B6AB8E30();
        v24 = v21;
        v25 = sub_1B6AB8DD0();
        v27 = v26;
        (*(v9 + 8))(v11, v8);
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v5 + 32);
        *(v5 + 32) = 0x8000000000000000;
        sub_1B69C087C(v25, v27, a3, a4, v30, v24, isUniquelyReferenced_nonNull_native);

        *(v5 + 32) = v31;
        swift_endAccess();
        return v25;
      }
    }

    return a3;
  }

  else
  {
    __break(1u);
  }

  return result;
}
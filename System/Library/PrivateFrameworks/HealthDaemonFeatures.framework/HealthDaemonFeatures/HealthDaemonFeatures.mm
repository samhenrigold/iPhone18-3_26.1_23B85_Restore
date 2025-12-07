uint64_t sub_25155F994()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25155F9CC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25155FA14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25155FA4C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_251567E60();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25155FAF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_251567E60();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id OUTLINED_FUNCTION_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

char *sub_25156189C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsSyncManager] = 0;
  *&v2[OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsObserver] = 0;
  if (qword_2813DA660 != -1)
  {
    swift_once();
  }

  v5 = sub_251567F00();
  __swift_project_value_buffer(v5, qword_2813DA668);
  v6 = a1;
  v7 = sub_251567EE0();
  v8 = sub_251567FA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v9 = 136446466;
    v12 = sub_251568070();
    v14 = sub_2515652E8(v12, v13, &v33);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = [v6 profileIdentifier];
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&dword_25155E000, v7, v8, "[%{public}s] Profile extension loaded for profile %@", v9, 0x16u);
    sub_251562244(v10);
    MEMORY[0x253079A40](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x253079A40](v11, -1, -1);
    MEMORY[0x253079A40](v9, -1, -1);
  }

  v16 = [objc_allocWithZone(HDMinorExperiencesProfileExtension) initWithProfile_];
  *&v2[OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_minorExperiencesProfileExtension] = v16;
  sub_251567EC0();
  v17 = sub_251567EB0();
  type metadata accessor for FeatureAlgorithmVersionsChangeManager();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *&v2[OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsChangeManager] = v18;
  v35.receiver = v2;
  v35.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v35, sel_init);
  v20 = objc_allocWithZone(MEMORY[0x277D10800]);
  v21 = v19;
  v22 = v6;
  v23 = v21;
  v24 = sub_251567F20();
  v25 = [v20 initWithProfile:v22 debugIdentifier:v24 delegate:0];

  v26 = type metadata accessor for FeatureAlgorithmVersionsSyncManager();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager_operation] = v25;
  *&v27[OBJC_IVAR____TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager_delegate + 8] = &off_286377BE8;
  swift_unknownObjectUnownedInit();
  v28 = v25;

  v34.receiver = v27;
  v34.super_class = v26;
  v29 = objc_msgSendSuper2(&v34, sel_init);
  v30 = v29;
  [v28 setDelegate_];
  sub_251562984();

  v31 = *&v23[OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsSyncManager];
  *&v23[OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsSyncManager] = v29;

  return v23;
}

id HealthDaemonFeaturesProfileExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthDaemonFeaturesProfileExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id HealthDaemonFeaturesProfileExtension.featureAvailabilityExtension(forFeatureIdentifier:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_minorExperiencesProfileExtension) featureAvailabilityExtensionForFeatureIdentifier_];

  return v2;
}

id sub_251561DCC(void *a1, void *a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  *&a4[OBJC_IVAR____TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver_operation] = a1;
  *&a4[OBJC_IVAR____TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver_deviceKeyValueStore] = a2;
  *&a4[OBJC_IVAR____TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver_delegate + 8] = &off_286377C20;
  swift_unknownObjectUnownedInit();
  v8 = a1;
  v9 = a2;

  v12.receiver = a4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v8 setDelegate_];
  [v9 registerObserver_];

  return v10;
}

uint64_t sub_251561ED0()
{
  v0 = sub_251567E90();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_2515623B8(0, &unk_2813DA620, &type metadata for FeatureAlgorithmVersions, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_251568AD0;
  *(v7 + 32) = 0x736C61746956;
  *(v7 + 40) = 0xE600000000000000;
  *(v7 + 48) = xmmword_251568AE0;
  sub_251567E70();
  v8 = sub_251567E80();
  v9 = *(v1 + 8);
  v9(v6, v0);
  (*(v1 + 104))(v4, *MEMORY[0x277D625B0], v0);
  v10 = sub_251567E80();
  v9(v4, v0);
  *(v7 + 64) = 0x6F63537065656C53;
  *(v7 + 72) = 0xEA00000000006572;
  *(v7 + 80) = v8;
  *(v7 + 88) = v10;
  *(v7 + 96) = 0xD000000000000010;
  *(v7 + 104) = 0x8000000251568EE0;
  *(v7 + 112) = vdupq_n_s64(1uLL);
  return v7;
}

void sub_2515620C4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsSyncManager);
  *(v1 + OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsSyncManager) = 0;

  v4 = *(v1 + OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsChangeManager);
  v5 = objc_allocWithZone(MEMORY[0x277D10800]);

  v6 = sub_251567F20();
  v7 = [v5 initWithProfile:a1 debugIdentifier:v6 delegate:0];

  v8 = [a1 deviceKeyValueStoreManager];
  v9 = objc_allocWithZone(type metadata accessor for FeatureAlgorithmVersionsObserver());
  v10 = sub_251561DCC(v7, v8, v4, v9);
  v11 = OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsObserver;
  v12 = *(v1 + OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsObserver);
  *(v1 + OBJC_IVAR____TtC20HealthDaemonFeatures36HealthDaemonFeaturesProfileExtension_featureAlgorithmVersionsObserver) = v10;

  v13 = *(v1 + v11);
  if (v13)
  {
    v14 = v13;
    sub_251564784();
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

uint64_t sub_251562244(uint64_t a1)
{
  sub_2515622A0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2515622A0(uint64_t a1)
{
  if (!qword_2813DA630)
  {
    sub_2515622F8();
    v1 = sub_251567FB0();
    if (!v2)
    {
      atomic_store(v1, &qword_2813DA630);
    }
  }
}

unint64_t sub_2515622F8()
{
  result = qword_2813DA640;
  if (!qword_2813DA640)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813DA640);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

void sub_2515623B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251562408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0) - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7 != 0x6F63537065656C53 || a2 != 0xEA00000000006572)
  {
    result = sub_251568060();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v11 = *(a3 + 16);
  if (v11)
  {
    v43 = MEMORY[0x277D84F90];
    sub_251565898(0, v11, 0);
    v12 = v43;
    v13 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    do
    {
      sub_251562874(v13, v9);
      v15 = *(v9 + 2);
      sub_2515628D8(v9);
      v43 = v12;
      v17 = v12[2];
      v16 = v12[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_251565898((v16 > 1), v17 + 1, 1);
        v12 = v43;
      }

      v12[2] = v18;
      v12[v17 + 4] = v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v18 = *(MEMORY[0x277D84F90] + 16);
    if (!v18)
    {
      v19 = 0;
      v30 = 1;
      goto LABEL_22;
    }
  }

  v19 = v12[4];
  v20 = v18 - 1;
  if (v18 != 1)
  {
    if (v18 < 5)
    {
      v21 = 1;
      goto LABEL_17;
    }

    v21 = v20 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v22 = vdupq_n_s64(v19);
    v23 = (v12 + 7);
    v24 = v20 & 0xFFFFFFFFFFFFFFFCLL;
    v25 = v22;
    do
    {
      v22 = vbslq_s8(vcgtq_s64(v22, v23[-1]), v23[-1], v22);
      v25 = vbslq_s8(vcgtq_s64(v25, *v23), *v23, v25);
      v23 += 2;
      v24 -= 4;
    }

    while (v24);
    v26 = vbslq_s8(vcgtq_s64(v25, v22), v22, v25);
    v27 = vextq_s8(v26, v26, 8uLL).u64[0];
    v19 = vbsl_s8(vcgtd_s64(v27, v26.i64[0]), *v26.i8, v27);
    if (v20 != (v20 & 0xFFFFFFFFFFFFFFFCLL))
    {
LABEL_17:
      v28 = v18 - v21;
      v29 = 8 * v21 + 32;
      do
      {
        if (*(v12 + v29) < v19)
        {
          v19 = *(v12 + v29);
        }

        v29 += 8;
        --v28;
      }

      while (v28);
    }
  }

  v30 = 0;
LABEL_22:

  if (qword_2813DA660 != -1)
  {
    swift_once();
  }

  v31 = sub_251567F00();
  __swift_project_value_buffer(v31, qword_2813DA668);
  v32 = sub_251567EE0();
  v33 = sub_251567FA0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v45 = v35;
    *v34 = 136446466;
    v36 = sub_251568070();
    v38 = sub_2515652E8(v36, v37, &v45);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v43 = v19;
    v44 = v30;
    sub_251562934();
    v39 = sub_251567F40();
    v41 = sub_2515652E8(v39, v40, &v45);

    *(v34 + 14) = v41;
    _os_log_impl(&dword_25155E000, v32, v33, "[%{public}s] Updating Sleep Score compatibility version to %{public}s.", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253079A40](v35, -1, -1);
    MEMORY[0x253079A40](v34, -1, -1);
  }

  return sub_251567EA0();
}

uint64_t sub_251562818()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_251562874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2515628D8(uint64_t a1)
{
  v2 = type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251562934()
{
  if (!qword_27F445620)
  {
    v0 = sub_251567FB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F445620);
    }
  }
}

void sub_251562984()
{
  v19[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC20HealthDaemonFeatures35FeatureAlgorithmVersionsSyncManager_operation);
  v19[0] = 0;
  v2 = [v1 requestWorkWithPriority:2 error:v19];
  v3 = v19[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v19[0];
    v6 = sub_251567E40();

    swift_willThrow();
    if (qword_2813DA660 != -1)
    {
      swift_once();
    }

    v7 = sub_251567F00();
    __swift_project_value_buffer(v7, qword_2813DA668);
    v8 = v6;
    v9 = sub_251567EE0();
    v10 = sub_251567F90();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v11 = 136446466;
      v14 = sub_251568070();
      v16 = sub_2515652E8(v14, v15, v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_25155E000, v9, v10, "[%{public}s] Error requesting work for daemon start %{public}@", v11, 0x16u);
      sub_251562244(v12);
      MEMORY[0x253079A40](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253079A40](v13, -1, -1);
      MEMORY[0x253079A40](v11, -1, -1);
    }

    else
    {
    }
  }
}

id sub_251562D08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_251562DB0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    return v3 == v4;
  }

  v7 = sub_251568060();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
    return v3 == v4;
  }

  return result;
}

uint64_t sub_251562E34(int a1, int a2, void **a3, id a4)
{
  v5 = [a4 syncIdentityManager];
  v6 = [v5 currentSyncIdentity];

  v7 = [v6 identity];
  v8 = *a3;
  *a3 = v7;

  return 1;
}

uint64_t sub_251562EC4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void *sub_251562F10(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v2 = [a1 database];
  v3 = [objc_opt_self() contextForWriting];
  v4 = swift_allocObject();
  *(v4 + 16) = v13;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  v5[2] = sub_25156437C;
  v5[3] = v4;
  v12[4] = sub_251564384;
  v12[5] = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_251562EC4;
  v12[3] = &block_descriptor;
  v6 = _Block_copy(v12);
  v7 = a1;

  v12[0] = 0;
  v8 = [v2 performTransactionWithContext:v3 error:v12 block:v6 inaccessibilityHandler:0];
  _Block_release(v6);

  v9 = v12[0];
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  if (!v8)
  {
    sub_251567E40();

    swift_willThrow();
    v11 = v13[0];

    return v11;
  }

  v11 = v13[0];
  if (v13[0])
  {

    return v11;
  }

  __break(1u);
  return result;
}

void sub_25156314C(id a1, NSObject *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v91[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v13 = sub_251567F20();
  v86 = a4;
  v14 = sub_251567F20();
  v91[0] = 0;
  v15 = [v7 fetchEntryForKey:v13 domain:v14 syncIdentity:a6 category:1 error:v91];

  v16 = v91[0];
  if (v15)
  {
    v80 = v7;
    v91[0] = 0;
    v17 = v16;
    v83 = v15;
    v18 = v15;
    v19 = [v18 numberValue_];
    if (v19)
    {
      v20 = v19;
      v21 = v91[0];
      v22 = [v20 integerValue];

      v23 = a1;
      if (v22 == a1)
      {

        return;
      }

      goto LABEL_18;
    }

    v36 = v91[0];
    v37 = sub_251567E40();

    swift_willThrow();
    if (qword_2813DA660 != -1)
    {
      swift_once();
    }

    v38 = sub_251567F00();
    __swift_project_value_buffer(v38, qword_2813DA668);

    v39 = v37;
    v40 = sub_251567EE0();
    v41 = sub_251567F90();

    if (os_log_type_enabled(v40, v41))
    {
      v79 = v40;
      v42 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v91[0] = v90;
      *v42 = 136446978;
      v43 = sub_251568070();
      v45 = a5;
      v46 = a3;
      v47 = a2;
      v48 = v16;
      v49 = sub_2515652E8(v43, v44, v91);

      *(v42 + 4) = v49;
      v16 = v48;
      a2 = v47;
      a3 = v46;
      *(v42 + 12) = 2080;
      a5 = v45;
      *(v42 + 14) = sub_2515652E8(v86, v45, v91);
      *(v42 + 22) = 2080;
      *(v42 + 24) = sub_2515652E8(a2, a3, v91);
      *(v42 + 32) = 2114;
      v50 = v37;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 34) = v51;
      *v77 = v51;
      _os_log_impl(&dword_25155E000, v79, v41, "[%{public}s] Unexpected value for %s:%s %{public}@", v42, 0x2Au);
      sub_251562244(v77);
      MEMORY[0x253079A40](v77, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253079A40](v90, -1, -1);
      MEMORY[0x253079A40](v42, -1, -1);
    }

    else
    {
    }

LABEL_17:
    v23 = a1;
LABEL_18:
    if (qword_2813DA660 != -1)
    {
      swift_once();
    }

    v52 = sub_251567F00();
    __swift_project_value_buffer(v52, qword_2813DA668);

    v53 = sub_251567EE0();
    v54 = sub_251567FA0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v91[0] = v78;
      *v55 = 136446722;
      v56 = sub_251568070();
      v58 = sub_2515652E8(v56, v57, v91);

      *(v55 + 4) = v58;
      v23 = a1;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_2515652E8(a2, a3, v91);
      *(v55 + 22) = 2048;
      *(v55 + 24) = a1;
      _os_log_impl(&dword_25155E000, v53, v54, "[%{public}s] Updating %s to %ld", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x253079A40](v78, -1, -1);
      MEMORY[0x253079A40](v55, -1, -1);
    }

    v59 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v60 = sub_251567F20();
    v61 = sub_251567F20();
    v91[0] = 0;
    v62 = [v80 setNumber:v59 forKey:v60 domainName:v61 protectionCategory:1 error:v91];

    if (v62)
    {
      v63 = v91[0];
    }

    else
    {
      v64 = v91[0];
      v65 = sub_251567E40();

      swift_willThrow();

      v66 = v65;
      v67 = sub_251567EE0();
      v68 = sub_251567F90();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v89 = v16;
        v70 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v91[0] = v82;
        *v69 = 136446978;
        v71 = sub_251568070();
        log = v67;
        v73 = a2;
        v74 = sub_2515652E8(v71, v72, v91);

        *(v69 + 4) = v74;
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_2515652E8(v86, a5, v91);
        *(v69 + 22) = 2080;
        *(v69 + 24) = sub_2515652E8(v73, a3, v91);
        *(v69 + 32) = 2114;
        v75 = v65;
        v76 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 34) = v76;
        *v70 = v76;
        _os_log_impl(&dword_25155E000, log, v68, "[%{public}s] Unable to update %s:%s due to error %{public}@", v69, 0x2Au);
        sub_251562244(v70);
        MEMORY[0x253079A40](v70, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x253079A40](v82, -1, -1);
        MEMORY[0x253079A40](v69, -1, -1);
      }

      else
      {
      }
    }

    return;
  }

  if (!v91[0])
  {
    v80 = v7;
    v83 = 0;
    goto LABEL_17;
  }

  v24 = qword_2813DA660;
  v25 = v91[0];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_251567F00();
  __swift_project_value_buffer(v26, qword_2813DA668);
  v27 = v25;

  v28 = sub_251567EE0();
  v29 = sub_251567F90();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v88 = v16;
    v81 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v91[0] = v84;
    *v30 = 136446978;
    v31 = sub_251568070();
    v33 = a5;
    v34 = sub_2515652E8(v31, v32, v91);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_2515652E8(v86, v33, v91);
    *(v30 + 22) = 2080;
    *(v30 + 24) = sub_2515652E8(a2, a3, v91);
    *(v30 + 32) = 2114;
    *(v30 + 34) = v27;
    *v81 = v88;
    v35 = v27;
    _os_log_impl(&dword_25155E000, v28, v29, "[%{public}s] Skipping updating %s:%s due to error %{public}@", v30, 0x2Au);
    sub_251562244(v81);
    MEMORY[0x253079A40](v81, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x253079A40](v84, -1, -1);
    MEMORY[0x253079A40](v30, -1, -1);
  }

  else
  {
  }
}

void sub_251563B28(void *a1, void (*a2)(uint64_t))
{
  swift_getObjectType();
  swift_unknownObjectUnownedLoadStrong();
  v3 = sub_251561ED0();
  swift_unknownObjectRelease();
  v4 = sub_251567ED0();
  v6 = v5;
  v7 = [a1 deviceKeyValueStoreManager];
  v21 = sub_251562F10(a1);
  v42 = v4;
  v39 = *(v3 + 16);
  v40 = v6;
  if (v39)
  {
    v22 = 0;
    v23 = (v3 + 56);
    v37 = a1;
    v38 = v3;
    while (v22 < *(v3 + 16))
    {
      v24 = *(v23 - 1);
      v41 = *v23;
      v25 = v7;
      v27 = *(v23 - 3);
      v26 = *(v23 - 2);
      sub_2515642B4(0, &qword_2813DA618, sub_251564318, MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_251568BD0;

      sub_251567FD0();

      MEMORY[0x2530793D0](0x746E65727275632ELL, 0xEF6E6F6973726556);
      *(inited + 32) = v27;
      *(inited + 40) = v26;
      *(inited + 48) = v24;
      sub_251567FD0();

      v43[0] = v27;
      v43[1] = v26;
      v7 = v25;
      MEMORY[0x2530793D0](0xD000000000000019, 0x80000002515691B0);
      *(inited + 56) = v43[0];
      *(inited + 64) = v26;
      *(inited + 72) = v41;

      v29 = *(inited + 32);
      v30 = *(inited + 40);
      v31 = *(inited + 48);

      sub_25156314C(v31, v29, v30, v42, v40, v21);

      v32 = *(inited + 56);
      v33 = *(inited + 64);
      v34 = *(inited + 72);

      sub_25156314C(v34, v32, v33, v42, v40, v21);
      v3 = v38;

      ++v22;
      v23 += 4;
      a1 = v37;
      if (v39 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    swift_once();
    v8 = sub_251567F00();
    __swift_project_value_buffer(v8, qword_2813DA668);
    v9 = 0;
    v10 = sub_251567EE0();
    v11 = sub_251567F90();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v43[0] = v14;
      *v12 = 136446466;
      v15 = sub_251568070();
      v17 = v7;
      v18 = sub_2515652E8(v15, v16, v43);

      *(v12 + 4) = v18;
      v7 = v17;
      *(v12 + 12) = 2114;
      v19 = 0;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v20;
      *v13 = v20;
      _os_log_impl(&dword_25155E000, v10, v11, "[%{public}s] Error getting local sync identity: %{public}@", v12, 0x16u);
      sub_251562244(v13);
      MEMORY[0x253079A40](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x253079A40](v14, -1, -1);
      MEMORY[0x253079A40](v12, -1, -1);
    }

    (a2)();
  }

  else
  {
LABEL_12:

    a2(v35);
    swift_unknownObjectUnownedLoadStrong();
    sub_2515620C4(a1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_251564048(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 48;
  while (v7 != v6)
  {
    if (v6 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v11 = *(v8 - 16);
    v10 = *(v8 - 8);

    sub_251567FD0();

    MEMORY[0x2530793D0](0x746E65727275632ELL, 0xEF6E6F6973726556);
    if (v11 == v5 && v10 == a2)
    {

LABEL_8:
      v12 = 0;
      v13 = a3 + 48;
      while (v12 < *(a3 + 16))
      {
        v15 = *(v13 - 16);
        v14 = *(v13 - 8);

        sub_251567FD0();

        MEMORY[0x2530793D0](0xD000000000000019, 0x80000002515691B0);
        if (v15 == v5 && v14 == a2)
        {

LABEL_16:

          return v5;
        }

        v16 = sub_251568060();

        if (v16)
        {
          goto LABEL_16;
        }

        ++v12;
        v13 += 24;
        if (v7 == v12)
        {
          goto LABEL_14;
        }
      }

LABEL_19:
      __break(1u);
      return result;
    }

    ++v6;
    v8 += 24;
    v9 = sub_251568060();

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_14:

  return 0;
}

void sub_2515642B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251564318()
{
  if (!qword_2813DA650)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813DA650);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2515643FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_251564444(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

char *sub_251564510(void *a1)
{
  if ([a1 profileType] != 1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(type metadata accessor for HealthDaemonFeaturesProfileExtension());
  return sub_25156189C(a1);
}

id HealthDaemonFeaturesPlugin.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthDaemonFeaturesPlugin.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthDaemonFeaturesPlugin();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HealthDaemonFeaturesPlugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthDaemonFeaturesPlugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of HealthDaemonFeaturesPlugin.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

void sub_251564784()
{
  v19[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver_operation);
  v19[0] = 0;
  v2 = [v1 requestWorkWithPriority:2 error:v19];
  v3 = v19[0];
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v19[0];
    v6 = sub_251567E40();

    swift_willThrow();
    if (qword_2813DA660 != -1)
    {
      swift_once();
    }

    v7 = sub_251567F00();
    __swift_project_value_buffer(v7, qword_2813DA668);
    v8 = v6;
    v9 = sub_251567EE0();
    v10 = sub_251567F90();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v11 = 136446466;
      v14 = sub_251568070();
      v16 = sub_2515652E8(v14, v15, v19);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2114;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_25155E000, v9, v10, "[%{public}s] Error requesting work for daemon start %{public}@", v11, 0x16u);
      sub_251562244(v12);
      MEMORY[0x253079A40](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x253079A40](v13, -1, -1);
      MEMORY[0x253079A40](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_251564A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_251567F60();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_251567F60();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_251568060();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_251567F60();
      v7 = v9;
    }

    while (v9);
  }

  sub_251567F60();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_251564D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251567E60();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_2515672B4();
        v20 = sub_251567F10();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_251564FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2515658B8(0, v1, 0);
    v2 = v12;
    sub_251567254();
    sub_251564318();
    v4 = a1 + 48;
    do
    {

      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2515658B8((v5 > 1), v6 + 1, 1);
      }

      v4 += 24;
      *(v12 + 16) = v6 + 1;
      v7 = (v12 + 24 * v6);
      v7[4] = v9;
      v7[5] = v10;
      v7[6] = v11;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_2515650EC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2515671F0(0, &qword_27F445740, type metadata accessor for FeatureAlgorithmVersionsDeviceEntry, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2515652E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2515653B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_251567190(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2515653B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2515654C0(a5, a6);
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
    result = sub_251567FF0();
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

void *sub_2515654C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_25156550C(a1, a2);
  sub_25156563C(&unk_286377B90);
  return v3;
}

void *sub_25156550C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251565728(v5, 0);
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

  result = sub_251567FF0();
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
        v10 = sub_251567F70();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251565728(v10, 0);
        result = sub_251567FC0();
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

uint64_t sub_25156563C(uint64_t result)
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

  result = sub_2515657A0(result, v11, 1, v3);
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

void *sub_251565728(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_25156730C(0, &qword_27F445738, MEMORY[0x277D84B78]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2515657A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_25156730C(0, &qword_27F445738, MEMORY[0x277D84B78]);
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

char *sub_251565898(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251565978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2515658B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251565A80(a1, a2, a3, *v3, &qword_2813DA618, sub_251564318, sub_251564318);
  *v3 = result;
  return result;
}

void *sub_251565908(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251565A80(a1, a2, a3, *v3, &qword_27F445750, sub_251567254, sub_251567254);
  *v3 = result;
  return result;
}

void *sub_251565958(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_251565BDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_251565978(char *result, int64_t a2, char a3, char *a4)
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
    sub_25156730C(0, &unk_27F445768, MEMORY[0x277D83B88]);
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

void *sub_251565A80(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  if (v13)
  {
    sub_2515671F0(0, a5, a6, MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 24);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[3 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 24 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_251565BDC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2515671F0(0, &qword_27F445760, MEMORY[0x277CC9578], MEMORY[0x277D84560]);
  v10 = *(sub_251567E60() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_251567E60() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_251565DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  if (sub_251567ED0() == a1 && v6 == a2)
  {
  }

  else
  {
    v7 = sub_251568060();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  if (qword_2813DA660 != -1)
  {
    swift_once();
  }

  v8 = sub_251567F00();
  __swift_project_value_buffer(v8, qword_2813DA668);
  v9 = sub_251567EE0();
  v10 = sub_251567FA0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v33[0] = v12;
    *v11 = 136446210;
    v13 = sub_251568070();
    v15 = sub_2515652E8(v13, v14, v33);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25155E000, v9, v10, "[%{public}s] Requested work for key value store update", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x253079A40](v12, -1, -1);
    MEMORY[0x253079A40](v11, -1, -1);
  }

  v16 = *(v3 + OBJC_IVAR____TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver_operation);
  v33[0] = 0;
  v17 = [v16 requestWorkWithPriority:2 error:v33];
  v18 = v33[0];
  if (v17)
  {

    v19 = v18;
  }

  else
  {
    v20 = v33[0];
    v21 = sub_251567E40();

    swift_willThrow();
    v22 = v21;
    v23 = sub_251567EE0();
    v24 = sub_251567F90();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33[0] = v27;
      *v25 = 136446466;
      v28 = sub_251568070();
      v30 = sub_2515652E8(v28, v29, v33);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2114;
      v31 = v21;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 14) = v32;
      *v26 = v32;
      _os_log_impl(&dword_25155E000, v23, v24, "[%{public}s] Error requesting work for key value store update: %{public}@", v25, 0x16u);
      sub_251562244(v26);
      MEMORY[0x253079A40](v26, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x253079A40](v27, -1, -1);
      MEMORY[0x253079A40](v25, -1, -1);
    }

    else
    {
    }
  }
}

void sub_251566190(void *a1, void (*a2)(void), uint64_t a3)
{
  v111 = a3;
  v112 = a2;
  v140 = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  sub_2515671F0(0, &qword_27F445720, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_251567E60();
  v132 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v126 = &v105 - v12;
  v116 = type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0);
  v115 = *(v116 - 8);
  v13 = MEMORY[0x28223BE20](v116);
  v114 = (&v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v13);
  v113 = &v105 - v16;
  MEMORY[0x28223BE20](v15);
  v117 = &v105 - v17;
  sub_251567ED0();
  v18 = [a1 deviceKeyValueStoreManager];
  v19 = sub_251567F20();

  v138 = 0;
  v110 = v18;
  v20 = [v18 fetchEntriesForDomain:v19 key:0 protectionCategory:1 error:&v138];

  if (v20)
  {
    v21 = v138;
    sub_251567148(0, &qword_27F445730, 0x277D106D0);
    v22 = sub_251567F80();
    v108 = v21;
    v23 = v21;

    v107 = v3 + OBJC_IVAR____TtC20HealthDaemonFeatures32FeatureAlgorithmVersionsObserver_delegate;
    v24 = aSleepscore[1];
    v134 = aSleepscore[0];
    if (v22)
    {
      v25 = v22 & 0xFFFFFFFFFFFFFF8;
      v106 = v22;
      v131 = aSleepscore[1];
      if (v22 >> 62)
      {
        goto LABEL_89;
      }

      v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

      v28 = MEMORY[0x277D84F90];
      if (v26)
      {
        v29 = 0;
        v105 = 0;
        v124 = v27 + 32;
        v125 = v27 & 0xC000000000000001;
        v135 = (v132 + 32);
        v123 = (v132 + 48);
        v109 = (v132 + 8);
        v119 = MEMORY[0x277D84F90];
        v120 = v7;
        v130 = v8;
        v136 = v11;
        v121 = v26;
        v122 = v25;
        while (1)
        {
          if (v125)
          {
            v48 = v29;
            v33 = MEMORY[0x253079460](v29, v106);
            v34 = __OFADD__(v48, 1);
            v35 = v48 + 1;
            if (v34)
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v29 >= *(v25 + 16))
            {
              goto LABEL_86;
            }

            v32 = v29;
            v33 = *(v124 + 8 * v29);
            v34 = __OFADD__(v32, 1);
            v35 = v32 + 1;
            if (v34)
            {
              goto LABEL_85;
            }
          }

          v129 = v35;
          v36 = v33;
          v37 = [v33 deviceContext];
          v127 = [v37 type];

          v128 = v36;
          v38 = [v36 storageEntries];
          sub_251567148(0, &qword_27F445728, 0x277D106C8);
          v39 = sub_251567F80();

          v137 = v28;
          if (v39 >> 62)
          {
            v25 = sub_251568040();
            if (v25)
            {
LABEL_14:
              v40 = 0;
              v133 = v39 & 0xC000000000000001;
              v7 = (v39 & 0xFFFFFFFFFFFFFF8);
              while (1)
              {
                if (v133)
                {
                  v41 = MEMORY[0x253079460](v40, v39);
                }

                else
                {
                  if (v40 >= *(v7 + 2))
                  {
                    goto LABEL_82;
                  }

                  v41 = *(v39 + 8 * v40 + 32);
                }

                v11 = v41;
                v42 = v40 + 1;
                if (__OFADD__(v40, 1))
                {
                  break;
                }

                v8 = v39;
                v43 = [v41 key];
                v44 = sub_251567F30();
                v46 = v45;

                v138 = v134;
                v139 = v131;

                MEMORY[0x2530793D0](46, 0xE100000000000000);
                v47 = sub_251564A78(v138, v139, v44, v46);

                if (v47)
                {
                  sub_251568000();
                  sub_251568020();
                  sub_251568030();
                  sub_251568010();
                }

                else
                {
                }

                v39 = v8;
                ++v40;
                v11 = v136;
                if (v42 == v25)
                {
                  v25 = v137;
                  v7 = v120;
                  v8 = v130;
                  v28 = MEMORY[0x277D84F90];
                  goto LABEL_30;
                }
              }

              __break(1u);
LABEL_82:
              __break(1u);
              goto LABEL_83;
            }
          }

          else
          {
            v25 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v25)
            {
              goto LABEL_14;
            }
          }

          v25 = v28;
LABEL_30:

          if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
          {
            v49 = sub_251568040();
            if (!v49)
            {
LABEL_43:
              v51 = v28;
              goto LABEL_44;
            }
          }

          else
          {
            v49 = *(v25 + 16);
            if (!v49)
            {
              goto LABEL_43;
            }
          }

          v138 = v28;
          sub_251565958(0, v49 & ~(v49 >> 63), 0);
          if (v49 < 0)
          {
            goto LABEL_87;
          }

          v50 = 0;
          v51 = v138;
          do
          {
            if ((v25 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x253079460](v50, v25);
            }

            else
            {
              v52 = *(v25 + 8 * v50 + 32);
            }

            v53 = v52;
            v54 = [v53 modificationDate];
            sub_251567E50();

            v138 = v51;
            v56 = v51[2];
            v55 = v51[3];
            if (v56 >= v55 >> 1)
            {
              sub_251565958((v55 > 1), v56 + 1, 1);
              v51 = v138;
            }

            ++v50;
            v51[2] = v56 + 1;
            (*(v132 + 32))(v51 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v56, v11, v8);
          }

          while (v49 != v50);
          v28 = MEMORY[0x277D84F90];
LABEL_44:
          sub_251564D4C(v51, v7);

          if ((*v123)(v7, 1, v8) == 1)
          {

            sub_251567058(v7);
          }

          else
          {
            v118 = *v135;
            v118(v126, v7, v8);
            if (v49)
            {
              v138 = v28;
              sub_251565908(0, v49 & ~(v49 >> 63), 0);
              if (v49 < 0)
              {
                goto LABEL_88;
              }

              v57 = 0;
              v58 = v138;
              v133 = v25 & 0xC000000000000001;
              while (1)
              {
                v7 = (v57 + 1);
                if (__OFADD__(v57, 1))
                {
                  break;
                }

                if (v133)
                {
                  v59 = MEMORY[0x253079460](v57, v25);
                }

                else
                {
                  if (v57 >= *(v25 + 16))
                  {
                    goto LABEL_84;
                  }

                  v59 = *(v25 + 8 * v57 + 32);
                }

                v60 = v59;
                v61 = [v59 key];
                v62 = sub_251567F30();
                v64 = v63;

                v137 = 0;
                v65 = [v60 numberValue_];
                if (!v65)
                {
                  v30 = v137;

                  v31 = sub_251567E40();

                  swift_willThrow();
                  v8 = v130;
                  (*v109)(v126, v130);

                  v105 = 0;
                  v7 = v120;
                  v11 = v136;
                  v25 = v122;
                  v28 = MEMORY[0x277D84F90];
                  goto LABEL_8;
                }

                v66 = v65;
                v67 = v137;
                v68 = [v66 integerValue];

                v138 = v58;
                v70 = v58[2];
                v69 = v58[3];
                if (v70 >= v69 >> 1)
                {
                  sub_251565908((v69 > 1), v70 + 1, 1);
                  v58 = v138;
                }

                v58[2] = v70 + 1;
                v71 = &v58[3 * v70];
                v71[4] = v62;
                v71[5] = v64;
                v71[6] = v68;
                ++v57;
                v8 = v130;
                v11 = v136;
                if (v7 == v49)
                {

                  v7 = v120;
                  v28 = MEMORY[0x277D84F90];
                  goto LABEL_60;
                }
              }

LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v26 = sub_251568040();
              goto LABEL_5;
            }

            v58 = v28;
LABEL_60:
            v72 = sub_251564FCC(v58);

            v73 = v131;

            v74 = sub_251564048(v134, v73, v72);
            v76 = v75;
            v78 = v77;
            v80 = v79;

            if (v76)
            {
              v81 = v114;
              *v114 = v74;
              v81[1] = v76;
              v81[2] = v78;
              v81[3] = v80;
              v82 = v126;
              v81[4] = v127;
              v118(v81 + *(v116 + 24), v82, v8);
              v83 = v113;
              sub_2515670E4(v81, v113);
              sub_2515670E4(v83, v117);
              v84 = v119;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v84 = sub_2515650EC(0, v84[2] + 1, 1, v84);
              }

              v119 = v84;
              v86 = v84[2];
              v85 = v84[3];
              v25 = v122;
              v28 = MEMORY[0x277D84F90];
              if (v86 >= v85 >> 1)
              {
                v119 = sub_2515650EC((v85 > 1), v86 + 1, 1, v119);
              }

              v87 = v119;
              v119[2] = v86 + 1;
              sub_2515670E4(v117, v87 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v86);
              goto LABEL_8;
            }

            (*v109)(v126, v8);
          }

          v25 = v122;
LABEL_8:
          v29 = v129;
          if (v129 == v121)
          {
            goto LABEL_76;
          }
        }
      }

      v119 = MEMORY[0x277D84F90];
LABEL_76:

      v102 = v131;
      v103 = v119;
      goto LABEL_79;
    }

LABEL_78:
    v102 = v24;

    v103 = MEMORY[0x277D84F90];
LABEL_79:
    swift_unknownObjectUnownedLoadStrong();
    sub_251562408(v134, v102, v103);

    swift_unknownObjectRelease();
    v104 = sub_251567004(aSleepscore);
    (v112)(v104);
    v92 = v108;
    goto LABEL_80;
  }

  if (!v138)
  {
    v108 = 0;
    v24 = aSleepscore[1];
    v134 = aSleepscore[0];
    goto LABEL_78;
  }

  v88 = qword_2813DA660;
  v89 = v138;
  v90 = v138;
  if (v88 != -1)
  {
    swift_once();
  }

  v91 = sub_251567F00();
  __swift_project_value_buffer(v91, qword_2813DA668);
  v92 = v90;
  v93 = sub_251567EE0();
  v94 = sub_251567F90();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v138 = v97;
    *v95 = 136446466;
    v98 = sub_251568070();
    v100 = sub_2515652E8(v98, v99, &v138);

    *(v95 + 4) = v100;
    *(v95 + 12) = 2114;
    *(v95 + 14) = v92;
    *v96 = v89;
    v101 = v92;
    _os_log_impl(&dword_25155E000, v93, v94, "[%{public}s] Error retrieving device groups: %{public}@)", v95, 0x16u);
    sub_251562244(v96);
    MEMORY[0x253079A40](v96, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x253079A40](v97, -1, -1);
    MEMORY[0x253079A40](v95, -1, -1);
  }

  v112();
LABEL_80:
}

uint64_t type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(uint64_t a1)
{
  result = qword_27F445778;
  if (!qword_27F445778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251567058(uint64_t a1)
{
  sub_2515671F0(0, &qword_27F445720, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2515670E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureAlgorithmVersionsDeviceEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251567148(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_251567190(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2515671F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251567254()
{
  if (!qword_27F445748)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F445748);
    }
  }
}

unint64_t sub_2515672B4()
{
  result = qword_27F445758;
  if (!qword_27F445758)
  {
    sub_251567E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F445758);
  }

  return result;
}

void sub_25156730C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251568050();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251567380(uint64_t a1)
{
  type metadata accessor for HKDeviceType(319);
  if (v1 <= 0x3F)
  {
    sub_251567E60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id static HealthDaemonFeaturesUtilities.bundle.getter()
{
  type metadata accessor for HealthDaemonFeaturesPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];

  return v1;
}

uint64_t getEnumTagSinglePayload for HealthDaemonFeaturesUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HealthDaemonFeaturesUtilities(_WORD *result, int a2, int a3)
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

uint64_t sub_251567584()
{
  v0 = sub_251567F00();
  __swift_allocate_value_buffer(v0, qword_2813DA668);
  __swift_project_value_buffer(v0, qword_2813DA668);
  return sub_251567EF0();
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